/*
 *  Copyright 2003 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* "@(#) DDK 1.10.00.23 07-02-03 (ddk-b12)" */
/********************************************************************/
/* _saa7115.c file                                                      */
/********************************************************************/
#include "_saa7115.h"
 
_SAA7115_Regs _SAA7115_settingsDef[2] = 
{
/********************************/
/* DDECA Structure*/
/********************************/
{
/********************************/
/* Generic Structure*/
/********************************/
{
/* Chip Version (0x00) = 0x00   */
    0x00,
/* Increment Delay (0x01) = 0x08          */
    8,  /* unsigned HorIncDelay : 4;      */
    0,  /* unsigned GainHysteresis : 2;   */
    0,  /* unsigned WhitePeakDisable : 1; */
    0,  /* unsigned AOSL2 : 1;            */
/* Analog Input Control 1 (0x02) = 0xC0   */
    0,  /* unsigned AnalogMuxMode : 4;    */
    0,  /* unsigned Reg02Unused : 2;      */
    3,  /* unsigned AmplifierType : 2;    */
/* Analog Input Control 2 (0x03) = 0x20   */
    0,  /* unsigned ACH1GainMSB : 1;      */
    0,  /* unsigned ACH2GainMSB : 1;      */
    0,  /* unsigned AGCControl : 1;       */
    0,  /* unsigned AGCHold : 1;          */
    0,  /* unsigned ColorPeakOff : 1;     */
    1,  /* unsigned AGCDuringVBI : 1;     */
    0,  /* unsigned HLNRS : 1;            */
    0,  /* unsigned Test : 1;             */
/* Analog Input Control 3 (0x04) = 0x90   */
    0x90,   /* uchar ACH1Gain;            */
/* Analog Input Control 4 (0x05) = 0x90   */
    0x90,   /* uchar ACH2Gain;            */
/* Horizontal Sync Start (0x06) = 0xEB    */
    0xEA,   /* uchar HSYNCStart;          */
/* Horizontal Sync Stop (0x07) = 0xE0     */
    0xE0,   /* uchar HSYNCStop;           */
/* Sync Control (0x08) = 0xD0              */
    0,  /* unsigned VertNoiseReduction : 2;*/
    0,  /* unsigned HorPLLOpen : 1;        */
    2,  /* unsigned HorTimeConstant : 2;   */
    0,  /* unsigned ForceFieldFlag : 1;    */
    1,  /* unsigned FieldSelect : 1;       */
    1,  /* unsigned AutoFieldDetect : 1;   */
/* Luminance Control (0x09) = 0x50         */
    0,  /* unsigned LumaFilter : 4;        */
    1,  /* unsigned LumaBW : 1;                 */
    0,  /* unsigned LumaDelay : 1;              */
    1,  /* unsigned YCombFilter : 1;            */
    0,  /* unsigned BypassYCombFilter : 1;      */
/* Luminance Brightness Adjustment (0x0A) = 0x80*/
    0x80,   /* uchar Brightness;                */
/* Luminance Contrast Adjustment (0x0B) = 0x40  */
    0x40,   /* uchar Contrast;                  */
/* Chroma Saturation Adjustment (0x0C) = 0x40   */
    0x40,   /* uchar Saturation;                */
/* Chroma Hue Control (0x0D) = 0x00             */
    0x00,   /* uchar Hue;                       */
/* Chroma Control 1 (0x0E) = 0x0B               */
    1,  /* unsigned ChromaCombFilter : 1;       */
    1,  /* unsigned AutoChromaDetect : 1;       */
    0,  /* unsigned FastColorTimeConstant : 1;  */
    1,  /* unsigned DisableChromaVertFilt : 1;  */
    0,  /* unsigned ColorStandardDetect : 3;    */
    0,  /* unsigned ClearDTO : 1;               */
/* Chroma Gain Control (0x0F) = 0x24            */
    0x24,   /* unsigned ChromaGain : 7;         */
    0,      /* unsigned AutoChromaAGC : 1;      */
/* Chroma Control 2 (0x10) = 0x0E               */
    6,  /* unsigned LumaChromaBW : 3;           */
    1,  /* unsigned ChromaBW : 1;               */
    0,  /* unsigned CrOffsetAdjustment : 2;     */
    0,  /* unsigned CbOffsetAdjustment : 2;     */
/* Mode Delay Control (0x11) = 0x00             */
    0,  /* unsigned LumaDelayCompensation : 3;  */
    0,  /* unsigned RTS0Polarity : 1;           */
    0,  /* unsigned HSYNCDelay : 2;             */
    0,  /* unsigned RTS1Polarity : 1;           */
    0,  /* unsigned ColorOn : 1;                */
/* RT Signal Control (0x12) = 0xFD              */
    0xD,    /* unsigned RTS0Output : 4;         */
    0xF,    /* unsigned RTS1Output : 4;         */
/* RT/XPort Control (0x13) = 0x80               */
    0,  /* unsigned OFTS : 3;                   */
    0,  /* unsigned FastHorSelect : 1;          */
    0,  /* unsigned XRVSSelect : 2;             */
    0,  /* unsigned HSYNCSelect : 1;            */
    1,  /* unsigned RTCEEnable : 1;             */
/* Analog/ADC (0x14) = 0x04                     */
    0,  /* unsigned ADCSampleDelay : 2;         */
    1,  /* unsigned AUTO1 : 1;                  */
    0,  /* unsigned XTOUTEnable : 1;            */
    0,  /* unsigned AOUTSelect : 2;             */
    0,  /* unsigned AGCUpdateType : 1;          */
    0,  /* unsigned SAA7199Switch : 1;          */
/* VGATE Start (0x15) = 0x10                    */
    0,  /* uchar VGateStart;                    */
/* VGATE Stop (0x16) = 0x02                     */
    1,  /* uchar VGateStop;                     */
/* MISC/VGATE MSBs (0x17) = 0xDA                */
    0,  /* unsigned VGateStartMSB : 1;          */
    1,  /* unsigned VGateStopMSB : 1;           */
    0,  /* unsigned AltVGatePos : 1;            */
    3,  /* unsigned YLatency : 3;               */
    1,  /* unsigned LLC2Enable : 1;             */
    1,  /* unsigned LLCEnable : 1;              */ 
/* Raw Data Gain (0x18) = 0x40                  */
    0x40,   /* uchar RawGain;                   */
/* Raw Data Offset (0x19) = 0x80                */
    0x80,   /* uchar RawOffset                  */
/* Color Killer Thresholds (0x1A) = 0x77        */
    7,  /* unsigned SECAMColorKiller : 4;       */
    7,  /* unsigned NTSCColorKiller : 4;        */
/* MISC/TWCRDET (0x1B) = 0x42                   */
    0,  /* unsigned FSQC : 1;                   */
    1,  /* unsigned AutoColorLimiter : 1;       */
    0,  /* unsigned Reg1BAUnused : 2;           */
    0,  /* unsigned OFTS3 : 1;                  */
    0,  /* unsigned Reg1BBUnused : 1;           */
    1,  /* unsigned TVDetectThreshold : 2;      */
/* Enhanced Comb Control 1 (0x1C) = 0xA9        */
    1,  /* unsigned CombThreshold : 2;          */
    2,  /* unsigned MedianFilterGain : 2;       */
    2,  /* unsigned VertDiffGain : 2;           */
    2,  /* unsigned HorDiffGain : 2;            */
/* Enhanced Comb Control 2 (0x1D) = 0x01        */
    1,  /* unsigned VertDiffThreshold : 2;      */
    0,  /* unsigned Reg1DUnused : 6;            */
/* Status Byte Decoder 1 (0x1E) = 0x00          */
    0,  /* unsigned ColorStandard : 2;          */
    0,  /* unsigned WhitePeakActive : 1;        */
    0,  /* unsigned LimitGainBottom : 1;        */
    0,  /* unsigned LimitGainTop : 1;           */
    0,  /* unsigned SlowTimeConstant : 1;       */
    0,  /* unsigned HSYNCLock : 1;              */
    0,  /* unsigned FieldLength : 1;            */
/* Status Byte Decoder 2 (0x1F) = 0x00          */
    0,  /* unsigned CaptureReady : 1;           */
    0,  /* unsigned CopyProtection : 1;         */
    0,  /* unsigned ColorStripe : 1;            */
    0,  /* unsigned BurstType3 : 1;             */
    0,  /* unsigned StableTimebase : 1;         */
    0,  /* unsigned FieldID : 1;                */
    0,  /* unsigned HVLoop : 1;                 */
    0,  /* unsigned InterlaceDetect : 1;        */
/* Null Array (0x20) - (0x2F)                   */
    {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,   
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},   
/* Audio Data (0x30) - (0x3F)                   */
    {0xDE,0x6f,0x01,0x00,0x66,0x66,0x1D,0x00,
    0x03,0x10,0x80,0x00,0x00,0x00,0x00,0x00},
/* VBI Data Slicer (0x40) - (0x7F)              */

    {0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
    0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
    0xFF,0xFF,0x00,0x55,0x44,0xFF,0xFF,0xFF,
    0x00,0x47,0x06,0x03,0x00,0x01,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00}
    },
/********************************/
/* Global Structure */
/********************************/
{
/* Global Control (0x80) = 0x80                */
    0,  /* unsigned IPortMode : 4;             */
    0,  /* unsigned TaskAEnable : 1;           */
    0,  /* unsigned TaskBEnable : 1;           */
    0,  /* unsigned Reg80Unused : 1;           */
    0,  /* unsigned ContinuousFieldMode : 1;   */
/* Global Control (0x81) = 0x00                */
    3,  /* unsigned V_EAV : 2;                 */
    0,  /* unsigned FTIME : 1;                 */
    0,  /* unsigned Reg81Unused : 5;           */
/* Unused (0x82) = 0x00                        */
    0,  /* uchar Reg82Unused;                  */
/* Reserved (0x83) = 0x12                      */
    1,  /* unsigned XPortEnable : 1;*/ /* x-port enable default */
    0,  /* unsigned XRDYType : 1;              */
    0,  /* unsigned Reg83AUnused : 1;          */
    1,  /* unsigned XCLKSelect : 2;            */
    0,  /* unsigned Reg83BUnused : 2;          */
/* I Port Signal Definitions (0x84) = 0x00     */
    0,  /* unsigned IGPHSelect : 2;            */
    2,  /* unsigned IGPVSelect : 2;            */
    3,  /* unsigned IGP1SelectLSBs : 2;        */
    0,  /* unsigned IGP0SelectLSBs : 2;        */
/* I Port Signal Polarity (0x85) = 0x00        */
    0,  /* unsigned IDQPolarity : 1;           */
    0,  /* unsigned IHSYNCPolarity : 1;        */
    0,  /* unsigned IVSYNCPolarity : 1;        */
    0,  /* unsigned IGP0Polarity : 1;          */
    0,  /* unsigned IGP1Polarity : 1;          */
    0,  /* unsigned VideoDataLimited : 1;      */
    0,  /* unsigned DataOutputType : 2;        */
/* I Port FIFO (0x86) = 0x40                   */
    1,  /* unsigned FAEFlagType : 2;           */
    1,  /* unsigned FAFFlagType : 2;           */
    0,  /* unsigned IGP0SelectMSB : 1;         */
    0,  /* unsigned IGP1SelectMSB : 1;         */
    1,  /* unsigned IPortDataEnable : 1;       */
    0,  /* unsigned DataPackingMode : 1;       */
/* I Port Delay (0x87) = 0x12                  */
    0,  /* unsigned IPortEnable : 0;*/ /* I-port disable, default */
    0,  /* unsigned Reg87Unused : 2;           */
    1,  /* unsigned ICLKControl : 2;           */
    1,  /* unsigned IDQControl : 2;            */
/* Power Save Control (0x88) = 0xE8            */
    0,  /* unsigned DecoderOperational : 1;    */
    0,  /* unsigned ScalerOperational : 1;     */
    0,  /* unsigned Reg88Unused : 1;           */
    1,  /* unsigned AudioClockEnable : 1;      */
    0,  /* unsigned DevProgControl : 1;        */
    1,  /* unsigned ResetScaler : 1;           */
    1,  /* unsigned AnalogCH1Enable : 1;       */
    1,  /* unsigned AnalogCH2Enable : 1;       */
/* Null Array                                  */
    {0,0,0,0,0,0},                             
/* Scaler Status Information (0x8F) = 0x00     */
    0,  /* unsigned ScalerFIDOut : 1;          */
    0,  /* unsigned ScalerFIDIn : 1;           */
    0,  /* unsigned ErrorFlag : 1;             */
    0,  /* unsigned DevProgStatus : 1;         */
    0,  /* unsigned FIFO_OVFlag : 1;           */
    0,  /* unsigned FIFO_AFFlag : 1;           */
    0,  /* unsigned ITRIStatus : 1;            */
    0   /* unsigned XTRIStatu : 1;             */
},
/********************************/
/* TaskA Structure*/
/********************************/
{
/* Task handling control (0x90) = 0x01 */
    1,  /* unsigned EventTrigger : 2;  */
    0,  /* unsigned RepeatTask : 1;    */
    0,  /* unsigned FieldSkipType : 3; */
    0,  /* unsigned OutputFieldID : 1; */
    0,  /* unsigned CONLH : 1;         */
/* X Port Format (0x91) = 0x08         */
    0,  /* unsigned YUVInputFormat : 1;*/
    0,  /* unsigned ChromaPerLine : 2; */
    1,  /* unsigned ScalerDataContinuous : 1;*/
    0,  /* unsigned ScalerInputSource : 2;   */
    0,  /* unsigned HLDFV : 1;               */
    0,  /* unsigned CONLV : 1;               */
/* X Port Input Ref (0x92) = 0x09            */
    1,  /* unsigned XDQNotUsed : 1;          */
    0,  /* unsigned XDQPolarity : 1;         */
    0,  /* unsigned XRHEdgeType : 1;         */
    0,  /* unsigned XPortSyncVia656 : 1;     */
    0,  /* unsigned XRVEdgeType : 1;         */
    0,  /* unsigned XRVSignalType : 1;       */
    0,  /* unsigned XFieldIDType : 1;        */
    0,  /* unsigned XFieldEdgeType : 1;      */
/* I Port Format (0x93) = 0x80               */
    0,  /* unsigned IPortDataFormat : 3;     */
    0,  /* unsigned LeadingYLines : 2;       */
    0,  /* unsigned SkipYLineFlag : 1;       */
    0,  /* unsigned INS80 : 1;               */
    0,  /* unsigned CCIR656Enable : 1;         */
/* Window Sizes (0x94 - 0x9F)                  */
    64,     /* Horizontal input window offset  */
    720,    /* Horizontal input window length  */
    16,     /* Vertical input window offset    */
    288,    /* Vertical input window length    */
    720,    /* Horizontal output window length */
    288,    /* Vertical output window length   */
/* Horizontal Prescaling (0xA0) = 0x00         */
    0, /* uchar XPreScale;                     */
/* Accumulation Length (0xA1) = 0x01           */
    1, /* uchar XAccLength;                    */
/* Prescaler DC Gain/FIR Prefilter Control (0xA2) = 0x00*/
    0,  /* unsigned ScalerDCGain : 3;          */
    0,  /* unsigned XACLWeighting : 1;         */
    0,  /* unsigned YPreFilterType : 2;        */
    0,  /* unsigned CxPreFilterType : 2;       */
/* Unused (0xA3) = 0x00                        */
    0,  /* uchar RegA3Unused;                  */
/* Luminance brightness (0xA4) = 0x80          */
    0x70,   /* uchar Brightness;               */
/* Luminance contrast (0xA5) = 0x40            */
    0x40,   /* uchar Contrast;                 */
/* Luminance saturation (0xA6) = 0x40          */
    0x30,   /* uchar Saturation;               */
/* Unused (0xA7) 0x00                          */
    0, /* uchar RegA7Unused;                   */
/* Horizontal scaling increment luma (0xA8 - 0xA9) */
    1024, /* ushort XLumaIncrement;                */
/* Horizontal phase offset luma (0xAA) = 0x00      */
    0,  /* uchar XLumaPhaseOffset;                 */
/* Unused (0xAB) = 0x00                            */
    0,  /* uchar RegABUnused;                      */
/* Horizontal scaling increment chroma (0xAC - 0xAD) */
    512,    /* ushort XChromaIncrement;            */
/* Horizontal phase offset chroma (0xAE) = 0x00    */
    0,  /* uchar XChromaPhaseOffset;               */
/* Unused (0xAF) = 0x00                            */
    0,  /* uchar RegAFUnused;                      */
/* Vertical scaling increment luma (0xB0 - 0xB1)   */
    1024,   /* ushort YLumaIncrement;              */
/* Vertical scaling increment chroma (0xB2 - 0xB3) */
    1024,   /* ushort YChromaIncrement;            */
/* Vertical scaling mode control (0xB4)            */
    0,  /* unsigned VerticalScalingType : 1;       */
    0,  /* unsigned RegB4AUnused : 3;              */
    0,  /* unsigned MirrorLineFlag : 1;            */
    0,  /* unsigned RegB4BUnused : 3;              */
/* Null Array (0xB5 - 0xB7)                        */
    {0,0,0},                                       
/* Vertical Phase Offset Chroma (0xB8 - 0xBB)      */
    {0,0,0,0},                                     
/* Vertical Phase Offset Luma (0xBC - 0xBF)        */
    {0,0,0,0}                                      
},
/********************************/
/* TaskB Structure */
/********************************/
{
/* Task handling control (0x90) = 0x01            */
    1,  /* unsigned EventTrigger : 2;             */
    0,  /* unsigned RepeatTask : 1;               */
    0,  /* unsigned FieldSkipType : 3;            */
    0,  /* unsigned OutputFieldID : 1;            */
    0,  /* unsigned CONLH : 1;                    */
/* X Port Format (0x91) = 0x08                    */
    0,  /* unsigned YUVInputFormat : 1;           */
    0,  /* unsigned ChromaPerLine : 2;            */
    1,  /* unsigned ScalerDataContinuous : 1;     */
    0,  /* unsigned ScalerInputSource : 2;        */
    0,  /* unsigned HLDFV : 1;                    */
    0,  /* unsigned CONLV : 1;                    */
/* X Port Input Ref (0x92) = 0x09                 */
    1,  /* unsigned XDQNotUsed : 1;               */
    0,  /* unsigned XDQPolarity : 1;              */
    0,  /* unsigned XRHEdgeType : 1;              */
    0,  /* unsigned XPortSyncVia656 : 1;          */
    0,  /* unsigned XRVEdgeType : 1;              */
    0,  /* unsigned XRVSignalType : 1;            */
    0,  /* unsigned XFieldIDType : 1;             */
    0,  /* unsigned XFieldEdgeType : 1;           */
/* I Port Format (0x93) = 0x80                    */
    0,  /* unsigned IPortDataFormat : 3;          */
    0,  /* unsigned LeadingYLines : 2;            */
    0,  /* unsigned SkipYLineFlag : 1;            */
    0,  /* unsigned INS80 : 1;                    */
    0,  /* unsigned CCIR656Enable : 1;            */
/* Window Sizes (0x94 - 0x9F)                     */
    64,     /* Horizontal input window offset     */
    720,    /* Horizontal input window length     */
    16,     /* Vertical input window offset       */
    288,    /* Vertical input window length       */
    720,    /* Horizontal output window length    */
    288,    /* Vertical output window length      */
/* Horizontal Prescaling (0xA0) = 0x00            */
    0, /* uchar XPreScale;                        */
/* Accumulation Length (0xA1) = 0x01              */
    1, /* uchar XAccLength;                       */
/* Prescaler DC Gain/FIR Prefilter Control (0xA2) = 0x00*/
    0,  /* unsigned ScalerDCGain : 3;             */
    0,  /* unsigned XACLWeighting : 1;            */
    0,  /* unsigned YPreFilterType : 2;           */
    0,  /* unsigned CxPreFilterType : 2;          */
/* Unused (0xA3) = 0x00                           */
    0,  /* uchar RegA3Unused;                     */
/* Luminance brightness (0xA4) = 0x80             */
    0x70,   /* uchar Brightness;                  */
/* Luminance contrast (0xA5) = 0x40               */
    0x40,   /* uchar Contrast;                    */
/* Luminance saturation (0xA6) = 0x40             */
    0x40,   /* uchar Saturation;                  */
/* Unused (0xA7) 0x00                             */
    0, /* uchar RegA7Unused;                      */
/* Horizontal scaling increment luma (0xA8 - 0xA9)*/ 
    1024, /* ushort XLumaIncrement;               */
/* Horizontal phase offset luma (0xAA) = 0x00     */
    0,  /* uchar XLumaPhaseOffset;                */
/* Unused (0xAB) = 0x00                           */
    0,  /* uchar RegABUnused;                     */
/* Horizontal scaling increment chroma (0xAC - 0xAD) */
    512,    /* ushort XChromaIncrement;           */
/* Horizontal phase offset chroma (0xAE) = 0x00   */
    0,  /* uchar XChromaPhaseOffset;              */
/* Unused (0xAF) = 0x00                           */
    0,  /* uchar RegAFUnused;                     */
/* Vertical scaling increment luma (0xB0 - 0xB1)  */
    1024,   /* ushort YLumaIncrement;             */
/* Vertical scaling increment chroma (0xB2 - 0xB3)*/ 
    1024,   /* ushort YChromaIncrement;           */
/* Vertical scaling mode control (0xB4)           */
    0,  /* unsigned VerticalScalingType : 1;      */
    0,  /* unsigned RegB4AUnused : 3;             */
    0,  /* unsigned MirrorLineFlag : 1;           */
    0,  /* unsigned RegB4BUnused : 3;             */
/* Null Array (0xB5 - 0xB7)                       */
    {0,0,0},                                      
/* Vertical Phase Offset Chroma (0xB8 - 0xBB)     */
    {0,0,0,0},                                    
/* Vertical Phase Offset Luma (0xBC - 0xBF)       */
    {0,0,0,0}                                     
},

/********************************/
/* PLL2 Structure */
/********************************/
{
/* LFCO Per Line (0xF0) = 0x00    */
    0,  /* uchar SPLPL;           */
/* Parameter Select (0xF1) = 0x00 */
    0,  /* unsigned SPLPL8 : 1;   */
    0,  /* unsigned SPHSEL : 1;   */
    0,  /* unsigned SPMOD : 2;    */
    0,  /* unsigned SPPI : 4;     */
/* Nominal PLL2 DTO (0xF2 - 0xF3) */
    0,  /* ushort SPNINC;         */
/* PLL2 Status (0xF4) = 0x00                  */
    0,  /* unsigned SPLOCK : 1;               */
    0,  /* unsigned RegF2Unused : 6;          */
/* Pulse generator Line Length (0xF5) = 0x00  */
    0,  /* uchar PGLEN;                       */
/* Pulse A Position (0xF6) = 0x00             */
    0,  /* unsigned PGLENMSB : 1;             */
    0,  /* unsigned PGHSEL : 1;               */
    0,  /* unsigned PGRES : 1;                */
    0,  /* unsigned RegF6Unused : 1;          */
    0,  /* unsigned PGHAPS : 4;               */
/* Pulse A Position (0xF7) = 0x00             */
    0,  /* uchar PGHAPSMSB;                   */
/* Pulse B Position (0xF8) = 0x00             */
    0,  /* unsigned RegF8Unused : 4;          */
    0,  /* unsigned PGHBPS : 4;               */
/* Pulse B Position (0xF9) = 0x00             */
    0,  /* uchar PGHBPSMSB;                   */
/* Pulse C Position (0xFA) = 0x00             */
    0,  /* unsigned RegFAUnused : 4;          */
    0,  /* unsigned PGHCPS : 4;               */
/* Pulse C Position (0xFB) = 0x00             */
    0,  /* uchar PGHCPSMSB;                   */
/* Null Array (0xFC) - (0xFE)                 */
    {0,0,0},                                  
/* S_PLL max (0xFF) = 0x00                    */
    0,  /* unsigned SPTHRM : 4;               */
    0   /* unsigned SPTHRL : 4;               */
}},                                           
/********************************/            
/* DDECB Structure */                            
/********************************/            
{                                             
/********************************/            
/* Generic Structure */                          
/********************************/            
{
/* Chip Version (0x00) = 0x00 */
    0x00,
/* Increment Delay (0x01) = 0x08 */
    8,  /* unsigned HorIncDelay : 4;      */
    0,  /* unsigned GainHysteresis : 2;   */
    0,  /* unsigned WhitePeakDisable : 1; */
    0,  /* unsigned AOSL2 : 1;            */
/* Analog Input Control 1 (0x02) = 0xC0   */
    1,  /* unsigned AnalogMuxMode : 4;    */
    0,  /* unsigned Reg02Unused : 2;      */
    3,  /* unsigned AmplifierType : 2;    */
/* Analog Input Control 2 (0x03) = 0x20   */
    0,  /* unsigned ACH1GainMSB : 1;      */
    0,  /* unsigned ACH2GainMSB : 1;      */
    0,  /* unsigned AGCControl : 1;       */
    0,  /* unsigned AGCHold : 1;          */
    0,  /* unsigned ColorPeakOff : 1;     */
    1,  /* unsigned AGCDuringVBI : 1;     */
    0,  /* unsigned HLNRS : 1;            */
    0,  /* unsigned Test : 1;             */
/* Analog Input Control 3 (0x04) = 0x90   */
    0x90,   /* uchar ACH1Gain;              */
/* Analog Input Control 4 (0x05) = 0x90     */
    0x90,   /* uchar ACH2Gain;              */
/* Horizontal Sync Start (0x06) = 0xEB      */
    0xEF,   /* uchar HSYNCStart;            */
/* Horizontal Sync Stop (0x07) = 0xE0       */
    0xAF,   /* uchar HSYNCStop;             */
/* Sync Control (0x08) = 0xD0               */
    0,  /* unsigned VertNoiseReduction : 2; */
    0,  /* unsigned HorPLLOpen : 1;         */
    2,  /* unsigned HorTimeConstant : 2;    */
    0,  /* unsigned ForceFieldFlag : 1;     */
    1,  /* unsigned FieldSelect : 1;        */
    1,  /* unsigned AutoFieldDetect : 1;    */
/* Luminance Control (0x09) = 0x50          */
    0,  /* unsigned LumaFilter : 4;         */
    1,  /* unsigned LumaBW : 1;             */
    0,  /* unsigned LumaDelay : 1;          */
    1,  /* unsigned YCombFilter : 1;             */
    0,  /* unsigned BypassYCombFilter : 1;       */
/* Luminance Brightness Adjustment (0x0A) = 0x80 */
    0x70,   /* uchar Brightness;                 */
/* Luminance Contrast Adjustment (0x0B) = 0x40   */
    0x40,   /* uchar Contrast;                   */
/* Chroma Saturation Adjustment (0x0C) = 0x40    */
    0x40,   /* uchar Saturation;                 */
/* Chroma Hue Control (0x0D) = 0x00              */
    0x00,   /* uchar Hue;                        */
/* Chroma Control 1 (0x0E) = 0x0B                */
    1,  /* unsigned ChromaCombFilter : 1;        */
    1,  /* unsigned AutoChromaDetect : 1;        */
    0,  /* unsigned FastColorTimeConstant : 1;   */
    1,  /* unsigned DisableChromaVertFilt : 1;   */
    0,  /* unsigned ColorStandardDetect : 3;     */
    0,  /* unsigned ClearDTO : 1;                */
/* Chroma Gain Control (0x0F) = 0x24             */
    0x24,   /* unsigned ChromaGain : 7;          */
    0,      /* unsigned AutoChromaAGC : 1;       */
/* Chroma Control 2 (0x10) = 0x0E                */
    6,  /* unsigned LumaChromaBW : 3;            */
    1,  /* unsigned ChromaBW : 1;                */
    0,  /* unsigned CrOffsetAdjustment : 2;      */
    0,  /* unsigned CbOffsetAdjustment : 2;      */
/* Mode Delay Control (0x11) = 0x00              */
    0,  /* unsigned LumaDelayCompensation : 3;   */
    0,  /* unsigned RTS0Polarity : 1;            */
    0,  /* unsigned HSYNCDelay : 2;              */
    0,  /* unsigned RTS1Polarity : 1;            */
    0,  /* unsigned ColorOn : 1;                 */
/* RT Signal Control (0x12) = 0xFD               */
    0xD,    /* unsigned RTS0Output : 4;          */
    0xF,    /* unsigned RTS1Output : 4;          */
/* RT/XPort Control (0x13) = 0x80                */
    0,  /* unsigned OFTS : 3;                    */
    0,  /* unsigned FastHorSelect : 1;           */
    0,  /* unsigned XRVSSelect : 2;              */
    0,  /* unsigned HSYNCSelect : 1;             */
    1,  /* unsigned RTCEEnable : 1;              */
/* Analog/ADC (0x14) = 0x04                      */
    0,  /* unsigned ADCSampleDelay : 2;          */
    1,  /* unsigned AUTO1 : 1;                   */
    0,  /* unsigned XTOUTEnable : 1;             */
    0,  /* unsigned AOUTSelect : 2;              */
    0,  /* unsigned AGCUpdateType : 1;           */
    0,  /* unsigned SAA7199Switch : 1;           */
/* VGATE Start (0x15) = 0x10                     */
    17, /* uchar VGateStart;                     */
/* VGATE Stop (0x16) = 0x02                      */
    1,  /* uchar VGateStop;                      */
/* MISC/VGATE MSBs (0x17) = 0xDA                 */
    0,  /* unsigned VGateStartMSB : 1;           */
    1,  /* unsigned VGateStopMSB : 1;            */
    0,  /* unsigned AltVGatePos : 1;             */
    3,  /* unsigned YLatency : 3;                */
    1,  /* unsigned LLC2Enable : 1;              */
    1,  /* unsigned LLCEnable : 1;               */
/* Raw Data Gain (0x18) = 0x40                   */
    0x40,   /* uchar RawGain;                    */
/* Raw Data Offset (0x19) = 0x80                 */
    0x80,   /* uchar RawOffset                   */
/* Color Killer Thresholds (0x1A) = 0x77         */
    7,  /* unsigned SECAMColorKiller : 4;        */
    7,  /* unsigned NTSCColorKiller : 4;         */
/* MISC/TWCRDET (0x1B) = 0x42                    */
    0,  /* unsigned FSQC : 1;                    */
    1,  /* unsigned AutoColorLimiter : 1;        */
    0,  /* unsigned Reg1BAUnused : 2;            */
    0,  /* unsigned OFTS3 : 1;                   */
    0,  /* unsigned Reg1BBUnused : 1;            */
    1,  /* unsigned TVDetectThreshold : 2;       */
/* Enhanced Comb Control 1 (0x1C) = 0xA9         */
    1,  /* unsigned CombThreshold : 2;           */
    2,  /* unsigned MedianFilterGain : 2;        */
    2,  /* unsigned VertDiffGain : 2;            */
    2,  /* unsigned HorDiffGain : 2;             */
/* Enhanced Comb Control 2 (0x1D) = 0x01         */
    1,  /* unsigned VertDiffThreshold : 2;       */
    0,  /* unsigned Reg1DUnused : 6;             */
/* Status Byte Decoder 1 (0x1E) = 0x00           */
    0,  /* unsigned ColorStandard : 2;           */
    0,  /* unsigned WhitePeakActive : 1;         */
    0,  /* unsigned LimitGainBottom : 1;         */
    0,  /* unsigned LimitGainTop : 1;            */
    0,  /* unsigned SlowTimeConstant : 1;        */
    0,  /* unsigned HSYNCLock : 1;               */
    0,  /* unsigned FieldLength : 1;             */
/* Status Byte Decoder 2 (0x1F) = 0x00           */
    0,  /* unsigned CaptureReady : 1;            */
    0,  /* unsigned CopyProtection : 1;          */
    0,  /* unsigned ColorStripe : 1;             */
    0,  /* unsigned BurstType3 : 1;              */
    0,  /* unsigned StableTimebase : 1;          */
    0,  /* unsigned FieldID : 1;                 */
    0,  /* unsigned HVLoop : 1;                  */
    0,  /* unsigned InterlaceDetect : 1;         */
/* Null Array (0x20) - (0x2F)                    */
    {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,    
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},   
/* Audio Data (0x30) - (0x3F)                    */
    {0xDE,0x6f,0x01,0x00,0x66,0x66,0x1D,0x00,
    0x03,0x10,0x80,0x00,0x00,0x00,0x00,0x00},
/* VBI Data Slicer (0x40) - (0x7F)               */

    {0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
    0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
    0xFF,0xFF,0x00,0x55,0x44,0xFF,0xFF,0xFF,
    0x00,0x47,0x06,0x03,0x00,0x01,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00}
    },
/********************************/
/* Global Structure */
/********************************/
{
/* Global Control (0x80) = 0x80               */
    0,  /* unsigned IPortMode : 4;            */
    0,  /* unsigned TaskAEnable : 1;          */
    0,  /* unsigned TaskBEnable : 1;          */
    0,  /* unsigned Reg80Unused : 1;          */
    0,  /* unsigned ContinuousFieldMode : 1;  */
/* Global Control (0x81) = 0x00               */
    3,  /* unsigned V_EAV : 2;                */
    0,  /* unsigned FTIME : 1;                */
    0,  /* unsigned Reg81Unused : 5;          */
/* Unused (0x82) = 0x00                       */
    0,  /* uchar Reg82Unused;                 */
/* Reserved (0x83) = 0x12                     */
    1,  /* unsigned XPortEnable : 1;*/ /* x-port enable default */ 
    0,  /* unsigned XRDYType : 1;             */
    0,  /* unsigned Reg83AUnused : 1;         */
    1,  /* unsigned XCLKSelect : 2;           */
    0,  /* unsigned Reg83BUnused : 2;         */
/* I Port Signal Definitions (0x84) = 0x00    */
    0,  /* unsigned IGPHSelect : 2;           */
    2,  /* unsigned IGPVSelect : 2;           */
    3,  /* unsigned IGP1SelectLSBs : 2;       */
    0,  /* unsigned IGP0SelectLSBs : 2;       */
/* I Port Signal Polarity (0x85) = 0x00       */
    0,  /* unsigned IDQPolarity : 1;          */
    0,  /* unsigned IHSYNCPolarity : 1;       */
    0,  /* unsigned IVSYNCPolarity : 1;       */
    0,  /* unsigned IGP0Polarity : 1;         */
    0,  /* unsigned IGP1Polarity : 1;         */
    0,  /* unsigned VideoDataLimited : 1;     */
    0,  /* unsigned DataOutputType : 2;       */
/* I Port FIFO (0x86) = 0x40                  */
    1,  /* unsigned FAEFlagType : 2;          */
    1,  /* unsigned FAFFlagType : 2;          */
    0,  /* unsigned IGP0SelectMSB : 1;        */
    0,  /* unsigned IGP1SelectMSB : 1;        */
    1,  /* unsigned IPortDataEnable : 1;      */
    0,  /* unsigned DataPackingMode : 1;      */
/* I Port Delay (0x87) = 0x12                 */
    0,  /* unsigned IPortEnable : 0; */ /* I-port disable, default */
    0,  /* unsigned Reg87Unused : 2;          */
    1,  /* unsigned ICLKControl : 2;          */
    1,  /* unsigned IDQControl : 2;           */
/* Power Save Control (0x88) = 0xE8           */
    0,  /* unsigned DecoderOperational : 1;   */
    0,  /* unsigned ScalerOperational : 1;    */
    0,  /* unsigned Reg88Unused : 1;          */
    1,  /* unsigned AudioClockEnable : 1;     */
    0,  /* unsigned DevProgControl : 1;       */
    1,  /* unsigned ResetScaler : 1;          */
    1,  /* unsigned AnalogCH1Enable : 1;      */
    1,  /* unsigned AnalogCH2Enable : 1;      */
/* Null Array                                 */
    {0,0,0,0,0,0},                            
/* Scaler Status Information (0x8F) = 0x00    */
    0,  /* unsigned ScalerFIDOut : 1;         */
    0,  /* unsigned ScalerFIDIn : 1;          */
    0,  /* unsigned ErrorFlag : 1;            */
    0,  /* unsigned DevProgStatus : 1;        */
    0,  /* unsigned FIFO_OVFlag : 1;          */
    0,  /* unsigned FIFO_AFFlag : 1;          */
    0,  /* unsigned ITRIStatus : 1;           */
    0   /* unsigned XTRIStatu : 1;            */
},
/********************************/
/* TaskA Structure*/
/********************************/
{
/* Task handling control (0x90) = 0x01        */
    1,  /* unsigned EventTrigger : 2;         */
    0,  /* unsigned RepeatTask : 1;           */
    0,  /* unsigned FieldSkipType : 3;        */
    0,  /* unsigned OutputFieldID : 1;        */
    0,  /* unsigned CONLH : 1;                */
/* X Port Format (0x91) = 0x08                */
    0,  /* unsigned YUVInputFormat : 1;       */
    0,  /* unsigned ChromaPerLine : 2;        */
    1,  /* unsigned ScalerDataContinuous : 1; */
    0,  /* unsigned ScalerInputSource : 2;    */
    0,  /* unsigned HLDFV : 1;                */
    0,  /* unsigned CONLV : 1;                */
/* X Port Input Ref (0x92) = 0x09             */
    1,  /* unsigned XDQNotUsed : 1;           */
    0,  /* unsigned XDQPolarity : 1;          */
    0,  /* unsigned XRHEdgeType : 1;          */
    0,  /* unsigned XPortSyncVia656 : 1;      */
    0,  /* unsigned XRVEdgeType : 1;          */
    0,  /* unsigned XRVSignalType : 1;        */
    0,  /* unsigned XFieldIDType : 1;         */
    0,  /* unsigned XFieldEdgeType : 1;       */
/* I Port Format (0x93) = 0x80                */
    0,  /* unsigned IPortDataFormat : 3;      */
    0,  /* unsigned LeadingYLines : 2;        */
    0,  /* unsigned SkipYLineFlag : 1;        */
    0,  /* unsigned INS80 : 1;                */
    0,  /* unsigned CCIR656Enable : 1;        */
/* Window Sizes (0x94 - 0x9F)                 */
    64,     /* Horizontal input window offset */
    720,    /* Horizontal input window length */
    16,     /* Vertical input window offset   */
    288,    /* Vertical input window length   */
    720,    /* Horizontal output window length*/
    288,    /* Vertical output window length  */
/* Horizontal Prescaling (0xA0) = 0x00        */
    0, /* uchar XPreScale;                    */
/* Accumulation Length (0xA1) = 0x01          */
    1, /* uchar XAccLength;                   */
/* Prescaler DC Gain/FIR Prefilter Control (0xA2) = 0x00 */
    0,  /* unsigned ScalerDCGain : 3;         */
    0,  /* unsigned XACLWeighting : 1;        */
    0,  /* unsigned YPreFilterType : 2;       */
    0,  /* unsigned CxPreFilterType : 2;      */
/* Unused (0xA3) = 0x00                       */
    0,  /* uchar RegA3Unused;                 */
/* Luminance brightness (0xA4) = 0x80         */
    0x70,   /* uchar Brightness;              */
/* Luminance contrast (0xA5) = 0x40           */
    0x40,   /* uchar Contrast;                */
/* Luminance saturation (0xA6) = 0x40         */
    0x40,   /* uchar Saturation;              */
/* Unused (0xA7) 0x00                         */
    0, /* uchar RegA7Unused;                  */
/* Horizontal scaling increment luma (0xA8 - 0xA9)*/ 
    1024, /* ushort XLumaIncrement;               */
/* Horizontal phase offset luma (0xAA) = 0x00     */
    0,  /* uchar XLumaPhaseOffset;                */
/* Unused (0xAB) = 0x00                           */
    0,  /* uchar RegABUnused;                     */
/* Horizontal scaling increment chroma (0xAC - 0xAD) */
    512,    /* ushort XChromaIncrement;           */
/* Horizontal phase offset chroma (0xAE) = 0x00   */
    0,  /* uchar XChromaPhaseOffset;              */
/* Unused (0xAF) = 0x00                           */
    0,  /* uchar RegAFUnused;                     */
/* Vertical scaling increment luma (0xB0 - 0xB1)  */
    1024,   /* ushort YLumaIncrement;             */
/* Vertical scaling increment chroma (0xB2 - 0xB3)*/ 
    1024,   /* ushort YChromaIncrement;           */
/* Vertical scaling mode control (0xB4)           */
    0,  /* unsigned VerticalScalingType : 1;      */
    0,  /* unsigned RegB4AUnused : 3;             */
    0,  /* unsigned MirrorLineFlag : 1;           */
    0,  /* unsigned RegB4BUnused : 3;             */
/* Null Array (0xB5 - 0xB7)                       */
    {0,0,0},                                      
/* Vertical Phase Offset Chroma (0xB8 - 0xBB)     */
    {0,0,0,0},                                    
/* Vertical Phase Offset Luma (0xBC - 0xBF)       */
    {0,0,0,0}                                     
},
/********************************/
/* TaskB Structure */
/********************************/
{
/* Task handling control (0x90) = 0x01           */
    1,  /* unsigned EventTrigger : 2;            */
    0,  /* unsigned RepeatTask : 1;              */
    0,  /* unsigned FieldSkipType : 3;           */
    0,  /* unsigned OutputFieldID : 1;           */
    0,  /* unsigned CONLH : 1;                   */
/* X Port Format (0x91) = 0x08                   */
    0,  /* unsigned YUVInputFormat : 1;          */
    0,  /* unsigned ChromaPerLine : 2;           */
    1,  /* unsigned ScalerDataContinuous : 1;    */
    0,  /* unsigned ScalerInputSource : 2;       */
    0,  /* unsigned HLDFV : 1;                   */
    0,  /* unsigned CONLV : 1;                   */
/* X Port Input Ref (0x92) = 0x09                */
    1,  /* unsigned XDQNotUsed : 1;              */
    0,  /* unsigned XDQPolarity : 1;             */
    0,  /* unsigned XRHEdgeType : 1;             */
    0,  /* unsigned XPortSyncVia656 : 1;         */
    0,  /* unsigned XRVEdgeType : 1;             */
    0,  /* unsigned XRVSignalType : 1;           */
    0,  /* unsigned XFieldIDType : 1;            */
    0,  /* unsigned XFieldEdgeType : 1;          */
/* I Port Format (0x93) = 0x80                   */
    0,  /* unsigned IPortDataFormat : 3;         */
    0,  /* unsigned LeadingYLines : 2;           */
    0,  /* unsigned SkipYLineFlag : 1;           */
    0,  /* unsigned INS80 : 1;                   */
    0,  /* unsigned CCIR656Enable : 1;           */
/* Window Sizes (0x94 - 0x9F)                    */
    64,     /* Horizontal input window offset    */
    720,    /* Horizontal input window length    */
    16,     /* Vertical input window offset      */
    288,    /* Vertical input window length      */
    720,    /* Horizontal output window length   */
    288,    /* Vertical output window length     */
/* Horizontal Prescaling (0xA0) = 0x00           */
    0, /* uchar XPreScale;                       */
/* Accumulation Length (0xA1) = 0x01             */
    1, /* uchar XAccLength;                      */
/* Prescaler DC Gain/FIR Prefilter Control (0xA2) = 0x00 */
    0,  /* unsigned ScalerDCGain : 3;            */
    0,  /* unsigned XACLWeighting : 1;           */
    0,  /* unsigned YPreFilterType : 2;          */
    0,  /* unsigned CxPreFilterType : 2;         */
/* Unused (0xA3) = 0x00                          */
    0,  /* uchar RegA3Unused;                    */
/* Luminance brightness (0xA4) = 0x80            */
    0x70,   /* uchar Brightness;                 */
/* Luminance contrast (0xA5) = 0x40              */
    0x40,   /* uchar Contrast;                   */
/* Luminance saturation (0xA6) = 0x40            */
    0x40,   /* uchar Saturation;                 */
/* Unused (0xA7) 0x00                            */
    0, /* uchar RegA7Unused;                     */
/* Horizontal scaling increment luma (0xA8 - 0xA9)   */
    1024, /* ushort XLumaIncrement;                  */
/* Horizontal phase offset luma (0xAA) = 0x00        */
    0,  /* uchar XLumaPhaseOffset;                   */
/* Unused (0xAB) = 0x00                              */
    0,  /* uchar RegABUnused;                        */
/* Horizontal scaling increment chroma (0xAC - 0xAD) */
    512,    /* ushort XChromaIncrement;              */
/* Horizontal phase offset chroma (0xAE) = 0x00      */
    0,  /* uchar XChromaPhaseOffset;                 */
/* Unused (0xAF) = 0x00                              */
    0,  /* uchar RegAFUnused;                        */
/* Vertical scaling increment luma (0xB0 - 0xB1)     */
    1024,   /* ushort YLumaIncrement;                */
/* Vertical scaling increment chroma (0xB2 - 0xB3)   */
    1024,   /* ushort YChromaIncrement;              */
/* Vertical scaling mode control (0xB4)              */
    0,  /* unsigned VerticalScalingType : 1;         */
    0,  /* unsigned RegB4AUnused : 3;                */
    0,  /* unsigned MirrorLineFlag : 1;              */
    0,  /* unsigned RegB4BUnused : 3;                */
/* Null Array (0xB5 - 0xB7)                          */
    {0,0,0},                                         
/* Vertical Phase Offset Chroma (0xB8 - 0xBB)        */
    {0,0,0,0},                                       
/* Vertical Phase Offset Luma (0xBC - 0xBF)          */
    {0,0,0,0}                                        
},
/********************************/
/* PLL2 Structure*/
/********************************/
{
/* LFCO Per Line (0xF0) = 0x00                       */
    0,  /* uchar SPLPL;                              */
/* Parameter Select (0xF1) = 0x00                    */
    0,  /* unsigned SPLPL8 : 1;                      */
    0,  /* unsigned SPHSEL : 1;                      */
    0,  /* unsigned SPMOD : 2;                       */
    0,  /* unsigned SPPI : 4;                        */
/* Nominal PLL2 DTO (0xF2 - 0xF3)                    */
    0,  /* ushort SPNINC;                            */
/* PLL2 Status (0xF4) = 0x00                         */
    0,  /* unsigned SPLOCK : 1;                      */
    0,  /* unsigned RegF2Unused : 6;                 */
/* Pulse generator Line Length (0xF5) = 0x00         */
    0,  /* uchar PGLEN;                              */
/* Pulse A Position (0xF6) = 0x00                    */
    0,  /* unsigned PGLENMSB : 1;                    */
    0,  /* unsigned PGHSEL : 1;                      */
    0,  /* unsigned PGRES : 1;                       */
    0,  /* unsigned RegF6Unused : 1;                 */
    0,  /* unsigned PGHAPS : 4;                      */
/* Pulse A Position (0xF7) = 0x00                    */
    0,  /* uchar PGHAPSMSB;                          */
/* Pulse B Position (0xF8) = 0x00                    */
    0,  /* unsigned RegF8Unused : 4;                 */
    0,  /* unsigned PGHBPS : 4;                      */
/* Pulse B Position (0xF9) = 0x00                    */
    0,  /* uchar PGHBPSMSB;                          */
/* Pulse C Position (0xFA) = 0x00                    */
    0,  /* unsigned RegFAUnused : 4;                 */
    0,  /* unsigned PGHCPS : 4;                      */
/* Pulse C Position (0xFB) = 0x00                    */
    0,  /* uchar PGHCPSMSB;                          */
/* Null Array (0xFC) - (0xFE)                        */
    {0,0,0},                                         
/* S_PLL max (0xFF) = 0x00                           */
    0,  /* unsigned SPTHRM : 4;                      */
    0   /* unsigned SPTHRL : 4;                      */
}},
};

