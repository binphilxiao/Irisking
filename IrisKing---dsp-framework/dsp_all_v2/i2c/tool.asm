;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Jul 30 11:40:51 2007                                *
;******************************************************************************
	.compiler_opts --endian=little --mem_model:code=near --mem_model:data=far --quiet --silicon_version=6400 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64xx                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far                                                  *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : Optimized w/Profiling Info                           *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("tool.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("dbg_output"), DW_AT_symbol_name("_dbg_output")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
DW$3	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("exit"), DW_AT_symbol_name("_exit")
	.dwattr DW$4, DW_AT_type(*DW$T$10)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)

DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_SetupConfigZone"), DW_AT_symbol_name("_ATMEL_SetupConfigZone")
	.dwattr DW$5, DW_AT_type(*DW$T$10)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)

DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_WriteUserZone"), DW_AT_symbol_name("_ATMEL_WriteUserZone")
	.dwattr DW$6, DW_AT_type(*DW$T$10)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)

DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("generate_key"), DW_AT_symbol_name("_generate_key")
	.dwattr DW$7, DW_AT_type(*DW$T$10)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)

DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_WriteRawConfigZone"), DW_AT_symbol_name("_ATMEL_WriteRawConfigZone")
	.dwattr DW$8, DW_AT_type(*DW$T$10)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)

DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_Auth"), DW_AT_symbol_name("_ATMEL_Auth")
	.dwattr DW$9, DW_AT_type(*DW$T$10)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)

DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_EncryptActive"), DW_AT_symbol_name("_ATMEL_EncryptActive")
	.dwattr DW$10, DW_AT_type(*DW$T$10)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_Decrypt"), DW_AT_symbol_name("_ATMEL_Decrypt")
	.dwattr DW$11, DW_AT_type(*DW$T$10)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)

DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_WriteFuse"), DW_AT_symbol_name("_ATMEL_WriteFuse")
	.dwattr DW$12, DW_AT_type(*DW$T$10)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("ATMEL_ReadFuse"), DW_AT_symbol_name("_ATMEL_ReadFuse")
	.dwattr DW$13, DW_AT_type(*DW$T$10)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)

DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("getch"), DW_AT_symbol_name("_getch")
	.dwattr DW$14, DW_AT_type(*DW$T$10)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
	.sect	".const"
	.align	8
_$T0$1:
	.field  	213,8			; _$T0$1[0] @ 0
	.field  	0,8			; _$T0$1[1] @ 8
	.field  	213,8			; _$T0$1[2] @ 16
	.field  	0,8			; _$T0$1[3] @ 24
	.field  	213,8			; _$T0$1[4] @ 32
	.field  	0,8			; _$T0$1[5] @ 40
	.field  	213,8			; _$T0$1[6] @ 48
	.field  	0,8			; _$T0$1[7] @ 56

DW$15	.dwtag  DW_TAG_variable, DW_AT_name("$T0$1"), DW_AT_symbol_name("_$T0$1")
	.dwattr DW$15, DW_AT_type(*DW$T$26)
	.dwattr DW$15, DW_AT_location[DW_OP_addr _$T0$1]
;	C:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe --gen_opt_info=2 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI5482 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI5484 --opt_info_filename=D:/pred/dsp/vport/Debug/tool.nfo 
	.sect	".text"
	.global	_C0104_Program

DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("C0104_Program"), DW_AT_symbol_name("_C0104_Program")
	.dwattr DW$16, DW_AT_low_pc(_C0104_Program)
	.dwattr DW$16, DW_AT_high_pc(0x00)
	.dwattr DW$16, DW_AT_begin_file("tool.c")
	.dwattr DW$16, DW_AT_begin_line(0x05)
	.dwattr DW$16, DW_AT_begin_column(0x05)
	.dwattr DW$16, DW_AT_frame_base[DW_OP_breg31 328]
	.dwattr DW$16, DW_AT_skeletal(0x01)
	.dwpsn	"tool.c",6,1

