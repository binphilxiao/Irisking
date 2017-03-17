#include <std.h>
#include <csl.h>
#include <csl_cache.h>
#include <csl_dat.h>
#include <stdio.h>

#include "..\..\include\ov7725.h"
#include "..\..\include\utility.h"
#include "..\..\include\dbg_printf.h"
extern I2C_Handle EMBI2C_handle;
extern EDC_Fxns OV7725_Fxns;

static I2C_Handle hI2C;

OV7725_Reg _reg_ov7725[]={
	{0x3d, 0x03},                        
	{0x17, 0x22},                        
	{0x18, 0xa4},                        
	{0x19, 0x07},                        
	{0x1a, 0xf0},                        
	{0x32, 0x00},                        
	{0x29, 0xa0},                        
	{0x2c, 0xf0},                        
	{0x2a, 0x00},                        
	{0x11, 0x01},                        
	{0x42, 0x7f},                        
	{0x4d, 0x09},                        
	{0x63, 0xe0},                        
	{0x64, 0xff},                        
	{0x65, 0x20},                        
	{0x66, 0x00},                        
	{0x67, 0x48},                        
	{0x13, 0xf0},                        
	{0x0d, 0x41},                        
	{0x0f, 0xc5},                        
	{0x14, 0x11},                                       
	{0x22, 0x7f},                        
	{0x23, 0x03},                      
	{0x24, 0x40},    
	{0x25, 0x30},                      
	{0x26, 0xa1},                        
	{0x2b, 0x00},                        
	{0x6b, 0xaa},                        
	{0x13, 0xff},                        
	{0x90, 0x05},                        
	{0x91, 0x01},                        
	{0x92, 0x03},                        
	{0x93, 0x00},                        
	{0x94, 0xb0},                        
	{0x95, 0x9d},                        
	{0x96, 0x13},                        
	{0x97, 0x16},                        
	{0x98, 0x7b},                        
	{0x99, 0x91},
	{0x9a, 0x1e},    
	{0x9b, 0x08},                      
	{0x9c, 0x2c},                        //{0x9c, 0x20},                        
	{0x9e, 0x81},                        
	{0xa6, 0x06},                        
	{0x7e, 0x0c},                        
	{0x7f, 0x16},                        
	{0x80, 0x2a},                        
	{0x81, 0x4e},                        
	{0x82, 0x61},                        
	{0x83, 0x6f},                        
	{0x84, 0x7b},                        
	{0x85, 0x86},                        
	{0x86, 0x8e},                        
	{0x87, 0x97},                        
	{0x88, 0xa4},   
	{0x89, 0xaf},    
	{0x8a, 0xc5},                      
	{0x8b, 0xd7},                        
	{0x8c, 0xe8},                        
	{0x8d, 0x20},                        
	{0x33, 0x00},                        
	{0x22, 0x7f},                        
	{0x23, 0x03},                        
	{0x4a, 0x10},                        
	{0x49, 0x10},                        
	{0x4b, 0x14},                        
	{0x4c, 0x17},                        
	{0x46, 0x05},                        
	{0x0e, 0x65},
	{0x0c, 0x00},  
};
OV7725_Params EMB_vCapParamsOV7725={
	sizeof(_reg_ov7725)/sizeof(OV7725_Reg),
	_reg_ov7725,
	NULL
};


void reset_ov7725reg(void)
{
	char val=0x80;
	int i;
	
	_IIC_write_rev(EMBI2C_handle, OV7725_I2C_ADDRESS, OV7725_REG_COM7, &val,0x1);

	_IIC_read_rev(EMBI2C_handle,OV7725_I2C_ADDRESS,OV7725_REG_COM3,&val,1);

	for (i=0;i<1000;i++);//delay
}

