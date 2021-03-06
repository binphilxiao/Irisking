#include <std.h>
#include <csl.h>
#include <csl_dat.h>
#include <csl_cache.h>
#include <csl_gpio.h>
#include <csl_i2c.h>
#include <fvid.h>
#include <tsk.h>
#include <stdio.h>

#include "..\..\include\videoport.h"
#include "..\..\include\vportcap_RAW.h"
#include "..\..\include\ov7725.h"
#include "..\..\include\vcapparams.h"

#include "..\..\include\utility.h"
#include "..\..\include\dbg_printf.h"

//#include "cap_dis_size.h"

/* heap IDs defined in the BIOS configuration file */
extern int extHeap;
extern GPIO_Handle EMBGPIO_handle;
extern I2C_Handle EMBI2C_handle;

// added at 20101023
// calculate data position
void SetMemoryAddr (void);

void dsp_newalg_data_init(void);	// added at 20101011, newalg_v2.0 init

// 从DMA或外部得到数据后，调用此函数
// 将CACHE区域刷新(invalidate)
// 例如，得到采集图像或从ARM处得到特征等
void CACHE_inv_area(char *ptr, int size)
{
	int max = 65536 * 3;
	while(1)
	{
		if (size > max)
		{
			CACHE_invL2(ptr, max, CACHE_NOWAIT);
			size -= max;
			ptr += max;
		}
		else
		{
			CACHE_invL2(ptr, size, CACHE_WAIT);
			return;
		}
	}
}

FVID_Handle capChan1;
FVID_Handle capChan2;
FVID_Frame *capFrameBuf1;
FVID_Frame *capFrameBuf2;

#define VGA_FRAMEBUFFER	((void*)0x80000000)
extern unsigned short* vdis_buf;

void dsp_newalg_data_init(void);	// added at 20101011, newalg_v2.0 init

// 配置CCD
// channel	采集通道
void TVP5150_config(I2C_Handle hI2C, int channel)
{
	int i2c_addr = _tvp5150_i2c_addr(channel);
	int v;

	{
		// 设置对比度
		v = 0x90;	// 对比度设置值
    	_IIC_write(hI2C, i2c_addr,0x0c, &v,0x1);

		// 设置亮度
		v = 0x50;	// 亮度设置值
    	_IIC_write(hI2C, i2c_addr,0x09, &v,0x1);
	}

	v = 0 >> 2;
    _IIC_write(hI2C, i2c_addr,0x13, &v,0x1);
	v = 0 & 3;
    _IIC_write(hI2C, i2c_addr,0x14, &v,0x1);

}


void TVP51XX_status(I2C_Handle hI2C)
{
	unsigned char s[4];
	int i2c_addr = _tvp5150_i2c_addr(0);


    _IIC_read(hI2C, i2c_addr, 0x88, &s[0], 0x1);
    _IIC_read(hI2C, i2c_addr, 0x89, &s[1], 0x1);
    _IIC_read(hI2C, i2c_addr, 0x8a, &s[2], 0x1);
    _IIC_read(hI2C, i2c_addr, 0x8c, &s[3], 0x1);
	return;
}


//============================
#include <buf.h>
#include "dsp_memory.h"

#include "..\..\include\CASIA_Gen.h"


extern far BUF_Obj 	BUF_imgPool;	// TSK_image alloc buf for store the fine images
									// the buffer count is 4
									// when TSK_algorithm using 2 of the buf
									// TSK_image still can have place store new image

BUF_Handle 			buffPoolHandle;	// TSK_image alloc it and TSK_algorithm free it

unsigned char*		img_ptr_l=NULL;
unsigned char*		img_ptr_r=NULL;


extern far BUF_Obj  BUF_copyPool;	// alloc buffer for copy captured image
BUF_Handle 			buffCopyPoolHandle;	

unsigned char*		copyimg_ptr_l=NULL;	// copy image data pointer
unsigned char*		copyimg_ptr_r=NULL;

extern far BUF_Obj  BUF_capFrame;	// alloc buffer for copy captured image frame
BUF_Handle 			buffFramePoolHandle;	

unsigned char*		capframe_ptr_l=NULL;	// copy image data pointer
unsigned char*		capframe_ptr_r=NULL;

#define STEREO_MODE		1			// 双CCD均存在
// #define _EMULATOR		1			// 设备上各零件俱全的情况
									// 如不设置此值，则可单纯使用DSP，用内部图像文件测试

#define LEFT_EYE_CH		1
#define RIGHT_EYE_CH	1

extern BUF_Obj BUF_imgCap;
BUF_Handle PoolHandle;

#ifdef LEFT_EYE_CH
unsigned char * tmp_buf_l;
#endif

#ifdef RIGHT_EYE_CH
unsigned char * tmp_buf_r;
#endif

dsp_tsk_totalreg_t* tsk_used_reg;
dsp_reg_t		    dsp_used_reg;	// DSP interval used reg

MATCH_MSG			match_msg;		// 比对测试用到的消息

void ClearImageMsg(IMAGE_MSG msg);
void ClearResultMsg(RESULT_MSG msg);

void ClearDistanceValue(void);

int ProcessFlag (dsp_procimg_t* procimg_reg);
int ProcessImg (dsp_procimg_t* procimg_reg);

void testADCValue (void);
void DispIcon	  (void);

