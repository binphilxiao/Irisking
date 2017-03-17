#include <linux/delay.h>
#include <linux/init.h>
#include <linux/device.h>
#include <linux/module.h>
#include <linux/fs.h>		// register_chrdev_region, alloc_chrdev_region, unregister_chrdev_region
#include <linux/cdev.h>
#include <linux/errno.h>
#include <linux/delay.h>	// msleep

#include <asm/uaccess.h>
#include <asm/io.h>
#include <asm/page.h>			//PAGE_SIZE
#include <asm/hardware.h>
#include <asm/semaphore.h>
//#include <asm/arch/regs-clock.h>
//#include <asm/arch/hardware.h>
//#include <asm/arch/map.h>
#include <asm/arch/regs-gpio.h>

#include "../include/hpi.h"
//#include <linux/ioport.h>		// 用于分配内存区域

int hpi_major = 0;
module_param(hpi_major, int, S_IRUGO);

int hpi_minor = 0;
#define hpi_nr_devs  1

#define hpi_name "hpi"
#define driver_name "s3c2410-hpi"

// HPI寄存器
struct hpi_iomem_t
{
	void __iomem	*base;
	//struct resource *resource;
	struct resource *mem_region;
};

#define HPI_CACHE_SIZE PAGE_SIZE
static struct hpi_dev_t
{
	struct hpi_iomem_t	ctl_wr;
	//struct hpi_iomem_t	ctl_rd;
	struct hpi_iomem_t	addr_wr;
	//struct hpi_iomem_t	addr_rd;
	struct hpi_iomem_t	sdat_wr;
	struct hpi_iomem_t	sdat_rd;
	//struct hpi_iomem_t	mdat_wr;
	//struct hpi_iomem_t	mdat_rd;

	struct cdev			cdev;		// 字符设备结构
	struct semaphore	sem;		// 互斥信号量
	u32					*cache;
}hpi_dev;

#define __THIRD_BOARD__
static void dsp_reset(void)
{
	s3c2410_gpio_setpin(S3C2410_GPH9, 0);

	s3c2410_gpio_setpin(S3C2410_GPA16, 1);
	mdelay(300);
	s3c2410_gpio_setpin(S3C2410_GPA16, 0);
	mdelay(300);
	s3c2410_gpio_setpin(S3C2410_GPA16, 1);
	mdelay(300);

#ifndef __THIRD_BOARD__
	s3c2410_gpio_setpin(S3C2410_GPH9, 1);
	mdelay(10);
	s3c2410_gpio_setpin(S3C2410_GPH9, 0);
	mdelay(10);
	s3c2410_gpio_setpin(S3C2410_GPH9, 1);
#else
	s3c2410_gpio_setpin(S3C2410_GPD7, 1);
	mdelay(10);
	s3c2410_gpio_setpin(S3C2410_GPD7, 0);
	mdelay(10);
	s3c2410_gpio_setpin(S3C2410_GPD7, 1);
#endif
}

static void dsp_start(struct hpi_dev_t *dev)
{
	iowrite32(0x00020002, dev->ctl_wr.base);
	mb();
}

static int hpi_open(struct inode *inode, struct file *filp)
{
	struct hpi_dev_t *dev;	// device information

	dev = container_of(inode->i_cdev, struct hpi_dev_t, cdev);
	filp->private_data = dev;	// for other methods

	//printk(KERN_WARNING"%s: filp=%p, dev=%p, hpi_dev=%p", __FUNCTION__, filp, dev, &hpi_dev);
	return 0;
}

static int hpi_release(struct inode *inode, struct file *file)
{
	//printk("hpi_release\n");
	return 0;
}

static int hpi_ioctl(struct inode *inode, struct file *filp, uint cmd, ulong arg)
{
	struct hpi_dev_t *dev = filp->private_data;
	if (_IOC_TYPE(cmd) != HPI_IOC_MAGIC)
		return -ENOTTY;

	if (down_interruptible(&dev->sem))
		return -ERESTARTSYS;

	switch (cmd) 
	{
	case HPI_IOC_DSP_RESET:
		dsp_reset();
		break;

	case HPI_IOC_DSP_START:
		dsp_start(dev);
		break;

	default:
		up(&dev->sem);
		return -ENOTTY;
	}

	up(&dev->sem);
	return 0;
}

