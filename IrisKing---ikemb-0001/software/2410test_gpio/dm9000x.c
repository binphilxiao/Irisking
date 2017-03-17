/*
  dm9000.c: Version 1.1 09/11/2001
  
        A Davicom DM9000 ISA NIC fast Ethernet driver for Linux.
	Copyright (C) 1997  Sten Wang

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

  Author: Sten Wang, 886-3-5798797-8517, E-mail: sten_wang@davicom.com.tw
  Date:   10/28,1998

  (C)Copyright 1997-1998 DAVICOM Semiconductor,Inc. All Rights Reserved.


V0.11	06/20/2001	REG_0A bit3=1, default enable BP with DA match
	06/22/2001 	Support DM9801 progrmming	
	 	 	E3: R25 = ((R24 + NF) & 0x00ff) | 0xf000
		 	E4: R25 = ((R24 + NF) & 0x00ff) | 0xc200
		     		R17 = (R17 & 0xfff0) | NF + 3
		 	E5: R25 = ((R24 + NF - 3) & 0x00ff) | 0xc200
		     		R17 = (R17 & 0xfff0) | NF
v1.00               modify by simon 2001.9.5
                        change for kernel 2.4.x    
v1.1   11/09/2001      fix force mode bug             
*/


/* Board/System/Debug information/definition ---------------- */
#if 1
typedef unsigned long ulong;
typedef unsigned char uchar;
typedef unsigned char u8;
typedef unsigned long u32;
typedef unsigned short ushort;
typedef unsigned short u16;
typedef unsigned int uint;

#define U32 unsigned int
#define U16 unsigned short
#define S32 int
#define S16 short int
#define U8  unsigned char
#define	S8  char

#endif

#define PKTBUFSRX	4
#define PORT 5000
#define NAMESIZE 16
#define	CFG_HZ		        1000

#define DM9000_ID	0x90000A46

#define DM9000_REG00	0x00
#define DM9000_REG05	0x1c	/* SKIP_CRC/SKIP_LONG */
#define DM9000_REG08	0x27
#define DM9000_REG09	0x38
#define DM9000_REG0A	0x08
#define DM9000_REGFF	0x83	/* IMR */

#define DM9000_PHY	0x40	/* PHY address 0x01 */
#define DM9000_PKT_MAX	1536	/* Received packet max size */
#define DM9000_PKT_RDY	0x01	/* Packet ready to receive */

#define DM9000_ADDR_BASE	0x08000000  //nGCS1

#define DM9000_MIN_IO	DM9000_ADDR_BASE+0x300
#define DM9000_MAX_IO	DM9000_ADDR_BASE+0x370
#define DM9000_INT_MII	0x00
#define DM9000_EXT_MII	0x80

#define DM9000_VID_L	0x28
#define DM9000_VID_H	0x29
#define DM9000_PID_L	0x2A
#define DM9000_PID_H	0x2B

#define DM9801_NOISE_FLOOR	0x08
#define DM9802_NOISE_FLOOR	0x05

#define DMFE_SUCC       0
#define MAX_PACKET_SIZE 1514
#define DMFE_MAX_MULTICAST 14
#define PROTOCOL_IP 0x0008
#define PROTOCOL_ARP 0x0608

#define DMFE_DBUG(dbug_now, msg, vaule) Uart_Printf("dmfe: %s %x\n", msg, vaule)
#define printk Uart_Printf
#define printf Uart_Printf
#define udelay Delay
 
typedef struct ethhead
{
       U8 Dest[6];
	U8 Source[6];
	U16 Protocol;
}ETH_HEAD;
typedef struct iphead
{
       U8 Verson_IHL;
       U8 Service_Type;
       //U8 IHL;
       U16 Total_Length;
       U16 Identification;
	U16 Flg_Fragment_Offset;
	//U8 Fragment_Offset[3];
	U8 Time;
	U8 Protocol;
	U16	header_checksum;
	U8 source_address[4];
	U8 destination_address[4];	
}IP_HEAD;

typedef struct udphead
{
	U16 source_port;
	U16 destination_port;
	U16 UDP_lengh;
	U16 UDP_checksum;
}UDP_HEAD;

typedef struct packet_ip
{
       U8 Dest[6];
	U8 Source[6];
	U16 Eth_protocol;
       U8 Verson_IHL;
       U8 Service_Type;
       U16 Total_Length;
       U16 Identification;
	U16 Flg_Fragment_Offset;
	U8 Time;
	U8 IP_protocol;
	U16	IP_checksum;
	U8 source_address[4];
	U8 destination_address[4];	
	U16 source_port;
	U16 destination_port;
	U16 UDP_lengh;
	U16 UDP_checksum;
	U8 data[24];
}IPPACK;

typedef struct packet_arp
{
       U8 Dest[6];
	U8 Source[6];
	U16 Eth_protocol;
       U16 hardware;
       U16 protocol;
       U8 hardware_add_len;
       U8 protocol_add_len;
       U16 operation;
	U8 source_mac[6];
	U8 source_ip[4];
	U8 dest_mac[6];
	U8 dest_ip[4];
}ARPPACK;

typedef struct eth_device {
	char name[NAMESIZE];
	unsigned char MAC[6];
	int iobase;
	int state;
	
	int  (*init) ();
	int  (*send) (struct eth_device*, volatile void* pachet, int length);
	int  (*recv) (struct eth_device*);
	void (*halt) (struct eth_device*);
	
	struct eth_device *next;
	void *priv;
}DEVICE;


enum DM9000_PHY_mode {
	DM9000_10MHD = 0, DM9000_100MHD = 1, DM9000_10MFD = 4,
	DM9000_100MFD = 5, DM9000_AUTO = 8, DM9000_1M_HPNA =0x10 };

enum DM9000_NIC_TYPE {
	FASTETHER_NIC = 0, HOMERUN_NIC = 1, LONGRUN_NIC = 2 };