_SAA7115_XScale _SAA7115_xScale =
{{
{ 0,0,0},                   /* Entry for XPSC 0   */
{ 0,0,0},                   /* Entry for XPSC 1   */
{ 1,0,1},                   /* Entry for XPSC 2   */
{ 3,0,2},                   /* Entry for XPSC 3   */
{ 4,1,3},                   /* Entry for XPSC 4   */
{ 7,0,3},                   /* Entry for XPSC 5   */
{ 8,1,4},                   /* Entry for XPSC 6   */
{ 8,1,4},                   /* Entry for XPSC 7   */
{15,0,4},                   /* Entry for XPSC 8   */
{15,0,4},                   /* Entry for XPSC 9   */
{16,1,5},                   /* Entry for XPSC 10  */
{16,1,5},                   /* Entry for XPSC 11  */
{16,1,5},                   /* Entry for XPSC 12  */
{16,1,5},                   /* Entry for XPSC 13  */
{16,1,5},                   /* Entry for XPSC 14  */
{31,0,5},                   /* Entry for XPSC 15  */
{32,1,6},                   /* Entry for XPSC 16  */
{32,1,6},                   /* Entry for XPSC 17  */
{32,1,6},                   /* Entry for XPSC 18  */
{32,1,6},                   /* Entry for XPSC 19  */
{32,1,6},                   /* Entry for XPSC 20  */
{32,1,6},                   /* Entry for XPSC 21  */
{32,1,6},                   /* Entry for XPSC 22  */
{32,1,6},                   /* Entry for XPSC 23  */
{32,1,6},                   /* Entry for XPSC 24  */
{32,1,6},                   /* Entry for XPSC 25  */
{32,1,6},                   /* Entry for XPSC 26  */
{32,1,6},                   /* Entry for XPSC 27  */
{32,1,6},                   /* Entry for XPSC 28  */
{32,1,6},                   /* Entry for XPSC 29  */
{32,1,6},                   /* Entry for XPSC 30  */
{32,1,6},                   /* Entry for XPSC 31  */
{32,1,6},                   /* Entry for XPSC 32  */
{32,1,6},                   /* Entry for XPSC 33  */
{32,1,6},                   /* Entry for XPSC 34  */
{32,1,6},                   /* Entry for XPSC 35  */
{32,1,6},                   /* Entry for XPSC 36  */
{32,1,6},                   /* Entry for XPSC 37  */
{32,1,6},                   /* Entry for XPSC 38  */
{32,1,6},                   /* Entry for XPSC 39  */
{32,1,6},                   /* Entry for XPSC 40  */
{32,1,6},                   /* Entry for XPSC 41  */
{32,1,6},                   /* Entry for XPSC 42  */
{32,1,6},                   /* Entry for XPSC 43  */
{32,1,6},                   /* Entry for XPSC 44  */
{32,1,6},                   /* Entry for XPSC 45  */
{32,1,6},                   /* Entry for XPSC 46  */
{32,1,6},                   /* Entry for XPSC 47  */
{32,1,6},                   /* Entry for XPSC 48  */
{32,1,6},                   /* Entry for XPSC 49  */
{32,1,6},                   /* Entry for XPSC 50  */
{32,1,6},                   /* Entry for XPSC 51  */
{32,1,6},                   /* Entry for XPSC 52  */
{32,1,6},                   /* Entry for XPSC 53  */
{32,1,6},                   /* Entry for XPSC 54  */
{32,1,6},                   /* Entry for XPSC 55  */
{32,1,6},                   /* Entry for XPSC 56  */
{32,1,6},                   /* Entry for XPSC 57  */
{32,1,6},                   /* Entry for XPSC 58  */
{32,1,6},                   /* Entry for XPSC 59  */
{32,1,6},                   /* Entry for XPSC 60  */
{32,1,6},                   /* Entry for XPSC 61  */
{32,1,6},                   /* Entry for XPSC 62  */
{32,1,6}                    /* Entry for XPSC 63  */
}};


/********************************************************************/
/* end of file                                                      */
/********************************************************************/

