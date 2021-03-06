#include <std.h>
#include <tsk.h>
#include <buf.h>
#include <fvid.h>
#include <csl.h>
#include <csl_cache.h>
#include "dbg_printf.h"

#include "dsp_memory.h"
#include "dsp_typedef.h"

#include "..\..\include\CASIA_Gen.h"

#define _EMULATOR	1

//extern FVID_Frame *capFrameBuf1;
//extern FVID_Frame *capFrameBuf2;
extern unsigned char * tmp_buf_l;
extern unsigned char * tmp_buf_r;
extern unsigned short* vdis_buf;

extern far QUE_Obj	img_queue;		// 传递图像信息, tskImage -> tskAlgorithm
extern far QUE_Obj	result_queue;	// 传递结果信息, tskAlgorithm -> tskImage

#if !_EMULATOR
extern unsigned char irisimage[];
#endif

// 确认注册、识别等操作感兴趣的是哪只眼睛的图像
int  FindRequiredEye (int policy_type);	// 注册或识别均用此函数
int  FindGrabIdenRequiredEye ();		// 注册后采集识别，使用此函数

// 判断当前采集图像质量
void SelectCurImages (dsp_procimg_t* procimg_reg, int qua_worktype);

// 对输入的测试图像进行识别测试
void NeedToIdenTestImage(dsp_procimg_t* procing_reg);

void ProcessIdenResult (dsp_procimg_t* procimg_reg);
void ProcessEnrollResult (dsp_procimg_t* procimg_reg);
void ProcessEnrollIdenResult (dsp_procimg_t* procimg_reg);
void ProcessGrabIdenResult (dsp_procimg_t* procimg_reg);

int  SelectImage(unsigned char* orgImage, int worktype,
				unsigned int* saved_score, unsigned char* destImage);

// added at 20101023
// for algorithm-v2 test
int StartCode(dsp_procimg_t* procimg_reg);
int StartMatch(dsp_procimg_t* procimg_reg);

