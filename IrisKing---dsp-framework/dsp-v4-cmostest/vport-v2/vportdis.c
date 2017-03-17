/*
 *  Copyright 2003 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* "@(#) DDK 1.10.00.23 07-02-03 (ddk-b12)" */
/* DSP/BIOS standard include files */
/* modified by pred to accomodate single buffer application*/
#include <std.h>
#include <mem.h>
#include <que.h>    
#include <tsk.h>

/* Chip-support library include files */
#include <csl.h>
#include <csl_edma.h>
#include <csl_vphal.h>         
#include <csl_irq.h>
#include <csl_cache.h>
#include <csl_dat.h>

/* IOM/GIO driver model include files */
#include <iom.h>
#include <fvid.h>                       

/* video driver specif-ic include files */
#include <videoport.h>
#include "..\include\vportdis_fb.h"
#include <edc.h>
#include "_vport_dis.h"

/* debug include files */
/* to minimize code size and cycle count overhead of the driver */             
/* error checking is only performed at debug time               */
#include <assert.h>


/* mini-driver API functions */
static Int mdBindDev(Ptr *devp, Int devid, Ptr devParams);
static Int mdControlChan(Ptr chanp, Uns cmd, Ptr args);
static Int mdCreateChan(Ptr *chanp, Ptr devp, String name, Int mode,
        Ptr chanParams, IOM_TiomCallback cbFxn, Ptr cbArg);
static Int mdDeleteChan(Ptr chanp);
static Int mdSubmitChan(Ptr chanp, IOM_Packet *packet);


/* local functions */
static Int _configChan(Ptr chanp, Ptr args);
static Int _configEDMA(Ptr chanp, VPORTDIS_Params *params);
static Int _configPort(Ptr chanp, Ptr args);
static Int _configRegs(Ptr chanp, VPORTDIS_Params *params);
//static void displayEdmaISR(Int tcc);
static void displayISR(int portNum);
static Int _displayStart(Ptr chanp);
static Int _displayStop(Ptr chanp);
static Int _dundRecover(Ptr chanp);
static Int _getlastActiveLine(VPORTDIS_Params* params);
static Int _setVIntCb(Ptr chanp, Ptr args);


/* global and static variables */
IOM_Fxns VPORTDIS_Fxns = {
    mdBindDev,    
    (IOM_TmdUnBindDev)IOM_mdNotImpl,
    mdControlChan,
    mdCreateChan,
    mdDeleteChan,
    mdSubmitChan
};

/**************************************************************
 * Static allocation and initialization of port objects       *
 * as display supports only 1 channel, the same channel       *
 * object for capture is used here for the whoel port         *
 **************************************************************/
_VPORT_ChanObj chanObjs[_VP_PORT_CNT] = {
    {0, 0, 0, _VP_BASE_PORT0, EDMA_CHA_VP0EVTYA, EDMA_CHA_VP0EVTUA, 
        EDMA_CHA_VP0EVTVA, _VP_YDSTA0_ADDR, _VP_CBDST0_ADDR, _VP_CRDST0_ADDR}, 
    {0, 1, 0, _VP_BASE_PORT1, EDMA_CHA_VP1EVTYA, EDMA_CHA_VP1EVTUA, 
        EDMA_CHA_VP1EVTVA,  _VP_YDSTA1_ADDR, _VP_CBDST1_ADDR, _VP_CRDST1_ADDR}, 
    {0, 2, 0, _VP_BASE_PORT2, EDMA_CHA_VP2EVTYA, EDMA_CHA_VP2EVTUA, 
        EDMA_CHA_VP2EVTVA, _VP_YDSTA2_ADDR, _VP_CBDST2_ADDR, _VP_CRDST2_ADDR },
};     



/*
 *  ======== mdBindDev ========
 *  Register all external devices to video port display driver 
 */
static Int mdBindDev(Ptr *devp, Int devid, Ptr devParams)
{
   Int portNum = devid;
   volatile Int i;
   volatile Int* base = (volatile Int *)chanObjs[portNum].base;

    VPORTDIS_PortParams* portParams = (VPORTDIS_PortParams*)devParams; 
	
	set_i2c_pin(portParams->pin_cfg);
	C0104_verify();
   
   assert(portNum < _VP_PORT_CNT);
   base[_VP_VPCTL_OFFSET] = 
             VP_VPCTL_VPRST_RESET << _VP_VPCTL_VPRST_SHIFT;
   for(i = 0; i < 100000; i ++);      
    *devp = &chanObjs[portNum];                                                                                           
   return mdControlChan(&chanObjs[portNum], 
           VPORT_CMD_CONFIG_PORT, devParams);
}


/*
 *  ======== mdControlChan ========
 */