;******************************************************************************
;* FUNCTION NAME: _C0104_Program                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,   *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,DP,SP,*
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 8 Args + 276 Auto + 40 Save = 324 byte               *
;******************************************************************************
_C0104_Program:
;** --------------------------------------------------------------------------*
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$17, DW_AT_type(*DW$T$10)
	.dwattr DW$17, DW_AT_location[DW_OP_reg4]
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$18, DW_AT_type(*DW$T$22)
	.dwattr DW$18, DW_AT_location[DW_OP_reg20]
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf_len"), DW_AT_symbol_name("_buf_len")
	.dwattr DW$19, DW_AT_type(*DW$T$10)
	.dwattr DW$19, DW_AT_location[DW_OP_reg6]
;** 10	-----------------------    AR_enc[] = {...};
;** 15	-----------------------    if ( buf_len != 156 ) goto g9;

           MVKL    .S1     _$T0$1,A3         ; |10| 
||         MV      .L1X    SP,A31            ; |6| 
||         ADDK    .S2     -328,SP           ; |6| 

           MVKH    .S1     _$T0$1,A3         ; |10| 
||         MVKL    .S2     SL5+0,B8          ; |17| 
||         ADD     .D2     SP,16,B6          ; |34| 
||         STDW    .D1T1   A11:A10,*-A31(32)

           MVK     .S1     156,A3            ; |15| 
||         LDDW    .D1T1   *A3,A9:A8         ; |10| 
||         ADD     .D2     SP,16,B9          ; |37| 
||         MVKH    .S2     SL5+0,B8          ; |17| 

           CMPEQ   .L1     A6,A3,A0          ; |15| 
||         ADD     .D2     SP,24,B7          ; |39| 
||         STDW    .D1T1   A13:A12,*-A31(24)
||         MV      .S1     A4,A12            ; |6| 

           MV      .L1X    B9,A11            ; |37| Register A/B partition copy
||         ADD     .D2     SP,31,B5          ; |246| 

           MV      .L1X    B7,A10            ; |39| Define a twin register
||         STW     .D2T2   B10,*+SP(312)
||         MV      .L2     B4,B10            ; |6| 

           MV      .L1X    B5,A13            ; |246| Register A/B partition copy
||         STW     .D2T2   B3,*+SP(292)

           STDW    .D2T1   A9:A8,*+SP(24)    ; |10| 

           STW     .D2T2   B11,*+SP(316)
|| [!A0]   B       .S1     L6                ; |15| 

           ADD     .D2     B10,28,B11        ; |31| 
|| [!A0]   CALL    .S1     _dbg_output       ; |17| 

           STW     .D2T2   B13,*+SP(324)
||         MVK     .S2     0x80,B13          ; |249| 

           STW     .D2T2   B12,*+SP(320)
           ADD     .D2     B10,27,B12        ; |243| 

           STW     .D2T1   A14,*+SP(328)
||         MV      .L1X    B6,A14            ; |34| Register A/B partition copy

           ; BRANCHCC OCCURS {L6}            ; |15| 
;** --------------------------------------------------------------------------*
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 249
;*      Loop closing brace source line   : 249
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 128                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     1        0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     1        2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Did not find schedule
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Did not find schedule
;*         ii = 8  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh14
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L1:    ; PIPED LOOP PROLOG
;** 30	-----------------------    len = ATMEL_SetupConfigZone(index, buf);
;** 31	-----------------------    ATMEL_WriteUserZone(index, buf+28, len);
;** 34	-----------------------    generate_key(&G, buf);
;** 37	-----------------------    ATMEL_WriteRawConfigZone(index, 144, &G, 8);
;** 39	-----------------------    ATMEL_WriteRawConfigZone(index, 32, &AR_enc, 8);
;** 41	-----------------------    ATMEL_Auth(index, &G);
;** 42	-----------------------    ATMEL_EncryptActive(index);
;** 44	-----------------------    ATMEL_Decrypt(index, &temp, 128);
;** 243	-----------------------    mem1 = &buf[27];  // [0]
;** 246	-----------------------    mem2 = &temp[-1];  // [0]
;** 249	-----------------------    L$1 = 128;  // [0]
;**  	-----------------------    #pragma MUST_ITERATE(1, 128, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**	-----------------------g3:
;** 249	-----------------------    cp = *(++mem1);  // [0]
;** 249	-----------------------    U$32 = *(++mem2);  // [0]
;** 249	-----------------------    if ( cp != U$32 ) goto g5;  // [0]
;** 249	-----------------------    if ( --L$1 ) goto g3;  // [0]
           CALL    .S2     _ATMEL_SetupConfigZone ; |30| 
           NOP             4
           ADDKPC  .S2     RL1,B3,0          ; |30| 
