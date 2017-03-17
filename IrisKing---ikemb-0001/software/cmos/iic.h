#pragma once

#include <stdio.h>
#include <linux/types.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/ioctl.h>
#include <errno.h>

#define I2C_SLAVE	0x0703
#define I2C_RETRIES 	0x0701
#define I2C_TIMEOUT 	0x0702
#define I2C_RDWR 	0x0707 

struct i2c_msg
{
	unsigned short addr;
        unsigned short flags;
#define I2C_M_TEN	0x10	/* we have a ten bit chip address	*/
#define I2C_M_RD	0x01
#define I2C_M_NOSTART	0x4000
#define I2C_M_REV_DIR_ADDR	0x2000
#define I2C_M_IGNORE_NAK	0x1000
#define I2C_M_NO_RD_ACK		0x0800
        unsigned short len;
        unsigned char *buf;
};

struct i2c_rdwr_ioctl_data
{
	struct i2c_msg *msgs;
        int nmsgs;                 /* nmsgs这个数量决定了有多少开始信号，对于“单开始时序”，取1*/
};