static Int mdControlChan(Ptr chanp, Uns cmd, Ptr args)
{
    Int retVal = IOM_COMPLETED;
    _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;
    
    /* command dispatcher */
    switch (cmd){
    case VPORT_CMD_START:
        retVal = _displayStart(chanp);
        break;
    case VPORT_CMD_STOP:
        retVal = _displayStop(chanp);
        break;
    case VPORT_CMD_CONFIG_CHAN:
        retVal = _configChan(chanp, args);
        break;
        
    case VPORT_CMD_SET_VINTCB:
        _setVIntCb(chanp, args);
        break;
    case VPORT_CMD_DUND_RECOVER:
        retVal = _dundRecover(chanp);
        break;
    case VPORT_CMD_CONFIG_PORT:
        retVal = _configPort(chanp, args);
        break;
    default:
        if(chan->edcFxns!=INV) {
            retVal =  chan->edcFxns->ctrl(chan->edcHandle, 
                cmd-VPORT_CMD_EDC_BASE,(Arg)args);
        }else {
            retVal = IOM_ENOTIMPL;
        }
   }    
   return retVal;
}              


/*
 *  ======== mdCreateChan ========
 *  create a channel
 */
static Int  mdCreateChan(Ptr *chanp, Ptr devp, String name, Int mode,
              Ptr chanParams, IOM_TiomCallback cbFxn, Ptr cbArg)
{
    _VPORT_ChanObj* chan;
    Int retVal = IOM_COMPLETED;   
    Int j;     

    if(mode != IOM_OUTPUT){
        return IOM_EBADARGS;
    }
    
    chan = (_VPORT_ChanObj *)devp;
    if(chan->edcFxns != INV) {
        /* open external device */
        chan->edcHandle 
           = chan->edcFxns->open(name, (Arg)INV);
    } 
    if(! (chan->status & _VPORT_OPENED)) {
        chan->status |= _VPORT_OPENED;
        
        chan->vIntMask = 0;
        chan->cbFxn = cbFxn;
        chan->vIntFxn = (VPORT_IntCallBack)INV;
        chan->cbArg = (Arg)cbArg;
        chan->packetIOM = INV;     
        chan->vIntCbArg = (Int)INV;        
        chan->bufSz = 0;

        /* allocate EDMA PaRAM and RLD entries */
        for(j = 0; j < _VPORT_NUM_EDMA_CHANS 
          && retVal == IOM_COMPLETED; j ++ ) {
            if((chan->hEdma[j] = 
             EDMA_open(chan->edmaChanNum[j], EDMA_OPEN_RESET)) == EDMA_HINV
             || (chan->hRld[4 * j] = EDMA_allocTable(-1)) == EDMA_HINV 
             || (chan->hRld[4 * j + 1] =EDMA_allocTable(-1)) == EDMA_HINV 
             || (chan->hRld[4 * j + 2] =EDMA_allocTable(-1)) == EDMA_HINV 
             || (chan->hRld[4 * j + 3] =EDMA_allocTable(-1)) == EDMA_HINV 
             ||  (chan->tcc[j] = EDMA_intAlloc(chan->edmaChanNum[j])) == -1){
                retVal = IOM_EALLOC;
                retVal = IOM_EALLOC;
            }/* if((chan->...*/ 
        }/* for(j = 0; j < NUM_EDMA_CHANS; j++) {...*/
        
        /* if EDMA resources are allocated successfully, go ahead */
        /* and configure the channel                              */
        if(retVal == IOM_COMPLETED && (void *)chanParams != INV) {
            retVal = mdControlChan(chan, VPORT_CMD_CONFIG_CHAN, chanParams); 
        }
        if(! retVal) {
             /* configured the channel successfully, return handle */
             *chanp = chan;
        }else {
            /* failed, free all resources and return error */
            mdDeleteChan(chan);
            *chanp = INV;
        }               
    } /*if(!chan->opened) */
    return retVal;
}               

/*
 *  ======== mdDeleteChan ========
 *  delete the channel
 */

static Int  mdDeleteChan(Ptr chanp)
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;
    Int j;
    volatile Int* base;
    
    if(chan->status & _VPORT_OPENED) {
        chan->status = 0;
        mdControlChan(chanp, VPORT_CMD_STOP, NULL);
        for(j = 0; j < _VPORT_NUM_EDMA_CHANS; j ++) {
            EDMA_disableChannel(chan->hEdma[j]);
            EDMA_clearChannel(chan->hEdma[j]);
            EDMA_close(chan->hEdma[j]);
            EDMA_freeTable(chan->hRld[4 * j]);
            EDMA_freeTable(chan->hRld[4 * j + 1]);
            EDMA_freeTable(chan->hRld[4 * j + 2]);
            EDMA_freeTable(chan->hRld[4 * j + 3]);
            EDMA_intFree(chan->tcc[j]);
        }      
        
        base = (volatile Int *)chan->base;
        /* reset display */
        base[_VP_VDCTL_OFFSET] |= VP_VDCTL_RSTCH_RESET << _VP_VDCTL_RSTCH_SHIFT;
        /* reset video port */
        base[_VP_VPCTL_OFFSET] |= VP_VPCTL_VPRST_RESET << _VP_VPCTL_VPRST_SHIFT;
        
        chan->status = 0;
        /* close external device */
        if(chan->edcFxns != INV) {
            chan->edcFxns->close(chan->edcHandle);
        }
        
    }    
    return IOM_COMPLETED;
}


