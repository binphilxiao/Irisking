#
#  Copyright 2003 by Texas Instruments Incorporated.
#  All rights reserved. Property of Texas Instruments Incorporated.
#  Restricted rights to use, duplicate or disclose this code are
#  granted through contract.
#  
#
# "@(#) DDK 1.10.00.23 07-02-03 (ddk-b12)"
TITLE
-----
VPORT (IOM driver for DM642 VideoPort for Capture & Display)

DOCUMENTATION
-------------
The documenation for this device driver can be found at:
	/ddk/docs/*.pdf

USAGE
-----
This device driver is a mini driver for VideoPort peripheral on TMS320DM642
chips. It uses EDMA to do the data transfers. This driver supports Video
Capture & Video Display. It supports BT656 & YC mode for capture. And it 
supports BT656, YC and Raw mode for display. It does not support TSI or Raw 
mode for capture. 

FILES
-----
- vportcap.c: Implementation of capture driver.
- vportdis.c: Implementation of display driver.
- saa7115.c: Implementation of saa7115 video decoder configuration through I2C.
- saa7105.c: Implementation of saa7105 video encoder configuration through I2C.
- _saa7105.c: configuration tables for saa7105. 
- _saa7115.c: configuration tables for saa7115.
_ _iic.c: _IIC_write function.

NOTES
----- 
- Files in the library are compiled with "no optimization switch" turned on, 
  and the same is true for the project files. If you plan to use this module 
  in a project release, you should rebuild the library with optimization 
  turned on.

Known Problems At Release
-------------------------
- None.

Q&A
---
Q1: Where can I find the documentation for writing IOM drivers?

Q1: Where can I find the documentation for writing IOM drivers?
A1: The literature number is SPRU616, DSP/BIOS Device Driver Developer's Guide.
