/*
 *  Copyright 2003 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *  
 */
/* "@(#) DDK 1.10.00.23 07-02-03 (ddk-b12)" */
#include "_iic.h"      

#define I2CDELAY(iterations)  {      \
    volatile Int j;                  \
    for(j = 0; j < iterations; j ++); \
}   
#define DELAY_TIME 1000
//#define I2CCLKx 128
#define I2CCLKx 15

static const I2C_Config EVM642VIDEOIIC_Config = {
    0,  /* master mode,  i2coar;   */
    0,  /* no interrupt, i2cimr;   */
    (20-5), /* scl low time, i2cclkl;  */
    (20-5), /* scl high time,i2cclkh;  */
    1,  /* configure later, i2ccnt;*/
    0,  /* configure later, i2csar;*/
    0x4620, /* master tx mode,     */
            /* i2c runs free,      */
            /* 8-bit data + NACK   */
            /* no repeat mode      */
    (75-1), /* 4MHz clock, i2cpsc  */
};

static const I2C_Config EVM642VIDEOIIC_Config_Read = {
	0,  /* master mode,  i2coar;   */
	0,  /* no interrupt, i2cimr;   */
	(I2CCLKx), /* scl low time, i2cclkl;  */
	(I2CCLKx), /* scl high time,i2cclkh;  */	
	1,  /* configure later, i2ccnt;*/
	0,  /* configure later, i2csar;*/
	0x4C20, /* master rcv mode,    */
	        /* i2c runs free,      */
	        /* 8-bit data + NACK   */
	        /* no repeat mode      */
	(75-1), /* 4MHz clock, i2cpsc  */
};

/*
 * ======== _IIC_write ========
 * This function performs write operation via I2C bus.
 */

void _IIC_write(I2C_Handle hI2C,
              Uint8 devAddress,
              Uint32  subAddress,
              Uint8 *data,
              Uint16  numBytes
              )
{             
    Int i;
    I2C_Config prevIICConfig; 
    
    /* make sure handle is valid */
    if(hI2C == INV) {
        return;
    }
    
    /* Wait until bus is free */
    while (I2C_bb(hI2C));

    /* save old settings */
    I2C_getConfig(hI2C, &prevIICConfig);

    /* set I2C mode register */
    I2C_RSETH(hI2C, I2CMDR, EVM642VIDEOIIC_Config.i2cmdr);
    
    /* set I2C imr register  */
    I2C_RSETH(hI2C, I2CIMR, EVM642VIDEOIIC_Config.i2cimr);
    
    /* configure the I2C slave address register */
    I2C_RSETH(hI2C, I2CSAR, devAddress);
    
    /* set I2C count register */
    I2C_RSETH(hI2C, I2CCNT, numBytes + 1);
    
    /* write the sub address */
    I2C_RSETH(hI2C, I2CDXR, subAddress);
    
    /* Generate start condition */
    I2C_start(hI2C);
    
    I2CDELAY(DELAY_TIME);

    /* write the data */ 
    for(i = 0; i < numBytes; i ++) {
        while(!I2C_xrdy(hI2C));
        I2C_writeByte(hI2C, *data ++);
        I2CDELAY(DELAY_TIME);
    }

    /* Generate stop condition */
    I2C_sendStop(hI2C); 
    
    I2CDELAY(DELAY_TIME);        
    /* Wait until bus is free */
    while (I2C_bb(hI2C));

    I2CDELAY(DELAY_TIME);        
    /* now restore the previous I2C settings */
    
    /* set I2C mode register */
    I2C_RSETH(hI2C, I2CMDR, prevIICConfig.i2cmdr);
    
    /* set I2C imr register  */
    I2C_RSETH(hI2C, I2CIMR, prevIICConfig.i2cimr);
    
    /* configure the I2C slave address register */
    I2C_RSETH(hI2C, I2CSAR, prevIICConfig.i2csar);
    
    /* set I2C count register */
    I2C_RSETH(hI2C, I2CCNT, prevIICConfig.i2ccnt);

    I2CDELAY(DELAY_TIME);        
}     


/*
 * ======== _IIC_read ========
 * This function performs read operation via I2C bus.
 */

