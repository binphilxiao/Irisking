/*
 *  Copyright 2003 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* "@(#) DDK 1.10.00.23 07-02-03 (ddk-b12)" */
/********************************************************************************/
/* saa7105edc.c file */
/********************************************************************************/
#include <std.h>        
#include <csl_stdinc.h>
#include <csl_i2c.h>
#include <edc.h>
#include <saa7105.h>

#include "_iic.h"
#include "_saa7105.h"   
                                                
/* local functions declaration */
static void clearHDSyncEngine(void);
static void configSAA7105(SAA7105_Mode videoMode, Bool slaveModeEnable, 
    SAA7105_AnalogFormat outMode, SAA7105_InputFormat inFormat, Bool enableBT656Sync);
static void enableColorBars(Bool enable);
static void enableSlaveMode(Bool enable);
static void initSAA7105Def(void);
static void loadCursor(SAA7105_Cursor* cursorTable);
static void loadHDSyncEngine(Uns mode);
static void powerdownSAA7105(Bool powerDownEnable);
static void resetSAA7105(void);
static void setOutputMode(SAA7105_AnalogFormat outMode);
static void setSAA7105SyncMode(SAA7105_Mode displayType,Bool enableBT656Sync); 
static void setVideoDisplay(SAA7105_Mode displayType, 
    SAA7105_AnalogFormat outMode, SAA7105_InputFormat inFormat, Bool enableBT656Sync);
static void startHDSyncEngine(SAA7105_Mode displayType);

static Int SAA7105_close(EDC_Handle handle);
static Int SAA7105_ctrl(EDC_Handle handle, SAA7105_Cmd cmd, Arg param);
static EDC_Handle SAA7105_open(String devName, Arg optArg);


EDC_Fxns SAA7105_Fxns = {
    SAA7105_open,
    SAA7105_close,
    SAA7105_ctrl
};

/* local variables and arrays */
static I2C_Handle hI2C = INV;
static const Int outputModeTbl[3][5] = {
    {1, 1, 0, 0, 1},
    {0, 0, 0, 0, 0},
    {0, 1, 1, 1, 0}
};

static const Int modeTbl[8][9] = {
 /* NTSC */{248, 14, 1715, 720, 242, SAA7105_IFMT_YCBCR422_INTERLACED,
 0, 0, 0x20},
 /* PAL */{232, 19, 1727, 720, 290, SAA7105_IFMT_YCBCR422_INTERLACED,
 0, 0, 0x20},
 /*VGA */{64, 33, 799, 640, 480, SAA7105_IFMT_RGB565,
 0xc3, 0xd4, 0x1d},
 /*SVGA */{64, 23, 1055, 800, 600, SAA7105_IFMT_RGB565,
 0x4b, 0x68, 0x2f},
 /* XGA */{64, 29, 1343, 1024, 768, SAA7105_IFMT_RGB565,
 0x7b, 0x09, 0x4d},  
 /*HD480P */{64, 30, 857, 720, 480, SAA7105_IFMT_YCBCR422_NONEINTERLACED,
 0, 0, 0x20},
 /*HD720P */{64, 20, 1643, 1280, 720, SAA7105_IFMT_YCBCR422_NONEINTERLACED, 
 0, 0, 0x58},
 /*HD1080I*/{64, 10, 2193, 1920, 540, SAA7105_IFMT_YCBCR422_NONEINTERLACED, 
 0, 0, 0x58}
};                                              



/*
 * ======== clearHDSyncEngine ========
 */
static void clearHDSyncEngine(void)
{
    Uint8 *charPtr;


    _SAA7105_hdSyncGen0.lcAddress = 0;
    charPtr = (Uint8 *)&_SAA7105_hdSyncGen0.lcAddress + 3;
    _IIC_write(hI2C, _SAA7105_IICADDR,0xD0,charPtr,31);
    _SAA7105_hdSyncGen0.ltAddress = 0;
    charPtr = (Uint8 *)&_SAA7105_hdSyncGen0.ltAddress + 3;
    _IIC_write(hI2C, _SAA7105_IICADDR,0xD1,charPtr,61);
    _SAA7105_hdSyncGen0.lpAddress = 0;
    charPtr = (Uint8 *)&_SAA7105_hdSyncGen0.lpAddress + 3;
    _IIC_write(hI2C, _SAA7105_IICADDR,0xD2,charPtr,57);
    _SAA7105_hdSyncGen0.svAddress = 0;
    charPtr = (Uint8 *)&_SAA7105_hdSyncGen0.svAddress + 3;
    _IIC_write(hI2C, _SAA7105_IICADDR,0xD3,charPtr,17);
    return;
}

