/*
 *  Copyright 2003 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* "@(#) DDK 1.10.00.23 07-02-03 (ddk-b12)" */
#ifndef _VPORTDIS_H
#define _VPORTDIS_H

#ifdef __cplusplus
extern "C" {
#endif

#include "videoport.h"


#define VPORTDIS_VCTL1_HSYNC      0
#define VPORTDIS_VCTL1_HBLNK      1
#define VPORTDIS_VCTL1_AVID       2
#define VPORTDIS_VCTL1_FLD        3

#define VPORTDIS_VCTL2_VSYNC      0
#define VPORTDIS_VCTL2_VBLNK      1                     
#define VPORTDIS_VCTL2_CSYNC      2                     
#define VPORTDIS_VCTL2_FLD        3                     

#define VPORTDIS_VCTL3_CBLNK      0
#define VPORTDIS_VCTL3_FLD        1

/* In display operation, video port outputs      */
/* HCTL/VCTL/FID signals when exc is disabled    */
/* These signals are inputs to video port when   */
/* exc is enabled.                               */
#define VPORTDIS_EXC_DISABLE       0
#define VPORTDIS_EXC_ENABLE        7

#define VPORTDIS_BPK_10BIT_NORMAL  0
#define VPORTDIS_BPK_10BIT_DENSE   1      

#define VPORTDIS_DEFVAL_DISABLE    0
#define VPORTDIS_DEFVAL_ENABLE     1

#define VPORTDIS_RGBX_DISABLE      0
#define VPORTDIS_RGBX_ENABLE       1


typedef struct {
    Int        dmode;
    Int        fldOp;

    Int        scale;      /* 2x scaling enalbel            */
    Int        resmpl;     /* chrominance resampling enable */
    Int        defValEn;   /* default value enable          */
    Int        bpk10Bit;   /* bit-packing mode              */

    Int        vctl1Config;
    Int        vctl2Config;
    Int        vctl3Config;
    Int        extCtl;

    Uint16     frmHSize;
    Uint16     frmVSize;

    Int16      imgHOffsetFld1;
    Int16      imgVOffsetFld1;
    Uint16     imgHSizeFld1;
    Uint16     imgVSizeFld1;

    Int16      imgHOffsetFld2;
    Int16      imgVOffsetFld2;
    Uint16     imgHSizeFld2;
    Uint16     imgVSizeFld2;

    Uint16     hBlnkStart;
    Uint16     hBlnkStop;

    Uint16     vBlnkXStartFld1;
    Uint16     vBlnkYStartFld1;
    Uint16     vBlnkXStopFld1;
    Uint16     vBlnkYStopFld1;
    
    Uint16     vBlnkXStartFld2;
    Uint16     vBlnkYStartFld2;     
    Uint16     vBlnkXStopFld2;     
    Uint16     vBlnkYStopFld2;     
    
    Uint16     xStartFld1;
    Uint16     yStartFld1;     
    
    Uint16     xStartFld2;     
    Uint16     yStartFld2;  /* delayed or early transition ????*/     
    
    Uint16     hSyncStart;
    Uint16     hSyncStop;
    
    Uint16     vSyncXStartFld1;
    Uint16     vSyncYStartFld1;     
    Uint16     vSyncXStopFld1;     
    Uint16     vSyncYStopFld1;     
    
    Uint16     vSyncXStartFld2;
    Uint16     vSyncYStartFld2;     
    Uint16     vSyncXStopFld2;     
    Uint16     vSyncYStopFld2;     
    
    Uint8      yClipLow;
    Uint8      yClipHigh;
    
    Uint8      cClipLow;
    Uint8      cClipHigh;

    Uint8      yDefVal;
    Uint8      cbDefVal;
    Uint8      crDefVal;

    Int        rgbX;      
    Int        incPix; 
    Uint16     thrld;            

//    Int        numFrmBufs;    
	void*      buf_addr;

    Int        mergeFlds;
    Int        edmaPri;
    Int        irqId;
} VPORTDIS_Params;
                  
typedef struct VPORTDIS_PortParams{
    Bool             dualChanEnable;       /* dual channel mode enable        */
    int              vclk1Polarity;    /* vport clock pin 1 polarity    */
    Uns              vc1Polarity;    /* vport control pin 1 polarity    */
    Uns              vc2Polarity;    /* vport control pin 2 polarity    */
    Uns              vc3Polarity;    /* vport control pin 3 polarity    */
    EDC_Fxns*        edcTbl[2];      /* function tables for edc modules */
    unsigned int 	 pin_cfg;		
} VPORTDIS_PortParams;
                         
extern IOM_Fxns VPORTDIS_Fxns;

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif /* _VPORTDIS_H */
