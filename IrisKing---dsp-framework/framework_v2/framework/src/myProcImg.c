#include <std.h>
#include <tsk.h>
#include <buf.h>
#include <fvid.h>
#include <csl.h>
#include <csl_cache.h>
#include "dbg_printf.h"

#include "dsp_memory.h"
#include "dsp_typedef.h"
#include "..\..\include\irIrisCore.h"

#define _EMULATOR	1

extern FVID_Frame *capFrameBuf1;
extern FVID_Frame *capFrameBuf2;
extern unsigned short* vdis_buf;

extern far QUE_Obj		img_queue;		// ´«µÝÍ¼ÏñÐÅÏ¢, tskImage -> tskAlgorithm
extern far QUE_Obj		result_queue;	// ´«µÝ½á¹ûÐÅÏ¢, tskAlgorithm -> tskImage
extern BUF_Handle	buffPoolHandle;

extern unsigned char irisimage[];

unsigned char*  img_ptr_l=NULL;
unsigned char*  img_ptr_r=NULL;


int  FindIdenRequiredEye ();
int  FindEnrollRequiredEye ();
void ProcessIdenResult (dsp_procimg_t* procimg_reg);
void ProcessEnrollResult (dsp_procimg_t* procimg_reg);
void ProcessEnrollIdenResult (dsp_procimg_t* procimg_reg);
int  SelectImage(unsigned char* orgImage, int worktype,
				unsigned int* saved_score, unsigned char* destImage);

int SaveBmp (unsigned char* bmpdata, int size, int i);

int  AllocImgBuffer (void)
{
	int 		nret = -1;
	Bool		que_empty;
	BUF_Stat 	statbuf;

	// Èç¹û¶ÓÁÐÎª¿Õ
	que_empty = QUE_empty(&img_queue);
	if (que_empty==TRUE)
	{
		// TSK_algÒÑ¾­°ÑÍ¼ÏñÈ¡×ß£¬²âÊÔÄÜ·ñ·ÖÅäÄÚ´æ
		//count = BUF_maxbuff(buffPoolHandle);
		BUF_stat(buffPoolHandle, &statbuf);
		if (statbuf.freebuffers>=2)
		{
			if (dsp_used_reg.status_reg.tsk_alg_inuse != TSK_ALGTSK_STATUS_ALGINUSE)
			{
    			img_ptr_l = BUF_alloc(buffPoolHandle);  
				img_ptr_r = BUF_alloc(buffPoolHandle);

				if (img_ptr_l!=img_ptr_r)
				{

					dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_NOEYE;

					nret = 0;
				}
				else
				{
					if (img_ptr_r!=NULL)
						BUF_free(buffPoolHandle, img_ptr_r);

					if (img_ptr_l!=NULL)
						BUF_free(buffPoolHandle, img_ptr_l);

					img_ptr_r = NULL;
					img_ptr_l = NULL;

				}
			} // end of alloc new buffer
		} // end of freebuffers>=2
	} // end of que_empty==TRUE

	return nret;

} // end of AllocImgBuffer

int CheckResult (dsp_procimg_t* procimg_reg)
{
	int			nret = -1;
	int			result_left, result_right;
	Bool		que_empty;

	// iden or enroll, check if has result from algorithm
	que_empty = QUE_empty(&result_queue);
	if (que_empty==TRUE)	// ÉÐÎ´ÓÐ½á¹û
	{
		nret = -1;
	}
	else
	{
		dbg_output("TSK_img get result\n");
		
		// copy image to own buffer
		procimg_reg->result_msg = QUE_get(&result_queue);
		// added at 20080415
		dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_IDLE;


		result_left  = procimg_reg->result_msg->result_left;
		result_right = procimg_reg->result_msg->result_right;
		// ¼ÇÂ¼Ê¹ÓÃµÄ_tag
		procimg_reg->feature_tag = procimg_reg->result_msg->feature_tag;

		if (procimg_reg->result_msg->process_flag==WORKTYPE_IDEN)
		{
			// record iden result
			if ((procimg_reg->result_msg->eye_flag&TSK_ALGORITHM_FLAG_LEFTEYE)!=0)
			{
				tsk_used_reg->alg_result_reg.left_result = result_left;
				if (result_left==-1)
					dsp_used_reg.policy_reg.cur_try_count++;
			}
			
			if ((procimg_reg->result_msg->eye_flag&TSK_ALGORITHM_FLAG_RIGHTEYE)!=0)
			{
				tsk_used_reg->alg_result_reg.right_result = result_right;
				if (result_right==-1)
					dsp_used_reg.policy_reg.cur_try_count++;
			}

			nret = 0;

		} // end of iden
		else if (procimg_reg->result_msg->process_flag==WORKTYPE_ENROLL)
		{
			// record enroll result
			if ((procimg_reg->result_msg->eye_flag&TSK_ALGORITHM_FLAG_LEFTEYE)!=0)
			{
				if (result_left>=0)
					tsk_used_reg->alg_result_reg.left_result = result_left;
				else if (result_left==-4)
					tsk_used_reg->alg_result_reg.left_result =0;
			}
			
			if ((procimg_reg->result_msg->eye_flag&TSK_ALGORITHM_FLAG_RIGHTEYE)!=0)
			{
				if (result_right>=0)
					tsk_used_reg->alg_result_reg.right_result = result_right;
				else if (result_right==-4)
					tsk_used_reg->alg_result_reg.right_result =0;
			}

			nret = 0;
		} // end of enroll
		else if (procimg_reg->result_msg->process_flag==WORKTYPE_IDEN_AFTER_ENROLL)
		{
			// record iden after enroll result
			tsk_used_reg->alg_result_reg.left_result  = result_left;
			tsk_used_reg->alg_result_reg.right_result = result_right;

			nret = 0;
		} // end of iden after enroll

		
	}

	return nret;
} // end of CheckResult

void FeatureIdenTest(void);