/*
 *  ======== mdSubmitChan ========
 */
static Int  mdSubmitChan(Ptr chanp, IOM_Packet *packet)
{
    return IOM_ENOTIMPL;    
}


/*
 *  ========  _configChan ========
 */
static Int _configChan(Ptr chanp, Ptr args)
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;
    VPORTDIS_Params*   params = (VPORTDIS_Params* )args; 
    Int retVal;           
    
    
    if(!(chan->status & _VPORT_CFGED)) {
        chan->lastLineNum = _getlastActiveLine(params);
        /* configure video port channel A/B control register */
        _configRegs(chanp, params);
        /* configure EDMA and frame buffer */
        retVal = _configEDMA(chanp, params);
    } else {
        retVal = IOM_EINUSE;
    }    
    return retVal;
}                     

static const Int fillValue[4] = {
0, 0, 0x80808080, 0x80808080
};
/*
 *  ======== _configEDMA ========
 */
static Int _configEDMA(Ptr chanp, VPORTDIS_Params *params)
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;
    Int i;
    Int j;               
    EDMA_Config  cfgEdma;
    Int thrld;
    Int edmaChans;
    Int8* curAddr;
    Bool success;
	FVID_Frame frm1;
    
    if(chan->status & _VPORT_CFGED) {
        /* allocate frame buffers */
        chan->bufSz = chan->yPitch * chan->numLines + chan->cPitch * chan->numLines * 2;

		i = 0;
		curAddr = params->buf_addr;

        /* field 1 */
        frm1.frame.iFrm.y1 = curAddr;
        curAddr += chan->numLines * chan->yPitch;

        frm1.frame.iFrm.cb1 = curAddr;
        curAddr += chan->numLines * chan->cPitch;

        frm1.frame.iFrm.cr1 = curAddr;
        curAddr += chan->numLines * chan->cPitch;
        
        CACHE_clean(CACHE_L2, (void *)fillValue, 16);
        success = DAT_open(DAT_CHAANY, DAT_PRI_LOW, 0);          
        
        for( j = 0; j < chan->numLines; j ++) {
            DAT_fill(frm1.frame.iFrm.y1 + j * chan->yPitch, chan->yPitch, (Uint32 *)fillValue);
            DAT_fill(frm1.frame.iFrm.cb1 + j * chan->cPitch, chan->cPitch, (Uint32 *)&fillValue[2]);
            DAT_fill(frm1.frame.iFrm.cr1 + j * chan->cPitch, chan->cPitch, (Uint32 *)&fillValue[2]);
        }
        if(success) {
            DAT_close();
        }
        /* field 2 */
		//mergefield 

        if(params->fldOp == VPORT_FLDOP_FLD2) {
            frm1.frame.iFrm.y2 = frm1.frame.iFrm.y1;
            frm1.frame.iFrm.cb2 = frm1.frame.iFrm.cb1;
            frm1.frame.iFrm.cr2 = frm1.frame.iFrm.cr1;
        } 
        else {
            if(chan->mergeFlds) {
                frm1.frame.iFrm.y2 = frm1.frame.iFrm.y1 + chan->yPitch;
                frm1.frame.iFrm.cb2 = frm1.frame.iFrm.cb1 + chan->cPitch;
                frm1.frame.iFrm.cr2 = frm1.frame.iFrm.cr1 + chan->cPitch;
            }
            else {
                frm1.frame.iFrm.y2 = frm1.frame.iFrm.y1 + (chan->numLinesFld1 * chan->yPitch);
                frm1.frame.iFrm.cb2 = frm1.frame.iFrm.cb1 + (chan->numLinesFld1 * chan->cPitch);
                frm1.frame.iFrm.cr2 = frm1.frame.iFrm.cr1 + (chan->numLinesFld1 * chan->cPitch);            
            }

        }

        CACHE_flush(CACHE_L2ALL, NULL, NULL);

        if(chan->mode & _VPORT_MASK_RAW) 
        	edmaChans = 1;
        else 
        	edmaChans = 3;

        for(i = 0; i < edmaChans; i ++) {
            Int optFld1 = EDMA_OPT_RMK(
                  params->edmaPri,
                  EDMA_OPT_ESIZE_32BIT,
                  EDMA_OPT_2DS_YES, 
                  EDMA_OPT_SUM_INC,
                  EDMA_OPT_2DD_NO,
                  EDMA_OPT_DUM_NONE,
                  EDMA_OPT_TCINT_NO,
                  EDMA_OPT_TCC_OF(0), 
                  EDMA_OPT_TCCM_OF(0),
                  EDMA_OPT_ATCINT_NO,
                  EDMA_OPT_ATCC_DEFAULT,
                  EDMA_OPT_PDTS_DISABLE,
                  EDMA_OPT_PDTD_DISABLE,
                  EDMA_OPT_LINK_YES,
                  EDMA_OPT_FS_NO
            );

            Int optFld2a = EDMA_OPT_RMK(
                  params->edmaPri,
                  EDMA_OPT_ESIZE_32BIT,
                  EDMA_OPT_2DS_YES, 
                  EDMA_OPT_SUM_INC,
                  EDMA_OPT_2DD_NO,
                  EDMA_OPT_DUM_NONE,
//                  (i == 0 ? EDMA_OPT_TCINT_YES:EDMA_OPT_TCINT_NO),
                  EDMA_OPT_TCINT_NO,
                  EDMA_OPT_TCC_OF(i == 0 ? chan->tcc[0] & 0x0f : 0), 
                  EDMA_OPT_TCCM_OF(i == 0 ? chan->tcc[0] >> 4 : 0),
                  EDMA_OPT_ATCINT_NO,
                  EDMA_OPT_ATCC_DEFAULT,
                  EDMA_OPT_PDTS_DISABLE,
                  EDMA_OPT_PDTD_DISABLE,
                  EDMA_OPT_LINK_YES,
                  EDMA_OPT_FS_NO
            );

            Int optFld2b = EDMA_OPT_RMK(
                  params->edmaPri,
                  EDMA_OPT_ESIZE_32BIT,
                  EDMA_OPT_2DS_YES, 
                  EDMA_OPT_SUM_INC,
                  EDMA_OPT_2DD_NO,
                  EDMA_OPT_DUM_NONE,
//                  (i == 0 ? EDMA_OPT_TCINT_YES:EDMA_OPT_TCINT_NO),
                  EDMA_OPT_TCINT_NO,
                  EDMA_OPT_TCC_OF(i == 0 ? chan->tcc[1] & 0x0f : 0), 
                  EDMA_OPT_TCCM_OF(i == 0 ? chan->tcc[1] >> 4 : 0),
                  EDMA_OPT_ATCINT_NO,
                  EDMA_OPT_ATCC_DEFAULT,
                  EDMA_OPT_PDTS_DISABLE,
                  EDMA_OPT_PDTD_DISABLE,
                  EDMA_OPT_LINK_YES,
                  EDMA_OPT_FS_NO
            );

            thrld = (i == 0)? chan->yThrld:chan->cThrld;
            cfgEdma.dst = EDMA_DST_RMK(chan->edmaAddr[i]);

            if(chan->mergeFlds) {
                /* to merge the two fields together */
                /* EDMA is configured to transfer only field 1 initially */
                /* line pitch is twice the line size */
                /* this requires that the threlhold is the same as line size*/

                /* PaRAM and reload Entries */

                /* first field */
                cfgEdma.opt = optFld1;
                cfgEdma.cnt = EDMA_CNT_RMK((chan->numEventsFld1) - 1, (thrld << 1));
                cfgEdma.idx = EDMA_IDX_RMK(thrld << 4, 0);
                /* hard code the field 1 & 2 of the first     */
                /* frame buffer as current and reload buffers */
                cfgEdma.src = EDMA_SRC_RMK(
                    *((Int *)(&frm1.frame.iFrm.y1) + i));
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4*i + 1]);
                EDMA_config(chan->hEdma[i], &cfgEdma);

                //rld 0 -> 1
                EDMA_config(chan->hRld[4 * i], &cfgEdma);

				//rld 2 -> 3
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4*i + 3]);
                EDMA_config(chan->hRld[4 * i + 2], &cfgEdma);
                
                /* second field */
                cfgEdma.opt = optFld2a;

				//rld 1 -> 2
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i + 2]);
                cfgEdma.cnt = EDMA_CNT_RMK((chan->numEvents - chan->numEventsFld1) - 1, (thrld << 1));
                cfgEdma.src = EDMA_SRC_RMK(
                    *((Int *)(&frm1.frame.iFrm.y2) + i));
                EDMA_config(chan->hRld[4 * i + 1], &cfgEdma); 

				//rld 3 -> 0
                cfgEdma.opt = optFld2b;
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4*i]);
                EDMA_config(chan->hRld[4 * i + 3], &cfgEdma);
                
            }else {/* if fields are not merged, configure EDMA to transfer */
                   /* for both field1 and field 2                          */
                   /* the line pitch is just the line size                 */

                cfgEdma.opt = optFld2a;
                cfgEdma.cnt = EDMA_CNT_RMK((chan->numEvents) - 1, (thrld << 1));
                cfgEdma.idx = EDMA_IDX_RMK(thrld << 3, 0);
                /* hard code the first frame buffer as current  */
                /*and reload buffers */
                cfgEdma.src = EDMA_SRC_RMK(
                    *((Int *)(&frm1.frame.iFrm.y1) + i));
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i + 2]);
                EDMA_config(chan->hEdma[i], &cfgEdma);

                cfgEdma.src = EDMA_SRC_RMK(
                    *((Int *)(&frm1.frame.iFrm.y1) + i));
                EDMA_config(chan->hRld[4 * i], &cfgEdma);

                cfgEdma.opt = optFld2b;
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i]);
                EDMA_config(chan->hRld[4 * i + 2], &cfgEdma);
            }
        }
        chan->nextEDMARlds = 1;        
        
        /* enable EDMA channel */        
        if(!(chan->mode & _VPORT_MASK_RAW)) {
            EDMA_disableChannel(chan->hEdma[1]);
            EDMA_clearChannel(chan->hEdma[1]);
            EDMA_enableChannel(chan->hEdma[1]);

            EDMA_disableChannel(chan->hEdma[2]);
            EDMA_clearChannel(chan->hEdma[2]);
            EDMA_enableChannel(chan->hEdma[2]);
        }   
          
        /*
         * The EDMA interrupt dispatcher will be called by the
         * BIOS HWI interrupt dispatcher.
         */

        EDMA_disableChannel(chan->hEdma[0]);
        EDMA_clearChannel(chan->hEdma[0]);
        EDMA_enableChannel(chan->hEdma[0]);

        chan->status |= _VPORT_READY;