/*
 * ======== configSAA7105 ========
 */
static void configSAA7105(SAA7105_Mode videoMode, Bool slaveModeEnable, 
               SAA7105_AnalogFormat outMode, SAA7105_InputFormat inFormat, Bool enableBT656Sync)
{


/***************************************************************/
/* Enable master/slave mode                                    */
/***************************************************************/    
    enableSlaveMode(slaveModeEnable);
    initSAA7105Def();
    loadCursor(NULL);
    enableColorBars(FALSE);
    setVideoDisplay(videoMode, outMode, inFormat, enableBT656Sync);

}



/*
 * ======== enableColorBars ========
 */
static void enableColorBars(Bool enable)
{
    _SAA7105_Regs *regPtr;
    Uint8 *charPtr;

    
    regPtr = &_SAA7105_settingsDef;
    regPtr->colorBarsEnable = enable;
    charPtr = (Uint8 *)&_SAA7105_settingsDef;
    _IIC_write(hI2C, _SAA7105_IICADDR,0x3A,&charPtr[0x3A],1);
    return;
}

/*
 * ======== enableSlaveMode ========
 */
static void enableSlaveMode(Bool enable)
{
    _SAA7105_Regs *regPtr;
    Uint8 *charPtr;

    
    regPtr = &_SAA7105_settingsDef;
    if(!enable){
        regPtr->masterSlaveMode = FALSE;
        regPtr->vSyncOutput = TRUE;
        regPtr->hSyncOutput = TRUE;     
        regPtr->fieldOutput = TRUE;     
        regPtr->bypassInputFIFO = FALSE;        
    }else{
        regPtr->masterSlaveMode = TRUE;
        regPtr->vSyncOutput = FALSE;
        regPtr->hSyncOutput = FALSE;        
        regPtr->fieldOutput = FALSE;        
        regPtr->bypassInputFIFO = TRUE;
    }
    charPtr = (Uint8 *)&_SAA7105_settingsDef;
    _IIC_write(hI2C, _SAA7105_IICADDR,0x96,&charPtr[0x96],2);
    _IIC_write(hI2C, _SAA7105_IICADDR,0x84,&charPtr[0x84],1);
    return;
}

/*
 * ======== initSAA7105Def ========
 * initialize the SAA7105 in default setup 
 */
static void initSAA7105Def(void)
{
    Uint8 *charPtr,subAddress;

    
/***************************************************************/
/* Load registers from ROM to RAM */
/***************************************************************/
    charPtr = (Uint8 *)&_SAA7105_settingsDef;
    subAddress = 0xD0;
    _IIC_write(hI2C, _SAA7105_IICADDR,subAddress,&charPtr[subAddress],13);
    subAddress = 0xF0;
    _IIC_write(hI2C, _SAA7105_IICADDR,subAddress,&charPtr[subAddress],14);
    return;
}

/*
 * ======== loadCursor ========
 * load Hardware cursor
 */
static void loadCursor(SAA7105_Cursor* cursorTable)
{
    Uns i;


/***************************************************************/
/* Load Hardware Cursor Bit Map with transparency */
/***************************************************************/
    if(cursorTable == NULL){
        cursorTable = &_SAA7105_cursorData;
        cursorTable->address = 0;
        for(i = 0; i < 256; i ++){
            cursorTable->cursorBlock[i] = 0xAA;
        }
    }
    _IIC_write(hI2C, _SAA7105_IICADDR,0xFE, (void *)cursorTable,256+1);
    return;
}
/*
 * ======== loadHDSyncEngine ========
 */
