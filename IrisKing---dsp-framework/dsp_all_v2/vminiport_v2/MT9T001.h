/*
 *  Copyright 2004 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
 
/* MT9T001 Read = 0xBB, Write = 0xBA */ 
#define MT9T001_ADDRESS (0xBA>>1)

// Register Addresses for MT9T001
#define MT9T001ADDR_CHIPID					0x00
#define MT9T001ADDR_ROW_START 				0x01
#define MT9T001ADDR_COLUMN_START        	0x02      
#define MT9T001ADDR_ROW_SIZE     			0x03
#define MT9T001ADDR_COLUMN_SIZE				0x04
#define MT9T001ADDR_HORIZONTAL_BLANK		0x05
#define MT9T001ADDR_VERTICAL_BLANK			0x06
#define MT9T001ADDR_OUTPUT_CONTROL			0x07
#define MT9T001ADDR_SHUTTER_WIDTH_UPPER		0x08
#define MT9T001ADDR_SHUTTER_WIDTH			0x09
#define MT9T001ADDR_PIXEL_CLOCK_CTRL		0x0A
#define MT9T001ADDR_FRAME_RESTART			0x0B
#define MT9T001ADDR_SHUTTER_DELAY			0x0C
#define MT9T001ADDR_RESET					0x0D
#define MT9T001ADDR_READ_MODE_1				0x1E
#define MT9T001ADDR_READ_MODE_2				0x20
#define MT9T001ADDR_READ_MODE_3				0x21
#define MT9T001ADDR_ROW_ADDRESS_MODE		0x22
#define MT9T001ADDR_COLUMN_ADDRESS_MODE		0x23
#define MT9T001ADDR_GREEN1_GAIN				0x2B
#define MT9T001ADDR_BLUE_GAIN				0x2C
#define MT9T001ADDR_RED_GAIN				0x2D
#define MT9T001ADDR_GREEN2_GAIN				0x2E
#define MT9T001ADDR_GLOBAL_GAIN				0x35
#define MT9T001ADDR_BLACK_LEVEL				0x49
#define MT9T001ADDR_BLACK_LEVEL_CAL_COARSE	0x5D
#define MT9T001ADDR_BLACK_LEVEL_CAL_TARGET	0x5F
#define MT9T001ADDR_GREEN1_OFFSET			0x60
#define MT9T001ADDR_GREEN2_OFFSET			0x61
#define MT9T001ADDR_BLACK_LEVEL_CAL			0x62
#define MT9T001ADDR_RED_OFFSET				0x63
#define MT9T001ADDR_BLUE_OFFSET				0x64
#define MT9T001ADDR_CHIP_ENABLE				0xF8


#define MT9V022_ADDRESS (0x90>>1)

#define MT9V022ADDR_CHIP_VER				0x00
#define MT9V022ADDR_COLUMN_START 			0x01
#define MT9V022ADDR_ROW_START  		      	0x02      
#define MT9V022ADDR_WINDOW_HEIGHT   		0x03
#define MT9V022ADDR_WINDOW_WIDTH			0x04
#define MT9V022ADDR_HORIZONTAL_BLANK		0x05
#define MT9V022ADDR_VERTICAL_BLANK			0x06
#define MT9V022ADDR_CHIP_CONTROL			0x07
#define MT9V022ADDR_SHUTTER_WIDTH1			0x08
#define MT9V022ADDR_SHUTTER_WIDTH2			0x09
#define MT9V022ADDR_SHUTTER_CONTROL			0x0A
#define MT9V022ADDR_TOTAL_SHUTTER_WIDTH		0x0B
#define MT9V022ADDR_RESET					0x0C
#define MT9V022ADDR_READ_MODE				0x0D
#define MT9V022ADDR_MONITOR_MODE			0x0E
#define MT9V022ADDR_PIXEL_OP_MODE			0x0F

#define MT9V022ADDR_LED_OUT_CTRL			0x1B
#define MT9V022ADDR_ADC_MODE_CONTROL		0x1C

#define MT9V022ADDR_VREF_ADC_CONTROL		0x2C

#define MT9V022ADDR_V1						0x31
#define MT9V022ADDR_V2						0x32
#define MT9V022ADDR_V3						0x33
#define MT9V022ADDR_V4						0x34

