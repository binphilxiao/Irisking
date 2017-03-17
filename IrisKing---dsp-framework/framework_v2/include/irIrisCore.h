// iriscore.h : main header file for the IRISCORE.DLL
// ���Գ� 2007.3.21����
// iriscore���������
 
#if !defined(_IRISCORE_H)
#define _IRISCORE_H

#define IR_NoMatchTemplate		-1		//ͼ���������ʣ����ҽ����������ȶԳ��򣬵���û���ҵ���֮ƥ���ע��ģ��
#define IR_BadImage				-2		//ͼ���������ϸ񣬲�����ɾ���λ
#define IR_BlackFaceOrBigSpot	-3		//���꾫��λ���жϺ�Ĥ������������Ŀ�����̫�࣬��Ϊ�д����ڵ������Ǻ���ͼ��
#define IR_EnrollNonMatch		-4		//ע��ʱ�����ȶԲ��ɹ�


/*����������int JudgeImageQuality(unsigned char * m_pImage,int m_nImageWidth,int m_nImageHeight, int m_iWorkType, int *m_iqualityScore)

  �������ͣ�int
  
	����������
	���룺
	1��unsigned char * m_pImage,int m_nImageH, int m_nImageW
	���壺ԭʼͼ�����С����
	2��int *devicePara, int nDeviceInNum
	���壺�ⲿ�����������Ϣ���������������������Ϣ�ȵ�
	4��int m_iWorkType
	���壺����ģʽ
		1 ��ʾע��ģʽ
		2 ��ʾʶ��ģʽ

	���ֵ��
	1��int *m_iqualityScore
	���壺���汾��m_iqualityScore��������focus��ֵȷ����
		�Ժ�汾�п����ں�focus�� blur �Լ��ֶ�λ�÷ֵȵõ�һ���ۺϵ�ֵ
		ʶ��ʱ�������� 50 ���ϱ�ʾ����
		ע��ʱ�������� 55 ���ϱ�ʾ����
	  
����ֵ���ͣ�int 
ͼ������
			0 ͼ���������ע�����ʶ��
		   <0 ͼ���������ϸ�
*/
/**********************************************************************************************/
int IRJudgeImageQuality(unsigned char * m_pImage,int m_nImageH, int m_nImageW, 
						int *devicePara, int nDeviceInNum, int m_iWorkType, int *m_iqualityScore);


/*����������int IREnrol( unsigned char* m_pImage, int imageH, int imageW, 
						int* devicePara, int deveiceParaNum,
						unsigned char* m_pExistedTemplate,  int *m_ExistedNum)

  �������ͣ�int
  
	����������
	���룺
	1��unsigned char* m_pImage, int imageH, int imageW
	���壺ԭʼͼ�����С����
	2��int *devicePara, int nDeviceInNum
	���壺�ⲿ�����������Ϣ���������������������Ϣ�ȵ�
		ע�⣺���Ժ�Ҳ�п������ڴ���һЩ���������������ⲿ���򻻵ƣ����߸����뿿������ʾ��Ϣ
			devicePara[0-3]: ��Ƶ����һ֡��ͫ��λ�ã��뾶���Ҷȹ���
			devicePara[4]  : �����Ƶ����
			devicePara[5]  : ��ǰ�û�������Ϣ
			devicePara[6-19]  : ��ʱû�ã�������չ��Ԥ����

			���ֵ��
			1��unsigned char* m_pExistedTemplate,  int *m_ExistedNum
			���壺�Ѿ����ڵ�ע��ģ�����Ŀ��
			�����ǰͼ��ͨ����ע��ʱ�����ȶԳɹ�����֤����ô����µ�ͼ���ģ����ӵ����棬
			����m_ExistedNum��һ����ˣ��ⲿ������뱣֤Ԥ�ȷ����㹻�Ŀռ��ѱ���ע��ͼ������ģ��

			����ֵ���ͣ�int 
			0����ǰͼ��ע��ɹ��������Ѿ������ɵ�ģ����ӵ�m_pExistedTemplate
			-4����ǰͼ��ע�᲻�ɹ��������Ѿ�ע���ͼ��ƥ��
			�����������ͼ�����������⣬���ʺϽ���������ȡ
			*/
/**********************************************************************************************/
int IREnrol( unsigned char* m_pImage, int imageH, int imageW, 
			int* devicePara, int deveiceParaNum,
			unsigned char* m_pExistedTemplate,  int *m_ExistedNum);

int IREnrolAdaBoost( unsigned char* m_pImage, int imageH, int imageW, 
			int* devicePara, int deveiceParaNum,
			unsigned char* m_pExistedTemplate,  int *m_ExistedNum);