//        IRQ_enable(IRQ_EVT_EDMAINT);
    }   
    return IOM_COMPLETED;

}


/*
 *  ======== _configPort ========
 */
static Int _configPort(Ptr chanp, Ptr args)
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;
    VPORTDIS_PortParams* portParams = (VPORTDIS_PortParams*)args; 
    volatile Int* base = (volatile Int *)chan->base;  


    /* reset video port */
    base[_VP_VPCTL_OFFSET] = 
         VP_VPCTL_VPRST_RESET << _VP_VPCTL_VPRST_SHIFT;

    /* enable video port */
    base[_VP_PCR_OFFSET] |= 
         VP_PCR_PEREN_ENABLE << _VP_PCR_PEREN_SHIFT;
            
    base[_VP_VDCTL_OFFSET] = 
         (Int)VP_VDCTL_RSTCH_RESET << _VP_VDCTL_RSTCH_SHIFT;
    

    /* configure video port control register */
    base[_VP_VPCTL_OFFSET] = VP_VPCTL_RMK(0,0,portParams->vclk1Polarity,portParams->vc3Polarity,
        portParams->vc2Polarity,portParams->vc1Polarity,0,1,0);

    /* enable video port */
    base[_VP_VPCTL_OFFSET] |= (VP_VPCTL_VPHLT_CLEAR << _VP_VPCTL_VPHLT_SHIFT);
    chan->edcFxns = portParams->edcTbl[0];
    return IOM_COMPLETED;
}
                     

