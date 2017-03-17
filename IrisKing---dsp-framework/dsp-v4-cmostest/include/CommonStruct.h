#if !defined(_COMMONSTRUC_H)
#define _COMMONSTRUC_H

//////////////////////////////////////////////////////////////////////////
//Image size setting
//////////////////////////////////////////////////////////////////////////
#define IR_IMAGE_HEIGHT					480
#define IR_IMAGE_WIDTH					640
#define IR_IMAGE_SISE					307200

//////////////////////////////////////////////////////////////////////////
//Different template lengths in Byte 
//////////////////////////////////////////////////////////////////////////
#define IR_ENR_FEATURE_LENGTH			512  
#define IR_REC_FEATURE_LENGTH			1024  

//////////////////////////////////////////////////////////////////////////
//In the struct MatchOutputStruct, denote the maximum 
//of possible matched result under a certain threshold. 
//////////////////////////////////////////////////////////////////////////
#define IR_MAX_NUM_OF_MATCH				100  

//////////////////////////////////////////////////////////////////////////
//Total additional memory space that are used in IrisImageInfoStruct
//////////////////////////////////////////////////////////////////////////
//The unit is byte
#define IR_IRISINFO_MEMORYSIZE         ((2*IR_IMAGE_SISE+IR_ENR_FEATURE_LENGTH+IR_REC_FEATURE_LENGTH)*sizeof(unsigned char))
#define IR_INFO_IMDATA_POS              0
#define IR_INFO_LOCIM_POS              IR_IMAGE_SISE
#define IR_INFO_ENRTP_POS              (IR_INFO_LOCIM_POS+IR_IMAGE_SISE)
#define IR_INFO_RECTP_POS              (IR_INFO_ENRTP_POS+IR_ENR_FEATURE_LENGTH)
//Total additional memory space that are used in MatchInput
//NOTE: The unit is byte
#define IR_MATCHINPUT_MEMORYSIZE       (2*sizeof(float))
#define IR_MTIN_RTANG_POS               0
//Total additional memory space that are used in MatchOutput
//NOTE: The unit is byte
#define IR_MATCHOUTPUT_MEMORYSIZE      (IR_MAX_NUM_OF_MATCH*(sizeof(long)+4*sizeof(float)+3*sizeof(int)))
#define IR_MTOUT_INDEX_POS              0
#define IR_MTOUT_SCORE_POS             (IR_MTOUT_INDEX_POS+IR_MAX_NUM_OF_MATCH*sizeof(long))
#define IR_MTOUT_CONF_POS              (IR_MTOUT_SCORE_POS+IR_MAX_NUM_OF_MATCH*sizeof(float))
#define IR_MTOUT_ANGLE_POS             (IR_MTOUT_CONF_POS+IR_MAX_NUM_OF_MATCH*sizeof(float))
#define IR_MTOUT_VALIDPERCENT_POS      (IR_MTOUT_ANGLE_POS+IR_MAX_NUM_OF_MATCH*sizeof(float))
#define IR_MTOUT_LEVEL_POS             (IR_MTOUT_VALIDPERCENT_POS+IR_MAX_NUM_OF_MATCH*sizeof(float))
#define IR_MTOUT_MTEDBIT_POS           (IR_MTOUT_LEVEL_POS+IR_MAX_NUM_OF_MATCH*sizeof(int))
#define IR_MTOUT_VILIDBIT_POS          (IR_MTOUT_MTEDBIT_POS+IR_MAX_NUM_OF_MATCH*sizeof(int))

//////////////////////////////////////////////////////////////////////////
//Possible status of an iris image
//////////////////////////////////////////////////////////////////////////
//No processing is performed
#define IR_STATUS_BEGIN                 0
//Iris detection has been performed
#define IR_STATUS_IRISDETECT            1
//Fine iris segmentation has been performed
#define IR_STATUS_SEGMENTATION          2
//Iris image quality evaluations have been finished
#define IR_STATUS_QUALITYEVAL           3
//CASIA_Gne_Loc has succeed
#define IR_STATUS_LOC                   4
//The iris image has been coded
#define IR_STATUS_CODED                 5

