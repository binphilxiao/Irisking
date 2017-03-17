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
#include "..\..\include\tvp51xx.h"
#include <csl_edma.h>
#include "..\..\include\vcapparams.h"
#include "..\..\include\CapParamsSDTVDefault.h"

#if 1
VPORTCAP_Params EMB_vCapParamsChan = EMB_CAP_PARAMS_CHAN_EMBEDDED_DEFAULT(NTSC640);

VPORT_PortParams EMB_vCapParamsPort = EMB_CAP_PARAMS_PORT_EMBEDDED_DEFAULT;

TVP51XX_ConfParams EMB_vCapParamsTVP51XX = EMB_CAP_PARAMS_TVP51XX_EMBEDDED_DEFAULT(NTSCSqp, COMPOSITE, 1);

#else

VPORTCAP_Params EMB_vCapParamsChan = EMB_CAP_PARAMS_CHAN_EXTERNAL_DEFAULT(NTSC640);

VPORT_PortParams EMB_vCapParamsPort = EMB_CAP_PARAMS_PORT_EXTERNAL_DEFAULT;

TVP51XX_ConfParams EMB_vCapParamsTVP51XX = EMB_CAP_PARAMS_TVP51XX_EXTERNAL_DEFAULT(NTSC601, COMPOSITE, 0);

#endif
