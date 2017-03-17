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

extern far QUE_Obj	img_queue;		// ����ͼ����Ϣ, tskImage -> tskAlgorithm
extern far QUE_Obj	result_queue;	// ���ݽ����Ϣ, tskAlgorithm -> tskImage

#if !_EMULATOR
extern unsigned char irisimage[];
#endif

// ȷ��ע�ᡢʶ��Ȳ�������Ȥ������ֻ�۾���ͼ��
int  FindRequiredEye (int policy_type);	// ע���ʶ����ô˺���
int  FindGrabIdenRequiredEye ();		// ע���ɼ�ʶ��ʹ�ô˺���

// �жϵ�ǰ�ɼ�ͼ������
void SelectCurImages (dsp_procimg_t* procimg_reg, int qua_worktype);

// ������Ĳ���ͼ�����ʶ�����
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
// ��dsp_used_reg�ṹ������һ���洢��
// dsp_result_t������ע���ʶ��Ľ������������Ϣ
int CheckResult (dsp_procimg_t* procimg_reg)
{
	int			nret = -1;
	int			eye = LEFT_EYE;
	int			result[EYE_NUM];
	Bool		que_empty;

	// iden or enroll, check if has result from algorithm
	que_empty = QUE_empty(&result_queue);
	if (que_empty==TRUE)	// ��δ�н��
	{
		nret = -1;
	}
	else
	{
		procimg_reg->result_msg = QUE_get(&result_queue);
		//dbg_output("get result l=%d, r=%d\n", procimg_reg->result_msg->result_left,
		//			procimg_reg->result_msg->result_right);

		// modified at 20081202
		// Ҫ���ݶ��㷨����Ĵ����������Ƿ�����Ҫ���㷨������
		// �Ѵ��㷨����õ�������㷨����idle״̬
		dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_IDLE;

		result[LEFT_EYE-1]  = procimg_reg->result_msg->result_left;
		result[RIGHT_EYE-1] = procimg_reg->result_msg->result_right;
		// ��¼ʹ�õ�_tag
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
					// ��Ϊ�ǳ�ע�᷽ʽ������Ҫ�ָ�ע�������Ҫ���ע�����iden_count
					if (result[eye-1]>dsp_used_reg.policy_reg.iden_count)
						result[eye-1] = dsp_used_reg.policy_reg.iden_count;

					// ��¼��ǰע�����
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
			// ע���ɼ�ʶ��Ľ��ֵ��¼��result_reg.result[]��
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

			// ��ʹ�����ж�û��ͨ����Ҳ�������Թ̶���ȥʶ���ʱ��
			procimg_reg->img_grab_count++;

			// ����ͼ������
			// ���㱾�������жϹ�������Ҫ��ֻ�۾���ͼ��
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
				// ������Ҫ���۾�ʱ���Ž�������Ĳ���
				// 1.�жϵ�ǰͼ���ͼ������
				SelectCurImages(procimg_reg, qua_worktype);

				NeedToIdenTestImage(procimg_reg);

				// 2.����Ѿ��жϵ�һ��������ͼ�������͵��㷨����
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
						// ALG IDLE״̬�£��ſ������㷨������Ϣ
						// modified at 20081127
						if (dsp_used_reg.status_reg.tsk_alg_inuse == TSK_ALGTSK_STATUS_IDLE)
						{
							dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_ALGINUSE;

							// ����_tag
							// ʶ������tag�Դ�Ϊ׼
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
						// һ��ʱ���ڣ�δ�ﵽ�涨����������ͼ�����
						if (procimg_reg->need_eye==0)
							img_quality = dsp_used_reg.last_img_quality;
						else
							img_quality = COLOR_BLUR;
					} // end of not enough clear image

					// �Ƿ��޸���ʾ�����ɫ
					if (img_quality!=dsp_used_reg.last_img_quality)
					{
						dsp_used_reg.last_img_quality = img_quality;
						disp_set_cb(CB_H_THICK, CB_V_THICK, CB_TOP, CB_BOTTOM, CB_LEFT, CB_RIGHT, dsp_used_reg.last_img_quality);
					}

					// �ָ���һ�ֵļ��������¿�ʼ���Ե�ǰ�ɼ�ͼ������
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

				// ��־����ʶ�����ͼ����ʶ�����
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
				// ��־����ʶ�����ͼ����ʶ�����
				tsk_used_reg->dsp_testimg_reg.left_eye.tag_dsp  = dsp_used_reg.status_reg.tsk_testimg_tag_left;
				tsk_used_reg->dsp_testimg_reg.right_eye.tag_dsp = dsp_used_reg.status_reg.tsk_testimg_tag_right;
				tsk_used_reg->alg_result_reg.result_type =RESULT_TYPE_CODE;
			}
			else if (procimg_reg->result_msg->process_flag==WORKTYPE_MATCH)
			{
				dsp_used_reg.status_reg.tsk_alg_status 		  	= TSK_ALGORITHM_STATUS_IDLE;
				// ��־����ʶ�����ͼ����ʶ�����
				tsk_used_reg->dsp_testimg_reg.left_eye.tag_dsp  = dsp_used_reg.status_reg.tsk_testimg_tag_left;
				tsk_used_reg->dsp_testimg_reg.right_eye.tag_dsp = dsp_used_reg.status_reg.tsk_testimg_tag_right;
				tsk_used_reg->alg_result_reg.result_type =RESULT_TYPE_MATCH;

			}

			if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_DOING)!=0)
			{
				//  ��������󣬻ָ�Ϊ��Ҫͼ��ķ�ʽ
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

		// ����ע���ʶ���У�û��ע����
		// ���Ը���ͼ�������жϣ�����ʹ����
		if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_DOING)!=0)
		{
			if (dsp_used_reg.quality_count>=15)
				SetSoundValue();
		}
		else	// �Ѿ���ʶ���ע����������Ҫ��������
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

	// ����ȱʡʶ�����
	dsp_used_reg.policy_reg.iden_count     = COMMON_IDENCOUNT;
	dsp_used_reg.policy_reg.policy_control = POLICY_EITHER_ACTIVE;  // POLICY_ALL_ACTIVE; //

	// ʶ������¼�洢��
	memset(dsp_used_reg.result_reg, 0, sizeof(dsp_used_reg.result_reg));
	dsp_used_reg.result_reg.result[LEFT_EYE-1] = -2;
	dsp_used_reg.result_reg.result[RIGHT_EYE-1] = -2;

	// ��¼��ʼʶ��ʱ��
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
	// �����н����գ���ʾ�޽��
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

	// ����ȱʡע�����
	dsp_used_reg.policy_reg.iden_count     = MAX_ENROLLCOUNT;	// ע���У�Ϊ��Ҫ��ע�����
	dsp_used_reg.policy_reg.policy_control = POLICY_ALL_ACTIVE;

	// ע������¼�洢��
	memset(dsp_used_reg.result_reg, 0, sizeof(dsp_used_reg.result_reg));

	dsp_used_reg.result_reg.result[LEFT_EYE-1]  = -1;
	dsp_used_reg.result_reg.result[RIGHT_EYE-1] = -1;

	// ��¼��ʼע��ʱ��
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

		// ���ע�����Ϊȱʡֵ
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