void _IIC_read(I2C_Handle hI2C,
              Uint8 devAddress,
              Uint32  subAddress,
              Uint8 *data,
              Uint16  numBytes
              )
{             
    Int i;
    I2C_Config prevIICConfig;
    
    /* Wait until bus is free */
    while (I2C_bb(hI2C));

    /* save old settings */
    I2C_getConfig(hI2C, &prevIICConfig);
    
    /* write entire i2c control structure to i2c registers */
    I2C_config(hI2C, (I2C_Config *)&EVM642VIDEOIIC_Config_Read);
    
	/* Issue a SubAddress write to the THS8200 */    
    _IIC_write(hI2C, devAddress, subAddress, NULL, 0);

    /* Wait until bus is free */
    while (I2C_bb(hI2C));
    
    /* configure the I2C slave address register */
    I2C_RSETH(hI2C, I2CSAR, devAddress);
    
    /* set I2C count register */
    I2C_RSETH(hI2C, I2CCNT, numBytes);	
    
    /* Generate start condition */
    I2C_start(hI2C);
    
  	I2CDELAY(DELAY_TIME);
    
    
    /* write the data */ 
    for(i = 0; i < numBytes; i ++) {
        while(!I2C_rrdy(hI2C));
        *data++ = I2C_readByte(hI2C);
     	I2CDELAY(DELAY_TIME);
    }

    /* Generate stop condition */
    I2C_sendStop(hI2C); 
    
   	I2CDELAY(DELAY_TIME);        
    /* Wait until bus is free */
    while (I2C_bb(hI2C));

   	I2CDELAY(DELAY_TIME);        
    /* now restore the previous I2C settings */
    
    /* write entire previous i2c control structure to i2c registers */
    I2C_config(hI2C, &prevIICConfig);
    
   	I2CDELAY(DELAY_TIME);        
}     



/*
 * ======== _IIC_write ========
 * This function performs write operation via I2C bus.
 	The MT9T001 requires that the order of the MSBs and LSBs are switched and 
 	written in reverse order.
 */

void _IIC_write_rev(I2C_Handle hI2C,
              Uint8 devAddress,
              Uint32  subAddress,
              Uint8 *data,
              Uint16  numBytes
              )
{             
    Int i;
    I2C_Config prevIICConfig;
    
    /* Wait until bus is free */
    while (I2C_bb(hI2C));

    /* save old settings */
    I2C_getConfig(hI2C, &prevIICConfig);
    
    /* write entire i2c control structure to i2c registers */
    I2C_config(hI2C, (I2C_Config *)&EVM642VIDEOIIC_Config);

    /* configure the I2C slave address register */
    I2C_RSETH(hI2C, I2CSAR, devAddress);
    
    /* set I2C count register */
    I2C_RSETH(hI2C, I2CCNT, numBytes + 1);
      
    /* write the sub address */
    I2C_RSETH(hI2C, I2CDXR, subAddress);
   	    
    /* Generate start condition */
    I2C_start(hI2C);
    
  	I2CDELAY(DELAY_TIME);

    /* write the data */ 
    for(i = 0; i < numBytes; i ++) {
        while(!I2C_xrdy(hI2C));
        I2C_writeByte(hI2C, *data--);
     	I2CDELAY(DELAY_TIME);
    }

    /* Generate stop condition */
    I2C_sendStop(hI2C); 
    
   	I2CDELAY(DELAY_TIME);        
    /* Wait until bus is free */
    while (I2C_bb(hI2C));

   	I2CDELAY(DELAY_TIME);        
    /* now restore the previous I2C settings */
    
    /* write entire previous i2c control structure to i2c registers */
    I2C_config(hI2C, &prevIICConfig);
    
   	I2CDELAY(DELAY_TIME);        
}     



/*
 * ======== _IIC_read ========
 * This function performs read operation via I2C bus.
 	The MT9T001 requires that the order of the MSBs and LSBs are switched and 
 	read in reverse order.
 */

void _IIC_read_rev(I2C_Handle hI2C,
              Uint8 devAddress,
              Uint32  subAddress,
              Uint8 *data,
              Uint16  numBytes
              )
{             
    Int i;
    I2C_Config prevIICConfig;
    
    /* Wait until bus is free */
    while (I2C_bb(hI2C));

    /* save old settings */
    I2C_getConfig(hI2C, &prevIICConfig);
    
    /* write entire i2c control structure to i2c registers */
    I2C_config(hI2C, (I2C_Config *)&EVM642VIDEOIIC_Config_Read);
    
	/* Issue a SubAddress write to the THS8200 */    
    _IIC_write(hI2C, devAddress, subAddress, NULL, 0);

    /* Wait until bus is free */
    while (I2C_bb(hI2C));
    
    /* configure the I2C slave address register */
    I2C_RSETH(hI2C, I2CSAR, devAddress);
    
    /* set I2C count register */
    I2C_RSETH(hI2C, I2CCNT, numBytes);	
    
    /* Generate start condition */
    I2C_start(hI2C);
    
  	I2CDELAY(DELAY_TIME);
    
    
    /* write the data */ 
    for(i = 0; i < numBytes; i ++) {
        while(!I2C_rrdy(hI2C));
        *data-- = I2C_readByte(hI2C);
     	I2CDELAY(DELAY_TIME);
    }

    /* Generate stop condition */
    I2C_sendStop(hI2C); 
    
   	I2CDELAY(DELAY_TIME);        
    /* Wait until bus is free */
    while (I2C_bb(hI2C));

   	I2CDELAY(DELAY_TIME);        
    /* now restore the previous I2C settings */
    
    /* write entire previous i2c control structure to i2c registers */
    I2C_config(hI2C, &prevIICConfig);
    
   	I2CDELAY(DELAY_TIME);        
}     



