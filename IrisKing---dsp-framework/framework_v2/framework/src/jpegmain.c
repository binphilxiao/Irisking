#include <std.h>

#include <csl.h>
#include <csl_cache.h>
#include <csl_dat.h>

extern int intHeap,extHeap;
/* perform all initializations */
void main()
{
	// Turn on the cache first
    CACHE_setL2Mode(CACHE_128KCACHE);

    DAT_open(DAT_CHAANY, DAT_PRI_LOW, DAT_OPEN_2D);

    CACHE_setL2Queue(0x3, 0x7);
    CACHE_setL2Queue(0x1, 0x7);
    CACHE_setPriL2Req(CACHE_L2PRIHIGH);

//	imagedata1 = &image[1078];
    /* Initialzie the start all the tasks */
//    tskVideoInputInit();

//    EVMDM642_rset(0x10, 0x20);
//    EVMDM642_rset(0x10, 0x08);

//    tskVideoInputStart();

#ifdef _EMULATOR
	tskVideoInputInit();
	tskVideoInputStart();

	tskVideoOutputInit();
	tskVideoOutputStart();
#endif
	
	tskDataInit();

	puts("main");
}