int ProcessImg (dsp_procimg_t* procimg_reg)
{
	int				nret;
    int             qua_worktype;
	int				img_quality = COLOR_BLUR;
	unsigned int	saved_score;

	unsigned int 	left_feature_tag = 0;
	unsigned int 	right_feature_tag = 0;
	unsigned int 	feature_tag = 0;

	dsp_algorithm_iden_feature_t* lp_feature		 = NULL;

	if ((dsp_used_reg.status_reg.tsk_alg_status==TSK_ALGORITHM_STATUS_BEGIN)			// just begin
		|| ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_UPDATE)!=0)	// update now
		|| ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_UPDATEID)!=0)	// update id now
		|| ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDLE)!=0))		// do nothing
	{
		return IRIS_SUCCESS;	// just wait
	}
	else if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_DOING)!=0)
	{
		if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_WAITIMG)!=0)
			&& (tsk_used_reg->tsk_flag_reg.tsk_img_resp==TSK_IMAGE_ACTIVE))
		{
			// alloc buffer
			if (procimg_reg->begin_quality==FALSE)
			{
				nret = AllocImgBuffer();

				if (nret==0)
				{
					procimg_reg->begin_quality = TRUE;
					procimg_reg->img_msg->img_saved_score_l	= 0;
					procimg_reg->img_msg->img_saved_score_r 	= 0;

					procimg_reg->img_msg->img_saved_count_l	= 0;
					procimg_reg->img_msg->img_saved_count_r	= 0;

				}
			} // end of begin_quality=FALSE
			else
			{
				// ¼´Ê¹ÖÊÁ¿ÅÐ¶ÏÃ»ÓÐÍ¨¹ý£¬Ò²¼ÆÊý£¬ÒÔ¹Ì¶¨ËÍÈ¥Ê¶±ðµÄÊ±¼ä
				procimg_reg->img_grab_count++;
		
                // ¼ÆËãÍ¼ÏñÖÊÁ¿
                // Ê¶±ð×´Ì¬

					// ¼ÆËã±¾´ÎÖÊÁ¿ÅÐ¶Ï¹ý³ÌÖÐÐèÒªÄÄÖ»ÑÛ¾¦µÄÍ¼Ïñ
                	if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
                	{
                    	qua_worktype = WORKTYPE_IDEN;
						procimg_reg->need_eye = FindIdenRequiredEye();
						dbg_output("need eye %d\n", procimg_reg->need_eye);
                	}
                	else if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
							||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
                	{
                    	qua_worktype = WORKTYPE_ENROLL;
						procimg_reg->need_eye = FindEnrollRequiredEye();
                	}

                // ×óÓÒÑÛ·Ö±ð¼ÆËãÍ¼ÏñÖÊÁ¿
                // ×óÑÛ
				if (((procimg_reg->need_eye&TSK_ALGORITHM_FLAG_LEFTEYE)!=0)&&(img_ptr_l!=NULL))
				{

					saved_score = procimg_reg->img_msg->img_saved_score_l;
#ifdef _EMULATOR

					nret = SelectImage((unsigned char*)capFrameBuf1->frame.iFrm.y1,
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

				}

				// right eye
				if (((procimg_reg->need_eye&TSK_ALGORITHM_FLAG_RIGHTEYE)!=0)&&(img_ptr_r!=NULL))
				{
					saved_score = procimg_reg->img_msg->img_saved_score_r;

#ifdef _EMULATOR
					nret = SelectImage((unsigned char*)capFrameBuf2->frame.iFrm.y1,
					//nret_right = SelectImage(capFrameBuf1->frame.iFrm.y1,
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

				}

				// printf("TSK_image cur image %d\n", img_grab_count);
				if (procimg_reg->img_grab_count>=TSK_IMG_MAXCOUNT)
				{
					// try to send buffer to TSK_algorithm
					// use QUE
					if (((procimg_reg->img_msg->img_saved_score_l+procimg_reg->img_msg->img_saved_score_r)>0)
						&&((procimg_reg->img_msg->img_saved_count_l>=CLEAR_IMG_COUNT)
							||(procimg_reg->img_msg->img_saved_count_r>=CLEAR_IMG_COUNT)))
					{
						procimg_reg->img_msg->img_ptr_l 		= img_ptr_l;
						procimg_reg->img_msg->img_ptr_r 		= img_ptr_r;
						procimg_reg->img_msg->eye_flag  		= procimg_reg->need_eye;
						procimg_reg->img_msg->process_flag 		= qua_worktype;

						img_quality = COLOR_CLEAR;
						
						// send left test image to tsk alg
						if (dsp_used_reg.status_reg.tsk_testimg_tag_left!=tsk_used_reg->dsp_testimg_reg.left_eye.tag_arm)
						{
							procimg_reg->img_msg->img_ptr_l 			 = tsk_used_reg->dsp_testimg_reg.left_eye.img_data.data_ptr;
							dsp_used_reg.status_reg.tsk_testimg_tag_left = tsk_used_reg->dsp_testimg_reg.left_eye.tag_arm;
						}

						// send right test image to tsk alg
						if (dsp_used_reg.status_reg.tsk_testimg_tag_right!=tsk_used_reg->dsp_testimg_reg.right_eye.tag_arm)
						{
							procimg_reg->img_msg->img_ptr_r 			  = tsk_used_reg->dsp_testimg_reg.right_eye.img_data.data_ptr;
							dsp_used_reg.status_reg.tsk_testimg_tag_right = tsk_used_reg->dsp_testimg_reg.right_eye.tag_arm;
						}

#if 0
						{
							int	cur_time;
							cur_time = TSK_time();
							dbg_output("Display green CB time %d\n", cur_time);
						}
#endif

						// added at 20080415
						dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_ALGINUSE;

						// ÉèÖÃ_tag
						// Ê¶±ð½á¹ûµÄtagÒÔ´ËÎª×¼
						{

							lp_feature = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_LEFT_STRUCT_ADDR);
							left_feature_tag  = lp_feature->feature_tag;

							lp_feature = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_RIGHT_STRUCT_ADDR);
							right_feature_tag = lp_feature->feature_tag;

							feature_tag = (left_feature_tag|right_feature_tag);

							procimg_reg->img_msg->feature_tag = feature_tag;
						}

						QUE_put(&img_queue, procimg_reg->img_msg);
						dbg_output("TSK_image put queue\n");

						dsp_used_reg.status_reg.tsk_alg_status &= ~TSK_ALGORITHM_STATUS_WAITIMG;						
						procimg_reg->begin_quality  = FALSE;
					}
					else
					{
						//dbg_output("TSK_image cannot find any usable image");
						if (procimg_reg->need_eye==0)
							img_quality = dsp_used_reg.last_img_quality;
						else
							img_quality = COLOR_BLUR;
							
					}

					if (img_quality!=dsp_used_reg.last_img_quality)
					{
						dsp_used_reg.last_img_quality = img_quality;
						dbg_output("my Display %x CB\n", img_quality);
						disp_set_cb(CB_H_THICK, CB_V_THICK, CB_TOP, CB_BOTTOM, CB_LEFT, CB_RIGHT, dsp_used_reg.last_img_quality);
					}

					procimg_reg->img_grab_count = 0;
				}
			} // end of has buffer to save image
		} // ÐèÒªÖÊÁ¿ÅÐ¶ÏÍ¼ÏñÖÐ

		//else
		// if (procimg_reg->begin_quality==FALSE)
		{

			nret = CheckResult(procimg_reg);

			if (nret==0)
			{
				
				if (procimg_reg->result_msg->process_flag==WORKTYPE_IDEN)
					ProcessIdenResult (procimg_reg);
				else if (procimg_reg->result_msg->process_flag==WORKTYPE_ENROLL)
					ProcessEnrollResult (procimg_reg);
				else if (procimg_reg->result_msg->process_flag==WORKTYPE_IDEN_AFTER_ENROLL)
				{
					ProcessEnrollIdenResult (procimg_reg);
					// FeatureIdenTest();
				}

				tsk_used_reg->dsp_testimg_reg.left_eye.tag_dsp  = dsp_used_reg.status_reg.tsk_testimg_tag_left;
				tsk_used_reg->dsp_testimg_reg.right_eye.tag_dsp = dsp_used_reg.status_reg.tsk_testimg_tag_right;

				// after process images, free them to the buffer pool
				if (img_ptr_r!=NULL)
				{
					BUF_free(buffPoolHandle, img_ptr_r);
					img_ptr_r = NULL;
				}

				if (img_ptr_l!=NULL)
				{
					BUF_free(buffPoolHandle, img_ptr_l);
					img_ptr_l = NULL;
				}

				dbg_output1("TSK_img free buf\n");

				if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_DOING)!=0)
				{
					//  ´¦Àí½áÊøºó£¬»Ö¸´ÎªÐèÒªÍ¼ÏñµÄ·½Ê½
					dsp_used_reg.status_reg.tsk_alg_status |= TSK_ALGORITHM_STATUS_WAITIMG;	
				}
			}
		} // µÈ´ý´¦Àí£¨×¢²á»òÊ¶±ð£©½á¹û·µ»ØÖÐ


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
	dsp_used_reg.status_reg.tsk_alg_status 				 |= TSK_ALGORITHM_STATUS_WAITIMG;

	tsk_used_reg->alg_result_reg.result_type     		  = TSK_ALGORITHM_RESULT_TYPE_NULL;

	tsk_used_reg->alg_result_reg.left_result  = TSK_ALGORITHM_RESULT_IDEN_INVALID;
	tsk_used_reg->alg_result_reg.right_result = TSK_ALGORITHM_RESULT_IDEN_INVALID;

	// ÉèÖÃÈ±Ê¡Ê¶±ð²ßÂÔ
	dsp_used_reg.policy_reg.iden_count     = COMMON_IDENTIME;
	dsp_used_reg.policy_reg.policy_control = POLICY_EITHER_ACTIVE;  // POLICY_ALL_ACTIVE; //
	dsp_used_reg.policy_reg.last_try_eye   = TSK_ALGORITHM_FLAG_NOEYE;
	dsp_used_reg.policy_reg.cur_try_count  = 0; // Ê¶±ðÖÐ£¬´ËÖµ×÷ÎªÒÑ¾­Ê¶±ð¹ýµ«Ê§°ÜµÄ´ÎÊý
	
	return IRIS_SUCCESS;
}

