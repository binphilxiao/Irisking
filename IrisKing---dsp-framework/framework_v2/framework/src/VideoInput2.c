#include <std.h>
#include <csl.h>
#include <csl_dat.h>
#include <csl_cache.h>
#include <csl_i2c.h>
#include <fvid.h>
#include <tsk.h>
#include <stdio.h>

#include "..\..\include\videoport.h"
#include "..\..\include\vportcap.h"
//#include "..\..\include\mt9v022.h"
#include "..\..\include\tvp51xx.h"
#include "..\..\include\vcapparams.h"

#include "..\..\include\utility.h"
#include "..\..\include\dbg_printf.h"

//#include "cap_dis_size.h"

/* heap IDs defined in the BIOS configuration file */
extern int extHeap;

FVID_Handle capChan1;
FVID_Handle capChan2;
FVID_Frame *capFrameBuf1;
FVID_Frame *capFrameBuf2;

#define VGA_FRAMEBUFFER	((void*)0x80000000)
unsigned short *vdis_buf=VGA_FRAMEBUFFER;
extern I2C_Handle EMBI2C_handle;


#define CB_H_THICK		3
#define CB_V_THICK		2
#define CB_TOP			60
#define CB_BOTTOM		(120 + 60 - CB_V_THICK)
#define CB_LEFT			80
#define CB_RIGHT		(160 + 80 - CB_H_THICK)

unsigned char mask[128 *128];
unsigned short bmp[128 * 128];

#define STEREO_MODE		1

void TVP5150_config(I2C_Handle hI2C, int channel)
{
	int i2c_addr = _tvp5150_i2c_addr(channel);
	int v;

	v = 0x80;
    _IIC_write(hI2C, i2c_addr,0x0c, &v,0x1);


	v = 0 >> 2;
    _IIC_write(hI2C, i2c_addr,0x13, &v,0x1);
	v = 0 & 3;
    _IIC_write(hI2C, i2c_addr,0x14, &v,0x1);

	
}

stamp_test()
{
	int i, j;
	for (i = 0; i < 128 * 128; i++)
	{
		mask[i] = 0xff;
	}

	for (i = 0; i < 128 * 128 / 2; i++)
	{
		((unsigned int*)bmp)[i] = 0xffff0000;
	}
	disp_set_stamp(bmp, mask, 20, 40, 128, 128);
}


void TVP51XX_status(I2C_Handle hI2C)
{
	unsigned char s[4];
	int i2c_addr = _tvp5150_i2c_addr(0);


    _IIC_read(hI2C, i2c_addr, 0x88, &s[0], 0x1);
    _IIC_read(hI2C, i2c_addr, 0x89, &s[1], 0x1);
    _IIC_read(hI2C, i2c_addr, 0x8a, &s[2], 0x1);
    _IIC_read(hI2C, i2c_addr, 0x8c, &s[3], 0x1);
	dbg_output("%02X %02X %02X %02X\n", s[0], s[1], s[2], s[3]);
	return;

	i2c_addr = _tvp5150_i2c_addr(0);

    _IIC_read(hI2C, i2c_addr, 0x0d, &s[0], 0x1);
    _IIC_read(hI2C, i2c_addr, 0x12, &s[1], 0x1);
    _IIC_read(hI2C, i2c_addr, 0x13, &s[2], 0x1);
    _IIC_read(hI2C, i2c_addr, 0x14, &s[3], 0x1);
	dbg_output("channel 0 %02X %02X %02X %02X\n", s[0], s[1], s[2], s[3]);

	i2c_addr = _tvp5150_i2c_addr(1);

    _IIC_read(hI2C, i2c_addr, 0x0d, &s[0], 0x1);
    _IIC_read(hI2C, i2c_addr, 0x12, &s[1], 0x1);
    _IIC_read(hI2C, i2c_addr, 0x13, &s[2], 0x1);
    _IIC_read(hI2C, i2c_addr, 0x14, &s[3], 0x1);
	dbg_output("channel 1 %02X %02X %02X %02X\n", s[0], s[1], s[2], s[3]);

}


void tskVideoInputInit()
{

    int             status;

	EMB_vCapParamsTVP51XX.hI2C = EMBI2C_handle;

    capChan1 = FVID_create("/VP1CAPTURE/A/0",
        IOM_INPUT, &status, (Ptr)&EMB_vCapParamsChan, NULL);

    FVID_control(capChan1, VPORT_CMD_EDC_BASE + EDC_CONFIG, (Ptr)&EMB_vCapParamsTVP51XX);
	TVP5150_config(EMBI2C_handle, 0);



#ifdef STEREO_MODE
    capChan2 = FVID_create("/VP0CAPTURE/A/1",
        IOM_INPUT, &status, (Ptr)&EMB_vCapParamsChan, NULL);

    FVID_control(capChan2, VPORT_CMD_EDC_BASE + EDC_CONFIG, (Ptr)&EMB_vCapParamsTVP51XX);
	TVP5150_config(EMBI2C_handle, 1);
#endif
}

void tskVideoInputStart()
{
    FVID_control(capChan1, VPORT_CMD_START, NULL);
#ifdef STEREO_MODE
    FVID_control(capChan2, VPORT_CMD_START, NULL);
#endif
}

/* handle video capture, scaling and re-format */
void tskVideoInput()
{
	unsigned long t, t1;
	unsigned long total_time = 0, l1, l2;
	int frame = 0;
	unsigned char c;

//	video_out_test();

	disp_init();
	disp_draw_box(0, 639, 0, 239, 0xff00, (unsigned short*)vdis_buf);
	disp_draw_half_frame((unsigned short *)vdis_buf);
	CACHE_flush(CACHE_L2ALL, 0, 0);

	disp_set_cb(CB_H_THICK, CB_V_THICK, CB_TOP, CB_BOTTOM, CB_LEFT, CB_RIGHT, 0x7f);

    FVID_alloc(capChan1, &capFrameBuf1);
	
	stamp_test();

#ifdef STEREO_MODE
    FVID_alloc(capChan2, &capFrameBuf2);
#endif
	t1 = CLK_getltime();
    while(1)
    {
        // Get a new frame from the capture driver
        FVID_exchange(capChan1, &capFrameBuf1);

#ifdef STEREO_MODE
        // Get a new frame from the capture driver
        FVID_exchange(capChan2, &capFrameBuf2);
#endif

		t = CLK_getltime();
#ifdef STEREO_MODE
		disp_rgb565(capFrameBuf1->frame.iFrm.y1, capFrameBuf2->frame.iFrm.y1, vdis_buf, 0);
#else
		disp_rgb565(capFrameBuf1->frame.iFrm.y1, capFrameBuf1->frame.iFrm.y1, vdis_buf, 1);
//		disp_direct(capFrameBuf1->frame.iFrm.y1, vdis_buf);
//		CACHE_flush(CACHE_L2ALL, 0, 0);
#endif
		t = CLK_getltime() - t;

		frame ++;
		total_time += t;
		if (frame == 1000)
		{
			printf("1000 frame total process time %ld ms, total %ld\n", total_time, CLK_getltime() - t1);
			t1 = CLK_getltime();
			total_time = 0;
			frame = 0;
		}

//		printf("cur bin %04x aec gain output %04x agc gain output %04x\n", MT9V022_ReadReg(3, 0xbc), MT9V022_ReadReg(3, 0xbb), MT9V022_ReadReg(3, 0xba));
//		TVP51XX_status(EMBI2C_handle);
    }
}

