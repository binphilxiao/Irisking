/*
 *  Copyright 2003 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* "@(#) DDK 1.10.00.23 07-02-03 (ddk-b12)" */
/********************************************************************************/
/* _saa7115.h file */
/********************************************************************************/
#ifndef __SAA7115_H
#define __SAA7115_H

#ifdef __cplusplus
extern "C" {
#endif

#include <saa7115.h>

#define _SAA7115_IIC_ADDR0       (0x42>>1) 
#define _SAA7115_IIC_ADDR1       (0x40>>1)

#define _SAA7115_TASKA              0 
#define _SAA7115_TASKB               1

typedef struct _SAA7115_Generics
{
    Uint8   chipVersion;
/* Increment Delay (0x01)           */
    Uns horIncDelay : 4;
    Uns gainHysteresis : 2;
    Uns whitePeakDisable : 1;
    Uns aosL2 : 1;
/* Analog Input Control 1 (0x02)    */
    Uns analogMuxMode : 4;
    Uns reg02Unused : 2;
    Uns amplifierType : 2;
/* Analog Input Control 2 (0x03)    */
    Uns aCh1GainMsb : 1;
    Uns aCh2GainMsb : 1;
    Uns agcControl : 1;
    Uns agcHold : 1;
    Uns colorPeakOff : 1;
    Uns agcDuringVBI : 1;
    Uns hLNRS : 1;
    Uns test : 1;
/* Analog Input Control 3 (0x04)    */
    Uint8 aCh1Gain;
/* Analog Input Control 4 (0x05)    */
    Uint8 aCh2Gain;
/* Horizontal Sync Start (0x06)     */
    Uint8 hSYNCStart;
/* Horizontal Sync Stop (0x07)      */
    Uint8 hSYNCStop;
/* Sync Control (0x08)              */
    Uns vertNoiseReduction : 2;
    Uns horPLLOpen : 1;
    Uns horTimeConstant : 2;
    Uns forceFieldFlag : 1;
    Uns fieldSelect : 1;
    Uns autoFieldDetect : 1;
/* Luminance Control (0x09)         */
    Uns lumaFilter : 4;
    Uns lumaBW : 1;
    Uns lumaDelay : 1;
    Uns yCombFilter : 1;
    Uns bypassYCombFilter : 1;
/* Luminance Brightness Adjustment (0x0A)  */
    Uint8 brightness;
/* Luminance Contrast Adjustment (0x0B)    */
    Uint8 contrast;
/* Chroma Saturation Adjustment (0x0C)     */
    Uint8 saturation;
/* Chroma Hue Control (0x0D)               */
    Uint8 hue;
/* Chroma Control 1 (0x0E)                 */
    Uns chromaCombFilter : 1;
    Uns autoChromaDetect : 1;
    Uns fastColorTimeConstant : 1;
    Uns disableChromaVertFilt : 1;
    Uns colorStandardDetect : 3;
    Uns clearDTO : 1;
/* Chroma Gain Control (0x0F)             */
    Uns chromaGain : 7;
    Uns autoChromaAGC : 1;
/* Chroma Control 2 (0x10)                */
    Uns lumaChromaBW : 3;
    Uns chromaBW : 1;
    Uns crOffsetAdjustment : 2;
    Uns cbOffsetAdjustment : 2;
/* Mode Delay Control (0x11)              */
    Uns lumaDelayCompensation : 3;
    Uns rts0Polarity : 1;
    Uns hSYNCDelay : 2;
    Uns rts1Polarity : 1;
    Uns colorOn : 1;
/* RT Signal Control (0x12)               */
    Uns rts0Output : 4;
    Uns rts1Output : 4;
/* RT/XPort Control (0x13)                */
    Uns ofts : 3;
    Uns fastHorSelect : 1;
    Uns xRVSSelect : 2;
    Uns hSYNCSelect : 1;
    Uns rtCEEnable : 1;
/* Analog/ADC (0x14)                      */
    Uns adcSampleDelay : 2;
    Uns auto1 : 1;
    Uns xtOutEnable : 1;
    Uns aOutSelect : 2;
    Uns agcUpdateType : 1;
    Uns saa7199Switch : 1;
/* VGATE Start (0x15)                     */
    Uint8 vGateStart;
/* VGATE Stop (0x16) */
    Uint8 vGateStop;
/* MISC/VGATE MSBs (0x17)                 */
    Uns vGateStartMsb : 1;
    Uns vGateStopMsb : 1;
    Uns altVGatePos : 1;
    Uns yLatency : 3;
    Uns llc2Enable : 1;
    Uns llcEnable : 1;  
/* Raw Data Gain (0x18)                  */
    Uint8 rawGain;
/* Raw Data Offset (0x19)                */
    Uint8 rawOffset;
/* Color Killer Thresholds (0x1A)        */
    Uns secamColorKiller : 4;
    Uns ntscColorKiller : 4;
/* MISC/TWCRDET (0x1B)                   */
    Uns fsqc : 1;
    Uns autoColorLimiter : 1;
    Uns reg1BAUnused : 2;
    Uns ofts3 : 1;
    Uns reg1BBUnused : 1;
    Uns tvDetectThreshold : 2;
/* Enhanced Comb Control 1 (0x1C)       */
    Uns combThreshold : 2;
    Uns medianFilterGain : 2;
    Uns vertDiffGain : 2;
    Uns horDiffGain : 2;
/* Enhanced Comb Control 2 (0x1D)       */
    Uns vertDiffThreshold : 2;
    Uns reg1DUnused : 6;
/* Status Byte Decoder 1 (0x1E)         */
    Uns colorStandard : 2;
    Uns whitePeakActive : 1;
    Uns limitGainBottom : 1;
    Uns limitGainTop : 1;
    Uns slowTimeConstant : 1;
    Uns hSYNCLock : 1;
    Uns fieldLength : 1;
/* Status Byte Decoder 2 (0x1F)         */
    Uns captureReady : 1;
    Uns copyProtection : 1;
    Uns colorStripe : 1;
    Uns burstType3 : 1;
    Uns stableTimebase : 1;
    Uns fieldID : 1;
    Uns hVLoop : 1;
    Uns interlaceDetect : 1;
/* Null Array (0x20) - (0x2F)           */
    Uint8 nullArray1[16];
/* Audio Data (0x30) - (0x3F)           */
    Uint8 audioData[16];
/* VBI Data Slicer (0x40) - (0x7F)      */
    Uint8 vBISliceData[64];     
}_SAA7115_Generics;

typedef struct _SAA7115_Globals
{
/* Global Control (0x80)                */
    Uns iPortMode : 4;
    Uns taskAEnable : 1;
    Uns taskBEnable : 1;
    Uns reg80Unused : 1;
    Uns continuousFieldMode : 1;
/* Reserved (0x81)                      */
    Uns vEAV : 2;
    Uns fTime : 1;
    Uns reg81Unused : 5;
/* Unused (0x82)                        */
    Uint8 reg82Unused;
/* Reserved (0x83)                      */
    Uns xPortEnable : 2;
    Uns xRDYType : 1;
    Uns reg83AUnused : 1;
    Uns xCLKSelect : 2;
    Uns reg83BUnused : 2;
/* I Port Signal Definitions (0x84)     */
    Uns igpHSelect : 2;
    Uns igpVSelect : 2;
    Uns igp1SelectLSBs : 2;
    Uns igp0SelectLSBs : 2;
/* I Port Signal Polarity (0x85)        */
    Uns idqPolarity : 1; 
    Uns iHSYNCPolarity : 1;
    Uns iVSYNCPolarity : 1;
    Uns igp0Polarity : 1;
    Uns Igp1Polarity : 1;
    Uns videoDataLimited : 1;
    Uns dataOutputType : 2;
/* I Port FIFO (0x86)                   */
    Uns faeFlagType : 2;
    Uns fafFlagType : 2;
    Uns igp0SelectMSB : 1;
    Uns igp1SelectMSB : 1;
    Uns iPortDataEnable : 1;
    Uns dataPackingMode : 1;
/* I Port Delay (0x87)                  */
    Uns iPortEnable : 2;
    Uns reg87Unused : 2;
    Uns iCLKControl : 2;
    Uns idqControl : 2;
/* Power Save Control (0x88)            */
    Uns decoderOperational : 1;
    Uns scalerOperational : 1;
    Uns reg88Unused : 1;
    Uns audioClockEnable : 1;
    Uns devProgControl : 1;
    Uns resetScaler : 1;
    Uns analogCh1Enable : 1;
    Uns AnalogCh2Enable : 1;
/* Null Array (0x89) - (0x8E)           */
    Uint8 nullArray1[6];
/* Scaler Status Information (0x8F)     */
    Uns scalerFIDOut : 1;
    Uns scalerFIDIn : 1;
    Uns errorFlag : 1;
    Uns devProgStatus : 1;
    Uns fifoOVFlag : 1;
    Uns fifoAFFlag : 1;
    Uns iTRIStatus : 1;
    Uns xTRIStatus : 1;
}_SAA7115_Globals;

typedef struct _SAA7115_Task
{
/* Task handling control (0x90) (0xC0)   */
    Uns eventTrigger : 2;
    Uns repeatTask : 1;
    Uns fieldSkipType : 3;
    Uns outputFieldID : 1;
    Uns conlh : 1;
/* X Port Format (0x91) (0xC1)           */
    Uns yuvInputFormat : 1;
    Uns chromaPerLine : 2;
    Uns scalerDataContinuous : 1;
    Uns scalerInputSource : 2;
    Uns hldfv : 1;
    Uns conlv : 1;
/* X Port Input Ref (0x92) (0xC2)        */
    Uns xDQNotUsed : 1;
    Uns xDQPolarity : 1;
    Uns xRHEdgeType : 1;
    Uns xPortSyncVia656 : 1;
    Uns xRVEdgeType : 1;
    Uns xRVSignalType : 1;
    Uns xFieldIDType : 1;
    Uns xFieldEdgeType : 1;
/* I Port Format (0x93) (0xC3)           */
    Uns iPortDataFormat : 3;
    Uns leadingYLines : 2;
    Uns skipYLineFlag : 1;
    Uns ins80 : 1;
    Uns ccir656Enable : 1;
/* Window Sizes (0x94 - 0x9F) (0xC4 - 0xCF) */
    Uint16 xInputOffset;
    Uint16 xInputLength;
    Uint16 yInputOffset;
    Uint16 yInputLength;
    Uint16 xOutputLength;
    Uint16 yOutputLength;
/* Horizontal Prescaling (0xA0) (0xD0)   */
    Uint8 xPreScale;
/* Accumulation Length (0xA1) (0xD1)    */
    Uint8 xAccLength;
/* Prescaler DC Gain/FIR Prefilter Control (0xA2) (0xD2)*/
    Uns scalerDCGain : 3;
    Uns xACLWeighting : 1;
    Uns yPreFilterType : 2;
    Uns cxPreFilterType : 2;
/* Unused (0xA3)                        */
    Uint8 regA3Unused;
/* Luminance brightness (0xA4) (0xD4)   */
    Uint8 brightness;
/* Luminance contrast (0xA5) (0xD5)     */
    Uint8 contrast;
/* Luminance saturation (0xA6) (0xD6)   */
    Uint8 saturation;
/* Unused (0xA7)                        */
    Uint8 regA7Unused;
/* Horizontal scaling increment luma (0xA8 - 0xA9) (0xD8 - 0xD9)*/
    Uint16 xLumaIncrement;
/* Horizontal phase offset luma (0xAA) (0xDA)*/
    Uint8 xLumaPhaseOffset;
/* Unused (0xAB) */
    Uint8 regABUnused;
/* Horizontal scaling increment chroma (0xAC - 0xAD) (0xDC - 0xDD)*/
    Uint16 xChromaIncrement;
/* Horizontal phase offset chroma (0xAE) (0xDE)*/
    Uint8 xChromaPhaseOffset;
/* Unused (0xAF) (0xDF)                        */
    Uint8 regAFUnused;
/* Vertical scaling increment luma (0xB0 - 0xB1) (0xE0 - 0xE1)*/
    Uint16 yLumaIncrement;
/* Vertical scaling increment chroma (0xB2 - 0xB3) (0xE2 - 0xE3)*/
    Uint16 yChromaIncrement;
/* Vertical scaling mode control (0xB4) (0xE4)*/
    Uns verticalScalingType : 1;
    Uns regB4AUnused : 3;
    Uns mirrorLineFlag : 1;
    Uns regB4BUnused : 3;
/* Null Array (0xB5 - 0xB7) (0xE5 - 0xE7)       */
    Uint8 nullArray1[3];
/* Vertical Phase Offset Chroma (0xB8 - 0xBB) (0xE8 - 0xEB)*/
    Uint8 yChromaPhaseOffset[4];
/* Vertical Phase Offset Luma (0xBC - 0xBF) (0xEC - 0xEF)    */
    Uint8 yLumaPhaseOffset[4];
} _SAA7115_Task;

typedef struct _SAA7115_PLL2
{
/* LFCO Per Line (0xF0)*/
    Uint8 splpl;
/* Parameter Select (0xF1)*/
    Uns splpl8 : 1;
    Uns sphSel : 1;
    Uns spMod : 2;
    Uns sppi : 4;
/* Nominal PLL2 DTO (0xF2 - 0xF3)*/
    Uint16 spnInc;
/* PLL2 Status (0xF4)*/
    Uns spLock : 1;
    Uns regF2Unused : 6;
/* Pulse generator Line Length (0xF5)*/
    Uint8 pgLen;
/* Pulse A Position (0xF6)*/
    Uns pgLenMsb : 1;
    Uns pgHSel : 1;
    Uns pgRes : 1;
    Uns regF6Unused : 1;
    Uns pgHAPS : 4;
/* Pulse A Position (0xF7)*/
    Uint8 pgHAPSMsb;
/* Pulse B Position (0xF8)*/
    Uns regF8Unused : 4;
    Uns pgHBPS : 4;
/* Pulse B Position (0xF9)*/
    Uint8 pgHBPSMsb;
/* Pulse C Position (0xFA)*/
    Uns regFAUnused : 4;
    Uns pgHCPS : 4;
/* Pulse C Position (0xFB)*/
    Uint8 pgHCPSMsb;
/* Null Array (0xFC) - (0xFE)*/
    Uint8 nullArray1[3];
/* S_PLL max (0xFF)*/
    Uns spTHRM : 4;
    Uns spTHRL : 4;
} _SAA7115_PLL2;

typedef struct _SAA7115_Regs
{
    _SAA7115_Generics generics;
    _SAA7115_Globals globals;
    _SAA7115_Task taskA;
    _SAA7115_Task taskB;
    _SAA7115_PLL2 pll2;
}_SAA7115_Regs;                        

extern _SAA7115_Regs _SAA7115_settingsDef[2];

typedef struct _SAA7115_XScaleParam
{
    Uint8 acl;
    Uint8 c21;
    Uint8 dcGain;
}_SAA7115_XScaleParam;

typedef struct _SAA7115_XScale
{
    _SAA7115_XScaleParam xValues[64];
}_SAA7115_XScale;
extern  _SAA7115_XScale _SAA7115_xScale;


#ifdef __cplusplus
}
#endif


#endif /*#ifndef __SAA7115_H*/

/********************************************************************************/
/* end of file */
/********************************************************************************/