int StopIdentify()
{
	// close the led
	// close the ccd
	// dsp_used_reg.status_reg.tsk_alg_status &= ~TSK_ALGORITHM_STATUS_IDEN;

	dsp_used_reg.status_reg.tsk_alg_status &= ~TSK_ALGORITHM_STATUS_WAITIMG;

	tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_IDLE_ACTIVE;

	return IRIS_SUCCESS;
}

int ClearALLResult()
{
	// °ÑËùÓÐ½á¹ûÇå¿Õ£¬±íÊ¾ÎÞ½á¹û
	tsk_used_reg->alg_result_reg.result_type=TSK_ALGORITHM_RESULT_TYPE_NULL;
	return 0;
}

int StartEnroll()
{
	dsp_used_reg.status_reg.tsk_alg_status 				 |= TSK_ALGORITHM_STATUS_WAITIMG;

	tsk_used_reg->alg_result_reg.result_type     		  = TSK_ALGORITHM_RESULT_TYPE_NULL;

	tsk_used_reg->alg_result_reg.left_result  = 0;	// ×¢²áÖÐ£¬´ËÖµ×÷Îª×óÑÛÒÑ¾­×¢²áÁË¶àÉÙ·ùÍ¼ÏñµÄ¼ÇÂ¼
	tsk_used_reg->alg_result_reg.right_result = 0; // ×¢²áÖÐ£¬´ËÖµ×÷ÎªÓÒÑÛÒÑ¾­×¢²áÁË¶àÉÙ·ùÍ¼ÏñµÄ¼ÇÂ¼

	// ÉèÖÃÈ±Ê¡×¢²á²ßÂÔ
	dsp_used_reg.policy_reg.iden_count     = MAX_ENROLLTIME;	// ×¢²áÖÐ£¬ÎªÐèÒªµÄ×¢²á´ÎÊý
	dsp_used_reg.policy_reg.policy_control = POLICY_ALL_ACTIVE;
	dsp_used_reg.policy_reg.last_try_eye   = TSK_ALGORITHM_FLAG_NOEYE;

	return IRIS_SUCCESS;
}

int StopEnroll()
{
	// dsp_used_reg.status_reg.tsk_alg_status &= ~TSK_ALGORITHM_STATUS_ENROLL;
	// dsp_used_reg.status_reg.tsk_alg_status &= ~TSK_ALGORITHM_STATUS_I_ENROLL;

	dsp_used_reg.status_reg.tsk_alg_status &= ~TSK_ALGORITHM_STATUS_WAITIMG;

	tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_IDLE_ACTIVE;

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

		// µ÷Õû×¢²á´ÎÊýÎªÈ±Ê¡Öµ
		if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
			||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
		{
			if ((dsp_used_reg.policy_reg.iden_count<=0)
				||(dsp_used_reg.policy_reg.iden_count>MAX_ENROLLTIME))
				dsp_used_reg.policy_reg.iden_count = MAX_ENROLLTIME;
		}
		else if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
		{
			if (dsp_used_reg.policy_reg.iden_count<=0)
				dsp_used_reg.policy_reg.iden_count = COMMON_IDENTIME;
		}

	}

}

// 1.×óÑÛÓÐÎÞ×¢²áÍ¼Ïñ£¬ÎÞ£¬ÔòÉèÖÃ×óÑÛ½á¹ûÎªINVALID
// 2.ÓÐ£¬ÔòÒÀ´ÎÈ¡³öÍ¼ÏñÓÃÓÚÊ¶±ð£¬ÈçÓÐ>0µÄ½á¹û£¬Ôò×óÑÛ½áÊø£¬ËÑÑ°ÓÒÑÛ
// 3.ÓÒÑÛÓÐÎÞ×¢²áÍ¼Ïñ£¬ÎÞ£¬ÔòÉèÖÃÓÒÑÛ½á¹ûÎªINVALID£¬Ê¶±ð½áÊø
// 4.ÓÐ£¬ÔòÒÀ´ÎÈ¡³öÍ¼ÏñÓÃÓÚÊ¶±ð£¬ÈçÓÐ>0µÄ½á¹û£¬ÔòÓÒÑÛ½áÊø£¬Ê¶±ð½áÊø
// 5.Ê¶±ð½áÊøºó£¬×¢ÒâÉèÖÃ×¢²á½á¹ûÎªÓÐÐ§
void ProcessEnrollIdenResult (dsp_procimg_t* procimg_reg)
{

	if (tsk_used_reg->alg_result_reg.left_result<0)
		tsk_used_reg->alg_result_reg.left_result = TSK_ALGORITHM_RESULT_IDEN_FALSE;

	if (tsk_used_reg->alg_result_reg.right_result<0)
		tsk_used_reg->alg_result_reg.right_result = TSK_ALGORITHM_RESULT_IDEN_FALSE;

	dsp_used_reg.status_reg.tsk_alg_status 		= TSK_ALGORITHM_STATUS_IDLE;

	CACHE_flush(CACHE_L2ALL, 0, 0);

	tsk_used_reg->alg_result_reg.result_type  	= TSK_ALGORITHM_RESULT_TYPE_ENROLL;

	return;
}