/*
 *  ======== _configRegs ========
 * configure video port registers for display 
 */
static  Int _configRegs(Ptr chanp, VPORTDIS_Params* params)
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;
    volatile Int* base = (volatile Int *)chan->base;                          
    Int numPixels, numLines, numCPixels;
    Int vdCtl;
    Int nh1 = 0, nh2 = 0, nv1 = 0, nv2 = 0;    
    
    
    if(chan->status & _VPORT_OPENED) {
        /* configure display settings  */
        chan->status |= _VPORT_CFGED;

        vdCtl = VP_VDCTL_RMK(0,1,0,((params->extCtl&4) >> 2),
            ((params->extCtl&2)>>1), params->extCtl&1,params->vctl3Config,
            params->vctl2Config,params->vctl1Config,0, params->bpk10Bit,
            params->rgbX,0,params->defValEn,params->resmpl,
            params->scale, 1,((params->fldOp & 4) >> 2),
            ((params->fldOp & 2) >> 1), 
            (params->fldOp & 1), 
            params->dmode);

        numLines = 0;
        numPixels = 0;
        if(params->fldOp != VPORT_FLDOP_FLD2){
            // progressive scan, or field 1 or frame
            numPixels = params->imgHSizeFld1;
            numLines = params->imgVSizeFld1;
        } 
        chan->numLinesFld1 = numLines;
        if(params->fldOp == VPORT_FLDOP_FLD2 || 
           params->fldOp == VPORT_FLDOP_FRAME){
            if(!numPixels) 
            	numPixels = params->imgHSizeFld2;
            numLines += params->imgVSizeFld2;
        }
        chan->numLines = numLines;

        base[_VP_VDCTL_OFFSET] = vdCtl;

        base[_VP_VDFRMSZ_OFFSET]   = 
            VP_VDFRMSZ_RMK(params->frmVSize, params->frmHSize);
        base[_VP_VDHBLNK_OFFSET]   = 
            VP_VDHBLNK_RMK(params->hBlnkStop, !(params->dmode&_VPORT_MASK_RAW), 
            params->hBlnkStart);
        
        base[_VP_VDVBLKS1_OFFSET]  = 
            VP_VDVBLKS1_RMK(params->vBlnkYStartFld1, params->vBlnkXStartFld1);
        base[_VP_VDVBLKE1_OFFSET]  = 
            VP_VDVBLKE1_RMK(params->vBlnkYStopFld1, params->vBlnkXStopFld1);
        base[_VP_VDVBLKS2_OFFSET]  = 
            VP_VDVBLKS2_RMK(params->vBlnkYStartFld2, params->vBlnkXStartFld2);
        base[_VP_VDVBLKE2_OFFSET]  = 
            VP_VDVBLKE2_RMK(params->vBlnkYStopFld2, params->vBlnkXStopFld2);

        base[_VP_VDVBIT1_OFFSET]   = 
            VP_VDVBIT1_RMK(params->vBlnkYStopFld1, params->vBlnkYStartFld1);
        base[_VP_VDVBIT2_OFFSET] = 
            VP_VDVBIT1_RMK(params->vBlnkYStopFld2, params->vBlnkYStartFld2);
        
        if(params->imgHOffsetFld1<0) {
            nh1 = 1;
            params->imgHOffsetFld1 = -params->imgHOffsetFld1;
        }
        if(params->imgHOffsetFld2<0) {
            nh2 = 1;
            params->imgHOffsetFld2 = -params->imgHOffsetFld2;
        }
        if(params->imgVOffsetFld1<0) {
            nv1 = 1;
            params->imgVOffsetFld1 = -params->imgVOffsetFld1;
        }
        if(params->imgHOffsetFld2<0) {
            nv2 = 1;
            params->imgVOffsetFld2 = -params->imgVOffsetFld2;
        }
        
        base[_VP_VDIMGOFF1_OFFSET] = 
            VP_VDIMGOFF1_RMK(nv1, params->imgVOffsetFld1, nh1, 
            params->imgHOffsetFld1);
        base[_VP_VDIMGSZ1_OFFSET]  = 
            VP_VDIMGSZ1_RMK(params->imgVSizeFld1, params->imgHSizeFld1);
        base[_VP_VDIMGOFF2_OFFSET] = 
            VP_VDIMGOFF2_RMK(nv2, params->imgVOffsetFld2, nh2, 
            params->imgHOffsetFld2);
        base[_VP_VDIMGSZ2_OFFSET]  = 
            VP_VDIMGSZ2_RMK(params->imgVSizeFld2, params->imgHSizeFld2);

        base[_VP_VDFLDT1_OFFSET]   = 
            VP_VDFLDT1_RMK(params->yStartFld1, params->xStartFld1);  
        base[_VP_VDFLDT2_OFFSET]   = 
            VP_VDFLDT2_RMK(params->yStartFld2, params->xStartFld2); 
        base[_VP_VDFBIT_OFFSET]   = 
            VP_VDFBIT_RMK(params->yStartFld2, params->yStartFld1);
        
        base[_VP_VDHSYNC_OFFSET]   = 
            VP_VDHSYNC_RMK(params->hSyncStop, params->hSyncStart);
        base[_VP_VDVSYNS1_OFFSET]  = 
            VP_VDVSYNS1_RMK(params->vSyncYStartFld1, params->vSyncXStartFld1);
        base[_VP_VDVSYNE1_OFFSET]  = 
            VP_VDVSYNE1_RMK(params->vSyncYStopFld1, params->vSyncXStopFld1);  
        base[_VP_VDVSYNS2_OFFSET]  = 
            VP_VDVSYNS2_RMK(params->vSyncYStartFld2, params->vSyncXStartFld2);
        base[_VP_VDVSYNE2_OFFSET]  = 
            VP_VDVSYNE2_RMK(params->vSyncYStopFld2, params->vSyncXStopFld2);  

        base[_VP_VDCLIP_OFFSET]    = 
            VP_VDCLIP_RMK(params->cClipHigh, params->cClipLow,
            params->yClipHigh, params->yClipLow);
        base[_VP_VDDEFVAL_OFFSET]  = params->yDefVal |
           (params->cbDefVal << 16) | (params->crDefVal << 24);
        
        chan->resmpl = params->resmpl;
        chan->scale = params->scale;
        numPixels >>= params->scale;
        chan->numPixels = numPixels;
        numCPixels = (params->dmode & _VPORT_MASK_RAW) ? 0 : numPixels >> 1;
        
        if(params->dmode & _VPORT_MASK_RAW) { /* raw mode */
            chan->cPitch = 0;
            if(params->dmode == VPORT_MODE_RAW_8BIT) {
                chan->yPitch = (numPixels + 7) & (~ 7);
                chan->cPitch = (numCPixels + 7) & (~ 7);
            } else if(params->dmode == VPORT_MODE_RAW_10BIT) {
                if(params->bpk10Bit == VPORTDIS_BPK_10BIT_DENSE){
                    chan->yPitch = (numPixels * 4 / 3 + 7) & (~ 7);
                }else {
                    chan->yPitch = (numPixels * 2 + 7) & (~ 7);
                }
            } else if(params->dmode == VPORT_MODE_RAW_16BIT) {
                chan->yPitch = (numPixels * 2 + 7) & (~ 7);
            } else {
                chan->yPitch = (numPixels * 4 + 7) & (~ 7);
            }                                                                        
        } else {
            if(params->dmode & _VPORT_MASK_10BIT) {
                if(params->bpk10Bit == VPORTDIS_BPK_10BIT_DENSE){
                    chan->yPitch = (numPixels * 4 / 3 + 7) & (~ 7);
                    chan->cPitch = (numCPixels* 4 / 3 + 7) & (~ 7);
                }else {
                    chan->yPitch = (numPixels * 2 + 7) & (~ 7);
                    chan->cPitch = (numCPixels * 2 + 7) & (~ 7);
                }
            } else {/* 8 bit mode */
                chan->yPitch = (numPixels + 7) & (~ 7);
                chan->cPitch = (numCPixels + 7) & (~ 7);
            }
        }
        chan->yThrld = params->thrld;       
        if(params->mergeFlds && params->fldOp == VPORT_FLDOP_FRAME) {
            /* frame capture and merge 2 fields into one frame */
            /* make sure threshold is same as line size */
            chan->yThrld = chan->yPitch >> 3;
            chan->numEventsFld1 = chan->numLinesFld1;
            chan->numEvents = chan->numLines;
            chan->mergeFlds = TRUE;  
        }else {            
            /* these two asserts make sure that total transfer sizes of */
            /* both the whole frame and the first field are multiples   */
            /* of the threshold                                         */
            assert(((chan->yPitch*chan->numLinesFld1)/(chan->yThrld << 3)) 
                *(chan->yThrld << 3) == (chan->yPitch*chan->numLinesFld1));
            assert(((chan->yPitch*chan->numLines)/(chan->yThrld << 3)) 
                *(chan->yThrld << 3) == (chan->yPitch*chan->numLines));
            chan->numEventsFld1 = 
                chan->yPitch * chan->numLinesFld1 / (chan->yThrld << 3);
            chan->numEvents = 
                chan->yPitch * chan->numLines / (chan->yThrld << 3);
            chan->mergeFlds = FALSE;
        }                    
        if(params->dmode & _VPORT_MASK_RAW) {
            chan->cThrld = 0;
        }    
        else {
            chan->cThrld = (chan->yThrld + 1) >> 1;
        }    
        base[_VP_VDTHRLD_OFFSET] = 
            VP_VDTHRLD_RMK(chan->yThrld,params->incPix,chan->yThrld);
        base[_VP_VDDISPEVT_OFFSET] = 
            VP_VDDISPEVT_RMK((chan->numEvents-chan->numEventsFld1), 
            chan->numEventsFld1 );  

        
        chan->mode = params->dmode;
        chan->status |= _VPORT_CFGED;
    }
    return IOM_COMPLETED;

}



