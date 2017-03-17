/*
 *  Copyright 2003 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* "@(#) DDK 1.10.00.23 07-02-03 (ddk-b12)" */
/**************************************************************************/
/* saa7115.c file */
/**************************************************************************/
#include <std.h>
#include <csl_i2c.h>      
#include <csl_stdinc.h>
#include <edc.h>
#include <saa7115.h>

#include "_iic.h"
#include "_saa7115.h"

typedef enum {INTERLACED = TRUE, PROGRESSIVE = FALSE} FrameType ;   

static void configSAA7115(Int decNum, SAA7115_Mode inMode,                     
    SAA7115_Mode outMode, SAA7115_AnalogFormat inFormat);
static void enableIPortOutput(Int channel, Bool iPortOutputEnable);
static void enableTask(Uns channel, Uns task, Uns enableFlag);
static void initSAA7115Def(Uns channel);
static void powerdownSAA7115(Int channel, Bool powerDownEnable);
static void resetSAA7115(Int channel);
static void scalerReset(Uns channel);
static void setInOutImageSize(Uns channel, Uns inType, Uns outType);
static void setNTSCScalerParameters(Uns channel,Uns task, Uns frameType);
static void setScalerGlobals(Uns channel);
static void setSAA7115InputFormat(Int channel, SAA7115_AnalogFormat inFormat);
static void setSAA7115SyncMode(Int channel, Bool enableBT656Sync);
static void setupUserDefResolution(Arg arg);
static Int SAA7115_ctrl(EDC_Handle handle, SAA7115_Cmd cmd, Arg arg);
static Int SAA7115_close(EDC_Handle handle);
static EDC_Handle SAA7115_open(String devName, Arg optArg);



EDC_Fxns SAA7115_Fxns = {
    SAA7115_open,
    SAA7115_close,
    SAA7115_ctrl                   
};

static I2C_Handle hI2C[2] = {INV, INV};
static const Int inModeTbl[2][5] = {
    {240, 0x11, 0x01, 0, 1},/* NTSC */
    {288, 0x15, 0x35, 0, 1} /* PAL  */
};
static Int outModeTbl[9][3] = {
    {640, 480, INTERLACED},/* NTSC640 */
    {720, 480, INTERLACED},/* NTSC720 */
    {720, 576, INTERLACED},/* PAL720  */
    {768, 576, INTERLACED},/* PAL768  */
    {352, 288, INTERLACED},/* CIF    */
    {176, 144, INTERLACED},/* QCIF   */
    {128, 96,  INTERLACED},/* SQCIF  */
    {320, 240, INTERLACED},/* SIF    */ 
    {480, 480, INTERLACED} /* USER DEFINED */
};


/*
 * ======== configSAA7115 ========
 */
static void configSAA7115(Int decNum, SAA7115_Mode inMode, 
        SAA7115_Mode outMode, SAA7115_AnalogFormat inFormat)
{
    initSAA7115Def(decNum);  
    setInOutImageSize(decNum,inMode,outMode);
    setSAA7115InputFormat(decNum, inFormat);
}


/*
 * ======== enableIPortOutput ========
 */
static void enableIPortOutput(Int channel, Bool iPortOutputEnable)
{
    _SAA7115_settingsDef[channel].globals.iPortEnable = iPortOutputEnable;
    _SAA7115_settingsDef[channel].globals.xPortEnable = !iPortOutputEnable;
}

/*
 * ======== enableTask ========
 */
static void enableTask(Uns channel, Uns task, Uns enableFlag)
{
    _SAA7115_Globals *globalPtr;
    Uint8 addrI2C;


    addrI2C = (channel == 0) ? _SAA7115_IIC_ADDR0 : _SAA7115_IIC_ADDR1;
    globalPtr = &_SAA7115_settingsDef[channel].globals;
    if(task == _SAA7115_TASKA) {
        globalPtr->taskAEnable = enableFlag;
    }else {
        globalPtr->taskBEnable = enableFlag;
    }   
    _IIC_write(hI2C[channel], addrI2C,0x80,(Uint8 *)globalPtr,1);
}

/*
 * ======== initSAA7115Def ========
 */
