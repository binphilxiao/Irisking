/*
 *  Copyright 2004 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* August 2004 */

#ifndef EVMDM642_CAPPARAMSDEFAULT_
#define EVMDM642_CAPPARAMSDEFAULT_

#include <csl_edma.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NTSC720_LINE_SZ               720
#define NTSC720_NUM_LINES_PER_FLD     (480>>1)

#define NTSC640_LINE_SZ            640
#define NTSC640_NUM_LINES_PER_FLD  (480>>1)

#define PAL720_LINE_SZ                720
#define PAL720_NUM_LINES_PER_FLD      (576>>1)     

#define PAL768_LINE_SZ             768
#define PAL768_NUM_LINES_PER_FLD   (576>>1)     

                                   
#define QVGA_LINE_SZ               320
#define QVGA_NUM_LINES_PER_FLD     (240>>1)

#define SIF_LINE_SZ                352
#define SIF_NUM_LINES_PER_FLD      (240>>1)

#define CIF_LINE_SZ                352
#define CIF_NUM_LINES_PER_FLD      (288>>1)

#define QCIF_LINE_SZ               176
#define QCIF_NUM_LINES_PER_FLD     (144>>1)

#define SQCIF_LINE_SZ              128
#define SQCIF_NUM_LINES_PER_FLD    (96>>1) 
                                          
/* this can be defined by user and can be modified to any size */
/* as long as it is supported by the decoder                   */

#define USER_LINE_SZ              352
#define USER_NUM_LINES_PER_FLD    (240>>1) 
#define USER_INTERLACED           FALSE

                                          
#define NTSC720_YSTRT                10
#define PAL720_YSTRT                 20                                          

#define NTSC640_YSTRT                20
#define X_OFFSET					0

#define EMB_CAP_PARAMS_PORT_EXTERNAL_DEFAULT {    \
    FALSE,                      /*  enableDualChan;                */  \
    VPORT_POLARITY_ACTIVE_LOW, /* vport control pin 1 polarity    */  \
    VPORT_POLARITY_ACTIVE_LOW, /* vport control pin 2 polarity    */  \
    VPORT_POLARITY_ACTIVE_HIGH, /* vport control pin 3 polarity    */  \
    &TVP51XX_Fxns,                                                     \
    INV,                                                               \
}

#define EMB_CAP_PARAMS_PORT_EMBEDDED_DEFAULT {    \
    FALSE,                      /*  enableDualChan;                */  \
    VPORT_POLARITY_ACTIVE_HIGH, /* vport control pin 1 polarity    */  \
    VPORT_POLARITY_ACTIVE_HIGH, /* vport control pin 2 polarity    */  \
    VPORT_POLARITY_ACTIVE_HIGH, /* vport control pin 3 polarity    */  \
    &TVP51XX_Fxns,                                                     \
    INV,                                                               \
}

                                                                      
#define EMB_CAP_PARAMS_CHAN_EXTERNAL_DEFAULT(MOD){            \
    VPORT_MODE_BT656_8BIT, /* cmode:3  */             \
    VPORT_FLDOP_FRAME,     /* fldOp:3  */             \
    VPORT_SCALING_DISABLE, /* scale:1  */             \
    VPORT_RESMPL_DISABLE,  /* resmpl:1 */             \
    VPORTCAP_BPK_10BIT_ZERO_EXTENDED, /*bpk10Bit:2 */ \
    VPORTCAP_HRST_END_HBLK,  /*hCtRst:1  */           \
    VPORTCAP_VRST_END_VBLK, /*vCtRst:1  */           \
    VPORTCAP_FLDD_DISABLE, /*fldDect:1 */             \
    VPORTCAP_EXC_ENABLE,   /* fldInv:1 */             \
    VPORTCAP_FINV_ENABLE,  /* fldInv:1 */            \
    X_OFFSET,              /*fldXStrt1 */             \
    ##MOD##_YSTRT,        /*fldYStrt1 */              \
    X_OFFSET,             /*fldXStrt2 */             \
    ##MOD##_YSTRT,        /*fldYStrt2 */              \
    ##MOD##_LINE_SZ-1 + X_OFFSET,     /*fldXStop1 */             \
    (##MOD##_NUM_LINES_PER_FLD + ##MOD##_YSTRT ), /*fldYStop1 */  \
    ##MOD##_LINE_SZ-1 + X_OFFSET,     /*fldXStop2 */             \
    (##MOD##_NUM_LINES_PER_FLD + ##MOD##_YSTRT ),/*fldYStop2 */   \
    (##MOD##_LINE_SZ>>3),  /*thrld     */             \
    3,                     /*numFrmBufs*/             \
    128,                   /*alignment */             \
    VPORT_FLDS_MERGED,     /*mergeFlds */             \
    NULL,                  /*segId     */             \
    EDMA_OPT_PRI_HIGH,     /*edmaPri   */             \
    8,                     /* irqId    */             \
    1                                                 \
}                                                     


#define EMB_CAP_PARAMS_CHAN_EMBEDDED_DEFAULT(MOD){   \
    VPORT_MODE_BT656_8BIT, /* cmode:3  */             \
    VPORT_FLDOP_FRAME,     /* fldOp:3  */             \
    VPORT_SCALING_DISABLE, /* scale:1  */             \
    VPORT_RESMPL_DISABLE,  /* resmpl:1 */             \
    VPORTCAP_BPK_10BIT_ZERO_EXTENDED, /*bpk10Bit:2 */ \
    VPORTCAP_HRST_SAV,     /*hCtRst:1  */             \
    VPORTCAP_VRST_EAV_V0,  /*vCtRst:1  */             \
    VPORTCAP_FLDD_DISABLE, /*fldDect:1 */             \
    VPORTCAP_EXC_DISABLE,  /* fldInv:1 */            \
    VPORTCAP_FINV_DISABLE,  /* fldInv:1 */             \
    0,                     /*fldXStrt1 */             \
    3,                     /*fldYStrt1 */             \
    0,                     /*fldXStrt2 */             \
    3,                     /*fldYStrt2 */             \
    ##MOD##_LINE_SZ-1,     /*fldXStrt1 */             \
    ##MOD##_NUM_LINES_PER_FLD+2,     /*fldYStop1 */ \
    ##MOD##_LINE_SZ-1,     /*fldXStop2 */             \
    ##MOD##_NUM_LINES_PER_FLD+2,     /*fldYStop2 */ \
    (##MOD##_LINE_SZ>>3),  /*thrld     */             \
    3,                     /*numFrmBufs*/             \
    128,                   /*alignment */             \
    VPORT_FLDS_MERGED,     /*mergeFlds */             \
    NULL,                  /*segId     */             \
    EDMA_OPT_PRI_HIGH,     /*edmaPri   */             \
    8,                     /* irqId    */             \
    1                                                 \
}                                                     

#define EMB_CAP_PARAMS_TVP51XX_EMBEDDED_DEFAULT(mode, aFmt, port) \
{                                                         \
  TVP51XX_MODE_##mode##,                                \
  TVP51XX_AFMT_##aFmt##,                                  \
  TRUE,                                                   \
  port,                                                   \
  INV,                                                    \
}    

#define EMB_CAP_PARAMS_TVP51XX_EXTERNAL_DEFAULT(mode, aFmt, port) \
{                                                         \
  TVP51XX_MODE_##mode##,                                \
  TVP51XX_AFMT_##aFmt##,                                  \
  FALSE,                                                   \
  port,                                                   \
  INV,                                                    \
}    



#ifdef __cplusplus
}
#endif /* extern "C" */

#endif /* EVMDM642_CAPPARAMSDEFAULT_ */
