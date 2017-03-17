#include <std.h>

#include <csl.h>
#include <csl_cache.h>
#include <csl_gpio.h>
#include <csl_dat.h>
#include <stdio.h>

#include "..\..\include\dbg_printf.h"
// extern int intHeap,extHeap;
/* perform all initializations */
#include "dsp_memory.h"
#include "dsp_typedef.h"
#include "dsp_typedef.h"

extern GPIO_Handle EMBGPIO_handle;

void main()
{

    // Turn on the cache first
	unsigned char mac[6];
	int i;
	GPIO_Config gp_config;

	if (!DAT_open(DAT_CHAANY, DAT_PRI_LOW, DAT_OPEN_2D))
		dbg_output("failed in opening dat module\n");


	{
		// 红外照明控制，写0，开灯，写1，关灯
		/* Sets GP2 and GP3 as output pins */

		Uint32 PinID= GPIO_PIN4 | GPIO_PIN7;

		GPIO_pinDirection(EMBGPIO_handle,PinID,GPIO_OUTPUT);
		GPIO_pinWrite(EMBGPIO_handle,PinID,0);

		// FOR CCD
		// should enable pin and set pin's direction
		PinID= GPIO_PIN1 | GPIO_PIN2;
		GPIO_pinEnable(EMBGPIO_handle,PinID);
		GPIO_pinDirection(EMBGPIO_handle,PinID,GPIO_OUTPUT);
		GPIO_pinWrite(EMBGPIO_handle,PinID,0);
		//GPIO_pinWrite(EMBGPIO_handle,PinID,1);

	GPIO_getConfig(EMBGPIO_handle, &gp_config);
	
		GPIO_pinDirection(EMBGPIO_handle,GPIO_PIN3,GPIO_OUTPUT);
		GPIO_pinWrite(EMBGPIO_handle,GPIO_PIN3,1);

	}
	puts("main");

	tskVideoInputInit();
	tskVideoInputStart();

	{
		// 红外照明控制，写0，开灯，写1，关灯
		/* Sets GP2 and GP3 as output pins */

		Uint32 PinID= GPIO_PIN4;

		GPIO_pinWrite(EMBGPIO_handle,PinID,1);

	}

	tskVideoOutputInit();
	tskVideoOutputStart();

	arm_dsp_data_init();

	// 取MAC值
	get_mac(mac);

	{
		// 红外照明控制，写0，开灯，写1，关灯
		/* Sets GP2 and GP3 as output pins */

		Uint32 PinID= GPIO_PIN7;

		GPIO_pinWrite(EMBGPIO_handle,PinID,1);

	}


	dbg_output("MAC is ");
	
	for (i = 0; i < 6; i++)
	{
		dbg_output("%02x ", mac[i]);
		
		tsk_used_reg->dsp_mac_reg.mac_val[i] = mac[i];
	}
	
	dbg_output("\n");


	// DSP启动完毕后，设置此值作为标志，通知ARM
	tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_IDLE_ACTIVE;
	
}