// ��ȥʶ��ʽ��tsk_algorithm�Զ���ע��ͼ����ʶ�𣬲����ؽ��
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

					// ����_tag
					// ʶ������tag�Դ�Ϊ׼
					{
					lp_feature = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_LEFT_STRUCT_ADDR);
					left_feature_tag  = lp_feature->feature_tag;

					lp_feature = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_RIGHT_STRUCT_ADDR);
					right_feature_tag = lp_feature->feature_tag;

					procimg_reg->img_msg->feature_tag = (left_feature_tag|right_feature_tag);;

					procimg_reg->img_msg->img_saved_count_l = left_count;	// ����֪ͨ����ע�����
					procimg_reg->img_msg->img_saved_count_r = right_count;	// ֪ͨ����ע�����
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

// ʶ���ע�ᣬ��Ҫ��ֻ�۾�
// ֻ����ʶ���ע��������ж�
// �ж���Ҫ������ֻ�۾�(1 or 2)����ֻ�۾�(3)����Ҫ
int FindRequiredEye (int policy_type)
{
	int nret = TSK_ALGORITHM_FLAG_NOEYE;

	//1.��ѯ�Ƿ�����ע����
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// �����н������Ҫ���κδ����ȴ����ȡ�߼���
		return nret;
	}

	//2.��ѯʶ���ע�����
	GetPolicy(policy_type);

	if (dsp_used_reg.policy_reg.policy_control==POLICY_LEFT_ACTIVE)
	{
		nret = TSK_ALGORITHM_FLAG_LEFTEYE;
	} // end of ������Ч
	else if (dsp_used_reg.policy_reg.policy_control==POLICY_RIGHT_ACTIVE)
	{
		nret = TSK_ALGORITHM_FLAG_RIGHTEYE;
	} // end of ������Ч
	else if ((dsp_used_reg.policy_reg.policy_control==POLICY_ALL_ACTIVE)
		||(dsp_used_reg.policy_reg.policy_control==POLICY_EITHER_ACTIVE))
	{
		if (dsp_used_reg.result_reg.result[LEFT_EYE-1]<TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
			nret += TSK_ALGORITHM_FLAG_LEFTEYE;
		if (dsp_used_reg.result_reg.result[RIGHT_EYE-1]<TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
			nret += TSK_ALGORITHM_FLAG_RIGHTEYE;
	}// end of ˫�ۻ���������Ч

	//4.���Ѿ���ʶ��������Ƭ��Ӧ��Ϊʶ��ʧ�ܣ����⴦���?

	return nret;
} // end of FindIdenRequiredEye

// ע���ɼ�ʶ����Ҫ��ֻ�۾�
// ֻҪ��ֻ�۾�ע��ͨ���ˣ�����Ҫ�ɼ�ʶ����ֻ�۾�
int FindGrabIdenRequiredEye ()
{
	int nret = TSK_ALGORITHM_FLAG_NOEYE;

	//2.��ѯʶ���ע�����
	GetPolicy(POLICY_ENROLL);

	// �����Ѿ�ע��ɹ�
	if (dsp_used_reg.result_reg.count[LEFT_EYE-1]>=dsp_used_reg.policy_reg.iden_count)
	{
		nret += TSK_ALGORITHM_FLAG_LEFTEYE;
	}

	// �����Ѿ�ע��ɹ�
	if (dsp_used_reg.result_reg.count[RIGHT_EYE-1]>=dsp_used_reg.policy_reg.iden_count)
	{
		nret += TSK_ALGORITHM_FLAG_RIGHTEYE;
	}

	return nret;
}

// ���ݵ�ǰ���н�����жϲ����Ƿ��ѽ������ɹ�����ʧ��
void ProcessIdenResult (dsp_procimg_t* procimg_reg)
{
	Bool ifOver = FALSE;
	int  left, right;

	//1.��ѯ�Ƿ����н��
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// �����н������Ҫ���κδ����ȴ����ȡ�߼���
		return ;
	}

	if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
	{
		// ��ǰ��ʶ��״̬
		//2.��ѯʶ�����
		GetPolicy(POLICY_IDENTIFY);

		left  = dsp_used_reg.result_reg.result[LEFT_EYE-1];
		right = dsp_used_reg.result_reg.result[RIGHT_EYE-1];

		//3.��ѯ�Ѿ�ʶ�����

		// ���ݲ��Բ�ͬ�����ж�ʶ���Ƿ���ͨ��
		// ��δͨ�����жϵ�ǰӦ��������ͼ��
		if (((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_LEFT_ACTIVE)
			&&(left>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
		{
			// ������Ч ʶ��ɹ�
			ifOver = TRUE;
		} // end of ������Ч
		else if (((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_RIGHT_ACTIVE)
			&&(right>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
		{
			// ʶ��ɹ�
			ifOver = TRUE;
		} // end of ������Ч
		else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_ALL_ACTIVE)
		{
			if ((left>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
				&&(right>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
			{
				// ʶ��ɹ�
				ifOver = TRUE;
			}
		} // end of ˫Ŀͬʱ��Ч
		else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_EITHER_ACTIVE)
		{
			if ((left>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
				||(right>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
			{
				// ʶ��ɹ�
				ifOver = TRUE;
			}
		} // end of ����һֻ�۾���Ч

		// �Ѿ���ʶ��������ƣ�Ӧ����ʶ��ʧ�ܵĽ��
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

// ���ݵ�ǰ���н�����жϲ����Ƿ��ѽ������ɹ�����ʧ��
void ProcessEnrollResult (dsp_procimg_t* procimg_reg)
{
	Bool ifOver = FALSE;
	int  cur_time;
	int  left_count = 0, right_count = 0;
	int  enroll_count;	// ע����Ҫ��ͼ����

	//1.��ѯ�Ƿ����н��
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// �����н������Ҫ���κδ����ȴ����ȡ�߼���
		return ;
	}

	// ��ǰ��ע��״̬
	// 2.��ѯע�����
	GetPolicy(POLICY_ENROLL);

	enroll_count = dsp_used_reg.policy_reg.iden_count;	// ע����Ҫ��ͼ����

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

		// ���ݲ��Բ�ͬ�����ж�ע���Ƿ������
		// ��δͨ�����жϵ�ǰ��ע����ֻ�۾�
		if (((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_LEFT_ACTIVE)
			&& (left_count>=enroll_count))

		{
			// ע��ɹ�
			ifOver = TRUE;
		} // end of ������Ч
		else if (((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_RIGHT_ACTIVE)
			&& (right_count>=enroll_count))
		{
			// ע��ɹ�
			ifOver = TRUE;
		} // end of ������Ч
		else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_ALL_ACTIVE)
		{
			if ((left_count>=enroll_count)
				&& (right_count>=enroll_count))
			{
				// ע��ɹ�
				ifOver = TRUE;
				dbg_output("Enroll over\n");
			}
		} // end of ˫Ŀͬʱ��Ч
		else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_EITHER_ACTIVE)
		{
			if ((left_count>=enroll_count)
				|| (right_count>=enroll_count))
			{		
				// ע��ɹ�
				ifOver = TRUE;
			}
		} // end of ��һֻ�۾���Ч

		if (ifOver==TRUE)
		{
			StopEnroll();

			// ��˫�۶�ע��ɹ�������£��Ų���ע����
			// ����GRABIDEN״̬������ע����
			// added at 20081127
			if (left_count==right_count)
				StartGrabIden(procimg_reg);
			else
				SetEnrollResult(procimg_reg);
		}
	} // end of in enroll process

} // end of process enroll result

// added at 20081127
// ע�������ʵ�ʲɼ�ͼ���뵱ǰע���������бȶ�
// ��ֻ۾����бȶԣ�ȡ����ע������󣬵õ�����ֻ�۾�������
// ֻҪ��ע��ɹ����۾�����������е��۾�����ʵ�ʲɼ���ͼ��ȶԳɹ�
// ���������һֻ�۾�û�гɹ�(ÿֻ�۾����������λ��᣿)��
// ������ע�����ȫ����������
void ProcessGrabIdenResult (dsp_procimg_t* procimg_reg)
{
	Bool ifSuccess = FALSE;

	//1.��ѯ�Ƿ����н��
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// �����н������Ҫ���κδ����ȴ����ȡ�߼���
		return ;
	}

	GetPolicy(POLICY_ENROLL);

	if ((dsp_used_reg.result_reg.count[LEFT_EYE-1]+dsp_used_reg.result_reg.count[RIGHT_EYE-1])
		!=dsp_used_reg.policy_reg.iden_count*2)
	{
		// ע������������ע��
		dsp_used_reg.status_reg.tsk_alg_status = dsp_used_reg.status_reg.tsk_alg_saved_status;
		StartEnroll();	// restart enroll
	}

	if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_G_IDEN)!=0)
	{

		// ֻ���������۶�ע��ɹ�������²Ž���GRABIDEN
		// ����ֻ����������ע�����Ҫʶ��ɹ�
		if ((dsp_used_reg.result_reg.grab_iden_result[LEFT_EYE-1]>0)
			&&(dsp_used_reg.result_reg.grab_iden_result[RIGHT_EYE-1]>0))
		{
			ifSuccess = TRUE;
			dsp_used_reg.status_reg.tsk_alg_status = dsp_used_reg.status_reg.tsk_alg_saved_status;
			SetEnrollResult(procimg_reg);
		}

		// �Ѿ���ʶ��������ƣ�����ע��ʧ�ܣ�����ע��
		if (((dsp_used_reg.result_reg.grab_iden_result[LEFT_EYE-1]<=-2)
				||(dsp_used_reg.result_reg.grab_iden_result[RIGHT_EYE-1]<=-2))
			&&(ifSuccess == FALSE))
		{
			dsp_used_reg.status_reg.tsk_alg_status = dsp_used_reg.status_reg.tsk_alg_saved_status;
			StartEnroll();	// restart enroll
		}



	} // end of in iden

} // end of process grab iden result

// �жϵ�ǰ�ɼ�ͼ������
void SelectCurImages (dsp_procimg_t* procimg_reg, int qua_worktype)
{
	unsigned int	saved_score;
	int				nret;

	if (dsp_used_reg.status_reg.tsk_alg_inuse != TSK_ALGTSK_STATUS_IDLE)
		return;

	// �����۷ֱ����ͼ������
	// ����
	if (((procimg_reg->need_eye&TSK_ALGORITHM_FLAG_LEFTEYE)!=0)&&(img_ptr_l!=NULL))
	{
		// �ϴ������жϵõ���ͼ������
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

// ������Ĳ���ͼ�����ʶ�����
void NeedToIdenTestImage(dsp_procimg_t* procimg_reg)
{
	
	// send left test image to tsk alg
	if (dsp_used_reg.status_reg.tsk_testimg_tag_left!=tsk_used_reg->dsp_testimg_reg.left_eye.tag_arm)
	{
		procimg_reg->img_msg->img_ptr_l 			 = tsk_used_reg->dsp_testimg_reg.left_eye.img_data.data_ptr;
		dsp_used_reg.status_reg.tsk_testimg_tag_left = tsk_used_reg->dsp_testimg_reg.left_eye.tag_arm;

		// ȷ��������Ϊ�Ѿ����㹻������ͼ������ʶ��
		procimg_reg->img_msg->img_saved_score_l		 = 60;
		procimg_reg->img_msg->img_saved_count_l		 = CLEAR_IMG_COUNT+1;

		procimg_reg->img_grab_count=TSK_IMG_MAXCOUNT;
	}

	// send right test image to tsk alg
	if (dsp_used_reg.status_reg.tsk_testimg_tag_right!=tsk_used_reg->dsp_testimg_reg.right_eye.tag_arm)
	{
		procimg_reg->img_msg->img_ptr_r 			  = tsk_used_reg->dsp_testimg_reg.right_eye.img_data.data_ptr;
		dsp_used_reg.status_reg.tsk_testimg_tag_right = tsk_used_reg->dsp_testimg_reg.right_eye.tag_arm;

		// ȷ��������Ϊ�Ѿ����㹻������ͼ������ʶ��
		procimg_reg->img_msg->img_saved_score_r		 = 60;
		procimg_reg->img_msg->img_saved_count_r		 = CLEAR_IMG_COUNT+1;

		procimg_reg->img_grab_count=TSK_IMG_MAXCOUNT;
	}
}

