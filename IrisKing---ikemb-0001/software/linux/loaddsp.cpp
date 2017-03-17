//#define _LARGEFILE64_SOURCE			//lseek64
#define _FILE_OFFSET_BITS 64		//fseeko
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <unistd.h>

#include <iostream>
#include "hpi.h"
#include "dsp_interface.h"

#include "os.h"
#include "estring.h"

struct arch_section
{
	unsigned long size;
	unsigned long pointer;
	//unsigned long * buf;
};

static struct stat file_out;
//static int fp,fh;
static int seccount;
//static off_t filesize; 
static unsigned long entry;
/*const unsigned long memcon[12]={
	0x00092078,
	0xF3A88E02,
	0xFFFFFFDE,
	
	0x22a28a22,
	0x22a28a42,
	0x57115000,
	0x0000081b,
	0x000a8529,
	
	0x00000002,
	0x00000002,
	
	0x00000000,
	0x00000000
};*/

static unsigned int memcon[12] = {
	0x00092078,        // GCTL     - 0x01800000
	0xF3A88E02,        // CE1      - 0x01800004
	0xFFFFFFDE,        // CE0      - 0x01800008
	// Address split 3
	0x22a28a22,        // CE2      - 0x01800010
	0x22a28a42,        // CE3      - 0x01800014
	//0x57115000,        // SDRAMCTL - 0x01800018 for old program
	0x53115000,        // SDRAMCTL - 0x01800018 for new program 
	0x0000081b,        // SDRAMTIM - 0x0180001c
	0x000a8529,        // SDRAMEXT - 0x01800020
	// Address split 9
	0x00000002,        // CE1ECCTL - 0x01800044
	0x00000002,        // CE0ECCTL - 0x01800048
	// Address split 
	0x00000002,        // CE2ECCTL - 0x01800050
	0x00000073         // CE3ECCTL - 0x01800054
};

const unsigned long bootloader[]={
        0x00800028,
        0x0080c468,
        0x0080002a,
        0x0080006a,
        0x00840276,
        0x01008028,
        0x01000068,
        0x00081362,
        0x00008000,
        0x00000000,
        0x00000000,
        0x00000000,
        0x00000000,
        0x00000000,
        0x00000000,
        0x00000000,
};

#define hpi_file "/dev/hpi"

//#define __XIAOBIN__
void dump(FILE *fh, long long addr)
{
	//unsigned int i, j;
	unsigned int data[4];
	fseeko(fh, addr, SEEK_SET);
	fread(data, sizeof(data[0]), sizeof(data)/sizeof(data[0]), fh);
	printf("%s(): mem %08llx: %08x %08x %08x %08x\n", __FUNCTION__, addr, data[0], data[1], data[2], data[3]);
	/*
	for (i = 0; i < 4; i++)
	{
		if (4 != fread(&j, 1, 4, fh))
			printf("%s read %d error\n", __FUNCTION__, i);
		printf("mem %08llx is %08x \n", addr + i * sizeof(j), j);
	}
	*/
}

void reset_dsp()
{
	printf("Stop dsp\n");
	int fh = open(hpi_file, O_RDWR);
	if (fh == -1)
	{
		printf("Device open failure!\n");
		return ;
	}

#ifdef __XIAOBIN__
	ioctl(fh, 6);
#else
	ioctl(fh, HPI_IOC_DSP_RESET);
#endif

	close(fh);
}

void start_dsp()
{
	int fh = open(hpi_file, O_RDWR);
	if (fh == -1)
	{
		printf("Device open failure!\n");
		return ;
	}

#ifdef __XIAOBIN__
	ioctl(fh, 7);
#else
	ioctl(fh, HPI_IOC_DSP_START);
#endif

	close(fh);
}

void wait_dsp(uint32_t offset, uint32_t wait_val)
{
	printf("Wait dsp: 0x%08X\n", wait_val);
	int fh = open(hpi_file, O_RDONLY);
	if (fh == -1)
	{
		printf("Device open failure!\n");
		return ;
	}

	uint32_t dsp_val;
	while(true)
	{
		usleep(10000);	//10ms秒
		lseek(fh, offset, SEEK_SET);
		if (sizeof(dsp_val) == read(fh, &dsp_val, sizeof(dsp_val)) && dsp_val == wait_val)
			break;
	}
	
	close(fh);
}
void wait_dsp_status(enm_tsk_algorithm_status status)
{
	printf("Wait dsp: 0x%08X\n", status);
	int fh = open(hpi_file, O_RDONLY);
	if (fh == -1)
	{
		printf("Device open failure!\n");
		return ;
	}

	//uint32_t dsp_val;
	ctl_t alg_status;
	while(true)
	{
		usleep(10000);	//10ms秒
		lseek(fh, (uint32_t)&dsp_reg->status_reg.alg_status, SEEK_SET);
		if (sizeof(alg_status) == read(fh, &alg_status, sizeof(alg_status)) && alg_status.ctl == status)
			break;
		//printf("alg_status.ctl = %s\n", get_name(static_cast<enm_tsk_algorithm_status>(alg_status.ctl)));
	}
	
	close(fh);
}

