// Project->Build Options->Compiler->Perprocessor->Per-Define Symbol->ALG_V2

#include <std.h>
#include <csl.h>
#include <csl_cache.h>

#include "dbg_printf.h"
#include "dsp_memory.h"
#include "..\..\include\CASIA_Gen.h"

extern IrisImageInfo	left_imginfo[IR_EnrollTime];	// added at 20101011
extern IrisImageInfo	right_imginfo[IR_EnrollTime];	// added at 20101011

// ����ע�����֮��ͬ��ע�����������£�
// 1.ֻע�����ۣ���ֻ������������ͼ��
// 2.ֻע�����ۣ���ֻ������������ͼ��
// 3.˫��ͬʱ����������������ͼ�����
// 4.����һ�ۣ�����ĳֻ�۾��ȴﵽע��Ҫ����ֻ����ֻ�۵�������ͼ��
//               ��˫��ͬʱ�ﵽע��Ҫ������˫�۵�������ͼ��

// modified by yqhe, 20080319
// ������ͨע�᷽ʽ���޸��ϸ�ע�᷽ʽ
// ��ͨע�᷽ʽ�£���ﲻ���޸?
// �ϸ�ע�᷽ʽ�£�Ҫ����ÿ��ͼ����������ӣ�����������õ�����ͼ��
// ����ע����

// modified by yqhe, 20080320
// ����ע����ԣ�����copy��Щ���ݲ��ṩ��ARM
 #ifdef ALG_V2

