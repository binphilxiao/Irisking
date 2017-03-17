/*
 *  Copyright 2003 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* "@(#) DDK 1.10.00.21 06-26-03 (ddk-b10)" */
/* NTSC capture parameters using external h-sync, v-sync and fid */
#include "..\..\include\videoport.h"
#include "..\..\include\vportcap.h"
//#include "..\..\include\tvp51xx.h"
#include <csl_edma.h>
#include "..\..\include\vcapparams.h"
#include "..\..\include\CapParamsSDTVDefault.h"

extern EDC_Fxns OV7725_Fxns;

//VPORTCAP_Params EMB_vCapParamsChan = EMB_CAP_PARAMS_CHAN_EMBEDDED_DEFAULT(NTSC640);
VPORTCAP_Params EMB_vCapParamsChan ={   \
    VPORT_MODE_BT656_8BIT, /* cmode:3  */             \
    VPORT_FLDOP_PROGRESSIVE,     /* fldOp:3  */             \
    VPORT_SCALING_DISABLE, /* scale:1  */             \
    VPORT_RESMPL_DISABLE,  /* resmpl:1 */             \
    VPORTCAP_BPK_10BIT_ZERO_EXTENDED, /*bpk10Bit:2 */ \
    VPORTCAP_HRST_START_HSYNC,     /*hCtRst:1  */             \
    VPORTCAP_VRST_START_VSYNC,  /*vCtRst:1  */             \
    VPORTCAP_FLDD_DISABLE, /*fldDect:1 */             \
    VPORTCAP_EXC_ENABLE,  /* fldInv:1 */            \
    VPORTCAP_FINV_DISABLE,  /* fldInv:1 */             \
    0,                     /*fldXStrt1 */             \
    1,                     /*fldYStrt1 */             \
    0,                     /*fldXStrt2 */             \
    1,                     /*fldYStrt2 */             \
    639,     /*fldXStrt1 */             \
    480,     /*fldYStop1 */ \
    639,     /*fldXStop2 */             \
    480,     /*fldYStop2 */ \
    (640>>3),  /*thrld     */             \
    3,                     /*numFrmBufs*/             \
    128,                   /*alignment */             \
    VPORT_FLDS_MERGED,     /*mergeFlds */             \
    NULL,                  /*segId     */             \
    EDMA_OPT_PRI_HIGH,     /*edmaPri   */             \
    8,                     /* irqId    */             \
    1                                                 \
};

VPORT_PortParams EMB_vCapParamsPort = {    \
    FALSE,                      /*  enableDualChan;                */  \
    VPORT_POLARITY_ACTIVE_HIGH, /* vport control pin 1 polarity    */  \
    VPORT_POLARITY_ACTIVE_HIGH, /* vport control pin 2 polarity    */  \
    VPORT_POLARITY_ACTIVE_HIGH, /* vport control pin 3 polarity    */  \
    &OV7725_Fxns,                                                     \
    INV,                                                               \
};





