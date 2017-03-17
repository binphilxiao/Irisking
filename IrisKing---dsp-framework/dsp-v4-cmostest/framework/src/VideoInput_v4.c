#include <std.h>
#include <csl.h>
#include <csl_dat.h>
#include <csl_cache.h>
#include <csl_i2c.h>
#include <fvid.h>
#include <tsk.h>
#include <stdio.h>
#include <buf.h>

#include "..\..\include\videoport.h"
#include "..\..\include\vportcap_RAW.h"
#include "..\..\include\ov7725.h"
#include "..\..\include\vcapparams.h"
#include "..\..\include\utility.h"
#include "..\..\include\dbg_printf.h"

extern int extHeap;
extern I2C_Handle EMBI2C_handle;

//extern OV7725_Params EMB_vCapParamsOV7725;

FVID_Handle capChan1;
FVID_Handle capChan2;
FVID_Frame *capFrameBuf1;
FVID_Frame *capFrameBuf2;

#define VGA_FRAMEBUFFER	((void*)0x80000000)
unsigned short *vdis_buf=VGA_FRAMEBUFFER;

#define LEFT_EYE		1
#define RIGHT_EYE		1

extern BUF_Obj BUF_imgCap;
BUF_Handle PoolHandle;
#ifdef LEFT_EYE
unsigned char * tmp_buf_l;
#endif
#ifdef RIGHT_EYE
unsigned char * tmp_buf_r;
#endif

void VideoInputInit()
{
    int             status;
#ifdef LEFT_EYE		
    capChan1 = FVID_create("/VP1CAPTURE/A/1",
        IOM_INPUT, &status, (Ptr)&EMB_vCapParamsChan, NULL);
	ov7725_init();
#endif
#ifdef RIGHT_EYE
    capChan2 = FVID_create("/VP0CAPTURE/A/0",
        IOM_INPUT, &status, (Ptr)&EMB_vCapParamsChan, NULL);
#endif
}

void VideoInputStart()
{
#ifdef LEFT_EYE
    FVID_control(capChan1, VPORT_CMD_START, NULL);
#endif
#ifdef RIGHT_EYE
    FVID_control(capChan2, VPORT_CMD_START, NULL);
#endif
}

void tskVideoInput()
{
	int i;
	unsigned long t, t1;
	unsigned long total_time = 0, l1, l2;
	int frame = 0;
	PoolHandle= &BUF_imgCap;
#ifdef LEFT_EYE
	tmp_buf_l=BUF_alloc(PoolHandle);
#endif
#ifdef RIGHT_EYE
	tmp_buf_r=BUF_alloc(PoolHandle);
#endif

	disp_init();
	disp_draw_box(0, 639, 0, 239, 0xff00, (unsigned short*)vdis_buf);
	disp_draw_half_frame((unsigned short *)vdis_buf);
	CACHE_flush(CACHE_L2ALL, 0, 0);
#ifdef LEFT_EYE
    FVID_alloc(capChan1, &capFrameBuf1);
#endif
#ifdef RIGHT_EYE
    FVID_alloc(capChan2, &capFrameBuf2);
#endif
	t1 = CLK_getltime();
    while(1)
    {
#ifdef LEFT_EYE
        FVID_exchange(capChan1, &capFrameBuf1);
#endif
#ifdef RIGHT_EYE
        FVID_exchange(capChan2, &capFrameBuf2);
#endif

		t = CLK_getltime();
#if defined(LEFT_EYE) && defined(RIGHT_EYE)
		for(i=0;i<640*480;i++)
			tmp_buf_l[i]=capFrameBuf1->frame.rpFrm.buf[2*i];
		for(i=0;i<640*480;i++)
			tmp_buf_r[i]=capFrameBuf2->frame.rpFrm.buf[2*i];
		disp_rgb565(tmp_buf_l, tmp_buf_r, vdis_buf, 0);
#endif
#if defined(LEFT_EYE) && !defined(RIGHT_EYE)
		for(i=0;i<640*480;i++)
			tmp_buf_l[i]=capFrameBuf1->frame.rpFrm.buf[2*i];
		disp_rgb565(tmp_buf_l, NULL, vdis_buf, 0);
#endif
#if !defined(LEFT_EYE) && defined(RIGHT_EYE)
		for(i=0;i<640*480;i++)
			tmp_buf_r[i]=capFrameBuf2->frame.rpFrm.buf[2*i];
		disp_rgb565(NULL, tmp_buf_r, vdis_buf, 0);
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
    }
}

