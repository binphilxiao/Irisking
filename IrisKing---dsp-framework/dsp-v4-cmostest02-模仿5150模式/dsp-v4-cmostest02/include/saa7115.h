/*
 *  Copyright 2003 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* "@(#) DDK 1.11.00.00 11-04-03 (ddk-b13)" */
/********************************************************************************/
/* saa7115.h file */
/********************************************************************************/
#ifndef _SAA7115_H
#define _SAA7115_H

#include <csl_i2c.h>
#include <edc.h>
typedef enum SAA7115_AnalogFormat {
    SAA7115_AFMT_SVIDEO,
    SAA7115_AFMT_COMPOSITE
} SAA7115_AnalogFormat;

typedef enum SAA7115_Mode {
    SAA7115_MODE_NTSC640,
    SAA7115_MODE_NTSC720,
    SAA7115_MODE_PAL720,
    SAA7115_MODE_PAL768,
    SAA7115_MODE_CIF,
    SAA7115_MODE_QCIF,
    SAA7115_MODE_SQCIF,
    SAA7115_MODE_SIF,     
    SAA7115_MODE_USER
}SAA7115_Mode;

typedef unsigned int SAA7115_Cmd;

#define SAA7115_POWERDOWN           EDC_USER+1
#define SAA7115_POWERUP             EDC_USER+2      
#define SAA7115_SET_AMUXMODE        EDC_USER+3


typedef struct {
    SAA7115_Mode inMode;
    SAA7115_Mode outMode;
    SAA7115_AnalogFormat aFmt;
    Bool enableBT656Sync;
    Bool enableIPortOutput;
    I2C_Handle hI2C;

    /* optional parameters for inMode == SAA7115_MODE_USER  */
    Int hSize;
    Int vSize;
    Bool interlaced;    
} SAA7115_ConfParams;

extern EDC_Fxns SAA7115_Fxns;

#endif 

