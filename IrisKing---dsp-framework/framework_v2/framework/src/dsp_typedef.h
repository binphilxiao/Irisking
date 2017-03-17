#if !defined(__DSP_TYPEDEF_H__)
#define __DSP_TYPEDEF_H__

#include "arm_dsp_data.h"

// modified by yqhe, 20080319
// 1.注册方式增加一个宽松注册方式，命名为普通注册
// 以前的注册方式命名为严格注册
// 严格注册方式，三幅图像，两两匹配成功后，保存两幅图像
// 普通注册方式，三幅图像，不需要两两匹配成功，只要能生成特征即可
// 

// modified by yqhe, 20080320
// 按照SDK第二版的方式修改DSP
// 增加识别方式（本地or集群）以及相应的修改

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
#define TSK_ALGORITHM_UPDATEID_FLAG		    0x03
#define TSK_ALGORITHM_UPDATEIDOVER_FLAG	    0x04
#define TSK_ALGORITHM_IDLE_FLAG			    0x05
#define TSK_ALGORITHM_IDEN_FLAG			    0x06
#define TSK_ALGORITHM_ENROLL_FLAG		    0x07
#define TSK_ALGORITHM_ENROLL_I_FLAG		    0x08

// coal-safe, added at 20071211
// matching used control
// 对应tsk_alg_control
#define	TSK_MATCH_INIT_FLAG					0x09
#define TSK_MATCH_SENDIMAGE_FLAG			0x0b
#define TSK_MATCH_GENFEATURE_FLAG			0x0c
#define	TSK_MATCH_BEGIN_FLAG				0x0e
#define TSK_MATCH_END_FLAG					0x0f

// tsk_policy_control
#define POLICY_LEFT_ACTIVE					0x01	// 左眼有效
#define POLICY_RIGHT_ACTIVE					0x02	// 右眼有效
#define POLICY_ALL_ACTIVE					0x03	// 双眼均有效
#define POLICY_EITHER_ACTIVE				0x04	// 任意一眼有效
#define POLICY_FAST_ENROLL					0x80	// 快速注册方式
#define POLICY_NORMAL_ENROLL				0x00	// 正常注册方式
#define POLICY_MASK							0x0f	// 取后4位的注册策略

#define POLICY_IDENMODE_LOCAL				0x00	// 本地识别
#define POLICY_IDENMODE_CLUSTER				0x01	// 集群识别

#define POLICY_DATATYPE_FEATURE				0x01	// 发送特征到集群服务，长度1062
#define POLICY_DATATYPE_IMAGE				0x02	// 发送图像到集群服务
#define POLICY_DATATYPE_BOTH				0x03	// 两种数据都发送

#define POLICY_ENROLL						0x01	// 当前策略有效，且为注册策略
#define POLICY_IDENTIFY						0x02	// 当前策略有效，且为识别策略
#define POLICY_INVALID						0x00	// 当前策略无效

// resp active flag
#define TSK_ALGORITHM_UPDATE_ACTIVE		    0x01
#define TSK_ALGORITHM_UPDATEID_ACTIVE	    0x03
#define TSK_ALGORITHM_IDLE_ACTIVE		    0x05
#define TSK_ALGORITHM_IDEN_ACTIVE		    0x06
#define TSK_ALGORITHM_ENROLL_ACTIVE		    0x07

// coal-safe, added at 20071211
// matching used active&over flag
#define TSK_MATCH_INIT_ACTIVE				0x09
#define TSK_MATCH_INIT_OVER					0x0a
#define TSK_MATCH_SENDIMAGE_ACTIVE			0x0b
#define TSK_MATCH_GENFEATURE_ACTIVE			0x0c
#define TSK_MATCH_GENFEATURE_OVER			0x0d
#define TSK_MATCH_BEGIN_ACTIVE				0x0e
#define TSK_MATCH_END_ACTIVE				0x0f

// result type
#define TSK_ALGORITHM_RESULT_TYPE_NULL      0x00    // 当前结果无效
#define TSK_ALGORITHM_RESULT_TYPE_ENROLL    0x01    // 当前结果为注册结果
#define TSK_ALGORITHM_RESULT_TYPE_IDEN      0x02    // 当前结果为识别结果

#define TSK_ALGORITHM_RESULT_IDEN_FALSE     -1      // 注册中识别结果，未注册过
#define TSK_ALGORITHM_RESULT_IDEN_INVALID   -2      // 注册中识别结果，未要求识别
#define TSK_ALGORITHM_RESULT_IDEN_SUCCESS   0       // >=0，识别成功，特征中的索引值
#define TSK_ALGORITHM_RESULT_ENROLL_SUCCESS 0       // ==0，注册成功，<0，注册失败

#define TSK_ALGORITHM_FLAG_NOEYE			0x00
#define TSK_ALGORITHM_FLAG_LEFTEYE          0x01
#define TSK_ALGORITHM_FLAG_RIGHTEYE         0x02

