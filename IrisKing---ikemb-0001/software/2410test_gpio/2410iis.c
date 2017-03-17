//====================================================================
// File Name : 2410iis.c
// Function  : S3C2410 IIS (UDA1341) Record & Play Test Program
//             (DMA2, Double Buffer, Record, Play)
// Program   : Shin, On Pil (SOP)
// Date      : May 10, 2002
// Version   : 0.0
// History
//   0.0 : Programming start (March 06, 2002) -> SOP
//====================================================================

#include "2410addr.h"
#include "2410lib.h"
#include "def.h"
#include "2410iis.h"

void ChangeDMA2(void);
void IIS_PortSetting(void);
void _WrL3Addr(U8 data);
void _WrL3Data(U8 data,int halt);
void __irq DMA2_Done(void);
void __irq DMA2_Rec_Done(void);
void __irq RxInt(void);
void __irq Muting(void);

#define L3C (1<<4)            //GPB4 = L3CLOCK
#define L3D (1<<3)            //GPB3 = L3DATA
#define L3M (1<<2)            //GPB2 = L3MODE

#define PLAY    0
#define RECORD  1
#define REC_LEN 0x50000       //327,680 Bytes

unsigned char *Buf,*_temp;
unsigned short *rec_buf;

volatile unsigned int size = 0;
volatile unsigned int   fs = 0;
volatile char    which_Buf = 1;
volatile char     Rec_Done = 0;
volatile char         mute = 1;

//------------------------------------------------------------------------------
//      SMDK2410 IIS Configuration
// GPB4 = L3CLOCK, GPB3 = L3DATA, GPB2 = L3MODE
// GPE4 = I2SSDO,  GPE3 = I2SSDI, GPE2 = CDCLK, GPE1 = I2SSCLK, GPE0 = I2SLRCK  
//------------------------------------------------------------------------------


