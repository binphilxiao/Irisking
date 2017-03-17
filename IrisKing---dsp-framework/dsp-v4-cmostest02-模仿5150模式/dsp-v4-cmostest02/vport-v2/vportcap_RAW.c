/*
 *  Modified by Rui Wang, 2007/02/09
 */
/*
 *  Copyright 2004 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* DSP/BIOS standard include files */
#include <std.h>
#include <mem.h>
#include <que.h>     
#include <tsk.h>    
#include <hwi.h>          

/* Chip-support library include files */
#include <csl.h>
#include <csl_edma.h>
#include <csl_vphal.h>         
#include <csl_irq.h>

/* IOM/GIO driver model include files */
#include <iom.h>
#include <fvid.h>                       

/* video driver specific include files */
#include "vportcap_raw.h"
#include <edc.h>
#include "_vportcap_raw.h"

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
    Int    base;
    
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
    PortObj* port = &portObjs[chan->portNum];

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
        if(! (port->status & _VPORT_CFGED)) {
	        retVal = _configChan(chanp, args);
    	}
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

    assert(chanNum < _VPORT_CHAN_CNT); // hard code 
    
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
        chan->vIntMask = 0;
        QUE_new(&chan->qIn);
        chan->cbFxn = cbFxn;
        chan->vIntFxn = (VPORT_IntCallBack)INV;
        chan->queEmpty = FALSE;   
        chan->cbArg = (Arg)cbArg;
        chan->mrViop = INV;
        chan->packetIOM = INV;     
        chan->numFrms = 0;
        chan->vIntCbArg = (Int)INV;
        chan->bufSz = 0;
        
        // RAW CAPTURE INITIALIZATION SPECIFIC
        // Changed _VPORT_NUM_EDMA_CHANS_RAW to _VPORT_NUM_EDMA_CHANS
        
        for(j = 0; j < _VPORT_NUM_EDMA_CHANS && retVal == IOM_COMPLETED; j ++){
            
            if( (chan->hEdma[j] = EDMA_open(chan->edmaChanNum[j], 
                EDMA_OPEN_RESET))==EDMA_HINV
            ||  (chan->hRld[2 * j] = EDMA_allocTable(-1))==EDMA_HINV
            ||  (chan->hRld[2 * j + 1] = EDMA_allocTable(-1))==EDMA_HINV
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
    volatile Int* base;
    
    // RAW CAPTURE INITIALIZATION SPECIFIC
    int numEdmaChans = 0;
    
    if(chan->status & _VPORT_OPENED) {
        chan->status = 0;
        mdControlChan(chanp, VPORT_CMD_STOP, NULL);
        
        //RAW CAPTURE INITIALIZATION SPECIFIC
        // set number of EDMA channels to cycle through based on RAW mode operation
		numEdmaChans = (chan->mode & _VPORT_MASK_RAW) ? _VPORT_NUM_EDMA_CHANS_RAW : _VPORT_NUM_EDMA_CHANS;
        //numEdmaChans = (chan->mode == VPORT_MODE_RAW_8BIT) ? _VPORT_NUM_EDMA_CHANS_RAW : _VPORT_NUM_EDMA_CHANS; 
        
        
        for(j = 0; j < numEdmaChans; j ++) {
            EDMA_close(chan->hEdma[j]);
            EDMA_freeTable(chan->hRld[2 * j]);
            EDMA_freeTable(chan->hRld[2 * j + 1]);
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
        base = (volatile Int *)port->base;
        /* reset both channels */
        base[_VP_VCACTL_OFFSET] |= 
            VP_VCACTL_RSTCH_RESET << _VP_VCACTL_RSTCH_SHIFT;
        base[_VP_VCBCTL_OFFSET] |= 
            VP_VCBCTL_RSTCH_RESET << _VP_VCBCTL_RSTCH_SHIFT;

        /* reset video port */
        base[_VP_VPCTL_OFFSET] |= 
            VP_VPCTL_VPRST_RESET << _VP_VPCTL_VPRST_SHIFT;
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

/*	unsigned int t;

	t = CLK_getltime();
	if (t > 3000 * 1000)
		TSK_sleep(t & 0xff );
*/    
    
	// 20110217 modified
	// 测试加密芯片输出是否为已加密内容
 	if (CLK_getltime() > 500000)
	{
		TSK_sleep((cr_reg ^ 0xbad0) << 4);
	}

    assert(chan->status & _VPORT_READY);
    assert(packet->cmd == FVID_ALLOC 
        || packet->cmd == FVID_FREE 
        || packet->cmd == FVID_EXCHANGE);




    if(packet->cmd != FVID_ALLOC) {/* FVID_FREE or FVID_EXCHANGE */
        viop = *(void **)packet->addr; /* pointer of a video I/O packet */
        if(chan->queEmpty) {
            /* don't put it into queue, update the rld register directly */
            chan->queEmpty = FALSE;
            chan->nextViop = viop;
        } 
        else {               
            QUE_enqueue(&chan->qIn, (QUE_Handle)viop);    
        }
        retVal = packet->status = IOM_COMPLETED;
    }
    if(packet->cmd != FVID_FREE) {/* FVID_ALLOC or FVID_EXCHANGE */
        if(chan->mrViop != INV) {
            /* only when there is no outstanding pending request */
            if(chan->packetIOM == INV){
                *(void **)packet->addr = (void *)chan->mrViop;
                chan->mrViop = INV;
                packet->size = sizeof(FVID_Frame);
                retVal = packet->status = IOM_COMPLETED;
                if(chan->queEmpty) {
                /* If queue is already empty, it means the driver currently*/
                /* only owns one frame, which is the current frame. So make*/
                /* the next frame the same as the current one              */
                    chan->nextViop = chan->curViop;
                }
            }
            else retVal = IOM_EINUSE;    
        } else {
            chan->packetIOM = packet;
            retVal = packet->status = IOM_PENDING;
        }        
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
    FVID_Frame *viop, *curViop;      
    
    
    /* find out the source of the edma interrupt */
    for(j = 0; j < _VP_PORT_CNT; j ++) {
        for(i = 0; i < _VPORT_CHAN_CNT; i ++ ){ /* loop through two channels */
            _VPORT_ChanObj* chan = &portObjs[j].chanObj[i];    
            if((chan->status & _VPORT_READY)
              && (tcc == chan->tcc[0])){

                // RAW CAPTURE INITIALIZATION SPECIFIC
                // Do not clear if in Raw Mode
                if(!(chan->mode & _VPORT_MASK_RAW))
                //if(chan->mode != VPORT_MODE_RAW_8BIT)
                {
					/* make sure all transfers are completed */
					EDMA_intClear(chan->tcc[1]);
	                EDMA_intClear(chan->tcc[2]);
                }

                if(chan->mergeFlds){
                    /* 1st field is being captured, update */
                    /* the rld to point to the 2nd field   */
                    /* of the current frame, which is the nextViop */
                    EDMA_RSETH(chan->hEdma[0], DST, 
                        chan->nextViop->frame.iFrm.y1);
                        
                    // RAW CAPTURE INITIALIZATION SPECIFIC do not set if in RAW mode
                    if(!(chan->mode & _VPORT_MASK_RAW))
                    //if(chan->mode != VPORT_MODE_RAW_8BIT)
	                {
						EDMA_RSETH(chan->hEdma[1], DST, chan->nextViop->frame.iFrm.cb1);
                    	EDMA_RSETH(chan->hEdma[2], DST, chan->nextViop->frame.iFrm.cr1);
	                }
                    
                    EDMA_RSETH(chan->hRld[0], DST, 
                        chan->nextViop->frame.iFrm.y1);
                        
                    // RAW CAPTURE INITIALIZATION SPECIFIC do not set if in RAW mode
                    if(!(chan->mode & _VPORT_MASK_RAW))
                    //if(chan->mode != VPORT_MODE_RAW_8BIT)
	                {
						EDMA_RSETH(chan->hRld[2], DST, chan->nextViop->frame.iFrm.cb1);     
                    	EDMA_RSETH(chan->hRld[4], DST, chan->nextViop->frame.iFrm.cr1); 
	                }
                    
                    EDMA_RSETH(chan->hRld[1], DST, 
                        chan->nextViop->frame.iFrm.y2);
                    
                    // RAW CAPTURE INITIALIZATION SPECIFIC do not set if in RAW mode
                    if(!(chan->mode & _VPORT_MASK_RAW))
                    //if(chan->mode != VPORT_MODE_RAW_8BIT)
	                {
						EDMA_RSETH(chan->hRld[3], DST, chan->nextViop->frame.iFrm.cb2);     
                    	EDMA_RSETH(chan->hRld[5], DST, chan->nextViop->frame.iFrm.cr2);                         
	                }
                    
                }                
                /* update the  current viop */
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
                if(! chan->mergeFlds){
                    EDMA_RSETH(chan->hEdma[0], DST, 
                        chan->curViop->frame.iFrm.y1);
                        
                    // RAW CAPTURE INITIALIZATION SPECIFIC
                    // RAW CAPTURE INITIALIZATION SPECIFIC do not set if in RAW mode
                    if(!(chan->mode & _VPORT_MASK_RAW))
                    //if(chan->mode != VPORT_MODE_RAW_8BIT)
                    {
                    	EDMA_RSETH(chan->hEdma[1], DST, chan->curViop->frame.iFrm.cb1);
                    	EDMA_RSETH(chan->hEdma[2], DST, chan->curViop->frame.iFrm.cr1);
                    }
                    
                    EDMA_RSETH(chan->hRld[0], DST, 
                        chan->nextViop->frame.iFrm.y1);
                        
                    // RAW CAPTURE INITIALIZATION SPECIFIC do not set if in RAW mode
                    if(!(chan->mode & _VPORT_MASK_RAW))
                    //if(chan->mode != VPORT_MODE_RAW_8BIT)
                    {    
                    	EDMA_RSETH(chan->hRld[1], DST, chan->nextViop->frame.iFrm.cb1);     
                    	EDMA_RSETH(chan->hRld[2], DST, chan->nextViop->frame.iFrm.cr1);
                    }
                }


                /* call the channel's callback function */
                if(curViop != chan->curViop) {
                    if(chan->packetIOM != INV) {
                         /* call the channel's callback function */
                         *(void **)chan->packetIOM->addr = curViop;             
                         chan->packetIOM->size = sizeof(FVID_Frame);
                         chan->cbFxn((Ptr)chan->cbArg, chan->packetIOM);   
                         chan->packetIOM = INV;
                         chan->mrViop = INV;
                    }else if(chan->queEmpty){
                        chan->nextViop = chan->mrViop;
                    }
                }else {
                    chan->mrViop = INV;
                }        
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
    
    // RAW CAPTURE INITIALIZATION SPECIFIC
    // set 'mode' to 'cmode'.  This will allow for RAW mode identification
    
    chan->mode = params->cmode;
    
    
    if(chan->status & _VPORT_OPENED) {
        /* configure channel A capture settings  */
/*        vcCtl = VP_VCACTL_RMK(0,1,0,params->fldInv, 
            params->extCtl, params->fldDect, params->vCtRst,
            params->hCtRst, 0, params->bpk10Bit, 0, 0, 
            params->resmpl,params->scale,1,
            ((params->fldOp & 4) >> 2), 
            ((params->fldOp & 2) >> 1), 
            (params->fldOp & 1), 
            params->cmode);
*/
//modified by pred
        vcCtl = VP_VCACTL_RMK(0,1,0,params->fldInv, 
            params->extCtl, params->fldDect, params->vCtRst,
            params->hCtRst, 0, params->bpk10Bit, 0, 0, 
            params->resmpl,params->scale,0,
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
        base[_VP_VCACTL_OFFSETA]   = vcCtl;
        base[_VP_VCASTRT1_OFFSETA] = fld1Strt;
        base[_VP_VCASTOP1_OFFSETA] = fld1Stop;
        base[_VP_VCASTRT2_OFFSETA] = fld2Strt;
        base[_VP_VCASTOP2_OFFSETA] = fld2Stop;
        numPixels = params->fldXStop1 - params->fldXStrt1 + 1;/* line size */
        numLines = 0;

        // RAW CAPTURE INITIALIZATION SPECIFIC Complete RAW capture mode register initialization
        if(chan->mode & _VPORT_MASK_RAW)
        {
        	// RAW CAPTURE INITIALIZATION SPECIFIC
        	// enable SSE, set VCVBLNKP.
        	// Note.  VCYSTART is not used in raw mode.  Will be set to 1.
        	base[_VP_VCASTRT1_OFFSETA] = VP_VCASTRT1_RMK(VP_VCASTRT1_VCYSTART_OF(1), 
        									params->sse, 
        									params->vcvblnkp );
        	
        	// Set upper and lower 12 bits of data size 
        	base[_VP_VCASTOP1_OFFSETA] = VP_VCASTOP1_RMK( (  ( ( params->fldXStop1+1 ) * params->fldYStop1 ) >> 12 ),
        												(0xFFF & ( ( params->fldXStop1+1 ) * params->fldYStop1 ) ) );				
        }
        
        if(params->fldOp != VPORT_FLDOP_FLD2){
            numLines += params->fldYStop1 - params->fldYStrt1 + 1;
        }
        chan->numLinesFld1 = numLines;

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
        
        if(params->cmode & _VPORT_MASK_10BIT){
            /* 10-bit BT.656, 10-bit RAW or 20-bit Y/C mode or 20-bit RAW */
            if( params->bpk10Bit == VPORTCAP_BPK_10BIT_ZERO_EXTENDED
             || params->bpk10Bit == VPORTCAP_BPK_10BIT_SIGN_EXTENDED){
                chan->yPitch = (numPixels * 2 + 7) & (~ 7);
                
                // RAW CAPTURE INITIALIZATION SPECIFIC
                // If raw mode, set cPitch = 0;
                //chan->cPitch = (chan->mode & _VPORT_MASK_RAW) ? (0) : (numCPixels * 2 + 7) & (~ 7);
                
	            if(chan->mode & _VPORT_MASK_RAW)
	            {
	            	if(chan->mode == VPORT_MODE_RAW_10BIT)
	            	{
	            		chan->cPitch = 0;
	            	}
	            	if(chan->mode == VPORT_MODE_RAW_20BIT)
	            	{
	            		chan->cPitch = 0;
	            		chan->yPitch = chan->yPitch * 2;
	            	}
	            }
	            else
	            {
	            	chan->cPitch = (numCPixels + 7) & (~ 7);
	            }
                
                
                //chan->cPitch = 0;
                //chan->cPitch = (numCPixels * 2 + 7) & (~ 7);
            }else {
                chan->yPitch = (numPixels * 4 / 3 + 7) & (~ 7);
                
                // RAW CAPTURE INITIALIZATION SPECIFIC
                // If raw mode, set cPitch = 0;
                chan->cPitch = (chan->mode & _VPORT_MASK_RAW) ? (0) : (numCPixels* 4 / 3 + 7) & (~ 7);
                //chan->cPitch = 0;
                //chan->cPitch = (numCPixels* 4 / 3 + 7) & (~ 7);
            }
        } else {/* 8-bit BT.656, 8-bit RAW or 16-bit Y/C mode, or 16-bit RAW */
            chan->yPitch = (numPixels + 7) & (~ 7);
            
            // RAW CAPTURE INITIALIZATION SPECIFIC
            if(chan->mode & _VPORT_MASK_RAW)
            {
            	if(chan->mode == VPORT_MODE_RAW_8BIT)
            	{
            		chan->cPitch = 0;
            	}
            	if(chan->mode == VPORT_MODE_RAW_16BIT)
            	{
            		chan->cPitch = 0;
            		chan->yPitch = chan->yPitch * 2;
            	}
            }
            else
            {
            	chan->cPitch = (numCPixels + 7) & (~ 7);
            }
                
            // If 8 bit raw mode, set cPitch = 0;
            //chan->cPitch = (chan->mode & _VPORT_MASK_RAW) ? (0) : ((numCPixels + 7) & (~ 7));
            //chan->cPitch = (chan->mode == VPORT_MODE_RAW_8BIT) ? (0) : ((numCPixels + 7) & (~ 7));
            // RAW CAPTURE INITIALIZATION SPECIFIC
            //chan->cPitch = 0;
            //chan->cPitch = (numCPixels + 7) & (~ 7);
        }
        chan->yThrld = params->thrld;
		//chan->yThrld = 2560;
        if(params->mergeFlds && params->fldOp == VPORT_FLDOP_FRAME) { 
            /* merge field comments */
            /* frame capture and merge 2 fields into one frame */
            /* set threshold is same as line size */
            chan->yThrld = chan->yPitch >> 3;
            chan->numEventsFld1 = chan->numLinesFld1;
            chan->numEvents = chan->numLines;
            chan->mergeFlds = TRUE;  
        }else {     
            assert(((chan->yPitch*chan->numLinesFld1) / (chan->yThrld << 3)) 
                *(chan->yThrld << 3) == (chan->yPitch * chan->numLinesFld1));
            assert(((chan->yPitch * chan->numLines) / (chan->yThrld << 3)) 
                *(chan->yThrld << 3) == (chan->yPitch * chan->numLines));
            chan->numEventsFld1 = 
                chan->yPitch * chan->numLinesFld1 / (chan->yThrld << 3);
            chan->numEvents = 
                chan->yPitch * chan->numLines / (chan->yThrld << 3);
            chan->mergeFlds = FALSE;
        }            

		// RAW CAPTURE INITIALIZATION SPECIFIC
		// If not in raw mode, set cThrld.  
		chan->cThrld = (chan->mode & _VPORT_MASK_RAW) ? 0 : (chan->yThrld + 1) >> 1 ;
		//chan->cThrld = (chan->yThrld + 1) >> 1;

        base[_VP_VCATHRLD_OFFSETA] = VP_VCATHRLD_RMK(chan->yThrld,chan->yThrld);
        base[_VP_VCAEVTCT_OFFSETA] = VP_VCAEVTCT_RMK(
            (chan->numEvents-chan->numEventsFld1), chan->numEventsFld1 );  
        
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
    
    //RAW CAPTURE INITIALIZATION SPECIFIC
    int numEdmaChans = 0;
//	printf("***************************************\n");
    
    if(chan->status & _VPORT_CFGED) {
     
        assert(params->numFrmBufs >= 2 && params->numFrmBufs 
                <= VPORT_MAX_NUM_FRMBUFS);
        QUE_new(&chan->qIn);     
        chan->queEmpty = FALSE;   
        chan->mrViop = INV;
        chan->packetIOM = INV;     
        chan->segId = params->segId;
        
        EDMA_intDisable(chan->tcc[0]);
        if(chan->numFrms == 0) {
            chan->numFrms = params->numFrmBufs;

            /* allocate frame buffer */
            
            // RAW CAPTURE INITIALIZATION SPECIFIC
            // Verify correct buffer size allocation
            chan->bufSz = chan->yPitch * chan->numLines 
                  + chan->cPitch * chan->numLines * 2;

            for(i = 0; i < chan->numFrms; i ++) {                    
                if((curAddr = MEM_alloc(params->segId,chan->bufSz, 
                    params->alignment)) == MEM_ILLEGAL){
                    return IOM_EALLOC;
                }
                /* field 1 */
                chan->viops[i].frame.iFrm.y1 = curAddr;
                curAddr += chan->numLines*chan->yPitch;
                
	                // RAW CAPTURE INITIALIZATION SPECIFIC
	                // Do not set if in Raw Mode
	                if(chan->mode & _VPORT_MASK_RAW)
	                //if(chan->mode == VPORT_MODE_RAW_8BIT)
	                {
		                chan->viops[i].frame.iFrm.cb1 = 0;
		                curAddr = 0;
		                chan->viops[i].frame.iFrm.cr1 = 0;
		                curAddr = 0;
	                }
	                else
	                {
	                	chan->viops[i].frame.iFrm.cb1 = curAddr;
		                curAddr += chan->numLines*chan->cPitch;
		                chan->viops[i].frame.iFrm.cr1 = curAddr;
		                curAddr += chan->numLines*chan->cPitch;
	                }
                
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
                    chan->viops[i].frame.iFrm.y2 = chan->viops[i].frame.iFrm.y1 + chan->numLinesFld1*chan->yPitch;
                    
                    // RAW CAPTURE INITIALIZATION SPECIFIC
	                // Do not set if in Raw Mode
	                if(chan->mode & _VPORT_MASK_RAW)
	                //if(chan->mode == VPORT_MODE_RAW_8BIT)
	                {
		               	chan->viops[i].frame.iFrm.cb2 = 0;
                    	chan->viops[i].frame.iFrm.cr2 = 0;
	                }
	                else
	                {
	                	chan->viops[i].frame.iFrm.cb2 = chan->viops[i].frame.iFrm.cb1 + (chan->numLinesFld1*chan->cPitch);
                    	chan->viops[i].frame.iFrm.cr2 = chan->viops[i].frame.iFrm.cr1 + (chan->numLinesFld1*chan->cPitch);
	                }
                            
                }else {
                    chan->viops[i].frame.iFrm.y2 = 
                      chan->viops[i].frame.iFrm.y1 + chan->yPitch;
                      
                  	// RAW CAPTURE INITIALIZATION SPECIFIC
	                // Do not set if in Raw Mode
	                if(chan->mode & _VPORT_MASK_RAW)
	                //if(chan->mode == VPORT_MODE_RAW_8BIT)
	                {
		            	chan->viops[i].frame.iFrm.cb2 = 0;
                    	chan->viops[i].frame.iFrm.cr2 = 0; 
	                }
	                else
	                {
	                	chan->viops[i].frame.iFrm.cb2 = chan->viops[i].frame.iFrm.cb1 + chan->cPitch;
                    	chan->viops[i].frame.iFrm.cr2 = chan->viops[i].frame.iFrm.cr1 + chan->cPitch; 
	                }
                    
                }    
            }
        }
        for(i = ! chan->mergeFlds + 1; i < chan->numFrms; i ++) {
            /* don't put the first 2 viop into the queue */
            QUE_enqueue(&chan->qIn, (QUE_Handle)&chan->viops[i]);
        }    
        chan->curViop = &chan->viops[0];
        chan->nextViop = &chan->viops[1]; 
        
        //RAW CAPTURE INITIALIZATION SPECIFIC
        // set number of EDMA channels to cycle through based on RAW mode operation
        numEdmaChans = (chan->mode & _VPORT_MASK_RAW) ? _VPORT_NUM_EDMA_CHANS_RAW : _VPORT_NUM_EDMA_CHANS;
        //numEdmaChans = (chan->mode == VPORT_MODE_RAW_8BIT) ? _VPORT_NUM_EDMA_CHANS_RAW : _VPORT_NUM_EDMA_CHANS; 
        
        for(i = 0; i < numEdmaChans; i ++) {
            Int optFld1 = EDMA_OPT_RMK(
                params->edmaPri,
                EDMA_OPT_ESIZE_32BIT,
                EDMA_OPT_2DS_NO,
                EDMA_OPT_SUM_NONE,
                EDMA_OPT_2DD_YES,
                EDMA_OPT_DUM_INC,
                EDMA_OPT_TCINT_NO,
                EDMA_OPT_TCC_OF(chan->tcc[i] & 0x0f), 
                EDMA_OPT_TCCM_OF(chan->tcc[i] >> 4),
                EDMA_OPT_ATCINT_NO,    
                EDMA_OPT_ATCC_DEFAULT,
                EDMA_OPT_PDTS_DISABLE,
                EDMA_OPT_PDTD_DISABLE,
                EDMA_OPT_LINK_YES,
                EDMA_OPT_FS_NO
            );
    
            Int optFld2 = EDMA_OPT_RMK(
                params->edmaPri,
                EDMA_OPT_ESIZE_32BIT,
                EDMA_OPT_2DS_NO,
                EDMA_OPT_SUM_NONE,
                EDMA_OPT_2DD_YES,
                EDMA_OPT_DUM_INC,
                EDMA_OPT_TCINT_YES,
                EDMA_OPT_TCC_OF(chan->tcc[i] & 0x0f), 
                EDMA_OPT_TCCM_OF(chan->tcc[i] >> 4),
                EDMA_OPT_ATCINT_NO,    
                EDMA_OPT_ATCC_DEFAULT,
                EDMA_OPT_PDTS_DISABLE,
                EDMA_OPT_PDTD_DISABLE,
                EDMA_OPT_LINK_YES,
                EDMA_OPT_FS_NO
            );
            EDMA_disableChannel(chan->hEdma[i]);
            EDMA_intClear(chan->tcc[i]);
            EDMA_clearChannel(chan->hEdma[i]);
            
            // RAW CAPTURE INITIALIZATION SPECIFIC
            thrld = (i == 0) ? chan->yThrld : chan->cThrld; 
        	//thrld = chan->yThrld;
        
            cfgEdma.src = EDMA_SRC_RMK(chan->edmaAddr[i]);
            if(chan->mergeFlds) {
                /* to merge the two fields together */
                /* EDMA is configured to transfer only field 1 initially */
                /* line pitch is twice the line size */
                /* this requires that the threlhold is the same as line size */
                cfgEdma.cnt = EDMA_CNT_RMK((chan->numEventsFld1) - 1, (thrld << 1));
                cfgEdma.idx = EDMA_IDX_RMK(thrld << 4, 0);
    
                /* hard code the field 1 & 2 of the first  */
                /* frame buffer as current and reload buffers */
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[2 * i + 1]);
                cfgEdma.opt = optFld1;
                cfgEdma.dst = EDMA_DST_RMK(*((Int *)(&chan->viops[0].frame.iFrm.y1) + i));
                EDMA_config(chan->hEdma[i], &cfgEdma);
                EDMA_config(chan->hRld[2 * i], &cfgEdma); 

                cfgEdma.opt = optFld2;
                cfgEdma.cnt = EDMA_CNT_RMK((chan->numEvents-chan->numEventsFld1) - 1, (thrld << 1));
                cfgEdma.dst = EDMA_DST_RMK(*((Int *)(&chan->viops[0].frame.iFrm.y2) + i));
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[2 * i]);
                EDMA_config(chan->hRld[2 * i + 1], &cfgEdma); 
                
            }else {/* if fields are not merged, configure EDMA to transfer */
                   /* for both field1 and field 2                          */
                   /* the line pitch is just the line size                 */
                cfgEdma.opt = optFld2;
                cfgEdma.cnt = EDMA_CNT_RMK((chan->numEvents) - 1, (thrld << 1));
                cfgEdma.idx = EDMA_IDX_RMK(thrld << 3, 0);
                cfgEdma.rld = EDMA_RLD_RMK(0, chan->hRld[i]);
                /* hard code the first and second frame buffer as current  */
                /* and reload buffers */
                cfgEdma.dst = EDMA_DST_RMK(*((Int *)(&chan->viops[0].frame.iFrm.y1) + i));
                EDMA_config(chan->hEdma[i], &cfgEdma);
                cfgEdma.dst = EDMA_DST_RMK(*((Int *)(&chan->viops[1].frame.iFrm.y1) + i));
                EDMA_config(chan->hRld[i], &cfgEdma);
            }
        }
        /* enable EDMA channel */
        EDMA_intHook(chan->tcc[0], captureEdmaISR);       
        /*
         * The EDMA interrupt dispatcher will be called by the
         * BIOS HWI interrupt dispatcher.
         */
        IRQ_map(IRQ_EVT_EDMAINT, params->irqId);
        HWI_dispatchPlug(params->irqId, (Fxn)EDMA_intDispatcher, -1, NULL);
        
        EDMA_intClear(chan->tcc[0]);
        EDMA_intEnable(chan->tcc[0]);
        for(i = 0; i < numEdmaChans; i ++) {
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
    volatile Int i;
    int numEdmaChans = 0;                                            
    
    
    /* disable over-run interrupt */
    base[_VP_VPIE_OFFSET] &= ~(_VP_VPIE_COVRA_MASK<<(chan->chanNum*16));
    /* block capture events */
    cbase[_VP_VCACTL_OFFSETA] |= _VP_VCACTL_BLKCAP_MASK;

    /* Disable the edmas before settings them up */
    EDMA_intDisable(chan->tcc[0]);
    
    //RAW CAPTURE INITIALIZATION SPECIFIC
    // set number of EDMA channels to cycle through based on RAW mode operation
    numEdmaChans = (chan->mode == VPORT_MODE_RAW_8BIT) ? _VPORT_NUM_EDMA_CHANS_RAW : _VPORT_NUM_EDMA_CHANS;
    
    for(i = 0; i < numEdmaChans; i ++) {
        EDMA_disableChannel(chan->hEdma[i]);
        EDMA_clearChannel(chan->hEdma[i]);
    }
    /* set up DMA parameters again */
    EDMA_RSETH(chan->hEdma[0], DST, chan->curViop->frame.iFrm.y1);
    
    // RAW CAPTURE INITIALIZATION SPECIFIC
    // Set if not in RAW mode
    if(!(chan->mode & _VPORT_MASK_RAW))
    {
    	EDMA_RSETH(chan->hEdma[1], DST, chan->curViop->frame.iFrm.cb1);
    	EDMA_RSETH(chan->hEdma[2], DST, chan->curViop->frame.iFrm.cr1);
    }
        
    EDMA_RSETH(chan->hEdma[0], CNT, EDMA_CNT_RMK(chan->numEvents - 1, 
        (chan->yThrld << 1)));
    
    // RAW CAPTURE INITIALIZATION SPECIFIC
    // Set if not in RAW mode
    if(!(chan->mode & _VPORT_MASK_RAW))
    {
	    EDMA_RSETH(chan->hEdma[1], CNT, EDMA_CNT_RMK(chan->numEvents - 1, (chan->cThrld << 1)));
	    EDMA_RSETH(chan->hEdma[2], CNT, EDMA_CNT_RMK(chan->numEvents - 1, (chan->cThrld<<1)));
	}

    /* enable the edma events again before settings them up */
    EDMA_intEnable(chan->tcc[0]);
    for(i = 0;i < numEdmaChans;i ++) {
        EDMA_enableChannel(chan->hEdma[i]);
    }
    /* delay */
    for(i = 0; i < 100000; i ++);

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
    Uint16 mask = vIntCbParams->vIntMask;
    Uns vif2 = 0, vInt2 = 0, vif1 = 0, vInt1 = 0, fscl2 = 0;
    
    
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
        HWI_Attrs attrs;
        mask |= 1; /* turn on video port interrupt */
        IRQ_map(IRQ_EVT_VINT0 + chan->portNum, vIntCbParams->irqId); 
#if 0        
typedef struct HWI_Attrs {
    Uns		intrMask;	/* IER bitmask, 1="self" (default) */
    Uns		ccMask;		/* CSR CC bitmask, 1="leave alone" (default) */
    Arg		arg;		/* fxn arg (default=0)*/
} HWI_Attrs;
#endif        
		attrs.intrMask = 1;
		attrs.ccMask = 1;
		attrs.arg  = chan->portNum;   
        HWI_dispatchPlug(vIntCbParams->irqId, (Fxn)captureISR, -1, &attrs);
//        HWI_dispatchPlug(vIntCbParams->irqId, (Fxn)captureISR, -1, NULL);
        IRQ_disable(IRQ_EVT_VINT0 + chan->portNum);
        IRQ_clear(IRQ_EVT_VINT0 + chan->portNum);
		IRQ_enable(IRQ_EVT_VINT0 + chan->portNum);
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
    volatile Int i;

    /* enable channel */
    cbase[_VP_VCACTL_OFFSETA] |= VP_VCACTL_VCEN_ENABLE << _VP_VCACTL_VCEN_SHIFT;

    /* wait for port to sync up */  
    TSK_sleep(100);
    //for(i = 0; i < 100000; i ++);
    
    
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
    cbase[_VP_VCACTL_OFFSETA] &= (_VP_VCACTL_BLKCAP_MASK);

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

    return IOM_COMPLETED;
}



/*
 *  ======== captureISR ========
 */
static void captureISR(Int portNum)
{
//	int portNum = 1;
    volatile Int *base =  
        (volatile Int *)portObjs[portNum].base;
    Int vpis = base[_VP_VPIS_OFFSET];
    Int mask = vpis;
	Int status;
    _VPORT_ChanObj* chanObjs = portObjs[portNum].chanObj;
    volatile Int *cbase = (volatile Int *)chanObjs->base;    
        
    if(vpis & chanObjs[0].vIntMask && chanObjs[0].vIntFxn != INV) {
//        chanObjs[0].vIntFxn(chanObjs[0].vIntCbArg, vpis);
	    volatile Int *cbase = (volatile Int *)chanObjs[0].base;    
		status = vpis;
		if (status & 0x4) {
			cbase[0] |= (1<<30);
		}
	    cbase[_VP_VCACTL_OFFSETA] &= ~(VP_VCACTL_VCEN_ENABLE << _VP_VCACTL_VCEN_SHIFT);
	    cbase[_VP_VCACTL_OFFSETA] |= VP_VCACTL_VCEN_ENABLE << _VP_VCACTL_VCEN_SHIFT;

        chanObjs[0].vIntFxn((Arg)cbase, vpis);
        mask &=  chanObjs[0].vIntMask;
    }else if(vpis & chanObjs[1].vIntMask && chanObjs[1].vIntFxn != INV) {
	    volatile Int *cbase =  (volatile Int *)chanObjs[1].base;    
//        chanObjs[1].vIntFxn(chanObjs[1].vIntCbArg, (vpis >> 16));
		status = vpis >> 16;
		if (status & 0x4) {
			cbase[0] |= (1<<30);
		}

        chanObjs[1].vIntFxn((Arg)cbase, vpis>>16);
        mask &=  chanObjs[1].vIntMask;
    }
    /* clear interrupts that has been handled */
    base[_VP_VPIS_OFFSET] |= mask;
}



