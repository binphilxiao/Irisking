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
/************************************************
 * NAME    : 2410loader.C			*
 * DESC    : 					*
 * History : 2002.02.25 ver 0.0			*
************************************************/

#include <stdlib.h>
#include <string.h>
#include "option.h"
#include "def.h"
#include "2410addr.h"
#include "2410lib.h"
#include "2410slib.h"
#include "2410addr.h"
#include "nand.h"
#include "loader.h"

#define SIGN_ON "\nWinCE NAND Boot v1.00\n" __DATE__ " " __TIME__ "\n"

// HMSEO : Please check UUID memory location from inc\drv_glob.h file.
unsigned char * pbUUID = ((unsigned char *) (0x30030000 + 0x4608));

//
// Globals
//
DWORD JumpAddr;

TOC toc; // made global because it's too big for our tiny stack


DWORD ReadEbootFromNand()
{
    DWORD dwSectorsNeeded;
    DWORD dwSector, dwLength;         // Start Sector & Length
    DWORD dwRAM, i;

//////////////////////////////////////////////////
//Init Toc 
    toc.id[0].dwVersion     = (EBOOT_VERSION_MAJOR << 16) | EBOOT_VERSION_MINOR;
    toc.id[0].dwSignature   = IMAGE_EBOOT_SIG;
//    memcpy(toc.id[0].ucString, "eboot.nb0", sizeof("eboot.nb0")+1);   //  NUll terminate
    toc.id[0].dwImageType   = IMAGE_TYPE_RAMIMAGE;
    toc.id[0].dwLoadAddress = 0x8ff00000;//EBOOT_RAM_IMAGE_BASE;
    toc.id[0].dwJumpAddress = 0x8ff00000;//EBOOT_RAM_IMAGE_BASE;
    toc.id[0].dwTtlSectors  = FILE_TO_SECTOR_SIZE(EBOOT_RAM_IMAGE_SIZE);
    // 1 contigious segment
    toc.id[0].sgList[0].dwSector = BLOCK_TO_SECTOR(EBOOT_BLOCK);
    toc.id[0].sgList[0].dwLength = toc.id[0].dwTtlSectors;

    dwSectorsNeeded = toc.id[0].dwTtlSectors;
   ////////////////////////////////////////////////
   
    dwRAM    = VIRTUAL_TO_PHYSICAL(toc.id[0].dwLoadAddress);

    JumpAddr = toc.id[0].dwJumpAddress ? VIRTUAL_TO_PHYSICAL(toc.id[0].dwJumpAddress) :
                                               VIRTUAL_TO_PHYSICAL(toc.id[0].dwLoadAddress);
                                               
	    i = 0;
	while (dwSectorsNeeded && i < MAX_SG_SECTORS)
	{
        dwSector = toc.id[0].sgList[i].dwSector;
         dwLength = toc.id[0].sgList[i].dwLength;

        // read each sg segment
        while (dwLength) {
            if ( !FMD_ReadSector(dwSector, (LPBYTE)dwRAM, NULL, 1) )
            {
//                  Uart_SendString("ERR_DISK_OP_FAIL2: ");
//                  Uart_SendDWORD(dwSector, TRUE);
            }
            
    	     dwSector++;
    	     dwLength--;
            dwRAM += SECTOR_SIZE;
        }

        dwSectorsNeeded -= toc.id[0].sgList[i].dwLength;
        i++;
    }
	return ERR_SUCCESS;
}

void Main(void)
{
    DWORD 	err; 
    
    MMU_EnableICache();

    Uart_Init();
    Uart_SendString(SIGN_ON);

    NF_Init();

    ReadEbootFromNand();
    Launch(JumpAddr);

    Uart_SendString("\nBoot ERROR:");
    Uart_SendDWORD(err, TRUE);
    while (1);
}