//*********************[ Test_Iis ] *********************************
void Test_Iis(void)
{
    unsigned int save_B, save_E, save_PB, save_PE;
//    unsigned int i;

    Uart_TxEmpty(0);
    
//    ChangeClockDivider(1,0);        //1:2:2
//    ChangeMPllValue(0x56,0x3,0x1);  //FCLK=112.8MHz, PCLK=56.4MHz <-- 11.2896MHz*5
    ChangeClockDivider(1,1);        //1:2:4
    ChangeMPllValue(0x96,0x5,0x1);  //FCLK=135428571Hz, PCLK=3.385714MHz
//    ChangeMPllValue(0x66,0x1,0x1);    // FCLK=220MHz
//    ChangeMPllValue(0x69,0x1,0x1);    // FCLK=226MHz    

//    Uart_Init(0,115200);
    Uart_Init(33857142,115200);    
//    Uart_Init(56400000,115200);
    
    Uart_Printf("[ IIS (Master Mode) Test (Play Using UDA1341 Codec) ]\n");
    
    save_B  = rGPBCON;       
    save_E  = rGPECON;       
    save_PB = rGPBUP;
    save_PE = rGPEUP;

    IIS_PortSetting();

    pISR_UART0 = (unsigned)RxInt;
    pISR_DMA2  = (unsigned)DMA2_Done;
    pISR_EINT0 = (unsigned)Muting;

    rINTSUBMSK = ~(BIT_SUB_RXD0);
    rINTMSK    = ~(BIT_EINT0 | BIT_UART0 | BIT_DMA2);   

      //Non-cacheable area = 0x31000000 ~ 0x33feffff
    Buf   = (unsigned char *)0x31000000;
    _temp = Buf;

    Uart_Printf("Download the PCM(no ADPCM) file by DNW(With header)!!\n");

    while(((unsigned int)_temp - (unsigned int)Buf) < 4)
    {
        Led_Display(0);
        Delay(1500);
        Led_Display(15);
        Delay(1500);
    }
    size = *(Buf) | *(Buf + 1)<<8 | *(Buf + 2)<<16 | *(Buf + 3)<<24;
    Uart_Printf("\nNow, Downloading... [ File Size : %7d(      0)]",size);
    while(((unsigned int)_temp - (unsigned int)Buf) < size)
        Uart_Printf("\b\b\b\b\b\b\b\b%7d)",(unsigned int)_temp - (unsigned int)Buf);
    Uart_Printf("\b\b\b\b\b\b\b\b%7d)]\n",(unsigned int)_temp - (unsigned int)Buf);

    rINTSUBMSK |= BIT_SUB_RXD0;

    size = *(Buf + 0x2c) | *(Buf + 0x2d)<<8 | *(Buf + 0x2e)<<16 | *(Buf + 0x2f)<<24;
    size = (size>>1)<<1;

    fs   = *(Buf + 0x1c) | *(Buf + 0x1d)<<8 | *(Buf + 0x1e)<<16 | *(Buf + 0x1f)<<24;

    Uart_Printf("Sample Size = 0x%x\n",size/2);
    Uart_Printf("Sampling Frequency = %d Hz\n",fs);
    Uart_Printf("\n[ Now play the wave file .....]\n");
    Uart_Printf("If you want to mute or no mute push the 'EIN0' key repeatedly\n");

    Init1341(PLAY);

      //DMA2 Initialize
    rDISRC2  = (int)(Buf + 0x30);               //0x31000030~(Remove header)      
    rDISRCC2 = (0<<1) + (0<<0);                 //The source is in the system bus(AHB), Increment      
    rDIDST2  = ((U32)IISFIFO);                  //IISFIFO    
    rDIDSTC2 = (1<<1) + (1<<0);                 //The destination is in the peripheral bus(APB), Fixed  
    rDCON2   = (1<<31)+(0<<30)+(1<<29)+(0<<28)+(0<<27)+(0<<24)+(1<<23)+(0<<22)+(1<<20)+(size/4);
//    rDCON2   = (0xa09<<20) + (size/4);    //1010 0000 1001 xxxx xxxx xxxx xxxx xxxx
      //Handshake[31], Sync PCLK[30], CURR_TC Interrupt Request[29], Single Tx[28], Single service[27], 
      //I2SSDO[26:24], DMA source selected[23],Auto-reload[22], Half-word[21:20], size/2[19:0]
      
    rDMASKTRIG2 = (0<<2) + (1<<1) + (0<<0);          //No-stop[2], DMA2 channel On[1], No-sw trigger[0] 

      //IIS Initialize
    if(fs==44100)               //11.2896MHz(256fs)
    {
//        rIISPSR = (4<<5) + 4;   //Prescaler A,B=4 <- FCLK 112.896MHz(1:2:2)
        rIISPSR = (2<<5) + 2;   //Prescaler A,B=2 <- FCLK 135.4752MHz(1:2:4)
//        rIISPSR = (4<<5) + 4;   //Prescaler A,B=4 <- FCLK 225.792MHz(226MHz)(1:2:4)        
    }
    else                        //fs=22050, 5.6448MHz(256fs)
    {
//        rIISPSR = (9<<5) + 9;   //Prescaler A,B=9 <- FCLK 112.896MHz(1:2:2)
        rIISPSR = (5<<5) + 5;   //Prescaler A,B=5 <- FCLK 135.4752MHz(1:2:4)
//        rIISPSR = (9<<5) + 9;   //Prescaler A,B=9 <- FCLK 225.792MHz(226MHz)(1:2:4)        
    }
    rIISCON = (1<<5) + (1<<2) + (1<<1);         //Tx DMA enable[5], Rx idle[2], Prescaler enable[1]
      //Master mode[8],Tx mode[7:6],Low for Left Channel[5],IIS format[4],16bit ch.[3],CDCLK 256fs[2],IISCLK 32fs[1:0]
    rIISMOD = (0<<8) + (2<<6) + (0<<5) + (0<<4) + (1<<3) + (0<<2) + (1<<0);
    
    rIISFCON = (1<<15) + (1<<13);        //Tx DMA,Tx FIFO --> start piling....

    Uart_Printf("\nPress any key to exit!!!\n");
    
      //IIS Tx Start
    rIISCON |= 0x1;             //IIS Interface start
    while(!Uart_GetKey());
    {
        if((rDSTAT2 & 0xfffff) < (size/6))
            ChangeDMA2();
    }

      //IIS Tx Stop
    Delay(10);                   //For end of H/W Tx
    rIISCON      = 0x0;          //IIS Interface stop
    rDMASKTRIG2  = (1<<2);       //DMA2 stop
    rIISFCON     = 0x0;          //For FIFO flush

    size = 0;

    rGPBCON = save_B;
    rGPECON = save_E;
    rGPBUP  = save_PB;
    rGPEUP  = save_PE;

    rINTMSK = (BIT_DMA2 | BIT_EINT0);
    
//    ChangeClockDivider(1,0);                    //1:2:2    
//    ChangeClockDivider(1,1);                    //1:2:4
//    ChangeMPllValue(0x5c,0x4,0x2);              //Fin=12MHz, Fout=50MHz
//    ChangeMPllValue(0x5c,0x4,0x1);              //FCLK=100Mhz  
//    ChangeMPllValue(0x96,0x5,0x1);              //FCLK=135428571Hz
    ChangeMPllValue(0xa1,0x3,0x1);    // FCLK=202.8MHz
    Uart_Init(0,115200);
    mute = 1;
}


//**************** [ Record_Iis ] ***************************************
void Record_Iis(void)
{
    unsigned int save_B, save_E, save_PB, save_PE;
//  unsigned int i;

//  unsigned short *rec_tmp;

    Uart_TxEmpty(0);

//    ChangeClockDivider(1,0);        //1:2:2
//    ChangeMPllValue(0x56,0x3,0x1);  //FCLK=112.8MHz, PCLK=56.4MHz <-- 11.2896MHz*5
    ChangeClockDivider(1,1);        //1:2:4
    ChangeMPllValue(0x96,0x5,0x1);  //FCLK=135428571Hz, PCLK=3.385714MHz

//    Uart_Init(0,115200);
    Uart_Init(33857142,115200);
//    Uart_Init(56400000,115200);    
    
    
    Uart_Printf("[ IIS (Master Mode) Test (Record Using UDA1341 codec) ]\n");
    
    save_B  = rGPBCON;       
    save_E  = rGPECON;       
    save_PB = rGPBUP;
    save_PE = rGPEUP;

    IIS_PortSetting();
        
      //--- Record Buf initialize
      //Non-cacheable area = 0x31000000 ~ 0x33feffff
    rec_buf = (unsigned short *)0x31000000;

    pISR_DMA2  = (unsigned)DMA2_Rec_Done;
    pISR_EINT0 = (unsigned)Muting;

    rINTMSK = ~(BIT_DMA2);

    Init1341(RECORD);

      //--- DMA2 Initialize
    rDISRCC2 = (1<<1) + (1<<0);                         //APB, Fix  
    rDISRC2  = ((U32)IISFIFO);                          //IISFIFO
    rDIDSTC2 = (0<<1) + (0<<0);                         //PHB, Increment
    rDIDST2  = (int)rec_buf;                            //0x31000000 ~
    rDCON2   = (1<<31)+(0<<30)+(1<<29)+(0<<28)+(0<<27)+(1<<24)+(1<<23)+(1<<22)+(1<<20)+REC_LEN;
      //Handshake, sync PCLK, TC int, single tx, single service, I2SSDI, I2S Rx request, 
      //Off-reload, half-word, 0x50000 half word.
    rDMASKTRIG2 = (0<<2) + (1<<1) + 0;    //No-stop, DMA2 channel on, No-sw trigger

      //IIS Initialize
      //Master,Rx,L-ch=low,IIS,16bit ch,CDCLK=256fs,IISCLK=32fs
    rIISMOD = (0<<8) + (1<<6) + (0<<5) + (0<<4) + (1<<3) + (0<<2) + (1<<0);
    rIISPSR = (4<<5) + 4; //Prescaler_A/B=4 <- FCLK 112.896MHz(1:2:2) ,11.2896MHz(256fs),44.1KHz
//    rIISPSR = (2<<5) + 2; //Prescaler_A/B=2 <- FCLK 135.4752MHz(1:2:4),11.2896MHz(256fs),44.1KHz
    rIISCON = (0<<5) + (1<<4) + (1<<3) + (0<<2) + (1<<1);
      //Tx DMA disable,Rx DMA enable,Tx idle,Rx not idle,prescaler enable,stop
    rIISFCON = (1<<14) + (1<<12);     //Rx DMA,Rx FIFO --> start piling....

    Uart_Printf("Press any key to start record!!!\n");
    Uart_Getch();
    Uart_Printf("Recording...\n");

      //Rx start
    rIISCON |= 0x1;

    while(!Rec_Done);

    rINTMSK  = BIT_DMA2;
    Rec_Done = 0;

      //IIS Stop
    Delay(10);                          //For end of H/W Rx
    rIISCON     = 0x0;                  //IIS stop
    rDMASKTRIG2 = (1<<2);               //DMA2 stop
    rIISFCON    = 0x0;                  //For FIFO flush
    
    Uart_Printf("End of Record!!!\n");
    Uart_Printf("Press any key to play recorded data\n");
    Uart_Printf("If you want to mute or no mute push the 'EIN0' key repeatedly\n");
    Uart_Getch();

    size = REC_LEN * 2;
//  size = (volatile unsigned int)rec_buf - 0x31000000 + 2;
    Uart_Printf("Size = %d\n",size);
//  rec_buf = (unsigned short *)0x31000000;

    Init1341(PLAY);

    pISR_DMA2 = (unsigned)DMA2_Done;
    rINTMSK   = ~(BIT_DMA2 | BIT_EINT0);

      //DMA2 Initialize
    rDISRCC2 = (0<<1) + (0<<0);                         //AHB, Increment
    rDISRC2  = (int)rec_buf;                            //0x31000000
    rDIDSTC2 = (1<<1) + (1<<0);                         //APB, Fixed
    rDIDST2  = ((U32)IISFIFO);                          //IISFIFO
    rDCON2   = (1<<31)+(0<<30)+(1<<29)+(0<<28)+(0<<27)+(0<<24)+(1<<23)+(0<<22)+(1<<20)+(size/2);
      //Handshake, sync PCLK, TC int, single tx, single service, I2SSDO, I2S request, 
      //Auto-reload, half-word, size/2
    rDMASKTRIG2 = (0<<2)+(1<<1)+0;    //No-stop, DMA2 channel on, No-sw trigger 

      //IIS Initialize
      //Master,Tx,L-ch=low,iis,16bit ch.,CDCLK=256fs,IISCLK=32fs
    rIISMOD = (0<<8) + (2<<6) + (0<<5) + (0<<4) + (1<<3) + (0<<2) + (1<<0);      
//  rIISPSR = (4<<5) + 4;            //Prescaler_A/B=4 for 11.2896MHz
    rIISCON = (1<<5)+(0<<4)+(0<<3)+(1<<2)+(1<<1);
      //Tx DMA enable,Tx DMA disable,Tx not idle,Rx idle,prescaler enable,stop
    rIISFCON = (1<<15) + (1<<13);       //Tx DMA,Tx FIFO --> start piling....

    Uart_Printf("Press any key to exit!!!\n");

    rIISCON |= 0x1;                   //IIS Tx Start
    while(!Uart_GetKey());

      //IIS Tx Stop
    Delay(10);               //For end of H/W Tx
    rIISCON     = 0x0;       //IIS stop
    rDMASKTRIG2 = (1<<2);    //DMA2 stop
    rIISFCON    = 0x0;       //For FIFO flush

    size = 0;

    rGPBCON = save_B;
    rGPECON = save_E;
    rGPBUP  = save_PB;
    rGPEUP  = save_PE;

    rINTMSK = (BIT_DMA2 | BIT_EINT0);
    
//    ChangeClockDivider(1,0);                    //1:2:2    
//    ChangeClockDivider(1,1);                    //1:2:4
//    ChangeMPllValue(0x5c,0x4,0x2);              //Fin=12MHz, Fout=50MHz
//    ChangeMPllValue(0x5c,0x4,0x1);              //FCLK=100Mhz  
//    ChangeMPllValue(0x96,0x5,0x1);              //FCLK=135428571Hz
    ChangeMPllValue(0xa1,0x3,0x1);              // FCLK=202.8MHz
    Uart_Init(0,115200);
    mute = 1;
}


//******************[ Init1341 ]**************************************
void Init1341(char mode)
{
    //Port Initialize
//----------------------------------------------------------
//   PORT B GROUP
//Ports  :   GPB4    GPB3   GPB2  
//Signal :  L3CLOCK L3DATA L3MODE
//Setting:   OUTPUT OUTPUT OUTPUT 
//           [9:8]   [7:6}  [5:4]
//Binary :     01  ,   01    01 
//----------------------------------------------------------    
    rGPBDAT = rGPBDAT & ~(L3M|L3C|L3D) |(L3M|L3C); //Start condition : L3M=H, L3C=H
    rGPBUP  = rGPBUP  & ~(0x7<<2) |(0x7<<2);       //The pull up function is disabled GPB[4:2] 1 1100    
    rGPBCON = rGPBCON & ~(0x3f<<4) |(0x15<<4);     //GPB[4:2]=Output(L3CLOCK):Output(L3DATA):Output(L3MODE)

      //L3 Interface
    _WrL3Addr(0x14 + 2);     //STATUS (000101xx+10)
    _WrL3Data(0x60,0);       //0,1,10,000,0 : Reset,256fs,no DCfilter,iis

    _WrL3Addr(0x14 + 2);     //STATUS (000101xx+10)
    _WrL3Data(0x20,0);       //0,0,10,000,0 : No reset,256fs,no DCfilter,iis
    
    _WrL3Addr(0x14 + 2);     //STATUS (000101xx+10)
    _WrL3Data(0x81,0);       //1,0,0,0,0,0,01 : OGS=0,IGS=0,ADC_NI,DAC_NI,sngl speed,AoffDon
    
      //record
    if(mode)
    {
        _WrL3Addr(0x14 + 2);     //STATUS (000101xx+10)
        _WrL3Data(0xa2,0);       //1,0,1,0,0,0,10 : OGS=0,IGS=1,ADC_NI,DAC_NI,sngl speed,AonDoff

        _WrL3Addr(0x14 + 0);     //DATA0 (000101xx+00)
        _WrL3Data(0xc2,0);       //11000,010  : DATA0, Extended addr(010) 
        _WrL3Data(0x4d,0);       //010,011,01 : DATA0, MS=9dB, Ch1=on Ch2=off, 
    }
}

//===================================================================
void ChangeDMA2(void)
{
    if(which_Buf)
    {
        rDISRCC2 = (0<<1) + (0<<0);                         //AHB, Increment
        rDISRC2  = (int)(Buf + 0x30);                       //0x31000030~(Remove header)
    }
    else
    {
        rDISRCC2 = (0<<1) + (0<<0);                         //AHB, Increment
        rDISRC2  = (int)(Buf + 0x30+(size/2));              //0x31000030 + size/2~
    }
}

//===================================================================
void IIS_PortSetting(void)
{
//----------------------------------------------------------
//   PORT B GROUP
//Ports  :   GPB4    GPB3   GPB2  
//Signal :  L3CLOCK L3DATA L3MODE
//Setting:   OUTPUT OUTPUT OUTPUT 
//           [9:8]   [7:6}  [5:4]
//Binary :     01  ,   01    01 
//----------------------------------------------------------    
    rGPBUP  = rGPBUP  & ~(0x7<<2) | (0x7<<2);   //The pull up function is disabled GPB[4:2] 1 1100    
    rGPBCON = rGPBCON & ~(0x3f<<4) | (0x15<<4); //GPB[4:2]=Output(L3CLOCK):Output(L3DATA):Output(L3MODE)

//----------------------------------------------------------
//   PORT E GROUP
//Ports  :  GPE4    GPE3   GPE2  GPE1    GPE0 
//Signal : I2SSDO  I2SSDI CDCLK I2SSCLK I2SLRCK 
//Binary :   10  ,   10     10 ,  10      10    
//----------------------------------------------------------
    rGPEUP  = rGPEUP  & ~(0x1f)  | 0x1f;    //The pull up function is disabled GPE[4:0] 1 1111
    rGPECON = rGPECON & ~(0x3ff) | 0x2aa;   //GPE[4:0]=I2SSDO:I2SSDI:CDCLK:I2SSCLK:I2SLRCK

    rGPFUP   = ((rGPFUP   & ~(1<<0)) | (1<<0));     //GPF0
    rGPFCON  = ((rGPFCON  & ~(3<<0)) | (1<<1));     //GPF0=EINT0    
    
    rEXTINT0 = ((rEXTINT0 & ~(7<<0)) | (2<<0));     //EINT0=falling edge triggered  
}

