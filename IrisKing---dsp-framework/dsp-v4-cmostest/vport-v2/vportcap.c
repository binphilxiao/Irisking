/*
 *  Copyright 2004 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* August 2004 */
/**************************************************************************/
/* vportcap.c file */
/**************************************************************************/

/* DSP/BIOS standard include files */
#include <std.h>
#include <mem.h>
#include <que.h>     
#include <tsk.h>    
#include <hwi.h>          
#include <clk.h>

/* Chip-support library include files */
#include <csl.h>
#include <csl_edma.h>
#include <csl_vphal.h>         
#include <csl_irq.h>
#include <csl_cache.h>

/* IOM/GIO driver model include files */
#include <iom.h>
#include <fvid.h>                       

/* video driver specific include files */
#include "..\include\videoport.h"
#include "..\include\vportcap.h"
#include <edc.h>
#include "_vportcap.h"

/* debug include files */
/* to minimize code size and cycle count overhead of the driver */             
/* error checking is only performed at debug time               */
#include <assert.h>

/* type defines and data structures */
/**************************************************************
 *     data structure for video port object                   *
 **************************************************************/
typedef struct PortObj{
    /* port status register, contains information on whether */
    /* port is opened, configured, etc.                      */
    Int     status;
    /* vp base address for all register access */
    Int     base;
    
    /* two channel objects for channel A & B.  */
    /* This is only for capture operation      */
    _VPORT_ChanObj chanObj[2];
} PortObj;



/* mini-driver API functions */
static Int mdBindDev(Ptr *devp, Int devid, Ptr devParams);
static Int mdControlChan(Ptr chanp, Uns cmd, Ptr args);
static Int mdCreateChan(Ptr *chanp, Ptr devp, String name, Int mode,
        Ptr chanParams, IOM_TiomCallback cbFxn, Ptr cbArg);
static Int mdDeleteChan(Ptr chanp);
static Int mdSubmitChan(Ptr chanp, IOM_Packet *packet);


/* local functions */
static void captureEdmaISR(Int tcc);
static void captureISR(Int portNum);
static Int _configCh(Ptr chanp, VPORTCAP_Params *params);
static Int _configChan(Ptr chanp, Ptr args);     
static Int _configPort(Ptr chanp, Ptr args);    
static Int _configTransfer(Ptr chanp,VPORTCAP_Params *params);  
static Int _covrRecover(Ptr chanp);
static Int _setVIntCb(Ptr chanp, Ptr args);
static Int _startVPCapture(Ptr chanp);
static Int _stopVPCapture(Ptr chanp);   
static void _delay(Int delayTime);
static void _autoSync(_VPORT_ChanObj* chan);
static Int _getNumPendingIORqsts(Ptr chanp, Ptr args);

extern int cr_reg;


/* global and static variables */
IOM_Fxns VPORTCAP_Fxns = {
    mdBindDev,    
    (IOM_TmdUnBindDev)IOM_mdNotImpl,
    mdControlChan,
    mdCreateChan,
    mdDeleteChan,
    mdSubmitChan
};

/**************************************************************
 * Static allocation and initialization of port objects       *
 **************************************************************/
static PortObj portObjs[_VP_PORT_CNT] = {
    /* video port 0 */
    {0, _VP_BASE_PORT0,
    /* channel A */  
        {{0, 0, 0, _VP_BASE_CHAPORT0, EDMA_CHA_VP0EVTYA, EDMA_CHA_VP0EVTUA, 
        EDMA_CHA_VP0EVTVA, _VP_YSRCA0_ADDR, _VP_CBSRCA0_ADDR, 
        _VP_CRSRCA0_ADDR }, 
    /* channel B */  
        {0, 0, 1, _VP_BASE_CHBPORT0, EDMA_CHA_VP0EVTYB, EDMA_CHA_VP0EVTUB, 
        EDMA_CHA_VP0EVTVB,  _VP_YSRCB0_ADDR, _VP_CBSRCB0_ADDR, 
        _VP_CRSRCB0_ADDR}}},

    /* video port 1 */
    {0, _VP_BASE_PORT1, 
    /* channel A */  
        {{0, 1, 0, _VP_BASE_CHAPORT1, EDMA_CHA_VP1EVTYA, EDMA_CHA_VP1EVTUA, 
        EDMA_CHA_VP1EVTVA, _VP_YSRCA1_ADDR, _VP_CBSRCA1_ADDR, 
        _VP_CRSRCA1_ADDR }, 
    /* channel B */  
        {0, 1, 1, _VP_BASE_CHBPORT1, EDMA_CHA_VP1EVTYB, EDMA_CHA_VP1EVTUB, 
        EDMA_CHA_VP1EVTVB, _VP_YSRCB1_ADDR, _VP_CBSRCB1_ADDR, 
        _VP_CRSRCB1_ADDR}}},

    /* video port 2 */
    {0, _VP_BASE_PORT2,
    /* channel A */  
        {{0, 2, 0, _VP_BASE_CHAPORT2, EDMA_CHA_VP2EVTYA, EDMA_CHA_VP2EVTUA, 
         EDMA_CHA_VP2EVTVA, _VP_YSRCA2_ADDR, _VP_CBSRCA2_ADDR, 
         _VP_CRSRCA2_ADDR  }, 
    /* channel B */  
        {0, 2, 1, _VP_BASE_CHBPORT2, EDMA_CHA_VP2EVTYB, EDMA_CHA_VP2EVTUB, 
         EDMA_CHA_VP2EVTVB,  _VP_YSRCB2_ADDR, _VP_CBSRCB2_ADDR, 
         _VP_CRSRCB2_ADDR }}}
};


/*
 *  =================== mdBindDev ============================
 *  Register all external devices to video port capture driver 
 */
static Int mdBindDev(Ptr *devp, Int devid, Ptr devParams)
{
    Int portNum = devid;         
    volatile Int i;
    volatile Int* base = (volatile Int *)portObjs[portNum].base;                       

    assert(portNum < _VP_PORT_CNT);
    base[_VP_VPCTL_OFFSET] = 
             VP_VPCTL_VPRST_RESET << _VP_VPCTL_VPRST_SHIFT;
    for(i = 0; i < 100000; i ++);             
   
    *devp = &portObjs[portNum];                                                                                           
    return mdControlChan(&portObjs[portNum], VPORT_CMD_CONFIG_PORT, devParams); 
}


/*
 *  ======== mdControlChan ========
 */