static void loadHDSyncEngine(Uns mode)
{
    _SAA7105_HDSyncGen *ptrHDSyncGen;
    Uint8 *charPtr;

    
    switch(mode)
    {
        case SAA7105_MODE_HD480P60F:
            ptrHDSyncGen = &_SAA7105_hdSyncGen480P;
            break;
        case SAA7105_MODE_HD720P60F:
            ptrHDSyncGen = &_SAA7105_hdSyncGen720P;
            break;
        case SAA7105_MODE_HD1080I30F:
            ptrHDSyncGen = &_SAA7105_hdSyncGen1080I;
            break;
        case SAA7105_MODE_VGA:
            ptrHDSyncGen = &_SAA7105_hdSyncGenVGA;
            break;
        case SAA7105_MODE_SVGA:
            ptrHDSyncGen = &_SAA7105_hdSyncGenSVGA;
            break;
        case SAA7105_MODE_XGA:
            ptrHDSyncGen = &_SAA7105_hdSyncGenXGA;
            break;
            
        default:
            break;
    }
    ptrHDSyncGen->lcAddress = 0;
    charPtr = (Uint8 *)&ptrHDSyncGen->lcAddress + 3;
    _IIC_write(hI2C, _SAA7105_IICADDR,0xD0,charPtr,31);
    ptrHDSyncGen->lpAddress = 0;
    charPtr = (Uint8 *)&ptrHDSyncGen->lpAddress + 3;
    _IIC_write(hI2C, _SAA7105_IICADDR,0xD2,charPtr,57);
    ptrHDSyncGen->ltAddress = 0;
    charPtr = (Uint8 *)&ptrHDSyncGen->ltAddress + 3;
    _IIC_write(hI2C, _SAA7105_IICADDR,0xD1,charPtr,61);
    ptrHDSyncGen->svAddress = 0;
    charPtr = (Uint8 *)&ptrHDSyncGen->svAddress + 3;
    _IIC_write(hI2C, _SAA7105_IICADDR,0xD3,charPtr,17);
}


/*
 * ======== powerdownSAA7105 ========
 */

static void powerdownSAA7105(Bool powerDownEnable)
{
    Uint8 *charPtr = (Uint8 *)&_SAA7105_settingsDef;


    /*Put _SAA7105 in power down mode */
    _SAA7105_settingsDef.downA = powerDownEnable;
    _SAA7105_settingsDef.downD = powerDownEnable;
    _IIC_write(hI2C, _SAA7105_IICADDR,0x61,&charPtr[0x61],1);
}


/*
 * ======== resetSAA7105 ========
 */
static void resetSAA7105(void)
{
/***************************************************************/
/* power-up SAA7105                                            */
/***************************************************************/
    powerdownSAA7105(FALSE);
    return;
}

/*
 * ======== setOutputMode ========
 */
static void setOutputMode(SAA7105_AnalogFormat outMode)
{
    _SAA7105_Regs *regPtr;
    Uint8 *charPtr;

    
    regPtr = &_SAA7105_settingsDef;
    regPtr->vbsEn = outputModeTbl[outMode][0];
    regPtr->cvbsEn0 = outputModeTbl[outMode][1];
    regPtr->cvbsEn1 = outputModeTbl[outMode][2];
    regPtr->cvbsEn2 = outputModeTbl[outMode][3];
    regPtr->cEn = outputModeTbl[outMode][4];    
    charPtr = (Uint8 *)&_SAA7105_settingsDef;
    _IIC_write(hI2C, _SAA7105_IICADDR,0x2D,&charPtr[0x2D],1);
    return;
}


/*
 * ======== setSAA7105SyncMode ========
 */
static void setSAA7105SyncMode(SAA7105_Mode displayType,Bool enableBT656Sync)
{
    Uint8 *charPtr = (Uint8 *)&_SAA7105_settingsDef;


    if(enableBT656Sync) {
        _SAA7105_settingsDef.syncVia656 = 1;
        if(displayType == SAA7105_MODE_PAL720) {
            //_SAA7105_settingsDef.hTriggerMSBs = 0; 
            //_SAA7105_settingsDef.hTrigger = 235;        
        }   
        else {        
//            _SAA7105_settingsDef.hTriggerMSBs = 0; 
//            _SAA7105_settingsDef.hTrigger = 235;  
        }
        _SAA7105_settingsDef.xOfs = 0;
        _SAA7105_settingsDef.xOfsMsb = 0;
    }else {
        _SAA7105_settingsDef.syncVia656 = 0;
    }    
    _IIC_write(hI2C, _SAA7105_IICADDR,0x3A,&charPtr[0x3A],1);       
    _IIC_write(hI2C, _SAA7105_IICADDR,0x99,&charPtr[0x99],1);       
    _IIC_write(hI2C, _SAA7105_IICADDR,0x90,&charPtr[0x90],1);       
    _IIC_write(hI2C, _SAA7105_IICADDR,0x94,&charPtr[0x94],1);       
    _IIC_write(hI2C, _SAA7105_IICADDR,0x6C,&charPtr[0x6C],1);       
    _IIC_write(hI2C, _SAA7105_IICADDR,0x6D,&charPtr[0x6D],1);       

}