//////////////////////////////////////////////////////////////////////////////////////////////////
/*����������int IRIdenWithList( unsigned char* m_pImage, int imageH, int imageW, 
								int* devicePara, int deveiceParaNum,
								unsigned char* m_pGallery,  int NumModel, 
								int* pFeatureIDList, int curListLen)

  �������ͣ�int
  
  ����������

	���룺
	1��unsigned char* m_pImage, int imageH, int imageW
	���壺�ֳ��ɼ�ͼ��ָ�뼰���С����
	2��int* devicePara, int deveiceParaNum,
	���壺��ͼ���Ӧ���豸����������ά�� 20
	3��unsigned char* m_pGallery,  int NumModel, 
	���壺ע��ģ������ֵ���׵�ַ�Լ�ע��ģ�壨ͼ�񣩸���
	4��int* pFeatureIDList, int curListLen
	���壺Ϊ���Ժ���ܵ���չ��pFeatureIDListָ���˲μӱȶԵ�ģ���˳���Լ���Ŀ
		ע�⣡�������ǰ�汾û��ʹ��list�������ȶԵ�˳����ô�����pFeatureIDList��ֵΪNULL ͬʱ��curListLen��Ϊ0

	�������

  ����ֵ���ͣ�int
		������룬������ʾ������ͼ��ƥ���ģ�����ţ�Ϊ����
		          -1 ��ʾͼ�������ϸ񣬵���û��ע��ģ����֮ƥ��
				  -2 ��ʾ����ͼ���������ϸ񣬲��ܵõ����ʵľ���λ���
				  ��������ƣ�ֻ��ͨ���˴ֶ�λ��ͼ��Ž���ʶ���ע�ᣬ
				  ���ֻҪ��-2�ͱ�ʾ�Ǿ���λ����������,��Ȼ������ⲿ����û��
				  ����ͼ�������ж� IRJudgeImageQuality(),��ôҲ�п����Ǿ���λ֮ǰ���������� */
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
/*����������int IRFeatureIdenWithList(unsigned char* m_pFeature, int iFeatureLen, 
								int* devicePara, int deveiceParaNum,
								unsigned char* m_pGallery,  int NumModel, 
								int* pFeatureIDList, int curListLen)

  �������ͣ�int
  
  ����������

	���룺
	1��unsigned char* m_pFeature, int iFeatureLen,
	���壺�ֳ��ɼ�ͼ���feature
	2��int* devicePara, int deveiceParaNum,
	���壺��ͼ���Ӧ���豸����������ά�� 20
	3��unsigned char* m_pGallery,  int NumModel, 
	���壺ע��ģ������ֵ���׵�ַ�Լ�ע��ģ�壨ͼ�񣩸���
	4��int* pFeatureIDList, int curListLen
	���壺Ϊ���Ժ���ܵ���չ��pFeatureIDListָ���˲μӱȶԵ�ģ���˳���Լ���Ŀ
		ע�⣡�������ǰ�汾û��ʹ��list�������ȶԵ�˳����ô�����pFeatureIDList��ֵΪNULL ͬʱ��curListLen��Ϊ0

	�������

  ����ֵ���ͣ�int
		������룬������ʾ������ͼ��ƥ���ģ�����ţ�Ϊ����
		          -1 ��ʾͼ�������ϸ񣬵���û��ע��ģ����֮ƥ��
				  -3 curListLen==0
				  -4 �������Ȳ��ԣ���������������û��ʹ�ô���ת�����ĳ���1260 ��
				   */
/**********************************************************************************************/
int IRFeatureIdenWithList ( unsigned char* m_pFeature, int iFeatureLen, 
						   int* devicePara, int deveiceParaNum,
						   unsigned char* m_pGallery,  int NumModel, 
						   int* pFeatureIDList, int curListLen);

// ��������ͼ�������������ʹ�ã�����ʧ�ܡ�
// ԭ�����£�
// 1. AdaBoost�������÷ֿ�ıȶԷ�����ÿһ�鲻���Լ��γ�Բ���������޷��Ӷ̵������ָ�����ת������
// ��˱�����������ͼ���ȡ������������ת������������������IR_RotateFeatureLen==1260����Ȼ���ٽ������������������бȽ�
int IRIm2RotateFeatureAdaBoost( unsigned char* m_pImage, int imageH, int imageW, 
			int* devicePara, int deveiceParaNum,
			unsigned char* m_pRotateFea,  int *m_FeatureLen);

int IRFeatureIdenAdaBoostWithList ( unsigned char* m_pFeature, int iFeatureLen, 
						   int* devicePara, int deveiceParaNum,
						   unsigned char* m_pGallery,  int NumModel, 
						   int* pFeatureIDList, int curListLen);

// ע������������ע��ͼ������˺������ж��Ƿ�Ϊ����
// �ǶԿ���һ����Ƿ���ʶ���ܣ�
int FakeDetect(unsigned char * m_pImage1,unsigned char * m_pImage2,unsigned char * m_pImage3);
#endif


