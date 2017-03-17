/*
2009-07-15 Version 1 : wiegand input & wiegand output with interrupt.
*/

#include <linux/proc_fs.h>
#include <linux/delay.h>
#include <linux/init.h>
#include <linux/device.h>
#include <linux/module.h>
#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/errno.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <asm/page.h>
#include <asm/ipic.h>
#include <linux/interrupt.h>
#include <asm/semaphore.h>
#include <linux/platform_device.h>
#include <../arch/powerpc/platforms/83xx/mpc83xx.h>

#define IRQ_3 19

#define DEVICE_ID_BASE 15
#define DEVICE_ID 0x5A

//-------------------------------------------------------------------//
//                                   FPGA MEMORY AND REGISTER MAP                               //
//-------------------------------------------------------------------//
#define FPGA_ADDR_BASE 0xF0000000

#define CONFIG_REG 0

#define WIEGAND_IN1_BYTE0_REG 1
#define WIEGAND_IN1_BYTE1_REG 2
#define WIEGAND_IN1_BYTE2_REG 3
#define WIEGAND_IN1_BYTE3_REG 4
#define WIEGAND_IN2_BYTE0_REG 5
#define WIEGAND_IN2_BYTE1_REG 6
#define WIEGAND_IN2_BYTE2_REG 7
#define WIEGAND_IN2_BYTE3_REG 8
#define WIEGAND_IN3_BYTE0_REG 9
#define WIEGAND_IN3_BYTE1_REG 10
#define WIEGAND_IN3_BYTE2_REG 11
#define WIEGAND_IN3_BYTE3_REG 12

#define WIEGAND_OUT_BYTE0_REG 1
#define WIEGAND_OUT_BYTE1_REG 2
#define WIEGAND_OUT_BYTE2_REG 3
#define WIEGAND_OUT_BYTE3_REG 4

#define ADC_REG 13

#define KEYBOARD_REG 14

#define LCD_CCD_REG 5

#define WIEGAND_IN1_IRQ_MASK 0x1
#define WIEGAND_IN2_IRQ_MASK 0x2
#define WIEGAND_IN3_IRQ_MASK 0x4

#define WIEGAND_OUT_IRQ_MASK 0x10

#define KEYBOARD_IRQ_MASK 0x20
#define FW_IRQ_MASK 0x40
#define FQ_IRQ_MASK 0x80

#define CCD1_SW_MASK 0x2
#define CCD2_SW_MASK 0x4
#define CCD3_SW_MASK 0x8
#define LCD_SW_MASK 0x1

#define FPGA_IO0_MASK 0x10
#define FPGA_IO1_MASK 0x20
#define FPGA_IO2_MASK 0x40
#define FPGA_IO3_MASK 0x80

static dev_t fpga_dev_t;
static u8 sw_reg=0;

//mem for interface with user space
u8 *wig_buf;

static struct FPGA_t
{
	void __iomem *FPGA_mem;
	struct semaphore sem;
	int wig_num;
}*FPGA_dev;


//这一段代码在中断函数内执行，从寄存器读取的数有错，因此还缺少对SEPNR[28]的写1清除中断挂起的操作。
//在中断函数之外的部分执行，都没有问题。
 /*void clear_reg_sepnp(void)
 {
    u32 reg_val;
    reg_val = in_be32(FPGA_dev->gpio + 0x2C);
    printk("kernel gpio = %x\n", (unsigned int)(FPGA_dev->gpio));
    printk("kernel SEPNR before = %x\n",reg_val);
    reg_val &= ~(0x10000000);
    reg_val |= 0x10000000;
    out_be32(FPGA_dev->gpio + 0x2C, reg_val);
    reg_val = in_be32(FPGA_dev->gpio + 0x2C);
    printk("kernel SEPNR after = %x\n",reg_val);
}*/

static void wiegand_in_interrupt(int ch)
{
    u32 i;
    u32 wig_data = 0;

    mdelay(500);

    for(i=0;i<4;i++)
        {
        wig_buf[i] = ioread8(FPGA_dev->FPGA_mem + i + 1 + 4*(ch-1));
        mb();
        wig_data = (wig_data << 8) + wig_buf[i];
        }
    mb();

    printk("wigend in %d = %x\n",ch,wig_data);
}

