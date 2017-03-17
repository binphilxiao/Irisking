/*
 *  Modified by Rui Wang
 */

/********************************************
 Include Files
********************************************/

#include <std.h>        
#include <evmdm642.h>
#include "edc.h"

#include "_iic.h"
#include "mt9v022.h"
#include "utility.h"

#define MT9V022_ADDRESS_3 (0xb8 >> 1)
#define MT9V022_ADDRESS_2 (0xb0 >> 1)
#define MT9V022_ADDRESS_1 (0x98 >> 1)
#define MT9V022_ADDRESS_0 (0x90 >> 1)

/********************************************
 Constants
********************************************/
#define MT9V022_ON_VP0 0
#define MT9V022_ON_VP1 1

#define PCA9540B_ADDRESS 0xE0 >> 1
#define PCA9540B_VP0	0x04
#define PCA9540B_VP1	0x05

#define CHANNEL_CMOS_SENSOR	1
#define CHANNEL_ATMEL		0

static int _mt9v022_i2c_addr(EDC_Handle h)
{
	switch((int)h)
	{
	case 0:
		return MT9V022_ADDRESS_0;
	case 1:
		return MT9V022_ADDRESS_1;
	case 2:
		return MT9V022_ADDRESS_2;
	default:
		return MT9V022_ADDRESS_3;
	}
}

static I2C_Handle hI2C;

static EDC_Handle MT9V022_open(String devName, Arg optArg);
static Int MT9V022_close(EDC_Handle handle);
static int MT9V022_ctrl(EDC_Handle handle, unsigned int cmd, Arg arg);

// Commands
static Bool MT9V022_Config(EDC_Handle handle, MT9V022_Params *params);
void MT9V022_Reset_Dev(EDC_Handle devHandle);
void MT9V022_PowerDown(EDC_Handle devHandle);
int MT9V022_Begin_Capture(EDC_Handle handle);
int MT9V022_Read_All_Registers(EDC_Handle devHandle);

// I2C Write Routine
static int _MT9V022_write_verify(I2C_Handle hI2C, Uint8 devAddress, Uint32 subAddress, Uint8 *data, Uint16 numBytes);
static int _MT9V022_write16bit(I2C_Handle hI2C, Uint8 devAddress, Uint32 subAddress, Uint16 data);

// EDC Required Functions
far EDC_Fxns MT9V022_Fxns = {
    MT9V022_open,
    MT9V022_close,
    MT9V022_ctrl
};

/****************************************
 MT9V022 Register Variable Declarations
****************************************/


/********************************************
 MT9V022_open
  - Open the Sensor for use
********************************************/
static EDC_Handle MT9V022_open(String devName, Arg optArg)
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
static Int MT9V022_close(EDC_Handle handle) 
{

	// I2C address multiplexing
	I2C_mux_vp(hI2C);
	MT9V022_PowerDown(handle);
    return EDC_SUCCESS;    

}

/********************************************
 MT9V022_ctrl
  - Issue commands to the sensor
********************************************/
static int MT9V022_ctrl(EDC_Handle handle, unsigned int cmd, Arg arg)
{
	Bool status = 1;
	
	// I2C address multiplexing
	switch(cmd)
	{

	case EDC_CONFIG:
		{
			MT9V022_Params *param = (MT9V022_Params *)arg;
	        hI2C = param->hI2C;
		}

		MT9V022_Config(handle, (void *)arg);		
		break;
		
	case EDC_RESET:
		MT9V022_Reset_Dev(handle);
		break;
		
	case EDC_START:
		// Restart Frame and Enable continuous capture mode
		status &= MT9V022_Begin_Capture(handle);			
		break;
				
	default:
		return EDC_FAILED;
		//break;
	
	} // end switch
	
	return EDC_SUCCESS;
}

