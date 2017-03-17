// Project->Build Options->Compiler->Perprocessor->Per-Define Symbol->ALG_V2

#include <std.h>
#include <csl.h>
#include <csl_cache.h>

#include "dbg_printf.h"
#include "dsp_memory.h"
#include "..\..\include\CASIA_Gen.h"

extern IrisImageInfo	left_imginfo[IR_EnrollTime];	// added at 20101011
extern IrisImageInfo	right_imginfo[IR_EnrollTime];	// added at 20101011

// 根据注册策略之不同，注册结果可能如下：
// 1.只注册左眼，则只有左眼特征及图像
// 2.只注册右眼，则只有右眼特征及图像
// 3.双眼同时，则左右眼特征及图像均有
// 4.任意一眼，则若某只眼睛先达到注册要求，则只有这只眼的特征及图像
//               若双眼同时达到注册要求，则有双眼的特征和图像

// modified by yqhe, 20080319
// 增加普通注册方式，修改严格注册方式
// 普通注册方式下，这锊挥眯薷?
// 严格注册方式下，要根据每幅图像的质量因子，保留质量最好的两幅图像
// 设置注册结果

// modified by yqhe, 20080320
// 根据注册策略，决定copy哪些内容并提供给ARM
 #ifdef ALG_V2

// added at 20101023
// for algorithm-v2, has different enroll struct
// 把注册结果放到与ARM约定的位置
void set_enroll_result (Uint32 *base_addr, 
						Uint32 enroll_fea_addr, 
						Uint32 img_addr, 
						Uint32 rotate_fea_addr, 
						pIrisImageInfo p_imgInfo,
						int eye)
{
	Uint32 addr;
	Uint32 off;
	unsigned char*		src_data				= NULL;
	unsigned char*		dest_data				= NULL;
	dsp_byte_data_t* 	enroll_result			= NULL;
	dsp_eye_feature_t*  result_info	= NULL;

	addr = *base_addr;
	off	 = 0;

	addr_align(&addr, off);

	result_info = (dsp_eye_feature_t*)(addr);
	result_info->eye_flag = eye;

	src_data = (unsigned char*)(enroll_fea_addr);

	{
		result_info->loc.pos_pupil.col		= (int)(p_imgInfo->pupilCol);
		result_info->loc.pos_pupil.row 		= (int)(p_imgInfo->pupilRow);
		result_info->loc.pos_pupil.radius 	= (int)(p_imgInfo->pupilRadius);
		result_info->loc.pos_pupil.visible_percent
											= (int)p_imgInfo->pupilVisiblePercent;
		result_info->loc.pos_iris.col  		= (int)(p_imgInfo->irisCol);
		result_info->loc.pos_iris.row  		= (int)(p_imgInfo->irisRow);
		result_info->loc.pos_iris.radius  	= (int)(p_imgInfo->irisRadius);
		result_info->loc.pos_iris.visible_percent
											= (int)p_imgInfo->irisVisiblePercent;
	}

	// 注册特征
	off = ENROLL_FEATURE_STRUCT_OFFSET;
	addr_align(&addr, off);
	enroll_result = (dsp_byte_data_t*)(addr);

	enroll_result->data_len  = IR_FeatureLength;

	off = 4;
	addr_align(&addr, off);
	dest_data = (unsigned char*)(addr);

	memcpy(dest_data, src_data, IR_FeatureLength);

	// 注册图像
	off = IR_FeatureLength;
	addr_align(&addr, off);

	enroll_result = (dsp_byte_data_t*)(addr);
	enroll_result->data_len = IMG_TEST_SIZE + BMP_TOTALHEAD_LEN;

	// fill the bmp file head
	off = sizeof(enroll_result->data_len);
	addr_align(&addr, off);
	FillBmpHeader (addr, ImW, ImH);

	// fill the bmp data
	src_data = (unsigned char*)(img_addr);

	off = BMP_TOTALHEAD_LEN;
	addr_align(&addr, off);
	dest_data = (unsigned char*)(addr);

	memcpy(dest_data, src_data, IMG_TEST_SIZE);

	// 旋转特征
	off = IMG_TEST_SIZE;
	addr_align(&addr, off);

	enroll_result = (dsp_byte_data_t*)(addr);

	if (rotate_fea_addr==0)
	{
		enroll_result->data_len = 0;
		enroll_result->data_byte = 0;

		off = 4;
	}
	else
	{
		enroll_result->data_len = IR_RotateFeatureLength;

		src_data = (unsigned char*)(rotate_fea_addr);

		off = 4;
		addr_align(&addr, off);
		dest_data = (unsigned char*)(addr);

		memcpy(dest_data, src_data, IR_RotateFeatureLength);

		off = enroll_result->data_len;
	}

	addr_align(&addr, off);
	*base_addr = addr;
}

