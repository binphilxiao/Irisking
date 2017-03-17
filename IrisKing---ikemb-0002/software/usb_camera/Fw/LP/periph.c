//-----------------------------------------------------------------------------
//   File:      periph.c
//   Contents:  Hooks required to implement USB peripheral function.
//
// $Archive: /USB/Target/Fw/lp/periph.c $
// $Date: 3/23/05 3:03p $
// $Revision: 3 $
//
//
//-----------------------------------------------------------------------------
// Copyright 2003, Cypress Semiconductor Corporation
//
// This software is owned by Cypress Semiconductor Corporation (Cypress) and is
// protected by United States copyright laws and international treaty provisions. Cypress
// hereby grants to Licensee a personal, non-exclusive, non-transferable license to copy,
// use, modify, create derivative works of, and compile the Cypress Source Code and
// derivative works for the sole purpose of creating custom software in support of Licensee
// product ("Licensee Product") to be used only in conjunction with a Cypress integrated
// circuit. Any reproduction, modification, translation, compilation, or representation of this
// software except as specified above is prohibited without the express written permission of
// Cypress.
//
// Disclaimer: Cypress makes no warranty of any kind, express or implied, with regard to
// this material, including, but not limited to, the implied warranties of merchantability and
// fitness for a particular purpose. Cypress reserves the right to make changes without
// further notice to the materials described herein. Cypress does not assume any liability
// arising out of the application or use of any product or circuit described herein. Cypress?
// products described herein are not authorized for use as components in life-support
// devices.
//
// This software is protected by and subject to worldwide patent coverage, including U.S.
// and foreign patents. Use may be limited by and subject to the Cypress Software License
// Agreement.
//-----------------------------------------------------------------------------
#pragma NOIV               // Do not generate interrupt vectors

#include "fx2.h"
#include "fx2regs.h"
#include "syncdly.h"            // SYNCDELAY macro

extern BOOL   GotSUD;         // Received setup data flag
extern BOOL   Sleep;
extern BOOL   Rwuen;
extern BOOL   Selfpwr;

BYTE   Configuration;      // Current configuration
BYTE   AlternateSetting;   // Alternate settings

#define VR_NAKALL_ON    0xD0
#define VR_NAKALL_OFF   0xD1
   
//-----------------------------------------------------------------------------
//void EZUSB_InitI2C(void)
//BOOL EZUSB_WriteI2C(BYTE addr, BYTE length, BYTE xdata *dat)
//BOOL EZUSB_ReadI2C(BYTE addr, BYTE length, BYTE xdata *dat)
//-----------------------------------------------------------------------------
// Task Dispatcher hooks
//   The following hooks are called by the task dispatcher.
//-----------------------------------------------------------------------------
void TD_Init(void)             // Called once at startup
{
   #ifdef CONFIG_CMOS
   EZUSB_InitI2C();
   #endif

   // set the CPU clock to 48MHz
   CPUCS = ((CPUCS & ~bmCLKSPD) | bmCLKSPD1) ;
   // to see BKPT LED go out TGE
   BREAKPT &= ~bmBPEN;      
   // set the slave FIFO interface to 48MHz
   IFCONFIG |= 0x40;//GPIF/FIFO 目前使用的是内部时钟，复位缺省值

  // Registers which require a synchronization delay, see section 15.14
  // FIFORESET        FIFOPINPOLAR
  // INPKTEND         OUTPKTEND
  // EPxBCH:L         REVCTL
  // GPIFTCB3         GPIFTCB2
  // GPIFTCB1         GPIFTCB0
  // EPxFIFOPFH:L     EPxAUTOINLENH:L
  // EPxFIFOCFG       EPxGPIFFLGSEL
  // PINFLAGSxx       EPxFIFOIRQ
  // EPxFIFOIE        GPIFIRQ
  // GPIFIE           GPIFADRH:L
  // UDMACRCH:L       EPxGPIFTRIG
  // GPIFTRIG
  
  // Note: The pre-REVE EPxGPIFTCH/L register are affected, as well...
  //      ...these have been replaced by GPIFTC[B3:B0] registers

  // default: all endpoints have their VALID bit set
  // default: TYPE1 = 1 and TYPE0 = 0 --> BULK  
  // default: EP2 and EP4 DIR bits are 0 (OUT direction)
  // default: EP6 and EP8 DIR bits are 1 (IN direction)
  // default: EP2, EP4, EP6, and EP8 are double buffered

  // we are just using the default values, yes this is not necessary...
  EP1OUTCFG = 0xA0;	//EP1OUT valid, bulk mode
  EP1INCFG = 0xA0;//EP1IN valid, bulk mode
  SYNCDELAY;                    // see TRM section 15.14
  EP2CFG = 0xA2;//EP1IN valid, bulk mode, DIR out, Buffering Type Double
  SYNCDELAY;                    
  EP4CFG = 0xA0;//EP1IN valid, bulk mode, DIR out, Buffering Type Quad
  SYNCDELAY;                    
  EP6CFG = 0xE2;//EP1IN valid, bulk mode, DIR in, Buffering Type Double
  SYNCDELAY;                    
  EP8CFG = 0xE0;//EP1IN valid, bulk mode, DIR in, Buffering Type Quad

  // out endpoints do not come up armed
  
  // since the defaults are double buffered we must write dummy byte counts twice
  SYNCDELAY;                    
  EP2BCL = 0x80;                // arm EP2OUT by writing byte count w/skip.
  SYNCDELAY;                    
  EP2BCL = 0x80;
  SYNCDELAY;                    
  EP4BCL = 0x80;                // arm EP4OUT by writing byte count w/skip.
  SYNCDELAY;                    
  EP4BCL = 0x80;    

  // enable dual autopointer feature
  AUTOPTRSETUP |= 0x01;

}

