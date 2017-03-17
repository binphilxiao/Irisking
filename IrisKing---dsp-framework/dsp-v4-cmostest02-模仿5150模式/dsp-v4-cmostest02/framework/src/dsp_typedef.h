#if !defined(__DSP_TYPEDEF_H__)
#define __DSP_TYPEDEF_H__

#include "arm_dsp_data.h"

// modified by yqhe, 20080319
// 1.ע�᷽ʽ����һ������ע�᷽ʽ������Ϊ��ͨע��
// ��ǰ��ע�᷽ʽ����Ϊ�ϸ�ע��
// �ϸ�ע�᷽ʽ������ͼ������ƥ��ɹ��󣬱�������ͼ��
// ��ͨע�᷽ʽ������ͼ�񣬲���Ҫ����ƥ��ɹ���ֻҪ��������������
// 

// modified by yqhe, 20080320
// ����SDK�ڶ���ķ�ʽ�޸�DSP
// ����ʶ��ʽ������or��Ⱥ���Լ���Ӧ���޸�

// control flag

// tsk_img_control
#define TSK_IMAGE_ACTIVE_FLAG				1		// here has people before the device
#define TSK_IMAGE_IDLE_FLAG					2		// no people

#define TSK_IMAGE_ACTIVE					1
#define TSK_IMAGE_IDLE						2

// tsk_alg_control
#define TSK_ALGORITHM_INVALID				0x00
#define TSK_ALGORITHM_UPDATE_FLAG 		    0x01
#define TSK_ALGORITHM_UPDATEOVER_FLAG 	    0x02

#define TSK_ALGORITHM_IDLE_FLAG			    0x05
#define TSK_ALGORITHM_IDEN_FLAG			    0x06
#define TSK_ALGORITHM_ENROLL_FLAG		    0x07
#define TSK_ALGORITHM_ENROLL_I_FLAG		    0x08

// added at 20101022
// for DSP-v2 algorithm, and for test
// add new control code
#define TSK_ALGORITHM_CODE_FLAG				0x10
#define TSK_ALGORITHM_MATCH_FLAG			0x11

// tsk_policy_control
#define POLICY_LEFT_ACTIVE					0x01	// ������Ч
#define POLICY_RIGHT_ACTIVE					0x02	// ������Ч
#define POLICY_ALL_ACTIVE					0x03	// ˫�۾���Ч
#define POLICY_EITHER_ACTIVE				0x04	// ����һ����Ч
#define POLICY_FAST_ENROLL					0x80	// ����ע�᷽ʽ
#define POLICY_NORMAL_ENROLL				0x00	// ����ע�᷽ʽ
#define POLICY_MASK							0x0f	// ȡ��4λ��ע�����

#define POLICY_IDENMODE_LOCAL				0x00	// ����ʶ��
#define POLICY_IDENMODE_CLUSTER				0x01	// ��Ⱥʶ��

#define POLICY_DATATYPE_FEATURE				0x01	// ������������Ⱥ���񣬳���1062
#define POLICY_DATATYPE_IMAGE				0x02	// ����ͼ�񵽼�Ⱥ����
#define POLICY_DATATYPE_BOTH				0x03	// �������ݶ�����

#define POLICY_ENROLL						0x01	// ��ǰ������Ч����Ϊע�����
#define POLICY_IDENTIFY						0x02	// ��ǰ������Ч����Ϊʶ�����
#define POLICY_INVALID						0x00	// ��ǰ������Ч

// resp active flag
#define TSK_ALGORITHM_UPDATE_ACTIVE		    0x01
#define TSK_ALGORITHM_IDLE_ACTIVE		    0x05
#define TSK_ALGORITHM_IDEN_ACTIVE		    0x06
#define TSK_ALGORITHM_ENROLL_ACTIVE		    0x07

// added at 20101022
// for DSP-v2 algorithm, and for test
// add new control code
#define TSK_ALGORITHM_CODE_ACTIVE			0x10
#define TSK_ALGORITHM_MATCH_ACTIVE			0x11

// result type
#define TSK_ALGORITHM_RESULT_TYPE_NULL      0x00    // ��ǰ�����Ч
#define TSK_ALGORITHM_RESULT_TYPE_ENROLL    0x01    // ��ǰ���Ϊע����
#define TSK_ALGORITHM_RESULT_TYPE_IDEN      0x02    // ��ǰ���Ϊʶ����

#define TSK_ALGORITHM_RESULT_IDEN_FALSE     -1      // ע����ʶ������δע���
#define TSK_ALGORITHM_RESULT_IDEN_INVALID   -2      // ע����ʶ������δҪ��ʶ��
#define TSK_ALGORITHM_RESULT_IDEN_SUCCESS   0       // >=0��ʶ��ɹ��������е�����ֵ
#define TSK_ALGORITHM_RESULT_ENROLL_SUCCESS 0       // ==0��ע��ɹ���<0��ע��ʧ��
#define TSK_ALGORITHM_RESULT_ENROLL_NOMATCH -4      // ==-4����ע��ͼ������ǰע��������ƥ�䣬��Ҫ����ע��

// added at 20101022
// for DSP-v2 algorithm, and for test
// add new control code
// after CODE or MATCH set result_reg
#define RESULT_TYPE_CODE					TSK_ALGORITHM_CODE_ACTIVE
#define RESULT_TYPE_MATCH					TSK_ALGORITHM_MATCH_ACTIVE

#define TSK_ALGORITHM_FLAG_NOEYE			0x00
#define TSK_ALGORITHM_FLAG_LEFTEYE          0x01
#define TSK_ALGORITHM_FLAG_RIGHTEYE         0x02

#define NO_EYE								0x00
#define LEFT_EYE							0x01
#define RIGHT_EYE							0x02
#define EYE_NUM								2

#define TSK_IMAGE_STATUS_ACTIVE             1
#define TSK_IMAGE_STATUS_IDLE               2

#define TSK_ALGORITHM_STATUS_BEGIN			0x00
#define TSK_ALGORITHM_STATUS_UPDATE         0x10    // ���µ���
#define TSK_ALGORITHM_STATUS_IDLE           0x40    // �����У�ARM���ƣ���ע�����
#define TSK_ALGORITHM_STATUS_IDEN           0x01    // ʶ���У�������UPDATE��UPDATEID�ص�
#define TSK_ALGORITHM_STATUS_ENROLL         0x02    // ע���У�������UPDATE��UPDATEID��IDLE�ص�
#define TSK_ALGORITHM_STATUS_I_ENROLL       0x04    // ע�Ტʶ���У�������UPDATE��UPDATEID��IDLE�ص�
#define TSK_ALGORITHM_STATUS_G_IDEN			0x08	// ע���ɼ�ͼ��ʶ����
#define TSK_ALGORITHM_STATUS_WAITING        0x80    // �ȴ�ͼ���У�������IDEN��ENROLL�ص�

#define TSK_ALGORITHM_STATUS_CODE	        0x100    // CODE test
#define TSK_ALGORITHM_STATUS_MATCH	        0x200    // MATCH test

#define TSK_ALGORITHM_STATUS_DOING			0x30f	// ע���ʶ����or in test

#define TSK_ALGORITHM_STATUS_MASK			0xff0f	// 

// added at 20080415
// tsk_alg��״̬
#define TSK_ALGTSK_STATUS_IDLE				0x00	// 
#define TSK_ALGTSK_STATUS_ALGINUSE			0x01	// ������ͼ������
#define TSK_ALGTSK_STATUS_UPDATE			0x02	// �������������µ���

// modified by yqhe
// ���ʹ���ٶȣ�5������2���õļ���
#define TSK_IMG_MAXCOUNT                    5      // ȡ���ٷ�ͼ����������õ�
#define CLEAR_IMG_COUNT						2

#define WAIT_IMG_COUNT						8		// �մ����˵����ˣ��ȴ�8��

#define WORKTYPE_ENROLL                 	0x01
#define WORKTYPE_IDEN                   	0x02
#define WORKTYPE_IDEN_AFTER_ENROLL			0x04
#define WORKTYPE_GRABIDEN_AFTER_ENROLL		0x10	// added at 20081127
													// ע���ɼ�ͼ�����ʶ��
													// ��ע����۾�
													// ��ʵ�ʵ�ǰʹ�õ��۾��Ƿ�һ��

#define WORKTYPE_IMGQUALITY					0x20	// added at 20110106
													// calc image quality