RL1:       ; CALL OCCURS {_ATMEL_SetupConfigZone}  ; |30| 
           CALL    .S2     _ATMEL_WriteUserZone ; |31| 
           NOP             4

           MV      .L1     A4,A6             ; |30| 
||         MV      .L2     B11,B4            ; |31| 
||         MV      .S1     A12,A4            ; |31| 
||         ADDKPC  .S2     RL2,B3,0          ; |31| 

RL2:       ; CALL OCCURS {_ATMEL_WriteUserZone}  ; |31| 
           CALL    .S2     _generate_key     ; |34| 
           NOP             4

           MV      .L1     A14,A4            ; |34| 
||         MV      .L2     B10,B4            ; |34| 
||         ADDKPC  .S2     RL3,B3,0          ; |34| 

RL3:       ; CALL OCCURS {_generate_key}     ; |34| 
           CALL    .S2     _ATMEL_WriteRawConfigZone ; |37| 
           NOP             3
           MVK     .S2     0x90,B4           ; |37| 

           MV      .L1     A11,A6            ; |37| 
||         MVK     .L2     0x8,B6            ; |37| 
||         MV      .S1     A12,A4            ; |37| 
||         ADDKPC  .S2     RL4,B3,0          ; |37| 

RL4:       ; CALL OCCURS {_ATMEL_WriteRawConfigZone}  ; |37| 
           CALL    .S2     _ATMEL_WriteRawConfigZone ; |39| 
           NOP             3
           MVK     .S2     0x20,B4           ; |39| 

           MV      .L1     A12,A4            ; |39| 
||         MV      .S1     A10,A6            ; |39| 
||         MVK     .L2     0x8,B6            ; |39| 
||         ADDKPC  .S2     RL5,B3,0          ; |39| 

RL5:       ; CALL OCCURS {_ATMEL_WriteRawConfigZone}  ; |39| 
           CALL    .S2     _ATMEL_Auth       ; |41| 
           NOP             4

           MV      .L1     A12,A4            ; |41| 
||         ADD     .D2     SP,16,B4          ; |41| 
||         ADDKPC  .S2     RL6,B3,0          ; |41| 

RL6:       ; CALL OCCURS {_ATMEL_Auth}       ; |41| 
           CALL    .S2     _ATMEL_EncryptActive ; |42| 
           NOP             4

           MV      .L1     A12,A4            ; |42| 
||         ADDKPC  .S2     RL7,B3,0          ; |42| 

RL7:       ; CALL OCCURS {_ATMEL_EncryptActive}  ; |42| 
           CALL    .S2     _ATMEL_Decrypt    ; |44| 
           NOP             4

           MV      .L1     A12,A4            ; |44| 
||         ADDAD   .D2     SP,4,B4           ; |44| 
||         MVK     .S1     0x80,A6           ; |44| 
||         ADDKPC  .S2     RL8,B3,0          ; |44| 

RL8:       ; CALL OCCURS {_ATMEL_Decrypt}    ; |44| 
           NOP             1

           MV      .L2     B12,B4
||         MV      .L1     A13,A4

           LDBU    .D1T1   *++A4,A3          ; |249| (P) <0,0> 
||         LDBU    .D2T2   *++B4,B6          ; |249| (P) <0,0> 

           NOP             2
           MVC     .S2     CSR,B8
           AND     .L2     -2,B8,B7
	.dwpsn	"C:/CCStudio_v3.1/C6000/cgtools/include/string.h",249,0

           MV      .L2     B13,B5
