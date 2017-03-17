/*
 *  Copyright 2003 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* "@(#) DDK 1.10.00.23 07-02-03 (ddk-b12)" */
#ifndef __IIC_H  
#define __IIC_H

#include <std.h>
#include <csl_stdinc.h>
#include <csl_i2c.h>

#ifdef __cplusplus
extern "C" {
#endif

void _IIC_write(I2C_Handle hI2C,
              Uint8   devAddress,
              Uint32  subAddress,
              Uint8   *data,
              Uint16  numBytes
              );


#ifdef __cplusplus
}
#endif

#endif

