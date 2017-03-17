// 在IDLE状态下，DSP可接受CODE或者MATCH测试设置
// 方式是ARM设置tsk_used_reg->tsk_control_reg.tsk_alg_contro中的值
// 为TSK_ALGORITHM_CODE_FLAG或TSK_ALGORITHM_MATCH_FLAG

// 如DSP接受此设置（在IDLE或BEGIN状态下均可接受），
// 则DSP在tsk_used_reg->tsk_flag_reg.tsk_alg_status设置对应的值
// TSK_ALGORITHM_CODE_ACTIVE或TSK_ALGORITHM_MATCH_ACTIVE

// DSP之后向算法任务发去控制消息，要求算法任务承担CODE或MATCH工作
// 完毕后，算法任务向图像任务返回完成消息
// 在算法任务中设置对应的返回值，并通知ARM操作已完毕，可以取结果
// 通知ARM的方式是设置tsk_used_reg->alg_result_reg.result_type的值
// 为RESULT_TYPE_CODE或者RESULT_TYPE_MATCH

#include <std.h>
#include <csl.h>
#include <csl_cache.h>

#include "dbg_printf.h"
#include "dsp_memory.h"
#include "..\..\include\CASIA_Gen.h"

extern IrisImageInfo	left_imginfo[IR_EnrollTime];	// added at 20101011
extern IrisImageInfo	right_imginfo[IR_EnrollTime];	// added at 20101011

extern far QUE_Obj	img_queue;		// 传递图像信息, tskImage -> tskAlgorithm
extern far QUE_Obj	result_queue;	// 传递结果信息, tskAlgorithm -> tskImage

int SetTestParam(dsp_procimg_t* procimg_reg)
{
	procimg_reg->img_msg->eye_flag 	= TSK_ALGORITHM_FLAG_NOEYE;
	procimg_reg->img_msg->img_ptr_l = NULL;
	procimg_reg->img_msg->img_ptr_r = NULL;
	procimg_reg->img_msg->feature_tag=0;

	// send left test image to tsk alg
	if (dsp_used_reg.status_reg.tsk_testimg_tag_left!=tsk_used_reg->dsp_testimg_reg.left_eye.tag_arm)
	{
		procimg_reg->img_msg->img_ptr_l 			 = tsk_used_reg->dsp_testimg_reg.left_eye.img_data.data_ptr;
		dsp_used_reg.status_reg.tsk_testimg_tag_left = tsk_used_reg->dsp_testimg_reg.left_eye.tag_arm;

		procimg_reg->img_msg->data_type_l			 = tsk_used_reg->dsp_testimg_reg.left_eye.type;

		procimg_reg->img_msg->eye_flag 				 = TSK_ALGORITHM_FLAG_LEFTEYE;

		// 设置_tag
		// 识别结果的tag以此为准
		{
			unsigned int 	left_feature_tag		 = 0;
			unsigned int 	right_feature_tag		 = 0;
			dsp_algorithm_iden_feature_t* lp_feature = NULL;

			lp_feature = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_LEFT_STRUCT_ADDR);
			left_feature_tag  = lp_feature->feature_tag;

			lp_feature = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_RIGHT_STRUCT_ADDR);
			right_feature_tag = lp_feature->feature_tag;

			procimg_reg->img_msg->feature_tag = (left_feature_tag|right_feature_tag);
		}

	}

	// if there has code param in right eye position
	if (dsp_used_reg.status_reg.tsk_testimg_tag_right!=tsk_used_reg->dsp_testimg_reg.right_eye.tag_arm)
	{
		
		procimg_reg->img_msg->img_ptr_r 			  = tsk_used_reg->dsp_testimg_reg.right_eye.img_data.data_ptr;
		dsp_used_reg.status_reg.tsk_testimg_tag_right = tsk_used_reg->dsp_testimg_reg.right_eye.tag_arm;

		procimg_reg->img_msg->data_type_r			  = tsk_used_reg->dsp_testimg_reg.right_eye.type;
	}


	if (procimg_reg->img_msg->eye_flag != TSK_ALGORITHM_FLAG_NOEYE)	// find the input image or feature
		return IRIS_SUCCESS;
	else
		return IRIS_ERROR;
}

int StartCode(dsp_procimg_t* procimg_reg)
{
	int nret;
	nret = SetTestParam(procimg_reg);

	if (nret==IRIS_SUCCESS)
	{
		procimg_reg->img_msg->process_flag = WORKTYPE_CODE;
		QUE_put(&img_queue, procimg_reg->img_msg);
	}

	return nret;
}

int StartMatch(dsp_procimg_t* procimg_reg)
{
	int nret;
	nret = SetTestParam(procimg_reg);

	if (nret==IRIS_SUCCESS)
	{
		procimg_reg->img_msg->process_flag = WORKTYPE_MATCH;
		QUE_put(&img_queue, procimg_reg->img_msg);
	}

	return nret;
}