static void initSAA7115Def(Uns channel)
{
    _SAA7115_Generics *genericPtr; 
    Uint8 addrI2C;


    addrI2C = (channel == 0) ? _SAA7115_IIC_ADDR0 : _SAA7115_IIC_ADDR1;
    genericPtr = &_SAA7115_settingsDef[channel].generics;
    _IIC_write(hI2C[channel], addrI2C,1,(Uint8 *)genericPtr + 1,29);
    _IIC_write(hI2C[channel], addrI2C,0x30,(Uint8 *)genericPtr + 0x30,0x30);
    _IIC_write(hI2C[channel], addrI2C,0xF0,(Uint8 *)genericPtr + 0xF0,0x10);
    setScalerGlobals(channel);
}


/*
 * ======== powerdownSAA7115 ========
 */
static void powerdownSAA7115(Int channel, Bool powerDownEnable)
{
    Uint8 addrI2C;
    Uint8 powerdownSettings = 0x0d;


    /*Put _SAA7115 in power down mode */
    if(!powerDownEnable) {
        powerdownSettings = 0xf0;
    }
    addrI2C = (channel == 0) ? _SAA7115_IIC_ADDR0 : _SAA7115_IIC_ADDR1;
    _IIC_write(hI2C[channel], addrI2C,0x88,&powerdownSettings,1);
}

/*
 * ======== resetSAA7115 ========
 */
static void resetSAA7115(Int channel)
{
/***************************************************************/
/* Reset 7115 */
/***************************************************************/
    scalerReset(channel);
    powerdownSAA7115(channel, FALSE);
}


/*
 * ======== scalerReset ========
 */
static void scalerReset(Uns channel)
{
    _SAA7115_Globals *globalPtr;
    Uint8 addrI2C;


    addrI2C = (channel == 0) ? _SAA7115_IIC_ADDR0 : _SAA7115_IIC_ADDR1;
    globalPtr = &_SAA7115_settingsDef[channel].globals;
    /* reset */
    globalPtr->resetScaler = 0;
    _IIC_write( hI2C[channel], addrI2C, 0x88, (Uint8 *)globalPtr + 8, 1 );
    /* unreset */
    globalPtr->resetScaler = 1;
    _IIC_write( hI2C[channel], addrI2C, 0x88, (Uint8 *)globalPtr + 8, 1 );
}


/*
 * ======== setInOutImageSize ========
 */
static void setInOutImageSize(Uns channel, Uns inType, Uns outType)
{
    _SAA7115_Task *taskPtr;
    _SAA7115_Generics *genericPtr; 
    Uns pixelsInput,linesInput,pixelsOutput,linesOutput;
    Int frameType;
    Uns scalerFlag;
    Uns xOffset = 8;
    Uns yOffset = 15;
    Uint8 addrI2C;
    Int index;
    

    pixelsInput = 720; 
    addrI2C = (channel == 0) ? _SAA7115_IIC_ADDR0 : _SAA7115_IIC_ADDR1;
    index = (inType == SAA7115_MODE_NTSC720) ? 0 : 1;
    linesInput = inModeTbl[index][0];
    _SAA7115_settingsDef[channel].generics.vGateStart = inModeTbl[index][1];
    _SAA7115_settingsDef[channel].generics.vGateStop = inModeTbl[index][2];
    _SAA7115_settingsDef[channel].generics.vGateStartMsb = inModeTbl[index][3];
    _SAA7115_settingsDef[channel].generics.vGateStopMsb = inModeTbl[index][4];                      
    
    genericPtr = &_SAA7115_settingsDef[channel].generics;
    _IIC_write(hI2C[channel], addrI2C,0x15,(Uint8 *)genericPtr + 0X15, 3);
    index = outType;
    
    pixelsOutput = outModeTbl[index][0];
    linesOutput = outModeTbl[index][1];
    frameType = outModeTbl[index][2];
    scalerFlag = TRUE;
    if(pixelsInput == pixelsOutput) {
        if (frameType == INTERLACED){
            if (linesInput == linesOutput / 2){
                scalerFlag = FALSE;          
            }
        }
        else if (linesInput == linesOutput){
            scalerFlag = FALSE;
        }
    }
    if(scalerFlag == TRUE) {
        /* enable I-port output but disable X-port output */
        _SAA7115_settingsDef[channel].globals.iPortEnable = 1;
        _SAA7115_settingsDef[channel].globals.xPortEnable = 0;
    }
    taskPtr = &_SAA7115_settingsDef[channel].taskA;
    taskPtr->xInputOffset = xOffset;
    taskPtr->yInputOffset = yOffset;
    taskPtr->xInputLength = pixelsInput;
    taskPtr->yInputLength = linesInput;
    taskPtr->xOutputLength = pixelsOutput;
    if(frameType == INTERLACED){
        taskPtr->yOutputLength = linesOutput / 2;
    }else{
        taskPtr->yOutputLength = linesOutput;
    }
    setNTSCScalerParameters(channel,_SAA7115_TASKA, frameType);
    enableTask(channel,_SAA7115_TASKA, TRUE);

    taskPtr = &_SAA7115_settingsDef[channel].taskB;
    taskPtr->xInputOffset = xOffset;
    taskPtr->yInputOffset = yOffset;
    taskPtr->xInputLength = pixelsInput;
    taskPtr->yInputLength = linesInput;
    taskPtr->xOutputLength = pixelsOutput;
    if(frameType == INTERLACED){
        taskPtr->yOutputLength = linesOutput / 2;
    }else{
        taskPtr->yOutputLength = linesOutput;
    }
    setNTSCScalerParameters(channel,_SAA7115_TASKB, frameType);
    enableTask(channel,_SAA7115_TASKB, TRUE);
    
}