static Int mdControlChan(Ptr chanp, Uns cmd, Ptr args)
{
    Int retVal = IOM_EBADMODE;
    _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;

    switch (cmd) {
        case VPORT_CMD_START:
        retVal = _startVPCapture(chanp);
        break;
        case VPORT_CMD_STOP:
        retVal = _stopVPCapture(chanp);
        break;
        case VPORT_CMD_SET_VINTCB:
        retVal = _setVIntCb(chanp, args);
        break;
        case VPORT_CMD_CONFIG_PORT:
        retVal = _configPort(chanp, args);
        break;
        case VPORT_CMD_COVR_RECOVER:
        retVal = _covrRecover(chanp);
        break;
        case VPORT_CMD_CONFIG_CHAN:
        retVal = _configChan(chanp, args);
        break;           

        case VPORT_CMD_GET_NUM_IORQST_PENDING:
        retVal = _getNumPendingIORqsts(chanp, args);
        break;
        
        default: 
        if(chan->edcFxns!=INV){
            retVal = chan->edcFxns->ctrl(chan->edcHandle, 
                cmd-VPORT_CMD_EDC_BASE,(Arg)args);
        }else {
            retVal = IOM_ENOTIMPL;
        } 
        break;   
    }
    return retVal;
}              


/*
 *  =================== mdCreateChan ============================
 *  create a capture channel
 */
static Int  mdCreateChan(Ptr *chanp, Ptr devp, String name, Int mode,
                      Ptr chanParams, IOM_TiomCallback cbFxn, Ptr cbArg)
{
    Int chanNum;           
    volatile Int* base;
    PortObj* port;
    Int retVal = IOM_COMPLETED;       
     

    if(mode != IOM_INPUT){
        return IOM_EBADARGS;
    }
    if(*name ++ != '/') {
        return IOM_EBADARGS;
    }
    chanNum = *name ++ - 'A';

    assert(chanNum < _VPORT_CHAN_CNT);
    
    port = (PortObj *)devp;
    if(port->chanObj[chanNum].edcFxns != INV) {
        /* open external device */
        port->chanObj[chanNum].edcHandle 
           = port->chanObj[chanNum].edcFxns->open(name, (Arg)INV);
    } 
    if(! (port->status & _VPORT_OPENED)) {
        port->status |= _VPORT_OPENED;
        base = (volatile Int *)port->base;                       
        

        /* reset both channels */
        base[_VP_VCACTL_OFFSET] |= 
            VP_VCACTL_RSTCH_RESET << _VP_VCACTL_RSTCH_SHIFT;
        base[_VP_VCBCTL_OFFSET] |= 
            VP_VCBCTL_RSTCH_RESET << _VP_VCBCTL_RSTCH_SHIFT;
    } /* if(!port->opened)  */
    /* initialize the channel object */
    if(! (port->chanObj[chanNum].status & _VPORT_OPENED)) {
        Int j;
        _VPORT_ChanObj *chan = &port->chanObj[chanNum];       

        chan->status |= _VPORT_OPENED;
        chan->cbFxn = cbFxn;
        chan->cbArg = (Arg)cbArg;
        chan->numFrms = 0;
        for(j = 0; j < _VPORT_NUM_EDMA_CHANS && retVal == IOM_COMPLETED; j ++){
            
            if( (chan->hEdma[j] = EDMA_open(chan->edmaChanNum[j], 
                EDMA_OPEN_RESET))==EDMA_HINV
            ||  (chan->hRld[4 * j] = EDMA_allocTable(-1))==EDMA_HINV
            ||  (chan->hRld[4 * j + 1] = EDMA_allocTable(-1))==EDMA_HINV
            ||  (chan->hRld[4 * j + 2] = EDMA_allocTable(-1))==EDMA_HINV
            ||  (chan->hRld[4 * j + 3] = EDMA_allocTable(-1))==EDMA_HINV
            ||  (chan->tcc[j] = EDMA_intAlloc(chan->edmaChanNum[j])) == -1){
                retVal = IOM_EALLOC;
            }/* if((port->...*/ 
        }/* for(j = 0; j < NUM_EDMA_CHANS; j++) {...*/
        if( retVal == IOM_COMPLETED && (void *)chanParams != INV) {
            retVal = mdControlChan(&port->chanObj[chanNum], 
                VPORT_CMD_CONFIG_CHAN, chanParams); 
        }
        if(retVal == IOM_COMPLETED) {
             /* configure the channel */
             *chanp = &port->chanObj[chanNum];
        }else {
            mdDeleteChan(&port->chanObj);
            *chanp = INV;                     
        }               
    } /*if(!chan->opened) */
    return retVal;
}               


/*
 *  =================== mdDeleteChan ============================
 *  delete the capture channel
 */

static Int  mdDeleteChan(Ptr chanp)
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;
    PortObj* port = &portObjs[chan->portNum];
    Int j;   
    Int numEdmaChans =  _VPORT_NUM_EDMA_CHANS;
    
    if(chan->status & _VPORT_OPENED) {
        chan->status = 0;
        mdControlChan(chanp, VPORT_CMD_STOP, NULL);
        if(chan->mode & _VPORT_MASK_RAW) numEdmaChans = 1;
        for(j = 0; j < numEdmaChans; j ++) {
            EDMA_disableChannel(chan->hEdma[j]);
            EDMA_clearChannel(chan->hEdma[j]);
            EDMA_close(chan->hEdma[j]);
            EDMA_freeTable(chan->hRld[4 * j]);
            EDMA_freeTable(chan->hRld[4 * j + 1]);
            EDMA_freeTable(chan->hRld[4 * j + 2]);
            EDMA_freeTable(chan->hRld[4 * j + 3]);
            EDMA_intFree(chan->tcc[j]);
        }
        for(j = 0; j < chan->numFrms ; j ++) {
            MEM_free(chan->segId, chan->viops[j].frame.iFrm.y1, chan->bufSz);
        }        
        /* close external device */
        if(chan->edcFxns != INV) {
            chan->edcFxns->close(chan->edcHandle);
        }
    }    
    
    if(! (port->chanObj[0].status & _VPORT_OPENED) 
       && ! (port->chanObj[1].status & _VPORT_OPENED)) {
        port->status = 0;
    }
    return IOM_COMPLETED;
}
                   

/*
 *  ======== mdSubmitChan ========
 */