static void wiegand_out_interrupt(void)
{
    u8 config= ioread8(FPGA_dev->FPGA_mem+CONFIG_REG);
    //中断处理完毕，configure相应位（中断输出使能 & 中断源判断）复位为1
    config |= 0x18;
    iowrite8(config, FPGA_dev->FPGA_mem+CONFIG_REG);
    mb();
    printk("wiegand output complete\n");
}

static void keyboard_interrupt(void)
{
	u8 dat;
	dat=ioread8(FPGA_dev->FPGA_mem+KEYBOARD_REG);
	printk("keyboard pressed %d\n",dat);
}

static void fw_interrupt(void)
{	
	printk("FW pressed.\n");
}

static void fq_interrupt(void)
{
	printk("FQ pressed.\n");
}

static void clear_interrupt(void)
{
	u8 config;
	config=ioread8(FPGA_dev->FPGA_mem+CONFIG_REG);
	mb();
	iowrite8(config, FPGA_dev->FPGA_mem+CONFIG_REG);
	mb();
	//printk("Interrupt cleared.\n");
}

static void CCD1_SW(int sw)
{
    sw_reg |= CCD1_SW_MASK&((sw&0x01)<<1);
	printk("CCD1_SW %d %x\n",sw,sw_reg);
    iowrite8(sw_reg, FPGA_dev->FPGA_mem+LCD_CCD_REG);
    mb();
}

static void CCD2_SW(int sw)
{
    sw_reg |= CCD2_SW_MASK&((sw&0x01)<<2);
	printk("CCD2_SW %d %x\n",sw,sw_reg);
    iowrite8(sw_reg, FPGA_dev->FPGA_mem+LCD_CCD_REG);
    mb();
}

static void CCD3_SW(int sw)
{
    sw_reg |= CCD3_SW_MASK&((sw&0x01)<<3);
	printk("CCD3_SW %d %x\n",sw,sw_reg);
    iowrite8(sw_reg, FPGA_dev->FPGA_mem+LCD_CCD_REG);
    mb();
}

static void LCD_SW(int sw)
{
    sw_reg |= LCD_SW_MASK&(sw&0x01);
	printk("LCD_SW %d %x\n",sw,sw_reg);
    iowrite8(sw_reg, FPGA_dev->FPGA_mem+LCD_CCD_REG);
    mb();
}

static void FPGA_IO0(int sw)
{
    sw_reg |= FPGA_IO0_MASK&((sw&0x01)<<4);
	printk("FPGA_IO0 %d %x\n",sw,sw_reg);
    iowrite8(sw_reg, FPGA_dev->FPGA_mem+LCD_CCD_REG);
    mb();
}

static void FPGA_IO1(int sw)
{
    sw_reg |= FPGA_IO1_MASK&((sw&0x01)<<5);
	printk("FPGA_IO1 %d %x\n",sw,sw_reg);
    iowrite8(sw_reg, FPGA_dev->FPGA_mem+LCD_CCD_REG);
    mb();
}

static void FPGA_IO2(int sw)
{
    sw_reg |= FPGA_IO2_MASK&((sw&0x01)<<6);
	printk("FPGA_IO2 %d %x\n",sw,sw_reg);
    iowrite8(sw_reg, FPGA_dev->FPGA_mem+LCD_CCD_REG);
    mb();
}

static void FPGA_IO3(int sw)
{
    sw_reg |= FPGA_IO3_MASK&((sw&0x01)<<7);
	printk("FPGA_IO3 %d %x\n",sw,sw_reg);
    iowrite8(sw_reg, FPGA_dev->FPGA_mem+LCD_CCD_REG);
    mb();
}

static void read_adc(u8 *adc_in)
{
       *adc_in = ioread8(FPGA_dev->FPGA_mem + ADC_REG);
	printk("adc in is %x\n",*adc_in);
	mb();
}