void ReadReg_7725(int ch,OV7725_Params * regs)
{
	int i;
	if (regs->num>256)
	{
		dbg_output("too more regs\n");
		return;
	}

	for (i=0;i<regs->num;i++)
	{
	    _IIC_read_rev(EMBI2C_handle, OV7725_I2C_ADDRESS, regs->reg[i].addr, &regs->reg[i].val, 0x1);
		dbg_output("reg is ");
		dbg_output("%02x ", regs->reg[i].addr);
		dbg_output("%02x ", regs->reg[i].val);
		dbg_output("\n");
	}
}

void dump7725()
{
	OV7725_Reg DumpReg_ov7725[256];
	OV7725_Params EMB_DumpReg_ov7725;

	DumpReg_ov7725[0].addr=OV7725_REG_COM7;

	EMB_DumpReg_ov7725.num=1;
	EMB_DumpReg_ov7725.reg=DumpReg_ov7725;
	ReadReg_7725(0,&EMB_DumpReg_ov7725);
}

void Config_7725()
{
	int i;
	for (i=0;i<EMB_vCapParamsOV7725.num;i++)
		_IIC_write_rev(EMBI2C_handle, OV7725_I2C_ADDRESS,EMB_vCapParamsOV7725.reg[i].addr, &EMB_vCapParamsOV7725.reg[i].val,0x1);
}


void ov7725_init()
{
	reset_ov7725reg();
	Config_7725();
}


/********************************************
 OV7725_Begin_Capture
 - Restart Frame and Enable continuous 
 	capture mode
********************************************/
void OV7725_Begin_Capture(EDC_Handle handle)
{
}

/********************************************
 OV7725_Reset_Dev
 - Reset the sensor
********************************************/
void OV7725_Reset_Dev(EDC_Handle devHandle)
{ 
	reset_ov7725reg();
}

/********************************************
 OV7725_PowerDown
 - Power down the sensor
********************************************/
void OV7725_PowerDown(EDC_Handle devHandle)
{ 
}

/********************************************
 OV7725_Config
  - Configure the sensor for the desired
  	capture resolution.
********************************************/
static Bool OV7725_Config(EDC_Handle handle, OV7725_Params *params)
{
    Config_7725();
	return(TRUE);
}

/********************************************
 MT9V022_open
  - Open the Sensor for use
********************************************/
static EDC_Handle OV7725_open(String devName, Arg optArg)
{

    Int devId;

    /* Check if the addresse is correct */
    if(devName[0] != '/')
    {
        devId = -1;
    } 
    // Sensor on VP0
    else if(devName[1] == '0') 
    {
         devId = 0;
    }
    // Sensor on VP1 
    else if(devName[1] == '1')
    {
         devId = 1;
    }
    else if(devName[1] == '2')
    {
         devId = 2;
    }
    else if(devName[1] == '3')
    {
         devId = 3;
    }
    // Invalid 
    else 
    {
         devId = -1;
    }
    
    return (EDC_Handle)devId;
}

/********************************************
 MT9V022_close
  - Close and powerdown the sensor
********************************************/
static Int OV7725_close(EDC_Handle handle) 
{
	OV7725_PowerDown(handle);
    return EDC_SUCCESS;    
}

/********************************************
 MT9V022_ctrl
  - Issue commands to the sensor
********************************************/
static int OV7725_ctrl(EDC_Handle handle, unsigned int cmd, Arg arg)
{
	switch(cmd)
	{
		case EDC_CONFIG:
			{
				OV7725_Params *param = (OV7725_Params *)arg;
		        hI2C = param->hI2C;
				OV7725_Config(handle, (void *)arg);		
				break;
			}	
		case EDC_RESET:
			{
				OV7725_Reset_Dev(handle);
				break;
			}
		case EDC_START:
			{
				OV7725_Begin_Capture(handle);			
				break;
			}
		default:
			return EDC_FAILED;
	}
	return EDC_SUCCESS;
}

// EDC Required Functions
EDC_Fxns OV7725_Fxns = {
    OV7725_open,
    OV7725_close,
    OV7725_ctrl
};