// added at 20101023
#define WORKTYPE_CODE 	                	0x100	// CODE test
#define WORKTYPE_MATCH  	               	0x200	// MATCH test

#define DATATYPE_IMG						0x00	// gived data type is image
#define DATATYPE_FEATURE					0x01	// gived data type is feature
#define DATATYPE_PARAM						0x02	// gived data type is param
													// according to the TSK_ALGORITHM_CODE or TSK_ALGORITHM_MATCH

#define IRIS_SUCCESS						0
#define IRIS_ERROR							-1
#define IRIS_NOCODE							-2

#define MAX_ENROLLCOUNT						3		// yqhe 3
#define COMMON_IDENCOUNT 					3
#define MAXCOPY_ENROLLCOUNT					4		// should always be 3

// ͼ����ʾ
#define LEFT_STAMP_TOP						56
#define LEFT_STAMP_LEFT						96
#define DISP_WIN_WIDTH						320
#define DISP_WIN_HEIGHT						240

// ������ʾ
#define CB_H_THICK							6
#define CB_V_THICK							6
#define CB_TOP								75
// 120
#define CB_BOTTOM							(90 + CB_TOP - CB_V_THICK)
#define CB_LEFT								80
#define CB_RIGHT							(160 + CB_LEFT - CB_H_THICK)
#define COLOR_CLEAR							0x07e0
#define COLOR_BLUR							0xf800

//---------Iris Image Size ------------------------------------------//
#define ImH			480   //Size of the original iris image
#define ImW			640
#define SrcImSize   (480*640)

//-------Input and OutPut parameter setting -------------------------//
#define QualityInNum	 20		//paramenter from outside 
#define QualityOutNum	 20		//segmentation result from inside

//-------Length of the extracted feature template ------------------//
#define IR_FeatureLength 	512   //�����ĳ���(byte)
#define IR_EnrollTime	 	(MAX_ENROLLCOUNT+1)		// modified at 20081127, 
													// add one feature, used to compare the enroll quality
#define IR_EnrollFeatureLen	(IR_FeatureLength*IR_EnrollTime)

#define IR_RotateFeatureLength 1024 // 1260
#define	IR_RotateFeatureLen (IR_RotateFeatureLength*MAXCOPY_ENROLLCOUNT)
#define IR_TestImage			6

// added at 20090317
// ��Ҫ��ע�������аѶ�λ��Ϣ��ȡ����
#define IRIS_PUPIL_ROW				980
#define IRIS_PUPIL_COL				984
#define IRIS_PUPIL_RADIUS			988
#define IRIS_IRIS_ROW				992
#define IRIS_IRIS_COL				996
#define IRIS_IRIS_RADIUS			1000
#define IRIS_FOCUS					1004
#define IRIS_OCCULT					1008
#define IRIS_VER					1020
#define IRIS_LEN					1024

//------ Error Defination ------------------------------------------//
#define  FunSuccess			0       //function success 
#define  OE_NoFile			-900	//file not exist
#define  OE_OverFlow		-901 	//boundary overflow
#define  PF_AllocateErr     -911    //�ֶ�λʱ�����ڴ�ʧ��
#define	 FM_AllocateErr		-912	//����ƥ��ʱ�����ڴ�ʧ��
#define	 ENROLL_AllocateErr	-913	//ע��IREnroll(*)ʱ�����ڴ�ʧ��
#define  IDEN_AllocateErr   -914    //ʶ��IRIdenWithList(*)ʱ�����ڴ�ʶ��

#define IMG_TEST_SIZE  SrcImSize

// TSK_imageͨ�����а��жϺ�������ͼ���͸�TSK_algorithm
// �˽ṹ��ΪMSG���ڶ����� 
typedef struct dsp_image_msg_t
{
	QUE_Elem		elem;

	unsigned int 	img_saved_score_l;	// �ѱ���ͼ�������
	unsigned int	img_saved_score_r;	// ������ͼ�Ƿ����
										// ��ֵ����Ϊ��

	unsigned char* 	img_ptr_l;			// �����ж�ͨ���ģ���һ��ʱ������õ�ͼ��
	unsigned char*	img_ptr_r;			// ��BUF�з���õ�

	int				eye_flag;			// �۾���־, 0 - nouse, 1- left, 2 - right, 3 - all
	int				process_flag;		// ������־, 0 - nouse, 1 - enroll, 2 - identify

	unsigned int	img_saved_count_l;	// ��������ͨ���������жϵ�ͼ����
	unsigned int	img_saved_count_r;	// ��������ͨ���������жϵ�ͼ����

	unsigned int 	feature_tag;

	// added at 20101023
	unsigned int	data_type_l;			// img_ptr_l pointed data type, image or feature
	unsigned int	data_type_r;			// img_ptr_r pointed data type, image or feature or param

} IMAGE_MSG_OBJ, *IMAGE_MSG;

