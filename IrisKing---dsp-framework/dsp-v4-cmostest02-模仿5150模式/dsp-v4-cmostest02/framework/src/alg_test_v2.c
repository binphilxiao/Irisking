// ��IDLE״̬�£�DSP�ɽ���CODE����MATCH��������
// ��ʽ��ARM����tsk_used_reg->tsk_control_reg.tsk_alg_contro�е�ֵ
// ΪTSK_ALGORITHM_CODE_FLAG��TSK_ALGORITHM_MATCH_FLAG

// ��DSP���ܴ����ã���IDLE��BEGIN״̬�¾��ɽ��ܣ���
// ��DSP��tsk_used_reg->tsk_flag_reg.tsk_alg_status���ö�Ӧ��ֵ
// TSK_ALGORITHM_CODE_ACTIVE��TSK_ALGORITHM_MATCH_ACTIVE

// DSP֮�����㷨����ȥ������Ϣ��Ҫ���㷨����е�CODE��MATCH����
// ��Ϻ��㷨������ͼ�����񷵻������Ϣ
// ���㷨���������ö�Ӧ�ķ���ֵ����֪ͨARM��������ϣ�����ȡ���
// ֪ͨARM�ķ�ʽ������tsk_used_reg->alg_result_reg.result_type��ֵ
// ΪRESULT_TYPE_CODE����RESULT_TYPE_MATCH

#include <std.h>
#include <csl.h>
#include <csl_cache.h>

#include "dbg_printf.h"
#include "dsp_memory.h"
#include "..\..\include\CASIA_Gen.h"

extern IrisImageInfo	left_imginfo[IR_EnrollTime];	// added at 20101011
extern IrisImageInfo	right_imginfo[IR_EnrollTime];	// added at 20101011

extern far QUE_Obj	img_queue;		// ����ͼ����Ϣ, tskImage -> tskAlgorithm
extern far QUE_Obj	result_queue;	// ���ݽ����Ϣ, tskAlgorithm -> tskImage

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

		// ����_tag
		// ʶ������tag�Դ�Ϊ׼
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