void copy_enroll_result(Uint32 *start_addr, Uint32 *end_addr)
{
	Bool	if_send_rotate = FALSE;	// COPY数据中，是否包括旋转特征

	Int 	i, off;
	Int		left_count, right_count;

	Uint32	addr;
	Uint32	single_enroll_result_len = 0;
	Uint32	fea_addr, img_addr, rotate_addr;

	left_count  = dsp_used_reg.result_reg.count[LEFT_EYE-1];
	right_count = dsp_used_reg.result_reg.count[RIGHT_EYE-1];

	// 注册结果个数，更换了保存位置？？注意
	// left_count = (send_enroll_result->result_count >> 8)&0x0f;
	// right_count= (send_enroll_result->result_count)&0x0f;

	single_enroll_result_len = ENROLL_RESULT_MAX_LEN;

	if ((dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_CLUSTER)
		&&((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_FEATURE)!=0))
			if_send_rotate = TRUE;

	off = 0;
	addr = *start_addr;
	addr_align(&addr, off);
	*start_addr = addr;

	// 左眼
	if (left_count>=dsp_used_reg.policy_reg.iden_count)
	{
		for (i=0; i<dsp_used_reg.policy_reg.iden_count; i++)
		{
			fea_addr = FEATURE_ENROLL_LEFT+IR_FeatureLength*i;
			img_addr = ENROLL_LEFT_STRUCT_ADDR1 \
						+ single_enroll_result_len*i \
						+ ENROLL_IMAGE_DATA_OFFSET;						
			if (if_send_rotate==TRUE)
				rotate_addr = FEATURE_MATCH_LEFT+IR_RotateFeatureLength*i;
			else
				rotate_addr = 0;
			set_enroll_result(&addr, fea_addr, img_addr, rotate_addr, 
								&left_imginfo[i], TSK_ALGORITHM_FLAG_LEFTEYE);
		} // end of for(i<left_count)
	}

	// 右眼
	if (right_count>=dsp_used_reg.policy_reg.iden_count)
	{
		for (i=0; i<dsp_used_reg.policy_reg.iden_count; i++)
		{
			fea_addr = FEATURE_ENROLL_RIGHT+IR_FeatureLength*i;
			img_addr = ENROLL_RIGHT_STRUCT_ADDR1 \
						+ single_enroll_result_len*i \
						+ ENROLL_IMAGE_DATA_OFFSET;
			if (if_send_rotate==TRUE)
				rotate_addr = FEATURE_MATCH_RIGHT+IR_RotateFeatureLength*i;
			else
				rotate_addr = 0;
			set_enroll_result(&addr, fea_addr, img_addr, rotate_addr, 
								&right_imginfo[i], TSK_ALGORITHM_FLAG_RIGHTEYE);
		} // end of for(i<left_count)
	}

	*end_addr = addr;
}