// ·¢È¥Ê¶±ð·½Ê½£¬tsk_algorithm×Ô¶¯´Ó×¢²áÍ¼ÏñÖÐÊ¶±ð£¬²¢·µ»Ø½á¹û
void IdenAfterEnroll (dsp_procimg_t* procimg_reg)
{
	int	enroll_count;
	dsp_algorithm_result_data_t*  send_enroll_result = NULL;

	unsigned int 	left_feature_tag = 0;
	unsigned int 	right_feature_tag = 0;
	unsigned int 	feature_tag = 0;

	dsp_algorithm_iden_feature_t* lp_feature		 = NULL;


		// ²éÑ¯ÊÇ·ñÒªÇóÊ¶±ð
		if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
		{
			// ½ö×¢²á£¬²»ÐèÒªÊ¶±ð
			tsk_used_reg->alg_result_reg.left_result = TSK_ALGORITHM_RESULT_IDEN_INVALID;
			tsk_used_reg->alg_result_reg.right_result = TSK_ALGORITHM_RESULT_IDEN_INVALID;
		}
		else if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0)
		{
			// ÒªÇóÊ¶±ð£¬²éÕÒÊ¶±ð½á¹û
			send_enroll_result  = (dsp_algorithm_result_data_t*)(ENROLL_RESULT_ADDR);
			enroll_count = send_enroll_result->result_count;

			if (enroll_count>0)
			{
				procimg_reg->img_msg->eye_flag     = 0;
				procimg_reg->img_msg->process_flag = WORKTYPE_IDEN_AFTER_ENROLL;

						// added at 20080415
						dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_ALGINUSE;

						// ÉèÖÃ_tag
						// Ê¶±ð½á¹ûµÄtagÒÔ´ËÎª×¼
						{
							lp_feature = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_LEFT_STRUCT_ADDR);
							left_feature_tag  = lp_feature->feature_tag;

							lp_feature = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_RIGHT_STRUCT_ADDR);
							right_feature_tag = lp_feature->feature_tag;

							feature_tag = (left_feature_tag|right_feature_tag);

							procimg_reg->img_msg->feature_tag = feature_tag;
						}

				QUE_put(&img_queue, procimg_reg->img_msg);
				dbg_output("TSK_image put iden after enroll queue\n");

				// wait for tsk_algorithm send the iden result
				return;
			}

		}

		// ÆäËûÇé¿ö£¬Ö±½Ó·µ»Ø£¬ÉèÖÃ×¢²á½á¹ûÎªÓÐÐ§
		tsk_used_reg->alg_result_reg.left_result  = TSK_ALGORITHM_RESULT_IDEN_INVALID;
		tsk_used_reg->alg_result_reg.right_result = TSK_ALGORITHM_RESULT_IDEN_INVALID;

		dsp_used_reg.status_reg.tsk_alg_status 		= TSK_ALGORITHM_STATUS_IDLE;
		tsk_used_reg->alg_result_reg.result_type  	= TSK_ALGORITHM_RESULT_TYPE_ENROLL;

	return;
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

// ¸ù¾Ý×¢²á²ßÂÔÖ®²»Í¬£¬×¢²á½á¹û¿ÉÄÜÈçÏÂ£º
// 1.Ö»×¢²á×óÑÛ£¬ÔòÖ»ÓÐ×óÑÛÌØÕ÷¼°Í¼Ïñ
// 2.Ö»×¢²áÓÒÑÛ£¬ÔòÖ»ÓÐÓÒÑÛÌØÕ÷¼°Í¼Ïñ
// 3.Ë«ÑÛÍ¬Ê±£¬Ôò×óÓÒÑÛÌØÕ÷¼°Í¼Ïñ¾ùÓÐ
// 4.ÈÎÒâÒ»ÑÛ£¬ÔòÈôÄ³Ö»ÑÛ¾¦ÏÈ´ïµ½×¢²áÒªÇó£¬ÔòÖ»ÓÐÕâÖ»ÑÛ¾¦ÌØÕ÷ºÍÍ¼Ïñ
//               ÈôË«ÑÛÍ¬Ê±´ïµ½×¢²áÒªÇó£¬ÔòÓÐË«ÑÛµÄÌØÕ÷ºÍ¼Ïñ

// modified by yqhe, 20080319
// Ôö¼ÓÆÕÍ¨×¢²á·½Ê½£¬ÐÞ¸ÄÑÏ¸ñ×¢²á·½Ê½
// ÆÕÍ¨×¢²á·½Ê½ÏÂ£¬ÕâÀï²»ÓÃÐÞ¸Ä
// ÑÏ¸ñ×¢²á·½Ê½ÏÂ£¬Òª¸ù¾ÝÃ¿·ùÍ¼ÏñµÄÖÊÁ¿Òò×Ó£¬±£ÁôÖÊÁ¿×îºÃµÄÁ½·ùÍ¼Ïñ
// ÉèÖÃ×¢²á½á¹û