// added at 20100817
void SwitchLED	(int ctrl);
void SwitchCCD	(int ctrl);
//============================
/*void tskVideoInputInit()
{

    int             status;

	EMB_vCapParamsMT9V022.num = sizeof(_reg_mt9v022) / sizeof(MT9V022_Reg);
	EMB_vCapParamsMT9V022.reg = _reg_mt9v022;
	EMB_vCapParamsMT9V022.hI2C = EMBI2C_handle;
	
    capChan1 = FVID_create("/VP1CAPTURE/A/3",
        IOM_INPUT, &status, (Ptr)&EMB_vCapParamsChan, NULL);

    FVID_control(capChan1, VPORT_CMD_EDC_BASE + EDC_CONFIG, (Ptr)&EMB_vCapParamsMT9V022);

//	printf("%04x\n", MT9V022_ReadReg(3, 0xb0));
//	printf("%04x\n", MT9V022_ReadReg(3, 0xa5));

#ifdef STEREO_MODE
    capChan2 = FVID_create("/VP0CAPTURE/A/0",
        IOM_INPUT, &status, (Ptr)&EMB_vCapParamsChan, NULL);

    FVID_control(capChan2, VPORT_CMD_EDC_BASE+EDC_CONFIG, (Ptr)&EMB_vCapParamsMT9V022);
#endif

}

void tskVideoInputInit()
{

    int             status;

	EMB_vCapParamsTVP51XX.hI2C = EMBI2C_handle;

    capChan1 = FVID_create("/VP1CAPTURE/A/0",
        IOM_INPUT, &status, (Ptr)&EMB_vCapParamsChan, NULL);

    FVID_control(capChan1, VPORT_CMD_EDC_BASE + EDC_CONFIG, (Ptr)&EMB_vCapParamsTVP51XX);
	// 增加此配置
	TVP5150_config(EMBI2C_handle, 0);


#ifdef STEREO_MODE
    capChan2 = FVID_create("/VP0CAPTURE/A/1",
        IOM_INPUT, &status, (Ptr)&EMB_vCapParamsChan, NULL);

    FVID_control(capChan2, VPORT_CMD_EDC_BASE + EDC_CONFIG, (Ptr)&EMB_vCapParamsTVP51XX);
	// 增加此配置
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

*/

void VideoInputInit()
{
    int             status;
	GIO_Attrs 		attrs;

	attrs.nPackets 	= 2;
	attrs.timeout 	= SYS_FOREVER;
#ifdef LEFT_EYE_CH		
    capChan1 = FVID_create("/VP1CAPTURE/A/1",
        IOM_INPUT, &status, (Ptr)&EMB_vCapParamsChan, &attrs);
	ov7725_init();
#endif
#ifdef RIGHT_EYE_CH
    capChan2 = FVID_create("/VP0CAPTURE/A/0",
        IOM_INPUT, &status, (Ptr)&EMB_vCapParamsChan, &attrs);
#endif
}

void VideoInputStart()
{
#ifdef LEFT_EYE_CH
    FVID_control(capChan1, VPORT_CMD_START, NULL);
#endif
#ifdef RIGHT_EYE_CH
    FVID_control(capChan2, VPORT_CMD_START, NULL);
#endif
}

void tskVideoInput_SetParam (dsp_procimg_t* param)
{
	disp_init();
	// disp_draw_box(0, 639, 0, 239, 0xff00, (unsigned short*)vdis_buf);
	disp_draw_half_frame((unsigned short *)vdis_buf);
	CACHE_flush(CACHE_L2ALL, 0, 0);

#ifdef LEFT_EYE_CH
    FVID_alloc(capChan1, &capFrameBuf1);
#endif

#ifdef RIGHT_EYE_CH
    FVID_alloc(capChan2, &capFrameBuf2);
#endif

	buffPoolHandle 		= &BUF_imgPool;

	img_ptr_l = BUF_alloc(buffPoolHandle);  
	img_ptr_r = BUF_alloc(buffPoolHandle);

	if ((img_ptr_l==NULL)||(img_ptr_r==NULL))
	{
		SYS_abort("Image Buffer allocation failed\n");
	}

	PoolHandle= &BUF_imgCap;
#ifdef LEFT_EYE_CH
	tmp_buf_l=BUF_alloc(PoolHandle);
#endif
#ifdef RIGHT_EYE_CH
	tmp_buf_r=BUF_alloc(PoolHandle);
#endif

	param->img_msg = MEM_alloc(0, sizeof(IMAGE_MSG_OBJ), 0);
	if (param->img_msg == MEM_ILLEGAL)
	{
		SYS_abort("Memroy allocation failed\n");
	}

	match_msg = MEM_alloc(0, sizeof(MATCH_MSG_OBJ), 0);
	if (match_msg == MEM_ILLEGAL)
	{
		SYS_abort("Memroy allocation failed\n");
	}

	ClearImageMsg(param->img_msg);

	ClearResultMsg(param->result_msg);

	param->last_flag 	  = TSK_ALGORITHM_STATUS_BEGIN;
	param->img_grab_count = 0;

	param->begin_quality  = FALSE;
	param->need_eye		  = TSK_ALGORITHM_FLAG_NOEYE;

}

