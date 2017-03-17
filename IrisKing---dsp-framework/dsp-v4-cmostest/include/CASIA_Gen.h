#include "CommonStruct.h"

int CASIA_Gen_Loc(pIrisImageInfo pIrisInfo, int workMode);

int CASIA_Gen_Enroll(pIrisImageInfo pIrisImages, int numIm, int* indexBest, double* avgMatchScore);

int CASIA_Gen_Code(pIrisImageInfo pIrisImages, int numIm, int* indexBest);

int CASIA_Gen_Match(unsigned char* irisRecTemplate, 
				  unsigned char* enrollTemplates, long numEnrollTemplates, 
				  MatchInput inputPara, pMatchOutput pMatchOutputPara);

int CASIA_Gen_CheckCompatiblityOfSIP2LIP(unsigned char* irisRecTemplate, unsigned char* enrollTemplates, 
					long numEnrollTemplates, long *IncompatiblityIndex);


int CASIA_Gen_GetSuggestTH(long NumOfTemp, float RotateAng, int conservationLevel,  float* pSuggestTh);


int CASIA_Gen_Info (const char* queryInfo, const char** answerInfo);


