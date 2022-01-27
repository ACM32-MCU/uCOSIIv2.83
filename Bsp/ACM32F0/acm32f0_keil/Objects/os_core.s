	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-m33
	.eabi_attribute	6, 17	@ Tag_CPU_arch
	.eabi_attribute	7, 77	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 0	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 3	@ Tag_THUMB_ISA_use
	.fpu	fpv5-sp-d16
	.eabi_attribute	27, 1	@ Tag_ABI_HardFP_use
	.eabi_attribute	36, 1	@ Tag_FP_HP_extension
	.eabi_attribute	46, 1	@ Tag_DSP_extension
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 2	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 1	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"os_core.c"
	.file	1 "G:\\Workspace\\AisinoChip_SVN\\Solutions\\IOT\\IoT_OS\\uCOSII\\uCOSIIv2.83_acm32f4\\acm32f4_keil" "../Ports/ARM/Generic/RealView\\os_cpu.h"
	.file	2 "G:\\Workspace\\AisinoChip_SVN\\Solutions\\IOT\\IoT_OS\\uCOSII\\uCOSIIv2.83_acm32f4\\acm32f4_keil" "../Micrium/Software/uCOS-II/Source/os_core.c"
	.file	3 "G:\\Workspace\\AisinoChip_SVN\\Solutions\\IOT\\IoT_OS\\uCOSII\\uCOSIIv2.83_acm32f4\\acm32f4_keil" "../Micrium/Software/uCOS-II/Source\\ucos_ii.h"
	.section	.text.OSEventNameGet,"ax",%progbits
	.hidden	OSEventNameGet                  @ -- Begin function OSEventNameGet
	.globl	OSEventNameGet
	.p2align	2
	.type	OSEventNameGet,%function
	.code	16                              @ @OSEventNameGet
	.thumb_func