int switch_test=SWITCH_ON;
int switch_count=0;
int test_count=0;
/* handle video capture, scaling and re-format */
void tskVideoInput()
{

	dsp_procimg_t	procimg_param;
	int				i;
	int				off, capoff;
	int				index;

	int				adc_test_count = 0;
	int				img_quality;
	int				FVID_status_l, FVID_status_r;

	unsigned char*  copyimg_dataptr_l;
	unsigned char*  copyimg_dataptr_r;

	dbg_output("task image\n");

	tskVideoInput_SetParam (&procimg_param);

	copyimg_dataptr_l = copyimg_ptr_l+(BMP_TOTALHEAD_LEN-2)+4;
	copyimg_dataptr_r = copyimg_ptr_r+(BMP_TOTALHEAD_LEN-2)+4;

	// disp_set_stamp((void*)0x80000000, (void*)0, LEFT_STAMP_TOP, LEFT_STAMP_LEFT, 128, 64);
	// when color==0, display nothing
	dsp_used_reg.last_img_quality = 0;
	disp_set_cb(CB_H_THICK, CB_V_THICK, CB_TOP, CB_BOTTOM, CB_LEFT, CB_RIGHT, dsp_used_reg.last_img_quality);


	SwitchCCD(SWITCH_OFF);

	// t1 = CLK_getltime();
    while(1)
    {
        // 累加看门狗存储器
        tsk_used_reg->tsk_watchdog_reg.tsk_img_watchdog++;

        // 交换出采集图像
#ifdef LEFT_EYE_CH
        FVID_status_l = FVID_exchange(capChan1, &capFrameBuf1);
		CACHE_inv_area(capFrameBuf1->frame.rpFrm.buf, 640 * 480 * 2);
#endif
#ifdef RIGHT_EYE_CH
	    FVID_status_r = FVID_exchange(capChan2, &capFrameBuf2);
		CACHE_inv_area(capFrameBuf2->frame.rpFrm.buf, 640 * 480 * 2);
#endif
		if (FVID_status_l==IOM_COMPLETED)
			memcpy(capframe_ptr_l, capFrameBuf1->frame.rpFrm.buf, 640 * 480 * 2);

		if (FVID_status_r==IOM_COMPLETED)
			memcpy(capframe_ptr_r, capFrameBuf2->frame.rpFrm.buf, 640 * 480 * 2);

		capoff = 0;
		off = SrcImSize-1;

#if defined(LEFT_EYE_CH) && defined(RIGHT_EYE_CH)
		
		for(i=0; i<SrcImSize; i++)
		{
			tmp_buf_l[off]=capframe_ptr_l[capoff];
			tmp_buf_r[off]=capframe_ptr_r[capoff];
			capoff += 2;
			off --;
		}

#endif
#if defined(LEFT_EYE_CH) && !defined(RIGHT_EYE_CH)
		for(i=0; i<SrcImSize; i++)
		{
			tmp_buf_l[off]=capFrameBuf1->frame.rpFrm.buf[capoff];
			capoff += 2;
			off --;
		}
#endif
#if !defined(LEFT_EYE_CH) && defined(RIGHT_EYE_CH)
		for(i=0; i<SrcImSize; i++)
		{
			tmp_buf_r[off]=capFrameBuf2->frame.rpFrm.buf[capoff];
			capoff += 2;
			off --;
		}
#endif

		adc_test_count++;
		if (adc_test_count%2==0)
		{
			testADCValue();
			adc_test_count=0;
		}

#if 0
		// without ARM control used this
		tsk_used_reg->tsk_flag_reg.tsk_img_resp = TSK_IMAGE_ACTIVE;

		tsk_used_reg->tsk_control_reg.tsk_alg_control = TSK_ALGORITHM_ENROLL_FLAG;
		tsk_used_reg->tsk_control_reg.tsk_alg_control_count++;


		TSK_sleep(2);
#endif

#if 0
		// added at 20100906, test switch CCD
		test_count++;
		if (test_count%100==0)
		{
			if (switch_test==SWITCH_ON)
				switch_test = SWITCH_OFF;
			else
				switch_test = SWITCH_ON;

			SwitchCCD(switch_test);
		}
#endif		

		if ((procimg_param.last_flag!=tsk_used_reg->tsk_control_reg.tsk_alg_control)	// 控制值是否更新
			||(dsp_used_reg.alg_control_count!=tsk_used_reg->tsk_control_reg.tsk_alg_control_count))
		{

        	// 更新
			// modified by yqhe, 20080415
			// move this to ProcessFlag function
			// dsp_used_reg.alg_control_count = tsk_used_reg->tsk_control_reg.tsk_alg_control_count;
			ProcessFlag(&procimg_param);

		}

		// 测试是否COPY图像
		// 设置为只有在测试状态下才提供图像
		if (tsk_used_reg->dsp_copyimg_reg.left_param==0)
		{

			memcpy(copyimg_dataptr_l, tmp_buf_l, SrcImSize);
			fill_checksum((Uint16 *)copyimg_ptr_l+2, IMG_TEST_SIZE + BMP_TOTALHEAD_LEN);

			CACHE_flush(CACHE_L2ALL, 0, 0);

			tsk_used_reg->dsp_copyimg_reg.left_param = (dsp_tsk_memory_t*)copyimg_ptr_l;
		}

		// COPY右眼图像
		if (tsk_used_reg->dsp_copyimg_reg.right_param==0)
		{
			memcpy(copyimg_dataptr_r, tmp_buf_r, SrcImSize);
			fill_checksum((Uint16 *)copyimg_ptr_r+2, IMG_TEST_SIZE + BMP_TOTALHEAD_LEN);

			CACHE_flush(CACHE_L2ALL, 0, 0);

			tsk_used_reg->dsp_copyimg_reg.right_param = (dsp_tsk_memory_t*)copyimg_ptr_r;

		}

        // ACTIVE状态下
		// 红外测距测试出有人的情况
		if (tsk_used_reg->tsk_flag_reg.tsk_img_resp==TSK_IMAGE_ACTIVE)
        {

			// 显示图像
			// t = CLK_getltime();
			DispIcon();

			//if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_DOING)!=0)
			if (tsk_used_reg->tsk_control_reg.tsk_alg_control!=TSK_ALGORITHM_IDLE_ACTIVE)
			{
				img_quality = dsp_used_reg.last_img_quality;
			}
			else
			{
				img_quality = 0;
			}

			if (img_quality != dsp_used_reg.last_img_quality)
			{
				dsp_used_reg.last_img_quality = img_quality;
				disp_set_cb(CB_H_THICK, CB_V_THICK, CB_TOP, CB_BOTTOM, CB_LEFT, CB_RIGHT, dsp_used_reg.last_img_quality);
			}
		
#ifdef STEREO_MODE
			if (tsk_used_reg->img_icon_reg.dsp_icon_state==ICON_CTL_HIDE)
				disp_rgb565(tmp_buf_l, tmp_buf_r, vdis_buf, 0);
			else
				disp_rgb565(tmp_buf_l, tmp_buf_r, vdis_buf, 1);
#else
			if (tsk_used_reg->img_icon_reg.dsp_icon_state==ICON_CTL_HIDE)
				isp_rgb565(tmp_buf_l, tmp_buf_l, vdis_buf, 0);
			else
				disp_rgb565(tmp_buf_l, tmp_buf_l, vdis_buf, 1);
#endif

        } // end of (ACTIVE)
        else
        {

			// 无人情况，把以前采集到的图像清除作废
			// ClearImageMsg(procimg_param.img_msg);
			procimg_param.img_msg->img_saved_count_l = 0;
			procimg_param.img_msg->img_saved_count_r = 0;
			procimg_param.img_msg->img_saved_score_l = 0;
			procimg_param.img_msg->img_saved_score_r = 0;

			procimg_param.img_grab_count	= 0;

			dsp_used_reg.quality_count 		= 0;

			img_quality = 0;

			if (img_quality != dsp_used_reg.last_img_quality)
			{
				dsp_used_reg.last_img_quality = img_quality;
				disp_set_cb(CB_H_THICK, CB_V_THICK, CB_TOP, CB_BOTTOM, CB_LEFT, CB_RIGHT, dsp_used_reg.last_img_quality);
			}

    		for (index=0; index<JUDGE_RETURN; index++)
    		{
        		dsp_used_reg.quality_value[index]=0;
			}

			//if (dsp_used_reg.distance_reg.if_disp_image==TRUE)
			{
				//DispIcon();

#ifdef STEREO_MODE
				disp_rgb565(tmp_buf_l, tmp_buf_r, vdis_buf, 0);
#else
				disp_rgb565(tmp_buf_l, tmp_buf_l, vdis_buf);
#endif
			}

/*
			// for CCD TEST always display image
			if (dsp_used_reg.distance_reg.if_disp_image==TRUE)
			{
				DispIcon();
			}
			else
				disp_set_cb(CB_H_THICK, CB_V_THICK, CB_TOP, CB_BOTTOM, CB_LEFT, CB_RIGHT, 20);

#ifdef STEREO_MODE
				disp_rgb565((unsigned char*)capFrameBuf1->frame.iFrm.y1, (unsigned char*)capFrameBuf2->frame.iFrm.y1, vdis_buf, 0);
#else
				disp_rgb565((unsigned char*)capFrameBuf1->frame.iFrm.y1, (unsigned char*)capFrameBuf1->frame.iFrm.y1, vdis_buf);
#endif
*/

			CACHE_flush(CACHE_L2ALL, 0, 0);

        } // end of IDLE中

		if (dsp_used_reg.distance_reg.wait_frame==0)
			ProcessImg(&procimg_param);
		else
		{
			dsp_used_reg.distance_reg.wait_frame--;
		}

	} // end of while(1)

} // end of tskVideoInput