/*
 * ======== setVideoDisplay ========
 */
static void setVideoDisplay(SAA7105_Mode displayType, 
    SAA7105_AnalogFormat outMode, SAA7105_InputFormat inFormat, Bool enableBT656Sync)
{                       
    Uint8 *charPtr;
    Uns activePixels,activeLines;     
    Uns hLen;
    Uns hStart,hEnd,fal, lal;
    volatile _SAA7105_Regs *regPtr = (_SAA7105_Regs *)&_SAA7105_settingsDef;    
    Uns yOffset;
    Uns xOffset;
    Uns yInc = 0; 
    Uns ySkip = 0;
    Uns yIWGTO = 100;
    Uns yIWGTE = 100;
    Uns xInc = 0;


    hStart = 272;
    xOffset = modeTbl[displayType][0];      
    yOffset = modeTbl[displayType][1];
    hLen = modeTbl[displayType][2];;
    activePixels = modeTbl[displayType][3];
    activeLines = modeTbl[displayType][4];
    regPtr->inputFormat = modeTbl[displayType][5];
    regPtr->pixClock0 = modeTbl[displayType][6];
    regPtr->pixClock1 = modeTbl[displayType][7];
    regPtr->pixClock2 = modeTbl[displayType][8];

    regPtr->chromaBinary = 1;
    regPtr->compSyncEnable = 0;
    regPtr->encOff = 1;
    regPtr->idel = 1;
    fal = 18;

    if(regPtr->inputFormat == SAA7105_IFMT_YCBCR422_NONEINTERLACED) {
        /* 54MHz input clock (input mode 3) */
        xInc = 0;
        regPtr->edge = 0;
        regPtr->slot = 1;
    } else if(regPtr->inputFormat == SAA7105_IFMT_YCBCR422_INTERLACED){
        /* 27MHz input clock (input mode 4) */
        xInc = 2048;
        regPtr->edge = 1;
        regPtr->slot = 0;
        regPtr->encOff = 0;
        regPtr->idel = 3;  
        regPtr->compSyncEnable = 0;
    } else if(regPtr->inputFormat == SAA7105_IFMT_RGB565) {
        xInc = 0;
        regPtr->edge = 1;
        regPtr->slot = 1;       
        regPtr->chromaBinary = 0;
    }               
    if(displayType == SAA7105_MODE_PAL720) {
        regPtr->palEnable = 1;
        regPtr->fise = 0;
        regPtr->burstStart = 0x21;
        regPtr->burstEnd = 0x1d;
        regPtr->chromaPhase = 0x6b;
        regPtr->burstAmplitude = 0x2d;      
        regPtr->subCarrier0 = 0xCB;
        regPtr->subCarrier1 = 0x8A;
        regPtr->subCarrier2 = 0x09;
        regPtr->subCarrier3 = 0x2A;
        regPtr->hTriggerMSBs = 0;   
        regPtr->hTrigger = 2;   

        if(enableBT656Sync) {
            hStart = 280;
            xOffset = 0;
            regPtr->syncVia656 = 1;
            fal = 21;
            regPtr->vTrigger = 0;   
        }
        else {
            hStart = 284;
            regPtr->syncVia656 = 0;
            fal = 21;             
            regPtr->vTrigger = 2;   
        }        

        regPtr->lumaDelay = 0;  
        regPtr->cbGain = 0x7b;
        regPtr->crGain = 0xAe;

    } else if(displayType == SAA7105_MODE_NTSC720){
        regPtr->hTriggerMSBs = 0;   
        regPtr->hTrigger = 2;
        
        if(enableBT656Sync) {
            regPtr->vTrigNegative = 1;
            regPtr->vTrigger = 4;   
            fal = 13;
            activeLines += 3;
            xOffset = 0;
            regPtr->syncVia656 = 1;

        }
        else {
            regPtr->vTrigNegative = 0;
            regPtr->vTrigger = 0;   
            fal = 17;
            regPtr->syncVia656 = 0;
        }        
        regPtr->lumaDelay = 0;  
        regPtr->chromaPhase = 0x33;
        regPtr->burstAmplitude = 0x3F;
        regPtr->subCarrier0 = 0x1F;
        regPtr->subCarrier1 = 0x7C;
        regPtr->subCarrier2 = 0xF0;
        regPtr->subCarrier3 = 0x21;
        regPtr->cbGain = 0x7b;
        regPtr->crGain = 0xAe;
    }

    regPtr->hLen = hLen;
    regPtr->hLenMsb = hLen >>  8;
    regPtr->xInc = xInc;
    regPtr->xIncMsb = xInc >> 8;
    regPtr->yInc = yInc;
    regPtr->yIncMsb = yInc >> 8;
    regPtr->yIWGTO = yIWGTO;
    regPtr->yIWGTOMsb = yIWGTO >> 8;
    regPtr->yIWGTE = yIWGTE;
    regPtr->yIWGTEMsb = yIWGTE >> 8;
    regPtr->ySkip = ySkip;
    regPtr->ySkipMsb = ySkip >> 8;

    hEnd = hStart + (2 * activePixels);
    regPtr->hStart = hStart; 
    regPtr->hEnd = hEnd;
    regPtr->hStartMSB = hStart >> 8;
    regPtr->hEndMSB = hEnd >> 8;
    
    if(regPtr->inputFormat != SAA7105_IFMT_YCBCR422_INTERLACED){
        activePixels /= 2;
    }
    regPtr->xPix = activePixels;
    regPtr->xPixMsb = activePixels >> 8;
    regPtr->yPix = activeLines;
    regPtr->yPixMsb = activeLines >> 8; 
    

    lal = fal + activeLines;
    regPtr->fal = fal;
    regPtr->falMsb = fal >> 8;
    regPtr->lal = lal;
    regPtr->lalMsb = lal >> 8;

    regPtr->xOfs = xOffset;
    regPtr->xOfsMsb = xOffset >> 8;
    regPtr->yOfsOdd = yOffset;
    regPtr->yOfsOddMsb = yOffset >> 8;
    regPtr->yOfsEven = yOffset;
    regPtr->yOfsEvenMsb = yOffset >> 8; 

    charPtr = (Uint8 *)&_SAA7105_settingsDef;
    _IIC_write(hI2C, _SAA7105_IICADDR,1,&charPtr[1],0xA3);
    _IIC_write(hI2C, _SAA7105_IICADDR,0xfd,&charPtr[0xfd],1);
    if(displayType >= SAA7105_MODE_VGA){
        clearHDSyncEngine();
        loadHDSyncEngine(displayType);
        startHDSyncEngine(displayType);
        setOutputMode(SAA7105_AFMT_RGB);
        /* reset the OSD_FPGA and configure it in approciate mode */
        *(volatile Uint8 *)(0x90080010) = 0x20; // 16-bit mode
    }else{
        setOutputMode(outMode);
        /* reset the OSD_FPGA and configure it in approciate mode */
        *(volatile Uint8 *)(0x90080010) = 0x28; // 8-bit mode
    }
    *(volatile Uint8 *)(0x90080010) &= ~0x20; // un-reset OSD FPGA */
    while(!(*(volatile Uint8 *)(0x90080013) & 0x40));
}

 
/*
 * ======== startHDSyncEngine ========
 */