/********************************************
 MT9V022_Config
  - Configure the sensor for the desired
  	capture resolution.
********************************************/
static Bool MT9V022_Config(EDC_Handle handle, MT9V022_Params *params)
{
	int i;
	int i2c_addr;

	i2c_addr = _mt9v022_i2c_addr(handle);

	I2C_mux_vp(hI2C);
    MT9V022_Reset_Dev(handle);
	

	for (i = 0 ; i < params->num; i ++)
	{
		_MT9V022_write16bit(hI2C,  i2c_addr, params->reg[i].addr, params->reg[i].val);

	}
	return(TRUE);
}

/********************************************
 MT9V022_Begin_Capture
 - Restart Frame and Enable continuous 
 	capture mode
********************************************/
int MT9V022_Begin_Capture(EDC_Handle handle)
{

	int status = 1;

	// I2C address multiplexing
//	status &= I2C_mux_vp(hI2C);


	return status;
	
}


/********************************************
 MT9V022_Reset_Dev
 - Reset the sensor
********************************************/
void MT9V022_Reset_Dev(EDC_Handle devHandle)
{ 

	int i2c_addr;

	i2c_addr = _mt9v022_i2c_addr(devHandle);

	// I2C address multiplexing
	I2C_mux_vp(hI2C);

	
	_MT9V022_write16bit(hI2C, i2c_addr, MT9V022_RESET, 0x03);
}


/********************************************
 MT9V022_PowerDown
 - Power down the sensor
********************************************/
void MT9V022_PowerDown(EDC_Handle devHandle)
{ 

	// I2C address multiplexing
	I2C_mux_vp(hI2C);

//	_MT9V022_write_verify(EVMDM642_I2C_hI2C,  MT9V022_ADDRESS, MT9V022_OUTPUT_CONTROL, &OutCtrl_reg.byte[0], 2);

}

/********************************************
 _MT9V022_write_verify
 - Access sensor registers via I2C
 	This function writes to the desired 
 	register, then reads the register back
 	to verify the written data.
********************************************/
static int _MT9V022_write_verify(I2C_Handle hI2C, Uint8 devAddress, Uint32 subAddress, Uint8 *data, Uint16 numBytes)
{

	int status = 1;

	typedef union DATAREAD
	{
		Uint16 word;
		Uint8 byte[2];
	} u_DATAREAD;
	
	typedef union DATAWRITE
	{
		Uint16 word;
		Uint8 byte[2];
	} u_DATAWRITE;
	
	u_DATAREAD dataRead = {0};
	u_DATAWRITE dataWrite = {0};
	
	Uint8 jj = 0;
	
	dataWrite.byte[1] = data[1]; 
	dataWrite.byte[0] = data[0];
	
	_IIC_write_rev(hI2C, devAddress, subAddress, &dataWrite.byte[1], numBytes);	
	_IIC_read_rev(hI2C, devAddress, subAddress, &dataRead.byte[1], numBytes);

	// compare what was written to what was read back
	for(jj = 0; jj < numBytes; jj++)
	{
		 // error
		 if(dataWrite.byte[jj] != dataRead.byte[jj])
		 	status = 0;
	}
	
	return status;
}							

static int _MT9V022_write16bit(I2C_Handle hI2C, Uint8 devAddress, Uint32 subAddress, Uint16 data)
{
	int status = 1;

	_IIC_write_rev(hI2C, devAddress, subAddress, ((unsigned char *)&data) + 1, 2);
	return 1;

}

int MT9V022_ReadReg(int id, int addr)
{
	char buf[2];
	int i2c_addr;
//	char c;

	I2C_mux_vp(hI2C);

	i2c_addr = _mt9v022_i2c_addr((EDC_Handle)id);

	// I2C address multiplexing
	_IIC_read_rev(hI2C,  i2c_addr, addr, &buf[1], 2);

/*	c = buf[1];
	buf[1] = buf[0];
	buf[0] = c;
*/
	return (int)*(unsigned short *)buf;
}