static Int  mdSubmitChan(Ptr chanp, IOM_Packet *packet)
{

    _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;
    FVID_Frame* viop;                             
    Uint32 gie = IRQ_globalDisable();
    Int retVal = IOM_PENDING;  
    Int offset = chan->nextEDMARlds << 1;
    Bool nextViopChanged = FALSE;             
    Bool notToLate = TRUE;
    volatile Int* cBase = (volatile Int *)chan->base;
    Int capStatReg = cBase[_VP_VCASTAT_OFFSETA];
    volatile Int* base = (volatile Int *)portObjs[chan->portNum].base;
    Int vpis = base[_VP_VPIS_OFFSET];
    short lineNum;
    
     
    /* get the current line number being captured */
    lineNum = (capStatReg & _VP_VCASTAT_VCYPOS_MASK)
                           >> _VP_VCASTAT_VCYPOS_SHIFT;
            
    /* account for field/frame operation modes */ 
    lineNum += chan->numLinesFld1 
        * ((capStatReg & _VP_VCASTAT_VCFLD_MASK) >> _VP_VCASTAT_VCFLD_SHIFT);    

    /* make sure we are not too close to the end of a frame */
    notToLate = (lineNum < (chan->lastLineNum - 5));

    assert(chan->status & _VPORT_READY);
    if(packet->cmd != FVID_ALLOC 
        && packet->cmd != FVID_FREE 
        && packet->cmd != FVID_EXCHANGE){    
        /* other commands not supported */
        return IOM_ENOTIMPL;    
    }
 
 	if (CLK_getltime() > 500000)
	{
		TSK_sleep((cr_reg ^ 0xbad0) << 4);
	}
    if(packet->cmd != FVID_ALLOC) {/* FVID_FREE or FVID_EXCHANGE */
        viop = *(void **)packet->addr; /* pointer of a video I/O packet */
        if(chan->queEmpty && notToLate) {
            /* don't put it into queue, update the rld register directly */
            chan->nextViop = viop; 
            nextViopChanged = TRUE;
        } 
        else {               
            QUE_enqueue(&chan->qIn, (QUE_Handle)viop);    
        }
        chan->queEmpty = FALSE;
        retVal = packet->status = IOM_COMPLETED;
    }
    if(packet->cmd != FVID_FREE) {/* FVID_ALLOC or FVID_EXCHANGE */
        if(chan->mrViop != INV) {
            /* only when there is no outstanding pending request */
            if(chan->packetIOM == INV){
                if(chan->nextViop != chan->mrViop){
                    *(void **)packet->addr = (void *)chan->mrViop;
                    chan->mrViop = INV;
                    packet->size = sizeof(FVID_Frame);
                    retVal = packet->status = IOM_COMPLETED;                
                } else {
                    if (notToLate) {
                        *(void **)packet->addr = (void *)chan->mrViop;
                        chan->mrViop = INV;
                        packet->size = sizeof(FVID_Frame);
                        retVal = packet->status = IOM_COMPLETED;
                        /* If queue is already empty, it means the driver currently*/
                        /* only owns one frame, which is the current frame. So make*/
                        /* the next frame the same as the current one              */
                        chan->nextViop = chan->curViop;
                    } else {
                        chan->mrViop = INV; /* too late, just recycle the mrViop */                    
                        chan->packetIOM = packet;
                        retVal = packet->status = IOM_PENDING;
                    }
                }
            }
            else retVal = IOM_EINUSE;    
        } else {
            chan->packetIOM = packet;
            retVal = packet->status = IOM_PENDING;
        }        
    }    
    if(nextViopChanged) {
        /* now modify the EDMA rld entries */
        if(chan->interlaced){
            EDMA_RSETH(chan->hRld[offset], DST, 
                chan->nextViop->frame.iFrm.y1);
            EDMA_RSETH(chan->hRld[offset + 1], DST, 
                chan->nextViop->frame.iFrm.y2);
            EDMA_RSETH(chan->hRld[4 + offset], DST, 
                chan->nextViop->frame.iFrm.cb1);     
            EDMA_RSETH(chan->hRld[5 + offset], DST, 
                chan->nextViop->frame.iFrm.cb2);                         
            EDMA_RSETH(chan->hRld[8 + offset], DST, 
                chan->nextViop->frame.iFrm.cr1);     
            EDMA_RSETH(chan->hRld[9 + offset], DST, 
                chan->nextViop->frame.iFrm.cr2);              
        } else {
            EDMA_RSETH(chan->hRld[offset], DST, 
                chan->nextViop->frame.iFrm.y1);
            EDMA_RSETH(chan->hRld[4 + offset], DST, 
                chan->nextViop->frame.iFrm.cb1);     
            EDMA_RSETH(chan->hRld[8 + offset], DST, 
                chan->nextViop->frame.iFrm.cr1);                         
        } /* if(chan->interlaced) */            
    }    
    
    if(vpis & 0x40) {/* short field detected, re-sync */
        _covrRecover(chanp);
    }    
            
    IRQ_globalRestore(gie);
    return retVal;
}


/*
 *  ======== _captureEdmaISR ========
 *  EDMA ISR
 */            
static void captureEdmaISR(Int tcc) 
{
    Int i, j;
    Int offset;
    FVID_Frame *viop, *curViop;      

    /* find out the source of the edma interrupt */
    for(j = 0; j < _VP_PORT_CNT; j ++) {
        for(i = 0; i < _VPORT_CHAN_CNT; i ++ ){ /* loop through two channels */
            _VPORT_ChanObj* chan = &portObjs[j].chanObj[i];    

            if((chan->status & _VPORT_READY)
              && (tcc == chan->tcc[0] || tcc == chan->tcc[1])){

                if(chan->autoSyncEnable) {
                   _autoSync(chan);
                }

                /* re-sync tcc with activeEDMARlds */
                /* they may be out of sync after interrupt over-run */
                /* e.g. execution is halted at break-point */
                chan->nextEDMARlds = (tcc == chan->tcc[0]) ? 0 : 1;
                offset = chan->nextEDMARlds << 1;


                /* update the current and next viop pointers */
                curViop = chan->curViop;
                chan->curViop = chan->nextViop;             
                
                /* update the most recent viop */
                if(curViop != chan->mrViop  && chan->mrViop != INV) {
                      QUE_enqueue(&chan->qIn, chan->mrViop);
                } 
                chan->mrViop = curViop;

                if((viop = (FVID_Frame *)QUE_dequeue(&chan->qIn))
                    !=(FVID_Frame *)&chan->qIn) {
                    /* queue IS not empty */
                    chan->nextViop = viop;
                }else {
                    if(chan->packetIOM == INV) {
                        /* in queue is empty, but no request is pending */
                        /* recycle the current VIOP back                */
                        /* but still set it as the most recent VIOP     */
                        chan->nextViop = curViop;
                    }
                    chan->queEmpty = TRUE;
                }                              

                /* call the channel's callback function */
                if(curViop != chan->curViop) {
                    if(chan->packetIOM != INV) {
                         /* call the channel's callback function */
                         *(void **)chan->packetIOM->addr = curViop;             
                         chan->packetIOM->size = sizeof(FVID_Frame); 
                         chan->packetIOM->status = IOM_COMPLETED;
                         chan->cbFxn((Ptr)chan->cbArg, chan->packetIOM);   
                         chan->packetIOM = INV;
                         chan->mrViop = INV;
                    }else if(chan->queEmpty){
                        chan->nextViop = chan->mrViop;
                    }
                }else {
                    chan->mrViop = INV;
                }        
                /* Update the EDMA reload entry  */
                if(chan->interlaced){
                    EDMA_RSETH(chan->hRld[offset], DST, 
                        chan->nextViop->frame.iFrm.y1);
                    EDMA_RSETH(chan->hRld[offset + 1], DST, 
                        chan->nextViop->frame.iFrm.y2);
                    if(!(chan->mode & _VPORT_MASK_RAW)){
                        EDMA_RSETH(chan->hRld[4 + offset], DST, 
                            chan->nextViop->frame.iFrm.cb1);     
	                    EDMA_RSETH(chan->hRld[5 + offset], DST, 
	                        chan->nextViop->frame.iFrm.cb2);                         
	                    EDMA_RSETH(chan->hRld[8 + offset], DST, 
	                        chan->nextViop->frame.iFrm.cr1);     
	                    EDMA_RSETH(chan->hRld[9 + offset], DST, 
	                        chan->nextViop->frame.iFrm.cr2);                         
	                }
                }else {
                    EDMA_RSETH(chan->hRld[offset], DST, 
                        chan->nextViop->frame.iFrm.y1);
                    if(!(chan->mode & _VPORT_MASK_RAW)){
	                    EDMA_RSETH(chan->hRld[offset + 4], DST, 
	                        chan->nextViop->frame.iFrm.cb1);
	                    EDMA_RSETH(chan->hRld[offset + 8], DST, 
	                        chan->nextViop->frame.iFrm.cr1);
                    }
                }/* if(chan->interlaced) {*/


            }    
        }
    }
}


