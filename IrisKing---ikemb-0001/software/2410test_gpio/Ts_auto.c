#include <string.h>
#include "2410addr.h"
#include "2410lib.h"
#include "Ts_auto.h"

#define ADCPRS 39


void __irq Adc_or_TsAuto(void)
{
    rINTSUBMSK|=(BIT_SUB_ADC|BIT_SUB_TC);	// Mask sub interrupt (ADC and TC) 

    // TC(Touch screen Control) Interrupt	
    if(rADCTSC&0x100)
    {
	Uart_Printf("\nStylus Up!!\n");
	rADCTSC&=0xff;	// Set stylus down interrupt
    }
    else 
    {
	Uart_Printf("\nStylus Down!!\n");
	// <Auto X-Position and Y-Position Read>
	rADCTSC=(0<<8)|(1<<7)|(1<<6)|(0<<5)|(1<<4)|(1<<3)|(1<<2)|(0);
	// Stylus Down,Don't care,Don't care,Don't care,Don't care,XP pullup Dis,Auto,No operation

	rADCCON|=0x1;	// Start Auto conversion

	while(rADCCON & 0x1);		//check if Enable_start is low
	while(!(0x8000&rADCCON));	// Check ECFLG
	
	Uart_Printf("X-Posion[AIN5] is %04d\n", (0x3ff&rADCDAT0));
	Uart_Printf("Y-Posion[AIN7] is %04d\n", (0x3ff&rADCDAT1));
	rADCTSC=(1<<8)|(1<<7)|(1<<6)|(0<<5)|(1<<4)|(0<<3)|(0<<2)|(3);
   	// Stylus Up,Don't care,Don't care,Don't care,Don't care,XP pullup En,Normal,Waiting mode
    }
    rSUBSRCPND|=BIT_SUB_TC;
    rINTSUBMSK=~(BIT_SUB_TC);	// Unmask sub interrupt (TC)     
    ClearPending(BIT_ADC);
}
			

void Ts_Auto(void)
{
    Uart_Printf("[Touch Screen Test.]\n");
    Uart_Printf("Auto X/Y position conversion mode test\n");

    rADCDLY=(50000);	// ADC Start or Interval Delay

    rADCCON = (1<<14)|(ADCPRS<<6)|(0<<3)|(0<<2)|(0<<1)|(0);	
    // Enable Prescaler,Prescaler,AIN5/7 fix,Normal,Disable read start,No operation
    rADCTSC=(0<<8)|(1<<7)|(1<<6)|(0<<5)|(1<<4)|(0<<3)|(0<<2)|(3);//tark
    // Down,YM:GND,YP:AIN5,XM:Hi-z,XP:AIN7,XP pullup En,Normal,Waiting for interrupt mode

    pISR_ADC=(unsigned)Adc_or_TsAuto;
    rINTMSK=~(BIT_ADC);
    rINTSUBMSK=~(BIT_SUB_TC);

    Uart_Printf("\nType any key to exit!!!\n");
    Uart_Printf("\nStylus Down, please...... \n");
    Uart_Getch();

    rINTSUBMSK|=BIT_SUB_TC;
    rINTMSK|=BIT_ADC;
    Uart_Printf("[Touch Screen Test.]\n");
}