#define TSK_IMAGE_STATUS_ACTIVE             1
#define TSK_IMAGE_STATUS_IDLE               2

#define TSK_ALGORITHM_STATUS_BEGIN			0x00
#define TSK_ALGORITHM_STATUS_UPDATE         0x10    // 更新当中
#define TSK_ALGORITHM_STATUS_UPDATEID       0x20
#define TSK_ALGORITHM_STATUS_IDLE           0x40    // 空闲中，ARM控制，或注册结束
#define TSK_ALGORITHM_STATUS_IDEN           0x01    // 识别中，可能与UPDATE或UPDATEID重叠
#define TSK_ALGORITHM_STATUS_ENROLL         0x02    // 注册中，可能与UPDATE或UPDATEID或IDLE重叠
#define TSK_ALGORITHM_STATUS_I_ENROLL       0x04    // 注册并识别中，可能与UPDATE或UPDATEID或IDLE重叠
#define TSK_ALGORITHM_STATUS_WAITIMG        0x80    // 等待图像中，可能与IDEN或ENROLL重叠

// added at 20080415
// tsk_alg的状态
#define TSK_ALGTSK_STATUS_IDLE				0x00	// 
#define TSK_ALGTSK_STATUS_ALGINUSE			0x01	// 正处于图像处理当中
#define TSK_ALGTSK_STATUS_UPDATE			0x02	// 正处于特征更新当中

#define TSK_ALGORITHM_STATUS_DOING			0x0f	// 注册或识别中

#define TSK_MATCH_INIT						0x100	// 比对方式中
#define TSK_MATCH_PROGRESS					0x300	// 比对进行中
#define TSK_MATCH_END						0x500	// 比对正常结束，全部比对完成

// modified by yqhe
// 提高使用速度，5幅中有2幅好的即可
#define TSK_IMG_MAXCOUNT                    5      // 取多少幅图像中质量最好的
#define CLEAR_IMG_COUNT						2

#define WAIT_IMG_COUNT						8		// 刚从无人到有人，等待8幅

#define WORKTYPE_ENROLL                 	1
#define WORKTYPE_IDEN                   	2
#define WORKTYPE_IDEN_AFTER_ENROLL			4
#define WORKTYPE_FAKETEST_AFTER_ENROLL		8

#define IRIS_SUCCESS						0
#define IRIS_ERROR							-1
#define IRIS_NOCODE							-2

#define MAX_ENROLLTIME						3		// yqhe 3
#define COMMON_IDENTIME 					3
#define MAXCOPY_ENROLLTIME					3		// should always be 3

// 图标显示
#define LEFT_STAMP_TOP						56
#define LEFT_STAMP_LEFT						96
#define DISP_WIN_WIDTH						320
#define DISP_WIN_HEIGHT						240

// 方框显示
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
#define IR_FeatureLength 	1024   //特征的长度(byte)
#define IR_EnrollTime	 	3
#define IR_EnrollFeatureLen	(IR_FeatureLength*MAXCOPY_ENROLLTIME)

#define IR_RotateFeatureLength	1155 // 1260
#define	IR_RotateFeatureLen (IR_RotateFeatureLength*MAXCOPY_ENROLLTIME)
#define IR_TestImage			6


//------ Error Defination ------------------------------------------//
#define  FunSuccess			0       //function success 
#define  OE_NoFile			-900	//file not exist
#define  OE_OverFlow		-901 	//boundary overflow
#define  PF_AllocateErr     -911    //粗定位时分配内存失败
#define	 FM_AllocateErr		-912	//特征匹配时分配内存失败
#define	 ENROLL_AllocateErr	-913	//注册IREnroll(*)时分配内存失败
#define  IDEN_AllocateErr   -914    //识别IRIdenWithList(*)时分配内存识别

#define IMG_TEST_SIZE  SrcImSize

// TSK_image通过队列把判断好质量的图像传送给TSK_algorithm
// 此结构作为MSG放在队列中 
typedef struct dsp_image_msg_t
{
	QUE_Elem		elem;

	unsigned int 	img_saved_score_l;	// 已保存图像的质量
	unsigned int	img_saved_score_r;	// 决定该图是否可用
										// 初值设置为零

	unsigned char* 	img_ptr_l;			// 质量判断通过的，在一段时间内最好的图像
	unsigned char*	img_ptr_r;			// 从BUF中分配得到

	int				eye_flag;			// 眼睛标志, 0 - nouse, 1- left, 2 - right, 3 - all
	int				process_flag;		// 操作标志, 0 - nouse, 1 - enroll, 2 - identify

	unsigned int	img_saved_count_l;	// 左眼曾经通过的质量判断的图像数
	unsigned int	img_saved_count_r;	// 右眼曾经通过的质量判断的图像数

	unsigned int 	feature_tag;

} IMAGE_MSG_OBJ, *IMAGE_MSG;