// modified by yqhe, 20080320
// ¸ù¾Ý×¢²á²ßÂÔ£¬¾ö¶¨copyÄÄÐ©ÄÚÈÝ²¢Ìá¹©¸øARM
void SetEnrollResult(dsp_procimg_t* procimg_reg, int left_count, int right_count)
{
	int i;
	int off;
	dsp_algorithm_result_data_t*  send_enroll_result = NULL;
	dsp_algorithm_result_info_t*  result_info 	 	 = NULL;

	unsigned char*		enroll_feature_l = NULL;
	unsigned char*		enroll_feature_r = NULL;
	unsigned char*		match_feature_l	 = NULL;
	unsigned char*		match_feature_r	 = NULL;
	unsigned char*		src_image		 = NULL;
	unsigned char*		dest_image		 = NULL;
	unsigned char* 		lpdata;
	dsp_byte_data_t* 	enroll_result;
	Uint32				addr;
	Uint32				single_enroll_result_len = 0;

	dbg_output("EnrollResult : %d %d\n", left_count, right_count);

	enroll_feature_l = (unsigned char*)(FEATURE_ENROLL_LEFT);
	enroll_feature_r = (unsigned char*)(FEATURE_ENROLL_RIGHT);

	match_feature_l = (unsigned char*)(FEATURE_MATCH_LEFT);
	match_feature_r = (unsigned char*)(FEATURE_MATCH_RIGHT);

	// ×¢²á½á¹û´æ´¢Æ÷
	send_enroll_result  = (dsp_algorithm_result_data_t*)(ENROLL_RESULT_ADDR); 
	send_enroll_result->result_count    = left_count+right_count;

	if (dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_LOCAL)
		single_enroll_result_len = ENROLL_RESULT_TOTAL_LEN;
	else if (dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_CLUSTER)
	{
		if ((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_FEATURE)!=0)
			single_enroll_result_len = ENROLL_RESULT_MAX_LEN;
		else 
			single_enroll_result_len = ENROLL_RESULT_TOTAL_LEN;
	}

	send_enroll_result->result_byte_len = single_enroll_result_len*send_enroll_result->result_count;

	off = 0;

	// ×óÑÛ
	if (left_count>0)
	{
		for (i=0; i<left_count; i++)
		{

			addr = ENROLL_LEFT_STRUCT_ADDR1+single_enroll_result_len*i;
			result_info = (dsp_algorithm_result_info_t*)(addr);
			result_info->eye_flag = TSK_ALGORITHM_FLAG_LEFTEYE;
			result_info->enroll_feature.data_len  = IR_FeatureLength;
			
			lpdata = (unsigned char*)(addr+ENROLL_FEATURE_DATA_OFFSET);

			dbg_output("%d-left feature len %d feature addr %x\n", i, result_info->enroll_feature.data_len, 
												addr+ENROLL_FEATURE_DATA_OFFSET);

			// copy enrolled feature
			off = IR_FeatureLength*i;
			memcpy((unsigned char*)lpdata, \
									enroll_feature_l+off, \
									IR_FeatureLength);

			enroll_result = (dsp_byte_data_t*)(addr+ENROLL_IMAGE_STRUCT_OFFSET);
			enroll_result->data_len = IMG_TEST_SIZE + BMP_TOTALHEAD_LEN;

			// fill the bmp file head
			FillBmpHeader (addr+ENROLL_BMPHEAD_DATA_OFFSET, 
							ImW, ImH);

			dbg_output("%d-left bmp len %d bmpstruct %x bmp addr %x\n", i, enroll_result->data_len,
												addr+ENROLL_IMAGE_STRUCT_OFFSET, 
												addr+ENROLL_BMPHEAD_DATA_OFFSET);

			// Ã»ÓÐmatch_featureÐèÒªcopy
			if ((single_enroll_result_len-ENROLL_RESULT_TOTAL_LEN)==0)
			{
				//if (i>1)
				{
					src_image = (unsigned char*)(ENROLL_LEFT_STRUCT_ADDR1 \
						+ single_enroll_result_len*i
						+ ENROLL_IMAGE_DATA_OFFSET);
					dest_image = (unsigned char*)(addr+ENROLL_IMAGE_DATA_OFFSET);

					memcpy(dest_image, src_image, IMG_TEST_SIZE);
				}

				off = ENROLL_IMAGE_STRUCT_OFFSET + IMG_TEST_SIZE + BMP_TOTALHEAD_LEN + 4;
				enroll_result = (dsp_byte_data_t*)(addr + off);
				enroll_result->data_len = 0;

			}
			else
			{
				off = ENROLL_IMAGE_STRUCT_OFFSET + IMG_TEST_SIZE + BMP_TOTALHEAD_LEN + 4;
				enroll_result = (dsp_byte_data_t*)(addr + off);
				enroll_result->data_len = IR_RotateFeatureLength;

				lpdata = (unsigned char*)(addr+off+4);

				off = IR_RotateFeatureLength*i;
				memcpy((unsigned char*)lpdata, \
									match_feature_l+off, \
									IR_RotateFeatureLength);
			}

		} // end of for(i<left_count)
	}

	// ÓÒÑÛ
	if (right_count>0)
	{
		for (i=0; i<right_count; i++)
		{
			addr = ENROLL_LEFT_STRUCT_ADDR1+single_enroll_result_len*(i+left_count);
			result_info = (dsp_algorithm_result_info_t*)(addr);
			result_info->eye_flag = TSK_ALGORITHM_FLAG_RIGHTEYE;
			result_info->enroll_feature.data_len = IR_FeatureLength;
			lpdata = (unsigned char*)(addr+ENROLL_FEATURE_DATA_OFFSET);

			dbg_output("%d-right feature len %d feature addr %x\n", i, result_info->enroll_feature.data_len, 
												addr+ENROLL_FEATURE_DATA_OFFSET);

			// ÌØÕ÷
			off = IR_FeatureLength*i;
			memcpy((unsigned char*)lpdata, \
									enroll_feature_r+off, \
									IR_FeatureLength);

			enroll_result = (dsp_byte_data_t*)(addr+ENROLL_IMAGE_STRUCT_OFFSET);
			enroll_result->data_len = IMG_TEST_SIZE + BMP_TOTALHEAD_LEN;

			// fill the bmp file head
			FillBmpHeader (addr+ENROLL_BMPHEAD_DATA_OFFSET, 
							ImW, ImH);

			dbg_output("%d-right bmp len %d bmp addr %x\n", i, enroll_result->data_len, 
												addr+ENROLL_BMPHEAD_DATA_OFFSET);

			// Ã»ÓÐmatch_featureÐèÒªcopy
			if ((single_enroll_result_len-ENROLL_RESULT_TOTAL_LEN)==0)
			{
				//if (i>1)
				{
					src_image = (unsigned char*)(ENROLL_RIGHT_STRUCT_ADDR1 \
						+ single_enroll_result_len*i
						+ ENROLL_IMAGE_DATA_OFFSET);
					dest_image = (unsigned char*)(addr+ENROLL_IMAGE_DATA_OFFSET);

					memcpy(dest_image, src_image, IMG_TEST_SIZE);
				}

				off = ENROLL_IMAGE_STRUCT_OFFSET + IMG_TEST_SIZE + BMP_TOTALHEAD_LEN + 4;
				enroll_result = (dsp_byte_data_t*)(addr + off);
				enroll_result->data_len = 0;

			}
			else
			{
				off = ENROLL_IMAGE_STRUCT_OFFSET + IMG_TEST_SIZE + BMP_TOTALHEAD_LEN + 4;
				enroll_result = (dsp_byte_data_t*)(addr + off);
				enroll_result->data_len = IR_RotateFeatureLength;

				lpdata = (unsigned char*)(addr+off+4);

				off = IR_RotateFeatureLength*i;
				memcpy((unsigned char*)lpdata, \
									match_feature_r+off, \
									IR_RotateFeatureLength);
			}

		} // end of for(i<left_count)
	}


	// ÌîÐ´Ê¹ÓÃ²ßÂÔ
	tsk_used_reg->alg_result_reg.policy.policy_flag 	= POLICY_ENROLL;
	tsk_used_reg->alg_result_reg.policy.policy_control  = dsp_used_reg.policy_reg.policy_control;
	tsk_used_reg->alg_result_reg.policy.try_count   	= dsp_used_reg.policy_reg.iden_count;
	tsk_used_reg->alg_result_reg.policy.iden_mode		= dsp_used_reg.policy_reg.iden_mode;
	tsk_used_reg->alg_result_reg.policy.data_type		= dsp_used_reg.policy_reg.data_type;

	// set feature tag
	tsk_used_reg->alg_result_reg.feature_tag	=  procimg_reg->feature_tag;
	// tsk_used_reg->alg_result_reg.iden_result.iden_count	 	= dsp_used_reg.policy_reg.iden_count;

	if ((left_count+right_count)>0)
	{
		//tsk_used_reg->alg_result_reg.enroll_result.result	= TSK_ALGORITHM_RESULT_ENROLL_SUCCESS;
		//tsk_used_reg->alg_result_reg.enroll_result.ptr		= (void*)(ENROLL_RESULT_ADDR);
		tsk_used_reg->alg_result_reg.result_data  = (void *)(ENROLL_RESULT_ADDR);
	}


	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_I_ENROLL)
		&&(dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_LOCAL))
	{
		// ²âÊÔ×¢²áºóÊ¶±ð½á¹û
		// ÐèÒªÓÐÊ¶±ð½á¹ûºó£¬ÔÙÉèÖÃ½á¹û´æ´¢Æ÷ÎªÓÐ½á¹û×´Ì¬
		IdenAfterEnroll(procimg_reg);
	}
	else
	{
		// ½ö×¢²á£¬²»ÐèÒªÊ¶±ð£¬»òÊ¶±ðÓÉ¼¯Èº·þÎñÍê³É
		// ¿ÉÖ±½Ó·µ»Ø×¢²á½á¹û
		tsk_used_reg->alg_result_reg.left_result  = TSK_ALGORITHM_RESULT_IDEN_INVALID;
		tsk_used_reg->alg_result_reg.right_result = TSK_ALGORITHM_RESULT_IDEN_INVALID;



		dsp_used_reg.status_reg.tsk_alg_status 		= TSK_ALGORITHM_STATUS_IDLE;

		CACHE_flush(CACHE_L2ALL, 0, 0);

		tsk_used_reg->alg_result_reg.result_type  	= TSK_ALGORITHM_RESULT_TYPE_ENROLL;

	}

	// disp_draw_half_frame((unsigned short *)vdis_buf);
	// video_out_test();

}

