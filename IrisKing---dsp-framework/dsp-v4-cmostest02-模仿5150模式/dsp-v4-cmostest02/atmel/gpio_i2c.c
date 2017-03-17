#include "csl.h"
#include "csl_gpio.h"

extern GPIO_Handle EMBGPIO_handle;

#define NORMAL_DELAY	10000

static int gpio_sck = GPIO_PIN6;
static int gpio_sda = GPIO_PIN5;


int set_i2c_pin(int v)
{
   int pin_arr[] = {GPIO_PIN0, GPIO_PIN1, GPIO_PIN2, GPIO_PIN3, 
   					GPIO_PIN4, GPIO_PIN5, GPIO_PIN6, GPIO_PIN7,
					GPIO_PIN8, GPIO_PIN9, GPIO_PIN10, GPIO_PIN11, 
					GPIO_PIN12, GPIO_PIN13, GPIO_PIN14, GPIO_PIN15};

	int sck = v & 0xf;
	int sda = (v >> 4) & 0x0f;

	gpio_sck = pin_arr[sck];
	gpio_sda = pin_arr[sda];
}

#define DELAY_TIME 1000
static void _delay(Int delayTime)
{
    asm("loop1: BDEC loop1, A4");
    asm(" NOP 5");
}

void delay_ms(int n)
{
	int i;
	for (i = 0 ; i < n; i ++)
		_delay(10000);
}

static void GPIO_I2C_sclk_high(int cycle_delay)
{
	GPIO_pinDirection(EMBGPIO_handle, gpio_sck, GPIO_INPUT);
	_delay(cycle_delay);
}

static void GPIO_I2C_sclk_low(int cycle_delay)
{
	GPIO_pinDirection(EMBGPIO_handle, gpio_sck, GPIO_OUTPUT);
	GPIO_pinWrite(EMBGPIO_handle, gpio_sck, 0);
	_delay(cycle_delay);
}

static void GPIO_I2C_sclk_pulse(int cycle_delay)
{
	GPIO_I2C_sclk_low(cycle_delay >> 1);
	GPIO_I2C_sclk_high(cycle_delay);
	GPIO_I2C_sclk_low(cycle_delay >> 1);
}

static void GPIO_I2C_sda_high()
{
	GPIO_pinDirection(EMBGPIO_handle, gpio_sda, GPIO_INPUT);
}


static void GPIO_I2C_sda_low()
{
	GPIO_pinDirection(EMBGPIO_handle, gpio_sda, GPIO_OUTPUT);
	GPIO_pinWrite(EMBGPIO_handle, gpio_sda, 0);
}

static void GPIO_I2C_sda_input()
{
	GPIO_I2C_sda_high();
}


static int GPIO_I2C_sda()
{
	return GPIO_pinRead(EMBGPIO_handle, gpio_sda);
}


void ATMEL_init()
{
	/* Sets GP2 and GP3 as output pins */

	GPIO_pinDirection(EMBGPIO_handle, gpio_sck | gpio_sda, GPIO_INPUT);
	GPIO_pinEnable(EMBGPIO_handle,gpio_sck | gpio_sda);
	GPIO_pinWrite(EMBGPIO_handle, gpio_sck | gpio_sda, 0);
	GPIO_pinDirection(EMBGPIO_handle, gpio_sck | gpio_sda, GPIO_OUTPUT);

	GPIO_I2C_sda_high();
	GPIO_I2C_sclk_pulse(NORMAL_DELAY);
	GPIO_I2C_sclk_pulse(NORMAL_DELAY);
	GPIO_I2C_sclk_pulse(NORMAL_DELAY);
	GPIO_I2C_sclk_pulse(NORMAL_DELAY);
	GPIO_I2C_sclk_pulse(NORMAL_DELAY);

}

int I2C_IssueStart(
	int dummy )  // 指定USB2ISP设备序号
{
	
	GPIO_I2C_sclk_high(NORMAL_DELAY);
	GPIO_I2C_sda_low();
	GPIO_I2C_sclk_low(NORMAL_DELAY);
	return 1;
}


int I2C_IssueStop(
	int dummy )  // 指定USB2ISP设备序号
{
	GPIO_I2C_sda_low();
	GPIO_I2C_sclk_high(NORMAL_DELAY);
	GPIO_I2C_sda_high();
	GPIO_I2C_sclk_high(NORMAL_DELAY);
	return 1;
}


int I2C_OutByteCheckAck(  // 输出一字节数据并检查应答是否有效
	int hI2C,  // 指定USB2ISP设备序号
	unsigned char out)  // 准备写出的数据
{
	int i, ret;


	for (i = 0; i < 8; i++)
	{
		if (out & (1 << (7 - i)))
			GPIO_I2C_sda_high();
		else
			GPIO_I2C_sda_low();
		GPIO_I2C_sclk_pulse(NORMAL_DELAY);
	}

	GPIO_I2C_sda_input();
	GPIO_I2C_sclk_low(NORMAL_DELAY >> 1);

	GPIO_I2C_sclk_high(NORMAL_DELAY >> 1);
	ret = GPIO_I2C_sda();
	GPIO_I2C_sclk_high(NORMAL_DELAY >> 1);

	GPIO_I2C_sclk_low(NORMAL_DELAY >> 1);
	
	return( !ret );
}

static int I2C_InOneCharByAck()
{
	int c = 0, i, ret;
	GPIO_I2C_sclk_low(NORMAL_DELAY >> 1);
	GPIO_I2C_sda_input();

	for (i = 0; i < 8; i++)
	{
		GPIO_I2C_sclk_low(NORMAL_DELAY >> 1);
		GPIO_I2C_sclk_high(NORMAL_DELAY >> 1);
		ret = GPIO_I2C_sda();
		GPIO_I2C_sclk_high(NORMAL_DELAY >> 1);
		GPIO_I2C_sclk_low(NORMAL_DELAY >> 1);
		if (ret)
			c |= (1 << (7 - i));
	}

	GPIO_I2C_sda_low();
	GPIO_I2C_sclk_low(NORMAL_DELAY >> 1);
	GPIO_I2C_sclk_high(NORMAL_DELAY);
	GPIO_I2C_sclk_low(NORMAL_DELAY >> 1);
	return c;
}

int I2C_InCharByAck(  // 输入数据块,每输入一个字节都产生有效应答
	int hI2C,  // 指定USB2ISP设备序号
	int len,  // 准备读取的数据字节数,单次必须小于32字节
	unsigned char * buf )  // 指向一个缓冲区,返回后是读入的数据
{
	int i;


	for (i = 0; i < len; i++)
		buf[i] = I2C_InOneCharByAck();
	return( 1 );
}