static irqreturn_t FPGA_interrupt(int irq, void *dev_id)
{

	u8 config=0;
	config= ioread8(FPGA_dev->FPGA_mem);
    mb();
    //printk("Interrupt received\n");
    //printk("configure %x\n",config);
	
    if (down_interruptible(&FPGA_dev->sem))
		return IRQ_HANDLED;

    if((config & WIEGAND_IN1_IRQ_MASK))                    //韦根输入1
        wiegand_in_interrupt(1);
    else if((config & WIEGAND_IN2_IRQ_MASK))           //韦根输入2
        wiegand_in_interrupt(2);
    else if((config & WIEGAND_IN3_IRQ_MASK))           //韦根输入3
        wiegand_in_interrupt(3);
    else if((config & 0x8) && !(config & WIEGAND_OUT_IRQ_MASK))           //韦根输出使能 & 韦根输出中断
        wiegand_out_interrupt();
    else if((config & KEYBOARD_IRQ_MASK))          //键盘
        keyboard_interrupt();
    else if((config & FW_IRQ_MASK))          //防撬开关
        fw_interrupt();
    else if((config & FQ_IRQ_MASK))          //一键复位
        fq_interrupt();
	
    clear_interrupt();
    up(&FPGA_dev->sem);
	
    return IRQ_HANDLED;
}


static int FSL_FPGA_ioctl(struct inode *inode, struct file *filp, uint cmd, ulong arg)
{
	struct FPGA_t *dev = (struct FPGA_t *)filp->private_data;
	int ret = 0;
	u8 adc_value;
	printk("FSL_FPGA_ioctl %d\n",cmd);
	switch(cmd)
        {
        case 1:{         //wiegand input 1
            dev->wig_num = 1;
            break;
            }
        case 2:{         //wiegand input 2
            dev->wig_num = 2;
            break;
            }
        case 3:{         //wiegand input 3
            dev->wig_num = 3;
            break;
            }
	 case 4:{
	 	CCD1_SW(0);
	 	break;
	 	}
	 case 5:{
	 	CCD1_SW(1);
	 	break;
	 	}
	 case 6:{
	 	CCD2_SW(0);
	 	break;
	 	}
	 case 7:{
	 	CCD2_SW(1);
	 	break;
	 	}
	 case 8:{
	 	CCD3_SW(0);
	 	break;
	 	}
	 case 9:{
	 	CCD3_SW(1);
	 	break;
	 	}
	 case 10:{
	 	LCD_SW(0);
	 	break;
	 	}
	 case 11:{
	 	LCD_SW(1);
	 	break;
	 	}
	 case 12:{
	 	FPGA_IO0(0);
	 	break;
	 	}
	case 13:{
	 	FPGA_IO0(1);
	 	break;
	 	}
	case 14:{
	 	FPGA_IO1(0);
	 	break;
	 	}
	case 15:{
	 	FPGA_IO1(1);
	 	break;
	 	}
	case 16:{
	 	FPGA_IO2(0);
	 	break;
	 	}
	case 17:{
	 	FPGA_IO2(1);
	 	break;
	 	}
	case 18:{
	 	FPGA_IO3(0);
	 	break;
	 	}
	case 19:{
	 	FPGA_IO3(1);
	 	break;
	 	}

	case 20:{
	 	read_adc(&adc_value);
		printk("adc value is %x\n",adc_value);
		arg=adc_value;
	 	break;
	 	}
        default:
            return -EINVAL;
        }
    return ret;
}

/*
static loff_t FSL_Wiegand_llseek(struct file *filp, loff_t off, int whence)
{
}
*/

static ssize_t FSL_FPGA_read(struct file *filp, char __user *buf, size_t count, loff_t *offp)
{
	struct FPGA_t *dev = (struct FPGA_t *)filp->private_data;
	ssize_t ret = 0;
	u32 wig_data = 0;
	int i;
	printk("FSL_FPGA_read\n");

	if (down_interruptible(&dev->sem))
		{
		printk("FSL_Wiegand_read down_interruptible failure!\n");
		return -ERESTARTSYS;
		}

    for(i=0;i<4;i++)
        {
        wig_buf[i] = ioread8(dev->FPGA_mem + 4*(dev->wig_num-1) + i + 1);
        mb();
        wig_data = (wig_data << 8) + wig_buf[i];
        }
    up(&dev->sem);

	if((copy_to_user(buf, &wig_data, count)))
		return -EFAULT;

    ret =count;
	return ret;
}