// TSK_algorithm通过队列把图像处理结果传送给TSK_algorithm
// 此结构作为MSG放在队列中 
typedef struct dsp_result_msg_t
{
	QUE_Elem		elem;

	int				result_left;		// 左眼结果
	int				result_right;		// 右眼结果
	int				eye_flag;			// 眼睛标志, 0 - nouse, 1- left, 2 - right, 3 - all
	int				process_flag;		// 操作标志, 0 - nouse, 1 - enroll, 2 - identify
	unsigned int 	feature_tag;

} RESULT_MSG_OBJ, *RESULT_MSG;


// modified at 20080415
// 传图像到tsk_alg时，把当前的_tag一并传过去
// 回传结果时，一并传回来，以保证_tag的一致性
// IMAGE_MSG RESULT_MSG中均增加此项
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

	int				process_flag;		// 操作标志, 1 - 开始比对

} MATCH_MSG_OBJ, *MATCH_MSG;

#define MATCHTYPE_BEGIN		1
#define MATCHTYPE_END		2			// do not use now

// modified at 20080606
// dsp used these defined value init the dsp_distance_ctrl_reg
// and then ARM can write reg, dsp just read
// 根据红外测距模块测试设备前物体距离
// 获得的是距离值
/*
#define ADC_DISTANCE_NOPERSON			40
#define ADC_DISTANCE_TOOFAR				28
#define ADC_DISTANCE_OK					23
#define ADC_DISTANCE_TOOCLOSE			0

#define ADC_DISTANCE_SMOOTH				5
// 不对图像做任何处理时，初步估算图像采集及显示速度约为20帧/秒
// 当SMOOTH_NOPERSON值为300时，设备前没人后，图像持续显示30秒
#define ADC_DISTANCE_SMOOTH_NOPERSON	50
#define ADC_DISTANCE_PLAY				10
*/

typedef struct dsp_distance_t
{
	unsigned int	same_count;      	// 同样的距离标志连续持续次数
	unsigned int    last_distance;		// 上次测定的距离标志
	unsigned int	if_has_people;		// 当前有无人
	unsigned int	last_if_has;		// 上次测试有无人
	unsigned int	no_count;			// 无人持续时间
	unsigned int	has_count;			// 有人持续时间
	unsigned int	disp_count;			// 持续显示图像时间
	unsigned int	if_disp_image;		// 是否显示图像==TRUE，显示图像，==FALSE，不显示图像
	unsigned int	wait_frame;			// 从无人到有人的等待帧数
} dsp_distance_t;

typedef struct dsp_status_t
{
	unsigned short      tsk_img_status; 
	unsigned short      tsk_alg_status;
	unsigned short		tsk_alg_saved_status;
										// 保留
	unsigned short		tsk_alg_inuse;	// added at 20080415 图像处理当中不进行特征更新动作
										// 是否处于tsk_alg接收到图像，正在处理的状态
										// 如处于此状态，则不接受特征更新请求
	unsigned int		tsk_testimg_tag_left;	// added at 20080505
	unsigned int		tsk_testimg_tag_right;	// 
	// 与tag_arm相比较，如果不一致，表明有输入图像等待识别，
	// 设置此值为tag_arm，并输送图像到算法任务；
	// 算法任务有返回后，设置tag_dsp与此值一致

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

#define SOUND_PLAY_INTERVAL			2000	// 通过测距离模块发声，至少间隔2秒
#define SOUND_ALGPLAY_INTERVAL		3000	// 通过算法判断发声

typedef struct policy_t
{
	unsigned short 	policy_control;	
	unsigned short 	iden_count;
	unsigned short  iden_mode;				// 20080320增加，本地or集群
	unsigned short	data_type;
	unsigned short 	last_try_eye;
	unsigned short	cur_try_count;
	int				enroll_score_l[MAXCOPY_ENROLLTIME];	// 左眼注册图像质量因子记录
	int				enroll_score_r[MAXCOPY_ENROLLTIME];	// 右眼注册图像质量因子记录
}policy_t;

typedef struct dsp_sound_t
{
	unsigned int	last_sound_time;	// 需要发音积累的次数，到一定次数后才发声，加长提示间隔
	unsigned int	last_sound_value;	// 上次发声请求号
}dsp_sound_t;

#define IMG_QUALITY_TYPECOUNT       10

typedef struct dsp_reg_t
{
	dsp_status_t		status_reg;		// DSP当前状态
	dsp_distance_t		distance_reg;	// 距离测试
	policy_t			policy_reg;		// 策略存储器
	dsp_sound_t			sound_reg;		// 发声控制器
	int					quality_value[IMG_QUALITY_TYPECOUNT];
	int					quality_count;
	unsigned int		alg_control_count; 	// 已接受的从ARM发来的控制信号个数
	int					last_img_quality;
	int					last_icon_id;
	int					match_input_count;	// 比对测试时，传入的有效文件个数
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

// BMP file = fileheader + infoheader + XXX*RGBQUAD + imagedata
#endif //!__DSP_TYPEDEF_H__