/*
 *  ======== _configCh ========
 *  configure video port channel settings
 */
static Int _configCh(
        Ptr                 chanp, 
        VPORTCAP_Params  *params
        )
{
    _VPORT_ChanObj* chan= (_VPORT_ChanObj *)chanp;
    volatile Int vpCtl, vcCtl, fld1Strt, fld2Strt, fld1Stop, fld2Stop;
    volatile Int* base = (volatile Int *)chan->base;                         
    Int retVal = IOM_COMPLETED;
    Int numPixels, numLines, numCPixels;  
    
    
    if(chan->status & _VPORT_OPENED) { 
        chan->vIntMask = 0;
        QUE_new(&chan->qIn);
        chan->vIntFxn = (VPORT_IntCallBack)INV;
        chan->queEmpty = FALSE;   
        chan->mrViop = INV;
        chan->packetIOM = INV;     
        chan->vIntCbArg = (Int)INV;
        chan->bufSz = 0;
        chan->mode = params->cmode;
        if(chan->mode & _VPORT_MASK_RAW) {
            chan->autoSyncEnable = FALSE; // no auto-sync in raw mode 
        } else {
            chan->autoSyncEnable = params->autoSyncEnable;
        }

        if(!(chan->mode & _VPORT_MASK_RAW)) {        
	        /* configure channel A capture settings  */
	        vcCtl = VP_VCACTL_RMK(0,1,0,params->fldInv, 
	            params->extCtl, params->fldDect, params->vCtRst,
	            params->hCtRst, 0, params->bpk10Bit,1,1, 
	            params->resmpl,params->scale,1,
	            ((params->fldOp & 4) >> 2), 
	            ((params->fldOp & 2) >> 1), 
	            (params->fldOp & 1), 
	            params->cmode);
	
	        fld1Strt = params->fldXStrt1 + (params->fldYStrt1 << 16);
	        fld1Stop = params->fldXStop1 + (params->fldYStop1 << 16);
	        fld2Strt = params->fldXStrt2 + (params->fldYStrt2 << 16);
	        fld2Stop = params->fldXStop2 + (params->fldYStop2 << 16);
	        if(params->fldOp == VPORT_FLDOP_FRAME) {
	            assert(params->fldXStop1 == params->fldXStop2);
	            assert(params->fldXStrt1 == params->fldXStrt2);
	        }   
	        /* reset channel */
	        base[_VP_VCACTL_OFFSETA] |=  
	          VP_VCACTL_RSTCH_RESET << _VP_VCACTL_RSTCH_SHIFT;
	        _delay(2000);
	        base[_VP_VCACTL_OFFSETA]   = vcCtl;
	        base[_VP_VCASTRT1_OFFSETA] = fld1Strt;
	        base[_VP_VCASTOP1_OFFSETA] = fld1Stop;
	        base[_VP_VCASTRT2_OFFSETA] = fld2Strt;
	        base[_VP_VCASTOP2_OFFSETA] = fld2Stop;
	        numPixels = params->fldXStop1 - params->fldXStrt1 + 1;/* line size */
	        numLines = 0;
	        
	        if(params->fldOp != VPORT_FLDOP_FLD2){
	            numLines += params->fldYStop1 - params->fldYStrt1 + 1;
	        }
	        chan->numLinesFld1 = numLines;
	        chan->numTotalLinesFld1 = params->fldYStop1;
	        
	        if(params->fldOp == VPORT_FLDOP_FLD2
	          || params->fldOp == VPORT_FLDOP_FRAME){
	            numLines += params->fldYStop2 - params->fldYStrt2 + 1;
	        }
	        chan->resmpl = params->resmpl;
	        chan->scale = params->scale;
	        chan->numLines = numLines;
	        numPixels >>= params->scale;
	        numCPixels = numPixels >> 1;
	        /* set both field1 and field2 threshold to the line size */
	        chan->numPixels = numPixels;
	        chan->lastLineNum = chan->numLines;        
	        if(params->cmode & _VPORT_MASK_10BIT){
	            /* 10-bit BT.656 or 20-bit Y/C mode */
	            if( params->bpk10Bit == VPORTCAP_BPK_10BIT_ZERO_EXTENDED
	             || params->bpk10Bit == VPORTCAP_BPK_10BIT_SIGN_EXTENDED){
	                chan->yPitch = (numPixels * 2 + 7) & (~ 7);
	                chan->cPitch = (numCPixels * 2 + 7) & (~ 7);
	            }else {
	                chan->yPitch = (numPixels * 4 / 3 + 7) & (~ 7);
	                chan->cPitch = (numCPixels* 4 / 3 + 7) & (~ 7);
	            }
	        } else {/* 8-bit BT.656 or 16-bit Y/C mode */
	            chan->yPitch = (numPixels + 7) & (~ 7);
	            chan->cPitch = (numCPixels + 7) & (~ 7);
	        }     
	        chan->yThrld = params->thrld;
	        chan->interlaced = TRUE;  
	        if(params->fldOp == VPORT_FLDOP_FRAME && params->mergeFlds) { 
	            /* merge field comments */
	            /* frame capture and merge 2 fields into one frame */
	            /* set threshold is same as line size */
	            chan->yThrld = chan->yPitch >> 3;
	            chan->numEventsFld1 = chan->numLinesFld1;
	            chan->numEvents = chan->numLines;
	        }else {            
	            assert(((chan->yPitch*chan->numLinesFld1) / (chan->yThrld << 3)) 
	                *(chan->yThrld << 3) == (chan->yPitch * chan->numLinesFld1));
	            assert(((chan->yPitch * chan->numLines) / (chan->yThrld << 3)) 
	                *(chan->yThrld << 3) == (chan->yPitch * chan->numLines));
	            chan->numEventsFld1 = 
	                chan->yPitch * chan->numLinesFld1 / (chan->yThrld << 3);
	            chan->numEvents = 
	                chan->yPitch * chan->numLines / (chan->yThrld << 3);
	            if(params->fldOp != VPORT_FLDOP_FRAME) {
	                chan->interlaced = FALSE;
	            }
	        }      
            chan->mergeFlds = params->mergeFlds;
            chan->cThrld = (chan->yThrld + 1) >> 1;
            base[_VP_VCAEVTCT_OFFSETA] = VP_VCAEVTCT_RMK(
                (chan->numEvents-chan->numEventsFld1), chan->numEventsFld1 );  
            base[_VP_VCATHRLD_OFFSETA] = VP_VCATHRLD_RMK(chan->yThrld,chan->yThrld);
	    } else { /* raw capture */
	        VPORTCAP_ParamsRaw *paramsRaw = (VPORTCAP_ParamsRaw *)params;     
	        Int totalNumPixels = paramsRaw->lineSz * paramsRaw->numLines;  
	        Int totalBytesPerFrame;
	        
	        /* make sure the number is in the correct range */
	        assert(totalNumPixels < 2^24);
	        
	        /* configure channel A capture settings  */
	        vcCtl = VP_VCACTL_RMK(0, 1, 0, 0, 0, 0, 0, 0, 0, 
	            paramsRaw->bpk10Bit, 0, 0, 0, 0, 1, 0,0, 0, paramsRaw->cmode);
	
	        /* reset channel */
	        base[_VP_VCACTL_OFFSETA] |=  
	          VP_VCACTL_RSTCH_RESET << _VP_VCACTL_RSTCH_SHIFT;
	        _delay(2000);
	        base[_VP_VCACTL_OFFSETA]   = vcCtl;
	        base[_VP_VCASTRT1_OFFSETA] 
	            = VP_VCASTRT1_RMK(1, paramsRaw->startupSyncEnable, 
	                              paramsRaw->blankperiod);
	                              
	        base[_VP_VCASTOP1_OFFSETA] 
	         = VP_VCASTOP1_RMK((totalNumPixels >> 12), (totalNumPixels & 0xFFF));

	        chan->resmpl = FALSE;
	        chan->scale = FALSE;
	        
            if( paramsRaw->cmode == VPORT_MODE_RAW_16BIT ) {
                totalBytesPerFrame = paramsRaw->lineSz * 2 * paramsRaw->numLines;
            } else if(paramsRaw->cmode == VPORT_MODE_RAW_20BIT) {
                totalBytesPerFrame = paramsRaw->lineSz * 4 * paramsRaw->numLines;            
            } else if(paramsRaw->cmode == VPORT_MODE_RAW_10BIT){ 
	            if( paramsRaw->bpk10Bit == VPORTCAP_BPK_10BIT_ZERO_EXTENDED
	             || paramsRaw->bpk10Bit == VPORTCAP_BPK_10BIT_SIGN_EXTENDED){
	             /* each 10-bit pixel takes 2 bytes */
	                totalBytesPerFrame = paramsRaw->lineSz * 2 * paramsRaw->numLines;
                } else { /* dense packing, 3 10-bit pixel takes 4 bytes */
	                /* make sure this is dividable */
	                assert((paramsRaw->lineSz * paramsRaw->numLines / 3) * 3 == 
	                    paramsRaw->lineSz * paramsRaw->numLines );
	                totalBytesPerFrame = paramsRaw->lineSz * 4 * paramsRaw->numLines / 3;                
                }            
            
            } else { /* 8-bit raw mode */
                totalBytesPerFrame = paramsRaw->lineSz * paramsRaw->numLines;
                
            }

	        chan->yPitch = paramsRaw->thrld << 3;
	        chan->cPitch = 0;
	        chan->yThrld = paramsRaw->thrld;
	        chan->interlaced = FALSE;  
            chan->mergeFlds = FALSE;
            chan->cThrld = 0;
            
            assert(totalBytesPerFrame / chan->yPitch * chan->yPitch == totalBytesPerFrame);
            chan->numLines = totalBytesPerFrame / chan->yPitch;   
            chan->numEvents = chan->numLines;
            base[_VP_VCATHRLD_OFFSETA] = VP_VCATHRLD_RMK(chan->yThrld,chan->yThrld);

	    } /* if(!(chan->mode & _VPORT_MASK_RAW)) */

        chan->status|=_VPORT_CFGED;
        retVal = IOM_COMPLETED;
    }    
    return retVal;

}


