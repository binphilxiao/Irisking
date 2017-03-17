/*
 *  Copyright 2004 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */

/********************************************
 Supported Video Port Capture Modes
 Caveats
 - Higher resolutions + High bit capture modes + PIP
 	can result in improper operation due to 
 	the massive memory requirements.
********************************************/
#define MODE_8BIT
//#define MODE_10BIT
//#define MODE_16BIT
//#define MODE_20BIT

/********************************************
 PIP
 - to enable PIP, uncomment the PIP definition
********************************************/
//#define PIP

/********************************************
 Supported Modes of Operation
********************************************/
#define MT9T001_VGA_MODE 			0
#define MT9T001_HDTV_1280x720_MODE 	1
#define MT9T001_HDTV_1920x1080_MODE 2
#define MT9T001_320x240_MODE		3
#define MT9T001_UXGA_1600x1200_MODE 4

// EDC Required Functions
extern far EDC_Fxns MT9T001_Fxns;

// Structure of parameters passed to the EDC

typedef struct {
    Uint16 rowsize;
    Uint16 colsize;
    Uint16 horizblank;
    Uint16 vertblank;
    Uint16 shutterwidth;
    Uint16 redgain;
    Uint16 bluegain;
    Uint16 globalgain;
    Uint16 blacklevel;
    Uint16 green1gain;
    Uint16 green2gain;
} MT9T001_Params;