static loff_t hpi_llseek(struct file *filp, loff_t off, int whence)
{
	//struct hpi_dev_t *dev = filp->private_data;
	//off_t n_off = (off_t)off;
	loff_t newpos;

	switch(whence)
	{
	case 0: /* SEEK_SET */
		newpos = off;//*(u32 *)&n_off;
		break;

	case 1: /* SEEK_CUR */
		newpos = filp->f_pos + off;
		break;

	//case 2: /* SEEK_END */
	//	newpos = dev->size + off;
	//	break;

	default: /* can't happen */
		return -EINVAL;
	}
	//printk(KERN_WARNING"%s:1: filp=%p, sizeof(loff_t)=%d, newpos=%d, filp->f_pos=%d\n", __FUNCTION__, filp, sizeof(loff_t), (int)newpos, (int)filp->f_pos);
	if (newpos < 0)
	{
		//printk(KERN_WARNING"newpos < 0");
		return -EINVAL;
	}
	filp->f_pos = newpos;
	//printk(KERN_WARNING"%s:2: filp=%p, sizeof(loff_t)=%d, newpos=%d, filp->f_pos=%d\n", __FUNCTION__, filp, sizeof(loff_t), newpos, filp->f_pos);
	return newpos;
}

static inline void dsp_seek(struct hpi_dev_t *dev, loff_t off)
{
	//printk(KERN_WARNING"%s: dev=%p, dev->addr_wr={base: %p, resource=%p}\n", __FUNCTION__, dev, dev->addr_wr.base, dev->addr_wr.resource);
	//off_t noff = (off_t)off;
    //iowrite32(*(u32 *)&off, dev->addr_wr.base);
    iowrite32(off, dev->addr_wr.base);
    mb();
}

static ssize_t hpi_read(struct file *filp, char __user *buf, size_t count, loff_t *offp)
{
	struct hpi_dev_t *dev = filp->private_data;
	ssize_t i;
	ssize_t retval = 0;
	ssize_t rd_size = HPI_CACHE_SIZE;
	ssize_t loop_ubound;
	loff_t seek_off = (*offp % sizeof(u32));

	if (down_interruptible(&dev->sem))
		return -ERESTARTSYS;

	count += seek_off;
	if(rd_size > count)
		rd_size = count;
	loop_ubound = (rd_size + sizeof(u32) - 1) / sizeof(u32);
	// 设置读指针 
	dsp_seek(dev, *offp - seek_off);
	// 读数据
	for (i = 0; i < loop_ubound; i++)
	{
		dev->cache[i] = ioread32(dev->sdat_rd.base);
		mb();
	}
	//printk(KERN_WARNING"read %d bytes, loop_ubound:%d ok\n", rd_size, loop_ubound);
	if (copy_to_user(buf, (char *)dev->cache + seek_off, rd_size - seek_off))
	{
		//printk(KERN_WARNING"copy_to_user fail\n");
		retval = -EFAULT;
		goto out;
	}
	//printk(KERN_WARNING"copy ok\n");
	retval = rd_size - seek_off;
	*offp += retval;
	//buf32=(u8 *)buf8;
	////	iowrite32(nowaddr, addr_wr_base);
	////	mb();
	////	while(s3c2410_gpio_getpin(S3C2410_GPF3)) printk("---wait---\n");
	//if (count%4==0)
	//	len=count/4;
	//else
	//	len=count/4+1;
	//for (i=0;i<len;i++) 
	//{
	//	*(buf32+i)=ioread32(sdat_rd_base);
	//	mb();
	//	//while(s3c2410_gpio_getpin(S3C2410_GPF3));
	//}
	//copy_to_user(buffer, buf8,count);

out:
	up(&dev->sem);
	return retval;
}