static void startHDSyncEngine(SAA7105_Mode displayType)
{
    _SAA7105_Regs *regPtr;
    Uint8 *charPtr;
        
    regPtr = &_SAA7105_settingsDef;
    regPtr->hdRGB_YCbCr = 0;
    regPtr->hdFullGain = 1;
    regPtr->hdTriggerPhaseY = 0;
    switch(displayType) {
        case SAA7105_MODE_VGA:
        regPtr->hdLineCounter = 2;
        regPtr->hdTriggerPhaseX = 12;
        break;
        case SAA7105_MODE_SVGA:
        regPtr->hdLineCounter = 4;
        regPtr->hdTriggerPhaseX = 12;
        break;
        case SAA7105_MODE_XGA:
        regPtr->hdLineCounter = 6;
        regPtr->hdTriggerPhaseX = 12;
        break;
        case SAA7105_MODE_HD1080I30F:
        regPtr->hdLineCounter = 2;
        regPtr->hdTriggerPhaseX = 0;
        regPtr->hdRGB_YCbCr = 1;
        regPtr->hdFullGain = 0;
        regPtr->hdTriggerPhaseY = 95;
        break;
        case SAA7105_MODE_HD480P60F:
        regPtr->hdLineCounter = 2;
        regPtr->hdTriggerPhaseX = 5;
        regPtr->hdRGB_YCbCr = 1; 
        regPtr->hdFullGain = 0;
        regPtr->hdTriggerPhaseY = 0;
        break;
        case SAA7105_MODE_HD720P60F:
        regPtr->hdLineCounter = 2;
        regPtr->hdTriggerPhaseX = 15;
        regPtr->hdRGB_YCbCr = 1;
        regPtr->hdFullGain = 0;
        regPtr->hdTriggerPhaseY = 0;
        break;

        default:
        regPtr->hdLineCounter = 2;
        regPtr->hdTriggerPhaseX = 5;
        regPtr->hdRGB_YCbCr = 1;
        regPtr->hdFullGain = 0;
        regPtr->hdTriggerPhaseY = 0;        
        break;
    }       
    
    regPtr->hdLineTypePtr = 0;
    regPtr->hdLinePatternPtr = 0;
    regPtr->hdDurationCtr = 0;
    regPtr->hdEventTypePtr = 0;
    regPtr->hdColorInterpolator = 1;
    regPtr->hdActive = 1;

    charPtr = (Uint8 *)&_SAA7105_settingsDef;
    _IIC_write(hI2C, _SAA7105_IICADDR,0xD4,&charPtr[0xD4],9);
    return;
}