// 初始化ARM-DSP交换数据参数
void arm_dsp_data_init()
{
	unsigned int 	addr;
	unsigned int 	len;
	unsigned char* 	bmp_clear;
	int				clear_len;
	dsp_tsk_memory_t* lptmp;

	SetMemoryAddr();

	tsk_used_reg = (dsp_tsk_totalreg_t*)(EXCHANGE_MEM);

	memset(tsk_used_reg, 0, sizeof(dsp_tsk_totalreg_t));

	// 回应存储器
    tsk_used_reg->tsk_flag_reg.tsk_img_resp = TSK_IMAGE_IDLE;

	// 设备参数存储器
	tsk_used_reg->alg_devparam_reg.param_count = DEVICE_PARAMCOUNT;

	// 距离发声控制存储器
	tsk_used_reg->dsp_distance_ctrl_reg.adc_noperson = 40;
	tsk_used_reg->dsp_distance_ctrl_reg.adc_toofar	 = 28;
	tsk_used_reg->dsp_distance_ctrl_reg.adc_ok		 = 23;
	tsk_used_reg->dsp_distance_ctrl_reg.adc_tooclose = 0;
	tsk_used_reg->dsp_distance_ctrl_reg.adc_smooth	 = 5;
	tsk_used_reg->dsp_distance_ctrl_reg.adc_noperson_disp = 50;
	tsk_used_reg->dsp_distance_ctrl_reg.adc_play_sound=10;

	// 编译时间存储器
	sprintf(tsk_used_reg->dsp_buildtime_reg.datetime, "%s %s", __DATE__, __TIME__); //"2008-12-09 16:00:00");
	//sprintf(tsk_used_reg->dsp_buildtime_reg.datetime, "%s", __TIMESTAMP__);


	// 内部存储器
	memset(&dsp_used_reg, 0, sizeof(dsp_used_reg));

	dsp_used_reg.alg_control_count    = 0xffff;
	dsp_used_reg.last_icon_id		  = -1;	

	// 内部初始状态
	// dsp_used_reg.status_reg.tsk_alg_status=TSK_ALGORITHM_STATUS_BEGIN;	// 初始状态

	ClearDistanceValue();

	dsp_used_reg.sound_reg.last_sound_value				= SND_NULL;
	dsp_used_reg.sound_reg.last_sound_time				= TSK_time();

	tsk_used_reg->tsk_control_reg.tsk_alg_control 		= 0;
	tsk_used_reg->tsk_control_reg.tsk_alg_control_count = 0xffff;
	tsk_used_reg->tsk_control_reg.tsk_img_control 		= 0;
	tsk_used_reg->tsk_control_reg.tsk_img_control_count = 0xffff;

	// 图标更新地址
	addr = IMG_ICON_START_ADDR;
	while( ( addr & 7 ) != 0 ) addr++;

	len  = DSP_SDRAM_TOP_ADDR - addr;

	tsk_used_reg->img_icon_reg.icon_data.dataptr_len	= len;
	tsk_used_reg->img_icon_reg.icon_data.data_ptr		= (void*)addr;

	bmp_clear = (unsigned char*)addr;
	clear_len = 128*128*5;

	memset(bmp_clear, 0x00, clear_len);

	// 设置图像COPY参数为非0
	buffCopyPoolHandle 	= &BUF_copyPool;

	// the buffer size is 640*480 + BMP_TOTALHEAD_LEN (308284)
	// modified at 20080606
	// raw test image add the width (4 bytes)  and height (4 btyes) before the data
	// so, the buffer size now should >= (640*480 + BMP_TOTALHEAD_LEN + 8)
	// 308300 now
	copyimg_ptr_l = BUF_alloc(buffCopyPoolHandle);  
	copyimg_ptr_r = BUF_alloc(buffCopyPoolHandle);

	lptmp = (dsp_tsk_memory_t*)copyimg_ptr_l;
	lptmp->dataptr_len  = IMG_TEST_SIZE + BMP_TOTALHEAD_LEN;
	lptmp->data_ptr = copyimg_ptr_l+4;
	tsk_used_reg->dsp_copyimg_reg.left_param	= lptmp;

	lptmp = (dsp_tsk_memory_t*)copyimg_ptr_r;
	lptmp->dataptr_len  = IMG_TEST_SIZE + BMP_TOTALHEAD_LEN;
	lptmp->data_ptr = copyimg_ptr_r+4;
	tsk_used_reg->dsp_copyimg_reg.right_param	= lptmp;

	// 预先填充好BMP文件头
	FillBmpHeader ((Uint32)copyimg_ptr_l+4, ImW, ImH);
	FillBmpHeader ((Uint32)copyimg_ptr_r+4, ImW, ImH);

	buffFramePoolHandle = &BUF_capFrame;	
	capframe_ptr_l = BUF_alloc(buffFramePoolHandle);  
	capframe_ptr_r = BUF_alloc(buffFramePoolHandle);

	// 20080505
	// 测试用图像占用的空间与COPY图像占用的空间使用同样的地址
	// 但是测试用图像是裸格式，起始位置比COPY图像的位置靠后一些
	tsk_used_reg->dsp_testimg_reg.left_eye.img_data.data_ptr	= copyimg_ptr_l + BMP_TOTALHEAD_LEN;
	tsk_used_reg->dsp_testimg_reg.left_eye.img_data.dataptr_len = IMG_TEST_SIZE + 8;

	tsk_used_reg->dsp_testimg_reg.right_eye.img_data.data_ptr	= copyimg_ptr_r + BMP_TOTALHEAD_LEN;
	tsk_used_reg->dsp_testimg_reg.right_eye.img_data.dataptr_len = IMG_TEST_SIZE + 8;

	// TEST: set ccd can be off
	tsk_used_reg->switch_control_reg.ctrls=CTRL_CCD_ALSON;

	dsp_newalg_data_init();	// added at 20101011

}