// *base_addr -- ÊäÈë²ÎÊý£ºÐèÒªÐ´Èë½á¹ûµÄÆðÊ¼µØÖ·
//               Êä³ö²ÎÊý£º½á¹ûÐ´ÈëÍê±ÏµÄ
void set_iden_result (Uint32 *base_addr, Uint32 img_addr, Uint32 rotate_fea_addr, int eye)
{
	Uint32 addr;
	Uint32 off;
	unsigned char*		match_feature	 = NULL;
	unsigned char*		src_image		 = NULL;
	unsigned char*		dest_image		 = NULL;
	unsigned char* 		lpdata;
	dsp_byte_data_t* 	iden_result;
	dsp_algorithm_result_info_t*  result_info 	 	 = NULL;

	addr = *base_addr;
	off	 = 0;

		if (dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_CLUSTER)
		{
			addr_align(&addr, off);

			result_info = (dsp_algorithm_result_info_t*)(addr);
			result_info->eye_flag = eye;
			result_info->enroll_feature.data_len  = 0;

			off = ENROLL_FEATURE_DATA_OFFSET;

			// if the image data should be copy
			addr_align(&addr, off);
			iden_result = (dsp_byte_data_t*)(addr);

			if ((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_IMAGE)!=0)
			{
				off = 4;
				iden_result->data_len = IMG_TEST_SIZE + BMP_TOTALHEAD_LEN;

				// fill the bmp file head
				addr_align(&addr, off);
				FillBmpHeader (addr, ImW, ImH);

				off = BMP_TOTALHEAD_LEN;

				src_image = (unsigned char*)(img_addr);

				addr_align(&addr, off);
				dest_image = (unsigned char*)(addr);

				memcpy(dest_image, src_image, IMG_TEST_SIZE);

				//off -= BMP_TOTALHEAD_LEN;
				off = IMG_TEST_SIZE;

			}
			else
			{
				iden_result->data_len  = 0;
				iden_result->data_byte = 0;
				off = 4;
			}

			//off = iden_result->data_len+4;

			// if the match feature data should be copy
			addr_align(&addr, off);
			iden_result = (dsp_byte_data_t*)(addr);
			
			if ((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_FEATURE)!=0)
			{
				off = 4;

				iden_result->data_len = IR_RotateFeatureLength;

				addr_align(&addr, off);
				lpdata = (unsigned char*)(addr);

				match_feature = (unsigned char*)(rotate_fea_addr);

				memcpy((unsigned char*)lpdata, \
									match_feature, \
									IR_RotateFeatureLength);
			}
			else
			{
				iden_result->data_len = 0;
				iden_result->data_byte = 0;
			}

			off = iden_result->data_len;
		}

	*base_addr = addr + off;

}

