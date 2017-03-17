#include <string.h>
#include "def.h"
#include "option.h"
#include "2410addr.h"
#include "2410lib.h"
#include "2410slib.h" 
#include "gpio.h"




void Gpio_Test(void)
{
       U8 key;
	   U32 cc;

	key=Uart_Getch();
	Uart_Printf("gpio test \n");
	*(volatile unsigned char *)(0x18000000)=0x55;
	//*(volatile unsigned char *)(0x18000020)=0xaa;
	key= (*(volatile unsigned char *)0x18000000);
	Uart_Printf("config test is %x\n",key);

		key=Uart_Getch();
	Uart_Printf("gpio test \n");
	*(volatile unsigned char *)(0x18000000)=0xaa;
	//*(volatile unsigned char *)(0x18000020)=0xff;
	key= (*(volatile unsigned char *)0x18000000);
	Uart_Printf("config test is %x\n",key);

		key=Uart_Getch();
	Uart_Printf("gpio test \n");
	*(volatile unsigned char *)(0x18000000)=0xff;
	//*(volatile unsigned char *)(0x18000020)=0x00;
	key= (*(volatile unsigned char *)0x18000000);
	Uart_Printf("config test is %x\n",key);

		key=Uart_Getch();
	Uart_Printf("gpio test \n");
	*(volatile unsigned char *)(0x18000000)=0x00;
	//*(volatile unsigned char *)(0x18000020)=0x55;
	key= (*(volatile unsigned char *)0x18000000);
	Uart_Printf("config test is %x\n",key);

	key=Uart_Getch();
	Uart_Printf("hpi test \n");
	//*(volatile U32 *)(0x20000000)=0x00;
	cc= (*(volatile U32 *)0x22000000);
	Uart_Printf("config test is 0x%x\n",cc);
	
		key=Uart_Getch();
	Uart_Printf("hpi test1 \n");
	*(volatile U32 *)(0x20800000)=0x00;
	Uart_Printf("config test is 0x%x\n",cc);
	
			key=Uart_Getch();
	Uart_Printf("hpi test1 \n");
	*(volatile U32 *)(0x21000000)=0xff;
	Uart_Printf("config test is 0x%x\n",cc);
	
			key=Uart_Getch();
	Uart_Printf("hpi test1 \n");
	*(volatile U32 *)(0x21000000)=0x55;
	Uart_Printf("config test is 0x%x\n",cc);
	
			key=Uart_Getch();
	Uart_Printf("hpi test1 \n");
	*(volatile U32 *)(0x21000000)=0xaa;
	Uart_Printf("config test is 0x%x\n",cc);
	

	

}