static ssize_t hpi_write(struct file *filp, const char __user *buf, size_t count, loff_t *offp)
{
	//unsigned long i,len,ok;
	//buf32=(u32 *)buf8;
	//copy_from_user(buf8,buffer,count);
	////	iowrite32(nowaddr, addr_wr_base);
	////	mb();
	////	while(s3c2410_gpio_getpin(S3C2410_GPF3))printk("---wait---\n");
	//if (count%4==0)
	//	len=count/4;
	//else    
	//	len=count/4+1;
	////	for (i=0;i<len;i++)
	////		printk("====================0x%x\n",*(buf32+i));
	//for (i=0;i<len;i++)
	//{
	//	iowrite32(*(buf32+i), sdat_wr_base);
	//	mb();
	//	//while(s3c2410_gpio_getpin(S3C2410_GPF3));
	//}
	//return 0;

	struct hpi_dev_t *dev = filp->private_data;
	ssize_t retval = 0; /* value used in "goto out" statements */
	loff_t	seek_off = (*offp % sizeof(u32));
	int32_t loop_ubound;

	size_t wr_size = 0; // byts writed into hpi
	char *cache;
	int32_t cp_count;
	int32_t cache_size;

	if (down_interruptible(&dev->sem))
		return -ERESTARTSYS;

	//count += seek_off;
	//if (wr_size > count)
	//	wr_size = count;

	//loop_ubound = (count + seek_off + sizeof(u32) - 1) / sizeof(u32);
	//printk(KERN_WARNING"%s: filp=%p, dev=%p, wr_size=%d, loop_ubound=%d, off=%x, filp->f_pos=%x, count=%d\n", __FUNCTION__, filp, dev, wr_size, loop_ubound, (int)*offp, (unsigned int)filp->f_pos, count);
	
	// 设置写指针
	dsp_seek(dev, *offp - seek_off);
	// 如果开始写入的位置不在4字节的边界上，则先从DSP中读出边界上的数据
	if (seek_off)
	{
		dev->cache[0] = ioread32(dev->sdat_rd.base);
		mb();
		//dsp_seek(dev, *offp - seek_off);
	}

	cache = (char *)dev->cache + seek_off;
	cache_size = (count + seek_off > HPI_CACHE_SIZE? HPI_CACHE_SIZE: count + seek_off);
	loop_ubound = cache_size / sizeof(u32);
	cp_count = loop_ubound * sizeof(u32) - seek_off;

	//printk("%s: cp_count=%d, loop_ubound:%u, wr_size=%d, count=%d, cache:%p\n", __FUNCTION__, cp_count, loop_ubound, wr_size, count, cache);

	// 这样比一次只处理一个页面数据的方式性能稍微好一些, 但并不明显，个别时甚至不如后者
	// 用时约为2.007毫秒
	// 一次处理一个页面数据量时，用时约为2.008秒
	// 但是这样的实现照顾了程序员的开发习惯，即认为：write调用要么失败，要么就完全成功。
	while(cp_count > 0)//sizeof(u32))//wr_size < count)
	{
		ssize_t i;
		// 从用户空间拷贝数据
		if (copy_from_user(cache, buf + wr_size, cp_count))
		{
			retval = -EFAULT;
			goto out;
		}

		//printk(KERN_WARNING"%s: write ... \n", __FUNCTION__);
		// 写入数据
		for (i = 0; i < loop_ubound; i++)
		{
			iowrite32(dev->cache[i], dev->sdat_wr.base);
			mb();
		}

		wr_size += cp_count;
		cache = (char *)dev->cache;
		cache_size = (count - wr_size > HPI_CACHE_SIZE? HPI_CACHE_SIZE: count - wr_size);
		loop_ubound = cache_size / sizeof(u32);
		cp_count = loop_ubound * sizeof(u32);//cache_size;
		//printk("%s: cp_count=%d, loop_ubound:%u, wr_size=%d, count=%d, cache:%p\n", __FUNCTION__, cp_count, loop_ubound, wr_size, count, cache);
	}
	if (wr_size < count)
	{
		if (wr_size > 0)
		{
			dsp_seek(dev, *offp + wr_size);
			dev->cache[0] = ioread32(dev->sdat_rd.base);
			mb();
			//dsp_seek(dev, *offp + wr_size);
			//printk("+, *offp + wr_size = 0x%llx, dev->cache[0]=0x%08x\n", *offp + wr_size, dev->cache[0]);
		}

		cp_count = count - wr_size;
		//printk("cp_count = %d\n", cp_count);
		if (copy_from_user(cache, buf + wr_size, cp_count))
		{
			retval = -EFAULT;
			goto out;
		}

		//printk(KERN_WARNING"%s: write ... \n", __FUNCTION__);
		// 写入数据
		iowrite32(dev->cache[0], dev->sdat_wr.base);
		mb();

		wr_size += cp_count;
		//cache = (char *)dev->cache;
		//cache_size = (count - wr_size > HPI_CACHE_SIZE? HPI_CACHE_SIZE: count - wr_size);
		//cp_count = cache_size;
	}

	retval = wr_size;// - seek_off;
	*offp += retval;

out:
	up(&dev->sem);
	return retval;
}

static struct file_operations hpi_fops = {
	.owner =	THIS_MODULE,
	.open  =    hpi_open,
	.release =	hpi_release,
	.ioctl =	hpi_ioctl,
	.llseek  =	hpi_llseek,
	.read  =    hpi_read,
	.write =	hpi_write,
};

