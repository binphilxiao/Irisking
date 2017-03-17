#ifndef _MT9V022_H
#define _MT9V022_H


#define MT9V022_COLUMN_START 			0x01
#define MT9V022_ROW_START  		      	0x02      
#define MT9V022_WINDOW_HEIGHT   		0x03
#define MT9V022_WINDOW_WIDTH			0x04
        
#define MT9V022_HORIZONTAL_BLANK		0x05
#define MT9V022_VERTICAL_BLANK			0x06
#define MT9V022_CHIP_CONTROL			0x07
#define MT9V022_SHUTTER_WIDTH1			0x08
#define MT9V022_SHUTTER_WIDTH2			0x09
#define MT9V022_SHUTTER_CONTROL			0x0A
#define MT9V022_TOTAL_SHUTTER_WIDTH		0x0B
#define MT9V022_RESET					0x0C
#define MT9V022_READ_MODE				0x0D
#define MT9V022_MONITOR_MODE			0x0E
#define MT9V022_PIXEL_OP_MODE			0x0F


#define MT9V022_ANALOG_GAIN				0x35


#define MT9V022_AGC_AEC_ENABLE			0xAF


/********************************************
 Function Prototypes
********************************************/
// EDC Required Functions


/********************************************
 Supported Video Port Capture Modes
 Caveats
 - Higher resolutions + High bit capture modes + PIP
 	can result in improper operation due to 
 	the massive memory requirements.
********************************************/
#define MODE_8BIT
//#define MODE_10BIT
//#define MODE_16BIT
//#define MODE_20BIT

// EDC Required Functions
extern far EDC_Fxns MT9V022_Fxns;

typedef struct 
{
	unsigned short addr;
	unsigned short val;
} MT9V022_Reg;

// Structure of parameters passed to the EDC
typedef struct {
	int num;
	/*
	the config is in the following structure
	[reg_num] [value]
	*/
	MT9V022_Reg *reg;
	I2C_Handle hI2C;
}MT9V022_Params;

int MT9V022_ReadReg(int id, int addr);



#endif