/* Structure/enum declaration ------------------------------- */
typedef struct board_info {
	DEVICE *next_dev;	/* next device */

	u32 runt_length_counter;	/* counter: RX length < 64byte */ 
	u32 long_length_counter;	/* counter: RX length > 1514byte */ 
	u32 reset_counter;		/* counter: RESET */ 
	u32 reset_tx_timeout;		/* RESET caused by TX Timeout */ 
	u32 reset_rx_status;		/* RESET caused by RX Statsus wrong */ 

	u32 ioaddr;			/* Register I/O base address */
	u32 io_data;			/* Data I/O address */
	u16 irq;			/* IRQ */

	u16 tx_pkt_cnt;
	u16 queue_pkt_len;
	u16 queue_start_addr;
	u16 dbug_cnt;
	u8 reg0, reg5, reg8, reg9, rega;	/* registers saved */
	u8 op_mode;			/* PHY operation mode */
	u8 io_mode;			/* 0:word, 2:byte */
	u8 phy_addr;
	u8 link_failed;			/* Ever link failed */
	u8 device_wait_reset;		/* device state */
	u8 nic_type;			/* NIC type */
//	struct timer_list timer;
	/*struct enet_statistics stats;*/ /* statistic counter */ 
        //mark by simon 2001.9.4
//	struct net_device_stats stats; // add by simon 2001.9.4 for kernel 2.4
	unsigned char srom[128];
//	spinlock_t lock; //add by simon 2001.9.4
	u16 rx_pkt_count;
} board_info_t;

/* Global variable declaration ----------------------------- */
//static int dmfe_debug = 0;
//static DEVICE * dmfe_root_dev = NULL;      /* First device */

/* For module input parameter */
//static int debug = 0;
//static int mode = DM9000_AUTO;
static int media_mode = DM9000_AUTO;
static u8 reg5 = DM9000_REG05;
static u8 reg8 = DM9000_REG08;
static u8 reg9 = DM9000_REG09;
static u8 rega = DM9000_REG0A;
static u8 nfloor = 0;
//IPPACK * pack;
U8 ptr[300];
U16 Pack_indentifier=0;
U16 hardware_type=0x0100;
int addr_getted=0;
//extern volatile int eth_ok;
//U8 STS;
U8 IP[4];
U8 SERVER_IP[4];
volatile U16 NetRxPackets[1024]; /* Receive packets			*/
unsigned char MAC[6];
unsigned char SERVER_MAC[6]= { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };

unsigned long CrcTable[256] = {
   0x00000000L, 0x77073096L, 0xEE0E612CL, 0x990951BAL,
   0x076DC419L, 0x706AF48FL, 0xE963A535L, 0x9E6495A3L,
   0x0EDB8832L, 0x79DCB8A4L, 0xE0D5E91EL, 0x97D2D988L,
   0x09B64C2BL, 0x7EB17CBDL, 0xE7B82D07L, 0x90BF1D91L,
   0x1DB71064L, 0x6AB020F2L, 0xF3B97148L, 0x84BE41DEL,
   0x1ADAD47DL, 0x6DDDE4EBL, 0xF4D4B551L, 0x83D385C7L,
   0x136C9856L, 0x646BA8C0L, 0xFD62F97AL, 0x8A65C9ECL,
   0x14015C4FL, 0x63066CD9L, 0xFA0F3D63L, 0x8D080DF5L,
   0x3B6E20C8L, 0x4C69105EL, 0xD56041E4L, 0xA2677172L,
   0x3C03E4D1L, 0x4B04D447L, 0xD20D85FDL, 0xA50AB56BL,
   0x35B5A8FAL, 0x42B2986CL, 0xDBBBC9D6L, 0xACBCF940L,
   0x32D86CE3L, 0x45DF5C75L, 0xDCD60DCFL, 0xABD13D59L,
   0x26D930ACL, 0x51DE003AL, 0xC8D75180L, 0xBFD06116L,
   0x21B4F4B5L, 0x56B3C423L, 0xCFBA9599L, 0xB8BDA50FL,
   0x2802B89EL, 0x5F058808L, 0xC60CD9B2L, 0xB10BE924L,
   0x2F6F7C87L, 0x58684C11L, 0xC1611DABL, 0xB6662D3DL,
   0x76DC4190L, 0x01DB7106L, 0x98D220BCL, 0xEFD5102AL,
   0x71B18589L, 0x06B6B51FL, 0x9FBFE4A5L, 0xE8B8D433L,
   0x7807C9A2L, 0x0F00F934L, 0x9609A88EL, 0xE10E9818L,
   0x7F6A0DBBL, 0x086D3D2DL, 0x91646C97L, 0xE6635C01L,
   0x6B6B51F4L, 0x1C6C6162L, 0x856530D8L, 0xF262004EL,
   0x6C0695EDL, 0x1B01A57BL, 0x8208F4C1L, 0xF50FC457L,
   0x65B0D9C6L, 0x12B7E950L, 0x8BBEB8EAL, 0xFCB9887CL,
   0x62DD1DDFL, 0x15DA2D49L, 0x8CD37CF3L, 0xFBD44C65L,
   0x4DB26158L, 0x3AB551CEL, 0xA3BC0074L, 0xD4BB30E2L,
   0x4ADFA541L, 0x3DD895D7L, 0xA4D1C46DL, 0xD3D6F4FBL,
   0x4369E96AL, 0x346ED9FCL, 0xAD678846L, 0xDA60B8D0L,
   0x44042D73L, 0x33031DE5L, 0xAA0A4C5FL, 0xDD0D7CC9L,
   0x5005713CL, 0x270241AAL, 0xBE0B1010L, 0xC90C2086L,
   0x5768B525L, 0x206F85B3L, 0xB966D409L, 0xCE61E49FL,
   0x5EDEF90EL, 0x29D9C998L, 0xB0D09822L, 0xC7D7A8B4L,
   0x59B33D17L, 0x2EB40D81L, 0xB7BD5C3BL, 0xC0BA6CADL,
   0xEDB88320L, 0x9ABFB3B6L, 0x03B6E20CL, 0x74B1D29AL,
   0xEAD54739L, 0x9DD277AFL, 0x04DB2615L, 0x73DC1683L,
   0xE3630B12L, 0x94643B84L, 0x0D6D6A3EL, 0x7A6A5AA8L,
   0xE40ECF0BL, 0x9309FF9DL, 0x0A00AE27L, 0x7D079EB1L,
   0xF00F9344L, 0x8708A3D2L, 0x1E01F268L, 0x6906C2FEL,
   0xF762575DL, 0x806567CBL, 0x196C3671L, 0x6E6B06E7L,
   0xFED41B76L, 0x89D32BE0L, 0x10DA7A5AL, 0x67DD4ACCL,
   0xF9B9DF6FL, 0x8EBEEFF9L, 0x17B7BE43L, 0x60B08ED5L,
   0xD6D6A3E8L, 0xA1D1937EL, 0x38D8C2C4L, 0x4FDFF252L,
   0xD1BB67F1L, 0xA6BC5767L, 0x3FB506DDL, 0x48B2364BL,
   0xD80D2BDAL, 0xAF0A1B4CL, 0x36034AF6L, 0x41047A60L,
   0xDF60EFC3L, 0xA867DF55L, 0x316E8EEFL, 0x4669BE79L,
   0xCB61B38CL, 0xBC66831AL, 0x256FD2A0L, 0x5268E236L,
   0xCC0C7795L, 0xBB0B4703L, 0x220216B9L, 0x5505262FL,
   0xC5BA3BBEL, 0xB2BD0B28L, 0x2BB45A92L, 0x5CB36A04L,
   0xC2D7FFA7L, 0xB5D0CF31L, 0x2CD99E8BL, 0x5BDEAE1DL,
   0x9B64C2B0L, 0xEC63F226L, 0x756AA39CL, 0x026D930AL,
   0x9C0906A9L, 0xEB0E363FL, 0x72076785L, 0x05005713L,
   0x95BF4A82L, 0xE2B87A14L, 0x7BB12BAEL, 0x0CB61B38L,
   0x92D28E9BL, 0xE5D5BE0DL, 0x7CDCEFB7L, 0x0BDBDF21L,
   0x86D3D2D4L, 0xF1D4E242L, 0x68DDB3F8L, 0x1FDA836EL,
   0x81BE16CDL, 0xF6B9265BL, 0x6FB077E1L, 0x18B74777L,
   0x88085AE6L, 0xFF0F6A70L, 0x66063BCAL, 0x11010B5CL,
   0x8F659EFFL, 0xF862AE69L, 0x616BFFD3L, 0x166CCF45L,
   0xA00AE278L, 0xD70DD2EEL, 0x4E048354L, 0x3903B3C2L,
   0xA7672661L, 0xD06016F7L, 0x4969474DL, 0x3E6E77DBL,
   0xAED16A4AL, 0xD9D65ADCL, 0x40DF0B66L, 0x37D83BF0L,
   0xA9BCAE53L, 0xDEBB9EC5L, 0x47B2CF7FL, 0x30B5FFE9L,
   0xBDBDF21CL, 0xCABAC28AL, 0x53B39330L, 0x24B4A3A6L,
   0xBAD03605L, 0xCDD70693L, 0x54DE5729L, 0x23D967BFL,
   0xB3667A2EL, 0xC4614AB8L, 0x5D681B02L, 0x2A6F2B94L,
   0xB40BBE37L, 0xC30C8EA1L, 0x5A05DF1BL, 0x2D02EF8DL
};



/* function declaration ------------------------------------- */
//int dmfe_probe();
int eth_init/*dmfe_probe*/(void);
static int dmfe_open(DEVICE *);
static void dmfe_init_dm9000(DEVICE *);
//static unsigned long cal_CRC(unsigned char *, unsigned int, u8);
static u8 ior(board_info_t *, int);
static void iow(board_info_t *, int, u8);
static u16 phy_read(board_info_t *, int);
static void phy_write(board_info_t *, int, u16);
//static u16 read_srom_word(board_info_t *, int);
//static void dmfe_packet_receive(DEVICE *);
static void dm9000_hash_table(DEVICE *);
int NetCksumOk(uchar * ptr, int len);
U16 NetCksum(U16 * ptr, int len);
int SentARPResponse(U32 dest);
int SentARPRequest(U32 dest);

#define SWAP_HARDWARE

/* DM9000 network baord routine ---------------------------- */
//extern void *malloc(int len);
//extern void free(void *p);
 //Don't swap Because s3c2410 use little endian
//#define DATA(a) ((a&0xff00)>>8 | ((a&0x00ff)<<8)) //Don't swap Because s3c2410 use little endian
#define DATA(a) (a) //Don't swap Because s3c2410 use little endian
__inline void outw(unsigned short value, unsigned long addr)
{
	*(volatile unsigned short*)addr =  DATA(value);
}
__inline void outb(unsigned char value, unsigned long addr)
{
	*(volatile unsigned short*)addr = (value & 0x00ff);
}
__inline unsigned char inb(unsigned long addr)
{
	unsigned short val;
	val = *(volatile unsigned short*)addr;
	return (unsigned char)( val & 0x00ff );	
}
__inline unsigned short inw(unsigned long addr)
{
	unsigned short val;
	val = *(volatile unsigned short*)addr; 
	return (DATA(val));
}
/*
  Search DM9000 board, allocate space and register it
*/
struct board_info *db;    /* Point a board information structure */
DEVICE *dev;
u32 iobase = DM9000_MIN_IO;

