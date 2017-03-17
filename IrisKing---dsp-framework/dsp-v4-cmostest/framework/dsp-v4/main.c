#include <std.h>
#include <csl.h>
#include <csl_cache.h>
#include <csl_gpio.h>
#include <csl_dat.h>
#include <stdio.h>

#include "..\..\include\dbg_printf.h"
#include "dsp_memory.h"
#include "dsp_typedef.h"
#include "dsp_typedef.h"

extern GPIO_Handle EMBGPIO_handle;

void Ctl_Led_Left(char sw);
void Ctl_Led_Right(char sw);

void main()
{
	unsigned char mac[6];
	int i;

	if (!DAT_open(DAT_CHAANY, DAT_PRI_LOW, DAT_OPEN_2D))
		dbg_output("failed in opening dat module\n");

	{
	
		// 红外照明控制，写0，开灯，写1，关灯
		/* Sets GP2 and GP3 as output pins */

		Uint32 PinID= GPIO_PIN4 | GPIO_PIN7;

		GPIO_pinDirection(EMBGPIO_handle,PinID,GPIO_OUTPUT);
		GPIO_pinWrite(EMBGPIO_handle,PinID,0);

		//Ctl_Led_Left(0);
		//Ctl_Led_Right(0);

	}

	puts("main");

	VideoInputInit();
	VideoInputStart();

	VideoOutputInit();
	VideoOutputStart();

	arm_dsp_data_init();

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
