/*
 *  Copyright 2004 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* August 2004*/
/********************************************************************************/
/* tvp51xx.h file */
/********************************************************************************/
#ifndef _TVP51XX_H
#define _TVP51XX_H

#include <csl_i2c.h>
#include <edc.h>
typedef enum TVP51XX_AnalogFormat {
    TVP51XX_AFMT_COMPOSITE,
    TVP51XX_AFMT_SVIDEO,
    TVP51XX_AFMT_RGB,
    TVP51XX_AFMT_YPBPR

} TVP51XX_AnalogFormat;

typedef enum TVP51XX_Mode {
    TVP51XX_MODE_NTSC601,
    TVP51XX_MODE_NTSCSqp,
    TVP51XX_MODE_PAL601,
    TVP51XX_MODE_PALSqp,
    TVP51XX_MODE_USER
}TVP51XX_Mode;


typedef unsigned int TVP51XX_Cmd;  

#define TVP5150_AMUXMODE_0    0     /* J18 */
#define TVP5150_AMUXMODE_1    1     /* J17 */

#define TVP5146_AMUXMODE_0    0     /* J16 */
#define TVP5146_AMUXMODE_1    1     /* J15 */

#define TVP51XX_POWERDOWN           EDC_USER+1
#define TVP51XX_POWERUP             EDC_USER+2      
#define TVP51XX_SET_AMUXMODE        EDC_USER+3


typedef struct {
    TVP51XX_Mode videoMode;
    TVP51XX_AnalogFormat aFmt;
    Bool enableBT656Sync;
    int inputPort;
    I2C_Handle hI2C;
} TVP51XX_ConfParams;


extern EDC_Fxns TVP51XX_Fxns;

#endif 

