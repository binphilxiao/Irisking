//
// Copyright (c) Microsoft Corporation.  All rights reserved.
//
//
// Use of this source code is subject to the terms of the Microsoft end-user
// license agreement (EULA) under which you licensed this SOFTWARE PRODUCT.
// If you did not accept the terms of the EULA, you are not authorized to use
// this source code. For a copy of the EULA, please see the LICENSE.RTF on your
// install media.
//
/*++
THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF
ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
PARTICULAR PURPOSE.
--*/
//===================================================================
// File Name : 2410slib.h
// Function  : S3C2410 
// Program   : Shin, On Pil (SOP)
// Date      : February 20, 2002
// Version   : 0.0
// History
//   0.0 : Programming start (February 20,2002) -> SOP
//===================================================================

#ifndef __2410slib_h__
#define __2410slib_h__

#ifdef __cplusplus
extern "C" {
#endif

void MMU_EnableICache(void);
void Launch(unsigned int PhysicalAddress);

#ifdef __cplusplus
}
#endif

#endif   //__2410slib_h__
