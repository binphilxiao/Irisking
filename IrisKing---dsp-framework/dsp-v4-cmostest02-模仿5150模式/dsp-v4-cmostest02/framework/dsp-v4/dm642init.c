//--------------------------------------------------------------------------
// IP Stack Client Demo
//--------------------------------------------------------------------------
// dm642init.c
//
// Private initialization functions for EVMDM642
//
// Author: Michael A. Denio
// Copyright 2003 by Texas Instruments Inc.
//--------------------------------------------------------------------------

#include <csl.h>
#include <csl_emifa.h>
#include <csl_i2c.h>
#include <csl_gpio.h>
#include <csl_cache.h>

/* I2C handle */
I2C_Handle EMBI2C_handle;

/* GPIO handle */
GPIO_Handle EMBGPIO_handle;

#define I2CDELAY(iterations)  {      \
    volatile int j;                  \
    for(j = 0; j < iterations; j ++); \
}
#define DELAY_TIME 1000

I2C_Config EVM642VIDEOIIC_WriteConfig = {
    0,  /* master mode,  i2coar;   */
    0,  /* no interrupt, i2cimr;   */
    (20-5), /* scl low time, i2cclkl;  */
    (20-5), /* scl high time,i2cclkh;  */
    1,  /* configure later, i2ccnt;*/
    0,  /* configure later, i2csar;*/
    0x46a0, /* master tx mode,     */
            /* i2c runs free,      */
            /* 8-bit data + NACK   */
            /* repeat mode      */
    (90-1), /* 4MHz clock, i2cpsc  */
};

/* Spin in a delay loop for delay iterations */
static void _wait(Uint32 delay)
{
    volatile Uint32 i, n;

    n = 0;
    for (i = 0; i < delay; i++)
    {
        n = n + 1;
    }
}