// modified by yqhe, 20080320
// ¸ù¾ÝÊ¶±ð²ßÂÔ£¬¾ö¶¨copyÄÄÐ©ÄÚÈÝ²¢Ìá¹©¸øARM
// modified by yqhe, 20080415
// _tagÔÚÊ¶±ð½á¹ûµÄ½á¹¹ÖÐÌá¹©
void SetIdenResult (int left, int right, unsigned int feature_tag)
{
	dsp_algorithm_result_data_t*  send_iden_result	 = NULL;

	Uint32				addr, addr_end;
	Uint32				off;
	Uint32				result_count	 = 0;

	dbg_output("IdenResult : %d %d\n", left, right);

	// ÌîÐ´Ê¹ÓÃ²ßÂÔ
	tsk_used_reg->alg_result_reg.policy.policy_flag 	= POLICY_IDENTIFY;
	tsk_used_reg->alg_result_reg.policy.policy_control  = dsp_used_reg.policy_reg.policy_control;
	tsk_used_reg->alg_result_reg.policy.try_count   	= dsp_used_reg.policy_reg.iden_count;
	tsk_used_reg->alg_result_reg.policy.iden_mode		= dsp_used_reg.policy_reg.iden_mode;
	tsk_used_reg->alg_result_reg.policy.data_type		= dsp_used_reg.policy_reg.data_type;

	// set feature tag
	tsk_used_reg->alg_result_reg.feature_tag			=  feature_tag;

	// ×¢²á½á¹û´æ´¢Æ÷
	addr = ENROLL_RESULT_ADDR;
	addr_align(&addr, 0);

	send_iden_result  = (dsp_algorithm_result_data_t*)(addr); 

	off = 0;
	addr = ENROLL_LEFT_STRUCT_ADDR1;
	addr_align(&addr, off);

	// ×óÑÛ½á¹û
	if (left==TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
	{
		result_count++;
		set_iden_result(&addr, (ENROLL_LEFT_STRUCT_ADDR1 + ENROLL_IMAGE_DATA_OFFSET), 
						FEATURE_MATCH_LEFT, TSK_ALGORITHM_FLAG_LEFTEYE);
	} // end of left result = success
	else
	{
		tsk_used_reg->alg_result_reg.left_result = left;
	}

	// ÓÒÑÛ½á¹û
	if (right==TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
	{
		result_count++;
		set_iden_result(&addr, (ENROLL_RIGHT_STRUCT_ADDR1 + ENROLL_IMAGE_DATA_OFFSET), 
					FEATURE_MATCH_RIGHT, TSK_ALGORITHM_FLAG_RIGHTEYE);
	}
	else
	{
		tsk_used_reg->alg_result_reg.right_result = right;
	}

	addr_end = addr;

	if ((left==TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
		||(right==TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
	{
		addr = ENROLL_RESULT_ADDR;
		addr_align(&addr, 0);
		tsk_used_reg->alg_result_reg.result_data  = (void*)(addr);

		send_iden_result  = (dsp_algorithm_result_data_t*)(addr); 
		send_iden_result->result_count    		  = result_count;
		send_iden_result->result_byte_len 	  	  = addr_end-addr;
	}
	else
	{
		tsk_used_reg->alg_result_reg.result_data  = 0;
		send_iden_result->result_count 			  = 0;
		send_iden_result->result_byte_len 	 	  = 0;
	}

	dsp_used_reg.status_reg.tsk_alg_status 					 = TSK_ALGORITHM_STATUS_IDLE;

	// ²»ÐèÒªARM·ÃÎÊÆ¬Íâ¿Õ¼ä£¬µØÖ·ÉèÖÃÎª0
	// tsk_used_reg->alg_result_reg.result_data				 = 0;

	CACHE_flush(CACHE_L2ALL, 0, 0);

	tsk_used_reg->alg_result_reg.result_type       		 	 = TSK_ALGORITHM_RESULT_TYPE_IDEN;

} 

// ¸ù¾Ýµ±Ç°Çé¿ö
// ÅÐ¶ÏÐèÒª´¦ÀíÄÄÖ»ÑÛ¾¦(1 or 2)»òÁ½Ö»ÑÛ¾¦(3)¾ùÐèÒª
int FindIdenRequiredEye ()
{
	//1.²éÑ¯ÊÇ·ñÒÑÓÐ½á¹û
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// ÈçÒÑÓÐ½á¹ûÔò²»ÐèÒª×öÈÎºÎ´¦Àí£¬µÈ´ý½á¹ûÈ¡×ß¼´¿É
		return TSK_ALGORITHM_FLAG_NOEYE;
	}

	if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
	{
		// µ±Ç°ÊÇÊ¶±ð×´Ì¬
		//2.²éÑ¯Ê¶±ð²ßÂÔ
		GetPolicy(POLICY_IDENTIFY);

		//3.²éÑ¯ÒÑ¾­Ê¶±ð´ÎÊý
		
		// ÒÑ¾­µ½Ê¶±ð´ÎÊýÏÞÖÆ£¬Ó¦¸ø³öÊ¶±ðÊ§°ÜµÄ½á¹û
		if (dsp_used_reg.policy_reg.cur_try_count<dsp_used_reg.policy_reg.iden_count)
		{
			// ¸ù¾Ý²ßÂÔ²»Í¬£¬ÏÈÅÐ¶ÏÊ¶±ðÊÇ·ñÒÑÍ¨¹ý
			// ÈçÎ´Í¨¹ý£¬ÅÐ¶Ïµ±Ç°Ó¦´¦ÀíÄÄÖÖÍ¼Ïñ
			if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_LEFT_ACTIVE)
			{
				// ×óÑÛÓÐÐ§
				if (tsk_used_reg->alg_result_reg.left_result<TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
				{
					//if (dsp_used_reg.policy_reg.last_try_eye==TSK_ALGORITHM_FLAG_NOEYE)
						dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_LEFTEYE;
					//else
					//	dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_NOEYE;
				}
			} // end of ×óÑÛÓÐÐ§
			else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_RIGHT_ACTIVE)
			{
				if (tsk_used_reg->alg_result_reg.right_result<TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
				{
					//if (dsp_used_reg.policy_reg.last_try_eye==TSK_ALGORITHM_FLAG_NOEYE)
						dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_RIGHTEYE;
					//else
					//	dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_NOEYE;
				}
			} // end of ÓÒÑÛÓÐÐ§
			else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_ALL_ACTIVE)
			{
				//if (dsp_used_reg.policy_reg.last_try_eye==TSK_ALGORITHM_FLAG_NOEYE)
				{
					if (tsk_used_reg->alg_result_reg.left_result<TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
						dsp_used_reg.policy_reg.last_try_eye += TSK_ALGORITHM_FLAG_LEFTEYE;

					if (tsk_used_reg->alg_result_reg.right_result<TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
						dsp_used_reg.policy_reg.last_try_eye += TSK_ALGORITHM_FLAG_RIGHTEYE;

					if ((tsk_used_reg->alg_result_reg.left_result==TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
						&&(tsk_used_reg->alg_result_reg.right_result==TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
					dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_NOEYE;
				}
					
			} // end of Ë«Ä¿Í¬Ê±ÓÐÐ§
			else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_EITHER_ACTIVE)
			{
				//if (dsp_used_reg.policy_reg.last_try_eye==TSK_ALGORITHM_FLAG_NOEYE)
				{
					if ((tsk_used_reg->alg_result_reg.left_result<TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
						&&(tsk_used_reg->alg_result_reg.right_result<TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
						dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_LEFTEYE + TSK_ALGORITHM_FLAG_RIGHTEYE;
					else
					dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_NOEYE;
				}
				
			} // end of ÈÎÒâÒ»Ö»ÑÛ¾¦ÓÐÐ§

		} // end of search for the required eye image
	} // end of in iden process

	return dsp_used_reg.policy_reg.last_try_eye;
} // end of FindIdenRequiredEye

int FindEnrollRequiredEye ()
{
	//1.²éÑ¯ÊÇ·ñÒÑÓÐ½á¹û
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// ÈçÒÑÓÐ½á¹ûÔò²»ÐèÒª×öÈÎºÎ´¦Àí£¬µÈ´ý½á¹ûÈ¡×ß¼´¿É
		return TSK_ALGORITHM_FLAG_NOEYE;
	}

	if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
			||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
	{
		// µ±Ç°ÊÇ×¢²á×´Ì¬
		// 2.²éÑ¯×¢²á²ßÂÔ
		GetPolicy(POLICY_ENROLL);

			// ¸ù¾Ý²ßÂÔ²»Í¬£¬ÏÈÅÐ¶Ï×¢²áÊÇ·ñÒÑÍ¨¹ý
			// ÈçÎ´Í¨¹ý£¬ÅÐ¶Ïµ±Ç°Ó¦´¦ÀíÄÄÖÖÍ¼Ïñ
			if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_LEFT_ACTIVE)
			{
				if (tsk_used_reg->alg_result_reg.left_result<dsp_used_reg.policy_reg.iden_count)
				{
					if (dsp_used_reg.policy_reg.last_try_eye==TSK_ALGORITHM_FLAG_NOEYE)
						dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_LEFTEYE;
					/*else
						dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_NOEYE;
						*/
				}
			} // end of ×óÑÛÓÐÐ§
			else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_RIGHT_ACTIVE)
			{
				if (tsk_used_reg->alg_result_reg.right_result<dsp_used_reg.policy_reg.iden_count)
				{
					if (dsp_used_reg.policy_reg.last_try_eye==TSK_ALGORITHM_FLAG_NOEYE)
						dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_RIGHTEYE;
					/*else
						dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_NOEYE;
						*/
				}
			} // end of ÓÒÑÛÓÐÐ§
			else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_ALL_ACTIVE)
			{
				if (dsp_used_reg.policy_reg.last_try_eye==TSK_ALGORITHM_FLAG_NOEYE)
				{
					if (tsk_used_reg->alg_result_reg.left_result<dsp_used_reg.policy_reg.iden_count)
						dsp_used_reg.policy_reg.last_try_eye += TSK_ALGORITHM_FLAG_LEFTEYE;
					if (tsk_used_reg->alg_result_reg.right_result<dsp_used_reg.policy_reg.iden_count)
						dsp_used_reg.policy_reg.last_try_eye += TSK_ALGORITHM_FLAG_RIGHTEYE;

					if ((tsk_used_reg->alg_result_reg.left_result==dsp_used_reg.policy_reg.iden_count)
						&&(tsk_used_reg->alg_result_reg.right_result==dsp_used_reg.policy_reg.iden_count))
						dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_NOEYE;

				}
			} // end of Ë«Ä¿Í¬Ê±ÓÐÐ§
			else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_EITHER_ACTIVE)
			{
				if (dsp_used_reg.policy_reg.last_try_eye==TSK_ALGORITHM_FLAG_NOEYE)
				{
					if (tsk_used_reg->alg_result_reg.left_result<dsp_used_reg.policy_reg.iden_count)
						dsp_used_reg.policy_reg.last_try_eye += TSK_ALGORITHM_FLAG_LEFTEYE;
					if (tsk_used_reg->alg_result_reg.right_result<dsp_used_reg.policy_reg.iden_count)
						dsp_used_reg.policy_reg.last_try_eye += TSK_ALGORITHM_FLAG_RIGHTEYE;

					if ((tsk_used_reg->alg_result_reg.left_result==dsp_used_reg.policy_reg.iden_count)
						||(tsk_used_reg->alg_result_reg.right_result==dsp_used_reg.policy_reg.iden_count))
						dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_NOEYE;
				}
			} // end of ½öÒ»Ö»ÑÛ¾¦ÓÐÐ§

	} // end of in enroll process

	return dsp_used_reg.policy_reg.last_try_eye;
}

// ¸ù¾Ýµ±Ç°ÒÑÓÐ½á¹û£¬ÅÐ¶Ï²Ù×÷ÊÇ·ñÒÑ½áÊø£¬³É¹¦»¹ÊÇÊ§°Ü
void ProcessIdenResult (dsp_procimg_t* procimg_reg)
{
	int  left_success, right_success;
	Bool ifSuccess = FALSE;

	//1.²éÑ¯ÊÇ·ñÒÑÓÐ½á¹û
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// ÈçÒÑÓÐ½á¹ûÔò²»ÐèÒª×öÈÎºÎ´¦Àí£¬µÈ´ý½á¹ûÈ¡×ß¼´¿É
		return ;
	}

	dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_NOEYE;

	if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
	{
		// µ±Ç°ÊÇÊ¶±ð×´Ì¬
		//2.²éÑ¯Ê¶±ð²ßÂÔ
		GetPolicy(POLICY_IDENTIFY);

		//3.²éÑ¯ÒÑ¾­Ê¶±ð´ÎÊý

			// ¸ù¾Ý²ßÂÔ²»Í¬£¬ÏÈÅÐ¶ÏÊ¶±ðÊÇ·ñÒÑÍ¨¹ý
			// ÈçÎ´Í¨¹ý£¬ÅÐ¶Ïµ±Ç°Ó¦´¦ÀíÄÄÖÖÍ¼Ïñ
			if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_LEFT_ACTIVE)
			{
				// ×óÑÛÓÐÐ§
				if (tsk_used_reg->alg_result_reg.left_result>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
				{
					// Ê¶±ð³É¹¦
					ifSuccess = TRUE;

					StopIdentify();

					SetIdenResult(TSK_ALGORITHM_RESULT_IDEN_SUCCESS,
								  TSK_ALGORITHM_RESULT_IDEN_INVALID,
								  procimg_reg->feature_tag);

				}
			} // end of ×óÑÛÓÐÐ§
			else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_RIGHT_ACTIVE)
			{
				if (tsk_used_reg->alg_result_reg.right_result>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
				{
					// Ê¶±ð³É¹¦
					ifSuccess = TRUE;

					StopIdentify();

					SetIdenResult(TSK_ALGORITHM_RESULT_IDEN_INVALID,
								  TSK_ALGORITHM_RESULT_IDEN_SUCCESS,
								  procimg_reg->feature_tag);

				}
			} // end of ÓÒÑÛÓÐÐ§
			else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_ALL_ACTIVE)
			{
				if ((tsk_used_reg->alg_result_reg.left_result>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
					&&(tsk_used_reg->alg_result_reg.right_result>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
				{
					// Ê¶±ð³É¹¦
					ifSuccess = TRUE;

					StopIdentify();

					SetIdenResult(TSK_ALGORITHM_RESULT_IDEN_SUCCESS,
								  TSK_ALGORITHM_RESULT_IDEN_SUCCESS,
								  procimg_reg->feature_tag);
				}
			} // end of Ë«Ä¿Í¬Ê±ÓÐÐ§
			else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_EITHER_ACTIVE)
			{
				if (tsk_used_reg->alg_result_reg.left_result>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
					left_success = TSK_ALGORITHM_RESULT_IDEN_SUCCESS;
				else
					left_success = TSK_ALGORITHM_RESULT_IDEN_FALSE;

				if (tsk_used_reg->alg_result_reg.right_result>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
					right_success = TSK_ALGORITHM_RESULT_IDEN_SUCCESS;
				else
					right_success = TSK_ALGORITHM_RESULT_IDEN_FALSE;

				if ((left_success==TSK_ALGORITHM_RESULT_IDEN_SUCCESS)
					||(right_success==TSK_ALGORITHM_RESULT_IDEN_SUCCESS))
				{
					// Ê¶±ð³É¹¦
					ifSuccess = TRUE;

					StopIdentify();

					SetIdenResult(left_success, right_success,
								  procimg_reg->feature_tag);
				}
			} // end of ÈÎÒâÒ»Ö»ÑÛ¾¦ÓÐÐ§

			// ÒÑ¾­µ½Ê¶±ð´ÎÊýÏÞÖÆ£¬Ó¦¸ø³öÊ¶±ðÊ§°ÜµÄ½á¹û
			if ((dsp_used_reg.policy_reg.cur_try_count>=dsp_used_reg.policy_reg.iden_count)
				&&(ifSuccess == FALSE))
			{
				StopIdentify();

				SetIdenResult(TSK_ALGORITHM_RESULT_IDEN_FALSE, 
							  TSK_ALGORITHM_RESULT_IDEN_FALSE,
							  procimg_reg->feature_tag);

			}

	} // end of in iden

	dbg_output("process iden result over\n");
} // end of process iden result


// ¸ù¾Ýµ±Ç°ÒÑÓÐ½á¹û£¬ÅÐ¶Ï²Ù×÷ÊÇ·ñÒÑ½áÊø£¬³É¹¦»¹ÊÇÊ§°Ü
void ProcessEnrollResult (dsp_procimg_t* procimg_reg)
{
	int left_success, right_success;

	//1.²éÑ¯ÊÇ·ñÒÑÓÐ½á¹û
	if (tsk_used_reg->alg_result_reg.result_type != TSK_ALGORITHM_RESULT_TYPE_NULL)
	{
		// ÈçÒÑÓÐ½á¹ûÔò²»ÐèÒª×öÈÎºÎ´¦Àí£¬µÈ´ý½á¹ûÈ¡×ß¼´¿É
		return ;
	}

	dsp_used_reg.policy_reg.last_try_eye = TSK_ALGORITHM_FLAG_NOEYE;

	if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
		||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
	{
		// µ±Ç°ÊÇ×¢²á×´Ì¬
		// 2.²éÑ¯×¢²á²ßÂÔ
		GetPolicy(POLICY_ENROLL);

			// ¸ù¾Ý²ßÂÔ²»Í¬£¬ÏÈÅÐ¶Ï×¢²áÊÇ·ñÒÑÍê³É
			// ÈçÎ´Í¨¹ý£¬ÅÐ¶Ïµ±Ç°¸Ã×¢²áÄÄÖ»ÑÛ¾¦
			if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_LEFT_ACTIVE)
			{
				if (tsk_used_reg->alg_result_reg.left_result>=dsp_used_reg.policy_reg.iden_count)
				{
					// ×¢²á³É¹¦
					StopEnroll();

					SetEnrollResult(procimg_reg, dsp_used_reg.policy_reg.iden_count, 0);

				}
			} // end of ×óÑÛÓÐÐ§
			else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_RIGHT_ACTIVE)
			{
				if (tsk_used_reg->alg_result_reg.right_result>=dsp_used_reg.policy_reg.iden_count)
				{
					// ×¢²á³É¹¦
					StopEnroll();

					SetEnrollResult(procimg_reg, 0, dsp_used_reg.policy_reg.iden_count);

				}
			} // end of ÓÒÑÛÓÐÐ§
			else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_ALL_ACTIVE)
			{
				if ((tsk_used_reg->alg_result_reg.left_result>=dsp_used_reg.policy_reg.iden_count)
					&& (tsk_used_reg->alg_result_reg.right_result>=dsp_used_reg.policy_reg.iden_count))
				{
					// ×¢²á³É¹¦
					StopEnroll();

					SetEnrollResult(procimg_reg, dsp_used_reg.policy_reg.iden_count, dsp_used_reg.policy_reg.iden_count);

				}
			} // end of Ë«Ä¿Í¬Ê±ÓÐÐ§
			else if ((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_EITHER_ACTIVE)
			{
				if ((tsk_used_reg->alg_result_reg.left_result>=dsp_used_reg.policy_reg.iden_count)
					|| (tsk_used_reg->alg_result_reg.right_result>=dsp_used_reg.policy_reg.iden_count))
				{
					// ×¢²á³É¹¦
					StopEnroll();

					if (tsk_used_reg->alg_result_reg.left_result>=dsp_used_reg.policy_reg.iden_count)
						left_success = dsp_used_reg.policy_reg.iden_count;
					else
						left_success = 0;

					if (tsk_used_reg->alg_result_reg.right_result>=dsp_used_reg.policy_reg.iden_count)
						right_success = dsp_used_reg.policy_reg.iden_count;
					else
						right_success = 0;

					SetEnrollResult(procimg_reg, left_success, right_success);

				}
			} // end of ½öÒ»Ö»ÑÛ¾¦ÓÐÐ§

	} // end of in enroll process

	dbg_output("process enroll result over\n");

} // end of process enroll result
