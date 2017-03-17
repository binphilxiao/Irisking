/*
 *  Copyright 2003 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* "@(#) DDK 1.10.00.23 07-02-03 (ddk-b12)" */
/********************************************************************/
/* _saa7105.c file                                                      */
/********************************************************************/
#include "_saa7105.h"
 
_SAA7105_HDSyncGen _SAA7105_hdSyncGen0 =  
{
/* Line Count  */
    0,
    {{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},
    {0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0}},
/* Line Type   */
    0,
    {{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}},
/* Line Pattern */
    0,
    {{0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0}},
/* Sync Value */
    0,
    {{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0},
    {0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}}
};

_SAA7105_HDSyncGen _SAA7105_hdSyncGen480P =  
{
// Line Count
    0,
    {{6,0,1},{30,0,2},{483,0,3},{6,0,2},{0,0,0},{0,0,0},{0,0,0},{0,0,0},
    {0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0}},
// Line Type
    0,
    {{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}},
// Line Pattern
    0,
    {{62,0,0,731,0,0,62,0,1,0,0,0},{62,0,2,731,0,3,62,0,3,0,0,0},
    {62,0,2,58,0,4,719,0,5,15,0,4},{0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0}},
// Sync Value
    0,
    {{0x80,1,1,0},{0xD4,0,1,0},{0x80,1,0,0},{0xD4,0,0,0},{0xD4,0,0,0},
    {0xD6,0,0,0},{0,0,0,0},{0,0,0,0}}
};