void ClearImageMsg(IMAGE_MSG msg)
{
	msg->img_saved_score_l	= 0;
	msg->img_saved_score_r 	= 0;

	msg->eye_flag			= 0;
	msg->process_flag		= 0;


	msg->img_saved_count_l	= 0;
	msg->img_saved_count_r	= 0;
}

void ClearResultMsg(RESULT_MSG msg)
{
	msg->eye_flag			= 0;
	msg->process_flag		= 0;
	msg->result_left		= -1;
	msg->result_right		= -1;
}

void ClearDistanceValue(void)
{
	dsp_used_reg.distance_reg.same_count 	= 0;
	dsp_used_reg.distance_reg.has_count  	= 0;
	dsp_used_reg.distance_reg.no_count   	= 0;
	dsp_used_reg.distance_reg.if_has_people	= FALSE;
	dsp_used_reg.distance_reg.last_if_has	= FALSE;
	dsp_used_reg.distance_reg.last_distance = tsk_used_reg->dsp_distance_ctrl_reg.adc_noperson;
	dsp_used_reg.distance_reg.disp_count	= 0;
	dsp_used_reg.distance_reg.if_disp_image = FALSE;

	return;
}

// 查询红外测距模块距离值
// 依据此值，判断设备前是否有人，
// 以及人的位置是否合适
void testADCValue (void)
{
	int now_distance	= tsk_used_reg->dsp_distance_ctrl_reg.adc_ok;
	int sound_interval	= 0;
	dsp_used_reg.distance_reg.if_disp_image = TRUE;

	// 根据距离值，确定设备前物体的远近
	if (tsk_used_reg->tsk_control_reg.tsk_adc_value>=tsk_used_reg->dsp_distance_ctrl_reg.adc_noperson)
	{
		now_distance = tsk_used_reg->dsp_distance_ctrl_reg.adc_noperson;

		dsp_used_reg.distance_reg.no_count++;
		dsp_used_reg.distance_reg.disp_count++;
	}
	else if (tsk_used_reg->tsk_control_reg.tsk_adc_value>=tsk_used_reg->dsp_distance_ctrl_reg.adc_toofar)
	{
		now_distance = tsk_used_reg->dsp_distance_ctrl_reg.adc_toofar;

		dsp_used_reg.distance_reg.has_count++;

	}
	else if (tsk_used_reg->tsk_control_reg.tsk_adc_value>=tsk_used_reg->dsp_distance_ctrl_reg.adc_ok)
	{
		now_distance = tsk_used_reg->dsp_distance_ctrl_reg.adc_ok;
		dsp_used_reg.distance_reg.has_count++;
	}
	else 
	{
		now_distance = tsk_used_reg->dsp_distance_ctrl_reg.adc_tooclose;
		dsp_used_reg.distance_reg.has_count++;
	}

	// 判断有无人
	if (dsp_used_reg.distance_reg.has_count>=tsk_used_reg->dsp_distance_ctrl_reg.adc_smooth)
	{
		dsp_used_reg.distance_reg.if_has_people = TRUE;
		dsp_used_reg.distance_reg.if_disp_image = TRUE;
		dsp_used_reg.distance_reg.has_count		= 0;	
		dsp_used_reg.distance_reg.no_count		= 0;
		dsp_used_reg.distance_reg.disp_count	= 0;
	}
	else if (dsp_used_reg.distance_reg.no_count>=tsk_used_reg->dsp_distance_ctrl_reg.adc_smooth)
	{
		dsp_used_reg.distance_reg.if_has_people = FALSE;
		dsp_used_reg.distance_reg.has_count		= 0;	
		dsp_used_reg.distance_reg.no_count		= 0;
	}

	// 无人后过一段时间才不显示图像
	if (dsp_used_reg.distance_reg.disp_count>=tsk_used_reg->dsp_distance_ctrl_reg.adc_noperson_disp)
	{
		dsp_used_reg.distance_reg.if_disp_image = FALSE;
		// added at 20100907, for CCD test, always display image
		//dsp_used_reg.distance_reg.if_disp_image = TRUE;
		dsp_used_reg.distance_reg.disp_count	= 0;

		disp_draw_half_frame((unsigned short *)vdis_buf);

#if 1
		// 无人则关灯
		SwitchLED(SWITCH_OFF);
		// 无人则关CCD
		SwitchCCD(SWITCH_OFF);
#endif		

	}

	// 距离是否有变化
	if (dsp_used_reg.distance_reg.last_distance!=now_distance)
	{
		dsp_used_reg.distance_reg.same_count 	= 0;
		// 距离为合适或过近，认为是同一类
		// 第一次进入这种状态时需要等待对应的帧数，
		// 如果已经等待过，则继续等待即可
		// 不必设置新的帧数
		if (((now_distance==tsk_used_reg->dsp_distance_ctrl_reg.adc_ok)||
					(now_distance==tsk_used_reg->dsp_distance_ctrl_reg.adc_tooclose))
			&&((dsp_used_reg.distance_reg.last_distance!=tsk_used_reg->dsp_distance_ctrl_reg.adc_ok)
					||(dsp_used_reg.distance_reg.last_distance!=tsk_used_reg->dsp_distance_ctrl_reg.adc_tooclose)))
		{
			if (dsp_used_reg.distance_reg.wait_frame==0)
				dsp_used_reg.distance_reg.wait_frame = WAIT_IMG_COUNT;
		}
		
		dsp_used_reg.distance_reg.last_distance = now_distance;
	}
	else
	{
		dsp_used_reg.distance_reg.same_count++;
	}

	// 根据累计值，确定是否播放语音
	// delete sound
	if (dsp_used_reg.distance_reg.same_count>=tsk_used_reg->dsp_distance_ctrl_reg.adc_play_sound)
	{
		if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_DOING)!=0)
		{
			if (now_distance==tsk_used_reg->dsp_distance_ctrl_reg.adc_toofar)
			{
				tsk_used_reg->alg_sound_reg.sound_value = SND_CLOSER;

				sound_interval = TSK_time() - dsp_used_reg.sound_reg.last_sound_time;
				if ((sound_interval>=SOUND_PLAY_INTERVAL)
					&&(CalcCurFeatureNum()>0))
				{
					dsp_used_reg.sound_reg.last_sound_time = TSK_time();
					tsk_used_reg->alg_sound_reg.sound_count++;
				}

			}
			else if (now_distance==tsk_used_reg->dsp_distance_ctrl_reg.adc_tooclose)
			{
				tsk_used_reg->alg_sound_reg.sound_value = SDN_FARTHER;

				sound_interval = TSK_time() - dsp_used_reg.sound_reg.last_sound_time;
				if ((sound_interval>=SOUND_PLAY_INTERVAL)
					&&(CalcCurFeatureNum()>0))
				{
					dsp_used_reg.sound_reg.last_sound_time = TSK_time();
					tsk_used_reg->alg_sound_reg.sound_count++;
				}
			}
		}

		dsp_used_reg.distance_reg.same_count = 0;
	}


	if (dsp_used_reg.distance_reg.if_has_people==!dsp_used_reg.distance_reg.last_if_has)
	{
		if (dsp_used_reg.distance_reg.if_has_people==TRUE)
		{
			// delete sound
			if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_DOING)!=0)
				&&(CalcCurFeatureNum()>0))
			{
				tsk_used_reg->alg_sound_reg.sound_value = SND_WELCOME;
				tsk_used_reg->alg_sound_reg.sound_count++;
				dsp_used_reg.sound_reg.last_sound_value = SND_WELCOME;
				dsp_used_reg.sound_reg.last_sound_time  = TSK_time();
			}

			tsk_used_reg->tsk_flag_reg.tsk_img_resp = TSK_IMAGE_ACTIVE;