int eth_init(void)
{
	
//	struct board_info *db;    /* Point a board information structure */
//	DEVICE *dev;
	//struct eth_device *dev,dev_t;
	u32 id_val;
//	u32 iobase = DM9000_MIN_IO;
	u16 oft,i, dm9000_count = 0;
	media_mode = DM9000_AUTO;
	nfloor = (nfloor > 15) ? 0:nfloor;
	//db=malloc(sizeof(board_info_t));
	//dev=malloc(sizeof(DEVICE));
	db->ioaddr = iobase;
	db->io_data = iobase + 4;
	db->irq = 0;
	dev->iobase = iobase;
	//rPCONG |= 0x3; //EINT0 from PORT F control register
	//rEXTINT = (rEXTINT&0xfffffff0)|0x4; //EINT0 Rising edge triggered
	Uart_Printf("dm9000 init\n");
	outb(DM9000_VID_L, iobase);
	id_val = inb(iobase + 4);
	outb(DM9000_VID_H, iobase);
	id_val |= inb(iobase + 4) << 8;
	outb(DM9000_PID_L, iobase);
	id_val |= inb(iobase + 4) << 16;
	outb(DM9000_PID_H, iobase);
	id_val |= inb(iobase + 4) << 24;
	if (id_val == DM9000_ID)
	{
		Uart_Printf("<DM9000> I/O: %x, VID: %x \n", iobase, id_val);
		dm9000_count++;
		/* Set Node Address */
		for (i=0; i<6; i++)
			dev->MAC[i] = MAC[i];//db->srom[i];
	       for (i = 0, oft = 0x10; i < 6; i++, oft++)
		       iow(db, oft, dev->MAC[i]);
		dmfe_open(dev);
	}
	Uart_Printf("<DM9000> I/O: %x, VID: %x \n", iobase, id_val);
	return dm9000_count ? 0:-1;
}

int eth_send(volatile void *packet, int len)
{
	volatile unsigned short * data_ptr;
       volatile unsigned char * ptr;
	int i, tmplen,s;
	//unsigned int tmo;
       unsigned char delay;

	/* Disable all interrupt */
	iow(db, 0xff, 0x80);
	/* Move data to DM9000 TX RAM */
	data_ptr = packet;
	ptr=(volatile unsigned char *)packet;
	outb(0xf8, DM9000_MIN_IO);
	/* Word mode */
	tmplen = (len + 1) / 2;
	for (i = 0; i < tmplen; i++){
       		outw(((u16 *)data_ptr)[i],DM9000_MIN_IO + 4);
		//printf("%02x %02x ",((u8 *)data_ptr)[i+i],((u8 *)data_ptr)[i+i+1]);
		//if(i%10==0)printf("\n");
	}
	/* Set TX length to DM9000 */
	iow(db,0xfc, len & 0xff);
	iow(db,0xfd, (len >> 8) & 0xff);

	/* Issue TX polling command */
	iow(db,0x2, 0x1);	/* Cleared after TX complete */

    	s = ior(db, 0x01);  /* Got TX complete status */
	udelay(CFG_HZ/1000);
	delay=0;
	while((s = ior(db, 0x01) & 0xc) ==0) /* Got TX complete status */
   	{
		{
			int i=100;
			while(i--);
		}
	      if (delay>=2)
		{
		      break;
		}
		delay++;
	}
	iow(db, 0xff, 0x83);
	return 1;
}
void __irq eth_rx(void) /*static void dmfe_packet_receive (DEVICE *dev)*/
{
	int i;
	//U8 dat;
    	unsigned short RxLen,tmplen;    
    	unsigned short *addr;
       unsigned short RxStatus;
	u8 rxbyte;
	int int_status;
	IPPACK* pack;
	ARPPACK * pack_arp;
	ETH_HEAD * eth_head;
	//IP_HEAD * ip_head;
	//UDP_HEAD * udp_head;
       /* Disable all interrupt */
       iow(db, 0xff, 0x80);
       /* Got DM9000 interrupt status */
       int_status = ior(db, 0xfe);             /* Got ISR */
	//rI_ISPC=BIT_EINT0;
	iow(db, 0xfe, 0x0f);               /* Clear ISR status */
	 
	/*if (int_status & 0x02)
	{	
		goto jump_next;		
	}*/

        rxbyte = ior(db, 0xf0); /* Dummy read */
        rxbyte = ior(db, 0xf0); /* Got most updated data */
	if (rxbyte != DM9000_PKT_RDY) 				
	{	
		//printf("Not ready\n");
		goto jump_next;
	}	
					
	outb(0xf2, db->ioaddr);	      
	RxStatus = inw(DM9000_MIN_IO + 4);
	RxLen = inw(DM9000_MIN_IO + 4);
	
	/*if (RxLen > DM9000_PKT_MAX){ 
		printk("<DM9000> RST: RX Len:%x\n", RxLen);
		goto jump_next;
	}
	if (RxLen < 0x40) {
		printk("DM9000> RST: RX Len:%x\n", RxLen);
		goto jump_next;
	}*/	
	tmplen = (RxLen + 1) / 2;
	addr = (unsigned short *)NetRxPackets;
	Uart_Printf(".");
	for (i = 0; i < tmplen; i++)
	{
		    *(addr+i)= inw(DM9000_MIN_IO + 4);
		    //printf("%04x ",*(addr+i));
		    //if (i%10==0) printf("\n");
	}
	printf("\n");
	eth_head=(ETH_HEAD *)addr;
	if (eth_head->Protocol==PROTOCOL_ARP)
	{
		pack_arp=(ARPPACK *)addr;
		if (pack_arp->operation==0x0100 && pack_arp->source_ip[0]==SERVER_IP[0] && pack_arp->source_ip[1]==SERVER_IP[1] && pack_arp->source_ip[2]==SERVER_IP[2] && pack_arp->source_ip[3]==SERVER_IP[3])
		{
			SERVER_MAC[0]=pack_arp->source_mac[0];
			SERVER_MAC[1]=pack_arp->source_mac[1];
			SERVER_MAC[2]=pack_arp->source_mac[2];
			SERVER_MAC[3]=pack_arp->source_mac[3];
			SERVER_MAC[4]=pack_arp->source_mac[4];
			SERVER_MAC[5]=pack_arp->source_mac[5];
			addr_getted=1;
			hardware_type=pack_arp->hardware;
			SentARPResponse(((SERVER_IP[0]<<24)+(SERVER_IP[1]<<16)+(SERVER_IP[2]<<8)+SERVER_IP[3]));
		}
		else if (pack_arp->operation==0x0200 && pack_arp->source_ip[0]==SERVER_IP[0] && pack_arp->source_ip[1]==SERVER_IP[1] && pack_arp->source_ip[2]==SERVER_IP[2] && pack_arp->source_ip[3]==SERVER_IP[3])
		{
			SERVER_MAC[0]=pack_arp->source_mac[0];
			SERVER_MAC[1]=pack_arp->source_mac[1];
			SERVER_MAC[2]=pack_arp->source_mac[2];
			SERVER_MAC[3]=pack_arp->source_mac[3];
			SERVER_MAC[4]=pack_arp->source_mac[4];
			SERVER_MAC[5]=pack_arp->source_mac[5];
			addr_getted=1;
			hardware_type=pack_arp->hardware;
			Uart_Printf("\nARP getted\n");
		}
	}
	if (eth_head->Protocol==PROTOCOL_IP)
	{
		pack=(IPPACK *)addr;
			if (pack->destination_address[0]==IP[0]  && pack->destination_address[1]==IP[1]  && pack->destination_address[2]==IP[2]  && pack->destination_address[3]==IP[3] )
			{

			}
	}
		
	iow(db, 0xff, 0x83); 
jump_next:
	iow(db, 0xff, 0x83);
}