/*
 *  ======== displayISR ========
 */
static void displayISR(int portNum)
{
    volatile Int *base =  
        (volatile Int *)chanObjs[portNum].base;
    Int vpis = base[_VP_VPIS_OFFSET];
    Int mask = vpis & chanObjs[portNum].vIntMask;
        
    if(mask && chanObjs[portNum].vIntFxn != INV) {
        chanObjs[portNum].vIntFxn(chanObjs[portNum].cbArg, mask);
    }
    /* clear interrupts that has been handled */
    base[_VP_VPIS_OFFSET] |= vpis;
}  


/*
 *  ======== _displayStart ========
 *  start video display
 */
static Int _displayStart(Ptr chanp)
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;
    volatile Int* base = (volatile Int *)chan->base;  
    volatile Int stat;
    volatile Int i = 0;
                                      
    /* enable port and display */
    base[_VP_VPCTL_OFFSET] |= VP_VPCTL_VPHLT_CLEAR << _VP_VPCTL_VPHLT_SHIFT;
    base[_VP_VDCTL_OFFSET] |= VP_VDCTL_VDEN_ENABLE << _VP_VDCTL_VDEN_SHIFT;
    /* wait for display counters and control signals to sync up */
    do {
        stat = base[_VP_VDSTAT_OFFSET];
        i ++ ;
    }while(!(stat & 0x70000000) && i < 1000000);
    base[_VP_VDSTAT_OFFSET] = stat;
    
    do {
        stat = base[_VP_VDSTAT_OFFSET];
        i ++;
    }while(!(stat & 0x70000000) && i < 1000000);
    base[_VP_VDSTAT_OFFSET] = stat;
    base[_VP_VDCTL_OFFSET] &= ~ (_VP_VDCTL_BLKDIS_MASK);
    /* enable interrupt */
    base[_VP_VPIE_OFFSET] |= VP_VPIE_VIE_ENABLE << _VP_VPIE_VIE_SHIFT;     
    base[_VP_VPIS_OFFSET] |= 0XFFFFFFFF;    
    