#if 1
		// 有人则开灯
		SwitchLED(SWITCH_ON);
		// 有人则开CCD
		SwitchCCD(SWITCH_ON);
#endif


		}
		else
		{
			tsk_used_reg->tsk_flag_reg.tsk_img_resp = TSK_IMAGE_IDLE;
		}

		dsp_used_reg.distance_reg.last_if_has = dsp_used_reg.distance_reg.if_has_people;
	}

} // end of testADCValue


void DispIcon (void)
{
	unsigned int base_addr;
	unsigned int addr;
	unsigned int len;
	unsigned int width, height;
	unsigned int disp_left, disp_top;
	unsigned int sq;
	unsigned short*	bmp_data;			// 图像数据，此图像应为正向位图。
	unsigned char* 	mask;				// 掩码位

	dsp_bmp_t*	 bmp_ptr;
	int			 index;

	tsk_used_reg->img_icon_reg.dsp_icon_state = tsk_used_reg->img_icon_reg.req_icon_control;
	if (tsk_used_reg->img_icon_reg.dsp_icon_state==ICON_CTL_HIDE)
		return;	// 不显示图像，直接返回

	if (tsk_used_reg->img_icon_reg.req_icon_id == dsp_used_reg.last_icon_id)
		return;

	dsp_used_reg.last_icon_id = tsk_used_reg->img_icon_reg.req_icon_id;

	base_addr = IMG_ICON_START_ADDR;

	while( ( base_addr & 7 ) != 0 ) base_addr++;

	addr 		= base_addr;

	for (index=0; index<tsk_used_reg->img_icon_reg.req_icon_id; index++)
	{
		bmp_ptr = (dsp_bmp_t*)addr;
		width   = bmp_ptr->width;
		height  = bmp_ptr->height;
		sq		= width*height;
		len 	= sizeof(dsp_bmp_t) + (sq*sizeof(short)) + (sq/8);

		while( ( len & 7 ) != 0 ) len++;

		addr   += len;
	}

	bmp_ptr = (dsp_bmp_t*)addr;
	width   = bmp_ptr->width;
	height  = bmp_ptr->height;
	sq		= width*height;

	bmp_data 	= (unsigned short*)(addr+sizeof(dsp_bmp_t));
	mask		= (unsigned char*)(addr+sizeof(dsp_bmp_t)+sq*sizeof(short));

	disp_left = (DISP_WIN_WIDTH/2) - (bmp_ptr->width/2);
	disp_top  = (DISP_WIN_HEIGHT/2) - (bmp_ptr->height/2);
	disp_set_stamp((void*)(bmp_data), (void*)mask, disp_top, disp_left, bmp_ptr->width, bmp_ptr->height);
}