||         MVC     .S2     B7,CSR            ; interrupts off
||         CMPEQ   .L1X    B6,A3,A0          ; |249| (P) <0,5>  ^ 

;** --------------------------------------------------------------------------*
L2:    ; PIPED LOOP KERNEL
DW$L$_C0104_Program$4$B:

           ZERO    .L2     B0                ; |249| <0,6>  ^ 
|| [ A0]   SUB     .S2     B5,1,B5           ; |249| <0,6>  ^ 

   [ A0]   MV      .L2     B5,B0             ; |249| <0,7>  ^ 

   [ B0]   BNOP    .S1     L2,4              ; |249| <0,8> 
|| [ B0]   LDBU    .D2T2   *++B4,B6          ; |249| <1,0> 
|| [ B0]   LDBU    .D1T1   *++A4,A3          ; |249| <1,0> 

           CMPEQ   .L1X    B6,A3,A0          ; |249| <1,5>  ^ 
DW$L$_C0104_Program$4$E:
;** --------------------------------------------------------------------------*
L3:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 250	-----------------------    if ( cp != U$32 ) goto g7;  // [0]

           CMPEQ   .L1X    B6,A3,A0          ; |250| 
||         MVKL    .S2     SL2+0,B11         ; |63| 
||         MVKL    .S1     SL4+0,A4          ; |53| 
||         ZERO    .D1     A10               ; |67| 

           MVKL    .S2     SL1+0,B4          ; |50| 
|| [!A0]   B       .S1     L4                ; |250| 

   [!A0]   CALL    .S1     _dbg_output       ; |53| 
||         MVKL    .S2     SL3+0,B10         ; |65| 

   [ A0]   CALL    .S1     _dbg_output       ; |50| 
||         MVKH    .S2     SL2+0,B11         ; |63| 

           MVKH    .S2     SL1+0,B4          ; |50| 
||         MVKH    .S1     SL4+0,A4          ; |53| 

           MVKH    .S2     SL3+0,B10         ; |65| 
           MVC     .S2     B8,CSR            ; interrupts on
           ; BRANCHCC OCCURS {L4}            ; |250| 
;** --------------------------------------------------------------------------*
;** 50	-----------------------    dbg_output("\nProgram ok!\n");
;** 50	-----------------------    ATMEL_Auth(0, &G);
;** 60	-----------------------    ATMEL_WriteFuse(0, 6);
;** 61	-----------------------    ATMEL_WriteFuse(0, 4);
;** 62	-----------------------    ATMEL_WriteFuse(0, 0);
;** 63	-----------------------    dbg_output("fuse %02x\n", ATMEL_ReadFuse(0));
;** 65	-----------------------    dbg_output("power down this chip.\n");
;** 66	-----------------------    getch();
;** 67	-----------------------    return 0;
           ADDKPC  .S2     RL9,B3,0          ; |50| 
           STW     .D2T2   B4,*+SP(4)        ; |50| 
RL9:       ; CALL OCCURS {_dbg_output}       ; |50| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _ATMEL_Auth       ; |50| 
           ADDKPC  .S2     RL10,B3,2         ; |50| 
           ADD     .D2     SP,16,B4          ; |50| 
           ZERO    .L1     A4                ; |50| 
RL10:      ; CALL OCCURS {_ATMEL_Auth}       ; |50| 
           CALL    .S1     _ATMEL_WriteFuse  ; |60| 
           ZERO    .L1     A4                ; |60| 
           MVK     .L2     0x6,B4            ; |60| 
           ADDKPC  .S2     RL11,B3,2         ; |60| 
RL11:      ; CALL OCCURS {_ATMEL_WriteFuse}  ; |60| 
           CALL    .S1     _ATMEL_WriteFuse  ; |61| 
           ZERO    .L1     A4                ; |61| 
           MVK     .L2     0x4,B4            ; |61| 
           ADDKPC  .S2     RL12,B3,2         ; |61| 
