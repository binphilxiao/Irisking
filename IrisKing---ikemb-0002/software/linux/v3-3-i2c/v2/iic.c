#include <stdio.h>
#include <linux/types.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <assert.h>
#include <string.h>

#define MAX_I2C_MSG 2 
#define I2C_SLAVE   0x0703
#define I2C_RETRIES 0x701 
#define I2C_TIMEOUT 0x702 
#define I2C_RDWR    0x707 
#define I2C_M_RD    0x1 

#define I2C_SLAVE_ADDR 0x50

struct i2c_msg
{
    u_int16_t    addr;
    u_int16_t    flags;
    u_int16_t    len;
    u_int8_t *buf;
}st_i2c_msg[2];

struct i2c_rdwr_ioctl_data
{
    struct i2c_msg *msgs;
    int nmsgs;
}work_queue;

int32_t iic_read(int32_t fd,u_int32_t offset,u_int32_t len,u_int8_t *buf)
{
	u_int8_t i;
	u_int8_t data[len+2];
   	struct i2c_rdwr_ioctl_data work_queue;
   	if(offset>32768)
   	{
   	    printf("read too long than 32768\n");
   	    return -1;
   	}
	//printf("offset %d\n",offset);
	data[0]=(offset>>8) & 0x7f;
	data[1]=offset & 0xff;
	
   	work_queue.nmsgs = 1;
	work_queue.msgs =st_i2c_msg;
	
    	work_queue.msgs->len=len;
	work_queue.msgs->flags=I2C_M_RD;
	work_queue.msgs->buf=data;
	
    	ioctl(fd, I2C_SLAVE, I2C_SLAVE_ADDR);
	//ioctl(fd, I2C_RDWR, (u_int32_t)&work_queue);
	write(fd,data,2);
	read(fd, data, len);

	for (i=0;i<len;i++)
		*(buf+i)=data[i];
}

int32_t iic_write(int32_t fd,u_int32_t offset,u_int32_t len,u_int8_t *buf)
{
	u_int8_t i;
	u_int8_t data[len+2];
   	struct i2c_rdwr_ioctl_data work_queue;
   	if(offset>32768)
   	{
   	    printf("read too long than 32768\n");
   	    return -1;
   	}
	//printf("offset %d\n",offset);
	data[0]=(offset>>8) & 0x7f;
	data[1]=offset & 0xff;
	for (i=0;i<len;i++)
		data[i+2]=*(buf+i);
	
   	work_queue.nmsgs = 1;
	work_queue.msgs =st_i2c_msg;

    	(work_queue.msgs+1)->len=len;
	(work_queue.msgs+1)->flags=0;
	(work_queue.msgs+1)->buf=data;
	
    	ioctl(fd, I2C_SLAVE, I2C_SLAVE_ADDR);
	//ioctl(fd, I2C_RDWR, (u_int32_t)&work_queue);
	write(fd,data,2);
	write(fd,data,len+2);
}

main()
{
	u_int8_t i,j;
	int32_t ret;
	u_int8_t data[100]="abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	
	int32_t fh = open("/dev/i2c-1", O_RDWR);
    	if (fh == -1)
       {
        	printf("Device write open failure!\n");
        	return ;
       }

	/*for (i=0;i<100;i++)
	{
		data[i]=i;
	}*/
	
	ret=iic_write(fh,155,63,data);
	for (i=0;i<100;i++)
	{
		data[i]=0;
	}
	ret=iic_read(fh,155,63,data);
	/*for (i=0;i<10;i++)
	{
		for (j=0;j<10;j++)
		{
			printf("%2x ",data[i*10+j]);
		}
		printf("\n");
	}*/
	printf("%s\n",data);	
}