//static void init_hpi(void)
//{
//	printk("init_hpi\n");
//}
void free_hpi_iomem(struct hpi_iomem_t *This, const char *this_name)
{
	if (This->mem_region != NULL)
	{
		pr_debug("%s(): releasing %s\n", __FUNCTION__, this_name);
		iounmap(This->base);
		release_mem_region(This->mem_region->start, This->mem_region->end - This->mem_region->start + 1);
		//release_resource(This->resource);
		//kfree(This->resource);

		memset(This, 0, sizeof(*This));
	}
}
#define FREE_HPI_IOMEM(stu) free_hpi_iomem(&stu, #stu)


static void hpi_dev_destroy(void)
{
	//int i;
	dev_t devno = MKDEV(hpi_major, hpi_minor);

	printk("%s\n", __FUNCTION__);

	/* Get rid of our char dev entries */
	//if (scull_devices)
	//{
	//	for (i = 0; i < scull_nr_devs; i++) {
	//		scull_trim(scull_devices + i);
	//		cdev_del(&scull_devices[i].cdev);
	//	}
	//kfree(scull_devices);
	//}

	cdev_del(&hpi_dev.cdev);
	if (hpi_dev.cache)
	{
		kfree(hpi_dev.cache);
		hpi_dev.cache = NULL;
	}
	unregister_chrdev_region(devno, hpi_nr_devs);

	FREE_HPI_IOMEM(hpi_dev.ctl_wr);
	//FREE_HPI_IOMEM(hpi_dev.ctl_rd);
	FREE_HPI_IOMEM(hpi_dev.addr_wr);
	//FREE_HPI_IOMEM(hpi_dev.addr_rd);
	FREE_HPI_IOMEM(hpi_dev.sdat_wr);
	FREE_HPI_IOMEM(hpi_dev.sdat_rd);
	//FREE_HPI_IOMEM(hpi_dev.mdat_wr);
	//FREE_HPI_IOMEM(hpi_dev.mdat_rd);
}

static int hpi_remove(struct device *dev) 
{
	//unregister_chrdev(db.major,"dm642_hpi");
	hpi_dev_destroy();

	//if (s3c2410_hpi_mem_ctlw != NULL) {
	//	pr_debug("s3c2410_hpi: releasing s3c2410_hpi_mem_ctlw\n");
	//	iounmap(ctl_wr_base);
	//	release_resource(s3c2410_hpi_mem_ctlw);
	//	kfree(s3c2410_hpi_mem_ctlw);
	//}

	//if (s3c2410_hpi_mem_ctlr != NULL) {
	//	pr_debug("s3c2410_hpi: releasing s3c2410_hpi_mem_ctlr\n");
	//	iounmap(ctl_rd_base);
	//	release_resource(s3c2410_hpi_mem_ctlr);
	//	kfree(s3c2410_hpi_mem_ctlr);
	//}

	//if (s3c2410_hpi_mem_addrw != NULL) {
	//	pr_debug("s3c2410_hpi: releasing s3c2410_hpi_mem_addrw\n");
	//	iounmap(addr_wr_base);
	//	release_resource(s3c2410_hpi_mem_addrw);
	//	kfree(s3c2410_hpi_mem_addrw);
	//}

	//if (s3c2410_hpi_mem_addrr != NULL) {
	//	pr_debug("s3c2410_hpi: releasing s3c2410_hpi_mem_addrr\n");
	//	iounmap(addr_rd_base);
	//	release_resource(s3c2410_hpi_mem_addrr);
	//	kfree(s3c2410_hpi_mem_addrr);
	//}

	//if (s3c2410_hpi_mem_sdatw != NULL) {
	//	pr_debug("s3c2410_hpi: releasing s3c2410_hpi_mem_sdatw\n");
	//	iounmap(sdat_wr_base);
	//	release_resource(s3c2410_hpi_mem_sdatw);
	//	kfree(s3c2410_hpi_mem_sdatw);
	//}

	//if (s3c2410_hpi_mem_sdatr != NULL) {
	//	pr_debug("s3c2410_hpi: releasing s3c2410_hpi_mem_sdatr\n");
	//	iounmap(sdat_rd_base);
	//	release_resource(s3c2410_hpi_mem_sdatr);
	//	kfree(s3c2410_hpi_mem_sdatr);
	//}

	//if (s3c2410_hpi_mem_mdatw != NULL) {
	//	pr_debug("s3c2410_hpi: releasing s3c2410_hpi_mem_mdatw\n");
	//	iounmap(mdat_wr_base);
	//	release_resource(s3c2410_hpi_mem_mdatw);
	//	kfree(s3c2410_hpi_mem_mdatw);
	//}

	//if (s3c2410_hpi_mem_mdatr != NULL) {
	//	pr_debug("s3c2410_hpi: releasing s3c2410_hpi_mem_mdatr\n");
	//	iounmap(mdat_rd_base);
	//	release_resource(s3c2410_hpi_mem_mdatr);
	//	kfree(s3c2410_hpi_mem_mdatr);
	//}

	//kfree(buf8);
	//printk(" unloaded\n");
	return 0;
}

