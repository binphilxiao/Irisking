// iriscore.h : main header file for the IRISCORE.DLL
// 邱显超 2007.3.21建立
// iriscore的输出函数
 
#if !defined(_IRISCORE_H)
#define _IRISCORE_H

#define IR_NoMatchTemplate		-1		//图像质量合适，并且进入了特征比对程序，但是没有找到与之匹配的注册模板
#define IR_BadImage				-2		//图像质量不合格，不能完成精定位
#define IR_BlackFaceOrBigSpot	-3		//做完精定位后，判断虹膜区域中亮点数目，如果太多，认为有大光斑遮挡或者是黑脸图像
#define IR_EnrollNonMatch		-4		//注册时两两比对不成功


/*函数声明：int JudgeImageQuality(unsigned char * m_pImage,int m_nImageWidth,int m_nImageHeight, int m_iWorkType, int *m_iqualityScore)

  函数类型：int
  
	函数参数：
	输入：
	1、unsigned char * m_pImage,int m_nImageH, int m_nImageW
	含义：原始图像及其大小参数
	2、int *devicePara, int nDeviceInNum
	含义：外部程序输入的信息，如照明灯情况，距离信息等等
	4、int m_iWorkType
	含义：工作模式
		1 表示注册模式
		2 表示识别模式

	输出值：
	1、int *m_iqualityScore
	含义：本版本中m_iqualityScore仅仅根据focus的值确定，
		以后版本中可以融合focus， blur 以及粗定位得分等得到一个综合的值
		识别时质量参数 50 以上表示合适
		注册时质量参数 55 以上表示合适
	  
返回值类型：int 
图像质量
			0 图像可以用于注册或者识别
		   <0 图像质量不合格
*/
/**********************************************************************************************/
int IRJudgeImageQuality(unsigned char * m_pImage,int m_nImageH, int m_nImageW, 
						int *devicePara, int nDeviceInNum, int m_iWorkType, int *m_iqualityScore);


/*函数声明：int IREnrol( unsigned char* m_pImage, int imageH, int imageW, 
						int* devicePara, int deveiceParaNum,
						unsigned char* m_pExistedTemplate,  int *m_ExistedNum)

  函数类型：int
  
	函数参数：
	输入：
	1、unsigned char* m_pImage, int imageH, int imageW
	含义：原始图像及其大小参数
	2、int *devicePara, int nDeviceInNum
	含义：外部程序输入的信息，如照明灯情况，距离信息等等
		注意：：以后也有可能用于传出一些参数，比如请求外部程序换灯，或者给出请靠近等提示信息
			devicePara[0-3]: 视频中上一帧的瞳孔位置＋半径＋灰度估计
			devicePara[4]  : 照明灯的情况
			devicePara[5]  : 当前用户距离信息
			devicePara[6-19]  : 暂时没用，方便扩展而预留的

			输出值：
			1、unsigned char* m_pExistedTemplate,  int *m_ExistedNum
			含义：已经存在的注册模板的数目。
			如果当前图像通过了注册时两两比对成功的验证，那么会把新的图像的模板添加到后面，
			并且m_ExistedNum加一，因此，外部程序必须保证预先分配足够的空间已保存注册图像特征模板

			返回值类型：int 
			0：当前图像注册成功，并且已经把生成的模板添加到m_pExistedTemplate
			-4：当前图像注册不成功，即与已经注册的图像不匹配
			其他：传入的图像质量有问题，不适合进行特征抽取
			*/
/**********************************************************************************************/
int IREnrol( unsigned char* m_pImage, int imageH, int imageW, 
			int* devicePara, int deveiceParaNum,
			unsigned char* m_pExistedTemplate,  int *m_ExistedNum);

int IREnrolAdaBoost( unsigned char* m_pImage, int imageH, int imageW, 
			int* devicePara, int deveiceParaNum,
			unsigned char* m_pExistedTemplate,  int *m_ExistedNum);