/*
 * ======== SAA7105_close ========
 */
static Int SAA7105_close(EDC_Handle handle) 
{
    Int devId = (Int)handle;


    /*First Check if the Handle is correct */
    if(devId == _SAA7105_IICADDR) {
        /*Put _SAA7105 in power down mode */
        powerdownSAA7105(TRUE);
        return EDC_SUCCESS;    
    } else 
        return EDC_FAILED;
}

/*
 * ======== SAA7105_ctrl ========
 */
static Int SAA7105_ctrl(EDC_Handle handle, SAA7105_Cmd cmd, Arg param)
{
    Int devId = (Int)handle;


    /*First Check if the Handle is correct */
    if(devId != _SAA7105_IICADDR){
        return EDC_FAILED;        
    }
    switch(cmd) {
        case EDC_CONFIG: {
            SAA7105_ConfParams *saa7105Params = (SAA7105_ConfParams *)param;
            hI2C = saa7105Params->hI2C;
            configSAA7105(saa7105Params->mode, saa7105Params->enableSlaveMode, 
                saa7105Params->aFmt, saa7105Params->iFmt, saa7105Params->enableBT656Sync);
            setSAA7105SyncMode(saa7105Params->mode,
                saa7105Params->enableBT656Sync);
        }
        break;
        case EDC_RESET:
        resetSAA7105();
        break;
        case SAA7105_POWERDOWN:
        powerdownSAA7105(TRUE);
        break;                 
        case SAA7105_POWERUP:
        powerdownSAA7105(FALSE);
        break;
        case SAA7105_ENABLE_SLAVE_MODE:  
        enableSlaveMode((Bool)param);
        break;
        case SAA7105_ENABLE_COLORBAR:     
        enableColorBars((Bool)param);
        break;
        case SAA7105_LOAD_CURSOR:/* load hardware cursor */
        break;
        case SAA7105_LOAD_LUT: /* load look-up table */
        break;
    }
    return EDC_SUCCESS;        
}


/*
 * ======== SAA7105_open ========
 */
static EDC_Handle SAA7105_open(String devName, Arg optArg)
{
    return (EDC_Handle)_SAA7105_IICADDR;
}




/**************************************************************************/
/* End of file                                                                            */
/**************************************************************************/