/*
  Open the interface.
  The interface is opened whenever "ifconfig" actives it.
*/
static int dmfe_open( DEVICE *dev)
{
       int i;
	DMFE_DBUG(0, "dmfe_open", 0);


	/* Initilize DM910X board */
	dmfe_init_dm9000(dev);
 
	/* Init driver variable */
	db->dbug_cnt = 0;
	db->runt_length_counter = 0;
	db->long_length_counter = 0;
	db->reset_counter = 0;
	db->rx_pkt_count = 0;
	printf("Waiting for link up ...");
	i=0;
	while(!(ior(db,0x01) & 0x40))
	{
		i++;
		udelay(100);
		if (i>100) break;
	}
	//if (i>100) eth_ok=1;
	switch(ior(db,0x01) & 0x80)
	{
		case 0:
			printf("100M\n");
			break;
		case 1:
			printf("10M\n");
			break;
	}
	return 1;
	//SentARPRequest(((SERVER_IP[0]<<24)+(SERVER_IP[1]<<16)+(SERVER_IP[2]<<8)+SERVER_IP[3]));
}

/* Set PHY operationg mode
*/
static void set_PHY_mode(board_info_t *db)
{
	u16 phy_reg4 = 0x01e1, phy_reg0=0x1000;
	Uart_Printf("set_PHY_mode(board_info_t *db)%x\n",db->op_mode);
	if ( !(db->op_mode & DM9000_AUTO) ) {
		switch(db->op_mode) {
		case DM9000_10MHD: phy_reg4 = 0x21; 
                             phy_reg0 = 0x0000; break;
		case DM9000_10MFD: phy_reg4 = 0x41; 
                             //phy_reg0 = 0x0100; 
                               phy_reg0 = 0x1100; //add by simon 2001.11.8
                              break;
                       
		case DM9000_100MHD: phy_reg4 = 0x81; phy_reg0 = 0x2000; break;
		case DM9000_100MFD: phy_reg4 = 0x101; 
				//phy_reg0 = 0x2100; 
				  phy_reg0 =0x3100; //add by simon 2001.11.8
                                break;
		}
		phy_write(db, 4, phy_reg4);	/* Set PHY media mode */
		phy_write(db, 0, phy_reg0);	/*  Tmp */
	}

	iow(db, 0x1e, 0x01);		/* Let GPIO0 output */
	iow(db, 0x1f, 0x00);		/* Enable PHY */
}

/*
	Init HomeRun DM9801
*/
static void program_dm9801(board_info_t *db, u16 HPNA_rev)
{
	u16 reg16, reg17, reg24, reg25;

	if ( !nfloor ) nfloor = DM9801_NOISE_FLOOR;

	reg16 = phy_read(db, 16);
	reg17 = phy_read(db, 17);
	reg24 = phy_read(db, 24);
	reg25 = phy_read(db, 25);

	switch(HPNA_rev) {
	case 0xb900: /* DM9801 E3 */
		reg16 |= 0x1000;
		reg25 = ( (reg24 + nfloor) & 0x00ff) | 0xf000;
		break;
	case 0xb901: /* DM9801 E4 */
		reg25 = ( (reg24 + nfloor) & 0x00ff) | 0xc200;
		reg17 = (reg17 & 0xfff0) + nfloor + 3;
		break;
	case 0xb902: /* DM9801 E5 */
	case 0xb903: /* DM9801 E6 */
	default:
		reg16 |= 0x1000;
		reg25 = ( (reg24 + nfloor - 3) & 0x00ff) | 0xc200;
		reg17 = (reg17 & 0xfff0) + nfloor;
		break;
	}

	phy_write(db, 16, reg16);
	phy_write(db, 17, reg17);
	phy_write(db, 25, reg25);
}

/*
	Init LongRun DM9802
*/
static void program_dm9802(board_info_t *db)
{
	u16 reg25;

	if ( !nfloor ) nfloor = DM9802_NOISE_FLOOR;

	reg25 = phy_read(db, 25);
	reg25 = (reg25 & 0xff00) + nfloor;
	phy_write(db, 25, reg25);
}

