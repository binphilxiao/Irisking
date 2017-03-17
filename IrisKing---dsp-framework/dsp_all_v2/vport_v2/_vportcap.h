/*
 *  Copyright 2004 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* August 2004 */
 
/* History:
* Feb. 26, 2004, add parameters for asyc mode and 3:2 pull-down support 
*/


#ifndef __VPORT_H  /* change to _VPORT_H */
#define __VPORT_H

#ifdef __cplusplus
extern "C" {
#endif

/* this header file defines common channel object and channel status code */
/* for both capture and display                                           */



#include <std.h>
#include <csl_stdinc.h>
#include <iom.h>

#include <videoport.h>      

/* channel status */
#define _VPORT_READY           4
#define _VPORT_CFGED           2
#define _VPORT_OPENED          1
#define _VPORT_MASK_10BIT      1
#define _VPORT_MASK_RAW        2

#define _VPORT_NUM_EDMA_CHANS  3
#define _VPORT_CHAN_CNT        2

/* channel object */
typedef struct {
    Uns                 status;
    Uns                 portNum;
    Uns                 chanNum;
    Uns                 base;
    Uns                 edmaChanNum[_VPORT_NUM_EDMA_CHANS];
    Uns                 edmaAddr[_VPORT_NUM_EDMA_CHANS];
    Uns                 vIntMask;
    FVID_Frame          viops[VPORT_MAX_NUM_FRMBUFS];
    QUE_Elem            qIn;
    QUE_Elem            qOut;        
    QUE_Elem            qPullDown;
    EDMA_Handle         hEdma[_VPORT_NUM_EDMA_CHANS];
    EDMA_Handle         hRld[_VPORT_NUM_EDMA_CHANS*4];
    Int                 tcc[3]; 
    Bool                mergeFlds;
    Bool                interlaced;
    IOM_TiomCallback    cbFxn;
    Arg                 cbArg;
    VPORT_IntCallBack   vIntFxn;
    volatile Bool       queEmpty;
    Bool                scale;
    Bool                resmpl;
    Uns                 yPitch;
    Uns                 cPitch;
    Uns                 numLines;
    Uns                 numPixels;
    Uns                 numLinesFld1;
    Uns                 numFrms;
    Uns                 numEvents;
    Uns                 numEventsFld1;
    Uns                 yThrld;
    Uns                 cThrld;
    FVID_Frame          *curViop;
    FVID_Frame          *nextViop;   
    
    FVID_Frame          *mrViop;      
    Int                 mode;
    EDC_Fxns           *edcFxns;
    Ptr                 edcHandle;
    IOM_Packet         *packetIOM;
    Int                 vIntCbArg;   
    Int                 segId;    
    Int                 bufSz;       
    Int                 lastLineNum;       
    Int                 nextEDMARlds;
    Int                 numTotalLinesFld1;
    Bool                autoSyncEnable;      

/* for async mode and 3:2 pull-down support */    
    Bool                asyncModeEnable;
    Int                 pullDownMode;
    Int                 asyncFrameCt;
    Fxn                 asyncCallBackFxn;    
    Int                 frmSz;
    Int                 asyncCbArg; 
    Int                 startFlag;
    
} _VPORT_ChanObj;

typedef struct _VPORT_EDCObj{
    Int8* name;
    EDC_Fxns* fxns;
} _VPORT_EDCObj;



#ifdef __cplusplus
}
#endif

#endif /* __VPORT_H */