RL12:      ; CALL OCCURS {_ATMEL_WriteFuse}  ; |61| 
           CALL    .S1     _ATMEL_WriteFuse  ; |62| 
           ZERO    .L1     A4                ; |62| 
           ZERO    .L2     B4                ; |62| 
           ADDKPC  .S2     RL13,B3,2         ; |62| 
RL13:      ; CALL OCCURS {_ATMEL_WriteFuse}  ; |62| 
           CALL    .S1     _ATMEL_ReadFuse   ; |63| 
           ZERO    .L1     A4                ; |63| 
           ADDKPC  .S2     RL15,B3,3         ; |63| 
RL15:      ; CALL OCCURS {_ATMEL_ReadFuse}   ; |63| 
           CALL    .S1     _dbg_output       ; |63| 
           STW     .D2T1   A4,*+SP(8)        ; |63| 
           ADDKPC  .S2     RL16,B3,0         ; |63| 
           STW     .D2T2   B11,*+SP(4)       ; |63| 
           NOP             2
RL16:      ; CALL OCCURS {_dbg_output}       ; |63| 
           CALL    .S1     _dbg_output       ; |65| 
           ADDKPC  .S2     RL17,B3,1         ; |65| 
           STW     .D2T2   B10,*+SP(4)       ; |65| 
           NOP             2
RL17:      ; CALL OCCURS {_dbg_output}       ; |65| 
           CALL    .S1     _getch            ; |66| 
           ADDKPC  .S2     RL18,B3,4         ; |66| 
RL18:      ; CALL OCCURS {_getch}            ; |66| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(292),B3      ; |68| 
           LDW     .D2T1   *+SP(300),A11     ; |68| 
           LDW     .D2T1   *+SP(308),A13     ; |68| 
           LDW     .D2T1   *+SP(304),A12     ; |68| 
           LDW     .D2T2   *+SP(316),B11     ; |68| 
           LDW     .D2T2   *+SP(312),B10     ; |68| 
           LDW     .D2T2   *+SP(324),B13     ; |68| 
           LDW     .D2T2   *+SP(320),B12     ; |68| 

           RET     .S2     B3                ; |68| 
||         LDW     .D2T1   *+SP(328),A14     ; |68| 

           LDW     .D2T1   *+SP(296),A10     ; |68| 
||         MV      .L1     A10,A4            ; |18| 

           NOP             3
           ADDK    .S2     328,SP            ; |68| 
           ; BRANCH OCCURS {B3}              ; |68| 
;** --------------------------------------------------------------------------*
L4:    
;**	-----------------------g7:
;** 53	-----------------------    dbg_output("\nProgram failed\n");
;** 54	-----------------------    exit(1);
;***	; the preceding call never returns
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           STW     .D2T1   A4,*+SP(4)        ; |53| 
||         ADDKPC  .S2     RL19,B3,0         ; |53| 

RL19:      ; CALL OCCURS {_dbg_output}       ; |53| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _exit             ; |54| 
           ADDKPC  .S2     RL20,B3,3         ; |54| 
           MVK     .L1     0x1,A4            ; |54| 
RL20:      ; CALL OCCURS {_exit}             ; |54| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Bad loop structure
;*----------------------------------------------------------------------------*
L5:    
DW$L$_C0104_Program$12$B:
;**	-----------------------g8:
;** 54	-----------------------    goto g8;
           BNOP    .S1     L5,5              ; |54| 
           ; BRANCH OCCURS {L5}              ; |54| 
DW$L$_C0104_Program$12$E:
;** --------------------------------------------------------------------------*
L6:    
;**	-----------------------g9:
;** 17	-----------------------    dbg_output("Program data error!\n");
;** 18	-----------------------    exit(1);
;***	; the preceding call never returns
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           STW     .D2T2   B8,*+SP(4)        ; |17| 
||         ADDKPC  .S2     RL21,B3,0         ; |17| 

