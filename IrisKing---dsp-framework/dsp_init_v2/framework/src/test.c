#include <std.h>

#include <stdio.h>
#include <csl.h>
#include <csl_cache.h>
#include <tsk.h>
#include "..\..\include\utility.h"
#include "..\..\include\dbg_printf.h"


int dbg_output(char *fmt, ...)
{
#if 1
	int r;
	va_list ap;
	va_start(ap, fmt);
	r = vprintf(fmt, ap);
	va_end(ap);
	return r;
#endif

#if 0	
	return 0;
#endif
}
