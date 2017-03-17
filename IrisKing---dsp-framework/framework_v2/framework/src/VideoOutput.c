#include <std.h>
#include <csl.h>
#include <csl_dat.h>
#include <csl_cache.h>
#include <fvid.h>
#include <tsk.h>

#include "..\..\include\videoport.h"
#include "..\..\include\vportdis_fb.h"
#include "evmdm642.h"
#include "saa7105.h"

#include "..\..\include\vdisparams.h"

static FVID_Handle disChan;

void tskVideoOutputInit()
{
    int             status;

    disChan = FVID_create("/VP2DISPLAY", IOM_OUTPUT,
        &status, (Ptr)&EMB_vDisParamsChan, NULL);

}

void tskVideoOutputStart()
{
    FVID_control(disChan, VPORT_CMD_START, NULL);
}

