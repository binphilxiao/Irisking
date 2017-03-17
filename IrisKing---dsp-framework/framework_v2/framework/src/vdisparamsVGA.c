/*
 *  Copyright 2003 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* "@(#) DDK 1.10.00.21 06-26-03 (ddk-b10)" */
#include "..\..\include\vportdis_fb.h"
#include <csl_edma.h>

#define LINE_SZ   640
#define NUM_LINES 480

//char vdis_buf[2*LINE_SZ*NUM_LINES];
#define VGA_FRAMEBUFFER	((void*)0x80000000)

VPORTDIS_Params EMB_vDisParamsChan = {
    VPORT_MODE_RAW_16BIT, /* dmode:3       */
    VPORT_FLDOP_PROGRESSIVE,/* fldOp:3       */

    VPORT_SCALING_DISABLE,     /* scale:1       */    
    VPORT_RESMPL_DISABLE,      /* resmpl:1      */      
    VPORTDIS_DEFVAL_ENABLE,    /* defValEn:1    */
    VPORTDIS_BPK_10BIT_NORMAL, /*bpk10Bit:1 */
    
    VPORTDIS_VCTL1_AVID,  /* vctl1Config:2 */
    VPORTDIS_VCTL2_VSYNC,  /* vctl2Config:2 */
    VPORTDIS_VCTL3_FLD,  /* vctl3Config:1 */
    VPORTDIS_EXC_DISABLE,  /* extCtl:3      */
               
    800,                   /* frmHSize */
    525,                   /* frmVSize */

    0,                     /* imgHOffsetFld1 */
    0,                     /* imgVOffsetFld1 */
    LINE_SZ,               /* imgHSizeFld1   */
    NUM_LINES,             /* imgVSizeFld1   */
    
    0,                     /* imgHOffsetFld2 */
    0,                     /* imgVOffsetFld2 */
    0,                     /* imgHSizeFld2   */
    0,                     /* imgVSizeFld2   */

    640,                   /* hBlnkStart      */                    
    0,                     /* hBlnkStop       */                    
    
    0,                     /* vBlnkXStartFld1 */                    
    1,                     /* vBlnkYStartFld1 */                    
    0,                     /* vBlnkXStopFld1  */                    
    46,                    /* vBlnkYStopFld1  */                    
    
    0,                     /* vBlnkXStartFld2 */                    
    0,                     /* vBlnkYStartFld2 */                    
    0,                     /* vBlnkXStopFld2  */                    
    0,                     /* vBlnkYStopFld2  */                    
    
    0,                     /* xStartFld1 */                         
    1,                     /* yStartFld1 */                         
    
    0,                     /* xStartFld2 */                         
    0,                     /* yStartFld2 */                         

    656-3,                 /* hSyncStart */                         
    752-3,                 /* hSyncStop  */                         

    656-3,                 /* vSyncXStartFld1 */                    
    11,                    /* vSyncYStartFld1 */                    
    656-3,                 /* vSyncXStopFld1  */                    
    13,                    /* vSyncYStopFld1  */                    

    0,                     /* vSyncXStartFld2 */                    
    0,                     /* vSyncYStartFld2 */                    
    0,                     /* vSyncXStopFld2  */                    
    0,                     /* vSyncYStopFld2  */                    

    0x10,                   /* yClipLow        */                    
    0xf0,                   /* yClipHigh       */                    
    
    0x10,                   /* cClipLow        */                    
    0xf0,                   /* cClipHigh       */                    
    
    0x0,                    /*VPDIS_DefVal     */                    
    0x0,
    0x0,


    VPORTDIS_RGBX_DISABLE,  /*rawPk_3_4 disable raw 3/4 packing for RGB output*/
    1,                     /* incPix, for raw mode only */          
    (LINE_SZ>>3),          /*thrld     */

    VGA_FRAMEBUFFER,              /*numFrmBufs*/
    VPORT_FLDS_MERGED,     /*mergeFlds */
    EDMA_OPT_PRI_HIGH,     /*edmaPri   */
    8                      /* irqId    */    
};

VPORTDIS_PortParams EMB_vDisParamsPort = {
    FALSE,                      /*  enableDualChan;     */
    1, 
    VPORT_POLARITY_ACTIVE_HIGH, /* vport control pin 1 polarity    */
    VPORT_POLARITY_ACTIVE_HIGH, /* vport control pin 2 polarity    */
    VPORT_POLARITY_ACTIVE_HIGH, /* vport control pin 3 polarity    */
	INV,
    INV,
	0x365,		/* 0~3 sck, 4~7 sda, 8~11 ctrl*/ /* new board, 20071023	*/
//	0x056,		/* 0~3 sck, 4~7 sda, 8~11 ctrl*/ /* old board			*/

};    
