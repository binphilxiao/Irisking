#include <std.h>
#include <stdio.h>
#include <csl.h>
#include <csl_cache.h>
#include <tsk.h>
#include <csl_gpio.h>
#include <csl_i2c.h>
#include "..\..\include\utility.h"
#include "..\..\include\dbg_printf.h"

extern GPIO_Handle EMBGPIO_handle;
extern I2C_Handle EMBI2C_handle;

#define PCA9540B_ADDRESS (0xE0 >> 1)

int dbg_output(char *fmt, ...)
{
	int r;
	va_list ap;
	va_start(ap, fmt);
	r = vprintf(fmt, ap);
	va_end(ap);
	return r;
}

void I2C_mux_ch(I2C_Handle hI2C, int ch)
{
	switch(ch)
	{
	case 0:
		{_IIC_write(hI2C, PCA9540B_ADDRESS, 0x04, NULL, 0);break;}
	case 1:
	    {_IIC_write(hI2C, PCA9540B_ADDRESS, 0x05, NULL, 0);break;}
	}
}

void Ctl_Led_Right(char sw)
{
	GPIO_pinEnable(EMBGPIO_handle,GPIO_PIN4);
	GPIO_pinDirection(EMBGPIO_handle,GPIO_PIN4,GPIO_OUTPUT);
	GPIO_pinWrite(EMBGPIO_handle,GPIO_PIN4,sw);	
}

void Ctl_Led_Left(char sw)
{
	GPIO_pinEnable(EMBGPIO_handle,GPIO_PIN7);
	GPIO_pinDirection(EMBGPIO_handle,GPIO_PIN7,GPIO_OUTPUT);
	GPIO_pinWrite(EMBGPIO_handle,GPIO_PIN7,sw);	
}

void Ctl_ccd_Left(char sw)
{
	GPIO_pinEnable(EMBGPIO_handle,GPIO_PIN1);
	GPIO_pinDirection(EMBGPIO_handle,GPIO_PIN1,GPIO_OUTPUT);
	GPIO_pinWrite(EMBGPIO_handle,GPIO_PIN1,sw);	
}

void Ctl_ccd_Right(char sw)
{
	GPIO_pinEnable(EMBGPIO_handle,GPIO_PIN2);
	GPIO_pinDirection(EMBGPIO_handle,GPIO_PIN2,GPIO_OUTPUT);
	GPIO_pinWrite(EMBGPIO_handle,GPIO_PIN2,sw);	
}