//////////////////////////////////////////////////////////////////////////
//Localization methods
//////////////////////////////////////////////////////////////////////////
#define IR_LOC_DEFAULT					0
#define IR_LOC_CIRCLE					1
#define IR_LOC_SNAKE					2

//////////////////////////////////////////////////////////////////////////
//Whether to perform spoof iris image detection
//////////////////////////////////////////////////////////////////////////
#define IR_NO_SPOOF_DETECT				0
#define IR_DO_SPOOF_DETECT				1

//////////////////////////////////////////////////////////////////////////
//The position that the iris comes across the image boundaries
//They are defined as shown in the following figure.
//////////////////////////////////////////////////////////////////////////
//         ----------------------------------------------------------
//		   |  TopLeft  (1-1=4) |   TopCenter (1-0=3) |  TopCenter (1-2=5) | 
//         |---------------------------------------------------------
//		   | CenterLeft(0-1=1) | CenterCenter(0-0=0) | CenterRight(0-2=2) |
//         |---------------------------------------------------------
//		   | BottomLeft(2-1=7) | BottomCenter(2-0=6) | BottomRight(2-2=8) |
//         |---------------------------------------------------------
#define IR_POS_CenterCenter             0
#define IR_POS_CenterLeft               1
#define IR_POS_CenterRight              2
#define IR_POS_TopCenter                3
#define IR_POS_TopLeft                  4
#define IR_POS_TopRight                 5
#define IR_POS_BottomCenter             6
#define IR_POS_BottomLeft               7
#define IR_POS_BottomRight              8
#define IR_POS_OuterOuter               -1

//////////////////////////////////////////////////////////////////////////
//Overall image quality
//////////////////////////////////////////////////////////////////////////
#define IR_IMAGE_QUALITY_BAD            -1 
#define IR_IMAGE_QUALITY_POOR           0
#define IR_IMAGE_QUALITY_FAIR           1
#define IR_IMAGE_QUALITY_GOOD           2
#define IR_IMAGE_QUALITY_EXCELLENT      3


//////////////////////////////////////////////////////////////////////////
//find mode (or FisrtMatch)
//////////////////////////////////////////////////////////////////////////
//Do an exhaustive search and return the Best match you find in the entire list.
#define IR_FIND_MODE_EXHAUST			0  
//Return with the very first match.
#define IR_FIND_MODE_FIRSTMATCH			1   

//////////////////////////////////////////////////////////////////////////
//Use default match threshold
//////////////////////////////////////////////////////////////////////////
#define IR_USE_DEAULT_MATCHTH			(-100.0f) 

//////////////////////////////////////////////////////////////////////////
//Max negative and positive rotation angle 
//////////////////////////////////////////////////////////////////////////
#define IR_MAX_NEG_ROTATION_ANGLE		(-24.0f)
#define IR_MAX_POS_ROTATION_ANGLE		(24.0f)

//////////////////////////////////////////////////////////////////////////
//Match strategy
//////////////////////////////////////////////////////////////////////////
//Do not use cascade classifier
#define IR_NONCASCADE_CLASSIFIER         1
//Use cascade classifier
#define IR_CASCADE_CLASSIFIER            2

//////////////////////////////////////////////////////////////////////////
//Match Threshold Calculation
//////////////////////////////////////////////////////////////////////////
//The default (also the largest possible) value of systemFAR when calling 
//the function CASIA_Gen_GetSuggestTH()
//#define IR_DEFAULT_SYSTEMFARLEVEL        0.001
#define IR_MIN_NUM_ENR_TP                5000L
#define IR_DEFAULT_CONSERVATION_LEVEL    50