/*
 * ======== setNTSCScalerParameters ========
 */
static void setNTSCScalerParameters(Uns channel,Uns task, Uns frameType)
{
    Uns i,xRatio,firLuma,firChroma,xLumaInc;
    Uns saturation,yRatio,lpiMode,yLumaInc;
    _SAA7115_Regs *regPtr;
    _SAA7115_Task *taskPtr;
    Uint8 addrI2C;
    

    addrI2C = (channel == 0) ? _SAA7115_IIC_ADDR0 : _SAA7115_IIC_ADDR1;
    regPtr = (_SAA7115_Regs *)&_SAA7115_settingsDef[channel];
    if(task == _SAA7115_TASKA){
        taskPtr = &_SAA7115_settingsDef[channel].taskA;
    }
    else{
        taskPtr = &_SAA7115_settingsDef[channel].taskB;
    }
    taskPtr->xPreScale = taskPtr->xInputLength / taskPtr->xOutputLength;
    if(taskPtr->xPreScale == 0){
        taskPtr->xPreScale = 1; 
    }
    else if(taskPtr->xPreScale > 63){
        taskPtr->xPreScale = 63;     
    }
    taskPtr->xAccLength = _SAA7115_xScale.xValues[taskPtr->xPreScale].acl;
    xRatio = 100 * taskPtr->xInputLength;
    xRatio /= taskPtr->xOutputLength;
    if(xRatio > 275){
        firLuma = 3; 
    }else if(xRatio > 200){
        firLuma = 2;      
    }else if(xRatio >= 170){
        firLuma = 1;        
    }else{
        firLuma = 0;
    }
    firChroma = firLuma;

    taskPtr->xACLWeighting = _SAA7115_xScale.xValues[taskPtr->xPreScale].c21;
    taskPtr->scalerDCGain = _SAA7115_xScale.xValues[taskPtr->xPreScale].dcGain;
    taskPtr->yPreFilterType = firLuma;
    taskPtr->cxPreFilterType = firChroma;

    xLumaInc = 1024 * taskPtr->xInputLength;
    xLumaInc /= taskPtr->xOutputLength;
    xLumaInc /= taskPtr->xPreScale;
    if(xLumaInc > 0x1FFF){
        xLumaInc = 0x1FFF;
    }

    yRatio = 100 * taskPtr->yInputLength;
    yRatio /= taskPtr->yOutputLength;
    taskPtr->brightness = 0x80;
    if(yRatio < 125){
        lpiMode = 0;
        taskPtr->contrast = 64;
        taskPtr->saturation = 64;
    }else{
        lpiMode = 1;
        saturation = 64 * taskPtr->yOutputLength;
        saturation /= taskPtr->yInputLength;
        taskPtr->contrast = (Uint8)saturation;
        taskPtr->saturation = (Uint8)saturation;
    }

    taskPtr->xLumaIncrement = xLumaInc;
    taskPtr->xChromaIncrement = xLumaInc / 2;
    taskPtr->xLumaPhaseOffset = 0;
    taskPtr->xChromaPhaseOffset = 0;

    yLumaInc = 1024 * taskPtr->yInputLength;
    yLumaInc /= taskPtr->yOutputLength;
    if(yLumaInc > 0xFFFF){
        yLumaInc = 0xFFFF;
    }
    taskPtr->yLumaIncrement = yLumaInc;
    taskPtr->yChromaIncrement = yLumaInc;
    taskPtr->verticalScalingType = lpiMode;

    for(i = 0; i < 4; i ++){
        taskPtr->yLumaPhaseOffset[i] = 0;
        taskPtr->yChromaPhaseOffset[i] = 0;
    }

    if(frameType == INTERLACED){
        taskPtr->eventTrigger = 1;
    }
    else {
        if(taskPtr == &regPtr->taskA){
            taskPtr->eventTrigger = 2;
        }else{
            taskPtr->eventTrigger = 3;
        }         
    }
    if(task == _SAA7115_TASKA){
        _IIC_write(hI2C[channel], addrI2C,0x90,(Uint8 *)taskPtr,0x30);  
    }
    else {
        _IIC_write(hI2C[channel], addrI2C,0xC0,(Uint8 *)taskPtr,0x30);  
    }
}