static ssize_t FSL_FPGA_write(struct file *filp, const char __user *buf, size_t count, loff_t *offp)
{
	struct FPGA_t *dev = (struct FPGA_t *)filp->private_data;
	ssize_t ret = 0;
	u32 dat = 0;
	u8 gett;
	printk("FSL_FPGA_write\n");
	if (down_interruptible(&dev->sem))
		return -ERESTARTSYS;

	if ((copy_from_user(&dat, buf, count)))
		{
		up(&dev->sem);
		return -EFAULT;
		}
	printk("wiegand out data = %x\n",dat);

    	gett = dat;
	iowrite8(gett, dev->FPGA_mem+1);
	mb();
	gett = dat>>8;
	iowrite8(gett, dev->FPGA_mem+2);
	mb();
	gett = dat>>16;
	iowrite8(gett, dev->FPGA_mem+3);
	mb();
	gett = dat>>24;
	iowrite8(gett, dev->FPGA_mem+4);
	mb();

    //设置韦根输出使能为低
    gett = ioread8(FPGA_dev->FPGA_mem);
    gett &= ~(0x18);
    iowrite8(gett, dev->FPGA_mem);

    up(&dev->sem);
	ret = count;
	return ret;
}


static struct file_operations FPGA_fops = {
	.owner		=	THIS_MODULE,
	.ioctl		       =	FSL_FPGA_ioctl,
	.read		=	FSL_FPGA_read,
	.write		=	FSL_FPGA_write,
};

static struct cdev FPGA_cdev = {
	.owner = THIS_MODULE,
	.ops = &FPGA_fops,
};

static int FPGA_remove(void)
{
	int ret=ENODEV;
    	free_irq(IRQ_3, NULL);
	printk("FPGA_remove\n");
	iounmap(FPGA_dev->FPGA_mem);
	kfree(wig_buf);
	kfree(FPGA_dev);

	unregister_chrdev_region(fpga_dev_t, 1);
	cdev_del(&FPGA_cdev);
	printk(KERN_INFO "Freescale mpc8313 wiegand removed\n");

	return ret;
}

static int FPGA_probe(void)
{
    int reg_val,ret=ENODEV;

    printk("FPGA_probe\n");

//在内核空间中动态申请内存
	if((FPGA_dev = kmalloc(sizeof(struct FPGA_t), GFP_KERNEL)) == NULL)
		{
		printk(KERN_ERR "FPGA_t: out of memory\n");
		return -ENOMEM;
		}
	memset(FPGA_dev, 0, sizeof(*FPGA_dev));


//可以自己设定需要几个字节的空间，当前是4字节
	if((wig_buf = kmalloc(4*sizeof(u8), GFP_KERNEL)) == NULL)
		{
		printk(KERN_ERR "buffer: out of memory\n");
		return -ENOMEM;
		}
	memset(wig_buf, 0, 4*sizeof(*wig_buf));
	
//内存空间映射：连接到FPGA的数据地址和总线
	FPGA_dev->FPGA_mem = ioremap(0xF0000000,32);
//读取设备ID
        reg_val = ioread8(FPGA_dev->FPGA_mem +DEVICE_ID_BASE);
        mb();
	if (reg_val==DEVICE_ID)
		printk("FPGA Device ID=%x\n",reg_val);
	else {
		printk("ERR FPGA Device ID %x\n",reg_val);
		return -ENODEV;
		}

//申请中断

	init_MUTEX(&FPGA_dev->sem);
    if (request_irq(IRQ_3, FPGA_interrupt, SA_INTERRUPT,"FPGA", NULL))
        {
        printk(KERN_ERR "IRQ%d already in use\n", IRQ_3);
        free_irq(IRQ_3, NULL);
        FPGA_remove();
        return 1;
        }

	cdev_init(&FPGA_cdev,&FPGA_fops);
	FPGA_cdev.owner=THIS_MODULE;
	FPGA_cdev.ops = &FPGA_fops;
	ret=alloc_chrdev_region(&fpga_dev_t, 0, 1, "fpga");
	printk("main num is %d\n",fpga_dev_t);
	cdev_add(&FPGA_cdev,fpga_dev_t,1);

	
	printk(KERN_INFO"Freescale mpc8313 wiegand with interrupt initialized\n");
	return ret;
}


static int __init FPGA_init(void) 
{
	int ret;

	printk("FPGA_init\n");
	ret=FPGA_probe();

	return ret;
}

static void __exit FPGA_exit(void)
{
	int ret;
	
	printk("FPGA_exit\n");
	ret=FPGA_remove();
}

module_init(FPGA_init);
module_exit(FPGA_exit);

MODULE_AUTHOR("IrisKing");
MODULE_DESCRIPTION("Driver for FPGA in MPC83xx uProcessor");
MODULE_LICENSE("GPL");