void SwitchLED	(int ctrl)
{
	/* Sets GP2 and GP3 as output pins */
	Uint32 PinID= GPIO_PIN4 | GPIO_PIN7;

	if (ctrl==SWITCH_ON)
	{
		// 红外照明控制，写0，开灯，写1，关灯
		GPIO_pinWrite(EMBGPIO_handle,PinID,0);
	}
	else if (ctrl==SWITCH_OFF)
	{
		// 红外照明控制，写0，开灯，写1，关灯
		GPIO_pinWrite(EMBGPIO_handle,PinID,1);
	}
} // end of SwitchLED

Uint32	cur_ccd_val = CCD_OFF;

void ctrlCCD (Uint32 ctrl_val)
{
	/* Sets GP2 and GP3 as output pins */
	/*
	int	   frame;
	Uint32 PinID= GPIO_PIN1 | GPIO_PIN2;
	LgUns	start_time, end_time;

	GPIO_pinWrite(EMBGPIO_handle, PinID, ctrl_val);

	// 初次打开CCD，需要等待一段时间
	if (ctrl_val==CCD_ON)
	{
		start_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();
		// 等待几帧的时间
		for (frame=0; frame<SWITCH_CCD_WAITFRAME; frame++)
		{
			FVID_exchange(capChan1, &capFrameBuf1);
#ifdef STEREO_MODE
			FVID_exchange(capChan2, &capFrameBuf2);
#endif
		}
		end_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();
		dbg_output("wait %d frame, spend=%dms\n", SWITCH_CCD_WAITFRAME, (end_time-start_time));
	}
	*/
}

void SwitchCCD	(int ctrl)
{
	unsigned int ctrl_bits=0x01;

	if (ctrl==SWITCH_ON)
	{
		// OPEN CCDs
		// 写1，开CCD
		if (cur_ccd_val != CCD_ON)
		{
			cur_ccd_val = CCD_ON;
			ctrlCCD(cur_ccd_val);
			dbg_output("1-ON, count=%d\n", ++switch_count);
		}
	}
	else if (ctrl==SWITCH_OFF)
	{
		// if switch_control_reg CTRL_CCD_BIT==CTRL_CCD_ALSON
		ctrl_bits <<= CTRL_CCD_BIT;

		if ((tsk_used_reg->switch_control_reg.ctrls&ctrl_bits)==CTRL_CCD_CANOFF)
		{
			// CCDs can be switched of
			// 写0，关CCD
			if (cur_ccd_val != CCD_OFF)
			{
				cur_ccd_val = CCD_OFF;
				ctrlCCD(cur_ccd_val);
				dbg_output("0-OFF, count=%d\n", ++switch_count);
			}
		}
		else
		{
			if (cur_ccd_val==CCD_OFF)
			{
				cur_ccd_val=CCD_ON;
				ctrlCCD(cur_ccd_val);
				dbg_output("0-OFF, but the control is ALSON, so turn on\n");
			}
			else
				dbg_output("0-OFF, but the control is ALSON\n");
		}
	}

#if 0
	// added at 20100907, test switch ccd, without ARM control
	if (ctrl==SWITCH_ON)
	{
		ctrlCCD(CCD_ON);
		dbg_output("1-ON, count=%d\n", ++switch_count);
	}
	else
	{
		ctrlCCD(CCD_OFF);
		dbg_output("0-OFF, count=%d\n", ++switch_count);
	}
#endif	

} // end of SwitchCCD

LgUns ENROLL_RESULT_ADDR;			// enroll result start address
LgUns ENROLL_LEFT_STRUCT_ADDR1;		// first left enroll result (if has)
LgUns ENROLL_RIGHT_STRUCT_ADDR1;	// first right enroll result (if has)

LgUns ENROLL_RESULT_TOTAL_LEN;		// single enroll result size without rec_feature
LgUns ENROLL_RESULT_MAX_LEN;		// single enroll result size with rec_feature