// modified at 20081127
// 在dsp_used_reg结构中增加一个存储器
// dsp_result_t，保留注册和识别的结果及次数等信息
int CheckResult (dsp_procimg_t* procimg_reg)
{
	int			nret = -1;
	int			eye = LEFT_EYE;
	int			result[EYE_NUM];
	Bool		que_empty;

	// iden or enroll, check if has result from algorithm
	que_empty = QUE_empty(&result_queue);
	if (que_empty==TRUE)	// 尚未有结果
	{
		nret = -1;
	}
	else
	{
		procimg_reg->result_msg = QUE_get(&result_queue);
		//dbg_output("get result l=%d, r=%d\n", procimg_reg->result_msg->result_left,
		//			procimg_reg->result_msg->result_right);

		// modified at 20081202
		// 要根据对算法任务的处理结果决定是否不再需要给算法发请求
		// 已从算法任务得到结果，算法处于idle状态
		dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_IDLE;

		result[LEFT_EYE-1]  = procimg_reg->result_msg->result_left;
		result[RIGHT_EYE-1] = procimg_reg->result_msg->result_right;
		// 记录使用的_tag
		procimg_reg->feature_tag = procimg_reg->result_msg->feature_tag;

		if (procimg_reg->result_msg->process_flag==WORKTYPE_IDEN)
		{
			// record iden result
			for (eye=LEFT_EYE; eye<=RIGHT_EYE; eye++)
			{
				if (result[eye-1]>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
				{
					dsp_used_reg.result_reg.result[eye-1] = result[eye-1];
				}
				else if (result[eye-1]==TSK_ALGORITHM_RESULT_IDEN_FALSE)
				{
					dsp_used_reg.result_reg.count[eye-1]++;
					dsp_used_reg.result_reg.result[eye-1] = result[eye-1];
				}

				// if == TSK_ALGORITHM_RESULT_IDEN_INVALID:
				// do nothing
			}
			nret = 0;

		} // end of iden
		else if (procimg_reg->result_msg->process_flag==WORKTYPE_ENROLL)
		{
			if (tsk_used_reg->tsk_flag_reg.tsk_alg_status == TSK_ALGORITHM_IDLE_ACTIVE)
			{
				dbg_output("enroll has over\n");
				//return -1;
			}

			// record enroll result
			for (eye=LEFT_EYE; eye<=RIGHT_EYE; eye++)
			{
				if (result[eye-1]>=TSK_ALGORITHM_RESULT_ENROLL_SUCCESS)
				{
					// 因为是超注册方式，所以要恢复注册个数到要求的注册个数iden_count
					if (result[eye-1]>dsp_used_reg.policy_reg.iden_count)
						result[eye-1] = dsp_used_reg.policy_reg.iden_count;

					// 记录当前注册个数
					dsp_used_reg.result_reg.count[eye-1] = result[eye-1];
				}
				else if ((result[eye-1]==TSK_ALGORITHM_RESULT_ENROLL_NOMATCH)
							&&(dsp_used_reg.result_reg.count[eye-1]<(dsp_used_reg.policy_reg.iden_count-1)))
					dsp_used_reg.result_reg.count[eye-1] = 0;	// restart enroll

				dbg_output("eye=%d, result=%d\n", eye, result[eye-1]);

			}
			
			nret = 0;
		} // end of enroll
		else if (procimg_reg->result_msg->process_flag==WORKTYPE_IDEN_AFTER_ENROLL)
		{
			// record iden after enroll result
			if (result[LEFT_EYE-1]!=TSK_ALGORITHM_RESULT_IDEN_INVALID)
				dsp_used_reg.result_reg.result[LEFT_EYE-1] = result[LEFT_EYE-1];

			if (result[RIGHT_EYE-1]!=TSK_ALGORITHM_RESULT_IDEN_INVALID)
				dsp_used_reg.result_reg.result[RIGHT_EYE-1] = result[RIGHT_EYE-1];

			tsk_used_reg->alg_result_reg.left_result  = result[LEFT_EYE-1];
			tsk_used_reg->alg_result_reg.right_result = result[RIGHT_EYE-1];

			nret = 0;
		} // end of iden after enroll
		else if (procimg_reg->result_msg->process_flag==WORKTYPE_GRABIDEN_AFTER_ENROLL)
		{
			// 注册后采集识别的结果值记录在result_reg.result[]中
			for (eye=LEFT_EYE; eye<=RIGHT_EYE; eye++)
			{
				if (dsp_used_reg.result_reg.grab_iden_result[eye-1]<=0)
				{
					if (result[eye-1]>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
						dsp_used_reg.result_reg.grab_iden_result[eye-1] = 1;
					else if (result[eye-1]==TSK_ALGORITHM_RESULT_IDEN_FALSE)
						dsp_used_reg.result_reg.grab_iden_result[eye-1]--;
				}
			}

			nret = 0;
		} // end of grab iden after enroll
		else if (procimg_reg->result_msg->process_flag==WORKTYPE_CODE)
		{
			CACHE_flush(CACHE_L2ALL, 0, 0);
			nret = 0;
		}
		
		else if (procimg_reg->result_msg->process_flag==WORKTYPE_MATCH)
		{
			CACHE_flush(CACHE_L2ALL, 0, 0);
			nret = 0;
		}
	}

	return nret;
} // end of CheckResult

int ProcessImg (dsp_procimg_t* procimg_reg)
{
	int				nret;
	int             qua_worktype;
	int				img_quality = COLOR_BLUR;

	unsigned int 	left_feature_tag = 0;
	unsigned int 	right_feature_tag = 0;

	dsp_algorithm_iden_feature_t* lp_feature		 = NULL;

	if ((dsp_used_reg.status_reg.tsk_alg_status==TSK_ALGORITHM_STATUS_BEGIN)			// just begin
		|| ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_UPDATE)!=0)	// update now
		|| ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDLE)!=0))		// do nothing
	{
		return IRIS_SUCCESS;	// just wait
	}
	else if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_DOING)!=0)
	{
		if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_WAITING)!=0)
			&& (tsk_used_reg->tsk_flag_reg.tsk_img_resp==TSK_IMAGE_ACTIVE))
		{
			// alloc buffer
			if (procimg_reg->begin_quality==FALSE)
			{
				procimg_reg->begin_quality = TRUE;
				procimg_reg->img_msg->img_saved_score_l	= 0;
				procimg_reg->img_msg->img_saved_score_r = 0;

				procimg_reg->img_msg->img_saved_count_l	= 0;
				procimg_reg->img_msg->img_saved_count_r	= 0;

			} // end of begin_quality=FALSE

			// 即使质量判断没有通过，也计数，以固定送去识别的时间
			procimg_reg->img_grab_count++;

			// 计算图像质量
			// 计算本次质量判断过程中需要哪只眼睛的图像
			if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
			{
				qua_worktype = WORKTYPE_IDEN;
				procimg_reg->need_eye = FindRequiredEye(POLICY_IDENTIFY);
			}
			else if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
				||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
			{
				qua_worktype = WORKTYPE_ENROLL;
				procimg_reg->need_eye = FindRequiredEye(POLICY_ENROLL);
			}
			else if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_G_IDEN)!=0)
			{
				qua_worktype = WORKTYPE_IDEN;
				procimg_reg->need_eye = FindGrabIdenRequiredEye();
			}

			if (procimg_reg->need_eye!=TSK_ALGORITHM_FLAG_NOEYE)
			{
				// 当有需要的眼睛时，才进行下面的步骤
				// 1.判断当前图像的图像质量
				SelectCurImages(procimg_reg, qua_worktype);

				NeedToIdenTestImage(procimg_reg);

				// 2.如果已经判断到一定数量的图像，则考虑送到算法任务
				if (procimg_reg->img_grab_count>=TSK_IMG_MAXCOUNT)
				{
					// try to send image to TSK_algorithm
					// use QUE
					if (((procimg_reg->img_msg->img_saved_score_l+procimg_reg->img_msg->img_saved_score_r)>0)
						&&((procimg_reg->img_msg->img_saved_count_l>=CLEAR_IMG_COUNT)
						||(procimg_reg->img_msg->img_saved_count_r>=CLEAR_IMG_COUNT)))
					{
						// image
						procimg_reg->img_msg->img_ptr_l 		= img_ptr_l;
						procimg_reg->img_msg->img_ptr_r 		= img_ptr_r;
						procimg_reg->img_msg->eye_flag  		= procimg_reg->need_eye;

						// process flag
						procimg_reg->img_msg->process_flag 		= qua_worktype;
						if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_G_IDEN)!=0)
						{
							procimg_reg->img_msg->process_flag 	= WORKTYPE_GRABIDEN_AFTER_ENROLL;
						}

						img_quality = COLOR_CLEAR;

						// added at 20080415
						// ALG IDLE状态下，才可以向算法任务发消息
						// modified at 20081127
						if (dsp_used_reg.status_reg.tsk_alg_inuse == TSK_ALGTSK_STATUS_IDLE)
						{
							dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_ALGINUSE;

							// 设置_tag
							// 识别结果的tag以此为准
							{
								lp_feature = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_LEFT_STRUCT_ADDR);
								left_feature_tag  = lp_feature->feature_tag;

								lp_feature = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_RIGHT_STRUCT_ADDR);
								right_feature_tag = lp_feature->feature_tag;

								procimg_reg->img_msg->feature_tag = (left_feature_tag|right_feature_tag);
							}

							// dbg_output("put image --");
							QUE_put(&img_queue, procimg_reg->img_msg);

							// ??
							dsp_used_reg.status_reg.tsk_alg_status &= ~TSK_ALGORITHM_STATUS_WAITING;
							procimg_reg->begin_quality  = FALSE;

						} // end of alg in idle

					} // end of has clear image 
					else
					{
						// 一段时间内，未达到规定数量的清晰图像个数
						if (procimg_reg->need_eye==0)
							img_quality = dsp_used_reg.last_img_quality;
						else
							img_quality = COLOR_BLUR;
					} // end of not enough clear image

					// 是否修改提示框的颜色
					if (img_quality!=dsp_used_reg.last_img_quality)
					{
						dsp_used_reg.last_img_quality = img_quality;
						disp_set_cb(CB_H_THICK, CB_V_THICK, CB_TOP, CB_BOTTOM, CB_LEFT, CB_RIGHT, dsp_used_reg.last_img_quality);
					}

					// 恢复新一轮的计数，重新开始测试当前采集图像质量
					procimg_reg->img_grab_count = 0;
					procimg_reg->begin_quality  = FALSE;

				} // end of grab count == MAXCOUNT

			} // end of select images
		} // end of process image

		// added at 20101023
		// for algorithm-v2 test
		else if (dsp_used_reg.status_reg.tsk_alg_status==TSK_ALGORITHM_STATUS_CODE)
		{
			StartCode(procimg_reg);
		}
		else if (dsp_used_reg.status_reg.tsk_alg_status==TSK_ALGORITHM_STATUS_MATCH)
		{
			StartMatch(procimg_reg);
		}


		nret = CheckResult(procimg_reg);

		if (nret==0)
		{
			if (procimg_reg->result_msg->process_flag==WORKTYPE_IDEN)
			{
				ProcessIdenResult (procimg_reg);

				// 标志本次识别测试图像已识别结束
				tsk_used_reg->dsp_testimg_reg.left_eye.tag_dsp  = dsp_used_reg.status_reg.tsk_testimg_tag_left;
				tsk_used_reg->dsp_testimg_reg.right_eye.tag_dsp = dsp_used_reg.status_reg.tsk_testimg_tag_right;
			}
			else if (procimg_reg->result_msg->process_flag==WORKTYPE_ENROLL)
				ProcessEnrollResult (procimg_reg);
			else if (procimg_reg->result_msg->process_flag==WORKTYPE_IDEN_AFTER_ENROLL)
				ProcessEnrollIdenResult (procimg_reg);
			else if (procimg_reg->result_msg->process_flag==WORKTYPE_GRABIDEN_AFTER_ENROLL)
				ProcessGrabIdenResult (procimg_reg);
			else if (procimg_reg->result_msg->process_flag==WORKTYPE_CODE)
			{
				dsp_used_reg.status_reg.tsk_alg_status 		  	= TSK_ALGORITHM_STATUS_IDLE;
				// 标志本次识别测试图像已识别结束
				tsk_used_reg->dsp_testimg_reg.left_eye.tag_dsp  = dsp_used_reg.status_reg.tsk_testimg_tag_left;
				tsk_used_reg->dsp_testimg_reg.right_eye.tag_dsp = dsp_used_reg.status_reg.tsk_testimg_tag_right;
				tsk_used_reg->alg_result_reg.result_type =RESULT_TYPE_CODE;
			}
			else if (procimg_reg->result_msg->process_flag==WORKTYPE_MATCH)
			{
				dsp_used_reg.status_reg.tsk_alg_status 		  	= TSK_ALGORITHM_STATUS_IDLE;
				// 标志本次识别测试图像已识别结束
				tsk_used_reg->dsp_testimg_reg.left_eye.tag_dsp  = dsp_used_reg.status_reg.tsk_testimg_tag_left;
				tsk_used_reg->dsp_testimg_reg.right_eye.tag_dsp = dsp_used_reg.status_reg.tsk_testimg_tag_right;
				tsk_used_reg->alg_result_reg.result_type =RESULT_TYPE_MATCH;

			}

			if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_DOING)!=0)
			{
				//  处理结束后，恢复为需要图像的方式
				dsp_used_reg.status_reg.tsk_alg_status |= TSK_ALGORITHM_STATUS_WAITING;	
			}
		}
		else
		{
			int cur_time;

			cur_time = TSK_time() - dsp_used_reg.status_reg.proc_start_time;

			if ((procimg_reg->result_msg->process_flag==WORKTYPE_ENROLL)
				&&(dsp_used_reg.status_reg.proc_timeout != IR_DURATION_TIMEOUT)
				&&(cur_time>IR_DURATION_TIME))
			{
				dsp_used_reg.status_reg.proc_timeout = IR_DURATION_TIMEOUT;
				ProcessEnrollResult (procimg_reg);
			}
		}

		// 仍在注册或识别中，没有注册结果
		// 尝试根据图像质量判断，提醒使用者
		if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_DOING)!=0)
		{
			if (dsp_used_reg.quality_count>=15)
				SetSoundValue();
		}
		else	// 已经有识别或注册结果，不必要其他发声
		{
			dsp_used_reg.sound_reg.last_sound_time 	= TSK_time();
		}

	} // end of in iden or enroll

	return IRIS_SUCCESS;
}

