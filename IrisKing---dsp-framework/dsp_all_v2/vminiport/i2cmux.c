/*
 *  Copyright 2004 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* August 2004 */
/**************************************************************************/
/* tvp51xx.c file */
/**************************************************************************/
#include <std.h>
#include <csl_i2c.h>      
#include <csl_stdinc.h>

#define PCA9540B_ADDRESS 0xE0 >> 1

int I2C_mux_vp(I2C_Handle h) 
{
	return 0;
	_IIC_write(h, PCA9540B_ADDRESS, 0x05, NULL, 0);
	return 0;
}

int I2C_mux_C0104(I2C_Handle h) 
{
	return 0;
	_IIC_write(h, PCA9540B_ADDRESS, 0x04, NULL, 0);
	return 0;
}