LgUns ENROLL_FEATURE_STRUCT_OFFSET;	// 注册特征结构的起始偏移，在dsp_eye_feature_t中enroll_feature的偏移
LgUns ENROLL_FEATURE_DATA_OFFSET;	// 注册特征数据的起始偏移，在dsp_eye_feature_t中enroll_feature.data_byte的偏移
LgUns ENROLL_IMAGE_STRUCT_OFFSET;	// 注册图像结构的起始偏移，在dsp_eye_feature_t中enroll_img的偏移
LgUns ENROLL_BMPHEAD_DATA_OFFSET;	// 注册图像BMP头的起始偏移
LgUns ENROLL_IMAGE_DATA_OFFSET;		// 注册图像数据的起始偏移

LgUns IMG_ICON_START_ADDR;			// 图标保存起始位置
LgUns IMG_ICON_MASK_START_ADDR;		// 图标掩码保存起始位置

LgUns IMG_FEATURE_COUNT;			// every eye enrolled feature max count
LgUns IMG_FEATURE_STRUCT_TOTALSIZE;
LgUns IMG_FEATURE_LEFT_STRUCT_ADDR;	// left eye enrolled feature struct start address
LgUns IMG_FEATURE_LEFT_ADDR;		// left eye enrolled feature data start address
LgUns IMG_FEATURE_RIGHT_STRUCT_ADDR;// right eye enrolled feature struct start address
LgUns IMG_FEATURE_RIGHT_ADDR;		// right eye enrolled feature data start address

LgUns IMG_FEATURE_DATA_OFFSET;

// this function should be called before others
void SetMemoryAddr (void)
{
	LgUns icon_total_len;
	LgUns icon_mask_total_len;
	LgUns free_memory_len;

	// offset of struct dsp_byte_data_t of feature
	//  ALG_V1 and ALG_V2 used different enroll struct
#ifdef ALG_V1
	ENROLL_FEATURE_STRUCT_OFFSET= sizeof(int) + sizeof(circle_t)*2;
#else
	ENROLL_FEATURE_STRUCT_OFFSET= sizeof(int) + sizeof(iris_loc_t);
									// eye_flag + loc
#endif

	// offset of actural feature data 
	ENROLL_FEATURE_DATA_OFFSET	= ENROLL_FEATURE_STRUCT_OFFSET + sizeof(unsigned int);

	// offset of struct dsp_byte_data_t of image
	ENROLL_IMAGE_STRUCT_OFFSET	= ENROLL_FEATURE_STRUCT_OFFSET + sizeof(unsigned int) + IR_FeatureLength;

	ENROLL_BMPHEAD_DATA_OFFSET	= ENROLL_IMAGE_STRUCT_OFFSET + sizeof(unsigned int);

	ENROLL_IMAGE_DATA_OFFSET	= ENROLL_BMPHEAD_DATA_OFFSET + BMP_TOTALHEAD_LEN - 2;

	ENROLL_RESULT_TOTAL_LEN		= ENROLL_IMAGE_STRUCT_OFFSET \
									// eye_flag + loc + enroll_feature.data_len + enroll_feature.data_byte
									+ sizeof(unsigned int) + BMP_TOTALHEAD_LEN + SrcImSize \
									// enroll_img.data_len + BMP_TOTALHEAD + image_data
									+ sizeof(unsigned int);
									// match_feature.data_len;
	ENROLL_RESULT_MAX_LEN		= ENROLL_RESULT_TOTAL_LEN + IR_RotateFeatureLength;

	// address of struct dsp_algorithm_result_data_t
	// enroll result start address
	ENROLL_RESULT_ADDR 			= LOCIMG_ADDR+IR_RotateFeatureLen;
	// address of struct dsp_algorithm_result_info_t, first left enroll result (if has)
	ENROLL_LEFT_STRUCT_ADDR1 	= ENROLL_RESULT_ADDR + sizeof(unsigned int)*3;
	// first right enroll result (if has)
	ENROLL_RIGHT_STRUCT_ADDR1	= ENROLL_LEFT_STRUCT_ADDR1 + ENROLL_RESULT_MAX_LEN*MAXCOPY_ENROLLCOUNT;

	IMG_FEATURE_DATA_OFFSET		= sizeof(unsigned int)*3;
	
	icon_total_len 				= ICON_TMP_SIZE*ICON_MAX_COUNT;
	icon_mask_total_len			= icon_total_len/8;

	IMG_FEATURE_LEFT_STRUCT_ADDR= (ENROLL_RIGHT_STRUCT_ADDR1 \
										+ ENROLL_RESULT_MAX_LEN*MAXCOPY_ENROLLCOUNT)&0xffffff00;
	IMG_FEATURE_LEFT_ADDR		= IMG_FEATURE_LEFT_STRUCT_ADDR + IMG_FEATURE_DATA_OFFSET;

	free_memory_len				= DSP_SDRAM_TOP_ADDR - ( IMG_FEATURE_LEFT_STRUCT_ADDR
										+ icon_total_len + icon_mask_total_len \
										+ IMG_FEATURE_DATA_OFFSET*2);

	IMG_FEATURE_COUNT			= (free_memory_len/IR_FeatureLength/2)&0xfffffff0;

	IMG_FEATURE_STRUCT_TOTALSIZE= IMG_FEATURE_DATA_OFFSET + IMG_FEATURE_COUNT*IR_FeatureLength;

	IMG_FEATURE_RIGHT_STRUCT_ADDR=IMG_FEATURE_LEFT_ADDR + IMG_FEATURE_STRUCT_TOTALSIZE;
	IMG_FEATURE_RIGHT_ADDR		= IMG_FEATURE_RIGHT_STRUCT_ADDR + IMG_FEATURE_DATA_OFFSET;

	IMG_ICON_START_ADDR			= IMG_FEATURE_RIGHT_ADDR + IMG_FEATURE_STRUCT_TOTALSIZE;

}