/*
 * ======== setScalerGlobals ========
 */
static void setScalerGlobals(Uns channel)
{
    _SAA7115_Globals *globalPtr;
    Uint8 addrI2C;


    addrI2C = (channel == 0) ? _SAA7115_IIC_ADDR0 : _SAA7115_IIC_ADDR1;
    globalPtr = &_SAA7115_settingsDef[channel].globals;
    _IIC_write(hI2C[channel], addrI2C,0x80,(Uint8 *)globalPtr,9);
}


/*
 * ======== setSAA7115InputFormat ========
 */
static void setSAA7115InputFormat(Int channel, SAA7115_AnalogFormat inFormat)
{
    _SAA7115_Generics *genericPtr; 
    Uint8 addrI2C;


    addrI2C = (channel == 0) ? _SAA7115_IIC_ADDR0 : _SAA7115_IIC_ADDR1;
    genericPtr = &_SAA7115_settingsDef[channel].generics;
    if(inFormat == SAA7115_AFMT_SVIDEO) {
        _SAA7115_settingsDef[channel].generics.analogMuxMode = 7; 
        _SAA7115_settingsDef[channel].generics.bypassYCombFilter = 1; 
        _SAA7115_settingsDef[channel].generics.yCombFilter = 0;
    }    
    else {
        _SAA7115_settingsDef[channel].generics.analogMuxMode = channel; 
        _SAA7115_settingsDef[channel].generics.bypassYCombFilter = 0; 
        _SAA7115_settingsDef[channel].generics.yCombFilter = 1;
    }
    _IIC_write(hI2C[channel], addrI2C, 0x2,(Uint8 *)genericPtr + 2,1);
    _IIC_write(hI2C[channel], addrI2C, 0x9,(Uint8 *)genericPtr + 9,1);
}



/*
 * ======== setSAA7115SyncMode ========
 */
static void setSAA7115SyncMode(Int channel, Bool enableBT656Sync)
{
    _SAA7115_Task *taskPtrA, *taskPtrB;
    _SAA7115_Generics *genericPtr; 
    Uint8 addrI2C;


    addrI2C = (channel == 0) ? _SAA7115_IIC_ADDR0 : _SAA7115_IIC_ADDR1;

    genericPtr = &_SAA7115_settingsDef[channel].generics;
    taskPtrA = &_SAA7115_settingsDef[channel].taskA;
    taskPtrB = &_SAA7115_settingsDef[channel].taskB;

    if(enableBT656Sync) {
        _SAA7115_settingsDef[channel].taskA.ccir656Enable = 1;
        _SAA7115_settingsDef[channel].taskB.ccir656Enable = 1;
        _SAA7115_settingsDef[channel].generics.ofts = 0;   
        _SAA7115_settingsDef[channel].generics.ofts3 = 0;
    } else {
        _SAA7115_settingsDef[channel].taskA.ccir656Enable = 0;
        _SAA7115_settingsDef[channel].taskB.ccir656Enable = 0;
        _SAA7115_settingsDef[channel].generics.ofts = 2;   
        _SAA7115_settingsDef[channel].generics.ofts3 = 0;
    
        
    }    
    _IIC_write(hI2C[channel], addrI2C,0x93,(Uint8 *)taskPtrA + 3,1);
    _IIC_write(hI2C[channel], addrI2C,0xc3,(Uint8 *)taskPtrB + 3,1);
    _IIC_write(hI2C[channel], addrI2C,0x13,(Uint8 *)genericPtr + 0x13, 1);
    _IIC_write(hI2C[channel], addrI2C,0x1b,(Uint8 *)genericPtr + 0x1b, 1);
    
}
 