// TSK_algorithmͨ�����а�ͼ���������͸�TSK_algorithm
// �˽ṹ��ΪMSG���ڶ����� 
typedef struct dsp_result_msg_t
{
	QUE_Elem		elem;

	int				result_left;		// ���۽��
	int				result_right;		// ���۽��
	int				eye_flag;			// �۾���־, 0 - nouse, 1- left, 2 - right, 3 - all
	int				process_flag;		// ������־, 0 - nouse, 1 - enroll, 2 - identify
	unsigned int 	feature_tag;

} RESULT_MSG_OBJ, *RESULT_MSG;


// modified at 20080415
// ��ͼ��tsk_algʱ���ѵ�ǰ��_tagһ������ȥ
// �ش����ʱ��һ�����������Ա�֤_tag��һ����
// IMAGE_MSG RESULT_MSG�о����Ӵ���
typedef struct dsp_procimg_t
{
	IMAGE_MSG	img_msg;
	RESULT_MSG  result_msg;
	Uns			last_flag;
	Uns			img_grab_count;
	Bool		begin_quality;
	int			need_eye;
	unsigned int feature_tag;
} dsp_procimg_t;


typedef struct dsp_match_msg_t
{
	QUE_Elem		elem;

	int				process_flag;		// ������־, 1 - ��ʼ�ȶ�

} MATCH_MSG_OBJ, *MATCH_MSG;

#define MATCHTYPE_BEGIN		1
#define MATCHTYPE_END		2			// do not use now

// modified at 20080606
// dsp used these defined value init the dsp_distance_ctrl_reg
// and then ARM can write reg, dsp just read
// ���ݺ�����ģ������豸ǰ�������
// ��õ��Ǿ���ֵ
/*
#define ADC_DISTANCE_NOPERSON			40
#define ADC_DISTANCE_TOOFAR				28
#define ADC_DISTANCE_OK					23
#define ADC_DISTANCE_TOOCLOSE			0

#define ADC_DISTANCE_SMOOTH				5
// ����ͼ�����κδ���ʱ����������ͼ��ɼ�����ʾ�ٶ�ԼΪ20֡/��
// ��SMOOTH_NOPERSONֵΪ300ʱ���豸ǰû�˺�ͼ�������ʾ30��
#define ADC_DISTANCE_SMOOTH_NOPERSON	50
#define ADC_DISTANCE_PLAY				10
*/

typedef struct dsp_distance_t
{
	unsigned int	same_count;      	// ͬ���ľ����־������������
	unsigned int    last_distance;		// �ϴβⶨ�ľ����־
	unsigned int	if_has_people;		// ��ǰ������
	unsigned int	last_if_has;		// �ϴβ���������
	unsigned int	no_count;			// ���˳���ʱ��
	unsigned int	has_count;			// ���˳���ʱ��
	unsigned int	disp_count;			// ������ʾͼ��ʱ��
	unsigned int	if_disp_image;		// �Ƿ���ʾͼ��==TRUE����ʾͼ��==FALSE������ʾͼ��
	unsigned int	wait_frame;			// �����˵����˵ĵȴ�֡��
} dsp_distance_t;

typedef struct dsp_status_t
{
	unsigned short      tsk_img_status; 
	unsigned short      tsk_alg_status;
	unsigned short		tsk_alg_saved_status;
										// ����
	unsigned short		tsk_alg_inuse;	// added at 20080415 ͼ�����в������������¶���
										// �Ƿ���tsk_alg���յ�ͼ�����ڴ����״̬
										// �紦�ڴ�״̬���򲻽���������������

										// added at 20081127
	int 				proc_start_time;// ��ʼʱ�䣬ע���ʶ��ʼ�����ô�ֵ
										// һ����֮���ҵ���õ�ͼ��(��ʱ�ȶ�Ϊһ����)
										// �������ע��Ҫ���ˣ���ֹͣע��
										// ���������ֱ����������ͨͼ������ע��Ҫ��

	int					proc_timeout; 	// added at 20081127
										// �Ƿ��Ѿ�����Ԥ����ʱ�䣬
										// ==0����δ������==1���Ѿ�����

	unsigned int		tsk_testimg_tag_left;	// added at 20080505
	unsigned int		tsk_testimg_tag_right;	// 
	// ��tag_arm��Ƚϣ������һ�£�����������ͼ��ȴ�ʶ��
	// ���ô�ֵΪtag_arm��������ͼ���㷨����
	// �㷨�����з��غ�����tag_dsp���ֵһ��

}dsp_status_t;

enum {	
JUDGE_FINE=0,
JUDGE_FAINT,
JUDGE_HIGH,
JUDGE_LOW,
JUDGE_LEFT,
JUDGE_RIGHT,
JUDGE_TRASH,
JUDGE_BLUR,
JUDGE_BLACK,
JUDGE_TOOSMALL,
JUDGE_RETURN
};

enum {
SND_NULL = 0,
SND_KEEP,
SND_DOWN,
SND_UP,
SND_RIGHT,
SND_LEFT,
SND_CAMERA,
SND_SLOW,
SND_WELCOME,
SND_CLOSER,
SDN_FARTHER
};

#define SOUND_PLAY_INTERVAL			2000	// ͨ�������ģ�鷢�������ټ��2��
#define SOUND_ALGPLAY_INTERVAL		3000	// ͨ���㷨�жϷ���

typedef struct policy_t
{
	unsigned short 	policy_control;	
	unsigned short 	iden_count;
	unsigned short  iden_mode;				// 20080320���ӣ�����or��Ⱥ
	unsigned short	data_type;
	int				enroll_score_l[MAXCOPY_ENROLLCOUNT];	// ����ע��ͼ���������Ӽ�¼
	int				enroll_score_r[MAXCOPY_ENROLLCOUNT];	// ����ע��ͼ���������Ӽ�¼
}policy_t;

typedef struct dsp_sound_t
{
	unsigned int	last_sound_time;	// ��Ҫ�������۵Ĵ�������һ��������ŷ������ӳ���ʾ���
	unsigned int	last_sound_value;	// �ϴη��������
}dsp_sound_t;

#define IMG_QUALITY_TYPECOUNT       10

// modified at 20081127
typedef struct dsp_result_t
{
	short			count[EYE_NUM];		// ���ע�������ʶ�����,�÷�result_count[LEFT_EYE-1]
	short			result[EYE_NUM];	// ���ֵ���÷�result[LEFT_EYE-1]
	short			grab_iden_result[EYE_NUM];	// �ڵ�ǰ����״̬�£�����Ľ����ʷֵ
										// GRABIDEN_AFTER_ENROLL ʶ�������λ���
}dsp_result_t;

// modified at 20081125
// ע�⣺��ע���ʶ��Ĳ�ͬ״̬�£�count��result���岻ͬ
// ע��״̬����count�������۾���ǰ�Ѿ�ע���˼���ͼ��
//			   result������ע���ʶ�������£����۾��Ƿ�ʶ��ɹ���
//					��ʶ��ɹ�����Ϊ1��ʶ��ʧ��һ��-1��
//					��==-2����ʾʶ�����ξ�ʧ�ܣ���Ϊ�˴�ע�᲻�ϸ���Ҫ����ע��
// ʶ��״̬����count�������۾�ʶ��ʧ�ܴ���
//			   result����ʶ��ɹ�������£�ʶ������������


typedef struct dsp_reg_t
{
	dsp_status_t		status_reg;		// DSP��ǰ״̬
	dsp_distance_t		distance_reg;	// �������
	policy_t			policy_reg;		// ���Դ洢��
	dsp_sound_t			sound_reg;		// ����������
	dsp_result_t		result_reg;		// ����洢��
	int					quality_value[IMG_QUALITY_TYPECOUNT];
	int					quality_count;
	unsigned int		alg_control_count; 	// �ѽ��ܵĴ�ARM�����Ŀ����źŸ���
	int					last_img_quality;
	int					last_icon_id;
	int					match_input_count;	// �ȶԲ���ʱ���������Ч�ļ�����
} dsp_reg_t;

