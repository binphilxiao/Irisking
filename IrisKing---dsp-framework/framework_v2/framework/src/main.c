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

	if (!DAT_open(DAT_CHAANY, DAT_PRI_LOW, DAT_OPEN_2D))
		dbg_output("failed in opening dat module\n");


//    CACHE_setL2Queue(0x3, 0x7);
//    CACHE_setL2Queue(0x1, 0x7);
//    CACHE_setPriL2Req(CACHE_L2PRIHIGH);


	{
		// 红外照明控制，写0，开灯，写1，关灯
		/* Sets GP2 and GP3 as output pins */

		Uint32 PinID= GPIO_PIN4 | GPIO_PIN7;

		GPIO_pinDirection(EMBGPIO_handle,PinID,GPIO_OUTPUT);
		GPIO_pinWrite(EMBGPIO_handle,PinID,0);

		GPIO_pinDirection(EMBGPIO_handle,GPIO_PIN3,GPIO_OUTPUT);
		GPIO_pinWrite(EMBGPIO_handle,GPIO_PIN3,1);

	}
	puts("main");
//	C0104_verify(buf_1);

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

	// 取MAC值
	get_mac(mac);

	{
		// 红外照明控制，写0，开灯，写1，关灯
		/* Sets GP2 and GP3 as output pins */

		Uint32 PinID= GPIO_PIN7;

		GPIO_pinWrite(EMBGPIO_handle,PinID,1);

	}


 	dbg_output1("MAC is ");
	
	for (i = 0; i < 6; i++)
	{
		dbg_output1("%02x ", mac[i]);		
	}
	dbg_output1("\n");

	
}