OSEventNameGet:
.Lfunc_begin0:
	.loc	2 101 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:101:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#24
	sub	sp, #24
	.cfi_def_cfa_offset 32
	str	r0, [sp, #16]
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	movs	r0, #0
.Ltmp0:
	.loc	2 104 16 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:104:16
	str	r0, [sp]
	.loc	2 122 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:122:13
	ldr	r0, [sp, #16]
	.loc	2 122 21 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:122:21
	ldrb	r0, [r0]
	.loc	2 122 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:122:5
	subs	r0, #1
	cmp	r0, #3
	bhi	.LBB0_2
	b	.LBB0_1
.LBB0_1:
.Ltmp1:
	.loc	2 127 14 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:127:14
	b	.LBB0_3
.LBB0_2:
	.loc	2 130 15                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:130:15
	ldr	r0, [sp, #8]
	movs	r1, #1
	.loc	2 130 19 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:130:19
	strb	r1, [r0]
	movs	r0, #0
	.loc	2 131 14 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:131:14
	strb.w	r0, [sp, #23]
	b	.LBB0_4
.Ltmp2:
.LBB0_3:
	.loc	2 133 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:133:5
	bl	OS_CPU_SR_Save
	str	r0, [sp]
.Ltmp3:
	.loc	2 134 23                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:134:23
	ldr	r0, [sp, #12]
	.loc	2 134 30 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:134:30
	ldr	r1, [sp, #16]
	.loc	2 134 38                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:134:38
	adds	r1, #19
	.loc	2 134 12                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:134:12
	bl	OS_StrCopy
	.loc	2 134 10                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:134:10
	strb.w	r0, [sp, #7]
.Ltmp4:
	.loc	2 135 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:135:5
	ldr	r0, [sp]
	bl	OS_CPU_SR_Restore
.Ltmp5:
	.loc	2 136 6                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:136:6
	ldr	r0, [sp, #8]
	movs	r1, #0
	.loc	2 136 10 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:136:10
	strb	r1, [r0]
	.loc	2 137 13 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:137:13
	ldrb.w	r0, [sp, #7]
	.loc	2 137 5 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:137:5
	strb.w	r0, [sp, #23]
	b	.LBB0_4
.LBB0_4:
	.loc	2 138 1 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:138:1
	ldrb.w	r0, [sp, #23]
	add	sp, #24
	pop	{r7, pc}
.Ltmp6:
.Lfunc_end0:
	.size	OSEventNameGet, .Lfunc_end0-OSEventNameGet
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_StrCopy,"ax",%progbits
	.hidden	OS_StrCopy                      @ -- Begin function OS_StrCopy
	.globl	OS_StrCopy
	.p2align	2
	.type	OS_StrCopy,%function
	.code	16                              @ @OS_StrCopy
	.thumb_func
OS_StrCopy:
.Lfunc_begin1:
	.loc	2 1282 0                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1282:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#12
	sub	sp, #12
	.cfi_def_cfa_offset 12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	movs	r0, #0
.Ltmp7:
	.loc	2 1286 9 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:1286:9
	strb.w	r0, [sp, #3]
	.loc	2 1287 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1287:5
	b	.LBB1_1
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	.loc	2 1287 13 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1287:13
	ldr	r0, [sp, #4]
	.loc	2 1287 12                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1287:12
	ldrb	r0, [r0]
	.loc	2 1287 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1287:5
	cmp	r0, #0
	beq	.LBB1_3
	b	.LBB1_2
.LBB1_2:                                @   in Loop: Header=BB1_1 Depth=1
.Ltmp8:
	.loc	2 1288 25 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1288:25
	ldr	r0, [sp, #4]
	adds	r1, r0, #1
	str	r1, [sp, #4]
	.loc	2 1288 20 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1288:20
	ldrb	r0, [r0]
	.loc	2 1288 15                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1288:15
	ldr	r1, [sp, #8]
	adds	r2, r1, #1
	str	r2, [sp, #8]
	.loc	2 1288 18                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1288:18
	strb	r0, [r1]
	.loc	2 1289 12 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1289:12
	ldrb.w	r0, [sp, #3]
	adds	r0, #1
	strb.w	r0, [sp, #3]
.Ltmp9:
	.loc	2 1287 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1287:5
	b	.LBB1_1
.LBB1_3:
	.loc	2 1291 6                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1291:6
	ldr	r0, [sp, #8]
	movs	r1, #0
	.loc	2 1291 12 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1291:12
	strb	r1, [r0]
	.loc	2 1292 13 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1292:13
	ldrb.w	r0, [sp, #3]
	.loc	2 1292 5 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1292:5
	add	sp, #12
	bx	lr
.Ltmp10:
.Lfunc_end1:
	.size	OS_StrCopy, .Lfunc_end1-OS_StrCopy
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OSEventNameSet,"ax",%progbits
	.hidden	OSEventNameSet                  @ -- Begin function OSEventNameSet
	.globl	OSEventNameSet
	.p2align	2
	.type	OSEventNameSet,%function
	.code	16                              @ @OSEventNameSet
	.thumb_func
OSEventNameSet:
.Lfunc_begin2:
	.loc	2 170 0 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:170:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#24
	sub	sp, #24
	.cfi_def_cfa_offset 32
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	movs	r0, #0
.Ltmp11:
	.loc	2 173 16 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:173:16
	str	r0, [sp, #4]
	.loc	2 191 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:191:13
	ldr	r0, [sp, #20]
	.loc	2 191 21 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:191:21
	ldrb	r0, [r0]
	.loc	2 191 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:191:5
	subs	r0, #1
	cmp	r0, #3
	bhi	.LBB2_2
	b	.LBB2_1
.LBB2_1:
.Ltmp12:
	.loc	2 196 14 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:196:14
	b	.LBB2_3
.LBB2_2:
	.loc	2 199 15                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:199:15
	ldr	r0, [sp, #12]
	movs	r1, #1
	.loc	2 199 19 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:199:19
	strb	r1, [r0]
	.loc	2 200 14 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:200:14
	b	.LBB2_6
.Ltmp13:
.LBB2_3:
	.loc	2 202 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:202:5
	bl	OS_CPU_SR_Save
	str	r0, [sp, #4]
.Ltmp14:
	.loc	2 203 21                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:203:21
	ldr	r0, [sp, #16]
	.loc	2 203 11 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:203:11
	bl	OS_StrLen
	.loc	2 203 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:203:9
	strb.w	r0, [sp, #11]
.Ltmp15:
	.loc	2 204 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:204:9
	ldrb.w	r0, [sp, #11]
.Ltmp16:
	.loc	2 204 9 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:204:9
	cmp	r0, #16
	blt	.LBB2_5
	b	.LBB2_4
.LBB2_4:
.Ltmp17:
	.loc	2 205 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:205:9
	ldr	r0, [sp, #4]
	bl	OS_CPU_SR_Restore
.Ltmp18:
	.loc	2 206 10                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:206:10
	ldr	r0, [sp, #12]
	movs	r1, #12
	.loc	2 206 14 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:206:14
	strb	r1, [r0]
	.loc	2 207 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:207:9
	b	.LBB2_6
.Ltmp19:
.LBB2_5:
	.loc	2 209 22                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:209:22
	ldr	r0, [sp, #20]
	.loc	2 209 30 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:209:30
	adds	r0, #19
	.loc	2 209 43                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:209:43
	ldr	r1, [sp, #16]
	.loc	2 209 11                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:209:11
	bl	OS_StrCopy
.Ltmp20:
	.loc	2 210 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:210:5
	ldr	r1, [sp, #4]
	str	r0, [sp]                        @ 4-byte Spill
	mov	r0, r1
	bl	OS_CPU_SR_Restore
.Ltmp21:
	.loc	2 211 6                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:211:6
	ldr	r0, [sp, #12]
	movs	r1, #0
	.loc	2 211 10 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:211:10
	strb	r1, [r0]
	.loc	2 212 1 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:212:1
	b	.LBB2_6
.LBB2_6:
	add	sp, #24
	pop	{r7, pc}
.Ltmp22:
.Lfunc_end2:
	.size	OSEventNameSet, .Lfunc_end2-OSEventNameSet
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_StrLen,"ax",%progbits
	.hidden	OS_StrLen                       @ -- Begin function OS_StrLen
	.globl	OS_StrLen
	.p2align	2
	.type	OS_StrLen,%function
	.code	16                              @ @OS_StrLen
	.thumb_func
OS_StrLen:
.Lfunc_begin3:
	.loc	2 1314 0                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1314:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	movs	r0, #0
.Ltmp23:
	.loc	2 1318 9 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:1318:9
	strb.w	r0, [sp, #3]
	.loc	2 1319 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1319:5
	b	.LBB3_1
.LBB3_1:                                @ =>This Inner Loop Header: Depth=1
	.loc	2 1319 13 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1319:13
	ldr	r0, [sp, #4]
	.loc	2 1319 12                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1319:12
	ldrb	r0, [r0]
	.loc	2 1319 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1319:5
	cmp	r0, #0
	beq	.LBB3_3
	b	.LBB3_2
.LBB3_2:                                @   in Loop: Header=BB3_1 Depth=1
.Ltmp24:
	.loc	2 1320 13 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1320:13
	ldr	r0, [sp, #4]
	adds	r0, #1
	str	r0, [sp, #4]
	.loc	2 1321 12                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1321:12
	ldrb.w	r0, [sp, #3]
	adds	r0, #1
	strb.w	r0, [sp, #3]
.Ltmp25:
	.loc	2 1319 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1319:5
	b	.LBB3_1
.LBB3_3:
	.loc	2 1323 13                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1323:13
	ldrb.w	r0, [sp, #3]
	.loc	2 1323 5 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1323:5
	add	sp, #8
	bx	lr
.Ltmp26:
.Lfunc_end3:
	.size	OS_StrLen, .Lfunc_end3-OS_StrLen
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OSInit,"ax",%progbits
	.hidden	OSInit                          @ -- Begin function OSInit
	.globl	OSInit
	.p2align	2
	.type	OSInit,%function
	.code	16                              @ @OSInit
	.thumb_func
OSInit:
.Lfunc_begin4:
	.loc	2 230 0 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:230:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
.Ltmp27:
	.loc	2 232 5 prologue_end            @ ../Micrium/Software/uCOS-II/Source/os_core.c:232:5
	bl	OSInitHookBegin
	.loc	2 235 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:235:5
	bl	OS_InitMisc
	.loc	2 237 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:237:5
	bl	OS_InitRdyList
	.loc	2 239 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:239:5
	bl	OS_InitTCBList
	.loc	2 241 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:241:5
	bl	OS_InitEventList
	.loc	2 244 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:244:5
	bl	OS_FlagInit
	.loc	2 248 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:248:5
	bl	OS_MemInit
	.loc	2 252 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:252:5
	bl	OS_QInit
	.loc	2 255 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:255:5
	bl	OS_InitTaskIdle
	.loc	2 257 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:257:5
	bl	OS_InitTaskStat
	.loc	2 265 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:265:5
	bl	OSInitHookEnd
	.loc	2 271 1                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:271:1
	pop	{r7, pc}
.Ltmp28:
.Lfunc_end4:
	.size	OSInit, .Lfunc_end4-OSInit
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_InitMisc,"ax",%progbits
	.p2align	2                               @ -- Begin function OS_InitMisc
	.type	OS_InitMisc,%function
	.code	16                              @ @OS_InitMisc
	.thumb_func
OS_InitMisc:
.Lfunc_begin5:
	.loc	2 881 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:881:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.loc	2 883 19 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:883:19
	movw	r0, :lower16:OSTime
	movt	r0, :upper16:OSTime
	movs	r1, #0
	str	r1, [r0]
	.loc	2 886 19                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:886:19
	movw	r0, :lower16:OSIntNesting
	movt	r0, :upper16:OSIntNesting
	strb	r1, [r0]
	.loc	2 887 19                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:887:19
	movw	r0, :lower16:OSLockNesting
	movt	r0, :upper16:OSLockNesting
	strb	r1, [r0]
	.loc	2 889 19                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:889:19
	movw	r0, :lower16:OSTaskCtr
	movt	r0, :upper16:OSTaskCtr
	strb	r1, [r0]
	.loc	2 891 19                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:891:19
	movw	r0, :lower16:OSRunning
	movt	r0, :upper16:OSRunning
	strb	r1, [r0]
	.loc	2 893 19                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:893:19
	movw	r0, :lower16:OSCtxSwCtr
	movt	r0, :upper16:OSCtxSwCtr
	str	r1, [r0]
	.loc	2 894 19                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:894:19
	movw	r0, :lower16:OSIdleCtr
	movt	r0, :upper16:OSIdleCtr
	str	r1, [r0]
	.loc	2 897 19                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:897:19
	movw	r0, :lower16:OSIdleCtrRun
	movt	r0, :upper16:OSIdleCtrRun
	str	r1, [r0]
	.loc	2 898 19                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:898:19
	movw	r0, :lower16:OSIdleCtrMax
	movt	r0, :upper16:OSIdleCtrMax
	str	r1, [r0]
	.loc	2 899 19                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:899:19
	movw	r0, :lower16:OSStatRdy
	movt	r0, :upper16:OSStatRdy
	strb	r1, [r0]
	.loc	2 901 1                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:901:1
	bx	lr
.Ltmp29:
.Lfunc_end5:
	.size	OS_InitMisc, .Lfunc_end5-OS_InitMisc
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_InitRdyList,"ax",%progbits
	.p2align	2                               @ -- Begin function OS_InitRdyList
	.type	OS_InitRdyList,%function
	.code	16                              @ @OS_InitRdyList
	.thumb_func
OS_InitRdyList:
.Lfunc_begin6:
	.loc	2 917 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:917:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 8
.Ltmp30:
	.loc	2 926 19 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:926:19
	movw	r0, :lower16:OSRdyGrp
	movt	r0, :upper16:OSRdyGrp
	movs	r1, #0
	strb	r1, [r0]
	.loc	2 927 19                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:927:19
	movw	r0, :lower16:OSRdyTbl
	movt	r0, :upper16:OSRdyTbl
	str	r0, [sp]
.Ltmp31:
	.loc	2 928 12                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:928:12
	strb.w	r1, [sp, #7]
	.loc	2 928 10 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:928:10
	b	.LBB6_1
.LBB6_1:                                @ =>This Inner Loop Header: Depth=1
.Ltmp32:
	.loc	2 928 17                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:928:17
	ldrb.w	r0, [sp, #7]
.Ltmp33:
	.loc	2 928 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:928:5
	cmp	r0, #7
	bgt	.LBB6_4
	b	.LBB6_2
.LBB6_2:                                @   in Loop: Header=BB6_1 Depth=1
.Ltmp34:
	.loc	2 929 17 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:929:17
	ldr	r0, [sp]
	adds	r1, r0, #1
	str	r1, [sp]
	movs	r1, #0
	.loc	2 929 20 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:929:20
	strb	r1, [r0]
	.loc	2 930 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:930:5
	b	.LBB6_3
.Ltmp35:
.LBB6_3:                                @   in Loop: Header=BB6_1 Depth=1
	.loc	2 928 39                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:928:39
	ldrb.w	r0, [sp, #7]
	adds	r0, #1
	strb.w	r0, [sp, #7]
	.loc	2 928 5 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:928:5
	b	.LBB6_1
.Ltmp36:
.LBB6_4:
	.loc	2 932 19 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:932:19
	movw	r0, :lower16:OSPrioCur
	movt	r0, :upper16:OSPrioCur
	movs	r1, #0
	strb	r1, [r0]
	.loc	2 933 19                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:933:19
	movw	r0, :lower16:OSPrioHighRdy
	movt	r0, :upper16:OSPrioHighRdy
	strb	r1, [r0]
	.loc	2 935 19                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:935:19
	movw	r0, :lower16:OSTCBHighRdy
	movt	r0, :upper16:OSTCBHighRdy
	str	r1, [r0]
	.loc	2 936 19                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:936:19
	movw	r0, :lower16:OSTCBCur
	movt	r0, :upper16:OSTCBCur
	str	r1, [r0]
	.loc	2 937 1                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:937:1
	add	sp, #8
	bx	lr
.Ltmp37:
.Lfunc_end6:
	.size	OS_InitRdyList, .Lfunc_end6-OS_InitRdyList
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_InitTCBList,"ax",%progbits
	.p2align	2                               @ -- Begin function OS_InitTCBList
	.type	OS_InitTCBList,%function
	.code	16                              @ @OS_InitTCBList
	.thumb_func
OS_InitTCBList:
.Lfunc_begin7:
	.loc	2 1086 0                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1086:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#16
	sub	sp, #16
	.cfi_def_cfa_offset 24
.Ltmp38:
	.loc	2 1092 5 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:1092:5
	movw	r0, :lower16:OSTCBTbl
	movt	r0, :upper16:OSTCBTbl
	mov.w	r1, #1936
	str	r0, [sp]                        @ 4-byte Spill
	bl	OS_MemClr
	.loc	2 1093 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1093:5
	movw	r0, :lower16:OSTCBPrioTbl
	movt	r0, :upper16:OSTCBPrioTbl
	mov.w	r1, #256
	bl	OS_MemClr
	.loc	2 1094 11                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1094:11
	ldr	r0, [sp]                        @ 4-byte Reload
	str	r0, [sp, #8]
	.loc	2 1095 11                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1095:11
	add.w	r1, r0, #88
	str	r1, [sp, #4]
	movs	r1, #0
.Ltmp39:
	.loc	2 1096 12                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1096:12
	strb.w	r1, [sp, #15]
	.loc	2 1096 10 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1096:10
	b	.LBB7_1
.LBB7_1:                                @ =>This Inner Loop Header: Depth=1
.Ltmp40:
	.loc	2 1096 17                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1096:17
	ldrb.w	r0, [sp, #15]
.Ltmp41:
	.loc	2 1096 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1096:5
	cmp	r0, #20
	bhi	.LBB7_4
	b	.LBB7_2
.LBB7_2:                                @   in Loop: Header=BB7_1 Depth=1
.Ltmp42:
	.loc	2 1097 28 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1097:28
	ldr	r0, [sp, #4]
	.loc	2 1097 9 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1097:9
	ldr	r1, [sp, #8]
	.loc	2 1097 26                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1097:26
	str	r0, [r1, #20]
	.loc	2 1099 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1099:9
	ldr	r0, [sp, #8]
	movs	r1, #63
	.loc	2 1099 33 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1099:33
	strb.w	r1, [r0, #72]
	.loc	2 1100 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1100:9
	ldr	r0, [sp, #8]
	movs	r1, #0
	.loc	2 1100 33 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1100:33
	strb.w	r1, [r0, #73]
	.loc	2 1102 14 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1102:14
	ldr	r0, [sp, #8]
	adds	r0, #88
	str	r0, [sp, #8]
	.loc	2 1103 14                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1103:14
	ldr	r0, [sp, #4]
	adds	r0, #88
	str	r0, [sp, #4]
	.loc	2 1104 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1104:5
	b	.LBB7_3
.Ltmp43:
.LBB7_3:                                @   in Loop: Header=BB7_1 Depth=1
	.loc	2 1096 59                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1096:59
	ldrb.w	r0, [sp, #15]
	adds	r0, #1
	strb.w	r0, [sp, #15]
	.loc	2 1096 5 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1096:5
	b	.LBB7_1
.Ltmp44:
.LBB7_4:
	.loc	2 1105 5 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1105:5
	ldr	r0, [sp, #8]
	movs	r1, #0
	.loc	2 1105 22 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1105:22
	str	r1, [r0, #20]
	.loc	2 1107 5 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1107:5
	ldr	r0, [sp, #8]
	movs	r2, #63
	.loc	2 1107 29 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1107:29
	strb.w	r2, [r0, #72]
	.loc	2 1108 5 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1108:5
	ldr	r0, [sp, #8]
	.loc	2 1108 29 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1108:29
	strb.w	r1, [r0, #73]
	.loc	2 1110 29 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1110:29
	movw	r0, :lower16:OSTCBList
	movt	r0, :upper16:OSTCBList
	str	r1, [r0]
	.loc	2 1111 29                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1111:29
	movw	r0, :lower16:OSTCBFreeList
	movt	r0, :upper16:OSTCBFreeList
	movw	r1, :lower16:OSTCBTbl
	movt	r1, :upper16:OSTCBTbl
	str	r1, [r0]
	.loc	2 1112 1                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1112:1
	add	sp, #16
	pop	{r7, pc}
.Ltmp45:
.Lfunc_end7:
	.size	OS_InitTCBList, .Lfunc_end7-OS_InitTCBList
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_InitEventList,"ax",%progbits
	.p2align	2                               @ -- Begin function OS_InitEventList
	.type	OS_InitEventList,%function
	.code	16                              @ @OS_InitEventList
	.thumb_func
OS_InitEventList:
.Lfunc_begin8:
	.loc	2 827 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:827:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#16
	sub	sp, #16
	.cfi_def_cfa_offset 24
.Ltmp46:
	.loc	2 835 5 prologue_end            @ ../Micrium/Software/uCOS-II/Source/os_core.c:835:5
	movw	r0, :lower16:OSEventTbl
	movt	r0, :upper16:OSEventTbl
	mov.w	r1, #360
	str	r0, [sp]                        @ 4-byte Spill
	bl	OS_MemClr
	.loc	2 836 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:836:13
	ldr	r0, [sp]                        @ 4-byte Reload
	str	r0, [sp, #8]
	.loc	2 837 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:837:13
	add.w	r1, r0, #36
	str	r1, [sp, #4]
	movs	r1, #0
.Ltmp47:
	.loc	2 838 12                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:838:12
	strh.w	r1, [sp, #14]
	.loc	2 838 10 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:838:10
	b	.LBB8_1
.LBB8_1:                                @ =>This Inner Loop Header: Depth=1
.Ltmp48:
	.loc	2 838 17                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:838:17
	ldrh.w	r0, [sp, #14]
.Ltmp49:
	.loc	2 838 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:838:5
	cmp	r0, #8
	bgt	.LBB8_4
	b	.LBB8_2
.LBB8_2:                                @   in Loop: Header=BB8_1 Depth=1
.Ltmp50:
	.loc	2 839 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:839:9
	ldr	r0, [sp, #8]
	movs	r1, #0
	.loc	2 839 33 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:839:33
	strb	r1, [r0]
	.loc	2 840 35 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:840:35
	ldr	r0, [sp, #4]
	.loc	2 840 9 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:840:9
	ldr	r2, [sp, #8]
	.loc	2 840 33                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:840:33
	str	r0, [r2, #4]
	.loc	2 842 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:842:9
	ldr	r0, [sp, #8]
	movs	r2, #63
	.loc	2 842 33 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:842:33
	strb	r2, [r0, #19]
	.loc	2 843 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:843:9
	ldr	r0, [sp, #8]
	.loc	2 843 33 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:843:33
	strb	r1, [r0, #20]
	.loc	2 845 16 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:845:16
	ldr	r0, [sp, #8]
	adds	r0, #36
	str	r0, [sp, #8]
	.loc	2 846 16                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:846:16
	ldr	r0, [sp, #4]
	adds	r0, #36
	str	r0, [sp, #4]
	.loc	2 847 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:847:5
	b	.LBB8_3
.Ltmp51:
.LBB8_3:                                @   in Loop: Header=BB8_1 Depth=1
	.loc	2 838 43                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:838:43
	ldrh.w	r0, [sp, #14]
	adds	r0, #1
	strh.w	r0, [sp, #14]
	.loc	2 838 5 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:838:5
	b	.LBB8_1
.Ltmp52:
.LBB8_4:
	.loc	2 848 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:848:5
	ldr	r0, [sp, #8]
	movs	r1, #0
	.loc	2 848 37 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:848:37
	strb	r1, [r0]
	.loc	2 849 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:849:5
	ldr	r0, [sp, #8]
	.loc	2 849 37 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:849:37
	str	r1, [r0, #4]
	.loc	2 851 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:851:5
	ldr	r0, [sp, #8]
	movs	r2, #63
	.loc	2 851 37 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:851:37
	strb	r2, [r0, #19]
	.loc	2 852 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:852:5
	ldr	r0, [sp, #8]
	.loc	2 852 37 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:852:37
	strb	r1, [r0, #20]
	.loc	2 854 37 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:854:37
	movw	r0, :lower16:OSEventFreeList
	movt	r0, :upper16:OSEventFreeList
	movw	r1, :lower16:OSEventTbl
	movt	r1, :upper16:OSEventTbl
	str	r1, [r0]
	.loc	2 865 1                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:865:1
	add	sp, #16
	pop	{r7, pc}
.Ltmp53:
.Lfunc_end8:
	.size	OS_InitEventList, .Lfunc_end8-OS_InitEventList
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_InitTaskIdle,"ax",%progbits
	.p2align	2                               @ -- Begin function OS_InitTaskIdle
	.type	OS_InitTaskIdle,%function
	.code	16                              @ @OS_InitTaskIdle
	.thumb_func
OS_InitTaskIdle:
.Lfunc_begin9:
	.loc	2 954 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:954:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#32
	sub	sp, #32
	.cfi_def_cfa_offset 40
.Ltmp54:
	.loc	2 962 11 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:962:11
	mov	r0, sp
	movs	r1, #3
	str	r1, [r0, #16]
	movs	r1, #0
	str	r1, [r0, #12]
	movs	r2, #128
	str	r2, [r0, #8]
	movw	r2, :lower16:OSTaskIdleStk
	movt	r2, :upper16:OSTaskIdleStk
	str	r2, [r0, #4]
	movw	r3, #65535
	str	r3, [r0]
	add.w	r2, r2, #508
	movw	r0, :lower16:OS_TaskIdle
	movt	r0, :upper16:OS_TaskIdle
	movs	r3, #63
	str	r3, [sp, #24]                   @ 4-byte Spill
	bl	OSTaskCreateExt
	.loc	2 997 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:997:5
	movw	r1, :lower16:.L.str
	movt	r1, :upper16:.L.str
	add.w	r2, sp, #31
	ldr	r3, [sp, #24]                   @ 4-byte Reload
	str	r0, [sp, #20]                   @ 4-byte Spill
	mov	r0, r3
	bl	OSTaskNameSet
	.loc	2 1003 1                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1003:1
	add	sp, #32
	pop	{r7, pc}
.Ltmp55:
.Lfunc_end9:
	.size	OS_InitTaskIdle, .Lfunc_end9-OS_InitTaskIdle
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_InitTaskStat,"ax",%progbits
	.p2align	2                               @ -- Begin function OS_InitTaskStat
	.type	OS_InitTaskStat,%function
	.code	16                              @ @OS_InitTaskStat
	.thumb_func
OS_InitTaskStat:
.Lfunc_begin10:
	.loc	2 1020 0                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1020:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#32
	sub	sp, #32
	.cfi_def_cfa_offset 40
.Ltmp56:
	.loc	2 1028 11 prologue_end          @ ../Micrium/Software/uCOS-II/Source/os_core.c:1028:11
	mov	r0, sp
	movs	r1, #3
	str	r1, [r0, #16]
	movs	r1, #0
	str	r1, [r0, #12]
	movs	r2, #128
	str	r2, [r0, #8]
	movw	r2, :lower16:OSTaskStatStk
	movt	r2, :upper16:OSTaskStatStk
	str	r2, [r0, #4]
	movw	r3, #65534
	str	r3, [r0]
	add.w	r2, r2, #508
	movw	r0, :lower16:OS_TaskStat
	movt	r0, :upper16:OS_TaskStat
	movs	r3, #62
	str	r3, [sp, #24]                   @ 4-byte Spill
	bl	OSTaskCreateExt
	.loc	2 1063 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1063:5
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	add.w	r2, sp, #31
	ldr	r3, [sp, #24]                   @ 4-byte Reload
	str	r0, [sp, #20]                   @ 4-byte Spill
	mov	r0, r3
	bl	OSTaskNameSet
	.loc	2 1069 1                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1069:1
	add	sp, #32
	pop	{r7, pc}
.Ltmp57:
.Lfunc_end10:
	.size	OS_InitTaskStat, .Lfunc_end10-OS_InitTaskStat
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OSIntEnter,"ax",%progbits
	.hidden	OSIntEnter                      @ -- Begin function OSIntEnter
	.globl	OSIntEnter
	.p2align	2
	.type	OSIntEnter,%function
	.code	16                              @ @OSIntEnter
	.thumb_func
OSIntEnter:
.Lfunc_begin11:
	.loc	2 299 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:299:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.loc	2 300 9 prologue_end            @ ../Micrium/Software/uCOS-II/Source/os_core.c:300:9
	movw	r0, :lower16:OSRunning
	movt	r0, :upper16:OSRunning
	ldrb	r0, [r0]
.Ltmp58:
	.loc	2 300 9 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:300:9
	cmp	r0, #1
	bne	.LBB11_4
	b	.LBB11_1
.LBB11_1:
.Ltmp59:
	.loc	2 301 13 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:301:13
	movw	r0, :lower16:OSIntNesting
	movt	r0, :upper16:OSIntNesting
	ldrb	r0, [r0]
.Ltmp60:
	.loc	2 301 13 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:301:13
	cmp	r0, #255
	beq	.LBB11_3
	b	.LBB11_2
.LBB11_2:
.Ltmp61:
	.loc	2 302 25 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:302:25
	movw	r0, :lower16:OSIntNesting
	movt	r0, :upper16:OSIntNesting
	ldrb	r1, [r0]
	adds	r1, #1
	strb	r1, [r0]
	.loc	2 303 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:303:9
	b	.LBB11_3
.Ltmp62:
.LBB11_3:
	.loc	2 304 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:304:5
	b	.LBB11_4
.Ltmp63:
.LBB11_4:
	.loc	2 305 1                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:305:1
	bx	lr
.Ltmp64:
.Lfunc_end11:
	.size	OSIntEnter, .Lfunc_end11-OSIntEnter
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OSIntExit,"ax",%progbits
	.hidden	OSIntExit                       @ -- Begin function OSIntExit
	.globl	OSIntExit
	.p2align	2
	.type	OSIntExit,%function
	.code	16                              @ @OSIntExit
	.thumb_func
OSIntExit:
.Lfunc_begin12:
	.loc	2 327 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:327:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 16
	movs	r0, #0
.Ltmp65:
	.loc	2 329 16 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:329:16
	str	r0, [sp, #4]
.Ltmp66:
	.loc	2 334 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:334:9
	movw	r0, :lower16:OSRunning
	movt	r0, :upper16:OSRunning
	ldrb	r0, [r0]
.Ltmp67:
	.loc	2 334 9 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:334:9
	cmp	r0, #1
	bne	.LBB12_10
	b	.LBB12_1
.LBB12_1:
.Ltmp68:
	.loc	2 335 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:335:9
	bl	OS_CPU_SR_Save
	str	r0, [sp, #4]
.Ltmp69:
	.loc	2 336 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:336:13
	movw	r0, :lower16:OSIntNesting
	movt	r0, :upper16:OSIntNesting
	ldrb	r0, [r0]
.Ltmp70:
	.loc	2 336 13 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:336:13
	cmp	r0, #1
	blt	.LBB12_3
	b	.LBB12_2
.LBB12_2:
.Ltmp71:
	.loc	2 337 25 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:337:25
	movw	r0, :lower16:OSIntNesting
	movt	r0, :upper16:OSIntNesting
	ldrb	r1, [r0]
	subs	r1, #1
	strb	r1, [r0]
	.loc	2 338 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:338:9
	b	.LBB12_3
.Ltmp72:
.LBB12_3:
	.loc	2 339 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:339:13
	movw	r0, :lower16:OSIntNesting
	movt	r0, :upper16:OSIntNesting
	ldrb	r0, [r0]
.Ltmp73:
	.loc	2 339 13 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:339:13
	cmp	r0, #0
	bne	.LBB12_9
	b	.LBB12_4
.LBB12_4:
.Ltmp74:
	.loc	2 340 17 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:340:17
	movw	r0, :lower16:OSLockNesting
	movt	r0, :upper16:OSLockNesting
	ldrb	r0, [r0]
.Ltmp75:
	.loc	2 340 17 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:340:17
	cmp	r0, #0
	bne	.LBB12_8
	b	.LBB12_5
.LBB12_5:
.Ltmp76:
	.loc	2 341 17 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:341:17
	bl	OS_SchedNew
.Ltmp77:
	.loc	2 342 21                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:342:21
	movw	r0, :lower16:OSPrioHighRdy
	movt	r0, :upper16:OSPrioHighRdy
	ldrb	r0, [r0]
	.loc	2 342 38 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:342:38
	movw	r1, :lower16:OSPrioCur
	movt	r1, :upper16:OSPrioCur
	ldrb	r1, [r1]
.Ltmp78:
	.loc	2 342 21                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:342:21
	cmp	r0, r1
	beq	.LBB12_7
	b	.LBB12_6
.LBB12_6:
.Ltmp79:
	.loc	2 343 50 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:343:50
	movw	r0, :lower16:OSPrioHighRdy
	movt	r0, :upper16:OSPrioHighRdy
	ldrb	r0, [r0]
	.loc	2 343 37 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:343:37
	movw	r1, :lower16:OSTCBPrioTbl
	movt	r1, :upper16:OSTCBPrioTbl
	ldr.w	r0, [r1, r0, lsl #2]
	.loc	2 343 35                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:343:35
	movw	r1, :lower16:OSTCBHighRdy
	movt	r1, :upper16:OSTCBHighRdy
	str	r0, [r1]
	.loc	2 345 21 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:345:21
	ldr	r0, [r1]
	.loc	2 345 48 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:345:48
	ldr	r1, [r0, #52]
	adds	r1, #1
	str	r1, [r0, #52]
	.loc	2 347 31 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:347:31
	movw	r0, :lower16:OSCtxSwCtr
	movt	r0, :upper16:OSCtxSwCtr
	ldr	r1, [r0]
	adds	r1, #1
	str	r1, [r0]
	.loc	2 348 21                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:348:21
	bl	OSIntCtxSw
	.loc	2 349 17                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:349:17
	b	.LBB12_7
.Ltmp80:
.LBB12_7:
	.loc	2 350 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:350:13
	b	.LBB12_8
.Ltmp81:
.LBB12_8:
	.loc	2 351 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:351:9
	b	.LBB12_9
.Ltmp82:
.LBB12_9:
	.loc	2 352 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:352:9
	ldr	r0, [sp, #4]
	bl	OS_CPU_SR_Restore
.Ltmp83:
	.loc	2 353 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:353:5
	b	.LBB12_10
.Ltmp84:
.LBB12_10:
	.loc	2 354 1                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:354:1
	add	sp, #8
	pop	{r7, pc}
.Ltmp85:
.Lfunc_end12:
	.size	OSIntExit, .Lfunc_end12-OSIntExit
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_SchedNew,"ax",%progbits
	.p2align	2                               @ -- Begin function OS_SchedNew
	.type	OS_SchedNew,%function
	.code	16                              @ @OS_SchedNew
	.thumb_func
OS_SchedNew:
.Lfunc_begin13:
	.loc	2 1234 0                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1234:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#4
	sub	sp, #4
	.cfi_def_cfa_offset 4
.Ltmp86:
	.loc	2 1239 32 prologue_end          @ ../Micrium/Software/uCOS-II/Source/os_core.c:1239:32
	movw	r0, :lower16:OSRdyGrp
	movt	r0, :upper16:OSRdyGrp
	ldrb	r0, [r0]
	.loc	2 1239 21 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1239:21
	movw	r1, :lower16:OSUnMapTbl
	movt	r1, :upper16:OSUnMapTbl
	ldrb	r0, [r1, r0]
	.loc	2 1239 19                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1239:19
	strb.w	r0, [sp, #3]
	.loc	2 1240 30 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1240:30
	ldrb.w	r0, [sp, #3]
	.loc	2 1240 51 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1240:51
	movw	r2, :lower16:OSRdyTbl
	movt	r2, :upper16:OSRdyTbl
	ldrb	r2, [r2, r0]
	.loc	2 1240 40                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1240:40
	ldrb	r1, [r1, r2]
	.loc	2 1240 38                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1240:38
	add.w	r0, r1, r0, lsl #3
	.loc	2 1240 19                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1240:19
	movw	r1, :lower16:OSPrioHighRdy
	movt	r1, :upper16:OSPrioHighRdy
	strb	r0, [r1]
	.loc	2 1258 1 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1258:1
	add	sp, #4
	bx	lr
.Ltmp87:
.Lfunc_end13:
	.size	OS_SchedNew, .Lfunc_end13-OS_SchedNew
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OSSchedLock,"ax",%progbits
	.hidden	OSSchedLock                     @ -- Begin function OSSchedLock
	.globl	OSSchedLock
	.p2align	2
	.type	OSSchedLock,%function
	.code	16                              @ @OSSchedLock
	.thumb_func
OSSchedLock:
.Lfunc_begin14:
	.loc	2 374 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:374:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 16
	movs	r0, #0
.Ltmp88:
	.loc	2 376 16 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:376:16
	str	r0, [sp, #4]
.Ltmp89:
	.loc	2 381 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:381:9
	movw	r0, :lower16:OSRunning
	movt	r0, :upper16:OSRunning
	ldrb	r0, [r0]
.Ltmp90:
	.loc	2 381 9 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:381:9
	cmp	r0, #1
	bne	.LBB14_6
	b	.LBB14_1
.LBB14_1:
.Ltmp91:
	.loc	2 382 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:382:9
	bl	OS_CPU_SR_Save
	str	r0, [sp, #4]
.Ltmp92:
	.loc	2 383 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:383:13
	movw	r0, :lower16:OSIntNesting
	movt	r0, :upper16:OSIntNesting
	ldrb	r0, [r0]
.Ltmp93:
	.loc	2 383 13 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:383:13
	cmp	r0, #0
	bne	.LBB14_5
	b	.LBB14_2
.LBB14_2:
.Ltmp94:
	.loc	2 384 17 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:384:17
	movw	r0, :lower16:OSLockNesting
	movt	r0, :upper16:OSLockNesting
	ldrb	r0, [r0]
.Ltmp95:
	.loc	2 384 17 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:384:17
	cmp	r0, #255
	beq	.LBB14_4
	b	.LBB14_3
.LBB14_3:
.Ltmp96:
	.loc	2 385 30 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:385:30
	movw	r0, :lower16:OSLockNesting
	movt	r0, :upper16:OSLockNesting
	ldrb	r1, [r0]
	adds	r1, #1
	strb	r1, [r0]
	.loc	2 386 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:386:13
	b	.LBB14_4
.Ltmp97:
.LBB14_4:
	.loc	2 387 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:387:9
	b	.LBB14_5
.Ltmp98:
.LBB14_5:
	.loc	2 388 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:388:9
	ldr	r0, [sp, #4]
	bl	OS_CPU_SR_Restore
.Ltmp99:
	.loc	2 389 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:389:5
	b	.LBB14_6
.Ltmp100:
.LBB14_6:
	.loc	2 390 1                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:390:1
	add	sp, #8
	pop	{r7, pc}
.Ltmp101:
.Lfunc_end14:
	.size	OSSchedLock, .Lfunc_end14-OSSchedLock
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OSSchedUnlock,"ax",%progbits
	.hidden	OSSchedUnlock                   @ -- Begin function OSSchedUnlock
	.globl	OSSchedUnlock
	.p2align	2
	.type	OSSchedUnlock,%function
	.code	16                              @ @OSSchedUnlock
	.thumb_func
OSSchedUnlock:
.Lfunc_begin15:
	.loc	2 411 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:411:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 16
	movs	r0, #0
.Ltmp102:
	.loc	2 413 16 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:413:16
	str	r0, [sp, #4]
.Ltmp103:
	.loc	2 418 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:418:9
	movw	r0, :lower16:OSRunning
	movt	r0, :upper16:OSRunning
	ldrb	r0, [r0]
.Ltmp104:
	.loc	2 418 9 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:418:9
	cmp	r0, #1
	bne	.LBB15_11
	b	.LBB15_1
.LBB15_1:
.Ltmp105:
	.loc	2 419 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:419:9
	bl	OS_CPU_SR_Save
	str	r0, [sp, #4]
.Ltmp106:
	.loc	2 420 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:420:13
	movw	r0, :lower16:OSLockNesting
	movt	r0, :upper16:OSLockNesting
	ldrb	r0, [r0]
.Ltmp107:
	.loc	2 420 13 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:420:13
	cmp	r0, #1
	blt	.LBB15_9
	b	.LBB15_2
.LBB15_2:
.Ltmp108:
	.loc	2 421 26 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:421:26
	movw	r0, :lower16:OSLockNesting
	movt	r0, :upper16:OSLockNesting
	ldrb	r1, [r0]
	subs	r1, #1
	strb	r1, [r0]
.Ltmp109:
	.loc	2 422 17                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:422:17
	ldrb	r0, [r0]
.Ltmp110:
	.loc	2 422 17 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:422:17
	cmp	r0, #0
	bne	.LBB15_7
	b	.LBB15_3
.LBB15_3:
.Ltmp111:
	.loc	2 423 21 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:423:21
	movw	r0, :lower16:OSIntNesting
	movt	r0, :upper16:OSIntNesting
	ldrb	r0, [r0]
.Ltmp112:
	.loc	2 423 21 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:423:21
	cmp	r0, #0
	bne	.LBB15_5
	b	.LBB15_4
.LBB15_4:
.Ltmp113:
	.loc	2 424 21 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:424:21
	ldr	r0, [sp, #4]
	bl	OS_CPU_SR_Restore
.Ltmp114:
	.loc	2 425 21                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:425:21
	bl	OS_Sched
	.loc	2 426 17                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:426:17
	b	.LBB15_6
.Ltmp115:
.LBB15_5:
	.loc	2 427 21                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:427:21
	ldr	r0, [sp, #4]
	bl	OS_CPU_SR_Restore
	b	.LBB15_6
.Ltmp116:
.LBB15_6:
	.loc	2 429 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:429:13
	b	.LBB15_8
.Ltmp117:
.LBB15_7:
	.loc	2 430 17                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:430:17
	ldr	r0, [sp, #4]
	bl	OS_CPU_SR_Restore
	b	.LBB15_8
.Ltmp118:
.LBB15_8:
	.loc	2 432 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:432:9
	b	.LBB15_10
.Ltmp119:
.LBB15_9:
	.loc	2 433 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:433:13
	ldr	r0, [sp, #4]
	bl	OS_CPU_SR_Restore
	b	.LBB15_10
.Ltmp120:
.LBB15_10:
	.loc	2 435 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:435:5
	b	.LBB15_11
.Ltmp121:
.LBB15_11:
	.loc	2 436 1                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:436:1
	add	sp, #8
	pop	{r7, pc}
.Ltmp122:
.Lfunc_end15:
	.size	OSSchedUnlock, .Lfunc_end15-OSSchedUnlock
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_Sched,"ax",%progbits
	.hidden	OS_Sched                        @ -- Begin function OS_Sched
	.globl	OS_Sched
	.p2align	2
	.type	OS_Sched,%function
	.code	16                              @ @OS_Sched
	.thumb_func
OS_Sched:
.Lfunc_begin16:
	.loc	2 1192 0                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1192:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 16
	movs	r0, #0
.Ltmp123:
	.loc	2 1194 16 prologue_end          @ ../Micrium/Software/uCOS-II/Source/os_core.c:1194:16
	str	r0, [sp, #4]
.Ltmp124:
	.loc	2 1199 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1199:5
	bl	OS_CPU_SR_Save
	str	r0, [sp, #4]
.Ltmp125:
	.loc	2 1200 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1200:9
	movw	r0, :lower16:OSIntNesting
	movt	r0, :upper16:OSIntNesting
	ldrb	r0, [r0]
.Ltmp126:
	.loc	2 1200 9 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1200:9
	cmp	r0, #0
	bne	.LBB16_6
	b	.LBB16_1
.LBB16_1:
.Ltmp127:
	.loc	2 1201 13 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1201:13
	movw	r0, :lower16:OSLockNesting
	movt	r0, :upper16:OSLockNesting
	ldrb	r0, [r0]
.Ltmp128:
	.loc	2 1201 13 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1201:13
	cmp	r0, #0
	bne	.LBB16_5
	b	.LBB16_2
.LBB16_2:
.Ltmp129:
	.loc	2 1202 13 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1202:13
	bl	OS_SchedNew
.Ltmp130:
	.loc	2 1203 17                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1203:17
	movw	r0, :lower16:OSPrioHighRdy
	movt	r0, :upper16:OSPrioHighRdy
	ldrb	r0, [r0]
	.loc	2 1203 34 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1203:34
	movw	r1, :lower16:OSPrioCur
	movt	r1, :upper16:OSPrioCur
	ldrb	r1, [r1]
.Ltmp131:
	.loc	2 1203 17                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1203:17
	cmp	r0, r1
	beq	.LBB16_4
	b	.LBB16_3
.LBB16_3:
.Ltmp132:
	.loc	2 1204 45 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1204:45
	movw	r0, :lower16:OSPrioHighRdy
	movt	r0, :upper16:OSPrioHighRdy
	ldrb	r0, [r0]
	.loc	2 1204 32 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1204:32
	movw	r1, :lower16:OSTCBPrioTbl
	movt	r1, :upper16:OSTCBPrioTbl
	ldr.w	r0, [r1, r0, lsl #2]
	.loc	2 1204 30                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1204:30
	movw	r1, :lower16:OSTCBHighRdy
	movt	r1, :upper16:OSTCBHighRdy
	str	r0, [r1]
	.loc	2 1206 17 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1206:17
	ldr	r0, [r1]
	.loc	2 1206 44 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1206:44
	ldr	r1, [r0, #52]
	adds	r1, #1
	str	r1, [r0, #52]
	.loc	2 1208 27 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1208:27
	movw	r0, :lower16:OSCtxSwCtr
	movt	r0, :upper16:OSCtxSwCtr
	ldr	r1, [r0]
	adds	r1, #1
	str	r1, [r0]
	.loc	2 1209 17                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1209:17
	bl	OSCtxSw
	.loc	2 1210 13                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1210:13
	b	.LBB16_4
.Ltmp133:
.LBB16_4:
	.loc	2 1211 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1211:9
	b	.LBB16_5
.Ltmp134:
.LBB16_5:
	.loc	2 1212 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1212:5
	b	.LBB16_6
.Ltmp135:
.LBB16_6:
	.loc	2 1213 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1213:5
	ldr	r0, [sp, #4]
	bl	OS_CPU_SR_Restore
.Ltmp136:
	.loc	2 1214 1                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1214:1
	add	sp, #8
	pop	{r7, pc}
.Ltmp137:
.Lfunc_end16:
	.size	OS_Sched, .Lfunc_end16-OS_Sched
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OSStart,"ax",%progbits
	.hidden	OSStart                         @ -- Begin function OSStart
	.globl	OSStart
	.p2align	2
	.type	OSStart,%function
	.code	16                              @ @OSStart
	.thumb_func
OSStart:
.Lfunc_begin17:
	.loc	2 461 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:461:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
.Ltmp138:
	.loc	2 462 9 prologue_end            @ ../Micrium/Software/uCOS-II/Source/os_core.c:462:9
	movw	r0, :lower16:OSRunning
	movt	r0, :upper16:OSRunning
	ldrb	r0, [r0]
.Ltmp139:
	.loc	2 462 9 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:462:9
	cmp	r0, #0
	bne	.LBB17_2
	b	.LBB17_1
.LBB17_1:
.Ltmp140:
	.loc	2 463 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:463:9
	bl	OS_SchedNew
	.loc	2 464 25                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:464:25
	movw	r0, :lower16:OSPrioHighRdy
	movt	r0, :upper16:OSPrioHighRdy
	ldrb	r1, [r0]
	.loc	2 464 23 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:464:23
	movw	r2, :lower16:OSPrioCur
	movt	r2, :upper16:OSPrioCur
	strb	r1, [r2]
	.loc	2 465 38 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:465:38
	ldrb	r0, [r0]
	.loc	2 465 25 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:465:25
	movw	r1, :lower16:OSTCBPrioTbl
	movt	r1, :upper16:OSTCBPrioTbl
	ldr.w	r0, [r1, r0, lsl #2]
	.loc	2 465 23                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:465:23
	movw	r1, :lower16:OSTCBHighRdy
	movt	r1, :upper16:OSTCBHighRdy
	str	r0, [r1]
	.loc	2 466 25 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:466:25
	ldr	r0, [r1]
	.loc	2 466 23 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:466:23
	movw	r1, :lower16:OSTCBCur
	movt	r1, :upper16:OSTCBCur
	str	r0, [r1]
	.loc	2 467 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:467:9
	bl	OSStartHighRdy
	.loc	2 468 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:468:5
	b	.LBB17_2
.Ltmp141:
.LBB17_2:
	.loc	2 469 1                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:469:1
	pop	{r7, pc}
.Ltmp142:
.Lfunc_end17:
	.size	OSStart, .Lfunc_end17-OSStart
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OSStatInit,"ax",%progbits
	.hidden	OSStatInit                      @ -- Begin function OSStatInit
	.globl	OSStatInit
	.p2align	2
	.type	OSStatInit,%function
	.code	16                              @ @OSStatInit
	.thumb_func
OSStatInit:
.Lfunc_begin18:
	.loc	2 493 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:493:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#16
	sub	sp, #16
	.cfi_def_cfa_offset 24
	movs	r0, #0
.Ltmp143:
	.loc	2 495 16 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:495:16
	str	r0, [sp, #12]
	movs	r1, #2
	.loc	2 500 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:500:5
	str	r0, [sp, #8]                    @ 4-byte Spill
	mov	r0, r1
	bl	OSTimeDly
.Ltmp144:
	.loc	2 501 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:501:5
	bl	OS_CPU_SR_Save
	str	r0, [sp, #12]
.Ltmp145:
	.loc	2 502 18                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:502:18
	movw	r0, :lower16:OSIdleCtr
	movt	r0, :upper16:OSIdleCtr
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	str	r1, [r0]
.Ltmp146:
	.loc	2 503 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:503:5
	ldr	r2, [sp, #12]
	str	r0, [sp, #4]                    @ 4-byte Spill
	mov	r0, r2
	bl	OS_CPU_SR_Restore
	movs	r0, #10
.Ltmp147:
	.loc	2 504 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:504:5
	bl	OSTimeDly
.Ltmp148:
	.loc	2 505 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:505:5
	bl	OS_CPU_SR_Save
	str	r0, [sp, #12]
.Ltmp149:
	.loc	2 506 20                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:506:20
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [r0]
	.loc	2 506 18 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:506:18
	movw	r2, :lower16:OSIdleCtrMax
	movt	r2, :upper16:OSIdleCtrMax
	str	r1, [r2]
	.loc	2 507 18 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:507:18
	movw	r1, :lower16:OSStatRdy
	movt	r1, :upper16:OSStatRdy
	movs	r2, #1
	strb	r2, [r1]
.Ltmp150:
	.loc	2 508 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:508:5
	ldr	r0, [sp, #12]
	bl	OS_CPU_SR_Restore
.Ltmp151:
	.loc	2 509 1                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:509:1
	add	sp, #16
	pop	{r7, pc}
.Ltmp152:
.Lfunc_end18:
	.size	OSStatInit, .Lfunc_end18-OSStatInit
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OSTimeTick,"ax",%progbits
	.hidden	OSTimeTick                      @ -- Begin function OSTimeTick
	.globl	OSTimeTick
	.p2align	2
	.type	OSTimeTick,%function
	.code	16                              @ @OSTimeTick
	.thumb_func
OSTimeTick:
.Lfunc_begin19:
	.loc	2 527 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:527:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#16
	sub	sp, #16
	.cfi_def_cfa_offset 24
	movs	r0, #0
.Ltmp153:
	.loc	2 533 16 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:533:16
	str	r0, [sp, #4]
	.loc	2 539 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:539:5
	bl	OSTimeTickHook
.Ltmp154:
	.loc	2 542 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:542:5
	bl	OS_CPU_SR_Save
	str	r0, [sp, #4]
.Ltmp155:
	.loc	2 543 11                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:543:11
	movw	r0, :lower16:OSTime
	movt	r0, :upper16:OSTime
	ldr	r1, [r0]
	adds	r1, #1
	str	r1, [r0]
.Ltmp156:
	.loc	2 544 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:544:5
	ldr	r0, [sp, #4]
	bl	OS_CPU_SR_Restore
.Ltmp157:
	.loc	2 546 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:546:9
	movw	r0, :lower16:OSRunning
	movt	r0, :upper16:OSRunning
	ldrb	r0, [r0]
.Ltmp158:
	.loc	2 546 9 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:546:9
	cmp	r0, #1
	bne.w	.LBB19_23
	b	.LBB19_1
.LBB19_1:
.Ltmp159:
	.loc	2 548 17 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:548:17
	movw	r0, :lower16:OSTickStepState
	movt	r0, :upper16:OSTickStepState
	ldrb	r0, [r0]
	.loc	2 548 9 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:548:9
	mov	r1, r0
	cmp	r0, #0
	str	r1, [sp]                        @ 4-byte Spill
	beq	.LBB19_4
	b	.LBB19_2
.LBB19_2:
	ldr	r0, [sp]                        @ 4-byte Reload
	cmp	r0, #1
	beq	.LBB19_5
	b	.LBB19_3
.LBB19_3:
	ldr	r0, [sp]                        @ 4-byte Reload
	cmp	r0, #2
	beq	.LBB19_6
	b	.LBB19_7
.LBB19_4:
	.loc	2 0 9                           @ ../Micrium/Software/uCOS-II/Source/os_core.c:0:9
	movs	r0, #1
.Ltmp160:
	.loc	2 550 23 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:550:23
	strb.w	r0, [sp, #11]
	.loc	2 551 18                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:551:18
	b	.LBB19_8
.LBB19_5:
	.loc	2 0 18 is_stmt 0                @ ../Micrium/Software/uCOS-II/Source/os_core.c:0:18
	movs	r0, #0
	.loc	2 554 23 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:554:23
	strb.w	r0, [sp, #11]
	.loc	2 555 18                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:555:18
	b	.LBB19_8
.LBB19_6:
	.loc	2 0 18 is_stmt 0                @ ../Micrium/Software/uCOS-II/Source/os_core.c:0:18
	movs	r0, #1
	.loc	2 558 34 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:558:34
	strb.w	r0, [sp, #11]
	.loc	2 559 34                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:559:34
	movw	r1, :lower16:OSTickStepState
	movt	r1, :upper16:OSTickStepState
	strb	r0, [r1]
	.loc	2 560 18                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:560:18
	b	.LBB19_8
.LBB19_7:
	.loc	2 0 18 is_stmt 0                @ ../Micrium/Software/uCOS-II/Source/os_core.c:0:18
	movs	r0, #1
	.loc	2 563 34 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:563:34
	strb.w	r0, [sp, #11]
	.loc	2 564 34                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:564:34
	movw	r0, :lower16:OSTickStepState
	movt	r0, :upper16:OSTickStepState
	movs	r1, #0
	strb	r1, [r0]
	.loc	2 565 18                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:565:18
	b	.LBB19_8
.Ltmp161:
.LBB19_8:
	.loc	2 567 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:567:13
	ldrb.w	r0, [sp, #11]
.Ltmp162:
	.loc	2 567 13 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:567:13
	cmp	r0, #0
	bne	.LBB19_10
	b	.LBB19_9
.LBB19_9:
.Ltmp163:
	.loc	2 568 13 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:568:13
	b	.LBB19_23
.Ltmp164:
.LBB19_10:
	.loc	2 571 16                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:571:16
	movw	r0, :lower16:OSTCBList
	movt	r0, :upper16:OSTCBList
	ldr	r0, [r0]
	.loc	2 571 14 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:571:14
	str	r0, [sp, #12]
	.loc	2 572 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:572:9
	b	.LBB19_11
.LBB19_11:                              @ =>This Inner Loop Header: Depth=1
	.loc	2 572 16 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:572:16
	ldr	r0, [sp, #12]
	.loc	2 572 22                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:572:22
	ldrb.w	r0, [r0, #46]
	.loc	2 572 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:572:9
	cmp	r0, #63
	beq	.LBB19_22
	b	.LBB19_12
.LBB19_12:                              @   in Loop: Header=BB19_11 Depth=1
.Ltmp165:
	.loc	2 573 13 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:573:13
	bl	OS_CPU_SR_Save
	str	r0, [sp, #4]
.Ltmp166:
	.loc	2 574 17                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:574:17
	ldr	r0, [sp, #12]
	.loc	2 574 23 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:574:23
	ldrh	r0, [r0, #42]
.Ltmp167:
	.loc	2 574 17                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:574:17
	cmp	r0, #0
	beq	.LBB19_21
	b	.LBB19_13
.LBB19_13:                              @   in Loop: Header=BB19_11 Depth=1
.Ltmp168:
	.loc	2 575 23 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:575:23
	ldr	r0, [sp, #12]
	.loc	2 575 21 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:575:21
	ldrh	r1, [r0, #42]
	subs	r1, #1
	strh	r1, [r0, #42]
.Ltmp169:
	.loc	2 575 21                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:575:21
	lsls	r0, r1, #16
	cmp	r0, #0
	bne	.LBB19_20
	b	.LBB19_14
.LBB19_14:                              @   in Loop: Header=BB19_11 Depth=1
.Ltmp170:
	.loc	2 577 26 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:577:26
	ldr	r0, [sp, #12]
	ldrb.w	r0, [r0, #44]
.Ltmp171:
	.loc	2 577 25 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:577:25
	tst.w	r0, #55
	beq	.LBB19_16
	b	.LBB19_15
.LBB19_15:                              @   in Loop: Header=BB19_11 Depth=1
.Ltmp172:
	.loc	2 578 25 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:578:25
	ldr	r0, [sp, #12]
	.loc	2 578 43 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:578:43
	ldrb.w	r1, [r0, #44]
	and	r1, r1, #200
	strb.w	r1, [r0, #44]
	.loc	2 579 25 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:579:25
	ldr	r0, [sp, #12]
	movs	r1, #1
	.loc	2 579 44 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:579:44
	strb.w	r1, [r0, #45]
	.loc	2 580 21 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:580:21
	b	.LBB19_17
.Ltmp173:
.LBB19_16:                              @   in Loop: Header=BB19_11 Depth=1
	.loc	2 581 25                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:581:25
	ldr	r0, [sp, #12]
	movs	r1, #0
	.loc	2 581 44 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:581:44
	strb.w	r1, [r0, #45]
	b	.LBB19_17
.Ltmp174:
.LBB19_17:                              @   in Loop: Header=BB19_11 Depth=1
	.loc	2 584 26 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:584:26
	ldr	r0, [sp, #12]
	ldrb.w	r0, [r0, #44]
.Ltmp175:
	.loc	2 584 25 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:584:25
	lsls	r0, r0, #28
	cmp	r0, #0
	bmi	.LBB19_19
	b	.LBB19_18
.LBB19_18:                              @   in Loop: Header=BB19_11 Depth=1
.Ltmp176:
	.loc	2 585 51 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:585:51
	ldr	r0, [sp, #12]
	ldrb.w	r0, [r0, #50]
	.loc	2 585 48 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:585:48
	movw	r1, :lower16:OSRdyGrp
	movt	r1, :upper16:OSRdyGrp
	ldrb	r2, [r1]
	orrs	r0, r2
	strb	r0, [r1]
	.loc	2 586 51 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:586:51
	ldr	r0, [sp, #12]
	.loc	2 586 40 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:586:40
	ldrb.w	r1, [r0, #48]
	.loc	2 586 51                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:586:51
	ldrb.w	r0, [r0, #49]
	.loc	2 586 25                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:586:25
	movw	r2, :lower16:OSRdyTbl
	movt	r2, :upper16:OSRdyTbl
	.loc	2 586 48                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:586:48
	ldrb	r3, [r2, r1]
	orrs	r0, r3
	strb	r0, [r2, r1]
	.loc	2 587 21 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:587:21
	b	.LBB19_19
.Ltmp177:
.LBB19_19:                              @   in Loop: Header=BB19_11 Depth=1
	.loc	2 588 17                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:588:17
	b	.LBB19_20
.Ltmp178:
.LBB19_20:                              @   in Loop: Header=BB19_11 Depth=1
	.loc	2 589 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:589:13
	b	.LBB19_21
.Ltmp179:
.LBB19_21:                              @   in Loop: Header=BB19_11 Depth=1
	.loc	2 590 20                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:590:20
	ldr	r0, [sp, #12]
	.loc	2 590 26 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:590:26
	ldr	r0, [r0, #20]
	.loc	2 590 18                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:590:18
	str	r0, [sp, #12]
.Ltmp180:
	.loc	2 591 13 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:591:13
	ldr	r0, [sp, #4]
	bl	OS_CPU_SR_Restore
.Ltmp181:
	.loc	2 572 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:572:9
	b	.LBB19_11
.LBB19_22:
	.loc	2 593 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:593:5
	b	.LBB19_23
.Ltmp182:
.LBB19_23:
	.loc	2 594 1                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:594:1
	add	sp, #16
	pop	{r7, pc}
.Ltmp183:
.Lfunc_end19:
	.size	OSTimeTick, .Lfunc_end19-OSTimeTick
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OSVersion,"ax",%progbits
	.hidden	OSVersion                       @ -- Begin function OSVersion
	.globl	OSVersion
	.p2align	2
	.type	OSVersion,%function
	.code	16                              @ @OSVersion
	.thumb_func
OSVersion:
.Lfunc_begin20:
	.loc	2 611 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:611:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	movw	r0, #283
.Ltmp184:
	.loc	2 612 5 prologue_end            @ ../Micrium/Software/uCOS-II/Source/os_core.c:612:5
	bx	lr
.Ltmp185:
.Lfunc_end20:
	.size	OSVersion, .Lfunc_end20-OSVersion
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_Dummy,"ax",%progbits
	.hidden	OS_Dummy                        @ -- Begin function OS_Dummy
	.globl	OS_Dummy
	.p2align	2
	.type	OS_Dummy,%function
	.code	16                              @ @OS_Dummy
	.thumb_func
OS_Dummy:
.Lfunc_begin21:
	.loc	2 630 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:630:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.loc	2 631 1 prologue_end            @ ../Micrium/Software/uCOS-II/Source/os_core.c:631:1
	bx	lr
.Ltmp186:
.Lfunc_end21:
	.size	OS_Dummy, .Lfunc_end21-OS_Dummy
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_EventTaskRdy,"ax",%progbits
	.hidden	OS_EventTaskRdy                 @ -- Begin function OS_EventTaskRdy
	.globl	OS_EventTaskRdy
	.p2align	2
	.type	OS_EventTaskRdy,%function
	.code	16                              @ @OS_EventTaskRdy
	.thumb_func
OS_EventTaskRdy:
.Lfunc_begin22:
	.loc	2 658 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:658:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#24
	sub	sp, #24
	.cfi_def_cfa_offset 24
	mov	r3, r2
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	strb.w	r2, [sp, #15]
.Ltmp187:
	.loc	2 674 24 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:674:24
	ldr	r0, [sp, #20]
	.loc	2 674 32 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:674:32
	ldrb	r0, [r0, #10]
	.loc	2 674 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:674:13
	movw	r1, :lower16:OSUnMapTbl
	movt	r1, :upper16:OSUnMapTbl
	ldrb	r0, [r1, r0]
	.loc	2 674 11                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:674:11
	strb.w	r0, [sp, #6]
	.loc	2 675 26 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:675:26
	ldrb.w	r0, [sp, #6]
	movs	r2, #1
	.loc	2 675 23 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:675:23
	lsl.w	r0, r2, r0
	.loc	2 675 11                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:675:11
	strb.w	r0, [sp, #3]
	.loc	2 676 24 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:676:24
	ldr	r0, [sp, #20]
	.loc	2 676 43 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:676:43
	ldrb.w	r12, [sp, #6]
	.loc	2 676 32                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:676:32
	add	r0, r12
	.loc	2 676 24                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:676:24
	ldrb	r0, [r0, #11]
	.loc	2 676 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:676:13
	ldrb	r0, [r1, r0]
	.loc	2 676 11                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:676:11
	strb.w	r0, [sp, #7]
	.loc	2 677 26 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:677:26
	ldrb.w	r0, [sp, #7]
	.loc	2 677 23 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:677:23
	lsl.w	r0, r2, r0
	.loc	2 677 11                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:677:11
	strb.w	r0, [sp, #4]
	.loc	2 678 22 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:678:22
	ldrb.w	r0, [sp, #6]
	.loc	2 678 32 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:678:32
	ldrb.w	r1, [sp, #7]
	.loc	2 678 30                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:678:30
	add.w	r0, r1, r0, lsl #3
	.loc	2 678 11                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:678:11
	strb.w	r0, [sp, #5]
	.loc	2 696 31 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:696:31
	ldrb.w	r0, [sp, #4]
	.loc	2 696 5 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:696:5
	ldr	r1, [sp, #20]
	.loc	2 696 24                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:696:24
	ldrb.w	r2, [sp, #6]
	.loc	2 696 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:696:13
	add	r1, r2
	.loc	2 696 27                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:696:27
	ldrb	r2, [r1, #11]
	bic.w	r0, r2, r0
	strb	r0, [r1, #11]
.Ltmp188:
	.loc	2 697 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:697:9
	ldr	r0, [sp, #20]
	.loc	2 697 28 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:697:28
	ldrb.w	r1, [sp, #6]
	.loc	2 697 17                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:697:17
	add	r0, r1
	.loc	2 697 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:697:9
	ldrb	r0, [r0, #11]
.Ltmp189:
	.loc	2 697 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:697:9
	cmp	r0, #0
	bne	.LBB22_2
	b	.LBB22_1
.LBB22_1:
.Ltmp190:
	.loc	2 698 32 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:698:32
	ldrb.w	r0, [sp, #3]
	.loc	2 698 9 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:698:9
	ldr	r1, [sp, #20]
	.loc	2 698 28                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:698:28
	ldrb	r2, [r1, #10]
	bic.w	r0, r2, r0
	strb	r0, [r1, #10]
	.loc	2 699 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:699:5
	b	.LBB22_2
.Ltmp191:
.LBB22_2:
	.loc	2 700 42                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:700:42
	ldrb.w	r0, [sp, #5]
	.loc	2 700 29 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:700:29
	movw	r1, :lower16:OSTCBPrioTbl
	movt	r1, :upper16:OSTCBPrioTbl
	ldr.w	r0, [r1, r0, lsl #2]
	.loc	2 700 26                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:700:26
	str	r0, [sp, #8]
	.loc	2 701 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:701:5
	ldr	r0, [sp, #8]
	movs	r1, #0
	.loc	2 701 26 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:701:26
	strh	r1, [r0, #42]
	.loc	2 702 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:702:5
	ldr	r0, [sp, #8]
	.loc	2 702 26 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:702:26
	str	r1, [r0, #28]
	.loc	2 704 28 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:704:28
	ldr	r0, [sp, #16]
	.loc	2 704 5 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:704:5
	ldr	r2, [sp, #8]
	.loc	2 704 26                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:704:26
	str	r0, [r2, #32]
	.loc	2 708 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:708:5
	ldr	r0, [sp, #8]
	.loc	2 708 26 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:708:26
	strb.w	r1, [r0, #45]
	.loc	2 709 29 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:709:29
	ldrb.w	r0, [sp, #15]
	.loc	2 709 5 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:709:5
	ldr	r1, [sp, #8]
	.loc	2 709 25                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:709:25
	ldrb.w	r2, [r1, #44]
	bic.w	r0, r2, r0
	strb.w	r0, [r1, #44]
.Ltmp192:
	.loc	2 710 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:710:9
	ldr	r0, [sp, #8]
	.loc	2 710 15 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:710:15
	ldrb.w	r0, [r0, #44]
.Ltmp193:
	.loc	2 710 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:710:9
	cmp	r0, #0
	bne	.LBB22_4
	b	.LBB22_3
.LBB22_3:
.Ltmp194:
	.loc	2 711 29 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:711:29
	ldrb.w	r0, [sp, #3]
	.loc	2 711 25 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:711:25
	movw	r1, :lower16:OSRdyGrp
	movt	r1, :upper16:OSRdyGrp
	ldrb	r2, [r1]
	orrs	r0, r2
	strb	r0, [r1]
	.loc	2 712 29 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:712:29
	ldrb.w	r0, [sp, #4]
	.loc	2 712 18 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:712:18
	ldrb.w	r1, [sp, #6]
	.loc	2 712 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:712:9
	movw	r2, :lower16:OSRdyTbl
	movt	r2, :upper16:OSRdyTbl
	.loc	2 712 25                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:712:25
	ldrb	r3, [r2, r1]
	orrs	r0, r3
	strb	r0, [r2, r1]
	.loc	2 713 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:713:5
	b	.LBB22_4
.Ltmp195:
.LBB22_4:
	.loc	2 714 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:714:13
	ldrb.w	r0, [sp, #5]
	.loc	2 714 5 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:714:5
	add	sp, #24
	bx	lr
.Ltmp196:
.Lfunc_end22:
	.size	OS_EventTaskRdy, .Lfunc_end22-OS_EventTaskRdy
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_EventTaskWait,"ax",%progbits
	.hidden	OS_EventTaskWait                @ -- Begin function OS_EventTaskWait
	.globl	OS_EventTaskWait
	.p2align	2
	.type	OS_EventTaskWait,%function
	.code	16                              @ @OS_EventTaskWait
	.thumb_func
OS_EventTaskWait:
.Lfunc_begin23:
	.loc	2 734 0 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:734:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
.Ltmp197:
	.loc	2 738 31 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:738:31
	ldr	r0, [sp, #4]
	.loc	2 738 5 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:738:5
	movw	r1, :lower16:OSTCBCur
	movt	r1, :upper16:OSTCBCur
	ldr	r2, [r1]
	.loc	2 738 29                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:738:29
	str	r0, [r2, #28]
	.loc	2 739 31 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:739:31
	ldr	r0, [r1]
	.loc	2 739 41 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:739:41
	ldrb.w	r0, [r0, #48]
	.loc	2 739 29                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:739:29
	strb.w	r0, [sp, #3]
	.loc	2 740 32 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:740:32
	ldr	r0, [r1]
	ldrb.w	r0, [r0, #49]
	.loc	2 740 14 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:740:14
	ldrb.w	r1, [sp, #3]
	.loc	2 740 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:740:5
	movw	r2, :lower16:OSRdyTbl
	movt	r2, :upper16:OSRdyTbl
	.loc	2 740 28                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:740:28
	ldrb	r3, [r2, r1]
	bic.w	r0, r3, r0
	strb	r0, [r2, r1]
.Ltmp198:
	.loc	2 741 18 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:741:18
	ldrb.w	r0, [sp, #3]
	.loc	2 741 9 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:741:9
	ldrb	r0, [r2, r0]
.Ltmp199:
	.loc	2 741 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:741:9
	cmp	r0, #0
	bne	.LBB23_2
	b	.LBB23_1
.LBB23_1:
.Ltmp200:
	.loc	2 742 22 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:742:22
	movw	r0, :lower16:OSTCBCur
	movt	r0, :upper16:OSTCBCur
	ldr	r0, [r0]
	ldrb.w	r0, [r0, #50]
	.loc	2 742 18 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:742:18
	movw	r1, :lower16:OSRdyGrp
	movt	r1, :upper16:OSRdyGrp
	ldrb	r2, [r1]
	bic.w	r0, r2, r0
	strb	r0, [r1]
	.loc	2 743 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:743:5
	b	.LBB23_2
.Ltmp201:
.LBB23_2:
	.loc	2 744 45                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:744:45
	movw	r0, :lower16:OSTCBCur
	movt	r0, :upper16:OSTCBCur
	ldr	r1, [r0]
	.loc	2 744 34 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:744:34
	ldrb.w	r2, [r1, #48]
	.loc	2 744 45                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:744:45
	ldrb.w	r1, [r1, #49]
	.loc	2 744 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:744:5
	ldr	r3, [sp, #4]
	.loc	2 744 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:744:13
	add	r2, r3
	.loc	2 744 42                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:744:42
	ldrb	r3, [r2, #11]
	orrs	r1, r3
	strb	r1, [r2, #11]
	.loc	2 745 45 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:745:45
	ldr	r0, [r0]
	ldrb.w	r0, [r0, #50]
	.loc	2 745 5 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:745:5
	ldr	r1, [sp, #4]
	.loc	2 745 42                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:745:42
	ldrb	r2, [r1, #10]
	orrs	r0, r2
	strb	r0, [r1, #10]
	.loc	2 746 1 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:746:1
	add	sp, #8
	bx	lr
.Ltmp202:
.Lfunc_end23:
	.size	OS_EventTaskWait, .Lfunc_end23-OS_EventTaskWait
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_EventTO,"ax",%progbits
	.hidden	OS_EventTO                      @ -- Begin function OS_EventTO
	.globl	OS_EventTO
	.p2align	2
	.type	OS_EventTO,%function
	.code	16                              @ @OS_EventTO
	.thumb_func
OS_EventTO:
.Lfunc_begin24:
	.loc	2 765 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:765:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
.Ltmp203:
	.loc	2 769 30 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:769:30
	movw	r0, :lower16:OSTCBCur
	movt	r0, :upper16:OSTCBCur
	ldr	r1, [r0]
	.loc	2 769 40 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:769:40
	ldrb.w	r1, [r1, #48]
	.loc	2 769 28                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:769:28
	strb.w	r1, [sp, #3]
	.loc	2 770 31 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:770:31
	ldr	r0, [r0]
	ldrb.w	r0, [r0, #49]
	.loc	2 770 5 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:770:5
	ldr	r1, [sp, #4]
	.loc	2 770 24                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:770:24
	ldrb.w	r2, [sp, #3]
	.loc	2 770 13                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:770:13
	add	r1, r2
	.loc	2 770 27                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:770:27
	ldrb	r2, [r1, #11]
	bic.w	r0, r2, r0
	strb	r0, [r1, #11]
.Ltmp204:
	.loc	2 771 9 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:771:9
	ldr	r0, [sp, #4]
	.loc	2 771 28 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:771:28
	ldrb.w	r1, [sp, #3]
	.loc	2 771 17                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:771:17
	add	r0, r1
	.loc	2 771 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:771:9
	ldrb	r0, [r0, #11]
.Ltmp205:
	.loc	2 771 9                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:771:9
	cmp	r0, #0
	bne	.LBB24_2
	b	.LBB24_1
.LBB24_1:
.Ltmp206:
	.loc	2 772 32 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:772:32
	movw	r0, :lower16:OSTCBCur
	movt	r0, :upper16:OSTCBCur
	ldr	r0, [r0]
	ldrb.w	r0, [r0, #50]
	.loc	2 772 9 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:772:9
	ldr	r1, [sp, #4]
	.loc	2 772 28                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:772:28
	ldrb	r2, [r1, #10]
	bic.w	r0, r2, r0
	strb	r0, [r1, #10]
	.loc	2 773 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:773:5
	b	.LBB24_2
.Ltmp207:
.LBB24_2:
	.loc	2 774 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:774:5
	movw	r0, :lower16:OSTCBCur
	movt	r0, :upper16:OSTCBCur
	ldr	r1, [r0]
	movs	r2, #0
	.loc	2 774 29 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:774:29
	strb.w	r2, [r1, #45]
	.loc	2 775 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:775:5
	ldr	r1, [r0]
	.loc	2 775 29 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:775:29
	strb.w	r2, [r1, #44]
	.loc	2 776 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:776:5
	ldr	r0, [r0]
	.loc	2 776 29 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:776:29
	str	r2, [r0, #28]
	.loc	2 777 1 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:777:1
	add	sp, #8
	bx	lr
.Ltmp208:
.Lfunc_end24:
	.size	OS_EventTO, .Lfunc_end24-OS_EventTO
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_EventWaitListInit,"ax",%progbits
	.hidden	OS_EventWaitListInit            @ -- Begin function OS_EventWaitListInit
	.globl	OS_EventWaitListInit
	.p2align	2
	.type	OS_EventWaitListInit,%function
	.code	16                              @ @OS_EventWaitListInit
	.thumb_func
OS_EventWaitListInit:
.Lfunc_begin25:
	.loc	2 795 0                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:795:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#12
	sub	sp, #12
	.cfi_def_cfa_offset 12
	str	r0, [sp, #8]
.Ltmp209:
	.loc	2 804 5 prologue_end            @ ../Micrium/Software/uCOS-II/Source/os_core.c:804:5
	ldr	r0, [sp, #8]
	movs	r1, #0
	.loc	2 804 24 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:804:24
	strb	r1, [r0, #10]
	.loc	2 805 27 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:805:27
	ldr	r0, [sp, #8]
	.loc	2 805 35 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:805:35
	adds	r0, #11
	.loc	2 805 24                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:805:24
	str	r0, [sp, #4]
.Ltmp210:
	.loc	2 807 12 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:807:12
	strb.w	r1, [sp, #3]
	.loc	2 807 10 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:807:10
	b	.LBB25_1
.LBB25_1:                               @ =>This Inner Loop Header: Depth=1
.Ltmp211:
	.loc	2 807 17                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:807:17
	ldrb.w	r0, [sp, #3]
.Ltmp212:
	.loc	2 807 5                         @ ../Micrium/Software/uCOS-II/Source/os_core.c:807:5
	cmp	r0, #7
	bgt	.LBB25_4
	b	.LBB25_2
.LBB25_2:                               @   in Loop: Header=BB25_1 Depth=1
.Ltmp213:
	.loc	2 808 14 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:808:14
	ldr	r0, [sp, #4]
	adds	r1, r0, #1
	str	r1, [sp, #4]
	movs	r1, #0
	.loc	2 808 17 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:808:17
	strb	r1, [r0]
	.loc	2 809 5 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:809:5
	b	.LBB25_3
.Ltmp214:
.LBB25_3:                               @   in Loop: Header=BB25_1 Depth=1
	.loc	2 807 41                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:807:41
	ldrb.w	r0, [sp, #3]
	adds	r0, #1
	strb.w	r0, [sp, #3]
	.loc	2 807 5 is_stmt 0               @ ../Micrium/Software/uCOS-II/Source/os_core.c:807:5
	b	.LBB25_1
.Ltmp215:
.LBB25_4:
	.loc	2 810 1 is_stmt 1               @ ../Micrium/Software/uCOS-II/Source/os_core.c:810:1
	add	sp, #12
	bx	lr
.Ltmp216:
.Lfunc_end25:
	.size	OS_EventWaitListInit, .Lfunc_end25-OS_EventWaitListInit
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_MemClr,"ax",%progbits
	.hidden	OS_MemClr                       @ -- Begin function OS_MemClr
	.globl	OS_MemClr
	.p2align	2
	.type	OS_MemClr,%function
	.code	16                              @ @OS_MemClr
	.thumb_func
OS_MemClr:
.Lfunc_begin26:
	.loc	2 1135 0                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1135:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 8
	mov	r2, r1
	str	r0, [sp, #4]
	strh.w	r1, [sp, #2]
.Ltmp217:
	.loc	2 1136 5 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:1136:5
	b	.LBB26_1
.LBB26_1:                               @ =>This Inner Loop Header: Depth=1
	.loc	2 1136 12 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1136:12
	ldrh.w	r0, [sp, #2]
	.loc	2 1136 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1136:5
	cmp	r0, #1
	blt	.LBB26_3
	b	.LBB26_2
.LBB26_2:                               @   in Loop: Header=BB26_1 Depth=1
.Ltmp218:
	.loc	2 1137 15 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1137:15
	ldr	r0, [sp, #4]
	adds	r1, r0, #1
	str	r1, [sp, #4]
	movs	r1, #0
	.loc	2 1137 18 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1137:18
	strb	r1, [r0]
	.loc	2 1138 13 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1138:13
	ldrh.w	r0, [sp, #2]
	subs	r0, #1
	strh.w	r0, [sp, #2]
.Ltmp219:
	.loc	2 1136 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1136:5
	b	.LBB26_1
.LBB26_3:
	.loc	2 1140 1                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1140:1
	add	sp, #8
	bx	lr
.Ltmp220:
.Lfunc_end26:
	.size	OS_MemClr, .Lfunc_end26-OS_MemClr
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_MemCopy,"ax",%progbits
	.hidden	OS_MemCopy                      @ -- Begin function OS_MemCopy
	.globl	OS_MemCopy
	.p2align	2
	.type	OS_MemCopy,%function
	.code	16                              @ @OS_MemCopy
	.thumb_func
OS_MemCopy:
.Lfunc_begin27:
	.loc	2 1167 0                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1167:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#12
	sub	sp, #12
	.cfi_def_cfa_offset 12
	mov	r3, r2
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	strh.w	r2, [sp, #2]
.Ltmp221:
	.loc	2 1168 5 prologue_end           @ ../Micrium/Software/uCOS-II/Source/os_core.c:1168:5
	b	.LBB27_1
.LBB27_1:                               @ =>This Inner Loop Header: Depth=1
	.loc	2 1168 12 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1168:12
	ldrh.w	r0, [sp, #2]
	.loc	2 1168 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1168:5
	cmp	r0, #1
	blt	.LBB27_3
	b	.LBB27_2
.LBB27_2:                               @   in Loop: Header=BB27_1 Depth=1
.Ltmp222:
	.loc	2 1169 25 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1169:25
	ldr	r0, [sp, #4]
	adds	r1, r0, #1
	str	r1, [sp, #4]
	.loc	2 1169 20 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1169:20
	ldrb	r0, [r0]
	.loc	2 1169 15                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1169:15
	ldr	r1, [sp, #8]
	adds	r2, r1, #1
	str	r2, [sp, #8]
	.loc	2 1169 18                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1169:18
	strb	r0, [r1]
	.loc	2 1170 13 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1170:13
	ldrh.w	r0, [sp, #2]
	subs	r0, #1
	strh.w	r0, [sp, #2]
.Ltmp223:
	.loc	2 1168 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1168:5
	b	.LBB27_1
.LBB27_3:
	.loc	2 1172 1                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1172:1
	add	sp, #12
	bx	lr
.Ltmp224:
.Lfunc_end27:
	.size	OS_MemCopy, .Lfunc_end27-OS_MemCopy
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_TaskIdle,"ax",%progbits
	.hidden	OS_TaskIdle                     @ -- Begin function OS_TaskIdle
	.globl	OS_TaskIdle
	.p2align	2
	.type	OS_TaskIdle,%function
	.code	16                              @ @OS_TaskIdle
	.thumb_func
OS_TaskIdle:
.Lfunc_begin28:
	.loc	2 1349 0                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1349:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	movs	r0, #0
.Ltmp225:
	.loc	2 1351 16 prologue_end          @ ../Micrium/Software/uCOS-II/Source/os_core.c:1351:16
	str	r0, [sp]
	.loc	2 1357 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1357:5
	b	.LBB28_1
.LBB28_1:                               @ =>This Inner Loop Header: Depth=1
.Ltmp226:
	.loc	2 1358 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1358:9
	bl	OS_CPU_SR_Save
	str	r0, [sp]
.Ltmp227:
	.loc	2 1359 18                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1359:18
	movw	r0, :lower16:OSIdleCtr
	movt	r0, :upper16:OSIdleCtr
	ldr	r1, [r0]
	adds	r1, #1
	str	r1, [r0]
.Ltmp228:
	.loc	2 1360 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1360:9
	ldr	r0, [sp]
	bl	OS_CPU_SR_Restore
.Ltmp229:
	.loc	2 1361 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1361:9
	bl	OSTaskIdleHook
.Ltmp230:
	.loc	2 1357 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1357:5
	b	.LBB28_1
.Ltmp231:
.Lfunc_end28:
	.size	OS_TaskIdle, .Lfunc_end28-OS_TaskIdle
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_TaskStat,"ax",%progbits
	.hidden	OS_TaskStat                     @ -- Begin function OS_TaskStat
	.globl	OS_TaskStat
	.p2align	2
	.type	OS_TaskStat,%function
	.code	16                              @ @OS_TaskStat
	.thumb_func
OS_TaskStat:
.Lfunc_begin29:
	.loc	2 1391 0                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1391:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#24
	sub	sp, #24
	.cfi_def_cfa_offset 32
	str	r0, [sp, #20]
	movs	r0, #0
.Ltmp232:
	.loc	2 1396 16 prologue_end          @ ../Micrium/Software/uCOS-II/Source/os_core.c:1396:16
	str	r0, [sp, #4]
	.loc	2 1402 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1402:5
	b	.LBB29_1
.LBB29_1:                               @ =>This Inner Loop Header: Depth=1
	.loc	2 1402 12 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1402:12
	movw	r0, :lower16:OSStatRdy
	movt	r0, :upper16:OSStatRdy
	ldrb	r0, [r0]
	.loc	2 1402 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1402:5
	cmp	r0, #0
	bne	.LBB29_3
	b	.LBB29_2
.LBB29_2:                               @   in Loop: Header=BB29_1 Depth=1
	.loc	2 0 5                           @ ../Micrium/Software/uCOS-II/Source/os_core.c:0:5
	movs	r0, #20
.Ltmp233:
	.loc	2 1403 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1403:9
	bl	OSTimeDly
.Ltmp234:
	.loc	2 1402 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1402:5
	b	.LBB29_1
.LBB29_3:
	.loc	2 1405 11                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1405:11
	movw	r0, :lower16:OSIdleCtrMax
	movt	r0, :upper16:OSIdleCtrMax
	ldr	r0, [r0]
	movw	r1, #34079
	movt	r1, #20971
	.loc	2 1405 24 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1405:24
	umull	r0, r1, r0, r1
	lsrs	r1, r1, #5
	.loc	2 1405 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1405:9
	str	r1, [sp, #12]
	.loc	2 1406 5 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1406:5
	b	.LBB29_4
.LBB29_4:                               @ =>This Inner Loop Header: Depth=1
.Ltmp235:
	.loc	2 1407 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1407:9
	bl	OS_CPU_SR_Save
	str	r0, [sp, #4]
.Ltmp236:
	.loc	2 1408 24                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1408:24
	movw	r0, :lower16:OSIdleCtr
	movt	r0, :upper16:OSIdleCtr
	ldr	r1, [r0]
	.loc	2 1408 22 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1408:22
	movw	r2, :lower16:OSIdleCtrRun
	movt	r2, :upper16:OSIdleCtrRun
	str	r1, [r2]
	.loc	2 1409 24 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1409:24
	ldr	r1, [r0]
	.loc	2 1409 22 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1409:22
	str	r1, [sp, #16]
	movs	r1, #0
	.loc	2 1410 22 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1410:22
	str	r1, [r0]
.Ltmp237:
	.loc	2 1411 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1411:9
	ldr	r0, [sp, #4]
	bl	OS_CPU_SR_Restore
.Ltmp238:
	.loc	2 1412 13                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1412:13
	ldr	r0, [sp, #12]
.Ltmp239:
	.loc	2 1412 13 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1412:13
	cmp	r0, #0
	beq	.LBB29_9
	b	.LBB29_5
.LBB29_5:                               @   in Loop: Header=BB29_4 Depth=1
.Ltmp240:
	.loc	2 1413 36 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1413:36
	ldr	r0, [sp, #16]
	.loc	2 1413 42 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1413:42
	ldr	r1, [sp, #12]
	.loc	2 1413 40                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1413:40
	udiv	r0, r0, r1
	.loc	2 1413 34                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1413:34
	rsb.w	r0, r0, #100
	.loc	2 1413 19                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1413:19
	strb.w	r0, [sp, #11]
.Ltmp241:
	.loc	2 1414 17 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1414:17
	ldrsb.w	r0, [sp, #11]
.Ltmp242:
	.loc	2 1414 17 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1414:17
	cmp	r0, #0
	bmi	.LBB29_7
	b	.LBB29_6
.LBB29_6:                               @   in Loop: Header=BB29_4 Depth=1
.Ltmp243:
	.loc	2 1415 30 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1415:30
	ldrb.w	r0, [sp, #11]
	.loc	2 1415 28 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1415:28
	movw	r1, :lower16:OSCPUUsage
	movt	r1, :upper16:OSCPUUsage
	strb	r0, [r1]
	.loc	2 1416 13 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1416:13
	b	.LBB29_8
.Ltmp244:
.LBB29_7:                               @   in Loop: Header=BB29_4 Depth=1
	.loc	2 1417 28                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1417:28
	movw	r0, :lower16:OSCPUUsage
	movt	r0, :upper16:OSCPUUsage
	movs	r1, #0
	strb	r1, [r0]
	b	.LBB29_8
.Ltmp245:
.LBB29_8:                               @   in Loop: Header=BB29_4 Depth=1
	.loc	2 1419 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1419:9
	b	.LBB29_10
.Ltmp246:
.LBB29_9:                               @   in Loop: Header=BB29_4 Depth=1
	.loc	2 1420 24                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1420:24
	movw	r0, :lower16:OSCPUUsage
	movt	r0, :upper16:OSCPUUsage
	movs	r1, #0
	strb	r1, [r0]
	.loc	2 1421 26                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1421:26
	movw	r0, :lower16:OSIdleCtrMax
	movt	r0, :upper16:OSIdleCtrMax
	ldr	r0, [r0]
	movw	r1, #34079
	movt	r1, #20971
	.loc	2 1421 39 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1421:39
	umull	r0, r1, r0, r1
	lsrs	r1, r1, #5
	.loc	2 1421 24                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1421:24
	str	r1, [sp, #12]
	b	.LBB29_10
.Ltmp247:
.LBB29_10:                              @   in Loop: Header=BB29_4 Depth=1
	.loc	2 1423 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1423:9
	bl	OSTaskStatHook
	.loc	2 1425 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1425:9
	bl	OS_TaskStatStkChk
	movs	r0, #10
	.loc	2 1427 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1427:9
	bl	OSTimeDly
.Ltmp248:
	.loc	2 1406 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1406:5
	b	.LBB29_4
.Ltmp249:
.Lfunc_end29:
	.size	OS_TaskStat, .Lfunc_end29-OS_TaskStat
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_TaskStatStkChk,"ax",%progbits
	.hidden	OS_TaskStatStkChk               @ -- Begin function OS_TaskStatStkChk
	.globl	OS_TaskStatStkChk
	.p2align	2
	.type	OS_TaskStatStkChk,%function
	.code	16                              @ @OS_TaskStatStkChk
	.thumb_func
OS_TaskStatStkChk:
.Lfunc_begin30:
	.loc	2 1446 0                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1446:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#16
	sub	sp, #16
	.cfi_def_cfa_offset 24
	movs	r0, #0
.Ltmp250:
	.loc	2 1453 15 prologue_end          @ ../Micrium/Software/uCOS-II/Source/os_core.c:1453:15
	strb.w	r0, [sp, #2]
	.loc	2 1453 10 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1453:10
	b	.LBB30_1
.LBB30_1:                               @ =>This Inner Loop Header: Depth=1
.Ltmp251:
	.loc	2 1453 20                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1453:20
	ldrb.w	r0, [sp, #2]
.Ltmp252:
	.loc	2 1453 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1453:5
	cmp	r0, #63
	bgt	.LBB30_10
	b	.LBB30_2
.LBB30_2:                               @   in Loop: Header=BB30_1 Depth=1
.Ltmp253:
	.loc	2 1454 28 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1454:28
	ldrb.w	r0, [sp, #2]
	add	r1, sp, #4
	.loc	2 1454 15 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1454:15
	bl	OSTaskStkChk
	.loc	2 1454 13                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1454:13
	strb.w	r0, [sp, #3]
.Ltmp254:
	.loc	2 1455 13 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1455:13
	ldrb.w	r0, [sp, #3]
.Ltmp255:
	.loc	2 1455 13 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1455:13
	cmp	r0, #0
	bne	.LBB30_8
	b	.LBB30_3
.LBB30_3:                               @   in Loop: Header=BB30_1 Depth=1
.Ltmp256:
	.loc	2 1456 33 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1456:33
	ldrb.w	r0, [sp, #2]
	.loc	2 1456 20 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1456:20
	movw	r1, :lower16:OSTCBPrioTbl
	movt	r1, :upper16:OSTCBPrioTbl
	ldr.w	r0, [r1, r0, lsl #2]
	.loc	2 1456 18                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1456:18
	str	r0, [sp, #12]
.Ltmp257:
	.loc	2 1457 17 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1457:17
	ldr	r0, [sp, #12]
.Ltmp258:
	.loc	2 1457 17 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1457:17
	cmp	r0, #0
	beq	.LBB30_7
	b	.LBB30_4
.LBB30_4:                               @   in Loop: Header=BB30_1 Depth=1
.Ltmp259:
	.loc	2 1458 21 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1458:21
	ldr	r0, [sp, #12]
.Ltmp260:
	.loc	2 1458 21 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1458:21
	cmp	r0, #1
	beq	.LBB30_6
	b	.LBB30_5
.LBB30_5:                               @   in Loop: Header=BB30_1 Depth=1
.Ltmp261:
	.loc	2 1461 42 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1461:42
	ldr	r0, [sp, #12]
	.loc	2 1461 48 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1461:48
	ldr	r1, [r0, #8]
	.loc	2 1461 71                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1461:71
	ldr	r2, [r0, #12]
	.loc	2 1461 63                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1461:63
	add.w	r1, r1, r2, lsl #2
	.loc	2 1461 40                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1461:40
	str	r1, [r0, #64]
	.loc	2 1465 51 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1465:51
	ldr	r0, [sp, #8]
	.loc	2 1465 21 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1465:21
	ldr	r1, [sp, #12]
	.loc	2 1465 40                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1465:40
	str	r0, [r1, #68]
	.loc	2 1467 17 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1467:17
	b	.LBB30_6
.Ltmp262:
.LBB30_6:                               @   in Loop: Header=BB30_1 Depth=1
	.loc	2 1468 13                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1468:13
	b	.LBB30_7
.Ltmp263:
.LBB30_7:                               @   in Loop: Header=BB30_1 Depth=1
	.loc	2 1469 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1469:9
	b	.LBB30_8
.Ltmp264:
.LBB30_8:                               @   in Loop: Header=BB30_1 Depth=1
	.loc	2 1470 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1470:5
	b	.LBB30_9
.Ltmp265:
.LBB30_9:                               @   in Loop: Header=BB30_1 Depth=1
	.loc	2 1453 51                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1453:51
	ldrb.w	r0, [sp, #2]
	adds	r0, #1
	strb.w	r0, [sp, #2]
	.loc	2 1453 5 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1453:5
	b	.LBB30_1
.Ltmp266:
.LBB30_10:
	.loc	2 1471 1 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1471:1
	add	sp, #16
	pop	{r7, pc}
.Ltmp267:
.Lfunc_end30:
	.size	OS_TaskStatStkChk, .Lfunc_end30-OS_TaskStatStkChk
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.OS_TCBInit,"ax",%progbits
	.hidden	OS_TCBInit                      @ -- Begin function OS_TCBInit
	.globl	OS_TCBInit
	.p2align	2
	.type	OS_TCBInit,%function
	.code	16                              @ @OS_TCBInit
	.thumb_func
OS_TCBInit:
.Lfunc_begin31:
	.loc	2 1518 0                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1518:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r6, -8
	.cfi_offset r5, -12
	.cfi_offset r4, -16
	.pad	#48
	sub	sp, #48
	.cfi_def_cfa_offset 64
	ldr.w	r12, [sp, #72]
	ldr.w	lr, [sp, #68]
	ldr	r4, [sp, #64]
	mov	r5, r3
	mov	r6, r0
	strb.w	r0, [sp, #46]
	str	r1, [sp, #40]
	str	r2, [sp, #36]
	strh.w	r3, [sp, #34]
	strh.w	r12, [sp, #32]
	movs	r0, #0
.Ltmp268:
	.loc	2 1521 16 prologue_end          @ ../Micrium/Software/uCOS-II/Source/os_core.c:1521:16
	str	r0, [sp, #24]
.Ltmp269:
	.loc	2 1526 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1526:5
	str.w	lr, [sp, #20]                   @ 4-byte Spill
	str	r4, [sp, #16]                   @ 4-byte Spill
	str	r5, [sp, #12]                   @ 4-byte Spill
	str	r6, [sp, #8]                    @ 4-byte Spill
	bl	OS_CPU_SR_Save
	str	r0, [sp, #24]
.Ltmp270:
	.loc	2 1527 12                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1527:12
	movw	r0, :lower16:OSTCBFreeList
	movt	r0, :upper16:OSTCBFreeList
	ldr	r0, [r0]
	.loc	2 1527 10 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1527:10
	str	r0, [sp, #28]
.Ltmp271:
	.loc	2 1528 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1528:9
	ldr	r0, [sp, #28]
.Ltmp272:
	.loc	2 1528 9 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1528:9
	cmp	r0, #0
	beq.w	.LBB31_4
	b	.LBB31_1
.LBB31_1:
.Ltmp273:
	.loc	2 1529 32 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1529:32
	ldr	r0, [sp, #28]
	.loc	2 1529 38 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1529:38
	ldr	r0, [r0, #20]
	.loc	2 1529 30                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1529:30
	movw	r1, :lower16:OSTCBFreeList
	movt	r1, :upper16:OSTCBFreeList
	str	r0, [r1]
.Ltmp274:
	.loc	2 1530 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1530:9
	ldr	r0, [sp, #24]
	bl	OS_CPU_SR_Restore
.Ltmp275:
	.loc	2 1531 32                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1531:32
	ldr	r0, [sp, #40]
	.loc	2 1531 9 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1531:9
	ldr	r1, [sp, #28]
	.loc	2 1531 30                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1531:30
	str	r0, [r1]
	.loc	2 1532 32 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1532:32
	ldrb.w	r0, [sp, #46]
	.loc	2 1532 9 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1532:9
	ldr	r1, [sp, #28]
	.loc	2 1532 30                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1532:30
	strb.w	r0, [r1, #46]
	.loc	2 1533 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1533:9
	ldr	r0, [sp, #28]
	movs	r1, #0
	.loc	2 1533 30 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1533:30
	strb.w	r1, [r0, #44]
	.loc	2 1534 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1534:9
	ldr	r0, [sp, #28]
	.loc	2 1534 30 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1534:30
	strb.w	r1, [r0, #45]
	.loc	2 1535 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1535:9
	ldr	r0, [sp, #28]
	.loc	2 1535 30 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1535:30
	strh	r1, [r0, #42]
	.loc	2 1538 32 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1538:32
	ldr	r0, [sp, #68]
	.loc	2 1538 9 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1538:9
	ldr	r2, [sp, #28]
	.loc	2 1538 30                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1538:30
	str	r0, [r2, #4]
	.loc	2 1539 32 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1539:32
	ldr	r0, [sp, #64]
	.loc	2 1539 9 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1539:9
	ldr	r2, [sp, #28]
	.loc	2 1539 30                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1539:30
	str	r0, [r2, #12]
	.loc	2 1540 32 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1540:32
	ldr	r0, [sp, #36]
	.loc	2 1540 9 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1540:9
	ldr	r2, [sp, #28]
	.loc	2 1540 30                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1540:30
	str	r0, [r2, #8]
	.loc	2 1541 32 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1541:32
	ldrh.w	r0, [sp, #32]
	.loc	2 1541 9 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1541:9
	ldr	r2, [sp, #28]
	.loc	2 1541 30                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1541:30
	strh	r0, [r2, #16]
	.loc	2 1542 32 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1542:32
	ldrh.w	r0, [sp, #34]
	.loc	2 1542 9 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1542:9
	ldr	r2, [sp, #28]
	.loc	2 1542 30                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1542:30
	strh	r0, [r2, #18]
	.loc	2 1552 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1552:9
	ldr	r0, [sp, #28]
	.loc	2 1552 30 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1552:30
	strb.w	r1, [r0, #51]
	.loc	2 1556 40 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1556:40
	ldrb.w	r0, [sp, #46]
	.loc	2 1556 45 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1556:45
	lsrs	r0, r0, #3
	.loc	2 1556 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1556:9
	ldr	r2, [sp, #28]
	.loc	2 1556 30                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1556:30
	strb.w	r0, [r2, #48]
	.loc	2 1557 45 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1557:45
	ldr	r0, [sp, #28]
	.loc	2 1557 51 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1557:51
	ldrb.w	r2, [r0, #48]
	movs	r3, #1
	.loc	2 1557 42                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1557:42
	lsl.w	r2, r3, r2
	.loc	2 1557 30                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1557:30
	strb.w	r2, [r0, #50]
	.loc	2 1558 40 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1558:40
	ldrb.w	r0, [sp, #46]
	.loc	2 1558 45 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1558:45
	and	r0, r0, #7
	.loc	2 1558 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1558:9
	ldr	r2, [sp, #28]
	.loc	2 1558 30                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1558:30
	strb.w	r0, [r2, #47]
	.loc	2 1559 45 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1559:45
	ldr	r0, [sp, #28]
	.loc	2 1559 51 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1559:51
	ldrb.w	r2, [r0, #47]
	.loc	2 1559 42                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1559:42
	lsl.w	r2, r3, r2
	.loc	2 1559 30                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1559:30
	strb.w	r2, [r0, #49]
	.loc	2 1568 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1568:9
	ldr	r0, [sp, #28]
	.loc	2 1568 30 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1568:30
	str	r1, [r0, #28]
	.loc	2 1572 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1572:9
	ldr	r0, [sp, #28]
	.loc	2 1572 30 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1572:30
	str	r1, [r0, #36]
	.loc	2 1576 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1576:9
	ldr	r0, [sp, #28]
	.loc	2 1576 30 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1576:30
	str	r1, [r0, #32]
	.loc	2 1580 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1580:9
	ldr	r0, [sp, #28]
	.loc	2 1580 32 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1580:32
	str	r1, [r0, #52]
	.loc	2 1581 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1581:9
	ldr	r0, [sp, #28]
	.loc	2 1581 32 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1581:32
	str	r1, [r0, #60]
	.loc	2 1582 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1582:9
	ldr	r0, [sp, #28]
	.loc	2 1582 32 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1582:32
	str	r1, [r0, #56]
	.loc	2 1583 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1583:9
	ldr	r0, [sp, #28]
	.loc	2 1583 32 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1583:32
	str	r1, [r0, #64]
	.loc	2 1584 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1584:9
	ldr	r0, [sp, #28]
	.loc	2 1584 32 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1584:32
	str	r1, [r0, #68]
	.loc	2 1588 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1588:9
	ldr	r0, [sp, #28]
	movs	r2, #63
	.loc	2 1588 32 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1588:32
	strb.w	r2, [r0, #72]
	.loc	2 1589 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1589:9
	ldr	r0, [sp, #28]
	.loc	2 1589 32 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1589:32
	strb.w	r1, [r0, #73]
	.loc	2 1593 23 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1593:23
	ldr	r0, [sp, #28]
	.loc	2 1593 9 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1593:9
	str	r1, [sp, #4]                    @ 4-byte Spill
	bl	OSTCBInitHook
	.loc	2 1596 26 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1596:26
	ldr	r0, [sp, #28]
	.loc	2 1596 9 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1596:9
	bl	OSTaskCreateHook
.Ltmp276:
	.loc	2 1598 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1598:9
	bl	OS_CPU_SR_Save
	str	r0, [sp, #24]
.Ltmp277:
	.loc	2 1599 30                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1599:30
	ldr	r0, [sp, #28]
	.loc	2 1599 22 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1599:22
	ldrb.w	r1, [sp, #46]
	.loc	2 1599 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1599:9
	movw	r2, :lower16:OSTCBPrioTbl
	movt	r2, :upper16:OSTCBPrioTbl
	.loc	2 1599 28                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1599:28
	str.w	r0, [r2, r1, lsl #2]
	.loc	2 1600 30 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1600:30
	movw	r0, :lower16:OSTCBList
	movt	r0, :upper16:OSTCBList
	ldr	r1, [r0]
	.loc	2 1600 9 is_stmt 0              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1600:9
	ldr	r2, [sp, #28]
	.loc	2 1600 28                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1600:28
	str	r1, [r2, #20]
	.loc	2 1601 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1601:9
	ldr	r1, [sp, #28]
	.loc	2 1601 28 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1601:28
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	str	r2, [r1, #24]
.Ltmp278:
	.loc	2 1602 13 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1602:13
	ldr	r0, [r0]
.Ltmp279:
	.loc	2 1602 13 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1602:13
	cmp	r0, #0
	beq	.LBB31_3
	b	.LBB31_2
.LBB31_2:
.Ltmp280:
	.loc	2 1603 36 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1603:36
	ldr	r0, [sp, #28]
	.loc	2 1603 13 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1603:13
	movw	r1, :lower16:OSTCBList
	movt	r1, :upper16:OSTCBList
	ldr	r1, [r1]
	.loc	2 1603 34                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1603:34
	str	r0, [r1, #24]
	.loc	2 1604 9 is_stmt 1              @ ../Micrium/Software/uCOS-II/Source/os_core.c:1604:9
	b	.LBB31_3
.Ltmp281:
.LBB31_3:
	.loc	2 1605 35                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1605:35
	ldr	r0, [sp, #28]
	.loc	2 1605 33 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1605:33
	movw	r1, :lower16:OSTCBList
	movt	r1, :upper16:OSTCBList
	str	r0, [r1]
	.loc	2 1606 35 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1606:35
	ldr	r0, [sp, #28]
	ldrb.w	r0, [r0, #50]
	.loc	2 1606 32 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1606:32
	movw	r1, :lower16:OSRdyGrp
	movt	r1, :upper16:OSRdyGrp
	ldrb	r2, [r1]
	orrs	r0, r2
	strb	r0, [r1]
	.loc	2 1607 35 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1607:35
	ldr	r0, [sp, #28]
	.loc	2 1607 24 is_stmt 0             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1607:24
	ldrb.w	r1, [r0, #48]
	.loc	2 1607 35                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1607:35
	ldrb.w	r0, [r0, #49]
	.loc	2 1607 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1607:9
	movw	r2, :lower16:OSRdyTbl
	movt	r2, :upper16:OSRdyTbl
	.loc	2 1607 32                       @ ../Micrium/Software/uCOS-II/Source/os_core.c:1607:32
	ldrb	r3, [r2, r1]
	orrs	r0, r3
	strb	r0, [r2, r1]
	.loc	2 1608 18 is_stmt 1             @ ../Micrium/Software/uCOS-II/Source/os_core.c:1608:18
	movw	r0, :lower16:OSTaskCtr
	movt	r0, :upper16:OSTaskCtr
	ldrb	r1, [r0]
	adds	r1, #1
	strb	r1, [r0]
.Ltmp282:
	.loc	2 1609 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1609:9
	ldr	r0, [sp, #24]
	bl	OS_CPU_SR_Restore
	movs	r0, #0
.Ltmp283:
	.loc	2 1610 9                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1610:9
	strb.w	r0, [sp, #47]
	b	.LBB31_5
.Ltmp284:
.LBB31_4:
	.loc	2 1612 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1612:5
	ldr	r0, [sp, #24]
	bl	OS_CPU_SR_Restore
	movs	r0, #70
.Ltmp285:
	.loc	2 1613 5                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1613:5
	strb.w	r0, [sp, #47]
	b	.LBB31_5
.LBB31_5:
	.loc	2 1614 1                        @ ../Micrium/Software/uCOS-II/Source/os_core.c:1614:1
	ldrb.w	r0, [sp, #47]
	add	sp, #48
	pop	{r4, r5, r6, pc}
.Ltmp286:
.Lfunc_end31:
	.size	OS_TCBInit, .Lfunc_end31-OS_TCBInit
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.hidden	OSUnMapTbl                      @ @OSUnMapTbl
	.type	OSUnMapTbl,%object
	.section	.rodata.OSUnMapTbl,"a",%progbits
	.globl	OSUnMapTbl
OSUnMapTbl:
	.asciz	"\000\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\004\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\005\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\004\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\006\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\004\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\005\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\004\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\007\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\004\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\005\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\004\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\006\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\004\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\005\000\001\000\002\000\001\000\003\000\001\000\002\000\001\000\004\000\001\000\002\000\001\000\003\000\001\000\002\000\001"
	.size	OSUnMapTbl, 256

	.hidden	OSRunning                       @ @OSRunning
	.type	OSRunning,%object
	.section	.bss.OSRunning,"aw",%nobits
	.globl	OSRunning
OSRunning:
	.byte	0                               @ 0x0
	.size	OSRunning, 1

	.hidden	OSIntNesting                    @ @OSIntNesting
	.type	OSIntNesting,%object
	.section	.bss.OSIntNesting,"aw",%nobits
	.globl	OSIntNesting
OSIntNesting:
	.byte	0                               @ 0x0
	.size	OSIntNesting, 1

	.hidden	OSLockNesting                   @ @OSLockNesting
	.type	OSLockNesting,%object
	.section	.bss.OSLockNesting,"aw",%nobits
	.globl	OSLockNesting
OSLockNesting:
	.byte	0                               @ 0x0
	.size	OSLockNesting, 1

	.hidden	OSPrioHighRdy                   @ @OSPrioHighRdy
	.type	OSPrioHighRdy,%object
	.section	.bss.OSPrioHighRdy,"aw",%nobits
	.globl	OSPrioHighRdy
OSPrioHighRdy:
	.byte	0                               @ 0x0
	.size	OSPrioHighRdy, 1

	.hidden	OSPrioCur                       @ @OSPrioCur
	.type	OSPrioCur,%object
	.section	.bss.OSPrioCur,"aw",%nobits
	.globl	OSPrioCur
OSPrioCur:
	.byte	0                               @ 0x0
	.size	OSPrioCur, 1

	.hidden	OSTCBPrioTbl                    @ @OSTCBPrioTbl
	.type	OSTCBPrioTbl,%object
	.section	.bss.OSTCBPrioTbl,"aw",%nobits
	.globl	OSTCBPrioTbl
	.p2align	2
OSTCBPrioTbl:
	.zero	256
	.size	OSTCBPrioTbl, 256

	.hidden	OSTCBHighRdy                    @ @OSTCBHighRdy
	.type	OSTCBHighRdy,%object
	.section	.bss.OSTCBHighRdy,"aw",%nobits
	.globl	OSTCBHighRdy
	.p2align	2
OSTCBHighRdy:
	.long	0
	.size	OSTCBHighRdy, 4

	.hidden	OSCtxSwCtr                      @ @OSCtxSwCtr
	.type	OSCtxSwCtr,%object
	.section	.bss.OSCtxSwCtr,"aw",%nobits
	.globl	OSCtxSwCtr
	.p2align	2
OSCtxSwCtr:
	.long	0                               @ 0x0
	.size	OSCtxSwCtr, 4

	.hidden	OSTCBCur                        @ @OSTCBCur
	.type	OSTCBCur,%object
	.section	.bss.OSTCBCur,"aw",%nobits
	.globl	OSTCBCur
	.p2align	2
OSTCBCur:
	.long	0
	.size	OSTCBCur, 4

	.hidden	OSIdleCtr                       @ @OSIdleCtr
	.type	OSIdleCtr,%object
	.section	.bss.OSIdleCtr,"aw",%nobits
	.globl	OSIdleCtr
	.p2align	2
OSIdleCtr:
	.long	0                               @ 0x0
	.size	OSIdleCtr, 4

	.hidden	OSIdleCtrMax                    @ @OSIdleCtrMax
	.type	OSIdleCtrMax,%object
	.section	.bss.OSIdleCtrMax,"aw",%nobits
	.globl	OSIdleCtrMax
	.p2align	2
OSIdleCtrMax:
	.long	0                               @ 0x0
	.size	OSIdleCtrMax, 4

	.hidden	OSStatRdy                       @ @OSStatRdy
	.type	OSStatRdy,%object
	.section	.bss.OSStatRdy,"aw",%nobits
	.globl	OSStatRdy
OSStatRdy:
	.byte	0                               @ 0x0
	.size	OSStatRdy, 1

	.hidden	OSTime                          @ @OSTime
	.type	OSTime,%object
	.section	.bss.OSTime,"aw",%nobits
	.globl	OSTime
	.p2align	2
OSTime:
	.long	0                               @ 0x0
	.size	OSTime, 4

	.hidden	OSTickStepState                 @ @OSTickStepState
	.type	OSTickStepState,%object
	.section	.bss.OSTickStepState,"aw",%nobits
	.globl	OSTickStepState
OSTickStepState:
	.byte	0                               @ 0x0
	.size	OSTickStepState, 1

	.hidden	OSTCBList                       @ @OSTCBList
	.type	OSTCBList,%object
	.section	.bss.OSTCBList,"aw",%nobits
	.globl	OSTCBList
	.p2align	2
OSTCBList:
	.long	0
	.size	OSTCBList, 4

	.hidden	OSRdyGrp                        @ @OSRdyGrp
	.type	OSRdyGrp,%object
	.section	.bss.OSRdyGrp,"aw",%nobits
	.globl	OSRdyGrp
OSRdyGrp:
	.byte	0                               @ 0x0
	.size	OSRdyGrp, 1

	.hidden	OSRdyTbl                        @ @OSRdyTbl
	.type	OSRdyTbl,%object
	.section	.bss.OSRdyTbl,"aw",%nobits
	.globl	OSRdyTbl
OSRdyTbl:
	.zero	8
	.size	OSRdyTbl, 8

	.hidden	OSIdleCtrRun                    @ @OSIdleCtrRun
	.type	OSIdleCtrRun,%object
	.section	.bss.OSIdleCtrRun,"aw",%nobits
	.globl	OSIdleCtrRun
	.p2align	2
OSIdleCtrRun:
	.long	0                               @ 0x0
	.size	OSIdleCtrRun, 4

	.hidden	OSCPUUsage                      @ @OSCPUUsage
	.type	OSCPUUsage,%object
	.section	.bss.OSCPUUsage,"aw",%nobits
	.globl	OSCPUUsage
OSCPUUsage:
	.byte	0                               @ 0x0
	.size	OSCPUUsage, 1

	.hidden	OSTCBFreeList                   @ @OSTCBFreeList
	.type	OSTCBFreeList,%object
	.section	.bss.OSTCBFreeList,"aw",%nobits
	.globl	OSTCBFreeList
	.p2align	2
OSTCBFreeList:
	.long	0
	.size	OSTCBFreeList, 4

	.hidden	OSTaskCtr                       @ @OSTaskCtr
	.type	OSTaskCtr,%object
	.section	.bss.OSTaskCtr,"aw",%nobits
	.globl	OSTaskCtr
OSTaskCtr:
	.byte	0                               @ 0x0
	.size	OSTaskCtr, 1

	.hidden	OSEventFreeList                 @ @OSEventFreeList
	.type	OSEventFreeList,%object
	.section	.bss.OSEventFreeList,"aw",%nobits
	.globl	OSEventFreeList
	.p2align	2
OSEventFreeList:
	.long	0
	.size	OSEventFreeList, 4

	.hidden	OSEventTbl                      @ @OSEventTbl
	.type	OSEventTbl,%object
	.section	.bss.OSEventTbl,"aw",%nobits
	.globl	OSEventTbl
	.p2align	2
OSEventTbl:
	.zero	360
	.size	OSEventTbl, 360

	.hidden	OSFlagTbl                       @ @OSFlagTbl
	.type	OSFlagTbl,%object
	.section	.bss.OSFlagTbl,"aw",%nobits
	.globl	OSFlagTbl
	.p2align	2
OSFlagTbl:
	.zero	140
	.size	OSFlagTbl, 140

	.hidden	OSFlagFreeList                  @ @OSFlagFreeList
	.type	OSFlagFreeList,%object
	.section	.bss.OSFlagFreeList,"aw",%nobits
	.globl	OSFlagFreeList
	.p2align	2
OSFlagFreeList:
	.long	0
	.size	OSFlagFreeList, 4

	.hidden	OSTaskStatStk                   @ @OSTaskStatStk
	.type	OSTaskStatStk,%object
	.section	.bss.OSTaskStatStk,"aw",%nobits
	.globl	OSTaskStatStk
	.p2align	2
OSTaskStatStk:
	.zero	512
	.size	OSTaskStatStk, 512

	.hidden	OSTaskIdleStk                   @ @OSTaskIdleStk
	.type	OSTaskIdleStk,%object
	.section	.bss.OSTaskIdleStk,"aw",%nobits
	.globl	OSTaskIdleStk
	.p2align	2
OSTaskIdleStk:
	.zero	512
	.size	OSTaskIdleStk, 512

	.hidden	OSTCBTbl                        @ @OSTCBTbl
	.type	OSTCBTbl,%object
	.section	.bss.OSTCBTbl,"aw",%nobits
	.globl	OSTCBTbl
	.p2align	2
OSTCBTbl:
	.zero	1936
	.size	OSTCBTbl, 1936

	.hidden	OSMemFreeList                   @ @OSMemFreeList
	.type	OSMemFreeList,%object
	.section	.bss.OSMemFreeList,"aw",%nobits
	.globl	OSMemFreeList
	.p2align	2
OSMemFreeList:
	.long	0
	.size	OSMemFreeList, 4

	.hidden	OSMemTbl                        @ @OSMemTbl
	.type	OSMemTbl,%object
	.section	.bss.OSMemTbl,"aw",%nobits
	.globl	OSMemTbl
	.p2align	2
OSMemTbl:
	.zero	180
	.size	OSMemTbl, 180

	.hidden	OSQFreeList                     @ @OSQFreeList
	.type	OSQFreeList,%object
	.section	.bss.OSQFreeList,"aw",%nobits
	.globl	OSQFreeList
	.p2align	2
OSQFreeList:
	.long	0
	.size	OSQFreeList, 4

	.hidden	OSQTbl                          @ @OSQTbl
	.type	OSQTbl,%object
	.section	.bss.OSQTbl,"aw",%nobits
	.globl	OSQTbl
	.p2align	2
OSQTbl:
	.zero	96
	.size	OSQTbl, 96

	.type	.L.str,%object                  @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"uC/OS-II Idle"
	.size	.L.str, 14

	.type	.L.str.1,%object                @ @.str.1
.L.str.1:
	.asciz	"uC/OS-II Stat"
	.size	.L.str.1, 14

	.section	.debug_abbrev,"",%progbits
	.byte	1                               @ Abbreviation Code
	.byte	17                              @ DW_TAG_compile_unit
	.byte	1                               @ DW_CHILDREN_yes
	.byte	37                              @ DW_AT_producer
	.byte	14                              @ DW_FORM_strp
	.byte	19                              @ DW_AT_language
	.byte	5                               @ DW_FORM_data2
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	16                              @ DW_AT_stmt_list
	.byte	6                               @ DW_FORM_data4
	.byte	27                              @ DW_AT_comp_dir
	.byte	14                              @ DW_FORM_strp
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	85                              @ DW_AT_ranges
	.byte	6                               @ DW_FORM_data4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	2                               @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	12                              @ DW_FORM_flag
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	2                               @ DW_AT_location
	.byte	10                              @ DW_FORM_block1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	3                               @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	4                               @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	5                               @ DW_FORM_data2
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	5                               @ Abbreviation Code
	.byte	38                              @ DW_TAG_const_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	6                               @ Abbreviation Code
	.byte	22                              @ DW_TAG_typedef
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	7                               @ Abbreviation Code
	.byte	36                              @ DW_TAG_base_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	62                              @ DW_AT_encoding
	.byte	11                              @ DW_FORM_data1
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	8                               @ Abbreviation Code
	.byte	36                              @ DW_TAG_base_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	62                              @ DW_AT_encoding
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	9                               @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	12                              @ DW_FORM_flag
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	2                               @ DW_AT_location
	.byte	10                              @ DW_FORM_block1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	10                              @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	11                              @ Abbreviation Code
	.byte	22                              @ DW_TAG_typedef
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	12                              @ Abbreviation Code
	.byte	19                              @ DW_TAG_structure_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	13                              @ Abbreviation Code
	.byte	13                              @ DW_TAG_member
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	56                              @ DW_AT_data_member_location
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	14                              @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	15                              @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	16                              @ Abbreviation Code
	.byte	53                              @ DW_TAG_volatile_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	17                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	1                               @ DW_FORM_addr
	.byte	64                              @ DW_AT_frame_base
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	39                              @ DW_AT_prototyped
	.byte	12                              @ DW_FORM_flag
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	12                              @ DW_FORM_flag
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	18                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	19                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	20                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	1                               @ DW_FORM_addr
	.byte	64                              @ DW_AT_frame_base
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	39                              @ DW_AT_prototyped
	.byte	12                              @ DW_FORM_flag
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	12                              @ DW_FORM_flag
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	21                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	22                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	23                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	1                               @ DW_FORM_addr
	.byte	64                              @ DW_AT_frame_base
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	39                              @ DW_AT_prototyped
	.byte	12                              @ DW_FORM_flag
	.byte	63                              @ DW_AT_external
	.byte	12                              @ DW_FORM_flag
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	24                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	0                               @ DW_CHILDREN_no
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	1                               @ DW_FORM_addr
	.byte	64                              @ DW_AT_frame_base
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	39                              @ DW_AT_prototyped
	.byte	12                              @ DW_FORM_flag
	.byte	63                              @ DW_AT_external
	.byte	12                              @ DW_FORM_flag
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	25                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	0                               @ DW_CHILDREN_no
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	1                               @ DW_FORM_addr
	.byte	64                              @ DW_AT_frame_base
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	39                              @ DW_AT_prototyped
	.byte	12                              @ DW_FORM_flag
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	26                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	1                               @ DW_FORM_addr
	.byte	64                              @ DW_AT_frame_base
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	39                              @ DW_AT_prototyped
	.byte	12                              @ DW_FORM_flag
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	27                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	0                               @ DW_CHILDREN_no
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	1                               @ DW_FORM_addr
	.byte	64                              @ DW_AT_frame_base
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	39                              @ DW_AT_prototyped
	.byte	12                              @ DW_FORM_flag
	.byte	63                              @ DW_AT_external
	.byte	12                              @ DW_FORM_flag
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	28                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	1                               @ DW_FORM_addr
	.byte	64                              @ DW_AT_frame_base
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	39                              @ DW_AT_prototyped
	.byte	12                              @ DW_FORM_flag
	.byte	63                              @ DW_AT_external
	.byte	12                              @ DW_FORM_flag
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	29                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	0                               @ DW_CHILDREN_no
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	1                               @ DW_FORM_addr
	.byte	64                              @ DW_AT_frame_base
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	39                              @ DW_AT_prototyped
	.byte	12                              @ DW_FORM_flag
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	12                              @ DW_FORM_flag
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	0                               @ EOM(3)
	.section	.debug_info,"",%progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 @ Length of Unit
.Ldebug_info_start0:
	.short	3                               @ DWARF version number
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	4                               @ Address Size (in bytes)
	.byte	1                               @ Abbrev [1] 0xb:0xe56 DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.long	.Linfo_string1                  @ DW_AT_name
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.long	.Linfo_string2                  @ DW_AT_comp_dir
	.long	0                               @ DW_AT_low_pc
	.long	.Ldebug_ranges0                 @ DW_AT_ranges
	.byte	2                               @ Abbrev [2] 0x26:0x12 DW_TAG_variable
	.long	.Linfo_string3                  @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	2                               @ DW_AT_decl_file
	.byte	30                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSUnMapTbl
	.byte	3                               @ Abbrev [3] 0x38:0xd DW_TAG_array_type
	.long	69                              @ DW_AT_type
	.byte	4                               @ Abbrev [4] 0x3d:0x7 DW_TAG_subrange_type
	.long	92                              @ DW_AT_type
	.short	256                             @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	5                               @ Abbrev [5] 0x45:0x5 DW_TAG_const_type
	.long	74                              @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x4a:0xb DW_TAG_typedef
	.long	85                              @ DW_AT_type
	.long	.Linfo_string5                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	41                              @ DW_AT_decl_line
	.byte	7                               @ Abbrev [7] 0x55:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	8                               @ Abbrev [8] 0x5c:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	9                               @ Abbrev [9] 0x63:0x13 DW_TAG_variable
	.long	.Linfo_string7                  @ DW_AT_name
	.long	118                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	628                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSCtxSwCtr
	.byte	6                               @ Abbrev [6] 0x76:0xb DW_TAG_typedef
	.long	129                             @ DW_AT_type
	.long	.Linfo_string9                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	45                              @ DW_AT_decl_line
	.byte	7                               @ Abbrev [7] 0x81:0x7 DW_TAG_base_type
	.long	.Linfo_string8                  @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0x88:0x13 DW_TAG_variable
	.long	.Linfo_string10                 @ DW_AT_name
	.long	155                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	631                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSEventFreeList
	.byte	10                              @ Abbrev [10] 0x9b:0x5 DW_TAG_pointer_type
	.long	160                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0xa0:0xc DW_TAG_typedef
	.long	172                             @ DW_AT_type
	.long	.Linfo_string20                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.short	329                             @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0xac:0x58 DW_TAG_structure_type
	.long	.Linfo_string19                 @ DW_AT_name
	.byte	36                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.short	314                             @ DW_AT_decl_line
	.byte	13                              @ Abbrev [13] 0xb5:0xd DW_TAG_member
	.long	.Linfo_string11                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	315                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0xc2:0xd DW_TAG_member
	.long	.Linfo_string12                 @ DW_AT_name
	.long	260                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	316                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0xcf:0xd DW_TAG_member
	.long	.Linfo_string13                 @ DW_AT_name
	.long	261                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	317                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0xdc:0xd DW_TAG_member
	.long	.Linfo_string16                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	319                             @ DW_AT_decl_line
	.byte	10                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0xe9:0xd DW_TAG_member
	.long	.Linfo_string17                 @ DW_AT_name
	.long	279                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	320                             @ DW_AT_decl_line
	.byte	11                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0xf6:0xd DW_TAG_member
	.long	.Linfo_string18                 @ DW_AT_name
	.long	291                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	327                             @ DW_AT_decl_line
	.byte	19                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	14                              @ Abbrev [14] 0x104:0x1 DW_TAG_pointer_type
	.byte	6                               @ Abbrev [6] 0x105:0xb DW_TAG_typedef
	.long	272                             @ DW_AT_type
	.long	.Linfo_string15                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	43                              @ DW_AT_decl_line
	.byte	7                               @ Abbrev [7] 0x110:0x7 DW_TAG_base_type
	.long	.Linfo_string14                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x117:0xc DW_TAG_array_type
	.long	74                              @ DW_AT_type
	.byte	15                              @ Abbrev [15] 0x11c:0x6 DW_TAG_subrange_type
	.long	92                              @ DW_AT_type
	.byte	8                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	3                               @ Abbrev [3] 0x123:0xc DW_TAG_array_type
	.long	74                              @ DW_AT_type
	.byte	15                              @ Abbrev [15] 0x128:0x6 DW_TAG_subrange_type
	.long	92                              @ DW_AT_type
	.byte	16                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x12f:0x13 DW_TAG_variable
	.long	.Linfo_string17                 @ DW_AT_name
	.long	322                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	632                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSEventTbl
	.byte	3                               @ Abbrev [3] 0x142:0xc DW_TAG_array_type
	.long	160                             @ DW_AT_type
	.byte	15                              @ Abbrev [15] 0x147:0x6 DW_TAG_subrange_type
	.long	92                              @ DW_AT_type
	.byte	10                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x14e:0x13 DW_TAG_variable
	.long	.Linfo_string21                 @ DW_AT_name
	.long	353                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	636                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSFlagTbl
	.byte	3                               @ Abbrev [3] 0x161:0xc DW_TAG_array_type
	.long	365                             @ DW_AT_type
	.byte	15                              @ Abbrev [15] 0x166:0x6 DW_TAG_subrange_type
	.long	92                              @ DW_AT_type
	.byte	5                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x16d:0xc DW_TAG_typedef
	.long	377                             @ DW_AT_type
	.long	.Linfo_string28                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.short	361                             @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0x179:0x3e DW_TAG_structure_type
	.long	.Linfo_string27                 @ DW_AT_name
	.byte	28                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.short	354                             @ DW_AT_decl_line
	.byte	13                              @ Abbrev [13] 0x182:0xd DW_TAG_member
	.long	.Linfo_string22                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	355                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x18f:0xd DW_TAG_member
	.long	.Linfo_string23                 @ DW_AT_name
	.long	260                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	356                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x19c:0xd DW_TAG_member
	.long	.Linfo_string24                 @ DW_AT_name
	.long	439                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	357                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x1a9:0xd DW_TAG_member
	.long	.Linfo_string26                 @ DW_AT_name
	.long	291                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	359                             @ DW_AT_decl_line
	.byte	10                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x1b7:0xc DW_TAG_typedef
	.long	261                             @ DW_AT_type
	.long	.Linfo_string25                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.short	346                             @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x1c3:0x13 DW_TAG_variable
	.long	.Linfo_string29                 @ DW_AT_name
	.long	470                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	637                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSFlagFreeList
	.byte	10                              @ Abbrev [10] 0x1d6:0x5 DW_TAG_pointer_type
	.long	365                             @ DW_AT_type
	.byte	9                               @ Abbrev [9] 0x1db:0x13 DW_TAG_variable
	.long	.Linfo_string30                 @ DW_AT_name
	.long	494                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	641                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSCPUUsage
	.byte	6                               @ Abbrev [6] 0x1ee:0xb DW_TAG_typedef
	.long	505                             @ DW_AT_type
	.long	.Linfo_string32                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	42                              @ DW_AT_decl_line
	.byte	7                               @ Abbrev [7] 0x1f9:0x7 DW_TAG_base_type
	.long	.Linfo_string31                 @ DW_AT_name
	.byte	6                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0x200:0x13 DW_TAG_variable
	.long	.Linfo_string33                 @ DW_AT_name
	.long	118                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	642                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSIdleCtrMax
	.byte	9                               @ Abbrev [9] 0x213:0x13 DW_TAG_variable
	.long	.Linfo_string34                 @ DW_AT_name
	.long	118                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	643                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSIdleCtrRun
	.byte	9                               @ Abbrev [9] 0x226:0x13 DW_TAG_variable
	.long	.Linfo_string35                 @ DW_AT_name
	.long	569                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	644                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSStatRdy
	.byte	6                               @ Abbrev [6] 0x239:0xb DW_TAG_typedef
	.long	85                              @ DW_AT_type
	.long	.Linfo_string36                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	40                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x244:0x13 DW_TAG_variable
	.long	.Linfo_string37                 @ DW_AT_name
	.long	599                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	645                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSTaskStatStk
	.byte	3                               @ Abbrev [3] 0x257:0xc DW_TAG_array_type
	.long	611                             @ DW_AT_type
	.byte	15                              @ Abbrev [15] 0x25c:0x6 DW_TAG_subrange_type
	.long	92                              @ DW_AT_type
	.byte	128                             @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0x263:0xb DW_TAG_typedef
	.long	129                             @ DW_AT_type
	.long	.Linfo_string38                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	50                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x26e:0x13 DW_TAG_variable
	.long	.Linfo_string39                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	648                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSIntNesting
	.byte	9                               @ Abbrev [9] 0x281:0x13 DW_TAG_variable
	.long	.Linfo_string40                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	650                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSLockNesting
	.byte	9                               @ Abbrev [9] 0x294:0x13 DW_TAG_variable
	.long	.Linfo_string41                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	652                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSPrioCur
	.byte	9                               @ Abbrev [9] 0x2a7:0x13 DW_TAG_variable
	.long	.Linfo_string42                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	653                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSPrioHighRdy
	.byte	9                               @ Abbrev [9] 0x2ba:0x13 DW_TAG_variable
	.long	.Linfo_string43                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	656                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSRdyGrp
	.byte	9                               @ Abbrev [9] 0x2cd:0x13 DW_TAG_variable
	.long	.Linfo_string44                 @ DW_AT_name
	.long	279                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	657                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSRdyTbl
	.byte	9                               @ Abbrev [9] 0x2e0:0x13 DW_TAG_variable
	.long	.Linfo_string45                 @ DW_AT_name
	.long	569                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	663                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSRunning
	.byte	9                               @ Abbrev [9] 0x2f3:0x13 DW_TAG_variable
	.long	.Linfo_string46                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	665                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSTaskCtr
	.byte	9                               @ Abbrev [9] 0x306:0x13 DW_TAG_variable
	.long	.Linfo_string47                 @ DW_AT_name
	.long	793                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	667                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSIdleCtr
	.byte	16                              @ Abbrev [16] 0x319:0x5 DW_TAG_volatile_type
	.long	118                             @ DW_AT_type
	.byte	9                               @ Abbrev [9] 0x31e:0x13 DW_TAG_variable
	.long	.Linfo_string48                 @ DW_AT_name
	.long	599                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	669                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSTaskIdleStk
	.byte	9                               @ Abbrev [9] 0x331:0x13 DW_TAG_variable
	.long	.Linfo_string49                 @ DW_AT_name
	.long	836                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	672                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSTCBCur
	.byte	10                              @ Abbrev [10] 0x344:0x5 DW_TAG_pointer_type
	.long	841                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x349:0xc DW_TAG_typedef
	.long	853                             @ DW_AT_type
	.long	.Linfo_string86                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.short	580                             @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0x355:0x169 DW_TAG_structure_type
	.long	.Linfo_string85                 @ DW_AT_name
	.byte	88                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.short	521                             @ DW_AT_decl_line
	.byte	13                              @ Abbrev [13] 0x35e:0xd DW_TAG_member
	.long	.Linfo_string50                 @ DW_AT_name
	.long	1214                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	522                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x36b:0xd DW_TAG_member
	.long	.Linfo_string51                 @ DW_AT_name
	.long	260                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	525                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x378:0xd DW_TAG_member
	.long	.Linfo_string52                 @ DW_AT_name
	.long	1214                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	526                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x385:0xd DW_TAG_member
	.long	.Linfo_string53                 @ DW_AT_name
	.long	118                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	527                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x392:0xd DW_TAG_member
	.long	.Linfo_string54                 @ DW_AT_name
	.long	261                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	528                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x39f:0xd DW_TAG_member
	.long	.Linfo_string55                 @ DW_AT_name
	.long	261                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	529                             @ DW_AT_decl_line
	.byte	18                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x3ac:0xd DW_TAG_member
	.long	.Linfo_string56                 @ DW_AT_name
	.long	1219                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	532                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x3b9:0xd DW_TAG_member
	.long	.Linfo_string57                 @ DW_AT_name
	.long	1219                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	533                             @ DW_AT_decl_line
	.byte	24                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x3c6:0xd DW_TAG_member
	.long	.Linfo_string58                 @ DW_AT_name
	.long	155                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	536                             @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x3d3:0xd DW_TAG_member
	.long	.Linfo_string59                 @ DW_AT_name
	.long	260                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	540                             @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x3e0:0xd DW_TAG_member
	.long	.Linfo_string60                 @ DW_AT_name
	.long	1224                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	545                             @ DW_AT_decl_line
	.byte	36                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x3ed:0xd DW_TAG_member
	.long	.Linfo_string69                 @ DW_AT_name
	.long	439                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	547                             @ DW_AT_decl_line
	.byte	40                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x3fa:0xd DW_TAG_member
	.long	.Linfo_string70                 @ DW_AT_name
	.long	261                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	550                             @ DW_AT_decl_line
	.byte	42                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x407:0xd DW_TAG_member
	.long	.Linfo_string71                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	551                             @ DW_AT_decl_line
	.byte	44                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x414:0xd DW_TAG_member
	.long	.Linfo_string72                 @ DW_AT_name
	.long	569                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	552                             @ DW_AT_decl_line
	.byte	45                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x421:0xd DW_TAG_member
	.long	.Linfo_string73                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	553                             @ DW_AT_decl_line
	.byte	46                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x42e:0xd DW_TAG_member
	.long	.Linfo_string74                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	555                             @ DW_AT_decl_line
	.byte	47                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x43b:0xd DW_TAG_member
	.long	.Linfo_string75                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	556                             @ DW_AT_decl_line
	.byte	48                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x448:0xd DW_TAG_member
	.long	.Linfo_string76                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	558                             @ DW_AT_decl_line
	.byte	49                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x455:0xd DW_TAG_member
	.long	.Linfo_string77                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	559                             @ DW_AT_decl_line
	.byte	50                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x462:0xd DW_TAG_member
	.long	.Linfo_string78                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	566                             @ DW_AT_decl_line
	.byte	51                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x46f:0xd DW_TAG_member
	.long	.Linfo_string79                 @ DW_AT_name
	.long	118                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	570                             @ DW_AT_decl_line
	.byte	52                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x47c:0xd DW_TAG_member
	.long	.Linfo_string80                 @ DW_AT_name
	.long	118                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	571                             @ DW_AT_decl_line
	.byte	56                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x489:0xd DW_TAG_member
	.long	.Linfo_string81                 @ DW_AT_name
	.long	118                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	572                             @ DW_AT_decl_line
	.byte	60                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x496:0xd DW_TAG_member
	.long	.Linfo_string82                 @ DW_AT_name
	.long	1214                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	573                             @ DW_AT_decl_line
	.byte	64                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x4a3:0xd DW_TAG_member
	.long	.Linfo_string83                 @ DW_AT_name
	.long	118                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	574                             @ DW_AT_decl_line
	.byte	68                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x4b0:0xd DW_TAG_member
	.long	.Linfo_string84                 @ DW_AT_name
	.long	291                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	578                             @ DW_AT_decl_line
	.byte	72                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	10                              @ Abbrev [10] 0x4be:0x5 DW_TAG_pointer_type
	.long	611                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x4c3:0x5 DW_TAG_pointer_type
	.long	853                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x4c8:0x5 DW_TAG_pointer_type
	.long	1229                            @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x4cd:0xc DW_TAG_typedef
	.long	1241                            @ DW_AT_type
	.long	.Linfo_string68                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.short	376                             @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0x4d9:0x58 DW_TAG_structure_type
	.long	.Linfo_string67                 @ DW_AT_name
	.byte	20                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.short	365                             @ DW_AT_decl_line
	.byte	13                              @ Abbrev [13] 0x4e2:0xd DW_TAG_member
	.long	.Linfo_string61                 @ DW_AT_name
	.long	260                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	366                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x4ef:0xd DW_TAG_member
	.long	.Linfo_string62                 @ DW_AT_name
	.long	260                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	367                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x4fc:0xd DW_TAG_member
	.long	.Linfo_string63                 @ DW_AT_name
	.long	260                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	368                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x509:0xd DW_TAG_member
	.long	.Linfo_string64                 @ DW_AT_name
	.long	260                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	369                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x516:0xd DW_TAG_member
	.long	.Linfo_string65                 @ DW_AT_name
	.long	439                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	370                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x523:0xd DW_TAG_member
	.long	.Linfo_string66                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	371                             @ DW_AT_decl_line
	.byte	18                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x531:0x13 DW_TAG_variable
	.long	.Linfo_string87                 @ DW_AT_name
	.long	836                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	673                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSTCBFreeList
	.byte	9                               @ Abbrev [9] 0x544:0x13 DW_TAG_variable
	.long	.Linfo_string88                 @ DW_AT_name
	.long	836                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	674                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSTCBHighRdy
	.byte	9                               @ Abbrev [9] 0x557:0x13 DW_TAG_variable
	.long	.Linfo_string89                 @ DW_AT_name
	.long	836                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	675                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSTCBList
	.byte	9                               @ Abbrev [9] 0x56a:0x13 DW_TAG_variable
	.long	.Linfo_string90                 @ DW_AT_name
	.long	1405                            @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	676                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSTCBPrioTbl
	.byte	3                               @ Abbrev [3] 0x57d:0xc DW_TAG_array_type
	.long	836                             @ DW_AT_type
	.byte	15                              @ Abbrev [15] 0x582:0x6 DW_TAG_subrange_type
	.long	92                              @ DW_AT_type
	.byte	64                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x589:0x13 DW_TAG_variable
	.long	.Linfo_string91                 @ DW_AT_name
	.long	1436                            @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	677                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSTCBTbl
	.byte	3                               @ Abbrev [3] 0x59c:0xc DW_TAG_array_type
	.long	841                             @ DW_AT_type
	.byte	15                              @ Abbrev [15] 0x5a1:0x6 DW_TAG_subrange_type
	.long	92                              @ DW_AT_type
	.byte	22                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x5a8:0x13 DW_TAG_variable
	.long	.Linfo_string92                 @ DW_AT_name
	.long	74                              @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	680                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSTickStepState
	.byte	9                               @ Abbrev [9] 0x5bb:0x13 DW_TAG_variable
	.long	.Linfo_string93                 @ DW_AT_name
	.long	1486                            @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	684                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSMemFreeList
	.byte	10                              @ Abbrev [10] 0x5ce:0x5 DW_TAG_pointer_type
	.long	1491                            @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x5d3:0xc DW_TAG_typedef
	.long	1503                            @ DW_AT_type
	.long	.Linfo_string100                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.short	415                             @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0x5df:0x58 DW_TAG_structure_type
	.long	.Linfo_string99                 @ DW_AT_name
	.byte	36                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.short	406                             @ DW_AT_decl_line
	.byte	13                              @ Abbrev [13] 0x5e8:0xd DW_TAG_member
	.long	.Linfo_string94                 @ DW_AT_name
	.long	260                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	407                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x5f5:0xd DW_TAG_member
	.long	.Linfo_string93                 @ DW_AT_name
	.long	260                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	408                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x602:0xd DW_TAG_member
	.long	.Linfo_string95                 @ DW_AT_name
	.long	118                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	409                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x60f:0xd DW_TAG_member
	.long	.Linfo_string96                 @ DW_AT_name
	.long	118                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	410                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x61c:0xd DW_TAG_member
	.long	.Linfo_string97                 @ DW_AT_name
	.long	118                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	411                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x629:0xd DW_TAG_member
	.long	.Linfo_string98                 @ DW_AT_name
	.long	291                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	413                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x637:0x13 DW_TAG_variable
	.long	.Linfo_string101                @ DW_AT_name
	.long	1610                            @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	685                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSMemTbl
	.byte	3                               @ Abbrev [3] 0x64a:0xc DW_TAG_array_type
	.long	1491                            @ DW_AT_type
	.byte	15                              @ Abbrev [15] 0x64f:0x6 DW_TAG_subrange_type
	.long	92                              @ DW_AT_type
	.byte	5                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x656:0x13 DW_TAG_variable
	.long	.Linfo_string102                @ DW_AT_name
	.long	1641                            @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	689                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSQFreeList
	.byte	10                              @ Abbrev [10] 0x669:0x5 DW_TAG_pointer_type
	.long	1646                            @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x66e:0xc DW_TAG_typedef
	.long	1658                            @ DW_AT_type
	.long	.Linfo_string111                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.short	465                             @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0x67a:0x65 DW_TAG_structure_type
	.long	.Linfo_string110                @ DW_AT_name
	.byte	24                              @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.short	457                             @ DW_AT_decl_line
	.byte	13                              @ Abbrev [13] 0x683:0xd DW_TAG_member
	.long	.Linfo_string103                @ DW_AT_name
	.long	1759                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	458                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x690:0xd DW_TAG_member
	.long	.Linfo_string104                @ DW_AT_name
	.long	1764                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	459                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x69d:0xd DW_TAG_member
	.long	.Linfo_string105                @ DW_AT_name
	.long	1764                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	460                             @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x6aa:0xd DW_TAG_member
	.long	.Linfo_string106                @ DW_AT_name
	.long	1764                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	461                             @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x6b7:0xd DW_TAG_member
	.long	.Linfo_string107                @ DW_AT_name
	.long	1764                            @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	462                             @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x6c4:0xd DW_TAG_member
	.long	.Linfo_string108                @ DW_AT_name
	.long	261                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	463                             @ DW_AT_decl_line
	.byte	20                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x6d1:0xd DW_TAG_member
	.long	.Linfo_string109                @ DW_AT_name
	.long	261                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	464                             @ DW_AT_decl_line
	.byte	22                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	10                              @ Abbrev [10] 0x6df:0x5 DW_TAG_pointer_type
	.long	1658                            @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x6e4:0x5 DW_TAG_pointer_type
	.long	260                             @ DW_AT_type
	.byte	9                               @ Abbrev [9] 0x6e9:0x13 DW_TAG_variable
	.long	.Linfo_string112                @ DW_AT_name
	.long	1788                            @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	690                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSQTbl
	.byte	3                               @ Abbrev [3] 0x6fc:0xc DW_TAG_array_type
	.long	1646                            @ DW_AT_type
	.byte	15                              @ Abbrev [15] 0x701:0x6 DW_TAG_subrange_type
	.long	92                              @ DW_AT_type
	.byte	4                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x708:0x13 DW_TAG_variable
	.long	.Linfo_string113                @ DW_AT_name
	.long	793                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	3                               @ DW_AT_decl_file
	.short	694                             @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	OSTime
	.byte	10                              @ Abbrev [10] 0x71b:0x5 DW_TAG_pointer_type
	.long	74                              @ DW_AT_type
	.byte	17                              @ Abbrev [17] 0x720:0x5e DW_TAG_subprogram
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string114                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	100                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.long	74                              @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	18                              @ Abbrev [18] 0x737:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string146                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	100                             @ DW_AT_decl_line
	.long	155                             @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x745:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	12
	.long	.Linfo_string147                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	100                             @ DW_AT_decl_line
	.long	1819                            @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x753:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string148                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	100                             @ DW_AT_decl_line
	.long	1819                            @ DW_AT_type
	.byte	19                              @ Abbrev [19] 0x761:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	7
	.long	.Linfo_string149                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	102                             @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	19                              @ Abbrev [19] 0x76f:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string150                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	104                             @ DW_AT_decl_line
	.long	3621                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	20                              @ Abbrev [20] 0x77e:0x46 DW_TAG_subprogram
	.long	.Lfunc_begin1                   @ DW_AT_low_pc
	.long	.Lfunc_end1                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string115                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1281                            @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.long	74                              @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0x796:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string152                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1281                            @ DW_AT_decl_line
	.long	1819                            @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0x7a5:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string153                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1281                            @ DW_AT_decl_line
	.long	1819                            @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0x7b4:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	3
	.long	.Linfo_string149                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1283                            @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	23                              @ Abbrev [23] 0x7c4:0x5a DW_TAG_subprogram
	.long	.Lfunc_begin2                   @ DW_AT_low_pc
	.long	.Lfunc_end2                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string116                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	169                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	18                              @ Abbrev [18] 0x7d7:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	20
	.long	.Linfo_string146                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	169                             @ DW_AT_decl_line
	.long	155                             @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x7e5:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string147                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	169                             @ DW_AT_decl_line
	.long	1819                            @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x7f3:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	12
	.long	.Linfo_string148                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	169                             @ DW_AT_decl_line
	.long	1819                            @ DW_AT_type
	.byte	19                              @ Abbrev [19] 0x801:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	11
	.long	.Linfo_string149                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	171                             @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	19                              @ Abbrev [19] 0x80f:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string150                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	173                             @ DW_AT_decl_line
	.long	3621                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	20                              @ Abbrev [20] 0x81e:0x37 DW_TAG_subprogram
	.long	.Lfunc_begin3                   @ DW_AT_low_pc
	.long	.Lfunc_end3                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string117                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1313                            @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.long	74                              @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0x836:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string153                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1313                            @ DW_AT_decl_line
	.long	1819                            @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0x845:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	3
	.long	.Linfo_string149                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1315                            @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	24                              @ Abbrev [24] 0x855:0x13 DW_TAG_subprogram
	.long	.Lfunc_begin4                   @ DW_AT_low_pc
	.long	.Lfunc_end4                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string118                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	229                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	25                              @ Abbrev [25] 0x868:0x13 DW_TAG_subprogram
	.long	.Lfunc_begin5                   @ DW_AT_low_pc
	.long	.Lfunc_end5                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string119                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	880                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	26                              @ Abbrev [26] 0x87b:0x32 DW_TAG_subprogram
	.long	.Lfunc_begin6                   @ DW_AT_low_pc
	.long	.Lfunc_end6                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string120                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	916                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	22                              @ Abbrev [22] 0x88e:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	7
	.long	.Linfo_string154                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	918                             @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0x89d:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string155                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	920                             @ DW_AT_decl_line
	.long	1819                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	26                              @ Abbrev [26] 0x8ad:0x41 DW_TAG_subprogram
	.long	.Lfunc_begin7                   @ DW_AT_low_pc
	.long	.Lfunc_end7                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string121                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1085                            @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	22                              @ Abbrev [22] 0x8c0:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	15
	.long	.Linfo_string154                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1087                            @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0x8cf:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string156                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1088                            @ DW_AT_decl_line
	.long	836                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0x8de:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string157                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1089                            @ DW_AT_decl_line
	.long	836                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	26                              @ Abbrev [26] 0x8ee:0x41 DW_TAG_subprogram
	.long	.Lfunc_begin8                   @ DW_AT_low_pc
	.long	.Lfunc_end8                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string122                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	826                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	22                              @ Abbrev [22] 0x901:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	14
	.long	.Linfo_string154                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	830                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0x910:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string158                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	831                             @ DW_AT_decl_line
	.long	155                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0x91f:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string159                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	832                             @ DW_AT_decl_line
	.long	155                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	26                              @ Abbrev [26] 0x92f:0x23 DW_TAG_subprogram
	.long	.Lfunc_begin9                   @ DW_AT_low_pc
	.long	.Lfunc_end9                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string123                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	953                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	22                              @ Abbrev [22] 0x942:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	31
	.long	.Linfo_string148                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	956                             @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	26                              @ Abbrev [26] 0x952:0x23 DW_TAG_subprogram
	.long	.Lfunc_begin10                  @ DW_AT_low_pc
	.long	.Lfunc_end10                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string124                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1019                            @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	22                              @ Abbrev [22] 0x965:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	31
	.long	.Linfo_string148                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1022                            @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0x975:0x14 DW_TAG_subprogram
	.long	.Lfunc_begin11                  @ DW_AT_low_pc
	.long	.Lfunc_end11                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string125                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	298                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	28                              @ Abbrev [28] 0x989:0x24 DW_TAG_subprogram
	.long	.Lfunc_begin12                  @ DW_AT_low_pc
	.long	.Lfunc_end12                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string126                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	326                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	22                              @ Abbrev [22] 0x99d:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string150                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	329                             @ DW_AT_decl_line
	.long	3621                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	26                              @ Abbrev [26] 0x9ad:0x23 DW_TAG_subprogram
	.long	.Lfunc_begin13                  @ DW_AT_low_pc
	.long	.Lfunc_end13                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string127                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1233                            @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	22                              @ Abbrev [22] 0x9c0:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	3
	.long	.Linfo_string160                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1236                            @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	28                              @ Abbrev [28] 0x9d0:0x24 DW_TAG_subprogram
	.long	.Lfunc_begin14                  @ DW_AT_low_pc
	.long	.Lfunc_end14                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string128                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	373                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	22                              @ Abbrev [22] 0x9e4:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string150                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	376                             @ DW_AT_decl_line
	.long	3621                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	28                              @ Abbrev [28] 0x9f4:0x24 DW_TAG_subprogram
	.long	.Lfunc_begin15                  @ DW_AT_low_pc
	.long	.Lfunc_end15                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string129                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	410                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	22                              @ Abbrev [22] 0xa08:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string150                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	413                             @ DW_AT_decl_line
	.long	3621                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	28                              @ Abbrev [28] 0xa18:0x24 DW_TAG_subprogram
	.long	.Lfunc_begin16                  @ DW_AT_low_pc
	.long	.Lfunc_end16                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string130                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1191                            @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	22                              @ Abbrev [22] 0xa2c:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string150                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1194                            @ DW_AT_decl_line
	.long	3621                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0xa3c:0x14 DW_TAG_subprogram
	.long	.Lfunc_begin17                  @ DW_AT_low_pc
	.long	.Lfunc_end17                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string131                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	460                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	28                              @ Abbrev [28] 0xa50:0x24 DW_TAG_subprogram
	.long	.Lfunc_begin18                  @ DW_AT_low_pc
	.long	.Lfunc_end18                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string132                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	492                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	22                              @ Abbrev [22] 0xa64:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	12
	.long	.Linfo_string150                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	495                             @ DW_AT_decl_line
	.long	3621                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	28                              @ Abbrev [28] 0xa74:0x42 DW_TAG_subprogram
	.long	.Lfunc_begin19                  @ DW_AT_low_pc
	.long	.Lfunc_end19                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string133                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	526                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	22                              @ Abbrev [22] 0xa88:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	12
	.long	.Linfo_string161                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	528                             @ DW_AT_decl_line
	.long	836                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xa97:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	11
	.long	.Linfo_string162                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	530                             @ DW_AT_decl_line
	.long	569                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xaa6:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string150                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	533                             @ DW_AT_decl_line
	.long	3621                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	29                              @ Abbrev [29] 0xab6:0x18 DW_TAG_subprogram
	.long	.Lfunc_begin20                  @ DW_AT_low_pc
	.long	.Lfunc_end20                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string134                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	610                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.long	261                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	27                              @ Abbrev [27] 0xace:0x14 DW_TAG_subprogram
	.long	.Lfunc_begin21                  @ DW_AT_low_pc
	.long	.Lfunc_end21                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string135                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	629                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	20                              @ Abbrev [20] 0xae2:0xa0 DW_TAG_subprogram
	.long	.Lfunc_begin22                  @ DW_AT_low_pc
	.long	.Lfunc_end22                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string136                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	657                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.long	74                              @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0xafa:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	20
	.long	.Linfo_string146                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	657                             @ DW_AT_decl_line
	.long	155                             @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0xb09:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string163                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	657                             @ DW_AT_decl_line
	.long	260                             @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0xb18:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	15
	.long	.Linfo_string164                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	657                             @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xb27:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string161                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	659                             @ DW_AT_decl_line
	.long	836                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xb36:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	7
	.long	.Linfo_string165                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	660                             @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xb45:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	6
	.long	.Linfo_string160                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	661                             @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xb54:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	5
	.long	.Linfo_string166                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	662                             @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xb63:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string167                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	664                             @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xb72:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	3
	.long	.Linfo_string168                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	665                             @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	28                              @ Abbrev [28] 0xb82:0x33 DW_TAG_subprogram
	.long	.Lfunc_begin23                  @ DW_AT_low_pc
	.long	.Lfunc_end23                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string137                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	733                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0xb96:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string146                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	733                             @ DW_AT_decl_line
	.long	155                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xba5:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	3
	.long	.Linfo_string160                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	735                             @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	28                              @ Abbrev [28] 0xbb5:0x33 DW_TAG_subprogram
	.long	.Lfunc_begin24                  @ DW_AT_low_pc
	.long	.Lfunc_end24                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string138                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	764                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0xbc9:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string146                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	764                             @ DW_AT_decl_line
	.long	155                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xbd8:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	3
	.long	.Linfo_string160                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	766                             @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	28                              @ Abbrev [28] 0xbe8:0x42 DW_TAG_subprogram
	.long	.Lfunc_begin25                  @ DW_AT_low_pc
	.long	.Lfunc_end25                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string139                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	794                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0xbfc:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string146                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	794                             @ DW_AT_decl_line
	.long	155                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xc0b:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string169                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	797                             @ DW_AT_decl_line
	.long	1819                            @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xc1a:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	3
	.long	.Linfo_string154                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	801                             @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	28                              @ Abbrev [28] 0xc2a:0x33 DW_TAG_subprogram
	.long	.Lfunc_begin26                  @ DW_AT_low_pc
	.long	.Lfunc_end26                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string140                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1134                            @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0xc3e:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string152                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1134                            @ DW_AT_decl_line
	.long	1819                            @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0xc4d:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	2
	.long	.Linfo_string170                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1134                            @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	28                              @ Abbrev [28] 0xc5d:0x42 DW_TAG_subprogram
	.long	.Lfunc_begin27                  @ DW_AT_low_pc
	.long	.Lfunc_end27                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string141                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1166                            @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0xc71:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string152                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1166                            @ DW_AT_decl_line
	.long	1819                            @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0xc80:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string153                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1166                            @ DW_AT_decl_line
	.long	1819                            @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0xc8f:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	2
	.long	.Linfo_string170                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1166                            @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	28                              @ Abbrev [28] 0xc9f:0x33 DW_TAG_subprogram
	.long	.Lfunc_begin28                  @ DW_AT_low_pc
	.long	.Lfunc_end28                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string142                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1348                            @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0xcb3:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string171                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1348                            @ DW_AT_decl_line
	.long	260                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xcc2:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string150                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1351                            @ DW_AT_decl_line
	.long	3621                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	28                              @ Abbrev [28] 0xcd2:0x60 DW_TAG_subprogram
	.long	.Lfunc_begin29                  @ DW_AT_low_pc
	.long	.Lfunc_end29                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string143                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1390                            @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0xce6:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	20
	.long	.Linfo_string171                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1390                            @ DW_AT_decl_line
	.long	260                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xcf5:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string172                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1392                            @ DW_AT_decl_line
	.long	118                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xd04:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	12
	.long	.Linfo_string173                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1393                            @ DW_AT_decl_line
	.long	118                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xd13:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	11
	.long	.Linfo_string174                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1394                            @ DW_AT_decl_line
	.long	494                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xd22:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string150                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1396                            @ DW_AT_decl_line
	.long	3621                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	28                              @ Abbrev [28] 0xd32:0x51 DW_TAG_subprogram
	.long	.Lfunc_begin30                  @ DW_AT_low_pc
	.long	.Lfunc_end30                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string144                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1445                            @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	22                              @ Abbrev [22] 0xd46:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	12
	.long	.Linfo_string161                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1447                            @ DW_AT_decl_line
	.long	836                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xd55:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string175                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1448                            @ DW_AT_decl_line
	.long	3632                            @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xd64:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	3
	.long	.Linfo_string148                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1449                            @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xd73:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	2
	.long	.Linfo_string166                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1450                            @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	20                              @ Abbrev [20] 0xd83:0xa2 DW_TAG_subprogram
	.long	.Lfunc_begin31                  @ DW_AT_low_pc
	.long	.Lfunc_end31                    @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string145                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1517                            @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.long	74                              @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0xd9b:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	46
	.long	.Linfo_string166                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1517                            @ DW_AT_decl_line
	.long	74                              @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0xdaa:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	40
	.long	.Linfo_string180                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1517                            @ DW_AT_decl_line
	.long	1214                            @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0xdb9:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	36
	.long	.Linfo_string181                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1517                            @ DW_AT_decl_line
	.long	1214                            @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0xdc8:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	34
	.long	.Linfo_string182                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1517                            @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0xdd7:0x10 DW_TAG_formal_parameter
	.byte	3                               @ DW_AT_location
	.byte	145
	.asciz	"\300"
	.long	.Linfo_string183                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1517                            @ DW_AT_decl_line
	.long	118                             @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0xde7:0x10 DW_TAG_formal_parameter
	.byte	3                               @ DW_AT_location
	.byte	145
	.asciz	"\304"
	.long	.Linfo_string184                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1517                            @ DW_AT_decl_line
	.long	260                             @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0xdf7:0xf DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	32
	.long	.Linfo_string185                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1517                            @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xe06:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	28
	.long	.Linfo_string161                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1519                            @ DW_AT_decl_line
	.long	836                             @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0xe15:0xf DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	24
	.long	.Linfo_string150                @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	1521                            @ DW_AT_decl_line
	.long	3621                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	6                               @ Abbrev [6] 0xe25:0xb DW_TAG_typedef
	.long	129                             @ DW_AT_type
	.long	.Linfo_string151                @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
	.byte	11                              @ Abbrev [11] 0xe30:0xc DW_TAG_typedef
	.long	3644                            @ DW_AT_type
	.long	.Linfo_string179                @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.short	511                             @ DW_AT_decl_line
	.byte	12                              @ Abbrev [12] 0xe3c:0x24 DW_TAG_structure_type
	.long	.Linfo_string178                @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	3                               @ DW_AT_decl_file
	.short	508                             @ DW_AT_decl_line
	.byte	13                              @ Abbrev [13] 0xe45:0xd DW_TAG_member
	.long	.Linfo_string176                @ DW_AT_name
	.long	118                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	509                             @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0xe52:0xd DW_TAG_member
	.long	.Linfo_string177                @ DW_AT_name
	.long	118                             @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.short	510                             @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
	.long	.Lfunc_begin5
	.long	.Lfunc_end5
	.long	.Lfunc_begin6
	.long	.Lfunc_end6
	.long	.Lfunc_begin7
	.long	.Lfunc_end7
	.long	.Lfunc_begin8
	.long	.Lfunc_end8
	.long	.Lfunc_begin9
	.long	.Lfunc_end9
	.long	.Lfunc_begin10
	.long	.Lfunc_end10
	.long	.Lfunc_begin11
	.long	.Lfunc_end11
	.long	.Lfunc_begin12
	.long	.Lfunc_end12
	.long	.Lfunc_begin13
	.long	.Lfunc_end13
	.long	.Lfunc_begin14
	.long	.Lfunc_end14
	.long	.Lfunc_begin15
	.long	.Lfunc_end15
	.long	.Lfunc_begin16
	.long	.Lfunc_end16
	.long	.Lfunc_begin17
	.long	.Lfunc_end17
	.long	.Lfunc_begin18
	.long	.Lfunc_end18
	.long	.Lfunc_begin19
	.long	.Lfunc_end19
	.long	.Lfunc_begin20
	.long	.Lfunc_end20
	.long	.Lfunc_begin21
	.long	.Lfunc_end21
	.long	.Lfunc_begin22
	.long	.Lfunc_end22
	.long	.Lfunc_begin23
	.long	.Lfunc_end23
	.long	.Lfunc_begin24
	.long	.Lfunc_end24
	.long	.Lfunc_begin25
	.long	.Lfunc_end25
	.long	.Lfunc_begin26
	.long	.Lfunc_end26
	.long	.Lfunc_begin27
	.long	.Lfunc_end27
	.long	.Lfunc_begin28
	.long	.Lfunc_end28
	.long	.Lfunc_begin29
	.long	.Lfunc_end29
	.long	.Lfunc_begin30
	.long	.Lfunc_end30
	.long	.Lfunc_begin31
	.long	.Lfunc_end31
	.long	0
	.long	0
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Component: ARM Compiler 6.15 Tool: armclang [5dd79400]" @ string offset=0
.Linfo_string1:
	.asciz	"../Micrium/Software/uCOS-II/Source\\os_core.c" @ string offset=55
.Linfo_string2:
	.asciz	"G:\\Workspace\\AisinoChip_SVN\\Solutions\\IOT\\IoT_OS\\uCOSII\\uCOSIIv2.83_acm32f4\\acm32f4_keil" @ string offset=100
.Linfo_string3:
	.asciz	"OSUnMapTbl"                    @ string offset=189
.Linfo_string4:
	.asciz	"unsigned char"                 @ string offset=200
.Linfo_string5:
	.asciz	"INT8U"                         @ string offset=214
.Linfo_string6:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=220
.Linfo_string7:
	.asciz	"OSCtxSwCtr"                    @ string offset=240
.Linfo_string8:
	.asciz	"unsigned int"                  @ string offset=251
.Linfo_string9:
	.asciz	"INT32U"                        @ string offset=264
.Linfo_string10:
	.asciz	"OSEventFreeList"               @ string offset=271
.Linfo_string11:
	.asciz	"OSEventType"                   @ string offset=287
.Linfo_string12:
	.asciz	"OSEventPtr"                    @ string offset=299
.Linfo_string13:
	.asciz	"OSEventCnt"                    @ string offset=310
.Linfo_string14:
	.asciz	"unsigned short"                @ string offset=321
.Linfo_string15:
	.asciz	"INT16U"                        @ string offset=336
.Linfo_string16:
	.asciz	"OSEventGrp"                    @ string offset=343
.Linfo_string17:
	.asciz	"OSEventTbl"                    @ string offset=354
.Linfo_string18:
	.asciz	"OSEventName"                   @ string offset=365
.Linfo_string19:
	.asciz	"os_event"                      @ string offset=377
.Linfo_string20:
	.asciz	"OS_EVENT"                      @ string offset=386
.Linfo_string21:
	.asciz	"OSFlagTbl"                     @ string offset=395
.Linfo_string22:
	.asciz	"OSFlagType"                    @ string offset=405
.Linfo_string23:
	.asciz	"OSFlagWaitList"                @ string offset=416
.Linfo_string24:
	.asciz	"OSFlagFlags"                   @ string offset=431
.Linfo_string25:
	.asciz	"OS_FLAGS"                      @ string offset=443
.Linfo_string26:
	.asciz	"OSFlagName"                    @ string offset=452
.Linfo_string27:
	.asciz	"os_flag_grp"                   @ string offset=463
.Linfo_string28:
	.asciz	"OS_FLAG_GRP"                   @ string offset=475
.Linfo_string29:
	.asciz	"OSFlagFreeList"                @ string offset=487
.Linfo_string30:
	.asciz	"OSCPUUsage"                    @ string offset=502
.Linfo_string31:
	.asciz	"signed char"                   @ string offset=513
.Linfo_string32:
	.asciz	"INT8S"                         @ string offset=525
.Linfo_string33:
	.asciz	"OSIdleCtrMax"                  @ string offset=531
.Linfo_string34:
	.asciz	"OSIdleCtrRun"                  @ string offset=544
.Linfo_string35:
	.asciz	"OSStatRdy"                     @ string offset=557
.Linfo_string36:
	.asciz	"BOOLEAN"                       @ string offset=567
.Linfo_string37:
	.asciz	"OSTaskStatStk"                 @ string offset=575
.Linfo_string38:
	.asciz	"OS_STK"                        @ string offset=589
.Linfo_string39:
	.asciz	"OSIntNesting"                  @ string offset=596
.Linfo_string40:
	.asciz	"OSLockNesting"                 @ string offset=609
.Linfo_string41:
	.asciz	"OSPrioCur"                     @ string offset=623
.Linfo_string42:
	.asciz	"OSPrioHighRdy"                 @ string offset=633
.Linfo_string43:
	.asciz	"OSRdyGrp"                      @ string offset=647
.Linfo_string44:
	.asciz	"OSRdyTbl"                      @ string offset=656
.Linfo_string45:
	.asciz	"OSRunning"                     @ string offset=665
.Linfo_string46:
	.asciz	"OSTaskCtr"                     @ string offset=675
.Linfo_string47:
	.asciz	"OSIdleCtr"                     @ string offset=685
.Linfo_string48:
	.asciz	"OSTaskIdleStk"                 @ string offset=695
.Linfo_string49:
	.asciz	"OSTCBCur"                      @ string offset=709
.Linfo_string50:
	.asciz	"OSTCBStkPtr"                   @ string offset=718
.Linfo_string51:
	.asciz	"OSTCBExtPtr"                   @ string offset=730
.Linfo_string52:
	.asciz	"OSTCBStkBottom"                @ string offset=742
.Linfo_string53:
	.asciz	"OSTCBStkSize"                  @ string offset=757
.Linfo_string54:
	.asciz	"OSTCBOpt"                      @ string offset=770
.Linfo_string55:
	.asciz	"OSTCBId"                       @ string offset=779
.Linfo_string56:
	.asciz	"OSTCBNext"                     @ string offset=787
.Linfo_string57:
	.asciz	"OSTCBPrev"                     @ string offset=797
.Linfo_string58:
	.asciz	"OSTCBEventPtr"                 @ string offset=807
.Linfo_string59:
	.asciz	"OSTCBMsg"                      @ string offset=821
.Linfo_string60:
	.asciz	"OSTCBFlagNode"                 @ string offset=830
.Linfo_string61:
	.asciz	"OSFlagNodeNext"                @ string offset=844
.Linfo_string62:
	.asciz	"OSFlagNodePrev"                @ string offset=859
.Linfo_string63:
	.asciz	"OSFlagNodeTCB"                 @ string offset=874
.Linfo_string64:
	.asciz	"OSFlagNodeFlagGrp"             @ string offset=888
.Linfo_string65:
	.asciz	"OSFlagNodeFlags"               @ string offset=906
.Linfo_string66:
	.asciz	"OSFlagNodeWaitType"            @ string offset=922
.Linfo_string67:
	.asciz	"os_flag_node"                  @ string offset=941
.Linfo_string68:
	.asciz	"OS_FLAG_NODE"                  @ string offset=954
.Linfo_string69:
	.asciz	"OSTCBFlagsRdy"                 @ string offset=967
.Linfo_string70:
	.asciz	"OSTCBDly"                      @ string offset=981
.Linfo_string71:
	.asciz	"OSTCBStat"                     @ string offset=990
.Linfo_string72:
	.asciz	"OSTCBPendTO"                   @ string offset=1000
.Linfo_string73:
	.asciz	"OSTCBPrio"                     @ string offset=1012
.Linfo_string74:
	.asciz	"OSTCBX"                        @ string offset=1022
.Linfo_string75:
	.asciz	"OSTCBY"                        @ string offset=1029
.Linfo_string76:
	.asciz	"OSTCBBitX"                     @ string offset=1036
.Linfo_string77:
	.asciz	"OSTCBBitY"                     @ string offset=1046
.Linfo_string78:
	.asciz	"OSTCBDelReq"                   @ string offset=1056
.Linfo_string79:
	.asciz	"OSTCBCtxSwCtr"                 @ string offset=1068
.Linfo_string80:
	.asciz	"OSTCBCyclesTot"                @ string offset=1082
.Linfo_string81:
	.asciz	"OSTCBCyclesStart"              @ string offset=1097
.Linfo_string82:
	.asciz	"OSTCBStkBase"                  @ string offset=1114
.Linfo_string83:
	.asciz	"OSTCBStkUsed"                  @ string offset=1127
.Linfo_string84:
	.asciz	"OSTCBTaskName"                 @ string offset=1140
.Linfo_string85:
	.asciz	"os_tcb"                        @ string offset=1154
.Linfo_string86:
	.asciz	"OS_TCB"                        @ string offset=1161
.Linfo_string87:
	.asciz	"OSTCBFreeList"                 @ string offset=1168
.Linfo_string88:
	.asciz	"OSTCBHighRdy"                  @ string offset=1182
.Linfo_string89:
	.asciz	"OSTCBList"                     @ string offset=1195
.Linfo_string90:
	.asciz	"OSTCBPrioTbl"                  @ string offset=1205
.Linfo_string91:
	.asciz	"OSTCBTbl"                      @ string offset=1218
.Linfo_string92:
	.asciz	"OSTickStepState"               @ string offset=1227
.Linfo_string93:
	.asciz	"OSMemFreeList"                 @ string offset=1243
.Linfo_string94:
	.asciz	"OSMemAddr"                     @ string offset=1257
.Linfo_string95:
	.asciz	"OSMemBlkSize"                  @ string offset=1267
.Linfo_string96:
	.asciz	"OSMemNBlks"                    @ string offset=1280
.Linfo_string97:
	.asciz	"OSMemNFree"                    @ string offset=1291
.Linfo_string98:
	.asciz	"OSMemName"                     @ string offset=1302
.Linfo_string99:
	.asciz	"os_mem"                        @ string offset=1312
.Linfo_string100:
	.asciz	"OS_MEM"                        @ string offset=1319
.Linfo_string101:
	.asciz	"OSMemTbl"                      @ string offset=1326
.Linfo_string102:
	.asciz	"OSQFreeList"                   @ string offset=1335
.Linfo_string103:
	.asciz	"OSQPtr"                        @ string offset=1347
.Linfo_string104:
	.asciz	"OSQStart"                      @ string offset=1354
.Linfo_string105:
	.asciz	"OSQEnd"                        @ string offset=1363
.Linfo_string106:
	.asciz	"OSQIn"                         @ string offset=1370
.Linfo_string107:
	.asciz	"OSQOut"                        @ string offset=1376
.Linfo_string108:
	.asciz	"OSQSize"                       @ string offset=1383
.Linfo_string109:
	.asciz	"OSQEntries"                    @ string offset=1391
.Linfo_string110:
	.asciz	"os_q"                          @ string offset=1402
.Linfo_string111:
	.asciz	"OS_Q"                          @ string offset=1407
.Linfo_string112:
	.asciz	"OSQTbl"                        @ string offset=1412
.Linfo_string113:
	.asciz	"OSTime"                        @ string offset=1419
.Linfo_string114:
	.asciz	"OSEventNameGet"                @ string offset=1426
.Linfo_string115:
	.asciz	"OS_StrCopy"                    @ string offset=1441
.Linfo_string116:
	.asciz	"OSEventNameSet"                @ string offset=1452
.Linfo_string117:
	.asciz	"OS_StrLen"                     @ string offset=1467
.Linfo_string118:
	.asciz	"OSInit"                        @ string offset=1477
.Linfo_string119:
	.asciz	"OS_InitMisc"                   @ string offset=1484
.Linfo_string120:
	.asciz	"OS_InitRdyList"                @ string offset=1496
.Linfo_string121:
	.asciz	"OS_InitTCBList"                @ string offset=1511
.Linfo_string122:
	.asciz	"OS_InitEventList"              @ string offset=1526
.Linfo_string123:
	.asciz	"OS_InitTaskIdle"               @ string offset=1543
.Linfo_string124:
	.asciz	"OS_InitTaskStat"               @ string offset=1559
.Linfo_string125:
	.asciz	"OSIntEnter"                    @ string offset=1575
.Linfo_string126:
	.asciz	"OSIntExit"                     @ string offset=1586
.Linfo_string127:
	.asciz	"OS_SchedNew"                   @ string offset=1596
.Linfo_string128:
	.asciz	"OSSchedLock"                   @ string offset=1608
.Linfo_string129:
	.asciz	"OSSchedUnlock"                 @ string offset=1620
.Linfo_string130:
	.asciz	"OS_Sched"                      @ string offset=1634
.Linfo_string131:
	.asciz	"OSStart"                       @ string offset=1643
.Linfo_string132:
	.asciz	"OSStatInit"                    @ string offset=1651
.Linfo_string133:
	.asciz	"OSTimeTick"                    @ string offset=1662
.Linfo_string134:
	.asciz	"OSVersion"                     @ string offset=1673
.Linfo_string135:
	.asciz	"OS_Dummy"                      @ string offset=1683
.Linfo_string136:
	.asciz	"OS_EventTaskRdy"               @ string offset=1692
.Linfo_string137:
	.asciz	"OS_EventTaskWait"              @ string offset=1708
.Linfo_string138:
	.asciz	"OS_EventTO"                    @ string offset=1725
.Linfo_string139:
	.asciz	"OS_EventWaitListInit"          @ string offset=1736
.Linfo_string140:
	.asciz	"OS_MemClr"                     @ string offset=1757
.Linfo_string141:
	.asciz	"OS_MemCopy"                    @ string offset=1767
.Linfo_string142:
	.asciz	"OS_TaskIdle"                   @ string offset=1778
.Linfo_string143:
	.asciz	"OS_TaskStat"                   @ string offset=1790
.Linfo_string144:
	.asciz	"OS_TaskStatStkChk"             @ string offset=1802
.Linfo_string145:
	.asciz	"OS_TCBInit"                    @ string offset=1820
.Linfo_string146:
	.asciz	"pevent"                        @ string offset=1831
.Linfo_string147:
	.asciz	"pname"                         @ string offset=1838
.Linfo_string148:
	.asciz	"err"                           @ string offset=1844
.Linfo_string149:
	.asciz	"len"                           @ string offset=1848
.Linfo_string150:
	.asciz	"cpu_sr"                        @ string offset=1852
.Linfo_string151:
	.asciz	"OS_CPU_SR"                     @ string offset=1859
.Linfo_string152:
	.asciz	"pdest"                         @ string offset=1869
.Linfo_string153:
	.asciz	"psrc"                          @ string offset=1875
.Linfo_string154:
	.asciz	"i"                             @ string offset=1880
.Linfo_string155:
	.asciz	"prdytbl"                       @ string offset=1882
.Linfo_string156:
	.asciz	"ptcb1"                         @ string offset=1890
.Linfo_string157:
	.asciz	"ptcb2"                         @ string offset=1896
.Linfo_string158:
	.asciz	"pevent1"                       @ string offset=1902
.Linfo_string159:
	.asciz	"pevent2"                       @ string offset=1910
.Linfo_string160:
	.asciz	"y"                             @ string offset=1918
.Linfo_string161:
	.asciz	"ptcb"                          @ string offset=1920
.Linfo_string162:
	.asciz	"step"                          @ string offset=1925
.Linfo_string163:
	.asciz	"msg"                           @ string offset=1930
.Linfo_string164:
	.asciz	"msk"                           @ string offset=1934
.Linfo_string165:
	.asciz	"x"                             @ string offset=1938
.Linfo_string166:
	.asciz	"prio"                          @ string offset=1940
.Linfo_string167:
	.asciz	"bitx"                          @ string offset=1945
.Linfo_string168:
	.asciz	"bity"                          @ string offset=1950
.Linfo_string169:
	.asciz	"ptbl"                          @ string offset=1955
.Linfo_string170:
	.asciz	"size"                          @ string offset=1960
.Linfo_string171:
	.asciz	"p_arg"                         @ string offset=1965
.Linfo_string172:
	.asciz	"run"                           @ string offset=1971
.Linfo_string173:
	.asciz	"max"                           @ string offset=1975
.Linfo_string174:
	.asciz	"usage"                         @ string offset=1979
.Linfo_string175:
	.asciz	"stk_data"                      @ string offset=1985
.Linfo_string176:
	.asciz	"OSFree"                        @ string offset=1994
.Linfo_string177:
	.asciz	"OSUsed"                        @ string offset=2001
.Linfo_string178:
	.asciz	"os_stk_data"                   @ string offset=2008
.Linfo_string179:
	.asciz	"OS_STK_DATA"                   @ string offset=2020
.Linfo_string180:
	.asciz	"ptos"                          @ string offset=2032
.Linfo_string181:
	.asciz	"pbos"                          @ string offset=2037
.Linfo_string182:
	.asciz	"id"                            @ string offset=2042
.Linfo_string183:
	.asciz	"stk_size"                      @ string offset=2045
.Linfo_string184:
	.asciz	"pext"                          @ string offset=2054
.Linfo_string185:
	.asciz	"opt"                           @ string offset=2059
	.ident	"Component: ARM Compiler 6.15 Tool: armclang [5dd79400]"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
	.ARM_attribute	16, 1	@ Tag_AV_eba
	.section	.debug_line,"",%progbits
.Lline_table_start0:
