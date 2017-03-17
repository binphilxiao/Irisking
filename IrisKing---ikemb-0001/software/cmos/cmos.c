#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <unistd.h>
#include <time.h>
#include "./cmos.h"
#include "./iic.h"

int fh;
unsigned char iic_dev[]="/dev/i2c/0";
struct i2c_rdwr_ioctl_data cmos_data;
struct i2c_msg cmos_msg[2];
char dat[2];

void _IIC_write_rev(unsigned char subAddress,unsigned char *data)
{
	int ret;
	                
        cmos_data.msgs=cmos_msg;

        ioctl(fh, I2C_SLAVE, OV7725_I2C_ADDRESS);

        cmos_data.nmsgs=1; 
        (cmos_data.msgs[0]).len=2;                      //1个 cmos 写入目标的地址和1个数据 
        (cmos_data.msgs[0]).addr=OV7725_I2C_ADDRESS;    //cmos 设备地址
        (cmos_data.msgs[0]).flags=0;                    //write
        (cmos_data.msgs[0]).buf=dat;
        (cmos_data.msgs[0]).buf[0]=subAddress;          // cmos 写入目标的地址
        (cmos_data.msgs[0]).buf[1]=*data;               //the data to write 
        
        ret=ioctl(fh,I2C_RDWR,(unsigned long)&cmos_data);
}

void _IIC_read_rev(unsigned char subAddress,unsigned char *data)
{
	int ret;
        
        cmos_data.msgs=cmos_msg;
  
        ioctl(fh, I2C_SLAVE, OV7725_I2C_ADDRESS);
        
	cmos_data.nmsgs=1;
        (cmos_data.msgs[0]).len=1;            	//cmos 目标数据的地址
        (cmos_data.msgs[0]).addr=OV7725_I2C_ADDRESS;        	// cmos 设备地址
        (cmos_data.msgs[0]).flags=0;		//write
        (cmos_data.msgs[0]).buf=dat;
        (cmos_data.msgs[0]).buf[0]=subAddress;	//cmos数据地址
        ret=ioctl(fh,I2C_RDWR,(unsigned long)&cmos_data);
        
        (cmos_data.msgs[0]).len=1;		//读出的数据
        (cmos_data.msgs[0]).addr=OV7725_I2C_ADDRESS;		// cmos 设备地址 
        (cmos_data.msgs[0]).flags=I2C_M_RD;	//read
        (cmos_data.msgs[0]).buf=data;		//存放返回值的地址。
        (cmos_data.msgs[0]).buf[0]=0;		//初始化读缓冲*/        
        ret=ioctl(fh,I2C_RDWR,(unsigned long)&cmos_data);
}

void ov7725_init(void)
{
	int i;
	for (i=0;i<(sizeof(_reg_ov7725)/sizeof(OV7725_Reg));i++)
		_IIC_write_rev(_reg_ov7725[i].addr, &_reg_ov7725[i].val);
}

void printID(void)
{
	char id[2];
	_IIC_read_rev(0x0a,id);
	_IIC_read_rev(0x0b,id+1);
        printf("cmos id is %02x %02x\n",id[0],id[1]);
}

void dump()
{
	int i;
	char tmp;
	printf("DUMP\n");
        for (i=0;i<(sizeof(_reg_ov7725)/sizeof(OV7725_Reg));i++)
        {
        	_IIC_read_rev(_reg_ov7725[i].addr,&tmp);
        	printf("(%02x--%02x)\t",_reg_ov7725[i].addr,tmp);
        	if (i%4==3) printf("\n");	
        }
        printf("\n");
}

int main(int argc, char *argv[])
{	
	int i;
	char tmp;
	fh = open(iic_dev, O_RDWR);
    	if (fh == -1)
        {
	        printf("Device write open failure!\n");
	        return -1;
        }
        ioctl(fh, I2C_SLAVE, OV7725_I2C_ADDRESS);  

	if (strcmp("id",argv[argc-1])==0) printID();
	if (strcmp("id",argv[argc-2])==0) printID();
        ov7725_init();	
        if (strcmp("dump",argv[argc-1])==0) dump();
        if (strcmp("dump",argv[argc-2])==0) dump();
}