#define MT9V022ADDR_ANALOG_GAIN				0x35
#define MT9V022ADDR_MAX_ANALOG_GAIN			0x36

#define MT9V022ADDR_DARK_AVERAGE			0x42
#define MT9V022ADDR_DARK_AVERAGE_THRESHOLDS	0x46
#define MT9V022ADDR_BL_CALIB_CONTROL		0x47
#define MT9V022ADDR_BL_CALIB_VALUE			0x48
#define MT9V022ADDR_BL_CALIB_STEP_SIZE		0x49

#define MT9V022ADDR_ROW_NOISE_CORR_CTRL1	0x70
#define MT9V022ADDR_ROW_NOISE_CONSTANT		0x72
#define MT9V022ADDR_ROW_NOISE_CORR_CTRL2	0x73

#define MT9V022ADDR_PIXCLK_FV_LV			0x74

#define MT9V022ADDR_AGC_AEC_CONTROL			0xAF
//#define MT9V022ADDR_MAX_SHUTTER_WIDTH		0xBD
//#define MT9V022ADDR_MAX_SHUTTER_WIDTH		0xBD
//#define MT9V022ADDR_MAX_SHUTTER_WIDTH		0xBD
//#define MT9V022ADDR_MAX_SHUTTER_WIDTH		0xBD

#define MT9V022ADDR_MAX_SHUTTER_WIDTH		0xBD
#define MT9V022ADDR_FIELD_BLANK				0xBF
#define MT9V022ADDR_MON_MODE_CAPTURE_CTRL	0xC0
#define MT9V022ADDR_TEMPERATURE				0xC1
#define MT9V022ADDR_ANALOG_CONTROLS			0xC2
#define MT9V022ADDR_NTSC_FV_LV_CTRL			0xC3
#define MT9V022ADDR_NTSC_HORIZ_BLANK_CTRL	0xC4
#define MT9V022ADDR_NTSC_VERT_BLANK_CTRL	0xC5

#define MT9V022ADDR_BYTEWISE_ADDR			0xF0
#define MT9V022ADDR_REGISTER_LOCK			0xFE
#define MT9V022ADDR_CHIP_VERSION			0xFF

/*************************************************
 MT9001 UNIONS and Bit field STRUCTURES
 All bit fields should add to 16
 Bit fields go from LSB to MSB (top to bottom)
*************************************************/

/*************************************************/

typedef union {
    Uint16 data;
    Uint8 byte[2];
} MT9T001_chipID;

/*************************************************/

typedef struct ROWSTART {
	unsigned int rowStart	:11;   
	unsigned int d15_d11 	:5;
} s_RowStart;

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_RowStart flds;
} MT9T001_RowStart;

/*************************************************/

typedef struct COLSTART {
    unsigned int colStart	:12;   
    unsigned int d15_d12 	:4; 
} s_ColStart;

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_ColStart flds;
} MT9T001_ColStart;

/*************************************************/

typedef struct ROWSIZE {
    unsigned int rowSize	:11;  
    unsigned int d15_d11 	:5;  
} s_RowSize;

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_RowSize flds;
} MT9T001_RowSize;

/*************************************************/


typedef struct COLSIZE {
    unsigned int colSize	:11; 
    unsigned int d15_d11 	:5;   
} s_ColSize;    

typedef union {
    Uint16 data;
    Uint8 byte[2];
    s_ColSize flds;
} MT9T001_ColSize;

/*************************************************/

typedef struct HORIZBLANK {
    unsigned int horizBlank	:11; 
    unsigned int d15_d11 	:5;   
} s_HorizBlank;

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_HorizBlank flds;
} MT9T001_HorizBlank;

/*************************************************/


typedef struct VERTBLANK {
    unsigned int vertBlank	:11; 
    unsigned int d15_d11 	:5;   
} s_VertBlank;

typedef union {
    Uint16 data;
    Uint8 byte[2];
    s_VertBlank flds;
} MT9T001_VertBlank;

/*************************************************/

typedef struct OUTCTRL {
    unsigned int syncChanges	:1; 
    unsigned int chipEnable		:1;
    unsigned int d2_d5			:4;  
    unsigned int overridePixl	:1;    
    unsigned int d7_d15			:9;      
} s_OutCtrl;