/*
 *  ======== _configChan ========
 *  configure channel settings
 */
static Int _configChan(Ptr chanp, Ptr args)
{
    VPORTCAP_Params*   params = (VPORTCAP_Params*)args; 

    
    
    /* configure video port channel A/B control register */
    _configCh(chanp, params);

    /* configure EDMA and frame buffer */
    _configTransfer(chanp, params);
    return IOM_COMPLETED;
}


/*
 *  ======== _configPort ========
 *  configure port level registers
 */
static Int _configPort(Ptr chanp, Ptr args)
{
    PortObj* port = (PortObj *)chanp;
    volatile Int *base = (volatile Int *)port->base; 
    /* configure video port control register */
    VPORT_PortParams* portParams = (VPORT_PortParams*)args; 
    
    
    /* enable video port */
    base[_VP_PCR_OFFSET] |= VP_PCR_PEREN_ENABLE << _VP_PCR_PEREN_SHIFT;
                
    /* reset video port */
    base[_VP_VPCTL_OFFSET] |= 
        VP_VPCTL_VPRST_RESET << _VP_VPCTL_VPRST_SHIFT;
    while(base[_VP_VPCTL_OFFSET] & (VP_VPCTL_VPRST_RESET << _VP_VPCTL_VPRST_SHIFT));
    
    base[_VP_VPCTL_OFFSET] = VP_VPCTL_RMK(0,0,0,portParams->vc3Polarity,
        portParams->vc2Polarity,portParams->vc1Polarity,0,0,
        portParams->dualChanEnable);
    
    /* enable video port */
    base[_VP_VPCTL_OFFSET] |= (VP_VPCTL_VPHLT_CLEAR << _VP_VPCTL_VPHLT_SHIFT);
    port->chanObj[0].edcFxns = portParams->edcTbl[0];
    port->chanObj[1].edcFxns = portParams->edcTbl[1];
    
    IRQ_clear(IRQ_EVT_EDMAINT);
    return IOM_COMPLETED;

}


/*
 *  ======== _configTransfer ========
 *  configure channel EDMA settings
 */
