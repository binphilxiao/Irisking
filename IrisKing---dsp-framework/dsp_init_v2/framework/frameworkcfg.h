/*   Do *not* directly modify this file.  It was    */
/*   generated by the Configuration Tool; any  */
/*   changes risk being overwritten.                */

/* INPUT framework.cdb */

#define CHIP_DM642 1

/*  Include Header Files  */
#include <std.h>
#include <swi.h>
#include <tsk.h>
#include <log.h>
#include <sts.h>

#ifdef __cplusplus
extern "C" {
#endif

extern far SWI_Obj KNL_swi;
extern far TSK_Obj TSK_idle;
extern far LOG_Obj LOG_system;
extern far LOG_Obj trace;
extern far STS_Obj stsCycleTime;
extern far STS_Obj stsDispTime;
extern far STS_Obj stsExeTimeChJpegDec;
extern far STS_Obj stsExeTimeChJpegEnc;
extern far STS_Obj stsCapTime;
extern far void CSL_cfgInit();

#ifdef __cplusplus
}
#endif /* extern "C" */