/* Identify NIC type
*/
static void identify_nic(board_info_t *db)
{
	u16 phy_reg3;
	Uart_Printf("identify_nic(board_info_t *db)\n");
	iow(db, 0, DM9000_EXT_MII);
	phy_reg3 = phy_read(db, 3);
	switch(phy_reg3 & 0xfff0) {
	case 0xb900:
		if (phy_read(db, 31) == 0x4404) {
			db->nic_type =  HOMERUN_NIC;
			printf("HOMERUN_NIC %x\n",phy_reg3);
			program_dm9801(db, phy_reg3);
		} else {
			db->nic_type = LONGRUN_NIC;
			printf("LONGRUN_NIC %x\n",phy_reg3);
			program_dm9802(db);
		}
		break;
	default: db->nic_type = FASTETHER_NIC; printf("FASTETHER_NIC %x\n",phy_reg3);break;
	}
	iow(db, 0, DM9000_INT_MII);	
}

/* Initilize dm9000 board
*/
static void dmfe_init_dm9000(DEVICE *dev)
{
 
	//DMFE_DBUG(0, "dmfe_init_dm9000()", 0);
	/* RESET device */
	iow(db, 0, 1);
	//udelay(100);	/* delay 100us */
	Uart_Printf("/* RESET device */\n");

	/* I/O mode */
	db->io_mode = ior(db, 0xfe) >> 6; 	/* ISR bit7:6 keeps I/O mode */
	if (db->io_mode==0)
		Uart_Printf("Word IO mode \n");

	/* NIC Type: FASTETHER, HOMERUN, LONGRUN */
	identify_nic(db);	

	/* Set PHY */
	db->op_mode = media_mode;
	set_PHY_mode(db);

	/* Init needed register value */
	db->reg0 = DM9000_REG00;
	if ( (db->nic_type != FASTETHER_NIC) && (db->op_mode & DM9000_1M_HPNA) )
		db->reg0 |= DM9000_EXT_MII;
	
	/* User passed argument */
	db->reg5 = reg5;
	db->reg8 = reg8;
	db->reg9 = reg9;
	db->rega = rega;

	/* Program operating register */
	iow(db, 0x00, db->reg0);
	iow(db, 0x02, 0);	/* TX Polling clear */
	iow(db, 0x08, 0x3f);	/* Less 3Kb, 200us */
	iow(db, 0x09, db->reg9);/* Flow Control : High/Low Water */
	iow(db, 0x0a, db->rega);/* Flow Control */
	iow(db, 0x2f, 0);	/* Special Mode */
	iow(db, 0x01, 0x2c);	/* clear TX status */
	iow(db, 0xfe, 0x0f); 	/* Clear interrupt status */
 
	/* Set address filter table */
	dm9000_hash_table(dev);

	/* Activate DM9000 */
	////iow(db, 0x05, db->reg5 | 1);	/* RX enable */
	iow(db, 0x05, db->reg5);
	//iow(db, 0xff, DM9000_REGFF); 	/* Enable TX/RX interrupt mask */
       iow(db, 0xff, 0x80); 
	/* Init Driver variable */
	db->link_failed = 1;
	db->tx_pkt_cnt = 0;
	db->queue_pkt_len = 0;
}
/*
  Set DM9000 multicast address
*/
void eth_again(void)
{
       Uart_Printf("RX Enable\n");
	iow(db, 0x05, db->reg5 | 1);	/* RX enable */
	iow(db, 0xfe, 0x0f); 	/* Clear interrupt status */
	iow(db, 0xff, DM9000_REGFF);
	//rINTMSK&=~(BIT_EINT0 );
}
static void dm9000_hash_table(DEVICE *dev)
{
	//u32 hash_val;
	u16 i, oft, hash_table[4];

	DMFE_DBUG(0, "dm9000_hash_table()", 0);

	/* Set Node address */
	for (i = 0, oft = 0x10; i < 6; i++, oft++)
		iow(db, oft, dev->MAC[i]);
  
	/* Clear Hash Table */
	for (i = 0; i < 4; i++)
		hash_table[i] = 0x0;
	/* Write the hash table to MAC MD table */
	for (i = 0, oft = 0x16; i < 4; i++) {
		iow(db, oft++, hash_table[i] & 0xff);
		iow(db, oft++, (hash_table[i] >> 8) & 0xff);
	}
}

/*
  Calculate the CRC valude of the Rx packet
  flag = 1 : return the reverse CRC (for the received packet CRC)
         0 : return the normal CRC (for Hash Table index)
*/
static unsigned long cal_CRC(unsigned char * Data, unsigned int Len, u8 flag)
{
	unsigned long Crc = 0xffffffff;

	while (Len--) {
		Crc = CrcTable[(Crc ^ *Data++) & 0xFF] ^ (Crc >> 8);
	}

	if (flag) return ~Crc;
	else return Crc;
}

/*
   Read a byte from I/O port
*/
static u8 ior(board_info_t *db, int reg)
{
	outb(reg, db->ioaddr);
	return inb(db->io_data);
}

/*
   Write a byte to I/O port
*/
static void iow(board_info_t *db, int reg, u8 value)
{
	outb(reg, db->ioaddr);
	outb(value, db->io_data);
}

/*
   Read a word from phyxcer
*/
static u16 phy_read(board_info_t *db, int reg)
{
	/* Fill the phyxcer register into REG_0C */
	iow(db, 0xc, DM9000_PHY | reg);

	iow(db, 0xb, 0xc); /* Issue phyxcer read command */
	udelay(100);	/* Wait read complete */
	iow(db, 0xb, 0x0); /* Clear phyxcer read command */

	/* The read data keeps on REG_0D & REG_0E */
	return ( ior(db, 0xe) << 8 ) | ior(db, 0xd);
}