/* Initialize the board APIs */
void dm642_init()
{
    volatile Uint32 test;
	GPIO_Config gp_config;

	/*
	64M memory
	*/
    EMIFA_Config emifaCfg0 = {
        EMIFA_FMKS(GBLCTL, EK2RATE, HALFCLK)    |
        EMIFA_FMKS(GBLCTL, EK2HZ, CLK)          |
        EMIFA_FMKS(GBLCTL, EK2EN, ENABLE)       |
        EMIFA_FMKS(GBLCTL, BRMODE, MRSTATUS)    |
        EMIFA_FMKS(GBLCTL, NOHOLD, DISABLE)     |
        EMIFA_FMKS(GBLCTL, EK1HZ, HIGHZ)        |
        EMIFA_FMKS(GBLCTL, EK1EN, ENABLE)       |
        EMIFA_FMKS(GBLCTL, CLK4EN, ENABLE)      |
        EMIFA_FMKS(GBLCTL, CLK6EN, ENABLE),

        EMIFA_FMKS(CECTL, WRSETUP, DEFAULT)    |
        EMIFA_FMKS(CECTL, WRSTRB, DEFAULT)     |
        EMIFA_FMKS(CECTL, WRHLD, DEFAULT)      |
        EMIFA_FMKS(CECTL, RDSETUP, DEFAULT)    |
        EMIFA_FMKS(CECTL, TA, DEFAULT)         |
        EMIFA_FMKS(CECTL, RDSTRB, DEFAULT)     |
        EMIFA_FMKS(CECTL, MTYPE, SDRAM64)      |
        EMIFA_FMKS(CECTL, RDHLD, DEFAULT),

        EMIFA_FMKS(CECTL, WRSETUP, OF(7))      |
        EMIFA_FMKS(CECTL, WRSTRB, OF(14))      |
        EMIFA_FMKS(CECTL, WRHLD, OF(2))        |
        EMIFA_FMKS(CECTL, RDSETUP, OF(2))      |
        EMIFA_FMKS(CECTL, TA, OF(2))           |
        EMIFA_FMKS(CECTL, RDSTRB, OF(14))      |
        EMIFA_FMKS(CECTL, MTYPE, ASYNC8)       |
        EMIFA_FMKS(CECTL, RDHLD, OF(1)),

        EMIFA_FMKS(CECTL, WRSETUP, OF(2))      |
        EMIFA_FMKS(CECTL, WRSTRB, OF(10))      |
        EMIFA_FMKS(CECTL, WRHLD, OF(2))        |
        EMIFA_FMKS(CECTL, RDSETUP, OF(2))      |
        EMIFA_FMKS(CECTL, TA, OF(2))           |
        EMIFA_FMKS(CECTL, RDSTRB, OF(10))      |
        EMIFA_FMKS(CECTL, MTYPE, ASYNC32)      |
        EMIFA_FMKS(CECTL, RDHLD, OF(2)),

        EMIFA_FMKS(CECTL, WRSETUP, OF(2))      |
        EMIFA_FMKS(CECTL, WRSTRB, OF(10))      |
        EMIFA_FMKS(CECTL, WRHLD, OF(2))        |
        EMIFA_FMKS(CECTL, RDSETUP, OF(2))      |
        EMIFA_FMKS(CECTL, TA, OF(2))           |
        EMIFA_FMKS(CECTL, RDSTRB, OF(10))      |
        EMIFA_FMKS(CECTL, MTYPE, SYNC32)       |
        EMIFA_FMKS(CECTL, RDHLD, OF(2)),

        EMIFA_FMKS(SDCTL, SDBSZ, 4BANKS)       |
        EMIFA_FMKS(SDCTL, SDRSZ, 12ROW)        |
        EMIFA_FMKS(SDCTL, SDCSZ, 9COL)         |	// 20060611 xiaobin change memory IC, old: EMIFA_FMKS(SDCTL, SDCSZ, 9COL)
        EMIFA_FMKS(SDCTL, RFEN, ENABLE)        |
        EMIFA_FMKS(SDCTL, INIT, YES)           |
        EMIFA_FMKS(SDCTL, TRCD, OF(1))         |
        EMIFA_FMKS(SDCTL, TRP, OF(1))          |
        EMIFA_FMKS(SDCTL, TRC, OF(5))          |
        EMIFA_FMKS(SDCTL, SLFRFR, DISABLE),

        EMIFA_FMKS(SDTIM, XRFR, OF(0))         |
        EMIFA_FMKS(SDTIM, PERIOD, OF(2075)),

        EMIFA_FMKS(SDEXT, WR2RD, OF(1))        |
        EMIFA_FMKS(SDEXT, WR2DEAC, OF(3))      |
        EMIFA_FMKS(SDEXT, WR2WR, OF(1))        |
        EMIFA_FMKS(SDEXT, R2WDQM, OF(3))       |
        EMIFA_FMKS(SDEXT, RD2WR, OF(2))        |
        EMIFA_FMKS(SDEXT, RD2DEAC, OF(3))      |
        EMIFA_FMKS(SDEXT, RD2RD, OF(1))        |
        EMIFA_FMKS(SDEXT, THZP, OF(2))         |
        EMIFA_FMKS(SDEXT, TWR, OF(2))          |
        EMIFA_FMKS(SDEXT, TRRD, OF(0))         |
        EMIFA_FMKS(SDEXT, TRAS, OF(6))         |
        EMIFA_FMKS(SDEXT, TCL, OF(1)),

        EMIFA_CESEC_DEFAULT,

        EMIFA_CESEC_DEFAULT,

        EMIFA_CESEC_DEFAULT,

        EMIFA_FMKS(CESEC, SNCCLK, ECLKOUT2)    |
        EMIFA_FMKS(CESEC, RENEN, READ)         |
        EMIFA_FMKS(CESEC, CEEXT, ACTIVE)       |
        EMIFA_FMKS(CESEC, SYNCWL, 0CYCLE)      |
        EMIFA_FMKS(CESEC, SYNCRL, 3CYCLE)
    };

    I2C_Config i2cCfg = {
        0x0000007f, /* I2COAR -    Not used if master */
        0x00000000, /* I2CIER -    Disable interrupts, use polling */
        0x0000001b, /* I2CCLKL -   Low period for 100KHz operation */
        0x0000001b, /* I2CCLKH -   High period for 100KHz operation */
        0x00000002, /* I2CCNT -    Data words per transmission */
        0x0000001a, /* I2CSAR -    Slave address */
        0x00004680, /* I2CMDR -    Mode */
        0x0000001D  /* I2CPSC -    Prescale 360MHz to 12MHz */
    };

    /* Initialize CSL */
    CSL_init();

    /* Unlock PERCFG through PCFGLOCK */
    *((unsigned long *)0x1b3f018) = 0x10c0010c;

    /* Enable VP0-VP2, I2C and McASP0 in PERCFG */
    *((unsigned long *)0x1b3f000) = 0x79;

    /* Read back PERCFG */
    test = *((unsigned long *)0x1b3f000);

    /* Wait at least 128 CPU cycles */
    _wait(128);

    /* Initialize EMIFA */
    EMIFA_config(&emifaCfg0);

    /* Open I2C handle */
    EMBI2C_handle = I2C_open(I2C_PORT0, I2C_OPEN_RESET);

    /* Configure I2C controller */
    I2C_config(EMBI2C_handle, &i2cCfg);

    /* Take I2C out of reset */
    I2C_outOfReset(EMBI2C_handle);

    /* Open the GPIO handle */
    EMBGPIO_handle = GPIO_open(GPIO_DEV0, GPIO_OPEN_RESET);

	GPIO_getConfig(EMBGPIO_handle, &gp_config);
	

    /* Enable caching of SDRAM */

    CACHE_reset();
    CACHE_clean(CACHE_L2ALL, 0, 0);
    CACHE_setL2Mode(CACHE_64KCACHE);
    
    CACHE_enableCaching(CACHE_EMIFA_CE00);
    CACHE_enableCaching(CACHE_EMIFA_CE01);
    CACHE_enableCaching(CACHE_EMIFA_CE02);
    CACHE_enableCaching(CACHE_EMIFA_CE03);

}


