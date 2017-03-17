/*
 *  Copyright 2003 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* "@(#) DDK 1.10.00.23 07-02-03 (ddk-b12)" */
/********************************************************************************/
/* _saa7105.h file */
/********************************************************************************/
#ifndef __SAA7105_H
#define __SAA7105_H

#ifdef __cplusplus
extern "C" {
#endif

#include <saa7105.h>

#define _SAA7105_IICADDR    (0x88>>1)

extern SAA7105_Cursor _SAA7105_cursorData;

typedef struct _SAA7105_Regs
{
    Uint8 status;
    Uint8 nullArray1[0x15];
/* Common DAC Adjust (0x16) */
    Uns dacAdjust : 4;
    Uns unusedDACAdjust : 4;
/* Red DAC Adjust (0x17)    */
    Uns redDACAdjust : 5;
    Uns unusedRDACAdjust : 3;
/* Green DAC Adjust (0x18)  */
    Uns greenDACAdjust : 5;
    Uns unusedGDACAdjust : 3;
/* Blue DAC Adjust (0x19)   */
    Uns blueDACAdjust : 5;
    Uns unusedBDACAdjust : 3;
/* MSM Threshold (0x1A)     */
    Uint8 thrldMSM;
/* Monitor sense mode (0x1B)*/
    Uns blueComp : 1;
    Uns greenComp : 1;
    Uns redComp : 1;
    Uns reg1BUnused : 2;
    Uns outputEnableMSM : 1;
    Uns autoEnableMSM : 1;
    Uns enableMSM : 1;
/* Chip identification (0x1C) */
    Uint8 chipID;
/* Null Array (0x1D) - (0x25) */
    Uint8 nullArray2[9];
/* Wide screen signal (0x26) - (0x27)*/
    Uint8 wideScreenLSBits;
    Uns wideScreenMSBits : 6;
    Uns wideScreenunused : 1;
    Uns wideScreenEnable : 1;
/* Burst start (0x28)              */
    Uns burstStart : 6;
    Uns burstUnused : 2;
/* Burst start (0x29)              */
    Uns burstEnd : 6;
    Uns reg29Unused : 1;
    Uns syncResetEnable : 1;
/* Copy generation (0x2A) - (0x2C) */
    Uint8 copyGen0;
    Uint8 copyGen1;
    Uns copyGenMSBits : 4;
    Uns reg2CUnused : 3;
    Uns copyGenEnable : 1;
/* Output Port Control (0x2D)     */
    Uns reg2DUnused : 1;
    Uns cvbsEn2 : 1;
    Uns clk2En : 1;
    Uns encOff : 1;
    Uns cEn : 1;
    Uns cvbsEn0 : 1;
    Uns cvbsEn1 : 1;
    Uns vbsEn : 1;
/* Null Array (0x2E) - (0x36)    */
    Uint8 nullArray3[9];
/* Input Path Control (0x37)     */
    Uns xFilterActive : 1;
    Uns inputLevel : 1;
    Uns cursorZoom : 1;
    Uns reg37AUnused : 1;
    Uns yUpscaleFilter : 2;
    Uns yUpscaleActive : 1;
    Uns reg37BUnused : 1;
/* Gain luminance for RGB (0x38)*/
    Uns rgbGainLuminance : 5;
    Uns reg38Unused : 3;
/* Gain chrominance for RGB (0x39) */
    Uns rgbGainChrominance : 5;
    Uns reg39Unused : 3;
/* Input Port Control (0x3A)       */
    Uns chromaBinary : 1;
    Uns lumaBinary : 1;
    Uns compSyncEnable : 1;
    Uns yuvToRGBBypass : 1;
    Uns syncVia656 : 1;
    Uns svynt : 1;
    Uns reg3AUnused : 1;
    Uns colorBarsEnable : 1;
/* Null Array (0x3B) - (0x53)     */
    Uint8 nullArray4[0x19];       
/* VPS Enable (0x54)              */
    Uns slot : 1;
    Uns edge : 1;
    Uns reg54AUnused : 2;
    Uns gpEnable : 1;
    Uns gpData : 1;
    Uns reg54BUnused : 1;
    Uns vpsEnable : 1;
/* VPS Byte5 to Byte14 (0x55) - (0x59)*/
    Uint8 vpsByte5;
    Uint8 vpsByte11;
    Uint8 vpsByte12;
    Uint8 vpsByte13;
    Uint8 vpsByte15;
/* VPS Enable (0x5A)                  */
    Uint8 chromaPhase;
/* Gain Cb (0x5B)                     */
    Uint8 cbGain;
/* Gain Cr (0x5C)                     */
    Uint8 crGain;
/* Black Level (0x5D)                 */
    Uns blackLevel : 6;
    Uns reg5DUnused : 1;
    Uns uGainMSB : 1;
/* Blank Level (0x5E)                 */
    Uns blankLevel : 6;
    Uns reg5EUnused : 1;
    Uns vGainMSB : 1;
/* Black Level (0x5F)                 */
    Uns vBIBlankLevel : 6;
    Uns ccrFilter : 2;
/* Null Byte (0x60)                   */
    Uint8 nullByte60;
/* Standard Control (0x61)            */
    Uns fise : 1;
    Uns palEnable : 1;
    Uns chromaBW : 1;
    Uns reg61Unused : 1;
    Uns whiteLevel : 1;
    Uns palSwitch : 1;
    Uns downA : 1;
    Uns downD : 1;
/* Burst Amplitude (0x62)            */
    Uns burstAmplitude : 7;
    Uns rtCEEnable : 1;
/* Sub Carrier 0-3 (0x63) - (0x66)   */
    Uint8 subCarrier0;
    Uint8 subCarrier1;
    Uint8 subCarrier2;
    Uint8 subCarrier3;
/*  Uns int SubCarrier;              */
/* Closed Captioning (0x67) - (0x6A) */
    Uint8 line21OddF0;
    Uint8 line21OddF1;
    Uint8 line21EvenF0;
    Uint8 line21EvenF1;              
/* Null Byte (0x6B)                  */
    Uint8 nullByte6B;
/* Horizontal Trigger (0x6C)         */
    Uint8 hTrigger;
/* H & V Trigger (0x6D)              */
    Uns vTrigger : 5;
    Uns hTriggerMSBs : 3;
/* Multi Control (0x6E)              */
    Uns fieldControl : 2;
    Uns lumaDelay : 2;
    Uns phaseResetMode : 2;
    Uns blankLevelOut : 1;
    Uns vTrigNegative : 1;
/* Closed Caption/Teletext Enable (0x6F)*/
    Uns cCLine : 5;
    Uns teletextEnable : 1;
    Uns cCEnable : 2;
/* Active Display Window Horizontal Start (0x70)*/
    Uint8 hStart;
/* Active Display Window Horizontal End (0x71)  */
    Uint8 hEnd;
/* Active Display Window MSBs (0x72)            */
    Uns hStartMSB : 3;
    Uns reg72BUnused : 1;
    Uns hEndMSB : 3;
    Uns reg72AUnused : 1;                       
/* Teletext Horizontal Start (0x73)             */
    Uint8 teletextHStart;
/* Teletext Horizontal Start (0x74)             */
    Uns teletextHDelay : 4;
    Uns reg74Unused : 4;
/* CSYNC Advance (0x75)                         */
    Uns reg75Unused : 3;
    Uns cSyncAdvance : 5;
/* Teletext Odd Vertical Start (0x76)           */
    Uint8 teletextOddVStart;                    
/* Teletext Odd Vertical Start (0x77)           */
    Uint8 teletextOddVEnd;
/* Teletext Odd Vertical Start (0x78)           */
    Uint8 teletextEvenVStart;
/* Teletext Odd Vertical Start (0x79)           */
    Uint8 teletextEvenVEnd;
/* First Active Line (0x7A)                     */
    Uint8 fal;
/* Last Active Line (0x7B)                      */
    Uint8 lal;
/* TTX mode, MSB vertical (0x7C)                */
    Uns ttxOVSMsb : 1;
    Uns ttxOVEMsb : 1;
    Uns ttxEVSMsb : 1;
    Uns ttxEVEMsb : 1;
    Uns falMsb : 1;
    Uns OldTTXProtocol : 1;
    Uns lalMsb : 1;
    Uns teletext60HzEnable : 1;
/* Null Byte (0x7D) */
    Uint8 nullByte7D;
/* Disable Teletext Line (0x7E) - (0x7F)       */
    Uint8 ttxLineLsbOff;
    Uint8 ttxLineMsbOff;
/* FIFO Status (0x80)                          */
    Uns fifoUnderflow : 1;
    Uns fifoOverflow : 1;
    Uns bufferFIFOOverflow : 1;
    Uns inputFifoError : 1;
    Uns reg80Unused : 4;
/* Disable Teletext Line (0x81) - (0x83)       */
    Uint8 pixClock0;
    Uint8 pixClock1;
    Uint8 pixClock2;
/* Pixel Clock Control (0x84)                  */
    Uns pclkInDiv : 2;
    Uns pclkOutDiv : 2;
    Uns bypassInputFIFO : 1;
    Uns fifoResetOnField : 1;
    Uns pclkSyncVSYNC : 1;
    Uns pclkSingleEnded : 1;
/* FIFO Control (0x85) */
    Uns fifoThreshold : 4;
    Uns reg85Unused : 3;
    Uns nonDVOCompliant : 1;
/* Null Array (0x86) - (0x8F)                   */
    Uint8 bullArray5[10];
/* Horizontal Offset (0x90)                     */
    Uint8 xOfs;
/* Horizontal Offset (0x91)                     */
    Uint8 xPix;
/* Vertical Odd Offset (0x92)                   */
    Uint8 yOfsOdd;
/* Vertical Even Field Offset (0x93)            */
    Uint8 yOfsEven;
/* MSBs (0x94)                                  */
    Uns xOfsMsb : 2;
    Uns xPixMsb : 2;
    Uns yOfsOddMsb : 2;
    Uns yOfsEvenMsb : 2;
/* Line Number (0x95)                           */
    Uint8 yPix;                                 
/* Scaler Control (0x96)                        */
    Uns yPixMsb : 2;
    Uns reg96Unused : 1;
    Uns lumaBooster : 1;
    Uns interlacedCursor : 1;
    Uns masterSlaveMode : 1;
    Uns cboPolarity : 1;
    Uns frameSyncEnable : 1;
/* Sync Control (0x97)                          */
    Uns hSyncPolarity : 1;
    Uns hSyncOutput : 1;
    Uns vSyncPolarity : 1;
    Uns vSyncOutput : 1;
    Uns frameSyncPolarity : 1;
    Uns fieldOutput : 1;
    Uns vSyncMode : 1;
    Uns hSyncMode : 1;
/* Line Length (0x98)                          */
    Uint8 hLen;
/* Input Delay (0x99)                          */
    Uns hLenMsb : 4;
    Uns idel : 4;
/* Horizontal Increment (0x9A)                 */
    Uint8 xInc;
/* Vertical Increment (0x9B)                   */
    Uint8 yInc;
/* MSBs Hor/Vert Increment (0x9C)              */
    Uns xIncMsb : 4;
    Uns yIncMsb : 4;
/* Weighting Factor Odd (0x9D)                 */
    Uint8 yIWGTO;
/* Weighting Factor Even (0x9E)                */
    Uint8 yIWGTE;
/* MSBs Weighting Factor (0x9F)                */
    Uns yIWGTOMsb : 4;
    Uns yIWGTEMsb : 4;
/* Vertical Line Skip (0xA0)                   */
    Uint8 ySkip;
/* MSBs Weighting Factor (0xA1)                */
    Uns ySkipMsb : 4;
    Uns regA0Unused : 3;
    Uns enableBlank : 1;
/* Y Border Color (0xA2)                       */
    Uint8 yBorderColor;
/* U Border Color (0xA3)                       */
    Uint8 uBorderColor;
/* V Border Color (0xA4)                       */
    Uint8 vBorderColor;
/* Null Array (0xA5) - (0xCF)                  */
    Uint8 nullArray6[0x2B];
/* HD Sync Line Count Array (0xD0)             */
    Uint8 ramAAddress;
/* HD Sync Line Type Array (0xD1)              */
    Uint8 ramBAddress;
/* HD Sync Line Pattern Array (0xD2)           */
    Uint8 ramCAddress;
/* HD Sync Value Array (0xD3)                  */
    Uint8 ramDAddress;
/* HD Sync Trigger (State 1-4) (0xD4 - 0xD5)   */
    Uns hdLineCounter : 10;
    Uns hdLineTypePtr : 2;
    Uns hdLinePatternPtr : 4;
/* HD Sync Trigger (State 1-4) (0xD6 - 0xD7)   */
    Uns hdDurationCtr : 10;
    Uns regD6AUnused : 2;
    Uns hdEventTypePtr : 3;
    Uns regD6BUnused : 1;
/* HD Sync Trigger Phase X (0xD8 - 0xD9)       */
    Uns hdTriggerPhaseX : 12;
    Uns regD9Unused : 4;
/* HD Sync Trigger Phase Y (0xDA - 0xDB)       */
    Uns hdTriggerPhaseY : 10;
    Uns regDBUnused : 6;
/* HD Output Control (0xDC)                    */
    Uns hdColorInterpolator : 1;
    Uns hdFullGain : 1;
    Uns hdRGB_YCbCr : 1;
    Uns hdActive : 1;
    Uns regDCUnused : 4;
/* Null Array (0xDD) - (0xEF)                  */
    Uint8 nullArray7[0x13];
/* R Cursor Color1 (0xF0)                      */
    Uint8 redCursorColor1;
/* G Cursor Color1 (0xF1)                      */
    Uint8 greenCursorColor1;
/* B Cursor Color1 (0xF2)                      */
    Uint8 blueCursorColor1;
/* R Cursor Color2 (0xF3)                      */
    Uint8 redCursorColor2;
/*  G Cursor Color2 (0xF4)                     */
    Uint8 greenCursorColor2;
/* B Cursor Color2 (0xF5)                      */
    Uint8 blueCursorColor2;
/* Aux R Cursor Color (0xF6)                   */
    Uint8 auxRCursorColor;
/* Aux G Cursor Color (0xF7)                   */
    Uint8 auxGCursorColor;
/* Aux B Cursor Color (0xF8)                   */
    Uint8 auxBCursorColor;
/* Horizontal Cursor Position (0xF9)           */
    Uint8 hCursorPos;
/* Horizontal Hot Spot / MSBs H Cursor Position (0xFA)*/
    Uns hCursPosMSBs : 3;
    Uns horHotSpot : 5;
/* Vertical Cursor Position (0xFB)                    */
    Uint8 vCursorPos;
/* Horizontal Hot Spot / MSBs H Cursor Position (0xFC) */
    Uns vCursPosMSBs : 2;
    Uns regFCUnused : 1;
    Uns vertHotSpot : 5;
/* Input Path Control (0xFD)                           */
    Uns downFormatDisable : 1;
    Uns rgbToYUVDisable : 1;
    Uns inputFormat : 3;
    Uns lutLoadMode : 1;
    Uns cursorMode : 1;
    Uns lutDisable : 1;
/* Cursor Bit Map Address (0xFE)                       */
    Uint8 cursorAddress;
/* Color LUT Map Address (0xFF)                        */
    Uint8 lutAddress;

}_SAA7105_Regs;
extern _SAA7105_Regs _SAA7105_settingsDef;
extern _SAA7105_Regs _SAA7105_settingsVGA;

typedef struct _SAA7105_HDLineCount
{
    Uns count : 10;
    Uns unused : 2;
    Uns typeEntry : 4;
}_SAA7105_HDLineCount;

typedef struct _SAA7105_HDLineType
{
    Uns pattern0Entry : 3;
    Uns unused0 : 1;
    Uns pattern1Entry : 3;
    Uns unused1 : 1;
    Uns pattern2Entry : 3;
    Uns unused2 : 1;
    Uns pattern3Entry : 3;
    Uns unused3 : 1;
    Uns pattern4Entry : 3;
    Uns unused4 : 1;
    Uns pattern5Entry : 3;
    Uns unused5 : 1;
    Uns pattern6Entry : 3;
    Uns unused6 : 1;
    Uns pattern7Entry : 3;
    Uns unused7 : 1;
}_SAA7105_HDLineType;

typedef struct _SAA7105_HDLinePattern
{
    Uns time0 : 10;
    Uns unused0 : 2;
    Uns value0Entry : 4;
    Uns time1 : 10;
    Uns unused1 : 2;
    Uns value1Entry : 4;
    Uns time2 : 10;
    Uns unused2 : 2;
    Uns value2Entry : 4;
    Uns time3 : 10;
    Uns unused3 : 2;
    Uns value3Entry : 4;
} _SAA7105_HDLinePattern;

typedef struct _SAA7105_HDSyncValue
{
    Uns value : 8;
    Uns hsmSync : 1;
    Uns vsmSync : 1;
    Uns unused : 6;
} _SAA7105_HDSyncValue;

typedef struct _SAA7105_HDSyncGen
{
    Uns lcAddress;
    _SAA7105_HDLineCount lineCount[15];
    Uns ltAddress;
    _SAA7105_HDLineType lineType[15];
    Uns lpAddress;
    _SAA7105_HDLinePattern linePattern[7];
    Uns svAddress;
    _SAA7105_HDSyncValue syncValue[8];
}_SAA7105_HDSyncGen;

extern _SAA7105_HDSyncGen _SAA7105_hdSyncGen0;
extern _SAA7105_HDSyncGen _SAA7105_hdSyncGen480P;  
extern _SAA7105_HDSyncGen _SAA7105_hdSyncGen720P;  
extern _SAA7105_HDSyncGen _SAA7105_hdSyncGen1080I;  
extern _SAA7105_HDSyncGen _SAA7105_hdSyncGenVGA;  
extern _SAA7105_HDSyncGen _SAA7105_hdSyncGenSVGA;  
extern _SAA7105_HDSyncGen _SAA7105_hdSyncGenXGA;
#ifdef __cplusplus
}
#endif


#endif /*#ifndef __SAA7105_H*/

/********************************************************************************/
/* end of file */
/********************************************************************************/



