#include <std.h>
#include <csl.h>
#include <csl_cache.h>
#include <csl_dat.h>
#include <csl_gpio.h>
#include <csl_i2c.h>
#include <stdio.h>
#include <string.h>
#include "..\..\include\dbg_printf.h"

extern I2C_Handle EMBI2C_handle;

#define OV7725_REG_PID  0x0a 
#define OV7725_REG_PID_VAL  0x77 
#define OV7725_I2C_ADDRESS 0x21
#define TVP5150_REG_PID_MSB  0x80 
#define TVP5150_REG_PID_MSB_VAL  0x51 
#define TVP5150_I2C_ADDRESS 0xB8

void check_id(char * id)
{
	char tmp;
	*id=0;
	_IIC_read_rev(EMBI2C_handle, OV7725_I2C_ADDRESS, OV7725_REG_PID, &tmp,0x1);
	if (tmp==OV7725_REG_PID_VAL)
		*id=tmp;
	/*_IIC_read_rev(EMBI2C_handle, TVP5150_I2C_ADDRESS, TVP5150_REG_PID_MSB, &tmp,0x1);
	if (tmp==TVP5150_REG_PID_MSB_VAL)
		*id=tmp;*/
}

void main()
{

    // Turn on the cache first
//	unsigned char mac[6];
	int 	length;
	int*	clear_mem;

	if (!DAT_open(DAT_CHAANY, DAT_PRI_LOW, DAT_OPEN_2D))
		puts("failed in opening dat module");


    CACHE_setL2Queue(0x3, 0x7);
    CACHE_setL2Queue(0x1, 0x7);
    CACHE_setPriL2Req(CACHE_L2PRIHIGH);

	puts("main");

/*
	clear_mem = (int*)(0x81000000);
	for (length=0; length<0x1000; length++)
	{
		*clear_mem = length;
		clear_mem++;
	}
*/

#if 1
	{
	LgUns	currtime;

	// Uns period = CLK_getprd();

	// currtime = CLK_gethtime();
	currtime = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();

	dbg_output("before clear ticks %x\n", currtime);
	}
#endif

	clear_mem = (int*)(0x80000000);
	length    = 0x4000000;
	memset(clear_mem, 0x00, length);

	CACHE_flush(CACHE_L2ALL,(void*)0x00000000,0x00000000);

	clear_mem = (int*)(0x00);
	length = *clear_mem;
	*clear_mem = ~length;

	clear_mem++;
	length = *clear_mem;
	*clear_mem = ~length;

#if 1
	{
	LgUns	currtime;

	//currtime = CLK_gethtime();
	currtime = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();

	dbg_output("after clear ticks %x\n", currtime);
	}
#endif
}