void SetEnrollResult(dsp_procimg_t* procimg_reg)
{
	Uint32	addr, addr_end;
	int		left_count=0, right_count=0;
	dsp_enroll_result_t*  send_enroll_result = NULL;

	addr = 0;
	addr_end = 0;

	// 填写使用策略
	tsk_used_reg->alg_result_reg.policy.policy_flag 	= POLICY_ENROLL;
	tsk_used_reg->alg_result_reg.policy.policy_control  = dsp_used_reg.policy_reg.policy_control;
	tsk_used_reg->alg_result_reg.policy.try_count   	= dsp_used_reg.policy_reg.iden_count;
	tsk_used_reg->alg_result_reg.policy.iden_mode		= dsp_used_reg.policy_reg.iden_mode;
	tsk_used_reg->alg_result_reg.policy.data_type		= dsp_used_reg.policy_reg.data_type;

	// set feature tag
	tsk_used_reg->alg_result_reg.feature_tag			=  procimg_reg->feature_tag;

	// 如果注册个数没有达到预定值，则认为该虹膜未注册成功，注册个数设置为0
	if (dsp_used_reg.result_reg.count[LEFT_EYE-1]>=dsp_used_reg.policy_reg.iden_count)
		left_count  = dsp_used_reg.policy_reg.iden_count;

	if (dsp_used_reg.result_reg.count[RIGHT_EYE-1]>=dsp_used_reg.policy_reg.iden_count)
		right_count  = dsp_used_reg.policy_reg.iden_count;

	if ((left_count+right_count)>0)
	{
		addr = ENROLL_RESULT_ADDR;
		addr_align(&addr, 0);
		tsk_used_reg->alg_result_reg.result_data  = (void *)(addr);

		// 注册结果存储器
		send_enroll_result  = (dsp_enroll_result_t*)(addr); 

		addr += sizeof(dsp_result_data_header_t);
	}

	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_I_ENROLL)
		&&(dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_LOCAL))
	{
		// 测试注册后识别结果
		// 需要有识别结果后，再设置结果存储器为有结果状态
		IdenAfterEnroll(procimg_reg);

		// 有识别结果后再调用copy_enroll_result把结果COPY到应该的位置上
	}
	else
	{
		// 仅注册，不需要识别，或识别由集群服务完成
		// 可直接返回注册结果
		tsk_used_reg->alg_result_reg.left_result  = TSK_ALGORITHM_RESULT_IDEN_INVALID;
		tsk_used_reg->alg_result_reg.right_result = TSK_ALGORITHM_RESULT_IDEN_INVALID;

		dsp_used_reg.status_reg.tsk_alg_status 	  = TSK_ALGORITHM_STATUS_IDLE;

		if (addr!=0)
		 	copy_enroll_result(&addr, &addr_end);

		// 恢复实际注册图像数
		send_enroll_result->header.result_count = 0;
		if (left_count>=dsp_used_reg.policy_reg.iden_count)
			send_enroll_result->header.result_count += dsp_used_reg.policy_reg.iden_count;
		if (right_count>=dsp_used_reg.policy_reg.iden_count)
			send_enroll_result->header.result_count += dsp_used_reg.policy_reg.iden_count;

		send_enroll_result->header.result_byte_len	= addr_end - addr;
		send_enroll_result->header.result_chksum	= get_checksum((Uint16 *)addr, send_enroll_result->header.result_byte_len);
		send_enroll_result->header.algorithm_version= CUR_ALG_VERSION;

		CACHE_flush(CACHE_L2ALL, 0, 0);

		tsk_used_reg->alg_result_reg.result_type  = TSK_ALGORITHM_RESULT_TYPE_ENROLL;

	}

}

// 1.左眼有无注册图像，无，则设置左眼结果为INVALID
// 2.有，则依次取出图像用于识别，如有>0的结果，则左眼结束，搜寻右眼
// 3.右眼有无注册图像，无，则设置右眼结果为INVALID，识别结束
// 4.有，则依次取出图像用于识别，如有>0的结果，则右眼结束，识别结束
// 5.识别结束后，注意设置注册结果为有效
void ProcessEnrollIdenResult (dsp_procimg_t* procimg_reg)
{
	Uint32 addr, addr_end;
	Int	   left_count, right_count;
	dsp_enroll_result_t*  send_enroll_result = NULL;

	addr = ENROLL_RESULT_ADDR;
	addr_align(&addr, 0);

	// 注册结果存储器
	send_enroll_result  = (dsp_enroll_result_t*)(addr); 

	left_count  = dsp_used_reg.result_reg.count[LEFT_EYE-1];
	right_count = dsp_used_reg.result_reg.count[RIGHT_EYE-1];

	send_enroll_result->header.result_byte_len 	  = 0;

	addr += sizeof(dsp_result_data_header_t);

	// 写入注册结果
	if ((left_count+right_count)>0)
	{
		copy_enroll_result(&addr, &addr_end);

		send_enroll_result->header.result_byte_len	= addr_end - addr;
		send_enroll_result->header.result_chksum	= get_checksum((Uint16 *)addr, send_enroll_result->header.result_byte_len);
		send_enroll_result->header.algorithm_version= CUR_ALG_VERSION;
	}

	// 恢复实际注册图像数
	send_enroll_result->header.result_count = 0;
	if (left_count>=dsp_used_reg.policy_reg.iden_count)
		send_enroll_result->header.result_count += dsp_used_reg.policy_reg.iden_count;
	if (right_count>=dsp_used_reg.policy_reg.iden_count)
		send_enroll_result->header.result_count += dsp_used_reg.policy_reg.iden_count;

	if (dsp_used_reg.result_reg.result[LEFT_EYE-1]<0)
		tsk_used_reg->alg_result_reg.left_result = TSK_ALGORITHM_RESULT_IDEN_FALSE;
	else
		tsk_used_reg->alg_result_reg.left_result = dsp_used_reg.result_reg.result[LEFT_EYE-1];

	if (dsp_used_reg.result_reg.result[RIGHT_EYE-1]<0)
		tsk_used_reg->alg_result_reg.right_result = TSK_ALGORITHM_RESULT_IDEN_FALSE;
	else
		tsk_used_reg->alg_result_reg.right_result = dsp_used_reg.result_reg.result[RIGHT_EYE-1];

	dsp_used_reg.status_reg.tsk_alg_status 		= TSK_ALGORITHM_STATUS_IDLE;

	CACHE_flush(CACHE_L2ALL, 0, 0);

	tsk_used_reg->alg_result_reg.result_type  	= TSK_ALGORITHM_RESULT_TYPE_ENROLL;

	return;
}