//===================================================================
void _WrL3Addr(U8 data)
{       
    S32 i,j;

    rGPBDAT  = rGPBDAT & ~(L3D | L3M | L3C) | L3C;      //L3D=L, L3M=L(in address mode), L3C=H

    for(j=0;j<4;j++);                   //tsu(L3) > 190ns

      //GPB[4:2]=L3C:L3D:L3M
    for(i=0;i<8;i++)                    //LSB first
    {
        if(data & 0x1)                  //If data's LSB is 'H'
        {
            rGPBDAT &= ~L3C;            //L3C=L
            rGPBDAT |= L3D;             //L3D=H             
            
            for(j=0;j<4;j++);           //tcy(L3) > 500ns
            
            rGPBDAT |= L3C;             //L3C=H
            rGPBDAT |= L3D;             //L3D=H
            
            for(j=0;j<4;j++);           //tcy(L3) > 500ns
        }
        else                            //If data's LSB is 'L'
        {
            rGPBDAT &= ~L3C;            //L3C=L
            rGPBDAT &= ~L3D;            //L3D=L
            
            for(j=0;j<4;j++);           //tcy(L3) > 500ns
            
            rGPBDAT |= L3C;             //L3C=H
            rGPBDAT &= ~L3D;            //L3D=L
            
            for(j=0;j<4;j++);           //tcy(L3) > 500ns            
        }
        data >>= 1;
    }
    rGPBDAT  = rGPBDAT & ~(L3D | L3M | L3C) | (L3C | L3M);       //L3M=H,L3C=H   
}

//===================================================================
void _WrL3Data(U8 data,int halt)
{
    S32 i,j;

    if(halt)
    {
        rGPBDAT  = rGPBDAT & ~(L3D | L3M | L3C) | L3C;   //L3C=H(while tstp, L3 interface halt condition)        
        for(j=0;j<4;j++);                                //tstp(L3) > 190ns
    }

    rGPBDAT  = rGPBDAT & ~(L3D | L3M | L3C) | (L3C | L3M);   //L3M=H(in data transfer mode)        
    for(j=0;j<4;j++);                                        //tsu(L3)D > 190ns

      //GPB[4:2]=L3C:L3D:L3M
    for(i=0;i<8;i++)
    {
        if(data & 0x1)                   //if data's LSB is 'H'
        {
           rGPBDAT &= ~L3C;              //L3C=L
           rGPBDAT |= L3D;               //L3D=H
           
           for(j=0;j<4;j++);             //tcy(L3) > 500ns
           
           rGPBDAT |= (L3C | L3D);       //L3C=H,L3D=H
           
           for(j=0;j<4;j++);             //tcy(L3) > 500ns
        }
        else                             //If data's LSB is 'L'
        {
           rGPBDAT &= ~L3C;              //L3C=L
           rGPBDAT &= ~L3D;              //L3D=L
           for(j=0;j<4;j++);             //tcy(L3) > 500ns
           rGPBDAT |= L3C;               //L3C=H
           rGPBDAT &= ~L3D;              //L3D=L
           for(j=0;j<4;j++);             //tcy(L3) > 500ns
        }
        data >>= 1;                      //For check next bit
    }
    rGPBDAT  = rGPBDAT & ~(L3D | L3M | L3C) | (L3C | L3M);    //L3M=H,L3C=H
}

//===================================================================
void __irq DMA2_Done(void)
{
    rSRCPND = BIT_DMA2;                 //Clear pending bit
    rINTPND = BIT_DMA2;
    rINTPND;

    WrUTXH0('@');
    if(!which_Buf)
        which_Buf = 1;
    else
        which_Buf = 0;
}

//===================================================================
void __irq DMA2_Rec_Done(void)
{
    rSRCPND = BIT_DMA2;                 //Clear pending bit
    rINTPND = BIT_DMA2;
    rINTPND;

    Rec_Done = 1;
}

//===================================================================
void __irq RxInt(void)
{
    rSUBSRCPND = BIT_SUB_RXD0;          //Clear pending bit (Requested)
//    rSRCPND    = BIT_UART0;
//    rINTPND    = BIT_UART0;             //UART 0 : The interrupt source has asserted the interrupt request
//    rINTPND;
    rSUBSRCPND;

    ClearPending(BIT_UART0);

    *_temp ++= RdURXH0(); 
}

//===================================================================
void __irq Muting(void)
{
    rSRCPND = BIT_EINT0;                //Clear pending bit
    rINTPND = BIT_EINT0;
    rINTPND;

    if(mute)    //Mute
    {
        _WrL3Addr(0x14 + 0);            //DATA0 (000101xx+00)
        _WrL3Data(0xa4,0);              //10,1,00,1,00 : after, no de-emp, mute, flat 
        mute = 0;
        Uart_Printf("=== Mute ===\n");
    }
    else        //No mute
    {
        _WrL3Addr(0x14 + 0);            //DATA0 (000101xx+00)
        _WrL3Data(0xa0,0);              //10,1,00,0,00 : after, no de-emp, no mute, flat 
        mute = 1;
        Uart_Printf("=== No Mute ===\n");
    }
}