int StartIdentify()
{
	// open the led
	// open the ccd
	ClearALLResult();

	// 设置缺省识别策略
	dsp_used_reg.policy_reg.iden_count     = COMMON_IDENCOUNT;
	dsp_used_reg.policy_reg.policy_control = POLICY_EITHER_ACTIVE;  // POLICY_ALL_ACTIVE; //

	// 识别结果记录存储器
	memset(dsp_used_reg.result_reg, 0, sizeof(dsp_used_reg.result_reg));
	dsp_used_reg.result_reg.result[LEFT_EYE-1] = -2;
	dsp_used_reg.result_reg.result[RIGHT_EYE-1] = -2;

	// 记录开始识别时间
	dsp_used_reg.status_reg.proc_start_time= TSK_time();
	dsp_used_reg.status_reg.proc_timeout   = ~IR_DURATION_TIMEOUT;

	dsp_used_reg.status_reg.tsk_alg_status 	 |= TSK_ALGORITHM_STATUS_WAITING;

	return IRIS_SUCCESS;
}

int StopIdentify()
{
	// close the led
	// close the ccd
	dsp_used_reg.status_reg.tsk_alg_status &= ~TSK_ALGORITHM_STATUS_WAITING;

	tsk_used_reg->tsk_flag_reg.tsk_alg_status	= TSK_ALGORITHM_IDLE_ACTIVE;
	//dsp_used_reg.status_reg.tsk_alg_status 		= TSK_ALGORITHM_STATUS_IDLE;

	return IRIS_SUCCESS;
}

