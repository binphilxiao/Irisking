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
#include <edc.h>
#include <tvp51xx.h>
                           
#include "_iic.h"
#include "_tvp51xx.h"
#include "..\include\dbg_printf.h"


#define	NTSC_VL	525
#define PAL_VL	625
#define AutoDetect
typedef enum {INTERLACED = TRUE, PROGRESSIVE = FALSE} FrameType ;   

static void configTVP5150(int devId, Arg arg);
static void powerdownTVP51XX(Int channel, Bool powerDownEnable);
static void resetTVP51XX(int devId);
static void setTVP5150AMuxMode(int devId, int Arg);
static Int TVP51XX_ctrl(EDC_Handle handle, TVP51XX_Cmd cmd, Arg arg);
static Int TVP51XX_close(EDC_Handle handle);
static EDC_Handle TVP51XX_open(String devName, Arg optArg);



EDC_Fxns TVP51XX_Fxns = {
    TVP51XX_open,
    TVP51XX_close,
    TVP51XX_ctrl                   
};

static I2C_Handle hI2C = INV;

int _tvp5150_i2c_addr(int devId)
{
	I2C_mux_vp(hI2C);

	switch(devId)
	{
	case 0:
		return 0xB8 >> 1;
	default:
		return 0xBA >> 1;
	}
}

/*
 * ======== configTVP5150 ========
 */
static void configTVP5150(int DevId, Arg arg)
{
    Uint8 addrI2C=_tvp5150_i2c_addr(DevId);
	Uint8 misc_ctrl = 0x6D;
	Uint8 output_format = 0x47; //0x7;
	Uint8 input_sel = 0x00;	// for cvbs port1
	Uint8 pin_cfg = 0x00;
	Uint8 chro_ctrl_2 = 0x14;
	Uint8 nFandVMode = 0x15;
	Uint8 v = 0;

	
    TVP51XX_ConfParams *TVP51XXParams = (TVP51XX_ConfParams *)arg;
		
#ifdef	AutoDetect	
	Uint16 verticalline = NTSC_VL;
	Uint8 temp = 0;
	

	_IIC_read(TVP51XXParams->hI2C, addrI2C, 0x84, &temp, 1);
	verticalline = temp & 3;
	_IIC_read(TVP51XXParams->hI2C, addrI2C, 0x85, &temp, 1);
	verticalline = (verticalline << 8)|temp;
	
	
	if(verticalline == NTSC_VL)
	{
		TVP51XXParams->videoMode = TVP51XX_MODE_NTSCSqp;
	}
	else
	{
		TVP51XXParams->videoMode = TVP51XX_MODE_PALSqp;
	};
#else
	Uint8 temp = 2;
	_IIC_write(TVP51XXParams->hI2C, addrI2C, 0x28, &temp, 1);
	TVP51XXParams->videoMode = TVP51XX_MODE_NTSCSqp;
//	TVP51XXParams->videoMode = TVP51XX_MODE_NTSC601;

#endif
	
    if(TVP51XXParams->videoMode == TVP51XX_MODE_PAL601 || TVP51XXParams->videoMode == TVP51XX_MODE_PALSqp)
    {
    	chro_ctrl_2 = 0x54;
    }

	if(TVP51XXParams->inputPort)
		input_sel = 0x02;	//CVBS port2
	else
		input_sel = 0x0;	//CVBS port1

    _IIC_write(TVP51XXParams->hI2C, addrI2C,0x00, &input_sel,0x1);
    _IIC_write(TVP51XXParams->hI2C, addrI2C,0x03, &misc_ctrl,0x1);
    _IIC_write(TVP51XXParams->hI2C, addrI2C,0x0D, &output_format,0x1);
    _IIC_write(TVP51XXParams->hI2C, addrI2C,0x0F, &pin_cfg,0x1);

    _IIC_write(TVP51XXParams->hI2C, addrI2C,0x1B, &chro_ctrl_2,0x1);

	//Set F and V bits mode to "Toggle F Bit Always"
	_IIC_write(TVP51XXParams->hI2C, addrI2C,0x15, &nFandVMode, 1);

}


/*
 * ======== powerdownTVP51XX ========
 */
static void powerdownTVP51XX(int devId, Bool powerDownEnable)
{
    Uint8 powerdownSettings = 0x01;
	int i2c_addr;

	i2c_addr = _tvp5150_i2c_addr(devId);



    /*Put _TVP51XX in power down mode */
    if(!powerDownEnable) {
        powerdownSettings = 0x00;
    }
   	_IIC_write(hI2C, i2c_addr,0x02,&powerdownSettings,1);
}

/*
 * ======== resetTVP5150A ========
 */
static void resetTVP51XX(int devId)
{
/***************************************************************/
/* Reset 51xx */
/***************************************************************/
    powerdownTVP51XX(devId, FALSE);
}

static void setTVP5150AMuxMode(int devId, int arg)
{
	Uint8 input_sel = (Uint8)arg * 2;	
	int i2c_addr;

	i2c_addr = _tvp5150_i2c_addr(devId);


    _IIC_write(hI2C, i2c_addr, 0x00, &input_sel,0x1);
}



/*
 * ======== TVP51XX_close ========
 */
static Int TVP51XX_close(EDC_Handle edcHandle) 
{
	

    /*First Check if the Handle is correct */
	if((int)edcHandle > 0x1 || (int)edcHandle < 0)
	{
        return EDC_FAILED;
    }
    else
    {
        /*Put _TVP51XX in power down mode */
        powerdownTVP51XX((int)edcHandle, TRUE);
        return EDC_SUCCESS;    
    }
}

/*
 * ======== TVP51XX_ctrl ========
 */
static Int TVP51XX_ctrl(EDC_Handle edcHandle, TVP51XX_Cmd cmd, Arg arg)
{
    Int devId = (int)edcHandle;
    
    switch(cmd) 
    {
        case EDC_CONFIG:  
        {
            hI2C = ((TVP51XX_ConfParams *)arg)->hI2C;

			configTVP5150(devId, arg);
        	break;
        }
        case EDC_RESET:
        	resetTVP51XX(devId);
        	break;
        case TVP51XX_POWERDOWN:
        	powerdownTVP51XX(devId, TRUE);
        	break;                 
        case TVP51XX_POWERUP:
        	powerdownTVP51XX(devId, FALSE);
        	break;                         
        case TVP51XX_SET_AMUXMODE:
			setTVP5150AMuxMode(devId, arg);
        	break;
    }                          
    return EDC_SUCCESS;
}

 
/*
 * ======== TVP51XX_open ========
 */
static EDC_Handle TVP51XX_open(String devName, Arg optArg)
{
    int handle;

    /* Check if the addresse is correct */
    if(devName[0] != '/') 
    {
        handle = -1;
    }
    else
    {
    	handle = (int)(devName[1] - '0');
    }
    
    if (handle < 0||handle >1)
    {
    	return (EDC_Handle)EDC_FAILED;
    }
    
   return (EDC_Handle)handle;
}

/**************************************************************************/
/* End of file                                                            */
/**************************************************************************/