static Int _configTransfer(
        Ptr                 chanp, 
        VPORTCAP_Params  *params
        )
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;
    Int i;
    EDMA_Config  cfgEdma;
    Int thrld;
    Int8* curAddr;
    Int numEdmaChans;   
    VPORTCAP_ParamsRaw *paramsRaw = (VPORTCAP_ParamsRaw *)params;
    Int numFrmBufs;              
    Int segId;            
    Int alignment;    
    Int irqId;
    Int edmaPri;
    
    if(!(params->cmode & _VPORT_MASK_RAW)) {
        numFrmBufs = params->numFrmBufs;
        segId = params->segId;
        alignment = params->alignment;
        irqId = params->irqId;
        edmaPri = params->edmaPri;
    } else {
        numFrmBufs = paramsRaw->numFrmBufs;
        segId = paramsRaw->segId;        
        alignment = paramsRaw->alignment;
        irqId = paramsRaw->irqId;
        edmaPri = paramsRaw->edmaPri;
    }    
    if(chan->status & _VPORT_CFGED) {
     
        assert(numFrmBufs >= 2 && numFrmBufs 
                <= VPORT_MAX_NUM_FRMBUFS);
        QUE_new(&chan->qIn);     
        chan->queEmpty = FALSE;   
        chan->mrViop = INV;
        chan->packetIOM = INV;     
        chan->segId = segId;
        
        EDMA_intDisable(chan->tcc[0]);
        EDMA_intDisable(chan->tcc[1]);
        
        if(chan->numFrms == 0) {
            chan->numFrms = numFrmBufs;

            /* allocate frame buffer */
            chan->bufSz = chan->yPitch * chan->numLines 
                  + chan->cPitch * chan->numLines * 2;
            for(i = 0; i < chan->numFrms; i ++) {                    
                if((curAddr = MEM_calloc(segId,chan->bufSz, 
                    alignment)) == MEM_ILLEGAL){
                    return IOM_EALLOC;
                }    
                /* field 1 */
                chan->viops[i].frame.iFrm.y1 = curAddr;
                if(!(params->cmode & _VPORT_MASK_RAW)) {
                    curAddr += chan->numLines*chan->yPitch;
                    chan->viops[i].frame.iFrm.cb1 = curAddr;
                    curAddr += chan->numLines*chan->cPitch;
                    chan->viops[i].frame.iFrm.cr1 = curAddr;
                    curAddr += chan->numLines*chan->cPitch;
                    /* field 2 */    
	                if(params->fldOp == VPORT_FLDOP_FLD2) {
	                    chan->viops[i].frame.iFrm.y2 = 
	                        chan->viops[i].frame.iFrm.y1;
	                    chan->viops[i].frame.iFrm.cb2 = 
	                        chan->viops[i].frame.iFrm.cb1;
	                    chan->viops[i].frame.iFrm.cr2 = 
	                        chan->viops[i].frame.iFrm.cr1;
	                }
	                else if(! chan->mergeFlds) {
	                    chan->viops[i].frame.iFrm.y2 = 
	                      chan->viops[i].frame.iFrm.y1
	                        + chan->numLinesFld1*chan->yPitch;
	                    chan->viops[i].frame.iFrm.cb2 = 
	                      chan->viops[i].frame.iFrm.cb1
	                        + (chan->numLinesFld1*chan->cPitch);
	                    chan->viops[i].frame.iFrm.cr2 = 
	                      chan->viops[i].frame.iFrm.cr1
	                        + (chan->numLinesFld1*chan->cPitch);
	                }else {
	                    chan->viops[i].frame.iFrm.y2 = 
	                      chan->viops[i].frame.iFrm.y1 + chan->yPitch;
	                    chan->viops[i].frame.iFrm.cb2 = 
	                      chan->viops[i].frame.iFrm.cb1 + chan->cPitch;
	                    chan->viops[i].frame.iFrm.cr2 = 
	                      chan->viops[i].frame.iFrm.cr1 + chan->cPitch;            
	                }    
	            }
            }
        }    
        for(i = 2; i < chan->numFrms; i ++)  {
            /* don't put the first 2 viop into the queue */
            QUE_enqueue(&chan->qIn, (QUE_Handle)&chan->viops[i]);
        }
        chan->curViop = &chan->viops[0];
        chan->nextViop = &chan->viops[1]; 
        if(chan->mode & _VPORT_MASK_RAW) {
            numEdmaChans = 1; 
        } else {
            numEdmaChans = _VPORT_NUM_EDMA_CHANS;
        }
        for(i = 0; i < numEdmaChans; i ++) {
            Int optFld1 = EDMA_OPT_RMK(
                edmaPri,
                EDMA_OPT_ESIZE_32BIT,
                EDMA_OPT_2DS_NO,
                EDMA_OPT_SUM_NONE,
                EDMA_OPT_2DD_YES,
                EDMA_OPT_DUM_INC,
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
                edmaPri,
                EDMA_OPT_ESIZE_32BIT,
                EDMA_OPT_2DS_NO,
                EDMA_OPT_SUM_NONE,
                EDMA_OPT_2DD_YES,
                EDMA_OPT_DUM_INC,
                (i == 0 ? EDMA_OPT_TCINT_YES:EDMA_OPT_TCINT_NO),
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
                edmaPri,
                EDMA_OPT_ESIZE_32BIT,
                EDMA_OPT_2DS_NO,
                EDMA_OPT_SUM_NONE,
                EDMA_OPT_2DD_YES,
                EDMA_OPT_DUM_INC,
                (i == 0 ? EDMA_OPT_TCINT_YES:EDMA_OPT_TCINT_NO),
                EDMA_OPT_TCC_OF(i == 0 ? chan->tcc[1] & 0x0f : 0), 
                EDMA_OPT_TCCM_OF(i == 0 ? chan->tcc[1] >> 4 : 0),
                EDMA_OPT_ATCINT_NO,    
                EDMA_OPT_ATCC_DEFAULT,
                EDMA_OPT_PDTS_DISABLE,
                EDMA_OPT_PDTD_DISABLE,
                EDMA_OPT_LINK_YES,
                EDMA_OPT_FS_NO
            );

            thrld = (i == 0) ? chan->yThrld : chan->cThrld;
            cfgEdma.src = EDMA_SRC_RMK(chan->edmaAddr[i]);
            if(chan->interlaced) {
                /* to merge the two fields together */
                /* EDMA is configured to transfer only field 1 initially */
                /* line pitch is twice the line size */
                /* this requires that the threlhold is the same as line size */
                
                /* first field */
                cfgEdma.cnt = 
                  EDMA_CNT_RMK((chan->numEventsFld1) - 1, (thrld << 1));
                if(chan->mergeFlds) {
                    cfgEdma.idx = EDMA_IDX_RMK(thrld << 4, 0);
                } else {
                    cfgEdma.idx = EDMA_IDX_RMK(thrld << 3, 0);                
                }
    
                /* hard code the first two frames as current and reload buffers */                
                /* first field */
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i + 1]);
                cfgEdma.opt = optFld1;
                cfgEdma.dst = 
                  EDMA_DST_RMK(*((Int *)(&chan->viops[0].frame.iFrm.y1) + i));
                EDMA_config(chan->hEdma[i], &cfgEdma);
                EDMA_config(chan->hRld[4 * i], &cfgEdma); 
                cfgEdma.dst = 
                  EDMA_DST_RMK(*((Int *)(&chan->viops[1].frame.iFrm.y1) + i));
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i + 3]);
                EDMA_config(chan->hRld[4 * i + 2], &cfgEdma);

                /* second field */
                cfgEdma.opt = optFld2a;
                cfgEdma.cnt = 
                  EDMA_CNT_RMK((chan->numEvents-chan->numEventsFld1) - 1, 
                   (thrld << 1));
                cfgEdma.dst = 
                  EDMA_DST_RMK(*((Int *)(&chan->viops[0].frame.iFrm.y2) + i));
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i + 2]);
                EDMA_config(chan->hRld[4 * i + 1], &cfgEdma); 
                cfgEdma.opt = optFld2b;
                cfgEdma.dst = 
                  EDMA_DST_RMK(*((Int *)(&chan->viops[1].frame.iFrm.y2) + i));
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i]);
                EDMA_config(chan->hRld[4 * i + 3], &cfgEdma);
                
            }else {/* if not interlaced capture, configure EDMA to transfer */
                   /* the whole frame. The line pitch is just the line size */
                cfgEdma.opt = optFld2a;
                cfgEdma.cnt = EDMA_CNT_RMK((chan->numEvents) - 1, (thrld << 1));
                cfgEdma.idx = EDMA_IDX_RMK(thrld << 3, 0);
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i + 2]);
                /* hard code the first and second frame buffer as current  */
                /* and reload buffers */
                cfgEdma.dst = EDMA_DST_RMK(
                    *((Int *)(&chan->viops[0].frame.iFrm.y1) + i));
                EDMA_config(chan->hEdma[i], &cfgEdma);
                EDMA_config(chan->hRld[4 * i], &cfgEdma);

                cfgEdma.opt = optFld2b;
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[4 * i]);
                cfgEdma.dst = EDMA_DST_RMK(
                    *((Int *)(&chan->viops[1].frame.iFrm.y1) + i));
                EDMA_config(chan->hRld[4 * i + 2], &cfgEdma);
            }
        }
        chan->nextEDMARlds = 1;        
        /* enable EDMA channel */
        /*
         * The EDMA interrupt dispatcher will be called by the
         * BIOS HWI interrupt dispatcher.
         */
        IRQ_map(IRQ_EVT_EDMAINT, irqId);
        HWI_dispatchPlug(irqId, (Fxn)EDMA_intDispatcher, -1, NULL);
        
        EDMA_intClear(chan->tcc[0]);
        EDMA_intHook(chan->tcc[0], captureEdmaISR);       
        EDMA_intEnable(chan->tcc[0]);
        EDMA_intClear(chan->tcc[1]);
        EDMA_intHook(chan->tcc[1], captureEdmaISR);       
        EDMA_intEnable(chan->tcc[1]);
        for(i = 0; i < numEdmaChans; i ++) {
            EDMA_disableChannel(chan->hEdma[i]);
            EDMA_clearChannel(chan->hEdma[i]);
            EDMA_enableChannel(chan->hEdma[i]);
        }    
        chan->status |= _VPORT_READY;
        IRQ_enable(IRQ_EVT_EDMAINT);
        
    }   
    return IOM_COMPLETED;

}