//////////////////////////////////////////////////////////////////////////////////////////////////
/*函数声明：int IRIdenWithList( unsigned char* m_pImage, int imageH, int imageW, 
								int* devicePara, int deveiceParaNum,
								unsigned char* m_pGallery,  int NumModel, 
								int* pFeatureIDList, int curListLen)

  函数类型：int
  
  函数参数：

	输入：
	1、unsigned char* m_pImage, int imageH, int imageW
	含义：现场采集图像指针及其大小参数
	2、int* devicePara, int deveiceParaNum,
	含义：与图像对应的设备参数。及其维数 20
	3、unsigned char* m_pGallery,  int NumModel, 
	含义：注册模板特征值的首地址以及注册模板（图像）个数
	4、int* pFeatureIDList, int curListLen
	含义：为了以后可能的扩展，pFeatureIDList指定了参加比对的模板的顺序以及数目
		注意！！如果当前版本没有使用list来表明比对的顺序，那么必须把pFeatureIDList赋值为NULL 同时把curListLen设为0

	输出：无

  返回值类型：int
		错误代码，正数表示与输入图像匹配的模板的序号，为正数
		          -1 表示图像质量合格，但是没有注册模板与之匹配
				  -2 表示输入图像质量不合格，不能得到合适的精定位结果
				  （按照设计，只有通过了粗定位的图像才进行识别和注册，
				  因此只要是-2就表示是精定位出现了问题,当然，如果外部程序没有
				  进行图像质量判断 IRJudgeImageQuality(),那么也有可能是精定位之前出现了问题 */
/**********************************************************************************************/
int IRIdenWithList ( unsigned char* m_pImage, int imageH, int imageW, 
						   int* devicePara, int deveiceParaNum,
						   unsigned char* m_pGallery,  int NumModel, 
						   int* pFeatureIDList, int curListLen);

int IRIdenAdaBoostWithList( unsigned char* m_pImage, int imageH, int imageW, 
						   int* devicePara, int deveiceParaNum,
						   unsigned char* m_pGallery,  int NumModel, 
						   int* pFeatureIDList, int curListLen);


//////////////////////////////////////////////////////////////////////////////////////////////////
/*函数声明：int IRFeatureIdenWithList(unsigned char* m_pFeature, int iFeatureLen, 
								int* devicePara, int deveiceParaNum,
								unsigned char* m_pGallery,  int NumModel, 
								int* pFeatureIDList, int curListLen)

  函数类型：int
  
  函数参数：

	输入：
	1、unsigned char* m_pFeature, int iFeatureLen,
	含义：现场采集图像的feature
	2、int* devicePara, int deveiceParaNum,
	含义：与图像对应的设备参数。及其维数 20
	3、unsigned char* m_pGallery,  int NumModel, 
	含义：注册模板特征值的首地址以及注册模板（图像）个数
	4、int* pFeatureIDList, int curListLen
	含义：为了以后可能的扩展，pFeatureIDList指定了参加比对的模板的顺序以及数目
		注意！！如果当前版本没有使用list来表明比对的顺序，那么必须把pFeatureIDList赋值为NULL 同时把curListLen设为0

	输出：无

  返回值类型：int
		错误代码，正数表示与输入图像匹配的模板的序号，为正数
		          -1 表示图像质量合格，但是没有注册模板与之匹配
				  -3 curListLen==0
				  -4 特征长度不对（可能是特征长度没有使用带旋转特征的长度1260 ）
				   */
/**********************************************************************************************/
int IRFeatureIdenWithList ( unsigned char* m_pFeature, int iFeatureLen, 
						   int* devicePara, int deveiceParaNum,
						   unsigned char* m_pGallery,  int NumModel, 
						   int* pFeatureIDList, int curListLen);

// 下面两个图像必须联合起来使用，否则将失败。
// 原因如下：
// 1. AdaBoost方法采用分块的比对方法，每一块不能自己形成圆环，所以无法从短的特征恢复带旋转的特征
// 因此必须采用下面的图像抽取长特征（带旋转的特征，特征长度是IR_RotateFeatureLen==1260），然后再将特征传给服务器进行比较
int IRIm2RotateFeatureAdaBoost( unsigned char* m_pImage, int imageH, int imageW, 
			int* devicePara, int deveiceParaNum,
			unsigned char* m_pRotateFea,  int *m_FeatureLen);

int IRFeatureIdenAdaBoostWithList ( unsigned char* m_pFeature, int iFeatureLen, 
						   int* devicePara, int deveiceParaNum,
						   unsigned char* m_pGallery,  int NumModel, 
						   int* pFeatureIDList, int curListLen);

// 注册结束后把三幅注册图像送入此函数，判断是否为假眼
// 那对裤线一类的是否有识别功能？
int FakeDetect(unsigned char * m_pImage1,unsigned char * m_pImage2,unsigned char * m_pImage3);
#endif