int ClearALLResult()
{
	// 把所有结果清空，表示无结果
	tsk_used_reg->alg_result_reg.result_type	= TSK_ALGORITHM_RESULT_TYPE_NULL;
	tsk_used_reg->alg_result_reg.left_result	= TSK_ALGORITHM_RESULT_IDEN_INVALID;
	tsk_used_reg->alg_result_reg.right_result	= TSK_ALGORITHM_RESULT_IDEN_INVALID;

	return IRIS_SUCCESS;
}

int StartGrabIden (dsp_procimg_t* procimg_reg)
{
	dsp_used_reg.status_reg.tsk_alg_saved_status	 	  = dsp_used_reg.status_reg.tsk_alg_status;
	dsp_used_reg.status_reg.tsk_alg_status			  	  = TSK_ALGORITHM_STATUS_G_IDEN;
	dsp_used_reg.status_reg.tsk_alg_status 				 |= TSK_ALGORITHM_STATUS_WAITING;

	tsk_used_reg->alg_result_reg.result_type     		  = TSK_ALGORITHM_RESULT_TYPE_NULL;

	return IRIS_SUCCESS;
}

int StartEnroll()
{

	ClearALLResult();

	// 设置缺省注册策略
	dsp_used_reg.policy_reg.iden_count     = MAX_ENROLLCOUNT;	// 注册中，为需要的注册次数
	dsp_used_reg.policy_reg.policy_control = POLICY_ALL_ACTIVE;

	// 注册结果记录存储器
	memset(dsp_used_reg.result_reg, 0, sizeof(dsp_used_reg.result_reg));

	dsp_used_reg.result_reg.result[LEFT_EYE-1]  = -1;
	dsp_used_reg.result_reg.result[RIGHT_EYE-1] = -1;

	// 记录开始注册时间
	dsp_used_reg.status_reg.proc_start_time= TSK_time();
	dsp_used_reg.status_reg.proc_timeout   = ~IR_DURATION_TIMEOUT;

	if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_ENROLL_FLAG)
		dsp_used_reg.status_reg.tsk_alg_status			  = TSK_ALGORITHM_STATUS_ENROLL;
	else
		dsp_used_reg.status_reg.tsk_alg_status			  = TSK_ALGORITHM_STATUS_I_ENROLL;

	dsp_used_reg.status_reg.tsk_alg_status |= TSK_ALGORITHM_STATUS_WAITING;

	return IRIS_SUCCESS;
}