#define ICON_CTL_HIDE				0
#define ICON_CTL_DISPLAY			1

extern dsp_tsk_totalreg_t* tsk_used_reg;	// exchanged data between ARM and DSP
extern dsp_reg_t		   dsp_used_reg;	// DSP interval used reg


// BMP file struct
#define BYTE	Uint8
#define WORD 	Uint16
#define DWORD	Uint32				// 32-bit unsigned integer. 
#define LONG	Int32				// 32-bit signed integer.

#define RGBQUAD_NUM	256
#define BI_RGB	0L

#define BMPFILEHEADER_SIZE	14

typedef struct tagBITMAPFILEHEADER
{ 
	// WORD	bfType;
	DWORD	bfSize; 
	WORD	bfReserved1; 
	WORD	bfReserved2; 
	DWORD	bfOffBits; 
} BITMAPFILEHEADER, *PBITMAPFILEHEADER; //__attribute__((packed));

typedef struct tagBITMAPFILEHEADER_FULL
{ 
	WORD	bfType;
	DWORD	bfSize; 
	WORD	bfReserved1; 
	WORD	bfReserved2; 
	DWORD	bfOffBits; 
} FULL_BITMAPFILEHEADER, *PFULL_BITMAPFILEHEADER;
//typedef struct tagBITMAPFILEHEADER BITMAPFILEHEADER, *PBITMAPFILEHEADER;

typedef struct tagBITMAPINFOHEADER
{
	DWORD	biSize; 
	LONG	biWidth; 
	LONG	biHeight; 
	WORD	biPlanes; 
	WORD	biBitCount; 
	DWORD	biCompression; 
	DWORD	biSizeImage; 
	LONG	biXPelsPerMeter; 
	LONG	biYPelsPerMeter; 
	DWORD	biClrUsed; 
	DWORD	biClrImportant; 
} BITMAPINFOHEADER, *PBITMAPINFOHEADER; 

typedef struct tagRGBQUAD
{
	BYTE	rgbBlue; 
	BYTE	rgbGreen; 
	BYTE	rgbRed; 
	BYTE	rgbReserved; 
} RGBQUAD;

typedef struct tagBITMAPINFO
{ 
	BITMAPINFOHEADER	bmiHeader; 
	RGBQUAD				bmiColors[1]; 
} BITMAPINFO, *PBITMAPINFO; 

int FillBmpHeader (Uint32 head_addr, int imgWidht, int imgHeight);

void fill_checksum(Uint16 *buf, int size);
Uint16 get_checksum(Uint16 *buf, int size);

#define IR_CORE_VERSION			0

#define IR_CORE_FEA_LEN			256	// 1024/4
#define IR_CORE_FOCUS_ADDR		251	// 1004/4
#define IR_CORE_OCCULT_ADDR		252	// 1008/4
#define IR_CORE_VER_ADDR		255 // 1020/4

#define IR_DURATION_TIME		10000 // 20 secs

#define IR_DURATION_TIMEOUT		1

// addd by yqhe, 20100817
// for some switch controls, such as CCD
#define SWITCH_OFF				0	// �رտ��أ���صƻ��CCD
#define SWITCH_ON				1	// �򿪿��أ��翪�ƻ�CCD

#define CTRL_CCD_BIT			0	// CCD���ؿ�����switch_control_reg.ctrls�Ķ�Ӧλ��
#define CTRL_CCD_ALSON			0	// CCD���ڳ���״̬
#define CTRL_CCD_CANOFF			1	// CCD�ڷ���Ҫ�������¿ɹر�

#define CCD_ON					1	// ��CCD��д��ֵ
#define CCD_OFF					0	// ��CCD��д��ֵ
#define SWITCH_CCD_WAITFRAME	5	// ��CCD��ĵȴ�ʱ��


#ifdef ALG_V1
	#define CUR_ALG_VERSION		0
#endif

#ifdef ALG_V2
	#define CUR_ALG_VERSION		2
#endif

// BMP file = fileheader + infoheader + XXX*RGBQUAD + imagedata
#endif //!__DSP_TYPEDEF_H__