_SAA7105_HDSyncGen _SAA7105_hdSyncGen720P =  
{
// Line Count
    0,
    {{5,0,1},{20,0,2},{720,0,3},{5,0,2},{0,0,0},{0,0,0},{0,0,0},{0,0,0},
    {0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0}},
// Line Type
    0,
    {{1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0},{3,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {5,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}},
// Line Pattern
    0,
    {{39,0,0,219,0,1,639,0,2,639,0,2},{54,0,1,54,0,2,0,0,0,0,0,0},
    {39,0,3,499,0,4,499,0,4,569,0,4},{39,0,5,0,0,0,0,0,0,0,0,0},
    {39,0,3,219,0,4,639,0,6,639,0,6},{69,0,4,39,0,5,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0}},
// Sync Value
    0,
    {{0x10,1,1,0},{0xD4,0,1,0},{0x80,0,1,0},{0x10,1,0,0},{0xD4,0,0,0},
    {0x80,0,0,0},{0xD6,0,0,0},{0,0,0,0}}
};

_SAA7105_HDSyncGen _SAA7105_hdSyncGen1080I =  
{
// Line Count
    0,
    {{10,0,1},{2,0,2},{14,0,3},{540,0,3},{2,0,3},{1,0,2},{10,0,1},{1,0,2},
    {15,0,3},{540,0,3},{2,0,3},{0,0,0},{0,0,0},{0,0,0},{0,0,0}},
// Line Type
    0,
    {{1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0},{3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {4,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}},
// Line Pattern
    0,
    {{43,0,0,87,0,1,439,0,2,439,0,2},{43,0,1,43,0,2,0,0,0,0,0,0},
    {43,0,3,505,0,4,505,0,4,43,0,5},{43,0,3,527,0,4,527,0,4,527,0,4},
    {527,0,4,43,0,5,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0}},
// Sync Value
    0,
//  {{0xFA,1,1,0},{0xBD,0,1,0},{0x80,0,1,0},{0xFA,1,0,0},{0xC0,0,0,0},
//  {0x80,0,0,0},{0,0,0,0},{0,0,0,0}}
    {{0x10,1,1,0},{0xD4,0,1,0},{0x80,0,1,0},{0x10,1,0,0},{0xD6,0,0,0},
    {0x80,0,0,0},{0,0,0,0},{0,0,0,0}}
};

_SAA7105_HDSyncGen _SAA7105_hdSyncGenVGA = 
{
// Line Count
    0,
    {{2,0,1},{33,0,2},{480,0,3},{10,0,2},{0,0,0},{0,0,0},{0,0,0},{0,0,0},
    {0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0}},
// Line Type
    0,
    {{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}},
// Line Pattern
    0,
    {{95,0,8,703,0,9,0,0,0,0,0,0},{95,0,2,703,0,3,0,0,0,0,0,0},
    {95,0,2,47,0,4,639,0,5,15,0,4},{0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0}},
// Sync Value
    0,
    {{0x80,0,0,0},{0x80,1,0,0},{0x80,0,1,0},{0x80,1,1,0},
    {0xB0,1,1,0},{0xCC,1,1,0},{0,0,0,0},{0,0,0,0}}
};

_SAA7105_HDSyncGen _SAA7105_hdSyncGenSVGA = 
{
// Line Count
    0,
    {{4,0,1},{23,0,2},{600,0,3},{1,0,2},{0,0,0},{0,0,0},{0,0,0},{0,0,0},
    {0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0}},
// Line Type
    0,
    {{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {3,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}},
// Line Pattern
    0,
    {{127,0,0,599,0,1,327,0,1,0,0,0},{127,0,2,599,0,3,327,0,3,0,0,0},
    {127,0,2,87,0,4,0,0,0,0,0,0},{399,0,5,399,0,5,39,0,4,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0}},
// Sync Value
    0,
    {{0x80,1,1,0},{0x80,0,1,0},{0x80,1,0,0},{0x80,0,0,0},
    {0xB0,0,0,0},{0xCC,0,0,0},{0,0,0,0},{0,0,0,0}}
};

_SAA7105_HDSyncGen _SAA7105_hdSyncGenXGA = 
{
// Line Count
    0,
    {{6,0,1},{29,0,2},{768,0,3},{3,0,2},{0,0,0},{0,0,0},{0,0,0},{0,0,0},
    {0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0}},
// Line Type
    0,
    {{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {3,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}},
// Line Pattern
    0,
    {{135,0,0,603,0,1,603,0,1,0,0,0},{135,0,2,603,0,3,603,0,3,0,0,0},
    {135,0,2,159,0,4,0,0,0,0,0,0},{511,0,5,511,0,5,23,0,4,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0}},
// Sync Value
    0,
    {{0x80,0,0,0},{0x80,1,0,0},{0x80,0,1,0},{0x80,1,1,0},
    {0xB0,1,1,0},{0xCC,1,1,0},{0,0,0,0},{0,0,0,0}}
};

/* DENC data structures */
_SAA7105_Regs _SAA7105_settingsDef = {
/* Status (0x00) = 0x00 */
    0x00,   /* uchar Status;  */                                        
    {0x00,0x00,0x00,0x00,0x00,0x00,0x00,        
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,    
    0x00,0x00,0x00,0x00,0x00,0x00},             
/* Common DAC Adjust (0x16) = 0x00 */
    0,      /* unsigned DACAdjust : 4;  */
    0,      /* unsigned UnusedDACAdjust : 4;  */
/* Red DAC Adjust (0x17) = 0x1F   */
    0x1B,   /* unsigned RDACAdjust : 5; */
    0,      /* unsigned UnusedRDACAdjust : 3; */
/* Green DAC Adjust (0x18) = 0x1F   */
    0x1B,   /* unsigned GDACAdjust : 5; */
    0,      /* unsigned UnusedGDACAdjust : 3; */
/* Blue DAC Adjust (0x19) = 0x1F */
    0x1F,   /* unsigned BDACAdjust : 5; */
    0,      /* unsigned UnusedBDACAdjust : 3; */            
/* MSM Threshold (0x1A) = 0x70 */
    0x70,   /* uchar MSMThreshold; */ 
/* Monitor sense mode (0x1B) = 0x00  */
    0,      /* unsigned BComp : 1; */
    0,      /* unsigned GComp : 1; */
    0,      /* unsigned RComp : 1;  */
    0,      /* unsigned Reg1BUnused : 2; */
    0,      /* unsigned MSMOE : 1;       */
    0,      /* unsigned AutoMSMEnable : 1; */
    0,      /* unsigned MSMEnable : 1; */ 
/* Chip identification (0x1C) = 0x00  */
    0x00,   /* uchar ChipID; */
/* Null Array (0x1D) - (0x25) */
    {0x00,0x00,0x00,      
    0x00,0x00,0x00,0x00,0x00,0x00},             
/* Wide screen signal (0x26) = 0xFF */
    0xFF,   /* uchar WideScreenLSBits; */
/* Wide screen signal (0x27) = 0x3F */
    0x3F,   /* unsigned WideScreenMSBits : 6; */
    0,      /* unsigned WSUnused : 1; */
    0,      /* unsigned WideScreenEnable : 1;  */
/* Burst start (0x28) = 0x19 */
    0x19,   /* unsigned BurstStart : 6; */
    0,      /* unsigned BurstUnused : 2; */ 
/* Burst start (0x29) = 0x1D */
    0x1D,   /* unsigned BurstEnd : 6; */
    0,      /* unsigned Reg29Unused : 1; */
    0,      /* unsigned SyncResetEnable : 1; */             
/* Copy generation (0x2A) = 0xFF */
    0xFF,   /* uchar CopyGen0;  */
/* Copy generation (0x2B) = 0xFF */
    0xFF,   /* uchar CopyGen1;  */
/* Copy generation (0x2C) = 0x0F */
    0xF,    /* unsigned CopyGenMSBits : 4; */
    0,      /* unsigned Reg2CUnused : 3; */
    0,      /* unsigned CopyGenEnable : 1; */ 
/* Output Port Control (0x2D) = 0x72 */
    0,      /* unsigned Reg2DUnused : 1; */
    0,      /* unsigned CVBSEN2 : 1; */
    0,      /* unsigned CLK2EN : 1; */
    0,      /* unsigned ENCOFF : 1; */
    1,      /* unsigned CEN : 1; */
    1,      /* unsigned CVBSEN0 : 1; */
    0,      /* unsigned CVBSEN1 : 1; */
    0,      /* unsigned VBSEN : 1; */ 
/* Null Array (0x2E) - (0x36) */
    {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00}, 
/* Input Path Control (0x37) = 0x00 */
    0,      /* unsigned XFilterActive : 1; */
    0,      /* unsigned InputLevel : 1; */
    0,      /* unsigned CursorZoom : 1; */
    0,      /* unsigned Reg37AUnused : 1; */
    0,      /* unsigned YUpscaleFilter : 2; */
    0,      /* unsigned YUpscaleActive : 1; */
    0,      /* unsigned Reg37BUnused : 1; */
/* Gain luminance for RGB (0x38) = 0x1A */
     0x1A,  /* unsigned RGBGainLuminance : 5; */
     0,     /* unsigned Reg38Unused : 3;  */
/* Gain chrominance for RGB (0x39) = 0x1A  */
     0x1A,  /* unsigned RGBGainChrominance : 5; */
     0,     /* unsigned Reg39Unused : 3;  */
/* Input Port Control (0x3A) = 0x0D        */
     1,     /* unsigned ChromaBinary : 1; */
     0,     /* unsigned LumaBinary : 1; */
     1,     /* unsigned CompSyncEnable : 1; */
     1,     /* unsigned YUVToRGBBypass : 1; */
     0,     /* unsigned SyncVia656 : 1;     */
     0,     /* unsigned SYNTV : 1;          */
     0,     /* unsigned Reg3AUnused : 1;    */
     0,     /* unsigned ColorBarsEnable : 1;*/ 
/* Null Array (0x3B) - (0x53)               */
    {0x00,                                  
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,    
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,    
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
/* VPS Enable (0x54) = 0x02  */
    0,      /* unsigned SLOT : 1; */
    1,      /* unsigned EDGE : 1;  */
    0,      /* unsigned Reg54AUnused : 2; */
    0,      /* unsigned GPEnable : 1;     */
    0,      /* unsigned GPData : 1;       */
    0,      /* unsigned Reg54BUnused : 1; */
    0,      /* unsigned VPSEnable : 1;    */
/* VPS Byte5 to Byte14 (0x55) - (0x59)    */
    0xFF,0xBF,0xFE,0xFF,0xFF,
/* VPS Enable (0x5A) = 0x25               */
    0x25,   /* uchar ChromaPhase;         */
/* Gain Cb (0x5B) = 0x76                  */
    0x76,   /* uchar CbGain;              */
/* Gain Cr (0x5C) = 0xA5                  */
    0xA5,   /* uchar CrGain;              */
/* Black Level (0x5D) = 0x3A              */
    0x3A,   /* unsigned BlackLevel : 6;   */
    0,      /* unsigned Reg5DUnused : 1;  */
    0,      /* unsigned UGainMSB : 1;     */                        
/* Blank Level (0x5E) = 0x2E              */
    0x2E,   /* unsigned BlankLevel : 6;   */
    0,      /* unsigned Reg5EUnused : 1;  */
    0,      /* unsigned VGainMSB : 1;     */
/* Black Level (0x5F) = 0x2E              */
    0x2E,   /* unsigned VBIBlankLevel : 6;*/
    0,      /* unsigned CCRFilter : 2;    */
/* Null Byte (0x60) = 0x00                */
    0x00,   /* uchar NullByte60;          */            
/* Standard Control (0x61) = 0x11         */
    1,      /* unsigned FISE : 1;         */
    0,      /* unsigned PALEnable : 1;    */
    0,      /* unsigned ChromaBW : 1;     */
    0,      /* unsigned Reg61Unused : 1;  */
    0,      /* unsigned WhiteLevel : 1;   */
    0,      /* unsigned PALSwitch : 1;    */
    0,      /* unsigned PowerDownMode : 1;*/
    0,      /* unsigned SleepMode : 1;    */
/* Burst Amplitude (0x62) = 0x3F          */
    0x3F,   /* unsigned BurstAmplitude : 7; */
    0,      /* unsigned RTCEEnable : 1;   */
/* Sub Carrier 0-3 (0x63) - (0x66) = 0x21F07C1F */
    0x1F,   /* uchar SubCarrier0;               */
    0x7C,   /* uchar SubCarrier1;               */
    0xF0,   /* uchar SubCarrier2;               */
    0x21,   /* uchar SubCarrier3;               */
/*  0x21FO7C1F,                                 */
/* Closed Captioning (0x67) - (0x6A)            */
    0xFF,0xFF,0xFF,0xFF,                        
/* Null Byte (0x6B) = 0x00                      */
    0x00,   /* uchar NullByte6B;                */
/* Horizontal Trigger (0x6C) = 0x00             */
    0x00,   /* uchar HTrigger;                  */
/* H & V Trigger (0x6D) = 0x64                  */
    2,      /* unsigned VTrigger : 5;           */
    3,      /* unsigned HTriggerMSBs : 3;       */
/* Multi Control (0x6E) = 0x20                  */
    0,      /* unsigned FieldControl : 2;       */
    0,      /* unsigned LumaDelay : 2;          */
    0,      /* unsigned PhaseResetMode : 2;     */
    0,      /* unsigned BlankLevelOut : 1;      */
    0,      /* unsigned VTrigNegative : 1;      */
/* Closed Caption/Teletext Enable (0x6F) = 0x17 */
    17,     /* unsigned CCLine : 5;             */
    0,      /* unsigned TeletextEnable : 1;     */
    0,      /* unsigned CCEnable : 2;           */
/* Active Display Window Horizontal Start (0x70)*/
    0x00,   /* uchar HStart; = 0x00             */
/* Active Display Window Horizontal End (0x71)  */
    0x80,   /* uchar HEnd; = 0x80               */
/* Active Display Window MSBs (0x72) = 0x31     */
    1,      /* unsigned HStartMSB : 3;          */
    0,      /* unsigned Reg72BUnused : 1;       */
    3,      /* unsigned HEndMSB : 3;            */
    0,      /* unsigned Reg72AUnused : 1;       */
/* Teletext Horizontal Start (0x73) = 0x54      */
    0x54,   /* uchar TeletextHStart;            */
/* Teletext Horizontal Start (0x74) = 0x02      */
    2,      /* unsigned TeletextHDelay : 4;     */
    0,      /* unsigned Reg74Unused : 4;        */
/* CSYNC Advance (0x75) = 0x00                  */
    0,      /* unsigned Reg75Unused : 3;        */
    0,      /* unsigned CSyncAdvance : 5;       */
/* Teletext Odd Vertical Start (0x76) = 0x06    */
    0x06,   /* uchar TeletextOddVStart;         */
/* Teletext Odd Vertical End (0x77) = 0x10      */
    0x10,   /* uchar TeletextOddVEnd;           */
/* Teletext Even Vertical Start (0x78) = 0x05   */
    0x05,   /* uchar TeletextEvenVStart;        */
/* Teletext Even Vertical End (0x79) = 0x10     */
    0x10,   /* uchar TeletextEvenVEnd;          */
/* First Active Line (0x7A) = 0x13              */
    19,     /* uchar FAL;                       */
/* Last Active Line (0x7B) = 0x03               */
    3,      /* uchar LAL;                       */
/* TTX mode, MSB vertical (0x7C) = 0x40         */
    0,      /* unsigned TTXOVSMSB : 1;          */
    0,      /* unsigned TTXOVEMSB : 1;          */
    0,      /* unsigned TTXEVSMSB : 1;          */
    0,      /* unsigned TTXEVEMSB : 1;          */
    0,      /* unsigned FAL_MSB : 1;            */
    0,      /* unsigned OldTTXProtocol : 1;     */
    1,      /* unsigned LAL_MSB : 1;            */
    0,      /* unsigned Teletext60HzEnable : 1; */
/* Null Byte (0x7D) = 0x00                      */
    0x00,   /* uchar NullByte7D;                */
/* Disable Teletext Line LSB (0x7E) = 0x00      */
    0x00,   /* uchar TTXLineLSBOff;             */
/* Disable Teletext Line MSB (0x7F) = 0x00      */
    0x00,   /* uchar TTXLineMSBOff;             */
/* FIFO Status (0x80) = 0x00                    */
    0,      /* unsigned FIFOUnderflow : 1;      */
    0,      /* unsigned FIFOOverflow : 1;       */
    0,      /* unsigned BufferFIFOOverflow : 1; */
    0,      /* unsigned InputFIFOError : 1;     */
    0,      /* unsigned Reg80Unused : 4;        */
/* Synthesized pixel clock (0x81) - (0x83) = 0x200000 */
    0x00,   /* uchar PixClock0;                 */
    0x00,   /* uchar PixClock1;                 */
    0x20,   /* char PixClock2;                  */
/* Pixel Clock Control (0x84) = 0x65            */
    1,      /* unsigned PCLKInDiv : 2;          */
    1,      /* unsigned PCLKOutDiv : 2;         */
    0,      /* unsigned BypassInputFIFO : 1;    */
    1,      /* unsigned FIFOResetOnField : 1;   */
    1,      /* unsigned PCLKSyncVSYNC : 1;      */
    0,      /* unsigned PCLKSingleEnded : 1;    */
/* FIFO Control (0x85) = 0x08                   */
    8,      /* unsigned FIFOThreshold : 4;      */
    0,      /* unsigned Reg85Unused : 3;        */
    0,      /* unsigned NonDVOCompliant : 1;    */                              
/* Null Array (0x86) - (0x8F)                   */
    {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,   
    0x00,0x00},                         
/* XOFS (0x90) = 0x6A                           */
    0x6A,   /* uchar XOFS;                      */
/* XPIX (0x91) = 0x80                           */
    0x80,   /* uchar XPIX;                      */
/* YOFSO (0x92) = 0x13                          */
    19,     /* uchar YOFSO;                     */
/* YOFSE (0x93) = 0x13                          */
    19,     /* uchar YOFSE;                     */
/* MSBs (XOFS,XPIX,YOFSO,YOFSE) (0x94) = 0x09   */
    1,      /* unsigned XOFS_MSB : 2;           */
    2,      /* unsigned XPIX_MSB : 2;           */
    0,      /* unsigned YOFSO_MSB : 2;          */
    0,      /* unsigned YOFSE_MSB : 2;          */          
/* Line Number (0x95) = 0xF0                    */
    0xF0,   /* uchar YPIX;                      */
/* Scaler Control (0x96) = 0x00                 */
    0,      /* unsigned YPIX_MSB : 2;           */
    0,      /* unsigned Reg96Unused : 1;        */
    0,      /* unsigned LumaBooster : 1;        */
    0,      /* unsigned InterlacedCursor : 1;   */
    0,      /* unsigned MasterSlaveMode : 1;    */
    0,      /* unsigned CBOPolarity : 1;        */
    0,      /* unsigned FrameSyncEnable : 1;    */
/* Sync Control (0x97) = 0x01                   */
    0,      /* unsigned HSyncPolarity : 1;      */
    0,      /* unsigned HSyncOutput : 1;        */
    0,      /* unsigned VSyncPolarity : 1;      */
    0,      /* unsigned VSyncOutput : 1;        */
    0,      /* unsigned FrameSyncPolarity : 1;  */
    0,      /* unsigned FieldOutput : 1;        */
    0,      /* unsigned VSyncMode : 1;          */
    0,      /* unsigned HSyncMode : 1;          */
/* Line Length (0x98) = 0xB3                    */
    0xB3,   /* uchar HLEN;                      */
/* Input Delay (0x99) = 0x16                    */
    6,      /* unsigned HLEN_MSB : 4;           */
    1,      /* unsigned IDEL : 4;               */
/* Horizontal Increment (0x9A) = 0x00           */
    0x00,   /* uchar XINC;                      */
/* Vertical Increment (0x9B) = 0x00             */
    0x00,   /* uchar YINC;                      */
/* MSBs Hor/Vert Increment (0x9C) = 0x00        */
    0,      /* unsigned XINC_MSB : 4;           */
    0,      /* unsigned YINC_MSB : 4;           */  
/* YIWGTO (0x9D) = 0x00                         */
    0x00,   /* uchar YIWGTO;                    */
/* YIWGTE (0x9E) = 0x00                         */
    0x00,   /* uchar YIWGTE;                    */
/* MSBs (YIWGTO,YIWGTE) (0x9F) = 0x88           */
    8,      /* unsigned YIWGTO_MSB : 4;         */
    8,      /* unsigned YIWGTE_MSB : 4;         */
/* Vertical Line Skip (0xA0) = 0x00             */
    0x00,   /* uchar YSKIP;                     */
/* MSBs Weighting Factor (0xA1) = 0x00          */
    0,      /* unsigned YSKIP_MSB : 4;          */
    0,      /* unsigned RegA0Unused : 3;        */
    0,      /* unsigned EnableBlank : 1;        */      
/* Y Border Color (0xA2) = 0x10                 */
    10, /* uchar YBorderColor;                  */
/* Cb Border Color (0xA3) = 0x80                */
    128,    /* uchar UBorderColor;              */
/* Cr Border Color (0xA4) = 0x80                */
    128,    /* uchar VBorderColor;              */
/* Null Array (0xA5) - (0xCF)                   */
    {0x00,0x00,0x00,            
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,    
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,    
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,    
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,    
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},   
/* HD Sync Line Count Array (0xD0)              */
    0x00,   /* uchar RAMAAddress;               */
/* HD Sync Line Type Array (0xD1)               */
    0x00,   /* uchar RAMBAddress;               */
/* HD Sync Line Pattern Array (0xD2)            */
    0x00,   /* uchar RAMCAddress;               */
/* HD Sync Value Array (0xD3)                   */
    0x00,   /* uchar RAMDAddress;               */ 
/* HD Sync Trigger (State 1) (0xD4)             */ 
    2,      /* unsigned HDLineCounter : 10;     */ 
/* HD Sync Trigger (State 2) (0xD5)             */ 
    0,      /* unsigned HDLineTypePtr : 2;      */ 
    0,      /* unsigned HDLinePatternPtr : 4;   */ 
/* HD Sync Trigger (State 3) (0xD6)             */ 
/* HD Sync Trigger (State 4) (0xD7)             */
    16,     /* unsigned HDDurationCtr : 10;     */
    0,      /* unsigned RegD6AUnused : 2;       */
    0,      /* unsigned HDEventTypePtr : 3;     */
    0,      /* unsigned RegD6BUnused : 1;       */
/* HD Sync Trigger Phase X LSBs (0xD8)          */
/* HD Sync Trigger Phase X MSBs (0xD9)          */
    256,    /* unsigned HDTriggerPhaseX : 12;   */
    0,      /* unsigned RegD9Unused : 4;        */
/* HD Sync Trigger Phase Y LSBs (0xDA)          */
    12,     /* unsigned HDTriggerPhaseY : 10;   */
/* HD Sync Trigger Phase Y MSBs (0xDB)          */
    0,      /* unsigned RegDBUnused : 6;        */
/* HD Output Control (0xDC)                     */
    1,      /* unsigned HDColorInterpolator : 1;*/
    0,      /* unsigned HDFullGain : 1;         */
    1,      /* unsigned HDRGB_YCbCr : 1;        */
    1,      /* unsigned HDActive : 1;           */
    0,      /* unsigned RegDCUnused : 4;        */
/* Null Array (0xDD - 0xEF)                     */
    {0x00,0x00,0x00,                            
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,    
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},   
/* Red Cursor Color1 (0xF0)                     */
    0x11,   /* uchar RCursorColor1;             */
/* Green Cursor Color1 (0xF1)                   */
    0x00,   /* uchar GCursorColor1;             */
/* Blue Cursor Color1 (0xF2)                    */
    0x00,   /* uchar BCursorColor1;             */
/* Red Cursor Color2 (0xF3)                     */
    0x00,   /* uchar RCursorColor2;             */
/* Green Cursor Color2 (0xF4)                   */
    0x00,   /* uchar GCursorColor2;             */
/* Blue Cursor Color2 (0xF5)                    */
    0x00,   /* uchar BCursorColor2;             */
/* Aux Red Cursor Color (0xF6)                  */
    0x00,   /* uchar AuxRCursorColor;           */
/* Aux Green Cursor Color (0xF7)                */
    0x00,   /* uchar AuxGCursorColor;           */
/* Aux Blue Cursor Color (0xF8)                 */
    0x00,   /* uchar AuxBCursorColor;           */
/* Horizontal Cursor Position (0xF9)            */
    0x00,   /* uchar HCursorPos;                */
/* Horizontal Hot Spot / MSBs H Cursor Position (0xFA)*/
    0,      /* unsigned HCursPosMSBs : 3;       */
    0,      /* unsigned HorHotSpot : 5;         */
/* Vertical Cursor Position (0xFB)              */
    0x00,   /* uchar VCursorPos;                */
/* Horizontal Hot Spot / MSBs H Cursor Position (0xFC)*/
    0,      /* unsigned VCursPosMSBs : 2;       */
    0,      /* unsigned RegFCUnused : 1;        */
    0,      /* unsigned VertHotSpot : 5;        */
/* Input Path Control (0xFD) = 0xB3             */
    1,      /* unsigned DownFormatDisable : 1;  */
    1,      /* unsigned RGBToYUVDisable : 1;    */
    4,      /* unsigned InputFormat : 3;        */
    0,      /* unsigned LUTLoadMode : 1;        */
    1,      /* unsigned CursorMode : 1;         */
    1,      /* unsigned LUTDisable : 1;         */
/* Cursor Bit Map Address (0xFE)                */
    0x00,   /* uchar CursorAddress;             */
/* Color LUT Map Address (0xFF)                 */
    0x00    /* uchar LUTAddress;                */      
};

SAA7105_LookUpTable _SAA7105_lookUpTable;
SAA7105_Cursor _SAA7105_cursorData;


/********************************************************************/
/* end of file                                                      */
/********************************************************************/