int StopEnroll()
{
	dsp_used_reg.status_reg.tsk_alg_status &= ~TSK_ALGORITHM_STATUS_WAITING;

	tsk_used_reg->tsk_flag_reg.tsk_alg_status	= TSK_ALGORITHM_IDLE_ACTIVE;
//	dsp_used_reg.status_reg.tsk_alg_status 		= TSK_ALGORITHM_STATUS_IDLE;

	return IRIS_SUCCESS;
}

void GetPolicy (int policy_type)
{
	if (tsk_used_reg->tsk_policy_reg.policy_flag==policy_type)
	{
		dsp_used_reg.policy_reg.policy_control = tsk_used_reg->tsk_policy_reg.policy_control;
		dsp_used_reg.policy_reg.iden_count	   = tsk_used_reg->tsk_policy_reg.try_count;
		dsp_used_reg.policy_reg.iden_mode	   = tsk_used_reg->tsk_policy_reg.iden_mode;
		dsp_used_reg.policy_reg.data_type	   = tsk_used_reg->tsk_policy_reg.data_type;

		// 调⒉岽问笔≈�
		if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
			||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
		{
			if ((dsp_used_reg.policy_reg.iden_count<=0)
				||(dsp_used_reg.policy_reg.iden_count>MAXCOPY_ENROLLCOUNT))
				dsp_used_reg.policy_reg.iden_count = MAX_ENROLLCOUNT;
		}
		else if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
		{
			if (dsp_used_reg.policy_reg.iden_count<=0)
				dsp_used_reg.policy_reg.iden_count = COMMON_IDENCOUNT;
		}

	}

}

void addr_align (Uint32 *base_addr, Uint32 off)
{
	Uint32 val;
	val = *base_addr;

	val += off;
	while( ( val & 3 ) != 0 ) 
		val++;

	*base_addr = val;

	return;
}

// 

// 发去识别方式，tsk_algorithm自动从注册图像中识别，并返回结果
void IdenAfterEnroll (dsp_procimg_t* procimg_reg)
{
	unsigned int 	left_feature_tag = 0;
	unsigned int 	right_feature_tag = 0;
	int				left_count, right_count;
	int				need_count;

	dsp_algorithm_iden_feature_t* lp_feature		 = NULL;

		if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0)
		{

			left_count  = dsp_used_reg.result_reg.count[LEFT_EYE-1];
			right_count = dsp_used_reg.result_reg.count[RIGHT_EYE-1];
			need_count  = dsp_used_reg.policy_reg.iden_count;
			if (left_count>=need_count)	
				left_count = need_count;
			else
				left_count = 0;

			if (right_count>=need_count)	
				right_count = need_count;
			else
				right_count = 0;

			if ((left_count+right_count)>0)
			{
				procimg_reg->img_msg->eye_flag     = 0;
				procimg_reg->img_msg->process_flag = WORKTYPE_IDEN_AFTER_ENROLL;

				// added at 20080415
				if (dsp_used_reg.status_reg.tsk_alg_inuse==TSK_ALGTSK_STATUS_IDLE)
				{
					dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_ALGINUSE;

					// 设置_tag
					// 识别结果的tag以此为准
					{
					lp_feature = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_LEFT_STRUCT_ADDR);
					left_feature_tag  = lp_feature->feature_tag;

					lp_feature = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_RIGHT_STRUCT_ADDR);
					right_feature_tag = lp_feature->feature_tag;

					procimg_reg->img_msg->feature_tag = (left_feature_tag|right_feature_tag);;

					procimg_reg->img_msg->img_saved_count_l = left_count;	// 用于通知左眼注册个数
					procimg_reg->img_msg->img_saved_count_r = right_count;	// 通知右眼注册个数
					}

					QUE_put(&img_queue, procimg_reg->img_msg);

					dsp_used_reg.status_reg.tsk_alg_status &= ~TSK_ALGORITHM_STATUS_WAITING;						
					procimg_reg->begin_quality  = FALSE;

				}

				// wait for tsk_algorithm send the iden result
				return;
			}

		}

	return;
}