// *base_addr -- 输入参数：需要写入结果的起始地址
//               输出参数：结果写入完毕的结束地址
// img_addr -- 此结果对应的应COPY的原始图像地址
// rotate_fea_addr -- 此结果对应的应COPY的旋转特征地址
// eye -- 此结果对应的是哪只眼睛
void set_iden_result (Uint32 *base_addr, Uint32 img_addr, Uint32 rotate_fea_addr, int eye)
{
	Uint32 addr;
	Uint32 off;
	unsigned char*		src_data	= NULL;
	unsigned char*		dest_data	= NULL;
	dsp_byte_data_t* 	iden_result	= NULL;
	dsp_eye_feature_t*  result_info	= NULL;

	addr = *base_addr;
	off	 = 0;

		if (dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_CLUSTER)
		{
			addr_align(&addr, off);

			result_info = (dsp_eye_feature_t*)(addr);
			result_info->eye_flag = eye;
			// 此信息中没有定位值
			memset(result_info->loc, 0, sizeof(result_info->loc));

			// 注册特征(without enroll feature)
			off = ENROLL_FEATURE_STRUCT_OFFSET;
			addr_align(&addr, off);
			iden_result = (dsp_byte_data_t*)(addr);

			iden_result->data_len  = 0;
			iden_result->data_byte = 0;
			off = 4;

			// if the image data should be copy
			addr_align(&addr, off);
			iden_result = (dsp_byte_data_t*)(addr);

			// moidified at 20090909, there need to save image under the cluser idenmode
			//if ((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_IMAGE)!=0)
			{
				off = 4;
				iden_result->data_len = IMG_TEST_SIZE + BMP_TOTALHEAD_LEN;

				// fill the bmp file head
				addr_align(&addr, off);
				FillBmpHeader (addr, ImW, ImH);

				off = BMP_TOTALHEAD_LEN;

				src_data = (unsigned char*)(img_addr);

				addr_align(&addr, off);
				dest_data = (unsigned char*)(addr);

				memcpy(dest_data, src_data, IMG_TEST_SIZE);

				off = IMG_TEST_SIZE;

			}

			// if the match feature data should be copy
			addr_align(&addr, off);
			iden_result = (dsp_byte_data_t*)(addr);
			
			if ((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_FEATURE)!=0)
			{
				off = 4;
				iden_result->data_len = IR_RotateFeatureLength;
				src_data = (unsigned char*)(rotate_fea_addr);
				addr_align(&addr, off);
				dest_data = (unsigned char*)(addr);
				memcpy(dest_data, src_data, IR_RotateFeatureLength);
				off = iden_result->data_len;
			}
			else
			{
				iden_result->data_len = 0;
				iden_result->data_byte = 0;
				off = 4; //sizeof(dsp_byte_data_t);
			}
		} // end of IDENMODE_CLUSTER
		else
		{
			// added at 20090902, yqhe
			// save all iden image
			addr_align(&addr, off);

			result_info = (dsp_eye_feature_t*)(addr);
			result_info->eye_flag = eye;
			// 此信息中没有定位值
			memset(result_info->loc, 0, sizeof(result_info->loc));

			// 注册特征(without enroll feature)
			off = ENROLL_FEATURE_STRUCT_OFFSET;
			addr_align(&addr, off);
			iden_result = (dsp_byte_data_t*)(addr);

			iden_result->data_len  = 0;
			iden_result->data_byte = 0;
			off = 4;

			// if the image data should be copy
			addr_align(&addr, off);
			iden_result = (dsp_byte_data_t*)(addr);

			off = 4;
			iden_result->data_len = IMG_TEST_SIZE + BMP_TOTALHEAD_LEN;
			// fill the bmp file head
			addr_align(&addr, off);
			FillBmpHeader (addr, ImW, ImH);

			off = BMP_TOTALHEAD_LEN;

			src_data = (unsigned char*)(img_addr);

			addr_align(&addr, off);
			dest_data = (unsigned char*)(addr);

			memcpy(dest_data, src_data, IMG_TEST_SIZE);

			off = IMG_TEST_SIZE;

			addr_align(&addr, off);
			iden_result = (dsp_byte_data_t*)(addr);

				iden_result->data_len = 0;
				iden_result->data_byte = 0;
				off = 4; //sizeof(dsp_byte_data_t);

		}

	addr_align(&addr, off);
	*base_addr = addr;

}

