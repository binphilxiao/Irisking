/*
 *  Copyright 2003 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* "@(#) DDK 1.11.00.00 11-04-03 (ddk-b13)" */
/********************************************************************************/
/* saa7105.h file */
/********************************************************************************/
#ifndef _SAA7105_H
#define _SAA7105_H       
#include <std.h>
#include <csl_stdinc.h>
#include <csl_i2c.h>
#include <edc.h>

typedef struct SAA7105_Cursor {
    Uint8 address;
    Uint8 cursorBlock[256];
}SAA7105_Cursor;


typedef struct SAA7105_LookUpTable {
    Uint8 address;
    Uint8 tables[256][3];
}SAA7105_LookUpTable;

typedef enum SAA7105_AnalogFormat {
    SAA7105_AFMT_SVIDEO = 0,
    SAA7105_AFMT_RGB = 1,
    SAA7105_AFMT_YPBPR = 1,
    SAA7105_AFMT_COMPOSITE = 2
} SAA7105_AnalogFormat;

typedef enum SAA7105_InputFormat {
    SAA7105_IFMT_RGB24_YCBCR444,
    SAA7105_IFMT_RGB555,
    SAA7105_IFMT_RGB565, 
    SAA7105_IFMT_YCBCR422_NONEINTERLACED,
    SAA7105_IFMT_YCBCR422_INTERLACED

}SAA7105_InputFormat;

typedef enum 
{
    SAA7105_MODE_NTSC720, 
    SAA7105_MODE_PAL720,  
    SAA7105_MODE_VGA,     
    SAA7105_MODE_SVGA,    
    SAA7105_MODE_XGA,     
    SAA7105_MODE_HD480P60F,
    SAA7105_MODE_HD720P60F,
    SAA7105_MODE_HD1080I30F,
    SAA7105_MODE_HD720P24F
}SAA7105_Mode;

typedef unsigned int SAA7105_Cmd;


#define SAA7105_POWERDOWN           EDC_USER+1
#define SAA7105_POWERUP             EDC_USER+2
#define SAA7105_ENABLE_SLAVE_MODE   EDC_USER+3
#define SAA7105_LOAD_CURSOR         EDC_USER+4
#define SAA7105_LOAD_LUT            EDC_USER+5
#define SAA7105_ENABLE_COLORBAR     EDC_USER+6

typedef struct {
  SAA7105_AnalogFormat aFmt;
  SAA7105_Mode         mode;           
  SAA7105_InputFormat  iFmt;
  Bool                 enableSlaveMode;
  Bool                 enableBT656Sync;
  I2C_Handle           hI2C;
} SAA7105_ConfParams;

extern EDC_Fxns SAA7105_Fxns;

#endif 