void TD_Poll(void)             // Called repeatedly while the device is idle
{
  WORD i;
  WORD count;
  BYTE CMOS_Reg[2];
  BOOL ret;

#ifdef CONFIG_CMOS
  if(!(EP2468STAT & bmEP2EMPTY))
  {	
  	 count = (EP2BCH << 8) + EP2BCL;
	 for( i = 0x0000; i < count; )
	 {
  	 	CMOS_Reg[0]=EP2FIFOBUF[i];
		CMOS_Reg[1]=EP2FIFOBUF[i+1];
	    ret=EZUSB_WriteI2C(0x21, 2, &CMOS_Reg);
		i+=2;
	 }
  }
#endif

	if (1)/*!(CMOS_FIFO_EMPTY)*///如果CMOS图像的FIFO中有数据
	{
     if(!(EP2468STAT & bmEP6FULL))//如果EP6 FIFO没有满
     {  // check EP6 FULL(busy) bit in EP2468STAT (SFR), core set's this bit when FIFO is full
        APTR1H = MSB( &EP2FIFOBUF );
        APTR1L = LSB( &EP2FIFOBUF );

        AUTOPTRH2 = MSB( &EP6FIFOBUF );
        AUTOPTRL2 = LSB( &EP6FIFOBUF );

        count = (EP2BCH << 8) + EP2BCL;

        // loop EP2OUT buffer data to EP6IN
        for( i = 0x0000; i < count; i++ )
        {
           // setup to transfer EP2OUT buffer to EP6IN buffer using AUTOPOINTER(s)
           EXTAUTODAT2 = EXTAUTODAT1;
        }
        EP6BCH = EP2BCH;  
        SYNCDELAY;  
        EP6BCL = EP2BCL;        // arm EP6IN
        SYNCDELAY;                    
        EP2BCL = 0x80;          // re(arm) EP2OUT
     }
	}
}

BOOL TD_Suspend(void)          // Called before the device goes into suspend mode
{
   return(TRUE);
}

BOOL TD_Resume(void)          // Called after the device resumes
{
   return(TRUE);
}

//-----------------------------------------------------------------------------
// Device Request hooks
//   The following hooks are called by the end point 0 device request parser.
//-----------------------------------------------------------------------------

BOOL DR_GetDescriptor(void)
{
   return(TRUE);
}

BOOL DR_SetConfiguration(void)   // Called when a Set Configuration command is received
{
   Configuration = SETUPDAT[2];
   return(TRUE);            // Handled by user code
}

BOOL DR_GetConfiguration(void)   // Called when a Get Configuration command is received
{
   EP0BUF[0] = Configuration;
   EP0BCH = 0;
   EP0BCL = 1;
   return(TRUE);            // Handled by user code
}

BOOL DR_SetInterface(void)       // Called when a Set Interface command is received
{
   AlternateSetting = SETUPDAT[2];
   return(TRUE);            // Handled by user code
}

BOOL DR_GetInterface(void)       // Called when a Set Interface command is received
{
   EP0BUF[0] = AlternateSetting;
   EP0BCH = 0;
   EP0BCL = 1;
   return(TRUE);            // Handled by user code
}

BOOL DR_GetStatus(void)
{
   return(TRUE);
}

BOOL DR_ClearFeature(void)
{
   return(TRUE);
}

BOOL DR_SetFeature(void)
{
   return(TRUE);
}

BOOL DR_VendorCmnd(void)
{
  BYTE tmp;
  
  switch (SETUPDAT[1])
  {
     case VR_NAKALL_ON:
        tmp = FIFORESET;
        tmp |= bmNAKALL;      
        SYNCDELAY;                    
        FIFORESET = tmp;
        break;
     case VR_NAKALL_OFF:
        tmp = FIFORESET;
        tmp &= ~bmNAKALL;      
        SYNCDELAY;                    
        FIFORESET = tmp;
        break;
     default:
        return(TRUE);
  }

  return(FALSE);
}