/*
   Write a word to phyxcer
*/
static void phy_write(board_info_t *db, int reg, u16 value)
{
	/* Fill the phyxcer register into REG_0C */
	iow(db, 0xc, DM9000_PHY | reg);
	/* Fill the written data into REG_0D & REG_0E */
	iow(db, 0xd, (value & 0xff));
	iow(db, 0xe, ( (value >> 8) & 0xff));
	iow(db, 0xb, 0xa);		/* Issue phyxcer write command */
	udelay(500);		/* Wait write complete *///??????????
	iow(db, 0xb, 0x0);		/* Clear phyxcer write command */
}

/*int
NetCksumOk(uchar * ptr, int len)
{
	return !((NetCksum(ptr, len) + 1) & 0xfffe);
}*/


U16
NetCksum(U16 * ptr, int len)
{

unsigned long cksum=0;
  
      while(len >1) {
    //Uart_Printf("data %x\n",*ptr);
    cksum+=*ptr++;
    //Uart_Printf("sum %x\n",cksum);
    len -=sizeof(U16);

  }

  if(len ) {
    //Uart_Printf("data %x\n",*ptr);
    cksum += *(U8*)ptr;
    //Uart_Printf("sum %x\n",cksum);
  }


  cksum = (cksum >> 16) + (cksum & 0xffff);
  //Uart_Printf("sum %x\n",cksum);

  cksum += (cksum >>16);
  //Uart_Printf("sum %x\n",(~cksum));

  return (U16)(~cksum);
}

int
SentUDPPacket(U8 *ether, U32 dest, U16 dport, U16 sport, U16 len, U8 * dat , U16 chksum)
{
      int i;
      IPPACK* pack;
      pack=(IPPACK*)(ptr);
	pack->Dest[0]=*(ether+0);
	pack->Dest[1]=*(ether+1);
	pack->Dest[2]=*(ether+2);
	pack->Dest[3]=*(ether+3);
	pack->Dest[4]=*(ether+4);
	pack->Dest[5]=*(ether+5);
	pack->Source[0]=MAC[0];
	pack->Source[1]=MAC[1];
	pack->Source[2]=MAC[2];
	pack->Source[3]=MAC[3];
	pack->Source[4]=MAC[4];
	pack->Source[5]=MAC[5];
	pack->Eth_protocol=PROTOCOL_IP;
	pack->Verson_IHL=(4<<4)+5;
	pack->Service_Type=(0<<5)+(0<<1);
	pack->Total_Length=(((len+28)&0xff))<<8+(((len+28)&0xff00)>>8);
	//Total IP packet=52(20 ip header+8 UDP header +24 data)
	pack->Identification=((Pack_indentifier&0xff))<<8+((Pack_indentifier&0xff00)>>8);;
	Pack_indentifier++;
	pack->Flg_Fragment_Offset=0;
	pack->Time=128;
	pack->IP_protocol=17;
	pack->IP_checksum=0;
	pack->source_address[0]=192;
	pack->source_address[1]=168;
	pack->source_address[2]=1;
	pack->source_address[3]=24;
	pack->destination_address[0]=(dest&0xff000000)>>24;
	pack->destination_address[1]=(dest&0xff0000)>>16;
	pack->destination_address[2]=(dest&0xff00)>>8;
	pack->destination_address[3]=(dest&0xff);
	pack->source_port=((sport&0xff)<<8)+((sport&0xff00)>>8);
	pack->destination_port=((dport&0xff)<<8)+((dport&0xff00)>>8);
	pack->UDP_lengh=(((len+8)&0xff)<<8)+(((len+8)&0xff00)>>8);
	pack->UDP_checksum=0;
	for (i=0;i<len;i++)
		pack->data[i]=*(dat+i);
	pack->IP_checksum=0;
	//pack->UDP_checksum=chksum;
	pack->IP_checksum=NetCksum ((U16 *)(ptr+14), 20);
	i=eth_send((void *)(pack),sizeof(IPPACK));
	return i;
}

int
SentARPResponse(U32 dest)
{
       int i;
       ARPPACK * pack;
	pack=(ARPPACK*)(ptr);
	pack->Dest[0]=SERVER_MAC[0];
	pack->Dest[1]=SERVER_MAC[1];
	pack->Dest[2]=SERVER_MAC[2];
	pack->Dest[3]=SERVER_MAC[3];
	pack->Dest[4]=SERVER_MAC[4];
	pack->Dest[5]=SERVER_MAC[5];
	pack->Source[0]=MAC[0];
	pack->Source[1]=MAC[1];
	pack->Source[2]=MAC[2];
	pack->Source[3]=MAC[3];
	pack->Source[4]=MAC[4];
	pack->Source[5]=MAC[5];
	pack->Eth_protocol=PROTOCOL_ARP;
	pack->hardware=hardware_type;
	pack->protocol=PROTOCOL_IP;
	pack->hardware_add_len=6;
	pack->protocol_add_len=4;
	pack->operation=0x0200;
	pack->source_mac[0]=MAC[0];
	pack->source_mac[1]=MAC[1];
	pack->source_mac[2]=MAC[2];
	pack->source_mac[3]=MAC[3];
	pack->source_mac[4]=MAC[4];
	pack->source_mac[5]=MAC[5];
	pack->source_ip[0]=IP[0];
	pack->source_ip[1]=IP[1];
	pack->source_ip[2]=IP[2];
	pack->source_ip[3]=IP[3];
	pack->dest_mac[0]=SERVER_MAC[0];
	pack->dest_mac[1]=SERVER_MAC[1];
	pack->dest_mac[2]=SERVER_MAC[2];
	pack->dest_mac[3]=SERVER_MAC[3];
	pack->dest_mac[4]=SERVER_MAC[4];
	pack->dest_mac[5]=SERVER_MAC[5];
	pack->dest_ip[0]=(dest&0xff000000)>>24;
	pack->dest_ip[1]=(dest&0xff0000)>>16;
	pack->dest_ip[2]=(dest&0xff00)>>8;
	pack->dest_ip[3]=(dest&0xff);
	i=eth_send((void *)(pack),sizeof(ARPPACK));
	return i;
}