static void hpi_setup_cdev(void)
{
	int err, devno = MKDEV(hpi_major, hpi_minor);

	cdev_init(&hpi_dev.cdev, &hpi_fops);
	hpi_dev.cdev.owner = THIS_MODULE;
	hpi_dev.cdev.ops = &hpi_fops;
	// 设备正式被注册，这句执行完后，就可以使用了。
	err = cdev_add(&hpi_dev.cdev, devno, 1);
	// Fail gracefully if need be
	if (err)
		printk(KERN_NOTICE"Error %d adding hpi%d", err, 0);//index);
}

#if 0
static void inline printk_res(const char *func, const char *res_name, const struct resource *res)
{
	printk(KERN_WARNING"%s(): %s: %p {start: %lux, end:%lux, len(end - start + 1): %ld}\n", func, res_name, res, res->start, res->end, res->end - res->start + 1);
}
#define PRINTK_RES(res) printk_res(__FUNCTION__, #res, res)
#else
#define PRINTK_RES(res)  do{}while(0)
#endif
int alloc_hpi_iomem(struct hpi_iomem_t *This, const char *this_name, int idx, struct device *ndev, struct platform_device *pdev)
{
	struct resource *res;
	// This->resource no need to release. hcj.
	res = platform_get_resource(pdev, IORESOURCE_MEM, idx);
	if (res == NULL) 
	{
		dev_err(ndev, "%s(): platform_get_resource(%s) return NULL\n", __FUNCTION__, this_name);
		return -ENOENT;
	}
	PRINTK_RES(res);

	This->mem_region = request_mem_region(res->start, res->end - res->start + 1, this_name);//pdev->name);
	if (This->mem_region == NULL) 
	{
		dev_err(ndev, "%s(): request_mem_region(%s) return NULL\n", __FUNCTION__, this_name);
		return -ENOENT;
	}
	PRINTK_RES(This->mem_region);

	This->base = ioremap_nocache(This->mem_region->start, This->mem_region->end - This->mem_region->start + 1);
	if (This->base == NULL)
	{
		dev_err(ndev, "%s(): ioremap_nocache(%s) return NULL\n", __FUNCTION__, this_name);
		return -EINVAL;
	}

	//printk(KERN_WARNING"%s:  This=%p={base:%p, resource:%p}, name=%s ndev=%p, pdev=%p\n", __FUNCTION__, This, This->resource, This->base, this_name, ndev, pdev);
	return 0;
}

#define ALLOC_HPI_IOMEM_ON_FAIL_RETURN(stu, idx, ndev, pdev) do{\
	int result = alloc_hpi_iomem(&stu, #stu, idx,  ndev, pdev);\
	if (result)\
	{\
		hpi_remove(ndev);\
		return result;\
	}\
}while(0)
	
static int hpi_dev_init(struct device *ndev)
{
	int result = 0;
	dev_t dev;
	struct platform_device *pdev;

	//printk(KERN_WARNING"%s(): dev->bus_id = %s\n", __FUNCTION__, ndev->bus_id);
	if (hpi_major)
	{
		dev = MKDEV(hpi_major, hpi_minor);
		result = register_chrdev_region(dev, hpi_nr_devs, hpi_name);
	}
	else
	{
		result = alloc_chrdev_region(&dev, hpi_minor, hpi_nr_devs, hpi_name);
		hpi_major = MAJOR(dev);
	}

	if (result < 0)
	{
		printk(KERN_WARNING"%s: can't get major %d\n", __FUNCTION__, hpi_major);
		return result;
	}

	memset(&hpi_dev, 0, sizeof(hpi_dev));
	pdev = to_platform_device(ndev);
	ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.ctl_wr, 0, ndev, pdev);
	//ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.ctl_rd, 1, ndev, pdev);
	ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.addr_wr, 2, ndev, pdev);
	//ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.addr_rd, 3, ndev, pdev);
	ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.sdat_wr, 4, ndev, pdev);
	ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.sdat_rd, 5, ndev, pdev);
	//ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.mdat_wr, 6, ndev, pdev);
	//ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.mdat_rd, 7, ndev, pdev);
	// 分配内核缓冲区
	hpi_dev.cache = (u32 *)kmalloc(HPI_CACHE_SIZE, GFP_KERNEL);
	if (!hpi_dev.cache)
	{
		hpi_dev_destroy();
		return -ENOMEM;
	}
	// 初始化信号量
	init_MUTEX(&hpi_dev.sem);
	hpi_setup_cdev();

	// 注册设备
 //    /* 
	// * allocate the devices -- we can't have them static, as the number
	// * can be specified at load time
	// */
	//scull_devices = kmalloc(scull_nr_devs * sizeof(struct scull_dev), GFP_KERNEL);
	//if (!scull_devices) {
	//	result = -ENOMEM;
	//	goto fail;  /* Make this more graceful */
	//}
	//memset(scull_devices, 0, scull_nr_devs * sizeof(struct scull_dev));

        /* Initialize each device. */
	//for (i = 0; i < scull_nr_devs; i++) {
	//	scull_devices[i].quantum = scull_quantum;
	//	scull_devices[i].qset = scull_qset;
	//	init_MUTEX(&scull_devices[i].sem);
	//	scull_setup_cdev(&scull_devices[i], i);
	//}

        /* At this point call the init function for any friend device */
	//dev = MKDEV(scull_major, scull_minor + scull_nr_devs);
	//printk(KERN_WARNING"scull ok\n");

	printk("dm642 hpi driver initialized\n");
	return 0; /* succeed */

 //fail:
	//hpi_dev_destroy();

	//return result;
}