typedef union {
    Uint16 data;
    Uint8 byte[2];
    s_OutCtrl flds;
} MT9T001_OutCtrl;

/*************************************************/

typedef union {
    Uint16 data;
    Uint8 byte[2];
} MT9T001_ShutterWidthUpper;

/*************************************************/

typedef union {
    Uint16 data;
    Uint8 byte[2];
} MT9T001_ShutterWidth;

/*************************************************/

typedef struct PIXLCLKCTRL {    
    unsigned int divide		:7;   
 	unsigned int shift 		:3;
	unsigned int d11_d14	:5;
	unsigned int invert		:1;
} s_PixlClkCtrl;	

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_PixlClkCtrl flds;
} MT9T001_PixlClkCtrl;

/*************************************************/

typedef union {
    Uint16 data;
    Uint8 byte[2];
} MT9T001_FrameRestart;

/*************************************************/

typedef struct SHUTTERDELAY {
    unsigned int delay		:11; 
    unsigned int d11_d15 	:5;   
} s_ShutterDelay;    

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_ShutterDelay flds;
} MT9T001_ShutterDelay;

/*************************************************/

typedef union {
    Uint16 data;
    Uint8 byte[2];
} MT9T001_Reset;

/*************************************************/

typedef struct READMODE1 {
    unsigned int d0_d7			:8;   
	unsigned int snapshot 		:1;
	unsigned int strobeEnable	:1;
	unsigned int strobeWidth	:1;
	unsigned int strobeOver		:1;
	unsigned int d12_d15		:4;
} s_ReadMode1;	

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_ReadMode1 flds;
} MT9T001_ReadMode1;

/*************************************************/

typedef struct READMODE2 {
    unsigned int noBadFrame	:1;  
    unsigned int d1_d8		:8;
    unsigned int contLV 	:1;  
    unsigned int xorLV		:1;
    unsigned int d11_d15	:5;      
} s_ReadMode2;  

typedef union {
    Uint16 data;
    Uint8 byte[2];
  	s_ReadMode2 flds;
} MT9T001_ReadMode2;

/*************************************************/

typedef struct READMODE3 {
    unsigned int globalRst	:1; 
    unsigned int gshtCtrl 	:1;
    unsigned int d2_d15		:14;   
} s_ReadMode3;    

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_ReadMode3 flds;
} MT9T001_ReadMode3;

/*************************************************/

typedef struct ROWADDRESS {
    unsigned int rowSkp		:3;  
    unsigned int d3			:1;
    unsigned int rowBin 	:2;  
    unsigned int d6_d15		:10;      
} s_RowAddress;    

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_RowAddress flds;
} MT9T001_RowAddress;

/*************************************************/

typedef struct COLADDRESS {
    unsigned int colSkp		:3; 
    unsigned int d3			:1;
    unsigned int colBin 	:2;   
    unsigned int d6_d15		:10;      
} s_ColAddress;    

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_ColAddress flds;
} MT9T001_ColAddress;

/*************************************************/

typedef struct GREEN1GAIN {
    unsigned int analog		:7;
    unsigned int d7			:1;
    unsigned int digital 	:7;    
    unsigned int d15		:1;        
} s_Green1Gain;    

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_Green1Gain flds;
} MT9T001_Green1Gain;

/*************************************************/

typedef struct BLUEGAIN {
    unsigned int analog		:7;
    unsigned int d7			:1;
    unsigned int digital 	:7;    
    unsigned int d15		:1;        
} s_BlueGain;     

typedef union {
    Uint16 data;
    Uint8 byte[2];
    s_BlueGain flds;
} MT9T001_BlueGain;

/*************************************************/


typedef struct REDGAIN {
    unsigned int analog		:7;
    unsigned int d7			:1;
    unsigned int digital 	:7;    
    unsigned int d15		:1;        
} s_RedGain;     

typedef union {
    Uint16 data;
    Uint8 byte[2];
    s_RedGain flds;
} MT9T001_RedGain;

/*************************************************/

typedef struct GREEN2GAIN {
    unsigned int analog		:7;
    unsigned int d7			:1;
    unsigned int digital 	:7;    
    unsigned int d15		:1;        
} s_Green2Gain;     

