/*
 *  Copyright 2004 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* August 2004 */

#ifndef _VPORTCAP_H
#define _VPORTCAP_H

#ifdef __cplusplus
extern "C" {
#endif
#include "videoport.h"

/********************************************************/
/* video port capture fiedl inverse enable              */
/********************************************************/
/* select whether detected field needs to be inverted   */
/* this is only used when exc is enabled and line       */
/* counter is reseted at the start of vertical blanking */
/* period and when FID signal is toggled during the     */
/* vertical blanking period, e.g., in NTSC              */
#define   VPORTCAP_FINV_DISABLE       0x0
#define   VPORTCAP_FINV_ENABLE        0x1

/***********************************************/
/* video port capture line counter reset mode  */
/***********************************************/
/* line counter reset at the start of vertical */ 
/* blank period EAV when exc is disabled.      */
/* Or at the active edge of the vertical       */
/* control signal when exc is enabled          */
#define   VPORTCAP_VRST_START_VBLK       0x0 
#define   VPORTCAP_VRST_START_VSYNC      0x0            
#define   VPORTCAP_VRST_EAV_V1           0x0

/* line counter reset at the end of vertical   */
/* blank period EAV   when exc is disabled.    */
/* Or at the inative edge of the vertical      */
/* control signal when exc is disabled         */
#define   VPORTCAP_VRST_END_VBLK         0x1 
#define   VPORTCAP_VRST_END_VSYNC        0x1 
#define   VPORTCAP_VRST_EAV_V0           0x1


/***********************************************/
/* video port capture pixel counter reset mode */
/***********************************************/
/* line counter reset at the start of horizontal blank period */
#define   VPORTCAP_HRST_EAV         0x0 
#define   VPORTCAP_HRST_START_HBLK  0x0
#define   VPORTCAP_HRST_START_HSYNC 0x0 

/* line counter reset at the end of horizontal blank period */
#define   VPORTCAP_HRST_SAV         0x1 
#define   VPORTCAP_HRST_END_HBLK    0x1
#define   VPORTCAP_HRST_END_HSYNC   0x1 

/***********************************************/
/* video port capture field detect method      */
/***********************************************/
/* used only when exc is enabled               */
/* field detect logic off, using EAV or FID    */
/* input for field detection                   */
#define   VPORTCAP_FLDD_DISABLE       0x0  
/* field detect logic on */
#define   VPORTCAP_FLDD_ENABLE        0x1  

/* video port capture external control enable    */
/* In capture operation, embedded EAV/SAV code   */
/* is used when exc disabled. And HCTL/VCTL/FID  */
/* is used when it is enabled                    */
/* This mode is for some legacy video decoders   */
/* that don't insert embedded EAV/SAV code       */

#define   VPORTCAP_EXC_DISABLE       0x0
#define   VPORTCAP_EXC_ENABLE        0x1          

/* VPORT capture 10-Bit mode Bit Packing format */
#define    VPORTCAP_BPK_10BIT_ZERO_EXTENDED 0x0
#define    VPORTCAP_BPK_10BIT_SIGN_EXTENDED 0x1
#define    VPORTCAP_BPK_10BIT_DENSE         0x2

#define VPORTCAP_SSE_ENABLE   0x1
#define VPORTCAP_SSE_DISABLE  0x0

/* The parameter structure below is for BT656 and Y/C capture mode only */
typedef struct {
    Int  cmode;    /* capture mode settings   */  
    Int  fldOp;    /* field & frame operation */
    
    /* bit 8-15 */
    Int  scale;    /* indicate whether to enable 1/2 scaling */
    Int  resmpl;   /* indicate whether to enable choroma     */
                   /* sub-sampling                           */
    Int  bpk10Bit; /* 10-bit bit-pack mode                   */

    /* bit 16-23 */
    Int  hCtRst;   /* horizontal counter reset mode            */         
    Int  vCtRst;   /* vertical counter reset mode              */
    Int  fldDect;  /* enable whether to use FID input or field */
                      /* detection logic based on the timing      */
                      /* relation of hsync and vsync              */
    Int  extCtl;   /* enable external timing control           */
    Int  fldInv;   /* enable inversion of the detected fid     */    
    
    Uint16 fldXStrt1;  /* field 1 X start */
    Uint16 fldYStrt1;  /* field 1 Y start */
    Uint16 fldXStrt2;  /* field 2 X start */
    Uint16 fldYStrt2;  /* field 2 Y start */
    Uint16 fldXStop1;  /* field 1 X stop  */    
    Uint16 fldYStop1;  /* field 1 Y stop  */
    Uint16 fldXStop2;  /* field 2 X stop  */
    Uint16 fldYStop2;  /* field 2 Y stop  */
    Uint16 thrld;      /* video FIFO threshold */

    /* frame buffer settings */
    Int   numFrmBufs; /* number of frame buffers that the driver allocates */
    Int   alignment;  /* frame buffer alignment */
    Int   mergeFlds;  /* indicate to interleave data of the two fields in memory */
                               /* or just store them seperated */
    Int   segId;      /* memory segment ID, used by MEM_alloc() to allocate */
                               /* video frame buffer */       
    /* EDMA priority */
    Int   edmaPri;    /* channel EDMA priority */

    Int   irqId;    
    
    Bool  autoSyncEnable;                               
} VPORTCAP_Params;


/* The parameter structure below is for raw capture mode only */
typedef struct {
    Int  cmode;        /* capture mode settings   */  
    Bool startupSyncEnable; /* SSE */
    Uint16 blankperiod;     /* minimum time for capen signal to stay inactive */
                            /* before interpret it as vertical blanking       */
                            /* only used when SSE is set                      */
    Uint16 lineSz;          /* number of pixels per line                      */
    Uint16 numLines;        /* number of lines per frame                      */

    Uint16 thrld;           /* video FIFO threshold */

    Int  bpk10Bit;          /* 10-bit bit-pack mode                   */
    
    /* frame buffer settings */
    Int   numFrmBufs;       /* number of frame buffers that the driver allocates */
    Int   alignment;        /* frame buffer alignment */
                            /* or just store them seperated */
    Int   segId;            /* memory segment ID, used by MEM_alloc() to allocate */
                            /* video frame buffer */       
    /* EDMA priority */
    Int   edmaPri;          /* channel EDMA priority */

    Int   irqId;            /* interrupt channel number assignment */
} VPORTCAP_ParamsRaw;


extern IOM_Fxns VPORTCAP_Fxns;

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif /* _VPORTCAP_H */