int
SentARPRequest(U32 dest)
{
       int i;
       ARPPACK * pack;
	pack=(ARPPACK*)(ptr);
	pack->Dest[0]=SERVER_MAC[0];
	pack->Dest[1]=SERVER_MAC[1];
	pack->Dest[2]=SERVER_MAC[2];
	pack->Dest[3]=SERVER_MAC[3];
	pack->Dest[4]=SERVER_MAC[4];
	pack->Dest[5]=SERVER_MAC[5];
	pack->Source[0]=MAC[0];
	pack->Source[1]=MAC[1];
	pack->Source[2]=MAC[2];
	pack->Source[3]=MAC[3];
	pack->Source[4]=MAC[4];
	pack->Source[5]=MAC[5];
	pack->Eth_protocol=PROTOCOL_ARP;
	pack->hardware=hardware_type;
	pack->protocol=PROTOCOL_IP;
	pack->hardware_add_len=6;
	pack->protocol_add_len=4;
	pack->operation=0x0100;
	pack->source_mac[0]=MAC[0];
	pack->source_mac[1]=MAC[1];
	pack->source_mac[2]=MAC[2];
	pack->source_mac[3]=MAC[3];
	pack->source_mac[4]=MAC[4];
	pack->source_mac[5]=MAC[5];
	pack->source_ip[0]=IP[0];
	pack->source_ip[1]=IP[1];
	pack->source_ip[2]=IP[2];
	pack->source_ip[3]=IP[3];
	pack->dest_mac[0]=0x0;
	pack->dest_mac[1]=0x0;
	pack->dest_mac[2]=0x0;
	pack->dest_mac[3]=0x0;
	pack->dest_mac[4]=0x0;
	pack->dest_mac[5]=0x0;
	pack->dest_ip[0]=(dest&0xff000000)>>24;
	pack->dest_ip[1]=(dest&0xff0000)>>16;
	pack->dest_ip[2]=(dest&0xff00)>>8;
	pack->dest_ip[3]=(dest&0xff);
	i=eth_send((void *)(pack),sizeof(ARPPACK));
	Uart_Printf("Have sent a ARP packet\n");
	return i;
}


void DM9000_Test(void)
{ 
       U32 dest;
	U8 key;
	int templen;
	//volatile unsigned char [100] ptr;
	int i,j,k;
	key=Uart_Getch();
	Uart_Printf("Dm9000 init \n");
	(void)eth_init();
	//Uart_Printf("Disable all interrupt \n");
	//key=Uart_Getch();
	//iow(db, 0xff, 0x80);
	//Uart_Printf(" Move data to DM9000 TX RAM \n");
	key=Uart_Getch();

	/*while(1)
	{
		outb(0xf8, DM9000_MIN_IO);
		iow(db,0xfa, 0);
		iow(db,0xfb, 0);
		
		for (i = 0; i < 100; i++){
	       		outw((i*257),DM9000_MIN_IO + 4);
		}  

              outb(0xf8, DM9000_MIN_IO);
		iow(db,0xfa, 0);
		iow(db,0xfb, 0);
		Uart_Printf(" Read data from DM9000 TX RAM \n");

		outb(0xf2, db->ioaddr);	      
		for (i = 0; i < 102; i++)
		{
			int v = inw(DM9000_MIN_IO + 4);
			    if ((i * 257) != v)
				    Uart_Printf("%x, %x\n",i, v);
		}
	}*/
	/*k=0;

	while(1)
	{
		
		for (i = 0; i < 100; i++){
	       iow(db, 0x16, i+k);
		iow(db, 0x17, i+1+k);
		iow(db, 0x18, i+2+k);
		iow(db, 0x19, i+3+k);
		iow(db, 0x1a, i+4+k);
		iow(db, 0x1b, i+5+k);
		iow(db, 0x1c, i+6+k);
		iow(db, 0x1d, i+7+k);

	       j=ior(db, 0x16);
	       if (j!=i+k) Uart_Printf("-----------------------");
		Uart_Printf("%x, %x\n",i+k, j);
		j=ior(db, 0x17);
		if (j!=i+k+1) Uart_Printf("-----------------------");
	       Uart_Printf("%x, %x\n",i+1+k, j);
		j=ior(db, 0x18);
		if (j!=i+k+2) Uart_Printf("-----------------------");
	       Uart_Printf("%x, %x\n",i+2+k, j);
		j=ior(db, 0x19);
		if (j!=i+k+3) Uart_Printf("-----------------------");
	       Uart_Printf("%x, %x\n",i+3+k, j);
              j=ior(db, 0x1a);
	       if (j!=i+k+4) Uart_Printf("-----------------------");
	       Uart_Printf("%x, %x\n",i+4+k, j);
		j=ior(db, 0x1b);
		if (j!=i+k+5) Uart_Printf("-----------------------");
	       Uart_Printf("%x, %x\n",i+5+k, j);
		j=ior(db, 0x1c);
		if (j!=i+k+6) Uart_Printf("-----------------------");
	      Uart_Printf("%x, %x\n",i+6+k, j);
		j=ior(db, 0x1d);
		if (j!=i+k+7) Uart_Printf("-----------------------");
	       Uart_Printf("%x, %x\n",i+7+k, j);
		 
		}  
	}*/

	   
	/*Uart_Printf("Dm9000 test \n");
	key=Uart_Getch(void);
	Uart_Printf("Data are writing in \n");
       	iow(db, 0xff, 0x80);
	outb(0xf8, DM9000_MIN_IO);
	for (i = 0; i < 100; i++){
       		outw(i,DM9000_MIN_IO + 4);
	}
       Uart_Printf(" writing in down\n");
	(void)eth_init();
	Uart_Printf("Dm9000 init finished \n");
	dest=0xffffffff;
	SentARPRequest(dest);*/
}