RL21:      ; CALL OCCURS {_dbg_output}       ; |17| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _exit             ; |18| 
           ADDKPC  .S2     RL22,B3,3         ; |18| 
           MVK     .L1     0x1,A4            ; |18| 
RL22:      ; CALL OCCURS {_exit}             ; |18| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Bad loop structure
;*----------------------------------------------------------------------------*
L7:    
DW$L$_C0104_Program$15$B:
;**	-----------------------g10:
;** 18	-----------------------    goto g10;
	.dwpsn	"tool.c",68,1
           BNOP    .S1     L7,5              ; |18| 
           ; BRANCH OCCURS {L7}              ; |18| 
DW$L$_C0104_Program$15$E:

DW$20	.dwtag  DW_TAG_loop
	.dwattr DW$20, DW_AT_name("D:\pred\dsp\i2c\tool.asm:L7:1:1185766851")
	.dwattr DW$20, DW_AT_begin_file("tool.c")
	.dwattr DW$20, DW_AT_begin_line(0x12)
	.dwattr DW$20, DW_AT_end_line(0x44)
DW$21	.dwtag  DW_TAG_loop_range
	.dwattr DW$21, DW_AT_low_pc(DW$L$_C0104_Program$15$B)
	.dwattr DW$21, DW_AT_high_pc(DW$L$_C0104_Program$15$E)
	.dwendtag DW$20


DW$22	.dwtag  DW_TAG_loop
	.dwattr DW$22, DW_AT_name("D:\pred\dsp\i2c\tool.asm:L5:1:1185766851")
	.dwattr DW$22, DW_AT_begin_file("tool.c")
	.dwattr DW$22, DW_AT_begin_line(0x36)
	.dwattr DW$22, DW_AT_end_line(0x36)
DW$23	.dwtag  DW_TAG_loop_range
	.dwattr DW$23, DW_AT_low_pc(DW$L$_C0104_Program$12$B)
	.dwattr DW$23, DW_AT_high_pc(DW$L$_C0104_Program$12$E)
	.dwendtag DW$22


DW$24	.dwtag  DW_TAG_loop
	.dwattr DW$24, DW_AT_name("D:\pred\dsp\i2c\tool.asm:L2:1:1185766851")
	.dwattr DW$24, DW_AT_begin_file("C:/CCStudio_v3.1/C6000/cgtools/include/string.h")
	.dwattr DW$24, DW_AT_begin_line(0xf9)
	.dwattr DW$24, DW_AT_end_line(0xf9)
DW$25	.dwtag  DW_TAG_loop_range
	.dwattr DW$25, DW_AT_low_pc(DW$L$_C0104_Program$4$B)
	.dwattr DW$25, DW_AT_high_pc(DW$L$_C0104_Program$4$E)
	.dwendtag DW$24

	.dwattr DW$16, DW_AT_end_file("tool.c")
	.dwattr DW$16, DW_AT_end_line(0x44)
	.dwattr DW$16, DW_AT_end_column(0x01)
	.dwendtag DW$16

;; Inlined function references:
;; [  0] memcmp
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	10,"Program ok!",10,0
SL2:	.string	"fuse %02x",10,0
SL3:	.string	"power down this chip.",10,0
SL4:	.string	10,"Program failed",10,0
SL5:	.string	"Program data error!",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_dbg_output
	.global	_exit
	.global	_ATMEL_SetupConfigZone
	.global	_ATMEL_WriteUserZone
	.global	_generate_key
	.global	_ATMEL_WriteRawConfigZone
	.global	_ATMEL_Auth
	.global	_ATMEL_EncryptActive
	.global	_ATMEL_Decrypt
	.global	_ATMEL_WriteFuse
	.global	_ATMEL_ReadFuse
	.global	_getch

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$22	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$22, DW_AT_address_class(0x20)

DW$T$26	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$24)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$26, DW_AT_byte_size(0x08)
DW$26	.dwtag  DW_TAG_subrange_type
	.dwattr DW$26, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$26

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$30	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$20)
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$20)
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$30


DW$T$33	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
DW$31	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$35


DW$T$36	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$T$32	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$31)
	.dwattr DW$T$32, DW_AT_address_class(0x20)