// added at 20101023
// for algorithm-v2, has different enroll struct
// ��ע�����ŵ���ARMԼ����λ��
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

	// ע������
	off = ENROLL_FEATURE_STRUCT_OFFSET;
	addr_align(&addr, off);
	enroll_result = (dsp_byte_data_t*)(addr);

	enroll_result->data_len  = IR_FeatureLength;

	off = 4;
	addr_align(&addr, off);
	dest_data = (unsigned char*)(addr);

	memcpy(dest_data, src_data, IR_FeatureLength);

	// ע��ͼ��
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

	// ��ת����
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
	Bool	if_send_rotate = FALSE;	// COPY�����У��Ƿ������ת����

	Int 	i, off;
	Int		left_count, right_count;

	Uint32	addr;
	Uint32	single_enroll_result_len = 0;
	Uint32	fea_addr, img_addr, rotate_addr;

	left_count  = dsp_used_reg.result_reg.count[LEFT_EYE-1];
	right_count = dsp_used_reg.result_reg.count[RIGHT_EYE-1];

	// ע���������������˱���λ�ã���ע��
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

	// ����
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

	// ����
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

	// ��дʹ�ò���
	tsk_used_reg->alg_result_reg.policy.policy_flag 	= POLICY_ENROLL;
	tsk_used_reg->alg_result_reg.policy.policy_control  = dsp_used_reg.policy_reg.policy_control;
	tsk_used_reg->alg_result_reg.policy.try_count   	= dsp_used_reg.policy_reg.iden_count;
	tsk_used_reg->alg_result_reg.policy.iden_mode		= dsp_used_reg.policy_reg.iden_mode;
	tsk_used_reg->alg_result_reg.policy.data_type		= dsp_used_reg.policy_reg.data_type;

	// set feature tag
	tsk_used_reg->alg_result_reg.feature_tag			=  procimg_reg->feature_tag;

	// ���ע�����û�дﵽԤ��ֵ������Ϊ�ú�Ĥδע��ɹ���ע���������Ϊ0
	if (dsp_used_reg.result_reg.count[LEFT_EYE-1]>=dsp_used_reg.policy_reg.iden_count)
		left_count  = dsp_used_reg.policy_reg.iden_count;

	if (dsp_used_reg.result_reg.count[RIGHT_EYE-1]>=dsp_used_reg.policy_reg.iden_count)
		right_count  = dsp_used_reg.policy_reg.iden_count;

	if ((left_count+right_count)>0)
	{
		addr = ENROLL_RESULT_ADDR;
		addr_align(&addr, 0);
		tsk_used_reg->alg_result_reg.result_data  = (void *)(addr);

		// ע�����洢��
		send_enroll_result  = (dsp_enroll_result_t*)(addr); 

		addr += sizeof(dsp_result_data_header_t);
	}

	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_I_ENROLL)
		&&(dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_LOCAL))
	{
		// ����ע���ʶ����
		// ��Ҫ��ʶ�����������ý���洢��Ϊ�н��״̬
		IdenAfterEnroll(procimg_reg);

		// ��ʶ�������ٵ���copy_enroll_result�ѽ��COPY��Ӧ�õ�λ����
	}
	else
	{
		// ��ע�ᣬ����Ҫʶ�𣬻�ʶ���ɼ�Ⱥ�������
		// ��ֱ�ӷ���ע����
		tsk_used_reg->alg_result_reg.left_result  = TSK_ALGORITHM_RESULT_IDEN_INVALID;
		tsk_used_reg->alg_result_reg.right_result = TSK_ALGORITHM_RESULT_IDEN_INVALID;

		dsp_used_reg.status_reg.tsk_alg_status 	  = TSK_ALGORITHM_STATUS_IDLE;

		if (addr!=0)
		 	copy_enroll_result(&addr, &addr_end);

		// �ָ�ʵ��ע��ͼ����
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

// 1.��������ע��ͼ���ޣ����������۽��ΪINVALID
// 2.�У�������ȡ��ͼ������ʶ������>0�Ľ���������۽�������Ѱ����
// 3.��������ע��ͼ���ޣ����������۽��ΪINVALID��ʶ�����
// 4.�У�������ȡ��ͼ������ʶ������>0�Ľ���������۽�����ʶ�����
// 5.ʶ�������ע������ע����Ϊ��Ч
void ProcessEnrollIdenResult (dsp_procimg_t* procimg_reg)
{
	Uint32 addr, addr_end;
	Int	   left_count, right_count;
	dsp_enroll_result_t*  send_enroll_result = NULL;

	addr = ENROLL_RESULT_ADDR;
	addr_align(&addr, 0);

	// ע�����洢��
	send_enroll_result  = (dsp_enroll_result_t*)(addr); 

	left_count  = dsp_used_reg.result_reg.count[LEFT_EYE-1];
	right_count = dsp_used_reg.result_reg.count[RIGHT_EYE-1];

	send_enroll_result->header.result_byte_len 	  = 0;

	addr += sizeof(dsp_result_data_header_t);

	// д��ע����
	if ((left_count+right_count)>0)
	{
		copy_enroll_result(&addr, &addr_end);

		send_enroll_result->header.result_byte_len	= addr_end - addr;
		send_enroll_result->header.result_chksum	= get_checksum((Uint16 *)addr, send_enroll_result->header.result_byte_len);
		send_enroll_result->header.algorithm_version= CUR_ALG_VERSION;
	}

	// �ָ�ʵ��ע��ͼ����
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

// *base_addr -- �����������Ҫд��������ʼ��ַ
//               ������������д����ϵĽ�����ַ
// img_addr -- �˽����Ӧ��ӦCOPY��ԭʼͼ���ַ
// rotate_fea_addr -- �˽����Ӧ��ӦCOPY����ת������ַ
// eye -- �˽����Ӧ������ֻ�۾�
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
			// ����Ϣ��û�ж�λֵ
			memset(result_info->loc, 0, sizeof(result_info->loc));

			// ע������(without enroll feature)
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
			// ����Ϣ��û�ж�λֵ
			memset(result_info->loc, 0, sizeof(result_info->loc));

			// ע������(without enroll feature)
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
// ����ʶ����ԣ�����copy��Щ���ݲ��ṩ��ARM
// modified by yqhe, 20080415
// _tag��ʶ�����Ľṹ���ṩ
void SetIdenResult (unsigned int feature_tag)
{
	dsp_enroll_result_t*  send_iden_result	 = NULL;

	Uint32				addr_result, addr_data, addr_end;
	Uint32				off;
	Uint32				result_count	 = 0;
	int					left, right;

	// ��дʹ�ò���
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

	// ���۽��
	// failed idenfication, save the images
	if ((left>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)||(left==TSK_ALGORITHM_RESULT_IDEN_FALSE))
	{
		result_count++;
		set_iden_result(&addr_end, (ENROLL_LEFT_STRUCT_ADDR1 + ENROLL_IMAGE_DATA_OFFSET), 
						FEATURE_MATCH_LEFT, TSK_ALGORITHM_FLAG_LEFTEYE);
	} // end of left result = success

	tsk_used_reg->alg_result_reg.left_result = left;

	// ���۽��
	// failed idenfication, save the images
	if ((right>=TSK_ALGORITHM_RESULT_IDEN_SUCCESS)||(right==TSK_ALGORITHM_RESULT_IDEN_FALSE))
	{
		result_count++;
		set_iden_result(&addr_end, (ENROLL_RIGHT_STRUCT_ADDR1 + ENROLL_IMAGE_DATA_OFFSET), 
					FEATURE_MATCH_RIGHT, TSK_ALGORITHM_FLAG_RIGHTEYE);
	}

	tsk_used_reg->alg_result_reg.right_result = right;

	// ʶ�����洢��
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

	// ����ҪARM����Ƭ��ռ䣬��ַ����Ϊ0
	// tsk_used_reg->alg_result_reg.result_data				 = 0;

	CACHE_flush(CACHE_L2ALL, 0, 0);

	tsk_used_reg->alg_result_reg.result_type       		 	 = TSK_ALGORITHM_RESULT_TYPE_IDEN;

} 

#endif