// 识别或注册，需要哪只眼睛
// 只根据识别或注册策略来判断
// 判断需要处理哪只眼睛(1 or 2)或两只眼睛(3)均需要
int FindRequiredEye (int policy_type)
{
	int nret = TSK_ALGORITHM_FLAG_NOEYE;

	//1.查询是否已有注册结果
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// 如已有结果则不需要做任何处理，等待结果取走即可
		return nret;
	}

	//2.查询识别或注册策略
	GetPolicy(policy_type);

	if (dsp_used_reg.policy_reg.policy_control==POLICY_LEFT_ACTIVE)
	{
		nret = TSK_ALGORITHM_FLAG_LEFTEYE;
	} // end of 左眼有效
	else if (dsp_used_reg.policy_reg.policy_control==POLICY_RIGHT_ACTIVE)
	{
		nret = TSK_ALGORITHM_FLAG_RIGHTEYE;
	} // end of 右眼有效
	else if ((dsp_used_reg.policy_reg.policy_control==POLICY_ALL_ACTIVE)
		||(dsp_used_reg.policy_reg.policy_control==POLICY_EITHER_ACTIVE))
	{
		if (dsp_used_reg.result_reg.result[LEFT_EYE-1]<TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
			nret += TSK_ALGORITHM_FLAG_LEFTEYE;
		if (dsp_used_reg.result_reg.result[RIGHT_EYE-1]<TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
			nret += TSK_ALGORITHM_FLAG_RIGHTEYE;
	}// end of 双眼或任意眼有效

	//4.如已经到识别次数限制蛴θ衔侗鹗О埽硗獯恚浚?

	return nret;
} // end of FindIdenRequiredEye

// 注册后采集识别，需要哪只眼睛
// 只要这只眼睛注册通过了，则需要采集识别这只眼睛
int FindGrabIdenRequiredEye ()
{
	int nret = TSK_ALGORITHM_FLAG_NOEYE;

	//2.查询识别或注册策略
	GetPolicy(POLICY_ENROLL);

	// 左眼已经注册成功
	if (dsp_used_reg.result_reg.count[LEFT_EYE-1]>=dsp_used_reg.policy_reg.iden_count)
	{
		nret += TSK_ALGORITHM_FLAG_LEFTEYE;
	}

	// 右眼已经注册成功
	if (dsp_used_reg.result_reg.count[RIGHT_EYE-1]>=dsp_used_reg.policy_reg.iden_count)
	{
		nret += TSK_ALGORITHM_FLAG_RIGHTEYE;
	}

	return nret;
}

// 根据当前已有结果，判断操作是否已结束，成功还是失败
void ProcessIdenResult (dsp_procimg_t* procimg_reg)
{
	Bool ifOver = FALSE;
	int  left, right;

	//1.查询是否已有结果
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// 如已有结果则不需要做任何处理，等待结果取走即可
		return ;
	}

	if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
	{
		// 当前是识别状态
		//2.查询识别策略
		GetPolicy(POLICY_IDENTIFY);

		left  = dsp_used_reg.result_reg.result[LEFT_EYE-1];
		right = dsp_used_reg.result_reg.result[RIGHT_EYE-1];

		//3.查询已经识别次数

		// 根据策略不同，先判断识别是否已通过
		// 如未通过，判断当前应处理哪种图像
		if (((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_LEFT_ACTIVE)
			&&(left>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
		{
			// 左眼有效 识别成功
			ifOver = TRUE;
		} // end of 左眼有效
		else if (((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_RIGHT_ACTIVE)
			&&(right>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
		{
			// 识别成功
			ifOver = TRUE;
		} // end of 右眼有效
		else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_ALL_ACTIVE)
		{
			if ((left>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
				&&(right>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
			{
				// 识别成功
				ifOver = TRUE;
			}
		} // end of 双目同时有效
		else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_EITHER_ACTIVE)
		{
			if ((left>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
				||(right>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
			{
				// 识别成功
				ifOver = TRUE;
			}
		} // end of 任意一只眼睛有效

		// 已经到识别次数限制，应给出识别失败的结果
		if (((dsp_used_reg.result_reg.count[LEFT_EYE-1]+dsp_used_reg.result_reg.count[RIGHT_EYE-1])
			>=dsp_used_reg.policy_reg.iden_count)
			&&(ifOver == FALSE))
		{
			ifOver = TRUE;
		}

		if (ifOver==TRUE)
		{
			StopIdentify();
			SetIdenResult(procimg_reg->feature_tag);
		}

	} // end of in iden

} // end of process iden result

// 根据当前已有结果，判断操作是否已结束，成功还是失败
void ProcessEnrollResult (dsp_procimg_t* procimg_reg)
{
	Bool ifOver = FALSE;
	int  cur_time;
	int  left_count = 0, right_count = 0;
	int  enroll_count;	// 注册需要的图像数

	//1.查询是否已有结果
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// 如已有结果则不需要做任何处理，等待结果取走即可
		return ;
	}

	// 当前是注册状态
	// 2.查询注册策略
	GetPolicy(POLICY_ENROLL);

	enroll_count = dsp_used_reg.policy_reg.iden_count;	// 注册需要的图像数

	if (dsp_used_reg.status_reg.proc_timeout!=IR_DURATION_TIMEOUT)
	{
		cur_time = TSK_time() - dsp_used_reg.status_reg.proc_start_time;
		if (cur_time<IR_DURATION_TIME)
			enroll_count++;
		else
		{
			dsp_used_reg.status_reg.proc_timeout=IR_DURATION_TIMEOUT;
		}
	}

	left_count  = dsp_used_reg.result_reg.count[LEFT_EYE-1];
	right_count = dsp_used_reg.result_reg.count[RIGHT_EYE-1];
	dbg_output("proc left %d, right %d\n", left_count, right_count);

	if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
		||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
	{

		// 根据策略不同，先判断注册是否已完成
		// 如未通过，判断当前该注册哪只眼睛
		if (((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_LEFT_ACTIVE)
			&& (left_count>=enroll_count))

		{
			// 注册成功
			ifOver = TRUE;
		} // end of 左眼有效
		else if (((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_RIGHT_ACTIVE)
			&& (right_count>=enroll_count))
		{
			// 注册成功
			ifOver = TRUE;
		} // end of 右眼有效
		else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_ALL_ACTIVE)
		{
			if ((left_count>=enroll_count)
				&& (right_count>=enroll_count))
			{
				// 注册成功
				ifOver = TRUE;
				dbg_output("Enroll over\n");
			}
		} // end of 双目同时有效
		else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_EITHER_ACTIVE)
		{
			if ((left_count>=enroll_count)
				|| (right_count>=enroll_count))
			{		
				// 注册成功
				ifOver = TRUE;
			}
		} // end of 仅一只眼睛有效

		if (ifOver==TRUE)
		{
			StopEnroll();

			// 在双眼都注册成功的情况下，才测试注册结果
			// 进入GRABIDEN状态，测试注册结果
			// added at 20081127
			if (left_count==right_count)
				StartGrabIden(procimg_reg);
			else
				SetEnrollResult(procimg_reg);
		}
	} // end of in enroll process

} // end of process enroll result

// added at 20081127
// 注册结束后，实际采集图像，与当前注册特征进行比对
// 哪只劬斜榷裕【鲇谧⒉峤崾螅玫搅四闹谎劬Φ奶卣�
// 只要有注册成功的眼睛，则必须所有的眼睛都与实际采集的图像比对成功
// 如果有任意一只眼睛没有成功(每只眼睛可以有两次机会？)，
// 则整个注册过程全部重新来过
void ProcessGrabIdenResult (dsp_procimg_t* procimg_reg)
{
	Bool ifSuccess = FALSE;

	//1.查询是否已有结果
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// 如已有结果则不需要做任何处理，等待结果取走即可
		return ;
	}

	GetPolicy(POLICY_ENROLL);

	if ((dsp_used_reg.result_reg.count[LEFT_EYE-1]+dsp_used_reg.result_reg.count[RIGHT_EYE-1])
		!=dsp_used_reg.policy_reg.iden_count*2)
	{
		// 注册结果有误，重新注册
		dsp_used_reg.status_reg.tsk_alg_status = dsp_used_reg.status_reg.tsk_alg_saved_status;
		StartEnroll();	// restart enroll
	}

	if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_G_IDEN)!=0)
	{

		// 只有在左、右眼都注册成功的情况下才进入GRABIDEN
		// 所以只考虑左、右眼注册后都需要识别成功
		if ((dsp_used_reg.result_reg.grab_iden_result[LEFT_EYE-1]>0)
			&&(dsp_used_reg.result_reg.grab_iden_result[RIGHT_EYE-1]>0))
		{
			ifSuccess = TRUE;
			dsp_used_reg.status_reg.tsk_alg_status = dsp_used_reg.status_reg.tsk_alg_saved_status;
			SetEnrollResult(procimg_reg);
		}

		// 已经到识别次数限制，本次注册失败，重新注册
		if (((dsp_used_reg.result_reg.grab_iden_result[LEFT_EYE-1]<=-2)
				||(dsp_used_reg.result_reg.grab_iden_result[RIGHT_EYE-1]<=-2))
			&&(ifSuccess == FALSE))
		{
			dsp_used_reg.status_reg.tsk_alg_status = dsp_used_reg.status_reg.tsk_alg_saved_status;
			StartEnroll();	// restart enroll
		}



	} // end of in iden

} // end of process grab iden result

// 判断当前采集图像质量
void SelectCurImages (dsp_procimg_t* procimg_reg, int qua_worktype)
{
	unsigned int	saved_score;
	int				nret;

	if (dsp_used_reg.status_reg.tsk_alg_inuse != TSK_ALGTSK_STATUS_IDLE)
		return;

	// 左右眼分别计算图像质量
	// 左眼
	if (((procimg_reg->need_eye&TSK_ALGORITHM_FLAG_LEFTEYE)!=0)&&(img_ptr_l!=NULL))
	{
		// 上次质量判断得到的图像质量
		saved_score = procimg_reg->img_msg->img_saved_score_l;

#if _EMULATOR

		nret = SelectImage((unsigned char*)tmp_buf_l,
			qua_worktype,
			&saved_score,
			img_ptr_l);
#else

		nret = SelectImage(irisimage,
			qua_worktype,
			&saved_score,
			img_ptr_l);
#endif

		if (nret==0)
		{
			procimg_reg->img_msg->img_saved_score_l = saved_score;
			procimg_reg->img_msg->img_saved_count_l++;
		}

	} // end of process left eye image

	// right eye
	if (((procimg_reg->need_eye&TSK_ALGORITHM_FLAG_RIGHTEYE)!=0)&&(img_ptr_r!=NULL))
	{
		saved_score = procimg_reg->img_msg->img_saved_score_r;

#if _EMULATOR
		nret = SelectImage((unsigned char*)tmp_buf_r,
			qua_worktype,
			&saved_score,
			img_ptr_r);

#else
		nret = SelectImage(irisimage,
			qua_worktype,
			&saved_score,
			img_ptr_r);
#endif
		if (nret==0)
		{
			procimg_reg->img_msg->img_saved_score_r = saved_score;
			procimg_reg->img_msg->img_saved_count_r++;
		}

	} // end of process right eye image

} //end of SelectCurImages

// 对输入的测试图像进行识别测试
void NeedToIdenTestImage(dsp_procimg_t* procimg_reg)
{
	
	// send left test image to tsk alg
	if (dsp_used_reg.status_reg.tsk_testimg_tag_left!=tsk_used_reg->dsp_testimg_reg.left_eye.tag_arm)
	{
		procimg_reg->img_msg->img_ptr_l 			 = tsk_used_reg->dsp_testimg_reg.left_eye.img_data.data_ptr;
		dsp_used_reg.status_reg.tsk_testimg_tag_left = tsk_used_reg->dsp_testimg_reg.left_eye.tag_arm;

		// 确保程序认为已经有足够的清晰图像用于识别
		procimg_reg->img_msg->img_saved_score_l		 = 60;
		procimg_reg->img_msg->img_saved_count_l		 = CLEAR_IMG_COUNT+1;

		procimg_reg->img_grab_count=TSK_IMG_MAXCOUNT;
	}

	// send right test image to tsk alg
	if (dsp_used_reg.status_reg.tsk_testimg_tag_right!=tsk_used_reg->dsp_testimg_reg.right_eye.tag_arm)
	{
		procimg_reg->img_msg->img_ptr_r 			  = tsk_used_reg->dsp_testimg_reg.right_eye.img_data.data_ptr;
		dsp_used_reg.status_reg.tsk_testimg_tag_right = tsk_used_reg->dsp_testimg_reg.right_eye.tag_arm;

		// 确保程序认为已经有足够的清晰图像用于识别
		procimg_reg->img_msg->img_saved_score_r		 = 60;
		procimg_reg->img_msg->img_saved_count_r		 = CLEAR_IMG_COUNT+1;

		procimg_reg->img_grab_count=TSK_IMG_MAXCOUNT;
	}
}