DW$T$20	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_address_class(0x20)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$24	.dwtag  DW_TAG_const_type
	.dwattr DW$T$24, DW_AT_type(*DW$T$6)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$31	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$31, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$T$19	.dwtag  DW_TAG_const_type

	.dwattr DW$16, DW_AT_external(0x01)
	.dwattr DW$16, DW_AT_type(*DW$T$10)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$35	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$35, DW_AT_location[DW_OP_reg0]
DW$36	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$36, DW_AT_location[DW_OP_reg1]
DW$37	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$37, DW_AT_location[DW_OP_reg2]
DW$38	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$38, DW_AT_location[DW_OP_reg3]
DW$39	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$39, DW_AT_location[DW_OP_reg4]
DW$40	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$40, DW_AT_location[DW_OP_reg5]
DW$41	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$41, DW_AT_location[DW_OP_reg6]
DW$42	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$42, DW_AT_location[DW_OP_reg7]
DW$43	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$43, DW_AT_location[DW_OP_reg8]
DW$44	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$44, DW_AT_location[DW_OP_reg9]
DW$45	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$45, DW_AT_location[DW_OP_reg10]
DW$46	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$46, DW_AT_location[DW_OP_reg11]
DW$47	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$47, DW_AT_location[DW_OP_reg12]
DW$48	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$48, DW_AT_location[DW_OP_reg13]
DW$49	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$49, DW_AT_location[DW_OP_reg14]
DW$50	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$50, DW_AT_location[DW_OP_reg15]
DW$51	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$51, DW_AT_location[DW_OP_reg16]
DW$52	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$52, DW_AT_location[DW_OP_reg17]
DW$53	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$53, DW_AT_location[DW_OP_reg18]
DW$54	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$54, DW_AT_location[DW_OP_reg19]
DW$55	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$55, DW_AT_location[DW_OP_reg20]
DW$56	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$56, DW_AT_location[DW_OP_reg21]
DW$57	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$57, DW_AT_location[DW_OP_reg22]
DW$58	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$58, DW_AT_location[DW_OP_reg23]
DW$59	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$59, DW_AT_location[DW_OP_reg24]
DW$60	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$60, DW_AT_location[DW_OP_reg25]
DW$61	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$61, DW_AT_location[DW_OP_reg26]
DW$62	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$62, DW_AT_location[DW_OP_reg27]
DW$63	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$63, DW_AT_location[DW_OP_reg28]
DW$64	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$64, DW_AT_location[DW_OP_reg29]
DW$65	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$65, DW_AT_location[DW_OP_reg30]
DW$66	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$66, DW_AT_location[DW_OP_reg31]
DW$67	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$67, DW_AT_location[DW_OP_regx 0x20]
DW$68	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$68, DW_AT_location[DW_OP_regx 0x21]
DW$69	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$69, DW_AT_location[DW_OP_regx 0x22]
DW$70	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$70, DW_AT_location[DW_OP_regx 0x23]
DW$71	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$71, DW_AT_location[DW_OP_regx 0x24]
DW$72	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$72, DW_AT_location[DW_OP_regx 0x25]
DW$73	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$73, DW_AT_location[DW_OP_regx 0x26]
DW$74	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$74, DW_AT_location[DW_OP_regx 0x27]
DW$75	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$75, DW_AT_location[DW_OP_regx 0x28]
DW$76	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$76, DW_AT_location[DW_OP_regx 0x29]
DW$77	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$77, DW_AT_location[DW_OP_regx 0x2a]
DW$78	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$78, DW_AT_location[DW_OP_regx 0x2b]
DW$79	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$79, DW_AT_location[DW_OP_regx 0x2c]
DW$80	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$80, DW_AT_location[DW_OP_regx 0x2d]
DW$81	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$81, DW_AT_location[DW_OP_regx 0x2e]
DW$82	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$82, DW_AT_location[DW_OP_regx 0x2f]
DW$83	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$83, DW_AT_location[DW_OP_regx 0x30]
DW$84	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$84, DW_AT_location[DW_OP_regx 0x31]
DW$85	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$85, DW_AT_location[DW_OP_regx 0x32]
DW$86	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$86, DW_AT_location[DW_OP_regx 0x33]
DW$87	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$87, DW_AT_location[DW_OP_regx 0x34]
DW$88	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$88, DW_AT_location[DW_OP_regx 0x35]
DW$89	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$89, DW_AT_location[DW_OP_regx 0x36]
DW$90	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$90, DW_AT_location[DW_OP_regx 0x37]
DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$91, DW_AT_location[DW_OP_regx 0x38]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$92, DW_AT_location[DW_OP_regx 0x39]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$93, DW_AT_location[DW_OP_regx 0x3a]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$94, DW_AT_location[DW_OP_regx 0x3b]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$95, DW_AT_location[DW_OP_regx 0x3c]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$96, DW_AT_location[DW_OP_regx 0x3d]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$97, DW_AT_location[DW_OP_regx 0x3e]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$98, DW_AT_location[DW_OP_regx 0x3f]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$99, DW_AT_location[DW_OP_regx 0x40]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$100, DW_AT_location[DW_OP_regx 0x41]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$101, DW_AT_location[DW_OP_regx 0x42]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$102, DW_AT_location[DW_OP_regx 0x43]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$103, DW_AT_location[DW_OP_regx 0x44]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$104, DW_AT_location[DW_OP_regx 0x45]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$105, DW_AT_location[DW_OP_regx 0x46]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$106, DW_AT_location[DW_OP_regx 0x47]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$107, DW_AT_location[DW_OP_regx 0x48]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$108, DW_AT_location[DW_OP_regx 0x49]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$109, DW_AT_location[DW_OP_regx 0x4a]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$110, DW_AT_location[DW_OP_regx 0x4b]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$111, DW_AT_location[DW_OP_regx 0x4c]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$112, DW_AT_location[DW_OP_regx 0x4d]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$113, DW_AT_location[DW_OP_regx 0x4e]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$114, DW_AT_location[DW_OP_regx 0x4f]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$115, DW_AT_location[DW_OP_regx 0x50]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$116, DW_AT_location[DW_OP_regx 0x51]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$117, DW_AT_location[DW_OP_regx 0x52]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$118, DW_AT_location[DW_OP_regx 0x53]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$119, DW_AT_location[DW_OP_regx 0x54]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$120, DW_AT_location[DW_OP_regx 0x55]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$121, DW_AT_location[DW_OP_regx 0x56]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$122, DW_AT_location[DW_OP_regx 0x57]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$123, DW_AT_location[DW_OP_regx 0x58]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$124, DW_AT_location[DW_OP_regx 0x59]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$125, DW_AT_location[DW_OP_regx 0x5a]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$126, DW_AT_location[DW_OP_regx 0x5b]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x5c]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x5d]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$129, DW_AT_location[DW_OP_regx 0x5e]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$130, DW_AT_location[DW_OP_regx 0x5f]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$131, DW_AT_location[DW_OP_regx 0x60]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$132, DW_AT_location[DW_OP_regx 0x61]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x62]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x63]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x64]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x65]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x66]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x67]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x68]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x69]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x6a]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x6b]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$143, DW_AT_location[DW_OP_regx 0x6c]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$144, DW_AT_location[DW_OP_regx 0x6d]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$145, DW_AT_location[DW_OP_regx 0x6e]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$146, DW_AT_location[DW_OP_regx 0x6f]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$147, DW_AT_location[DW_OP_regx 0x70]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$148, DW_AT_location[DW_OP_regx 0x71]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$149, DW_AT_location[DW_OP_regx 0x72]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$150, DW_AT_location[DW_OP_regx 0x73]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$151, DW_AT_location[DW_OP_regx 0x74]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$152, DW_AT_location[DW_OP_regx 0x75]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$153, DW_AT_location[DW_OP_regx 0x76]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x77]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x78]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x79]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x7a]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x7b]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x7c]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x7d]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