int main(int argc,char *argv[])
{
    unsigned int i,j,k;
	unsigned long temp,tem;
	estring dsp_file = "dsp.bin";

	bool useOldDsp = false;
	bool bInit = false;
	if (argc > 1)
	{
		for(int i = 1; i < argc; i++)
		{
			if (argv[i][0] == '-')
			{
				if (strcasecmp(argv[i], "--use-old") == 0)
					useOldDsp = true;
				else if (strcasecmp(argv[i], "--init") == 0)
					bInit = true;
				else if (strcasecmp(argv[i], "-h") == 0 || strcasecmp(argv[i], "--help") == 0)
				{
					printf("useage: %s [--use-old] [--init] [dsp binary file] [-h|--help]\n", boost::filesystem::get_app_name().c_str());
					return 0;
				}

			}
			else
				dsp_file = argv[i];
		}
	}
	else
	{
		dsp_file = (boost::filesystem::get_app_directory() / "dsp.bin").native_file_string();
	}

	printf("load '%s' as %s dsp bin\n", dsp_file.c_str(), (useOldDsp? "old": "new"));
	/*
#ifdef __XIAOBIN__
	printf("测试肖斌的驱动\n");
#else
	printf("测试我的驱动\n");
#endif
	*/

	reset_dsp();
	sleep(1);	// 汪锐说reset后最后等上一段时间,大概1秒左右
	
	printf("--------------------loading dm642 program ---------------------\n");
	stat(dsp_file, &file_out);
	FILE *fp = fopen(dsp_file, "r");//O_RDONLY);
	if (fp != NULL )
	{
		//filesize=fstat(fp,&file_out);
		printf("opened \"%s\" size %d bytes\n", dsp_file.c_str(), file_out.st_size);
	}
	else
	{
		printf(".bin File open failure \n");
		return -1;
	}

	printf("open hpi driver\n");
	FILE *fh = fopen(hpi_file, "r+");//O_RDWR);
	if (fh == NULL )
	{
	   printf("HPI device open failure \n");
	   fclose(fp);
	   return -2;
	}

	// Read DSR Register
	const int dsr_reg = 0x01B3F004;
	uint32_t dsr = 0;
	fseeko(fh, dsr_reg, SEEK_SET);
	if (sizeof(dsr) != fread(&dsr, 1, sizeof(dsr), fh))
		printf("DSR: read error\n");
	else
	{
		printf("DSR: 0x%X\n", dsr);
		printf("    AECLKINSEL0: 0x%X\n", dsr & 0x00000001);
		printf("    AECLKINSEL1: 0x%X\n", dsr & 0x00000002);
		printf("    BOOTMODE0  : 0x%X\n", dsr & 0x00000004);
		printf("    BOOTMODE1  : 0x%X\n", dsr & 0x00000008);
		printf("    LENDIAN    : 0x%X\n", dsr & 0x00000010);
		printf("    CLKMODE0   : 0x%X\n", dsr & 0x00000020);
		printf("    CLKMODE1   : 0x%X\n", dsr & 0x00000040);
		printf("    PCI_EN     : 0x%X\n", dsr & 0x00000100);
		printf("    PCI_EEAI   : 0x%X\n", dsr & 0x00000200);
		printf("    HPI_WIDTH  : 0x%X\n", dsr & 0x00000400);
		printf("    MAC_EN     : 0x%X\n", dsr & 0x00000800);
	}
#define SIZEOF(stu) std::cout << "sizeof(" << #stu << ") = " << sizeof(stu) << std::endl
	//lseek(fh, 0x01800000, 0);
	fseeko(fh, 0x01800000, SEEK_SET);
	fwrite(&memcon[0], 1, sizeof(memcon[0]) * 3, fh);
	fseek(fh, 0x01800010, SEEK_SET);
	if (useOldDsp)
		memcon[5] = 0x57115000;
	fwrite(&memcon[3], sizeof(memcon[0]), 5, fh);
	fseek(fh, 0x01800048, SEEK_SET); 
	fwrite(&memcon[8], sizeof(memcon[0]), 2, fh);
	fseek(fh, 0x01800050, SEEK_SET);
	fwrite(&memcon[10], sizeof(memcon[0]), 2, fh);
	
	dump(fh, 0x01800000);
	dump(fh, 0x01800010);
	dump(fh, 0x01800048);
	dump(fh, 0x01800050);
	
	fseek(fp, 0, SEEK_SET);
	fread(&entry, 4, 1, fp);
	seccount=0;

	char sec_buf[0x01000], veri_buf[0x01000];
	while(ftell(fp) < file_out.st_size)
	{
		struct arch_section load;
		fread(&load, sizeof(load), 1, fp);

		printf("section %02d: addr=0x%08x, size=0x%x\n", seccount, load.pointer, load.size);

		if ((load.size % 4) != 0)
			load.size += 4 - (load.size % 4);
 
		int wr_size = 0;
		while(wr_size < load.size)
		{
			int rd_size = load.size - wr_size;
			if (rd_size > sizeof(sec_buf))
				rd_size = sizeof(sec_buf);
		
			// 读取并将数据写入HPI
			fread(sec_buf, 1, rd_size, fp);
			fseeko(fh, load.pointer + wr_size, SEEK_SET);
			fwrite(sec_buf, 1, rd_size, fh);

			// 校验写入HPI的数据
			fseeko(fh, 0 - rd_size, SEEK_CUR);
			fread(veri_buf, 1, rd_size, fh);
			for (int i = 0; i < rd_size; i++)
			{
				if (veri_buf[i] != sec_buf[i])
				{
					printf("hpi load error at offset %08X, hpi_val = %02X, should = %02X\n", wr_size + i, veri_buf[i], sec_buf[i]);
					fclose(fh);
					fclose(fp);
					return -1;
				}
			}

			wr_size += rd_size;
		}

		seccount++;
	}
	printf("%d sections loaded\n", seccount);

	dump(fh, 0x01800000);
	dump(fh, 0x01800010);
	dump(fh, 0x01800048);
	dump(fh, 0x01800050);

	fseek(fh, 0, SEEK_SET);
	fwrite(bootloader, sizeof(bootloader), 1, fh);

	fseek(fh, 20, SEEK_SET);
	fread(&temp,sizeof(temp), 1, fh);
	fread(&tem, sizeof(tem), 1, fh);
	printf("program entry is 0x%x\n",entry);
	//printf("-----0x%x-----0x%x\n", temp, tem);
	// 设置跳转地址
	temp = (temp & 0xff80007f) | ( ((entry & 0x0000ffff) << 7) & 0x7fff80);
	tem  = (tem  & 0xff80007f) | ( ((entry & 0xffff0000) >> 9) & 0x7fff80);
	fseek(fh, 20, SEEK_SET);
	fwrite(&temp, sizeof(temp), 1, fh);
    fwrite(&tem, sizeof(tem), 1, fh);
	//printf("-----0x%x-----0x%x\n", temp, tem);


	//lseek(fh,0x01880000,0);
	//write(fh,0x00020002,4);
	//lseek(fh,0x01880000,0);
	  //      read(fh,&temp,4);
	//	        printf("hpi ctl is 0x%x\n",temp);
//#ifdef __NOTEST__
	if (!bInit)
	{
		// 将需要由ARM初始化的寄存器初始化。
		dsp_tsk_ctl_t ctl_reg = {0};
		fseeko(fh, (unsigned int)&dsp_reg->ctl_reg, SEEK_SET);
		fwrite(&ctl_reg, 0, sizeof(ctl_reg), fh);

		dsp_tsk_policy_t policy_reg = {0};
		fseeko(fh, (unsigned int)&dsp_reg->policy_reg, SEEK_SET);
		fwrite(&policy_reg, 0, sizeof(policy_reg), fh);

		dsp_tsk_status_t status_reg = {0};
		fseeko(fh, (unsigned int)&dsp_reg->status_reg, SEEK_SET);
		fwrite(&status_reg, 0, sizeof(status_reg), fh);
	}
//#endif
	fclose(fp);
	fclose(fh);

	printf("Start dsp\n");
	fflush(stdout);
	start_dsp();

	if (bInit)
		wait_dsp(0, ~bootloader[0]);
	else
		wait_dsp_status(tasIdle);
		//wait_dsp((uint32_t)&dsp_reg->status_reg.alg_status, (uint32_t)tasIdle);

	return 0;
}