// modified by yqhe, 20080320
// 根据识别策略，决定copy哪些内容并提供给ARM
// modified by yqhe, 20080415
// _tag在识别结果的结构中提供
void SetIdenResult (unsigned int feature_tag)
{
	dsp_enroll_result_t*  send_iden_result	 = NULL;

	Uint32				addr_result, addr_data, addr_end;
	Uint32				off;
	Uint32				result_count	 = 0;
	int					left, right;

	// 填写使用策略
	tsk_used_reg->alg_result_reg.policy.policy_flag 	= POLICY_IDENTIFY;
	tsk_used_reg->alg_result_reg.policy.policy_control  = dsp_used_reg.policy_reg.policy_control;
	tsk_used_reg->alg_result_reg.policy.try_count   	= dsp_used_reg.policy_reg.iden_count;
	tsk_used_reg->alg_result_reg.policy.iden_mode		= dsp_used_reg.policy_reg.iden_mode;
	tsk_used_reg->alg_result_reg.policy.data_type		= dsp_used_reg.policy_reg.data_type;

	// set feature tag
	tsk_used_reg->alg_result_reg.feature_tag			= feature_tag;

	off = 0;
	addr_data = ENROLL_RESULT_ADDR;
	addr_data += sizeof(dsp_enroll_result_t) - sizeof(dsp_eye_feature_t);
	addr_align(&addr_data, off);

	addr_end = addr_data;

	left  = dsp_used_reg.result_reg.result[LEFT_EYE-1];
	right = dsp_used_reg.result_reg.result[RIGHT_EYE-1];

	// 左眼结果
	// failed idenfication, save the images
	if ((left>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)||(left==TSK_ALGORITHM_RESULT_IDEN_FALSE))
	{
		result_count++;
		set_iden_result(&addr_end, (ENROLL_LEFT_STRUCT_ADDR1 + ENROLL_IMAGE_DATA_OFFSET), 
						FEATURE_MATCH_LEFT, TSK_ALGORITHM_FLAG_LEFTEYE);
	} // end of left result = success

	tsk_used_reg->alg_result_reg.left_result = left;

	// 右眼结果
	// failed idenfication, save the images
	if ((right>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)||(right==TSK_ALGORITHM_RESULT_IDEN_FALSE))
	{
		result_count++;
		set_iden_result(&addr_end, (ENROLL_RIGHT_STRUCT_ADDR1 + ENROLL_IMAGE_DATA_OFFSET), 
					FEATURE_MATCH_RIGHT, TSK_ALGORITHM_FLAG_RIGHTEYE);
	}

	tsk_used_reg->alg_result_reg.right_result = right;

	// 识别结果存储器
	addr_result = ENROLL_RESULT_ADDR;
	addr_align(&addr_result, 0);
	send_iden_result  = (dsp_enroll_result_t*)(addr_result); 

	// modified at 20090909, failed image should also be saved
	if (result_count>0)
	{
		tsk_used_reg->alg_result_reg.result_data	= (void*)(addr_result);
		send_iden_result->header.result_count		= result_count;
		send_iden_result->header.result_byte_len	= addr_end-addr_data;
		send_iden_result->header.result_chksum		= get_checksum((Uint16 *)addr_data, send_iden_result->header.result_byte_len);
		send_iden_result->header.algorithm_version	= CUR_ALG_VERSION;
	}

	dsp_used_reg.status_reg.tsk_alg_status 		  = TSK_ALGORITHM_STATUS_IDLE;

	// 不需要ARM访问片外空间，地址设置为0
	// tsk_used_reg->alg_result_reg.result_data				 = 0;

	CACHE_flush(CACHE_L2ALL, 0, 0);

	tsk_used_reg->alg_result_reg.result_type       		 	 = TSK_ALGORITHM_RESULT_TYPE_IDEN;

} 

#endif