//////////////////////////////////////////////////////////////////////////
//Quality levels of each match
//////////////////////////////////////////////////////////////////////////
#define IR_MATCH_LEVEL_BAD              -1
#define IR_MATCH_LEVEL_POOR              0 //>1050
#define IR_MATCH_LEVEL_FAIR              1 //>1140
#define IR_MATCH_LEVEL_GOOD              2 //>1184
#define IR_MATCH_LEVEL_EXCELLENT         3 //1270

//Work mode
//Enroll mode, with high quality requirement.
//Do not show the localization result.
#define IR_WORK_MODE_ENR				 0   
//Identification mode, with Fair  quality requirement, 
//Do not show the localization result.
#define IR_WORK_MODE_REC				 1   
//Demo mode, with low  quality requirement.
//Show the localization result.
#define IR_WORK_MODE_DEMO				 2   

//////////////////////////////////////////////////////////////////////////
//Error codes
//////////////////////////////////////////////////////////////////////////

//Global Error Code
#define IR_FUN_SUCCESS					0 //Function Success
#define IR_DEFAULT_ERR				-8000 //Default Function Error For Some Infrequent Reason
//The inputted iris IrisImageInfo is in wrong status, e.g., an IrisImageInfo is 
//processed by CASIA_Gen_Code before calling CASIA_Gen_Loc
#define IR_IMAGE_IN_BAD_STATUS      -8001   //Bad Process Stage
#define IR_LOC_BAD_IMSIZE           -8002   //Bad image size setting
#define IR_BAD_IM_NUM               -8003   //A bad Image number was inputted into CG_Enroll or CG_Loc or CG_Code
//Error Codes For Bad Image Qualities of Some Reason
#define IR_QE_BAD_IMQUALITY         -8100   //Bad Image Quality for Some Infrequent Reason
#define IR_QE_BAD_REFLECTION        -8101   //Too Many Reflection Points in the Iris Image
#define IR_QE_DEFOCUS               -8103   //Image Severe Defocus
#define IR_QE_MOTION_BLUR           -8104   //Image Severe Motion Blur
#define IR_QE_HEAVY_OCCLUSION       -8106   //Heavy Occlusion, not suitable for recognition and enrollment
#define IR_QE_TOO_SMALL_PUPIL       -8115   //The Pupil Size is Too Small
#define IR_QE_TOO_SMALL_IRIS        -8116   //The Iris Size is Too Small
#define IR_QE_OFF_AXIS_VIEWANGLE    -8117   //Off-axis View Angle
#define IR_QE_WEAR_CONTACTLENS      -8141   //The image is wearing contact lens
    
//Error During Iris Detection (Coarse Iris Localization)
#define IR_PF_ERROR                 -8200   //Error During Iris Detection (Coarse Iris Localization)

//Error When Localizing the Boundaries of the Iris Image
#define IR_SG_FAIL_INNER            -8302   //Fail to Localize the Inner Boundary
#define IR_SG_FAIL_OUTER            -8303   //Fail to Localize the Outer Boundary
#define IR_SG_DEFAULT_ERR           -8300   //Fail to Localize the Iris Boundaries for Some Infrequent Reason
#define IR_LOC_MARK_ERR				-8340   //Error when marking the iris image during demo.


//Error During Image Coding
#define IR_FE_CODING_ERR            -8500   //Fail to Code the Iris Image (Both Enrollment and Recognition)
#define IR_ENROLL_ERR				-8501   //Fail to enroll the iris images


//Error During Template Matching
#define IR_FM_MATCH_ERR             -8600   //Default Error During Template Matching
#define IR_MATCH_NO_MATCH			-8601   //Fail to find a match.
#define IR_MATCH_BAD_FINDMODE       -8602   //Invalid find mode setting in MatchInput
#define IR_MATCH_BAD_MATCHSTRATEGY  -8603   //Invalid match strategy, currently, only IR_CASCADE_CLASSIFIER is supported
#define IR_MATCH_BAD_MTTHRESHOLD    -8604   //Invalid match threshold is inputted
#define IR_MATHC_BAD_CGVERSION      -8610   //The codes of the two matching templates are generated with different versions of CG.
#define IR_MATCH_BAD_MATCHPARA      -8611   //Bad input values for CASIA_Gen_GetSuggestTH.