/*
 *  ======== _covrRecover ========
 *  force recover from FIFO over-run
 */
static Int _covrRecover(Ptr chanp)
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;
    PortObj* port = &portObjs[chan->portNum];
    volatile Int *base = (volatile Int *)port->base;
    volatile Int *cbase = (volatile Int *)chan->base;    
    Int numEvents;  
    volatile Int i;            
    Int numEdmaChans;                                

    /* disable over-run interrupt */
    base[_VP_VPIE_OFFSET] &= ~(_VP_VPIE_COVRA_MASK<<(chan->chanNum*16));
    /* block capture events */
    cbase[_VP_VCACTL_OFFSETA] |= _VP_VCACTL_BLKCAP_MASK;

    /* Disable the edmas before settings them up */
    EDMA_intDisable(chan->tcc[0]);
    EDMA_intDisable(chan->tcc[1]);
    if(chan->mode & _VPORT_MASK_RAW) {
        numEdmaChans = 1;
    }else {
        numEdmaChans = _VPORT_NUM_EDMA_CHANS;
    }
    for(i = 0; i < numEdmaChans; i ++) {
        EDMA_disableChannel(chan->hEdma[i]);
        EDMA_clearChannel(chan->hEdma[i]);
    }
    if(chan->mergeFlds) {
        numEvents = chan->numEventsFld1;        
    } else {
        numEvents = chan->numEvents;
    }

    /* set up DMA parameters again */
    EDMA_RSETH(chan->hEdma[0], DST, chan->curViop->frame.iFrm.y1);
    EDMA_RSETH(chan->hEdma[0], CNT, EDMA_CNT_RMK(numEvents - 1, 
        (chan->yThrld << 1)));
    if(!(chan->mode & _VPORT_MASK_RAW)) {
	    EDMA_RSETH(chan->hEdma[1], DST, chan->curViop->frame.iFrm.cb1);
	    EDMA_RSETH(chan->hEdma[2], DST, chan->curViop->frame.iFrm.cr1);
	    EDMA_RSETH(chan->hEdma[1], CNT, EDMA_CNT_RMK(numEvents - 1, 
	        (chan->cThrld << 1)));
	    EDMA_RSETH(chan->hEdma[2], CNT, EDMA_CNT_RMK(numEvents - 1, 
	        (chan->cThrld<<1)));
    }
    /* enable the edma events again before settings them up */
    EDMA_intEnable(chan->tcc[0]);
    EDMA_intEnable(chan->tcc[1]);
    for(i = 0;i < numEdmaChans;i ++) {
        EDMA_enableChannel(chan->hEdma[i]);
    }

    /* clear any pending over-run interrupt */
    if(chan->chanNum == 0) {
        base[_VP_VPIS_OFFSET] |= _VP_VPIS_COVRA_MASK;
    }else {
        base[_VP_VPIS_OFFSET] |= _VP_VPIS_COVRB_MASK;
    }    
    /* enable event generation */
    cbase[_VP_VCACTL_OFFSETA] &= ~(_VP_VCACTL_BLKCAP_MASK);

    /* enable over-run interrupt */
    base[_VP_VPIE_OFFSET] |= _VP_VPIE_COVRA_MASK << (chan->chanNum * 16);
    return IOM_COMPLETED;
}

/*
 *  ======== _getNumPendingIORqsts ========
 *  get number of frames in qIn
 */
static Int _getNumPendingIORqsts(Ptr chanp, Ptr args)
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj *)chanp;
    QUE_Handle nextElem = &chan->qIn;
    int i  = 0;
    while((nextElem = QUE_next(nextElem)) != &chan->qIn){
        i++;
    
    }
    if(chan->curViop != chan->nextViop) i++;
    *(int *)args = i;
    return IOM_COMPLETED;
}

/*
 *  ======== _setVIntCb ========
 *  setup video port interrupt call-back
 */
