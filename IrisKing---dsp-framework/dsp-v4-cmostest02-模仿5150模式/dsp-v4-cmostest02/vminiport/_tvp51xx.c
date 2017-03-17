/*
 *  Copyright 2004 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* August 2004 */
/********************************************************************/
/* _TVP51XX.c file                                                      */
/********************************************************************/
#include "_tvp51xx.h"
 
const Uint8  NTSC601_EXEC[8][2] = {
	{0x54, 0x00},
	{0x24, 0x03},
	{0x00, 0x00},
	{0x40, 0x00},
	{0x04, 0x00},
	{0x07, 0x00},
	{0x01, 0x00},
	{0x15, 0x00},
};
const Uint8	NTSCSGP_EXEC[8][2] = {
	{0x56, 0x00},
	{0xD6, 0x02},
	{0x00, 0x00},
	{0x40, 0x00},
	{0x04, 0x00},
	{0x07, 0x00},
	{0x01, 0x00},
	{0x15, 0x00},
};
const Uint8	PAL601_EXEC[8][2] = {
	{0x58, 0x00},
	{0x28, 0x03},
	{0x00, 0x00},
	{0x40, 0x00},
	{0x01, 0x00},
	{0x04, 0x00},
	{0x6F, 0x02},
	{0x17, 0x00},
};
const Uint8	PALSGP_EXEC[8][2] = {
	{0x67, 0x00},
	{0xB8, 0x02},
	{0x00, 0x00},
	{0x40, 0x00},
	{0x01, 0x00},
	{0x04, 0x00},
	{0x6F, 0x02},
	{0x17, 0x00},
};


/********************************************************************/
/* end of file                                                      */
/********************************************************************/