typedef union {
    Uint16 data;
    Uint8 byte[2];
    s_Green2Gain flds;
} MT9T001_Green2Gain;

/*************************************************/

typedef struct GLOBALGAIN {
    unsigned int analog		:7;
    unsigned int d7			:1;
    unsigned int digital 	:7;    
    unsigned int d15		:1;        
} s_GlobalGain;     

typedef union {
    Uint16 data;
    Uint8 byte[2];
    s_GlobalGain flds;
} MT9T001_GlobalGain;

/*************************************************/

typedef struct BLACKLEVEL {
    unsigned int d0_d1		:2;
	unsigned int level 		:10;
	unsigned int d12_d15	:4;
} s_BlackLevel;	

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_BlackLevel flds;
} MT9T001_BlackLevel;

/*************************************************/

typedef struct BLACKCOARSE {
    unsigned int low		:7;
    unsigned int d7			:1;
    unsigned int high	 	:7;    
    unsigned int d15		:1;        
} s_BlackCoarse;

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_BlackCoarse flds;
} MT9T001_BlackCoarse;

/*************************************************/

typedef struct BLACKTARGET {
    unsigned int low		:7;
    unsigned int d7			:1;
    unsigned int high	 	:7;    
    unsigned int d15		:1;        
} s_BlackTarget;

typedef union {
    Uint16 data;
    Uint8 byte[2];
    s_BlackTarget flds;
} MT9T001_BlackTarget;

/*************************************************/

typedef struct GREEN1OFFSET {
    unsigned int cal		:9;
    unsigned int d9_d15		:7;
} s_Green1Offset;

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_Green1Offset flds;
} MT9T001_Green1Offset;

/*************************************************/

typedef struct GREEN2OFFSET {
    unsigned int cal		:9;
    unsigned int d9_d15		:7;
} s_Green2Offset;

typedef union {
    Uint16 data;
    Uint8 byte[2];
    s_Green2Offset flds;  
} MT9T001_Green2Offset;

/*************************************************/

typedef struct BLACKLEVELCAL {
    unsigned int override	:1;
    unsigned int corr		:1;
    unsigned int d2_d11	 	:10;    
    unsigned int recalc		:1;        
    unsigned int rbCal		:1;            
    unsigned int gCal		:1;                
    unsigned int d15		:1;                    
} s_BlackLevelCal;    

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_BlackLevelCal flds;
} MT9T001_BlackLevelCal;

/*************************************************/

typedef struct REDOFFSET {
    unsigned int cal		:9;
    unsigned int d9_d15		:7;
} s_RedOffset;   

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_RedOffset flds;
} MT9T001_RedOffset;

/*************************************************/

typedef struct BLUEOFFSET {
    unsigned int cal		:9;
    unsigned int d9_d15		:7;
} s_BlueOffset;   

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_BlueOffset flds; 
} MT9T001_BlueOffset;

/*************************************************/

typedef struct CHIPENABLESYNC {
    unsigned int chipEnable		:1; 
    unsigned int syncChanges	:1;
    unsigned int d2_d15			:14;    
} s_ChipEnableSync;    

typedef union {
    Uint16 data;
    Uint8 byte[2];
	s_ChipEnableSync flds;
} MT9T001_ChipEnableSync;

/*************************************************/

/****************************************
 MT9T001 Register Variable Declarations
****************************************/