//    IRQ_clear(IRQ_EVT_VINT0 + chan->portNum);
    IRQ_enable(IRQ_EVT_VINT0 + chan->portNum);

    return IOM_COMPLETED;
}        


/*
 *  ======== _displayStop ========
 *  stop video display
 */
static Int _displayStop(Ptr chanp)
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;
    volatile Int* base = (volatile Int *)chan->base;    
    
    
    base[_VP_VDCTL_OFFSET] &= ~  (VP_VDCTL_VDEN_ENABLE << _VP_VDCTL_VDEN_SHIFT);
    return IOM_COMPLETED;
}


/*
 *  ======== _dundRecover ========
 *  force recover from display under-run
 */
static Int _dundRecover(Ptr chanp)
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;
    Int i;          
    Int stat;
    Int numEvents;
    volatile Int* base = (volatile Int *)chan->base;  
    
    
    /* disable under run interrupt */
    base[_VP_VPIE_OFFSET] &= ~ (_VP_VPIE_DUND_MASK);
    /* clear any pending under-run interrupt */
    base[_VP_VPIS_OFFSET] &= ~ (_VP_VPIS_DUND_MASK);

     /* block display events */
    base[_VP_VDCTL_OFFSET] |= _VP_VDCTL_BLKDIS_MASK;
    /* Disable the edmas before settings them up */
    if(!(chan->mode & _VPORT_MASK_RAW)){
        EDMA_disableChannel(chan->hEdma[1]);
        EDMA_clearChannel(chan->hEdma[1]);
        EDMA_disableChannel(chan->hEdma[2]);
        EDMA_clearChannel(chan->hEdma[2]);
    }
    EDMA_disableChannel(chan->hEdma[0]);            
    EDMA_clearChannel(chan->hEdma[0]);
    

    if(chan->mergeFlds) {
        numEvents = chan->numEventsFld1;        
    } else {
        numEvents = chan->numEvents;
    }
    /* enable the edma events again before settings them up */
    if(!(chan->mode & _VPORT_MASK_RAW)){
	    EDMA_enableChannel(chan->hEdma[1]);
    	EDMA_enableChannel(chan->hEdma[2]);          
	}
    EDMA_enableChannel(chan->hEdma[0]);

    base[_VP_VDCTL_OFFSET] |= VP_VDCTL_VDEN_ENABLE << _VP_VDCTL_VDEN_SHIFT;
    /* wait for display counters and control signals to sync up */
    do {
        stat = base[_VP_VDSTAT_OFFSET];
        i ++ ;
    }while(!(stat & 0x70000000) && i < 1000000);
    base[_VP_VDSTAT_OFFSET] = stat;
    
    do {
        stat = base[_VP_VDSTAT_OFFSET];
        i ++;
    }while(!(stat & 0x70000000) && i < 1000000);

    base[_VP_VDCTL_OFFSET] &= ~(_VP_VDCTL_BLKDIS_MASK);
    /* re-enable under run interrupt */
    base[_VP_VPIE_OFFSET] |= _VP_VPIE_DUND_MASK;
    return IOM_COMPLETED;

}