/* Some useful structure */
typedef struct IrisImageInfoStruct 
{  
	//////////////////////////////////////////////////////////////////////////
	// Input Parameters
	//////////////////////////////////////////////////////////////////////////

	//Height of the iris image in pixels. It must be fixed to 480 currently.
	int imageH;  

	//Width of the iris image in pixels. It must be fixed to 640 currently.
	int imageW;  

	//1D array of pixel intensity values of the original iris image
	unsigned char *imageData; 

	//Code of iris localization method, defined as follows:
	//IR_LOC_DEFAULT: Default technique determined by CASIA_GEN algorithm.
	//IR_LOC_CIRCLE : Use circle fitting strategy to localize the iris edges.
	//IR_LOC_SNAKE  : Use edge fitting strategy (e.g. active contour) to localize the iris edges.
	int locMethod;

	//Specify whether to enable spoof eye detection
	//IR_NO_SPOOF_DETECT : Do not perform spoof eye detection
	//IR_DO_SPOOF_DETECT : Perform spoof eye detection
	int ifSpoofDetect;

	//In which status the iris image is processed
	//IR_STATUS_BEGIN 
	//IR_STATUS_IRISDETECT 
	//IR_STATUS_SEGMENTATION          
	//IR_STATUS_QUALITYEVAL
	//IR_STATUS_CODED
	int processStatus;

	//1D array of pixel intensity values of the demo iris image. Pupil/iris and iris/sclera boundary points are marked with white pixels.
	unsigned char *locImage;

	//The row index of pupil center in iris image, ranging from 1 to IR_IMAGE_HEIGHT.
	float pupilRow;

	//The column index of pupil center in iris image,ranging from 1 toIR_IMAGE_WIDTH
	float pupilCol;

	//The radius of pupil in iris image
	float pupilRadius;

	////The confidence of pupillary boundary localization, ranging from 0-100, the larger
	////the confidence, the better the pupillary boundary localization is.
	//int pupilBdConf;

	//The row index of iris center in iris image, ranging from 1 to IR_IMAGE_HEIGHT
	float irisRow;

	//The column index of iris center in iris image, ranging from 1 to IR_IMAGE_WIDTH
	float irisCol;

	//The radius of iris in iris image
	float irisRadius;

	//The position that the pupillary boundary cross the image boundaries.
	//ranging from 0-9, see the micro-definitions whose name begin with IR_POS_*******
	int pupilPos;

	//THe percentage of visible part of the pupillary boundary. 
	int pupilVisiblePercent;

	//The position that the limbic boundary cross the image boundaries.
	//ranging from 0-9, see the micro-definitions whose name begin with IR_POS_*******
	int irisPos;

	//THe percentage of visible part of the iris boundary. 
	int irisVisiblePercent;

	//The overall percentage of visible part of the annular iris region
	int overallVisiblePercent;

	//Indicator of the focus level of the iris image, ranging from 0 to 100. High value of focusScore means clear iris image and low value of focusScore means defocused iris image.
	int focusScore; 

	//Percentage of the visible part of the iris., ranging from 0 to 100. 100 means no occlusion while 65 means 65 percent of the iris are occluded.
	int percentVisible;

	// Number of valid iris feature bits of the iris.
	int numValidBits;

	// Confidence of the input iris image is obtained from spoof eye. 
	// 0 means the image is obtained from genuine eye, while 100 means the image is a spoof one.
	int spoofValue; 

	// Signal to noise ratio of the iris image.
	float SNR; 

	// Saturation level of the iris image.
	float Saturation; 

	// Indicator of the how much the image is interlaced. Higher value indicates the iris image is heavier interlaced.
	float interlaceValue; 

	//Indicator of reflection occlusion within the ROI region of the iris image.
	//This parameter is obtained based on the results of iris localization.
	//Higher value indicates more reflection ratio. ranging from 0-100.
	//where 100 means all the region within the limbic circle is occluded by reflections.
	int  reflectionRatioInROI; 

	//Indicator of reflection occlusion within the entire iris image.
	//This parameter is obtained before iris localization.
	//Higher value indicates more reflection ratio. ranging from 0-100.
	//where 100 means all the region within the limbic circle is occluded by reflections.
	int  reflectionRatioInImage; 

	// The overall quality of the iris image, can be one of the following levels.
	//IR_IMAGE_QUALITY_BAD      
	//IR_IMAGE_QUALITY_POOR     
	//IR_IMAGE_QUALITY_FAIR     
	//IR_IMAGE_QUALITY_GOOD     
	//IR_IMAGE_QUALITY_EXCELLENT
	int	QualityLevel;

	//Iris image feature template enrolled into database, with fixed length 512 bytes.
	unsigned char *irisEnrTemplate;

	//Iris image feature template of recognition image, with fixed length 1024 bytes.
	unsigned char *irisRecTemplate;
} IrisImageInfo, *pIrisImageInfo;