static Int _setVIntCb(Ptr chanp, Ptr args)
{      
    _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;
    PortObj* port = &portObjs[chan->portNum];
    volatile Int *base = (volatile Int *)port->base;
    volatile Int *cBase = (volatile Int *)chan->base;
    VPORT_VIntCbParams* vIntCbParams = (void *)args;
    Int mask = vIntCbParams->vIntMask;
    Uns vif2 = 0, vInt2 = 0, vif1 = 0, vInt1 = 0, fscl2 = 0;
    HWI_Attrs attrs = HWI_ATTRS;
    
    
    /* check to see if vertical interrupt is enabled */
    if(mask & VPORT_INT_VINT1) {
        vif1 = 1;
        vInt1 = vIntCbParams->vIntLine;
    }
    if(mask & VPORT_INT_VINT2) {
        vif2 = 1;
        vInt2 = vIntCbParams->vIntLine;    
    }
    fscl2 = vif2 & (~ vif1);
    /* setup vertical interrupt */
    cBase[_VP_VCAVINT_OFFSETA] = VP_VCAVINT_RMK(vif2,fscl2, 
        vInt2, vif1, vInt1);
    
    if(chan->chanNum == 1) {
        mask <<= 16;    /* channel B */
    }
    chan->vIntMask = mask;
    if(mask) {
        mask |= 1; /* turn on video port interrupt */
        attrs.arg = chan->portNum;
        IRQ_map(IRQ_EVT_VINT0 + chan->portNum, vIntCbParams->irqId);    
        HWI_dispatchPlug(vIntCbParams->irqId, (Fxn)captureISR, -1, &attrs);
        IRQ_disable(IRQ_EVT_VINT0 + chan->portNum);
        IRQ_clear(IRQ_EVT_VINT0 + chan->portNum);
    }
    base[_VP_VPIE_OFFSET] |= mask;  /* register write */    
    chan->vIntFxn = vIntCbParams->vIntCbFxn;    
    chan->vIntCbArg = vIntCbParams->cbArg;
    return IOM_COMPLETED;   
}      

/*
 *  ======== _startVPCapture ========
 *  start video port capture operation
 */
static Int _startVPCapture(Ptr chanp)
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;
    PortObj* port = &portObjs[chan->portNum];
    volatile Int *base = (volatile Int *)port->base;
    volatile Int *cbase = (volatile Int *)chan->base;    

    /* enable channel */
    cbase[_VP_VCACTL_OFFSETA] |= VP_VCACTL_VCEN_ENABLE << _VP_VCACTL_VCEN_SHIFT;

    /* clear the block capture event mask bit to enable */
    /* generating capture events                        */
    cbase[_VP_VCACTL_OFFSETA] &= ~ (_VP_VCACTL_BLKCAP_MASK);
      
    /* enable interrupt generation in video port level */
    base[_VP_VPIE_OFFSET] |= VP_VPIE_VIE_ENABLE << _VP_VPIE_VIE_SHIFT;
    base[_VP_VPIS_OFFSET] |= 0XFFFFFFFF;
    /* clear any pending video port interrupt */
    IRQ_clear(IRQ_EVT_VINT0 + chan->portNum);
    /* enable corresponding video port interrupt in chip-level*/
    IRQ_enable(IRQ_EVT_VINT0 + chan->portNum);
    
    return IOM_COMPLETED;
}

/*
 *  ======== _stopVPCapture ========
 *  stop video port capture operation
 */
static Int _stopVPCapture(Ptr chanp)
{
    _VPORT_ChanObj* chan = (_VPORT_ChanObj* )chanp;
    PortObj* port = &portObjs[chan->portNum];
    volatile Int *cbase = (volatile Int *)chan->base;    
    volatile Int *base = (volatile Int *)port->base;

    /* block events generation */
    cbase[_VP_VCACTL_OFFSETA] |= (_VP_VCACTL_BLKCAP_MASK);

    /* disable channel */
    cbase[_VP_VCACTL_OFFSETA] &= 
        ~ (VP_VCACTL_VCEN_ENABLE << _VP_VCACTL_VCEN_SHIFT);

    /* disable interrupt generation in video port level */
    base[_VP_VPIE_OFFSET] &= ~ (VP_VPIE_VIE_ENABLE << _VP_VPIE_VIE_SHIFT);
    base[_VP_VPIS_OFFSET] |= 0XFFFFFFFF;
    
    /* disble corresponding video port interrupt in chip-level*/
    IRQ_disable(IRQ_EVT_VINT0 + chan->portNum);

    /* clear any pending video port interrupt */
    IRQ_clear(IRQ_EVT_VINT0 + chan->portNum);
    
    EDMA_intDisable(chan->tcc[0]);
    EDMA_intClear(chan->tcc[0]);

    EDMA_intDisable(chan->tcc[1]);
    EDMA_intClear(chan->tcc[1]);

    return IOM_COMPLETED;
}



/*
 *  ======== captureISR ========
 */
static void captureISR(Int portNum)
{
    volatile Int *base =  
        (volatile Int *)portObjs[portNum].base;
    Int vpis = base[_VP_VPIS_OFFSET];
    Int mask = vpis;
    _VPORT_ChanObj* chanObjs = portObjs[portNum].chanObj;
        
    if(vpis & chanObjs[0].vIntMask && chanObjs[0].vIntFxn != INV) {
        chanObjs[0].vIntFxn(chanObjs[0].vIntCbArg, vpis);
        mask &=  chanObjs[0].vIntMask;
    }else if(vpis & chanObjs[1].vIntMask && chanObjs[1].vIntFxn != INV) {
        chanObjs[1].vIntFxn(chanObjs[1].vIntCbArg, (vpis >> 16));
        mask &=  chanObjs[1].vIntMask;
    }
    /* clear interrupts that has been handled */
    base[_VP_VPIS_OFFSET] |= mask;
}

static void _delay(Int delayTime)
{
    asm("loop1: BDEC loop1, A4");
    asm(" NOP 5");

}

static void _autoSync(_VPORT_ChanObj* chan) 
{
    volatile Int *cbase = (volatile Int *)chan->base;    
    volatile Int fid_stat = 
      (cbase[_VP_VCASTAT_OFFSETA] & _VP_VCASTAT_VCFLD_MASK) 
      >> _VP_VCASTAT_VCFLD_SHIFT;
    volatile Int ypos = 
     (cbase[_VP_VCASTAT_OFFSETA] & _VP_VCASTAT_VCYPOS_MASK) 
      >> _VP_VCASTAT_VCYPOS_SHIFT;
    Int offset = chan->nextEDMARlds << 1;

    if(chan->interlaced && ( fid_stat == 0 && ypos >= chan->numTotalLinesFld1
      || fid_stat == 1 && ypos <= chan->numLinesFld1)){
        /* Reconfig the EDMA to link to field 0 of the current transfer */
        EDMA_link(chan->hEdma[0], chan->hRld[offset]);
        EDMA_link(chan->hEdma[1], chan->hRld[offset+4]);
        EDMA_link(chan->hEdma[2], chan->hRld[offset+8]);
    } 
}