/*
 *  ======== _getlastActiveLine ========
 *  get the line number of the last active line
 */
static Int _getlastActiveLine(VPORTDIS_Params* params)
{
    int lastActiveLine = -1;
    switch (params->fldOp){
        case VPORT_FLDOP_FRAME:
        case VPORT_FLDOP_FLD2:  
            lastActiveLine = params->vBlnkYStopFld2 
              + params->imgVOffsetFld2
              + params->imgVSizeFld2;
            
       break;                      
        case VPORT_FLDOP_FLD1:
        case VPORT_FLDOP_PROGRESSIVE:
            lastActiveLine = params->vBlnkYStopFld1 
              + params->imgVOffsetFld1
              + params->imgVSizeFld1;
        break;        
    }
    return lastActiveLine;
}    


/*
 *  ======== _setVIntCb ========
 *  set video port interrutp call-back
 */
static Int _setVIntCb(Ptr chanp, Ptr args)
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;
    volatile Int* base = (volatile Int *)chan->base;  
    VPORT_VIntCbParams* vIntCbParams = (void *)args;
    Int mask = vIntCbParams->vIntMask;
    Uns vif2 = 0, vInt2 = 0, vif1 = 0, vInt1 = 0;

    return IOM_COMPLETED;
#if 0

    chan->vIntMask = mask;
    /* check to see if vertical interrupt is enabled */
    if(mask & VPORT_INT_VINT1) {
        vif1 = 1;
        vInt1 = vIntCbParams->vIntLine;
    }
    if(mask & VPORT_INT_VINT2) {
        vif2 = 1;
        vInt2 = vIntCbParams->vIntLine;    
    }
    base[_VP_VDVINT_OFFSET] = VP_VDVINT_RMK(vif2, 
        vInt2, vif1, vInt1);
    if(mask) {
        mask |= 1; /* turn on video port interrupt */
        IRQ_map(IRQ_EVT_VINT0 + chan->portNum, vIntCbParams->irqId);    
        HWI_dispatchPlug(vIntCbParams->irqId, (Fxn)displayISR, -1, NULL);
        IRQ_disable(IRQ_EVT_VINT0 + chan->portNum);
        IRQ_clear(IRQ_EVT_VINT0 + chan->portNum);
    }
    base[_VP_VPIE_OFFSET] |= mask;  /* register write */    
    chan->vIntFxn =  vIntCbParams->vIntCbFxn;       
    return IOM_COMPLETED;
#endif    
}