typedef struct MatchInputStruct
{
	// findMode indicates the find mode during iris template matching. 
	//IR_FIND_MODE_EXHAUST: Do an exhaustive search and return the Best 
	//						match found in the entire list.
	//IR_FIND_MODE_FIRSTMATCH: Return with the very first match once found. 
	int findMode;

	//Decision threshold that should be used in the current iris matching.
	//It can be determined by the user by calling CASIA_Gen_GetSuggestTH function,
	//but CASIA_GEN will use the default threshold when matchTh is set to IR_USE_DEAULT_MATCHTH. 
	float matchTh;

	//Range of rotation angle (in degree) to compensate for the head rotation.
	//The angRotate should be in the range [MAX_NEG_ROTATION_ANGLE, MAX_POS_ROTATION_ANGLE]. 
	//For example, angRotate[1]=-10, angRotate[2]= 5.
	//Note when angRotate[0] > angRotate[1] CASIA_GEN will use default rotation angle setting.
	float *angRotate;

	// Code of iris matching strategy.
	//IR_NONCASCADE_CLASSIFIER: do not use cascaded matching structure;
	//IR_CASCADE_CLASSIFIER: use cascaded matching structure;
	//NOTE: Current only IR_CASCADE_CLASSIFIER are supported.
	int matchStrategy;

} MatchInput, *pMatchInput;


typedef struct MatchOutputStruct
{
	//Decision threshold that has been used in current iris match, 
	//above which a match is considered true.
	float matchTh; 

	//The number of matched iris templates in database.
	int matchNum;

	//Index of matched template in the enrolled template list. 
	long *matchIndex;

	//Match score of each match, ranging from 0 to 1, 
	//and the higher the more confidence of the match.
	float *matchScore;

	//Confidence level of each match, ranging from 0 to 1.
	float *matchConfidence;

	// The rotation angle of the recognition iris image that 
	//best matching the enrolled template, 
	//ranging from [MAX_NEG_ROTATION_ANGLE, MAX_POS_ROTATION_ANGLE].
	float *matchAng;

	// Percent of the area of valid iris image regions possible for iris matching.
	float *validROIPercent;	

	// Quality Level of current match, ranging from poor - excellent
	//	IR_MATCH_LEVEL_POOR     
	//	IR_MATCH_LEVEL_FAIR     
	//	IR_MATCH_LEVEL_GOOD     
	//	IR_MATCH_LEVEL_EXCELLENT
	// NOTE: currently only IR_MATCH_LEVEL_GOOD and IR_MATCH_LEVEL_EXCELLENT 
	// will be returned.
	int *matchLevel;

	// Number of matched bits.
	int *matchedBits;

	// The total number of valid bits involving iris matching.
	int *validMatchBits;

} MatchOutput, *pMatchOutput;

#endif