/*
 * ======== setupUserDefResolution ========
 */
static void setupUserDefResolution(Arg arg)
{
    SAA7115_ConfParams *saa7115Params = (SAA7115_ConfParams *)arg;    
    if(saa7115Params->outMode == SAA7115_MODE_USER) {
        outModeTbl[SAA7115_MODE_USER][0] = saa7115Params->hSize;
        outModeTbl[SAA7115_MODE_USER][1] = saa7115Params->vSize;
        outModeTbl[SAA7115_MODE_USER][2] = saa7115Params->interlaced;
        
        
    }
    
}

/*
 * ======== SAA7115_close ========
 */
static Int SAA7115_close(EDC_Handle handle) 
{
    Int devId = (int)handle;


    /*First Check if the Handle is correct */
    if(devId == 0 || devId == 1) {
        /*Put _SAA7115 in power down mode */
        powerdownSAA7115(devId, TRUE);
        return EDC_SUCCESS;    
    } else {
        return EDC_FAILED;
    }
}

/*
 * ======== SAA7115_ctrl ========
 */
static Int SAA7115_ctrl(EDC_Handle handle, SAA7115_Cmd cmd, Arg arg)
{
    Int devId = (int)handle;                    
    _SAA7115_Generics *genericPtr; 
    Uint8 addrI2C;
    

    addrI2C = (devId == 0) ? _SAA7115_IIC_ADDR0 : _SAA7115_IIC_ADDR1;
    genericPtr = &_SAA7115_settingsDef[devId].generics;
    /*First Check if the Handle is correct */
    if(devId != 0 && devId != 1) {
        return EDC_FAILED;
    }
    
    switch(cmd) {
        case EDC_CONFIG: {
            SAA7115_ConfParams *saa7115Params = (SAA7115_ConfParams *)arg;
            hI2C[devId] = saa7115Params->hI2C;
            enableIPortOutput(devId, saa7115Params->enableIPortOutput);
            setupUserDefResolution(arg);
            configSAA7115(devId, saa7115Params->inMode, saa7115Params->outMode, 
                saa7115Params->aFmt);
            setSAA7115SyncMode(devId, saa7115Params->enableBT656Sync);
        }
        break;
        case EDC_RESET:
        resetSAA7115(devId);
        break;
        case SAA7115_POWERDOWN:
        powerdownSAA7115(devId, TRUE);
        break;                 
        case SAA7115_POWERUP:
        powerdownSAA7115(devId, FALSE);
        break;
        case SAA7115_SET_AMUXMODE:
        _SAA7115_settingsDef[devId].generics.analogMuxMode = (int)arg; 
        if((int)arg >= 6) {/* svideo input */
            _SAA7115_settingsDef[devId].generics.bypassYCombFilter = 1; 
           _SAA7115_settingsDef[devId].generics.yCombFilter = 0;
        }else {
            _SAA7115_settingsDef[devId].generics.bypassYCombFilter = 0;         
           _SAA7115_settingsDef[devId].generics.yCombFilter = 1;
        }
        _IIC_write(hI2C[0], addrI2C,0x2,(Uint8 *)genericPtr + 2,1);
        _IIC_write(hI2C[0], addrI2C,0x9,(Uint8 *)genericPtr + 9,1);
        break;
    }
    return EDC_SUCCESS;
}

 
/*
 * ======== SAA7115_open ========
 */
static EDC_Handle SAA7115_open(String devName, Arg optArg)
{
    Int devId;


    /* Check if the addresse is correct */
    if(devName[0] != '/') {
        devId = -1;
    } else if(devName[1] == '0') {
         devId = 0;
    } else if(devName[1] == '1'){
         devId = 1;
    } else {
         devId = -1;
    }
    return (EDC_Handle)devId;
}


/**************************************************************************/
/* End of file                                                                            */
/**************************************************************************/

