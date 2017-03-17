/*
 *  Copyright 2004 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */

#include "vportcap_raw.h"
#include <csl_i2c.h>
#include <csl_edma.h>
#include "ov7725.h"

VPORTCAP_Params EMB_vCapParamsChan = {
	VPORT_MODE_RAW_8BIT,
	VPORT_FLDOP_PROGRESSIVE,     	/* fldOp:3  */   

    VPORT_SCALING_DISABLE, /* scale:1  */   // n/a for raw
    VPORT_RESMPL_DISABLE,  /* resmpl:1 */	// n/a for raw
    VPORTCAP_BPK_10BIT_ZERO_EXTENDED, /*bpk10Bit:2   */

    VPORTCAP_HRST_START_HSYNC,     /*hCtRst:1  */	// n/a for raw
    VPORTCAP_VRST_START_VSYNC,  /*vCtRst:1  */	// n/a for raw
    VPORTCAP_FLDD_DISABLE, /*fldDect:1 */	// n/a for raw
    VPORTCAP_EXC_DISABLE,  /*extCtl:1  */   // n/a for raw
    VPORTCAP_FINV_DISABLE,  /* fldInv:1 */	// n/a for raw
    
    /* Raw Mode Specific Parameters */
    VPORTCAP_SSE_ENABLE,	/*sse*/			// Enable Startup Sync
    0xFFF,					/*vcvblnkp*/	
    
    0,	                  	/*fldXStrt1 */	// Must set to zero for correct operation 
    1,                     	/*fldYStrt1 */  // Must set to one for correct operation 
    0,                  	/*fldXStrt2 */  // Must equal fldXStrt1 for correct operation
    1, 		              	/*fldYStrt2 */	// Must equal fldYStrt2 for correct operation
    
    1279,  					// fill later /*fldXStop1 */ // must subtract 1 for correct operation 
    480,  					// fill later /*fldYStop1 */ // These two parameters are used to set Field 1 stop register
    
    1279,  					// fill later /*fldXStop2 */	// Must equal fldXStop1 for correct operation
    480,  					// fill later /*fldYStop2 */	// Must equal fldYStop1 for correct operation
    
    640 >> 3,    			// fill later
    
    3,                     /*numFrmBufs*/
    128,                   /*alignment */
    VPORT_FLDS_MERGED,  	/*mergeFlds */	
    NULL,                  /*segId     */            
    EDMA_OPT_PRI_HIGH,     /*edmaPri   */
    9                      /* irqId    */
};

VPORT_PortParams EMB_vCapParamsPort = {
    FALSE,                      /*  enableDualChan;                */ 
    VPORT_POLARITY_ACTIVE_HIGH, /* vport control pin 1 polarity    *///HREF(DE/HSYNC) SIGNAL ACTIVE HIGH
    VPORT_POLARITY_ACTIVE_HIGH, /* vport control pin 2 polarity    *///
    VPORT_POLARITY_ACTIVE_HIGH, /* vport control pin 3 polarity    *///VSYNC SIGNAL ACTIVE HIGH
    &OV7725_Fxns,
    INV,
};    
