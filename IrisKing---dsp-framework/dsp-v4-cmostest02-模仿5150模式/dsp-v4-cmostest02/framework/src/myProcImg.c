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

extern far QUE_Obj	img_queue;		// ´«µÝÍ¼ÏñÐÅÏ¢, tskImage -> tskAlgorithm
extern far QUE_Obj	result_queue;	// ´«µÝ½á¹ûÐÅÏ¢, tskAlgorithm -> tskImage

#if !_EMULATOR
extern unsigned char irisimage[];
#endif

// È·ÈÏ×¢²á¡¢Ê¶±ðµÈ²Ù×÷¸ÐÐËÈ¤µÄÊÇÄÄÖ»ÑÛ¾¦µÄÍ¼Ïñ
int  FindRequiredEye (int policy_type);	// ×¢²á»òÊ¶±ð¾ùÓÃ´Ëº¯Êý
int  FindGrabIdenRequiredEye ();		// ×¢²áºó²É¼¯Ê¶±ð£¬Ê¹ÓÃ´Ëº¯Êý

// ÅÐ¶Ïµ±Ç°²É¼¯Í¼ÏñÖÊÁ¿
void SelectCurImages (dsp_procimg_t* procimg_reg, int qua_worktype);

// ¶ÔÊäÈëµÄ²âÊÔÍ¼Ïñ½øÐÐÊ¶±ð²âÊÔ
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
// ÔÚdsp_used_reg½á¹¹ÖÐÔö¼ÓÒ»¸ö´æ´¢Æ÷
// dsp_result_t£¬±£Áô×¢²áºÍÊ¶±ðµÄ½á¹û¼°´ÎÊýµÈÐÅÏ¢
int CheckResult (dsp_procimg_t* procimg_reg)
{
	int			nret = -1;
	int			eye = LEFT_EYE;
	int			result[EYE_NUM];
	Bool		que_empty;

	// iden or enroll, check if has result from algorithm
	que_empty = QUE_empty(&result_queue);
	if (que_empty==TRUE)	// ÉÐÎ´ÓÐ½á¹û
	{
		nret = -1;
	}
	else
	{
		procimg_reg->result_msg = QUE_get(&result_queue);
		//dbg_output("get result l=%d, r=%d\n", procimg_reg->result_msg->result_left,
		//			procimg_reg->result_msg->result_right);

		// modified at 20081202
		// Òª¸ù¾Ý¶ÔËã·¨ÈÎÎñµÄ´¦Àí½á¹û¾ö¶¨ÊÇ·ñ²»ÔÙÐèÒª¸øËã·¨·¢ÇëÇó
		// ÒÑ´ÓËã·¨ÈÎÎñµÃµ½½á¹û£¬Ëã·¨´¦ÓÚidle×´Ì¬
		dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_IDLE;

		result[LEFT_EYE-1]  = procimg_reg->result_msg->result_left;
		result[RIGHT_EYE-1] = procimg_reg->result_msg->result_right;
		// ¼ÇÂ¼Ê¹ÓÃµÄ_tag
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
					// ÒòÎªÊÇ³¬×¢²á·½Ê½£¬ËùÒÔÒª»Ö¸´×¢²á¸öÊýµ½ÒªÇóµÄ×¢²á¸öÊýiden_count
					if (result[eye-1]>dsp_used_reg.policy_reg.iden_count)
						result[eye-1] = dsp_used_reg.policy_reg.iden_count;

					// ¼ÇÂ¼µ±Ç°×¢²á¸öÊý
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
			// ×¢²áºó²É¼¯Ê¶±ðµÄ½á¹ûÖµ¼ÇÂ¼ÔÚresult_reg.result[]ÖÐ
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

			// ¼´Ê¹ÖÊÁ¿ÅÐ¶ÏÃ»ÓÐÍ¨¹ý£¬Ò²¼ÆÊý£¬ÒÔ¹Ì¶¨ËÍÈ¥Ê¶±ðµÄÊ±¼ä
			procimg_reg->img_grab_count++;

			// ¼ÆËãÍ¼ÏñÖÊÁ¿
			// ¼ÆËã±¾´ÎÖÊÁ¿ÅÐ¶Ï¹ý³ÌÖÐÐèÒªÄÄÖ»ÑÛ¾¦µÄÍ¼Ïñ
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
				// µ±ÓÐÐèÒªµÄÑÛ¾¦Ê±£¬²Å½øÐÐÏÂÃæµÄ²½Öè
				// 1.ÅÐ¶Ïµ±Ç°Í¼ÏñµÄÍ¼ÏñÖÊÁ¿
				SelectCurImages(procimg_reg, qua_worktype);

				NeedToIdenTestImage(procimg_reg);

				// 2.Èç¹ûÒÑ¾­ÅÐ¶Ïµ½Ò»¶¨ÊýÁ¿µÄÍ¼Ïñ£¬Ôò¿¼ÂÇËÍµ½Ëã·¨ÈÎÎñ
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
						// ALG IDLE×´Ì¬ÏÂ£¬²Å¿ÉÒÔÏòËã·¨ÈÎÎñ·¢ÏûÏ¢
						// modified at 20081127
						if (dsp_used_reg.status_reg.tsk_alg_inuse == TSK_ALGTSK_STATUS_IDLE)
						{
							dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_ALGINUSE;

							// ÉèÖÃ_tag
							// Ê¶±ð½á¹ûµÄtagÒÔ´ËÎª×¼
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
						// Ò»¶ÎÊ±¼äÄÚ£¬Î´´ïµ½¹æ¶¨ÊýÁ¿µÄÇåÎúÍ¼Ïñ¸öÊý
						if (procimg_reg->need_eye==0)
							img_quality = dsp_used_reg.last_img_quality;
						else
							img_quality = COLOR_BLUR;
					} // end of not enough clear image

					// ÊÇ·ñÐÞ¸ÄÌáÊ¾¿òµÄÑÕÉ«
					if (img_quality!=dsp_used_reg.last_img_quality)
					{
						dsp_used_reg.last_img_quality = img_quality;
						disp_set_cb(CB_H_THICK, CB_V_THICK, CB_TOP, CB_BOTTOM, CB_LEFT, CB_RIGHT, dsp_used_reg.last_img_quality);
					}

					// »Ö¸´ÐÂÒ»ÂÖµÄ¼ÆÊý£¬ÖØÐÂ¿ªÊ¼²âÊÔµ±Ç°²É¼¯Í¼ÏñÖÊÁ¿
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

				// ±êÖ¾±¾´ÎÊ¶±ð²âÊÔÍ¼ÏñÒÑÊ¶±ð½áÊø
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
				// ±êÖ¾±¾´ÎÊ¶±ð²âÊÔÍ¼ÏñÒÑÊ¶±ð½áÊø
				tsk_used_reg->dsp_testimg_reg.left_eye.tag_dsp  = dsp_used_reg.status_reg.tsk_testimg_tag_left;
				tsk_used_reg->dsp_testimg_reg.right_eye.tag_dsp = dsp_used_reg.status_reg.tsk_testimg_tag_right;
				tsk_used_reg->alg_result_reg.result_type =RESULT_TYPE_CODE;
			}
			else if (procimg_reg->result_msg->process_flag==WORKTYPE_MATCH)
			{
				dsp_used_reg.status_reg.tsk_alg_status 		  	= TSK_ALGORITHM_STATUS_IDLE;
				// ±êÖ¾±¾´ÎÊ¶±ð²âÊÔÍ¼ÏñÒÑÊ¶±ð½áÊø
				tsk_used_reg->dsp_testimg_reg.left_eye.tag_dsp  = dsp_used_reg.status_reg.tsk_testimg_tag_left;
				tsk_used_reg->dsp_testimg_reg.right_eye.tag_dsp = dsp_used_reg.status_reg.tsk_testimg_tag_right;
				tsk_used_reg->alg_result_reg.result_type =RESULT_TYPE_MATCH;

			}

			if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_DOING)!=0)
			{
				//  ´¦Àí½áÊøºó£¬»Ö¸´ÎªÐèÒªÍ¼ÏñµÄ·½Ê½
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

		// ÈÔÔÚ×¢²á»òÊ¶±ðÖÐ£¬Ã»ÓÐ×¢²á½á¹û
		// ³¢ÊÔ¸ù¾ÝÍ¼ÏñÖÊÁ¿ÅÐ¶Ï£¬ÌáÐÑÊ¹ÓÃÕß
		if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_DOING)!=0)
		{
			if (dsp_used_reg.quality_count>=15)
				SetSoundValue();
		}
		else	// ÒÑ¾­ÓÐÊ¶±ð»ò×¢²á½á¹û£¬²»±ØÒªÆäËû·¢Éù
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

	// ÉèÖÃÈ±Ê¡Ê¶±ð²ßÂÔ
	dsp_used_reg.policy_reg.iden_count     = COMMON_IDENCOUNT;
	dsp_used_reg.policy_reg.policy_control = POLICY_EITHER_ACTIVE;  // POLICY_ALL_ACTIVE; //

	// Ê¶±ð½á¹û¼ÇÂ¼´æ´¢Æ÷
	memset(dsp_used_reg.result_reg, 0, sizeof(dsp_used_reg.result_reg));
	dsp_used_reg.result_reg.result[LEFT_EYE-1] = -2;
	dsp_used_reg.result_reg.result[RIGHT_EYE-1] = -2;

	// ¼ÇÂ¼¿ªÊ¼Ê¶±ðÊ±¼ä
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
	// °ÑËùÓÐ½á¹ûÇå¿Õ£¬±íÊ¾ÎÞ½á¹û
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

	// ÉèÖÃÈ±Ê¡×¢²á²ßÂÔ
	dsp_used_reg.policy_reg.iden_count     = MAX_ENROLLCOUNT;	// ×¢²áÖÐ£¬ÎªÐèÒªµÄ×¢²á´ÎÊý
	dsp_used_reg.policy_reg.policy_control = POLICY_ALL_ACTIVE;

	// ×¢²á½á¹û¼ÇÂ¼´æ´¢Æ÷
	memset(dsp_used_reg.result_reg, 0, sizeof(dsp_used_reg.result_reg));

	dsp_used_reg.result_reg.result[LEFT_EYE-1]  = -1;
	dsp_used_reg.result_reg.result[RIGHT_EYE-1] = -1;

	// ¼ÇÂ¼¿ªÊ¼×¢²áÊ±¼ä
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

		// µ÷û×¢²á´ÎÊýÎªÈ±Ê¡Öµ
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

// ·¢È¥Ê¶±ð·½Ê½£¬tsk_algorithm×Ô¶¯´Ó×¢²áÍ¼ÏñÖÐÊ¶±ð£¬²¢·µ»Ø½á¹û
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

					// ÉèÖÃ_tag
					// Ê¶±ð½á¹ûµÄtagÒÔ´ËÎª×¼
					{
					lp_feature = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_LEFT_STRUCT_ADDR);
					left_feature_tag  = lp_feature->feature_tag;

					lp_feature = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_RIGHT_STRUCT_ADDR);
					right_feature_tag = lp_feature->feature_tag;

					procimg_reg->img_msg->feature_tag = (left_feature_tag|right_feature_tag);;

					procimg_reg->img_msg->img_saved_count_l = left_count;	// ÓÃÓÚÍ¨Öª×óÑÛ×¢²á¸öÊý
					procimg_reg->img_msg->img_saved_count_r = right_count;	// Í¨ÖªÓÒÑÛ×¢²á¸öÊý
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

// Ê¶±ð»ò×¢²á£¬ÐèÒªÄÄÖ»ÑÛ¾¦
// Ö»¸ù¾ÝÊ¶±ð»ò×¢²á²ßÂÔÀ´ÅÐ¶Ï
// ÅÐ¶ÏÐèÒª´¦ÀíÄÄÖ»ÑÛ¾¦(1 or 2)»òÁ½Ö»ÑÛ¾¦(3)¾ùÐèÒª
int FindRequiredEye (int policy_type)
{
	int nret = TSK_ALGORITHM_FLAG_NOEYE;

	//1.²éÑ¯ÊÇ·ñÒÑÓÐ×¢²á½á¹û
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// ÈçÒÑÓÐ½á¹ûÔò²»ÐèÒª×öÈÎºÎ´¦Àí£¬µÈ´ý½á¹ûÈ¡×ß¼´¿É
		return nret;
	}

	//2.²éÑ¯Ê¶±ð»ò×¢²á²ßÂÔ
	GetPolicy(policy_type);

	if (dsp_used_reg.policy_reg.policy_control==POLICY_LEFT_ACTIVE)
	{
		nret = TSK_ALGORITHM_FLAG_LEFTEYE;
	} // end of ×óÑÛÓÐÐ§
	else if (dsp_used_reg.policy_reg.policy_control==POLICY_RIGHT_ACTIVE)
	{
		nret = TSK_ALGORITHM_FLAG_RIGHTEYE;
	} // end of ÓÒÑÛÓÐÐ§
	else if ((dsp_used_reg.policy_reg.policy_control==POLICY_ALL_ACTIVE)
		||(dsp_used_reg.policy_reg.policy_control==POLICY_EITHER_ACTIVE))
	{
		if (dsp_used_reg.result_reg.result[LEFT_EYE-1]<TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
			nret += TSK_ALGORITHM_FLAG_LEFTEYE;
		if (dsp_used_reg.result_reg.result[RIGHT_EYE-1]<TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
			nret += TSK_ALGORITHM_FLAG_RIGHTEYE;
	}// end of Ë«ÑÛ»òÈÎÒâÑÛÓÐÐ§

	//4.ÈçÒÑ¾­µ½Ê¶±ð´ÎÊýÏÞÖÆ¬ÔòÓ¦ÈÏÎªÊ¶±ðÊ§°Ü£¬ÁíÍâ´¦Àí£¿£?

	return nret;
} // end of FindIdenRequiredEye

// ×¢²áºó²É¼¯Ê¶±ð£¬ÐèÒªÄÄÖ»ÑÛ¾¦
// Ö»ÒªÕâÖ»ÑÛ¾¦×¢²áÍ¨¹ýÁË£¬ÔòÐèÒª²É¼¯Ê¶±ðÕâÖ»ÑÛ¾¦
int FindGrabIdenRequiredEye ()
{
	int nret = TSK_ALGORITHM_FLAG_NOEYE;

	//2.²éÑ¯Ê¶±ð»ò×¢²á²ßÂÔ
	GetPolicy(POLICY_ENROLL);

	// ×óÑÛÒÑ¾­×¢²á³É¹¦
	if (dsp_used_reg.result_reg.count[LEFT_EYE-1]>=dsp_used_reg.policy_reg.iden_count)
	{
		nret += TSK_ALGORITHM_FLAG_LEFTEYE;
	}

	// ÓÒÑÛÒÑ¾­×¢²á³É¹¦
	if (dsp_used_reg.result_reg.count[RIGHT_EYE-1]>=dsp_used_reg.policy_reg.iden_count)
	{
		nret += TSK_ALGORITHM_FLAG_RIGHTEYE;
	}

	return nret;
}

// ¸ù¾Ýµ±Ç°ÒÑÓÐ½á¹û£¬ÅÐ¶Ï²Ù×÷ÊÇ·ñÒÑ½áÊø£¬³É¹¦»¹ÊÇÊ§°Ü
void ProcessIdenResult (dsp_procimg_t* procimg_reg)
{
	Bool ifOver = FALSE;
	int  left, right;

	//1.²éÑ¯ÊÇ·ñÒÑÓÐ½á¹û
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// ÈçÒÑÓÐ½á¹ûÔò²»ÐèÒª×öÈÎºÎ´¦Àí£¬µÈ´ý½á¹ûÈ¡×ß¼´¿É
		return ;
	}

	if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
	{
		// µ±Ç°ÊÇÊ¶±ð×´Ì¬
		//2.²éÑ¯Ê¶±ð²ßÂÔ
		GetPolicy(POLICY_IDENTIFY);

		left  = dsp_used_reg.result_reg.result[LEFT_EYE-1];
		right = dsp_used_reg.result_reg.result[RIGHT_EYE-1];

		//3.²éÑ¯ÒÑ¾­Ê¶±ð´ÎÊý

		// ¸ù¾Ý²ßÂÔ²»Í¬£¬ÏÈÅÐ¶ÏÊ¶±ðÊÇ·ñÒÑÍ¨¹ý
		// ÈçÎ´Í¨¹ý£¬ÅÐ¶Ïµ±Ç°Ó¦´¦ÀíÄÄÖÖÍ¼Ïñ
		if (((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_LEFT_ACTIVE)
			&&(left>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
		{
			// ×óÑÛÓÐÐ§ Ê¶±ð³É¹¦
			ifOver = TRUE;
		} // end of ×óÑÛÓÐÐ§
		else if (((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_RIGHT_ACTIVE)
			&&(right>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
		{
			// Ê¶±ð³É¹¦
			ifOver = TRUE;
		} // end of ÓÒÑÛÓÐÐ§
		else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_ALL_ACTIVE)
		{
			if ((left>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
				&&(right>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
			{
				// Ê¶±ð³É¹¦
				ifOver = TRUE;
			}
		} // end of Ë«Ä¿Í¬Ê±ÓÐÐ§
		else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_EITHER_ACTIVE)
		{
			if ((left>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
				||(right>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
			{
				// Ê¶±ð³É¹¦
				ifOver = TRUE;
			}
		} // end of ÈÎÒâÒ»Ö»ÑÛ¾¦ÓÐÐ§

		// ÒÑ¾­µ½Ê¶±ð´ÎÊýÏÞÖÆ£¬Ó¦¸ø³öÊ¶±ðÊ§°ÜµÄ½á¹û
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

// ¸ù¾Ýµ±Ç°ÒÑÓÐ½á¹û£¬ÅÐ¶Ï²Ù×÷ÊÇ·ñÒÑ½áÊø£¬³É¹¦»¹ÊÇÊ§°Ü
void ProcessEnrollResult (dsp_procimg_t* procimg_reg)
{
	Bool ifOver = FALSE;
	int  cur_time;
	int  left_count = 0, right_count = 0;
	int  enroll_count;	// ×¢²áÐèÒªµÄÍ¼ÏñÊý

	//1.²éÑ¯ÊÇ·ñÒÑÓÐ½á¹û
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// ÈçÒÑÓÐ½á¹ûÔò²»ÐèÒª×öÈÎºÎ´¦Àí£¬µÈ´ý½á¹ûÈ¡×ß¼´¿É
		return ;
	}

	// µ±Ç°ÊÇ×¢²á×´Ì¬
	// 2.²éÑ¯×¢²á²ßÂÔ
	GetPolicy(POLICY_ENROLL);

	enroll_count = dsp_used_reg.policy_reg.iden_count;	// ×¢²áÐèÒªµÄÍ¼ÏñÊý

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

		// ¸ù¾Ý²ßÂÔ²»Í¬£¬ÏÈÅÐ¶Ï×¢²áÊÇ·ñÒÑÍê³É
		// ÈçÎ´Í¨¹ý£¬ÅÐ¶Ïµ±Ç°¸Ã×¢²áÄÄÖ»ÑÛ¾¦
		if (((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_LEFT_ACTIVE)
			&& (left_count>=enroll_count))

		{
			// ×¢²á³É¹¦
			ifOver = TRUE;
		} // end of ×óÑÛÓÐÐ§
		else if (((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_RIGHT_ACTIVE)
			&& (right_count>=enroll_count))
		{
			// ×¢²á³É¹¦
			ifOver = TRUE;
		} // end of ÓÒÑÛÓÐÐ§
		else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_ALL_ACTIVE)
		{
			if ((left_count>=enroll_count)
				&& (right_count>=enroll_count))
			{
				// ×¢²á³É¹¦
				ifOver = TRUE;
				dbg_output("Enroll over\n");
			}
		} // end of Ë«Ä¿Í¬Ê±ÓÐÐ§
		else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_EITHER_ACTIVE)
		{
			if ((left_count>=enroll_count)
				|| (right_count>=enroll_count))
			{		
				// ×¢²á³É¹¦
				ifOver = TRUE;
			}
		} // end of ½öÒ»Ö»ÑÛ¾¦ÓÐÐ§

		if (ifOver==TRUE)
		{
			StopEnroll();

			// ÔÚË«ÑÛ¶¼×¢²á³É¹¦µÄÇé¿öÏÂ£¬²Å²âÊÔ×¢²á½á¹û
			// ½øÈëGRABIDEN×´Ì¬£¬²âÊÔ×¢²á½á¹û
			// added at 20081127
			if (left_count==right_count)
				StartGrabIden(procimg_reg);
			else
				SetEnrollResult(procimg_reg);
		}
	} // end of in enroll process

} // end of process enroll result

// added at 20081127
// ×¢²á½áÊøºó£¬Êµ¼Ê²É¼¯Í¼Ïñ£¬Óëµ±Ç°×¢²áÌØÕ÷½øÐÐ±È¶Ô
// ÄÄÖ»Û¾¦½øÐÐ±È¶Ô£¬È¡¾öÓÚ×¢²á½áÊøºó£¬µÃµ½ÁËÄÄÖ»ÑÛ¾¦µÄÌØÕ÷
// Ö»ÒªÓÐ×¢²á³É¹¦µÄÑÛ¾¦£¬Ôò±ØÐëËùÓÐµÄÑÛ¾¦¶¼ÓëÊµ¼Ê²É¼¯µÄÍ¼Ïñ±È¶Ô³É¹¦
// Èç¹ûÓÐÈÎÒâÒ»Ö»ÑÛ¾¦Ã»ÓÐ³É¹¦(Ã¿Ö»ÑÛ¾¦¿ÉÒÔÓÐÁ½´Î»ú»á£¿)£¬
// ÔòÕû¸ö×¢²á¹ý³ÌÈ«²¿ÖØÐÂÀ´¹ý
void ProcessGrabIdenResult (dsp_procimg_t* procimg_reg)
{
	Bool ifSuccess = FALSE;

	//1.²éÑ¯ÊÇ·ñÒÑÓÐ½á¹û
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// ÈçÒÑÓÐ½á¹ûÔò²»ÐèÒª×öÈÎºÎ´¦Àí£¬µÈ´ý½á¹ûÈ¡×ß¼´¿É
		return ;
	}

	GetPolicy(POLICY_ENROLL);

	if ((dsp_used_reg.result_reg.count[LEFT_EYE-1]+dsp_used_reg.result_reg.count[RIGHT_EYE-1])
		!=dsp_used_reg.policy_reg.iden_count*2)
	{
		// ×¢²á½á¹ûÓÐÎó£¬ÖØÐÂ×¢²á
		dsp_used_reg.status_reg.tsk_alg_status = dsp_used_reg.status_reg.tsk_alg_saved_status;
		StartEnroll();	// restart enroll
	}

	if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_G_IDEN)!=0)
	{

		// Ö»ÓÐÔÚ×ó¡¢ÓÒÑÛ¶¼×¢²á³É¹¦µÄÇé¿öÏÂ²Å½øÈëGRABIDEN
		// ËùÒÔÖ»¿¼ÂÇ×ó¡¢ÓÒÑÛ×¢²áºó¶¼ÐèÒªÊ¶±ð³É¹¦
		if ((dsp_used_reg.result_reg.grab_iden_result[LEFT_EYE-1]>0)
			&&(dsp_used_reg.result_reg.grab_iden_result[RIGHT_EYE-1]>0))
		{
			ifSuccess = TRUE;
			dsp_used_reg.status_reg.tsk_alg_status = dsp_used_reg.status_reg.tsk_alg_saved_status;
			SetEnrollResult(procimg_reg);
		}

		// ÒÑ¾­µ½Ê¶±ð´ÎÊýÏÞÖÆ£¬±¾´Î×¢²áÊ§°Ü£¬ÖØÐÂ×¢²á
		if (((dsp_used_reg.result_reg.grab_iden_result[LEFT_EYE-1]<=-2)
				||(dsp_used_reg.result_reg.grab_iden_result[RIGHT_EYE-1]<=-2))
			&&(ifSuccess == FALSE))
		{
			dsp_used_reg.status_reg.tsk_alg_status = dsp_used_reg.status_reg.tsk_alg_saved_status;
			StartEnroll();	// restart enroll
		}



	} // end of in iden

} // end of process grab iden result

// ÅÐ¶Ïµ±Ç°²É¼¯Í¼ÏñÖÊÁ¿
void SelectCurImages (dsp_procimg_t* procimg_reg, int qua_worktype)
{
	unsigned int	saved_score;
	int				nret;

	if (dsp_used_reg.status_reg.tsk_alg_inuse != TSK_ALGTSK_STATUS_IDLE)
		return;

	// ×óÓÒÑÛ·Ö±ð¼ÆËãÍ¼ÏñÖÊÁ¿
	// ×óÑÛ
	if (((procimg_reg->need_eye&TSK_ALGORITHM_FLAG_LEFTEYE)!=0)&&(img_ptr_l!=NULL))
	{
		// ÉÏ´ÎÖÊÁ¿ÅÐ¶ÏµÃµ½µÄÍ¼ÏñÖÊÁ¿
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

// ¶ÔÊäÈëµÄ²âÊÔÍ¼Ïñ½øÐÐÊ¶±ð²âÊÔ
void NeedToIdenTestImage(dsp_procimg_t* procimg_reg)
{
	
	// send left test image to tsk alg
	if (dsp_used_reg.status_reg.tsk_testimg_tag_left!=tsk_used_reg->dsp_testimg_reg.left_eye.tag_arm)
	{
		procimg_reg->img_msg->img_ptr_l 			 = tsk_used_reg->dsp_testimg_reg.left_eye.img_data.data_ptr;
		dsp_used_reg.status_reg.tsk_testimg_tag_left = tsk_used_reg->dsp_testimg_reg.left_eye.tag_arm;

		// È·±£³ÌÐòÈÏÎªÒÑ¾­ÓÐ×ã¹»µÄÇåÎúÍ¼ÏñÓÃÓÚÊ¶±ð
		procimg_reg->img_msg->img_saved_score_l		 = 60;
		procimg_reg->img_msg->img_saved_count_l		 = CLEAR_IMG_COUNT+1;

		procimg_reg->img_grab_count=TSK_IMG_MAXCOUNT;
	}

	// send right test image to tsk alg
	if (dsp_used_reg.status_reg.tsk_testimg_tag_right!=tsk_used_reg->dsp_testimg_reg.right_eye.tag_arm)
	{
		procimg_reg->img_msg->img_ptr_r 			  = tsk_used_reg->dsp_testimg_reg.right_eye.img_data.data_ptr;
		dsp_used_reg.status_reg.tsk_testimg_tag_right = tsk_used_reg->dsp_testimg_reg.right_eye.tag_arm;

		// È·±£³ÌÐòÈÏÎªÒÑ¾­ÓÐ×ã¹»µÄÇåÎúÍ¼ÏñÓÃÓÚÊ¶±ð
		procimg_reg->img_msg->img_saved_score_r		 = 60;
		procimg_reg->img_msg->img_saved_count_r		 = CLEAR_IMG_COUNT+1;

		procimg_reg->img_grab_count=TSK_IMG_MAXCOUNT;
	}
}