static int hpi_probe(struct device *ndev)
{
	//struct platform_device *pdev = to_platform_device(ndev);
	//struct resource *res0,*res1,*res2,*res3,*res4,*res5,*res6,*res7;
	int result;
	//init_hpi();
	//db.phpi_fops = &hpi_fops;
	//printk(KERN_WARNING"%s: dev->bus_id=%s\n", __FUNCTION__, ndev->bus_id);
	if (strcmp(ndev->bus_id, driver_name) != 0)
		return -1;

#if 0
	/////////////////////////////////////////////////////////////////////////////////////////
	
	//res0 = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	//if (res0 == NULL) {
	//	dev_err(ndev, "failed to get memory region resource\n");
	//	return -ENOENT;
	//}
	//s3c2410_hpi_mem_ctlw = request_mem_region(res0->start, res0->end-res0->start+1,
	//	pdev->name);
	//if (s3c2410_hpi_mem_ctlw == NULL) {
	//	dev_err(ndev, "failed to reserve memory region\n");
	//	return -ENOENT;
	//}
	//ctl_wr_base = ioremap_nocache(res0->start, res0->end - res0->start + 1);
	//if (ctl_wr_base == NULL) {
	//	dev_err(ndev, "failed ioremap_nocache()\n");
	//	return -EINVAL;
	//}
	////printk("ioremap_nocache address is 0x%x   0x %x\n",ctl_wr_base,res0->end);
	////printk("ioremap_nocache paddress is 0x%x\n",__pa(ctl_wr_base));

	ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.ctl_wr, 0, ndev, pdev);
	/////////////////////////////////////////////////////////////////////////////////////////	 

	//res1 = platform_get_resource(pdev, IORESOURCE_MEM, 1);
	//if (res1 == NULL) {
	//	dev_err(ndev, "failed to get memory region resource\n");
	//	return -ENOENT;
	//}
	//s3c2410_hpi_mem_ctlr = request_mem_region(res1->start, res1->end-res1->start+1,
	//	pdev->name);
	//if (s3c2410_hpi_mem_ctlr == NULL) {
	//	dev_err(ndev, "failed to reserve memory region\n");
	//	return -ENOENT;
	//}
	//ctl_rd_base = ioremap_nocache(res1->start, res1->end - res1->start + 1);
	//if (ctl_rd_base == NULL) {
	//	dev_err(ndev, "failed ioremap_nocache()\n");
	//	return -EINVAL;
	//}
	////printk("ioremap_nocache address is 0x%x   0x %x\n",ctl_rd_base,res1->end);
	////printk("ioremap_nocache paddress is 0x%x\n",__pa(ctl_rd_base));
	ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.ctl_rd, 1, ndev, pdev);

	/////////////////////////////////////////////////////////////////////////////////////////	 

	//res2 = platform_get_resource(pdev, IORESOURCE_MEM, 2);
	//if (res2 == NULL) {
	//	dev_err(ndev, "failed to get memory region resource\n");
	//	return -ENOENT;
	//}
	//s3c2410_hpi_mem_addrw = request_mem_region(res2->start, res2->end-res2->start+1,
	//	pdev->name);
	//if (s3c2410_hpi_mem_addrw == NULL) {
	//	dev_err(ndev, "failed to reserve memory region\n");
	//	return -ENOENT;
	//}
	//addr_wr_base = ioremap_nocache(res2->start, res2->end - res2->start + 1);
	//if (addr_wr_base == NULL) {
	//	dev_err(ndev, "failed ioremap_nocache()\n");
	//	return -EINVAL;
	//}
	////printk("ioremap_nocache address is 0x%x\n",addr_wr_base);
	////printk("ioremap_nocache paddress is 0x%x\n",__pa(addr_wr_base));
	printk(KERN_WARNING"%s: before &hpi_dev.addr_wr=%p{base:%p, resource:%p}, ndev=%p, pdev=%p\n", __FUNCTION__, &hpi_dev.addr_wr, hpi_dev.addr_wr.base, hpi_dev.addr_wr.resource, ndev, pdev);
	ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.addr_wr, 2, ndev, pdev);
	printk(KERN_WARNING"%s: after  &hpi_dev.addr_wr=%p{base:%p, resource:%p}, ndev=%p, pdev=%p\n", __FUNCTION__, &hpi_dev.addr_wr, hpi_dev.addr_wr.base, hpi_dev.addr_wr.resource, ndev, pdev);

	/////////////////////////////////////////////////////////////////////////////////////////	 

	//res3 = platform_get_resource(pdev, IORESOURCE_MEM, 3);
	//if (res3 == NULL) {
	//	dev_err(ndev, "failed to get memory region resource\n");
	//	return -ENOENT;
	//}
	//s3c2410_hpi_mem_addrr = request_mem_region(res3->start, res3->end-res3->start+1,
	//	pdev->name);
	//if (s3c2410_hpi_mem_addrr == NULL) {
	//	dev_err(ndev, "failed to reserve memory region\n");
	//	return -ENOENT;
	//}
	//addr_rd_base = ioremap_nocache(res3->start, res3->end - res3->start + 1);
	//if (addr_rd_base == NULL) {
	//	dev_err(ndev, "failed ioremap_nocache()\n");
	//	return -EINVAL;
	//}
	////printk("ioremap_nocache address is 0x%x\n",addr_rd_base);
	////printk("ioremap_nocache paddress is 0x%x\n",__pa(addr_rd_base));
	ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.addr_rd, 3, ndev, pdev);
	/////////////////////////////////////////////////////////////////////////////////////////	 

	//res4 = platform_get_resource(pdev, IORESOURCE_MEM, 4);
	//if (res4 == NULL) {
	//	dev_err(ndev, "failed to get memory region resource\n");
	//	return -ENOENT;
	//}
	//s3c2410_hpi_mem_sdatw = request_mem_region(res4->start, res4->end-res4->start+1,
	//	pdev->name);
	//if (s3c2410_hpi_mem_sdatw == NULL) {
	//	dev_err(ndev, "failed to reserve memory region\n");
	//	return -ENOENT;
	//}
	//sdat_wr_base = ioremap_nocache(res4->start, res4->end - res4->start + 1);
	//if (sdat_wr_base == NULL) {
	//	dev_err(ndev, "failed ioremap_nocache()\n");
	//	return -EINVAL;
	//}
	////printk("ioremap_nocache address is 0x%x\n",sdat_wr_base);
	////printk("ioremap_nocache paddress is 0x%x\n",__pa(sdat_wr_base));
	ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.sdat_wr, 4, ndev, pdev);
	/////////////////////////////////////////////////////////////////////////////////////////	 

	//res5 = platform_get_resource(pdev, IORESOURCE_MEM, 5);
	//if (res5 == NULL) {
	//	dev_err(ndev, "failed to get memory region resource\n");
	//	return -ENOENT;
	//}
	//s3c2410_hpi_mem_sdatr = request_mem_region(res5->start, res5->end-res5->start+1,
	//	pdev->name);
	//if (s3c2410_hpi_mem_sdatr == NULL) {
	//	dev_err(ndev, "failed to reserve memory region\n");
	//	return -ENOENT;
	//}
	//sdat_rd_base = ioremap_nocache(res5->start, res5->end - res5->start + 1);
	//if (sdat_rd_base == NULL) {
	//	dev_err(ndev, "failed ioremap_nocache()\n");
	//	return -EINVAL;
	//}
	////printk("ioremap_nocache address is 0x%x\n",sdat_rd_base);
	////printk("ioremap_nocache paddress is 0x%x\n",__pa(sdat_rd_base));
	ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.sdat_rd, 5, ndev, pdev);
	/////////////////////////////////////////////////////////////////////////////////////////	 

	//res6 = platform_get_resource(pdev, IORESOURCE_MEM, 6);
	//if (res6 == NULL) {
	//	dev_err(ndev, "failed to get memory region resource\n");
	//	return -ENOENT;
	//}
	//s3c2410_hpi_mem_mdatw = request_mem_region(res6->start, res6->end-res6->start+1,
	//	pdev->name);
	//if (s3c2410_hpi_mem_mdatw == NULL) {
	//	dev_err(ndev, "failed to reserve memory region\n");
	//	return -ENOENT;
	//}
	//mdat_wr_base = ioremap_nocache(res6->start, res6->end - res6->start + 1);
	//if (mdat_wr_base == NULL) {
	//	dev_err(ndev, "failed ioremap_nocache()\n");
	//	return -EINVAL;
	//}
	////printk("ioremap_nocache address is 0x%x\n",mdat_wr_base);
	////printk("ioremap_nocache paddress is 0x%x\n",__pa(mdat_wr_base));
	ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.mdat_wr, 6, ndev, pdev);
	/////////////////////////////////////////////////////////////////////////////////////////	 

	//res7 = platform_get_resource(pdev, IORESOURCE_MEM, 7);
	//if (res7 == NULL) {
	//	dev_err(ndev, "failed to get memory region resource\n");
	//	return -ENOENT;
	//}
	//s3c2410_hpi_mem_mdatr = request_mem_region(res7->start, res7->end-res7->start+1,
	//	pdev->name);
	//if (s3c2410_hpi_mem_mdatr == NULL) {
	//	dev_err(ndev, "failed to reserve memory region\n");
	//	return -ENOENT;
	//}
	//mdat_rd_base = ioremap_nocache(res7->start, res7->end - res7->start + 1);
	//if (mdat_rd_base == NULL) {
	//	dev_err(ndev, "failed ioremap_nocache()\n");
	//	return -EINVAL;
	//}
	////printk("ioremap_nocache address is 0x%x\n",mdat_rd_base);
	////printk("ioremap_nocache paddress is 0x%x\n",__pa(mdat_rd_base));
	ALLOC_HPI_IOMEM_ON_FAIL_RETURN(hpi_dev.mdat_rd, 7, ndev, pdev);
	/////////////////////////////////////////////////////////////////////////////////////////	