extern MT9T001_chipID 				chipID_reg = {0};
extern MT9T001_RowStart 			RowStart_reg= {0};
extern MT9T001_ColStart 			ColStart_reg= {0};
extern MT9T001_RowSize 				RowSize_reg= {0};
extern MT9T001_ColSize 				ColSize_reg= {0};
extern MT9T001_HorizBlank 			HorizBlank_reg= {0};
extern MT9T001_VertBlank 			VertBlank_reg= {0};
extern MT9T001_OutCtrl 				OutCtrl_reg= {0};
extern MT9T001_ShutterWidthUpper 	ShutterWidthUpper_reg= {0};
extern MT9T001_ShutterWidth 		ShutterWidth_reg= {0};
extern MT9T001_PixlClkCtrl 			PixlClkCtrl_reg= {0};
extern MT9T001_FrameRestart 		FrameRestart_reg= {0};
extern MT9T001_ShutterDelay 		ShutterDelay_reg= {0};
extern MT9T001_Reset 				Reset_reg= {0};
extern MT9T001_ReadMode1 			ReadMode1_reg= {0};
extern MT9T001_ReadMode2 			ReadMode2_reg= {0};
extern MT9T001_ReadMode3 			ReadMode3_reg= {0};
extern MT9T001_RowAddress 			RowAddress_reg = {0};
extern MT9T001_ColAddress 			ColAddress_reg= {0};
extern MT9T001_Green1Gain 			Green1Gain_reg= {0};
extern MT9T001_BlueGain 			BlueGain_reg= {0};
extern MT9T001_RedGain 				RedGain_reg= {0};
extern MT9T001_Green2Gain 			Green2Gain_reg= {0};
extern MT9T001_GlobalGain 			GlobalGain_reg= {0};
extern MT9T001_BlackLevel 			BlackLevel_reg= {0};
extern MT9T001_BlackCoarse 			BlackCoarse_reg= {0};
extern MT9T001_BlackTarget 			BlackTarget_reg= {0};
extern MT9T001_Green1Offset 		Green1Offset_reg= {0};
extern MT9T001_Green2Offset 		Green2Offset_reg= {0};
extern MT9T001_BlackLevelCal 		BlackLevelCal_reg= {0};
extern MT9T001_RedOffset 			RedOffset_reg= {0};
extern MT9T001_BlueOffset 			BlueOffset_reg= {0};
extern MT9T001_ChipEnableSync 		ChipEnableSync_reg= {0};

/****************************************
 MT9T001 Register Storage Declarations
****************************************/

extern MT9T001_chipID 				chipID_reg_str= {0};
extern MT9T001_RowStart 			RowStart_reg_str= {0};
extern MT9T001_ColStart 			ColStart_reg_str= {0};
extern MT9T001_RowSize 				RowSize_reg_str= {0};
extern MT9T001_ColSize 				ColSize_reg_str= {0};
extern MT9T001_HorizBlank 			HorizBlank_reg_str= {0};
extern MT9T001_VertBlank 			VertBlank_reg_str= {0};
extern MT9T001_OutCtrl 				OutCtrl_reg_str= {0};
extern MT9T001_ShutterWidthUpper 	ShutterWidthUpper_reg_str= {0};
extern MT9T001_ShutterWidth 		ShutterWidth_reg_str= {0};
extern MT9T001_PixlClkCtrl 			PixlClkCtrl_reg_str= {0};
extern MT9T001_FrameRestart 		FrameRestart_reg_str= {0};
extern MT9T001_ShutterDelay 		ShutterDelay_reg_str= {0};
extern MT9T001_Reset 				Reset_reg_str= {0};
extern MT9T001_ReadMode1 			ReadMode1_reg_str= {0};
extern MT9T001_ReadMode2 			ReadMode2_reg_str= {0};
extern MT9T001_ReadMode3 			ReadMode3_reg_str= {0};
extern MT9T001_RowAddress 			RowAddress_reg_str= {0};
extern MT9T001_ColAddress 			ColAddress_reg_str= {0};
extern MT9T001_Green1Gain 			Green1Gain_reg_str= {0};
extern MT9T001_BlueGain 			BlueGain_reg_str= {0};
extern MT9T001_RedGain 				RedGain_reg_str= {0};
extern MT9T001_Green2Gain 			Green2Gain_reg_str= {0};
extern MT9T001_GlobalGain 			GlobalGain_reg_str= {0};
extern MT9T001_BlackLevel 			BlackLevel_reg_str= {0};
extern MT9T001_BlackCoarse 			BlackCoarse_reg_str= {0};
extern MT9T001_BlackTarget 			BlackTarget_reg_str= {0};
extern MT9T001_Green1Offset 		Green1Offset_reg_str= {0};
extern MT9T001_Green2Offset 		Green2Offset_reg_str= {0};
extern MT9T001_BlackLevelCal 		BlackLevelCal_reg_str= {0};
extern MT9T001_RedOffset 			RedOffset_reg_str= {0};
extern MT9T001_BlueOffset 			BlueOffset_reg_str= {0};
extern MT9T001_ChipEnableSync 		ChipEnableSync_reg_str= {0};