//-----------------------------------------------------------------------------
// USB Interrupt Handlers
//   The following functions are called by the USB interrupt jump table.
//-----------------------------------------------------------------------------

// Setup Data Available Interrupt Handler
void ISR_Sudav(void) interrupt 0
{
   GotSUD = TRUE;            // Set flag
   EZUSB_IRQ_CLEAR();
   USBIRQ = bmSUDAV;         // Clear SUDAV IRQ
}

// Setup Token Interrupt Handler
void ISR_Sutok(void) interrupt 0
{
   EZUSB_IRQ_CLEAR();
   USBIRQ = bmSUTOK;         // Clear SUTOK IRQ
}

void ISR_Sof(void) interrupt 0
{
   EZUSB_IRQ_CLEAR();
   USBIRQ = bmSOF;            // Clear SOF IRQ
}

void ISR_Ures(void) interrupt 0
{
   // whenever we get a USB reset, we should revert to full speed mode
   pConfigDscr = pFullSpeedConfigDscr;
   ((CONFIGDSCR xdata *) pConfigDscr)->type = CONFIG_DSCR;
   pOtherConfigDscr = pHighSpeedConfigDscr;
   ((CONFIGDSCR xdata *) pOtherConfigDscr)->type = OTHERSPEED_DSCR;
   
   EZUSB_IRQ_CLEAR();
   USBIRQ = bmURES;         // Clear URES IRQ
}

void ISR_Susp(void) interrupt 0
{
   Sleep = TRUE;
   EZUSB_IRQ_CLEAR();
   USBIRQ = bmSUSP;
}

void ISR_Highspeed(void) interrupt 0
{
   if (EZUSB_HIGHSPEED())
   {
      pConfigDscr = pHighSpeedConfigDscr;
      ((CONFIGDSCR xdata *) pConfigDscr)->type = CONFIG_DSCR;
      pOtherConfigDscr = pFullSpeedConfigDscr;
      ((CONFIGDSCR xdata *) pOtherConfigDscr)->type = OTHERSPEED_DSCR;
   }

   EZUSB_IRQ_CLEAR();
   USBIRQ = bmHSGRANT;
}
void ISR_Ep0ack(void) interrupt 0
{
}
void ISR_Stub(void) interrupt 0
{
}
void ISR_Ep0in(void) interrupt 0
{
}
void ISR_Ep0out(void) interrupt 0
{
}
void ISR_Ep1in(void) interrupt 0
{
}
void ISR_Ep1out(void) interrupt 0
{
}
void ISR_Ep2inout(void) interrupt 0
{
}
void ISR_Ep4inout(void) interrupt 0
{
}
void ISR_Ep6inout(void) interrupt 0
{
}
void ISR_Ep8inout(void) interrupt 0
{
}
void ISR_Ibn(void) interrupt 0
{
}
void ISR_Ep0pingnak(void) interrupt 0
{
}
void ISR_Ep1pingnak(void) interrupt 0
{
}
void ISR_Ep2pingnak(void) interrupt 0
{
}
void ISR_Ep4pingnak(void) interrupt 0
{
}
void ISR_Ep6pingnak(void) interrupt 0
{
}
void ISR_Ep8pingnak(void) interrupt 0
{
}
void ISR_Errorlimit(void) interrupt 0
{
}
void ISR_Ep2piderror(void) interrupt 0
{
}
void ISR_Ep4piderror(void) interrupt 0
{
}
void ISR_Ep6piderror(void) interrupt 0
{
}
void ISR_Ep8piderror(void) interrupt 0
{
}
void ISR_Ep2pflag(void) interrupt 0
{
}
void ISR_Ep4pflag(void) interrupt 0
{
}
void ISR_Ep6pflag(void) interrupt 0
{
}
void ISR_Ep8pflag(void) interrupt 0
{
}
void ISR_Ep2eflag(void) interrupt 0
{
}
void ISR_Ep4eflag(void) interrupt 0
{
}
void ISR_Ep6eflag(void) interrupt 0
{
}
void ISR_Ep8eflag(void) interrupt 0
{
}
void ISR_Ep2fflag(void) interrupt 0
{
}
void ISR_Ep4fflag(void) interrupt 0
{
}
void ISR_Ep6fflag(void) interrupt 0
{
}
void ISR_Ep8fflag(void) interrupt 0
{
}
void ISR_GpifComplete(void) interrupt 0
{
}
void ISR_GpifWaveform(void) interrupt 0
{
}