#endif
	/* {
	unsigned int *p;
	p = ioremap_nocache(0x48000000, 4);
	if (p)
	{
	printk("%08x\n", *p);
	iounmap(p);
	}
	p = ioremap_nocache(0x48000014, 4);
	if (p)
	{ 
	printk("%08x\n", *p);
	iounmap(p);
	}
	}*/
	//s3c2410_gpio_cfgpin(S3C2410_GPF3,S3C2410_GPF3_INP);
	//s3c2410_gpio_pullup(S3C2410_GPF3,0);

	// 设置IO
	s3c2410_gpio_cfgpin(S3C2410_GPA16, S3C2410_GPA16_OUT);
	s3c2410_gpio_pullup(S3C2410_GPA16, 1);
	s3c2410_gpio_cfgpin(S3C2410_GPH9,  S3C2410_GPH9_OUTP);
	s3c2410_gpio_pullup(S3C2410_GPH9, 1);
#ifdef __THIRD_BOARD__ 
	s3c2410_gpio_cfgpin(S3C2410_GPD7,  S3C2410_GPD7_OUTP);
	s3c2410_gpio_pullup(S3C2410_GPD7, 1);
#endif

	// DSP复位
	dsp_reset();

	//db.major=240;
	//if (db.dev=register_chrdev(db.major, "dm642_hpi", db.phpi_fops))
	//{
	//	printk("Driver register fail\n");
	//	return -EINVAL;
	//}
	//buf8=(u8 *)kmalloc(0x10000,GFP_KERNEL);
	//if (buf8)
	//{
	//	buf32=(u32 *)buf8;
	//	printk("kmalloc successful\n");
	//}
	//iowrite32(DM642_TEXT_ADDR, addr_wr_base);
	//for (i=0;i<100000;i++);
	if ((result = hpi_dev_init(ndev)) != 0)
		hpi_remove(ndev);

	return result;
}

static struct device_driver hpi_driver = {
	.name = driver_name,//"s3c2410-hpi",
	.bus = &platform_bus_type,
	.probe = hpi_probe,
	.remove = hpi_remove,
};
static int __init hpi_init(void) 
{
	return driver_register(&hpi_driver);
}

static void __exit hpi_exit(void)
{
	driver_unregister(&hpi_driver);
}

module_init(hpi_init);
module_exit(hpi_exit);

MODULE_LICENSE("Dual BSD/GPL");
MODULE_DESCRIPTION("s3c2410 hpi driver, Copyright(C) IrisKing");
