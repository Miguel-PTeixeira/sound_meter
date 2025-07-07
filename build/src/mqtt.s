	.file	"mqtt.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v03" "src/mqtt.c"
	.local	client
	.comm	client,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"Failed to create MQTT client, return code %d\n"
	.align 8
.LC1:
	.string	"Failed to connect MQTT, return code %d\n"
	.text
	.globl	mqtt_begin
	.type	mqtt_begin, @function
mqtt_begin:
.LFB8:
	.file 1 "src/mqtt.c"
	.loc 1 28 18
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	.loc 1 28 18
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 29 31
	movl	$1129599309, -160(%rbp)
	movl	$8, -156(%rbp)
	movl	$60, -152(%rbp)
	movl	$1, -148(%rbp)
	movl	$1, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movl	$30, -112(%rbp)
	movl	$0, -108(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movl	$-1, -40(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	.loc 1 33 50
	movq	config_struct(%rip), %rax
	.loc 1 32 15
	movq	(%rax), %rdx
	.loc 1 33 22
	movq	config_struct(%rip), %rax
	.loc 1 32 15
	movq	136(%rax), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movq	%rax, %rsi
	leaq	client(%rip), %rax
	movq	%rax, %rdi
	call	MQTTClient_create@PLT
	movl	%eax, -164(%rbp)
	.loc 1 32 8 discriminator 1
	cmpl	$0, -164(%rbp)
	je	.L2
	.loc 1 35 10
	movq	stderr(%rip), %rax
	movl	-164(%rbp), %edx
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 36 16
	movl	$0, %eax
	jmp	.L5
.L2:
	.loc 1 39 36
	movq	config_struct(%rip), %rax
	movq	160(%rax), %rax
	.loc 1 39 21
	movq	%rax, -128(%rbp)
	.loc 1 40 36
	movq	config_struct(%rip), %rax
	movq	160(%rax), %rax
	.loc 1 40 21
	movq	%rax, -120(%rbp)
	.loc 1 41 33
	movl	$20, -152(%rbp)
	.loc 1 42 28
	movl	$1, -148(%rbp)
	.loc 1 43 15
	movq	client(%rip), %rax
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MQTTClient_connect@PLT
	movl	%eax, -164(%rbp)
	.loc 1 43 8 discriminator 1
	cmpl	$0, -164(%rbp)
	je	.L4
	.loc 1 44 9
	movq	stderr(%rip), %rax
	movl	-164(%rbp), %edx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 45 15
	movl	$0, %eax
	jmp	.L5
.L4:
	.loc 1 47 11
	movl	$1, %eax
.L5:
	.loc 1 48 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mqtt_begin, .-mqtt_begin
	.section	.rodata
	.align 8
.LC2:
	.string	"{\"ts\": %lld, \"values\": {\"LAeq\": %.1f, \"LAFmin\": %.1f, \"LAE\": %.1f, \"LAFmax\": %.1f, \"LApeak\": %.1f } }"
	.align 8
.LC3:
	.string	"Failed to publish MQTT message, return code %d\n"
	.text
	.globl	mqtt_publish
	.type	mqtt_publish, @function
mqtt_publish:
.LFB9:
	.loc 1 52 54
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	.loc 1 52 54
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 54 39
	movl	$0, %edi
	call	time@PLT
	.loc 1 54 24 discriminator 1
	imulq	$1000, %rax, %rax
	movq	%rax, -200(%rbp)
	.loc 1 62 15
	movq	-216(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 62 23
	movl	-220(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 55 2
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	.loc 1 61 15
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 61 23
	movl	-220(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 55 2
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	.loc 1 60 15
	movq	-216(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 60 20
	movl	-220(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 55 2
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 1 59 15
	movq	-216(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 59 23
	movl	-220(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 55 2
	cvtss2sd	%xmm0, %xmm0
	.loc 1 58 15
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 58 21
	movl	-220(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm4
	.loc 1 55 2
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm4, %xmm5
	movq	%xmm5, %rcx
	movq	-200(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movapd	%xmm3, %xmm4
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$5, %eax
	call	sprintf@PLT
	.loc 1 65 24
	movl	$1297371469, -192(%rbp)
	movl	$1, -188(%rbp)
	movl	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movl	$0, -168(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -152(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	.loc 1 67 20
	leaq	-128(%rbp), %rax
	movq	%rax, -176(%rbp)
	.loc 1 68 25
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 68 23 discriminator 1
	movl	%eax, -184(%rbp)
	.loc 1 69 31
	movq	config_struct(%rip), %rax
	movl	152(%rax), %eax
	.loc 1 69 16
	movl	%eax, -168(%rbp)
	.loc 1 70 21
	movl	$0, -164(%rbp)
	.loc 1 73 22
	movq	config_struct(%rip), %rax
	.loc 1 72 15
	movq	144(%rax), %rsi
	movq	client(%rip), %rax
	leaq	-208(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	movq	%rax, %rdi
	call	MQTTClient_publishMessage@PLT
	movl	%eax, -204(%rbp)
	.loc 1 72 8 discriminator 1
	cmpl	$0, -204(%rbp)
	je	.L8
	.loc 1 74 10
	movq	stderr(%rip), %rax
	movl	-204(%rbp), %edx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 75 16
	movl	$0, %eax
	jmp	.L10
.L8:
	.loc 1 84 11
	movl	$1, %eax
.L10:
	.loc 1 85 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	mqtt_publish, .-mqtt_publish
	.section	.rodata
	.align 8
.LC4:
	.string	"Failed to disconnect MQTT, return code %d\n"
	.text
	.globl	mqtt_end
	.type	mqtt_end, @function
mqtt_end:
.LFB10:
	.loc 1 87 16
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 89 15
	movq	client(%rip), %rax
	movl	$10000, %esi
	movq	%rax, %rdi
	call	MQTTClient_disconnect@PLT
	movl	%eax, -4(%rbp)
	.loc 1 89 8 discriminator 1
	cmpl	$0, -4(%rbp)
	je	.L13
	.loc 1 90 9
	movq	stderr(%rip), %rax
	movl	-4(%rbp), %edx
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L13:
	.loc 1 91 5
	leaq	client(%rip), %rax
	movq	%rax, %rdi
	call	MQTTClient_destroy@PLT
	.loc 1 92 15
	cmpl	$0, -4(%rbp)
	sete	%al
	.loc 1 93 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	mqtt_end, .-mqtt_end
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 8 "/usr/local/include/MQTTProperties.h"
	.file 9 "/usr/local/include/MQTTClient.h"
	.file 10 "src/config.h"
	.file 11 "/usr/include/stdio.h"
	.file 12 "src/process.h"
	.file 13 "/usr/include/string.h"
	.file 14 "/usr/include/time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xda7
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1b
	.long	.LASF207
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x7
	.long	.LASF9
	.byte	0x2
	.byte	0xd6
	.byte	0x1b
	.long	0x3a
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0xd
	.long	0x41
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x7
	.long	.LASF10
	.byte	0x3
	.byte	0x2d
	.byte	0x1b
	.long	0x3a
	.uleb128 0x7
	.long	.LASF11
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x70
	.uleb128 0x7
	.long	.LASF12
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x70
	.uleb128 0x7
	.long	.LASF13
	.byte	0x3
	.byte	0xa0
	.byte	0x12
	.long	0x70
	.uleb128 0x1d
	.byte	0x8
	.uleb128 0x5
	.long	0xb3
	.uleb128 0xd
	.long	0xa9
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0xd
	.long	0xb3
	.uleb128 0x7
	.long	.LASF15
	.byte	0x4
	.byte	0xa
	.byte	0x12
	.long	0x9b
	.uleb128 0x5
	.long	0xba
	.uleb128 0x15
	.long	0xcb
	.uleb128 0xe
	.long	0xb3
	.long	0xe5
	.uleb128 0xf
	.long	0x3a
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.long	.LASF88
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x26c
	.uleb128 0x1
	.long	.LASF16
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x69
	.byte	0
	.uleb128 0x1
	.long	.LASF17
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xa9
	.byte	0x8
	.uleb128 0x1
	.long	.LASF18
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xa9
	.byte	0x10
	.uleb128 0x1
	.long	.LASF19
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xa9
	.byte	0x18
	.uleb128 0x1
	.long	.LASF20
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xa9
	.byte	0x20
	.uleb128 0x1
	.long	.LASF21
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xa9
	.byte	0x28
	.uleb128 0x1
	.long	.LASF22
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xa9
	.byte	0x30
	.uleb128 0x1
	.long	.LASF23
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xa9
	.byte	0x38
	.uleb128 0x1
	.long	.LASF24
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xa9
	.byte	0x40
	.uleb128 0x1
	.long	.LASF25
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xa9
	.byte	0x48
	.uleb128 0x1
	.long	.LASF26
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xa9
	.byte	0x50
	.uleb128 0x1
	.long	.LASF27
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xa9
	.byte	0x58
	.uleb128 0x1
	.long	.LASF28
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x285
	.byte	0x60
	.uleb128 0x1
	.long	.LASF29
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x28a
	.byte	0x68
	.uleb128 0x1
	.long	.LASF30
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x69
	.byte	0x70
	.uleb128 0x1
	.long	.LASF31
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x69
	.byte	0x74
	.uleb128 0x1
	.long	.LASF32
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x83
	.byte	0x78
	.uleb128 0x1
	.long	.LASF33
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x4d
	.byte	0x80
	.uleb128 0x1
	.long	.LASF34
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x5b
	.byte	0x82
	.uleb128 0x1
	.long	.LASF35
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x28f
	.byte	0x83
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x29f
	.byte	0x88
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x8f
	.byte	0x90
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2a9
	.byte	0x98
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2b3
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x28a
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0xa7
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF42
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF43
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x69
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF44
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2b8
	.byte	0xc4
	.byte	0
	.uleb128 0x7
	.long	.LASF45
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xe5
	.uleb128 0x1e
	.long	.LASF208
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0x13
	.long	.LASF46
	.uleb128 0x5
	.long	0x280
	.uleb128 0x5
	.long	0xe5
	.uleb128 0xe
	.long	0xb3
	.long	0x29f
	.uleb128 0xf
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x278
	.uleb128 0x13
	.long	.LASF47
	.uleb128 0x5
	.long	0x2a4
	.uleb128 0x13
	.long	.LASF48
	.uleb128 0x5
	.long	0x2ae
	.uleb128 0xe
	.long	0xb3
	.long	0x2c8
	.uleb128 0xf
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	0x26c
	.uleb128 0x15
	.long	0x2c8
	.uleb128 0x16
	.long	.LASF181
	.byte	0xb
	.byte	0x97
	.byte	0xe
	.long	0x2c8
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0x5
	.long	0x2f1
	.uleb128 0x1f
	.uleb128 0x7
	.long	.LASF51
	.byte	0x7
	.byte	0x1b
	.byte	0x14
	.long	0x77
	.uleb128 0x20
	.long	.LASF209
	.byte	0x7
	.byte	0x4
	.long	0x54
	.byte	0x8
	.byte	0x1b
	.byte	0x6
	.long	0x3b9
	.uleb128 0x4
	.long	.LASF52
	.byte	0x1
	.uleb128 0x4
	.long	.LASF53
	.byte	0x2
	.uleb128 0x4
	.long	.LASF54
	.byte	0x3
	.uleb128 0x4
	.long	.LASF55
	.byte	0x8
	.uleb128 0x4
	.long	.LASF56
	.byte	0x9
	.uleb128 0x4
	.long	.LASF57
	.byte	0xb
	.uleb128 0x4
	.long	.LASF58
	.byte	0x11
	.uleb128 0x4
	.long	.LASF59
	.byte	0x12
	.uleb128 0x4
	.long	.LASF60
	.byte	0x12
	.uleb128 0x4
	.long	.LASF61
	.byte	0x13
	.uleb128 0x4
	.long	.LASF62
	.byte	0x15
	.uleb128 0x4
	.long	.LASF63
	.byte	0x16
	.uleb128 0x4
	.long	.LASF64
	.byte	0x17
	.uleb128 0x4
	.long	.LASF65
	.byte	0x18
	.uleb128 0x4
	.long	.LASF66
	.byte	0x19
	.uleb128 0x4
	.long	.LASF67
	.byte	0x1a
	.uleb128 0x4
	.long	.LASF68
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF69
	.byte	0x1f
	.uleb128 0x4
	.long	.LASF70
	.byte	0x21
	.uleb128 0x4
	.long	.LASF71
	.byte	0x22
	.uleb128 0x4
	.long	.LASF72
	.byte	0x23
	.uleb128 0x4
	.long	.LASF73
	.byte	0x24
	.uleb128 0x4
	.long	.LASF74
	.byte	0x25
	.uleb128 0x4
	.long	.LASF75
	.byte	0x26
	.uleb128 0x4
	.long	.LASF76
	.byte	0x27
	.uleb128 0x4
	.long	.LASF77
	.byte	0x28
	.uleb128 0x4
	.long	.LASF78
	.byte	0x29
	.uleb128 0x4
	.long	.LASF79
	.byte	0x2a
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0x8
	.byte	0x57
	.byte	0x9
	.long	0x3dd
	.uleb128 0x17
	.string	"len"
	.byte	0x8
	.byte	0x59
	.byte	0x6
	.long	0x69
	.byte	0
	.uleb128 0x1
	.long	.LASF80
	.byte	0x8
	.byte	0x5a
	.byte	0x8
	.long	0xa9
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF81
	.byte	0x8
	.byte	0x5b
	.byte	0x3
	.long	0x3b9
	.uleb128 0x10
	.byte	0x20
	.byte	0x8
	.byte	0x69
	.byte	0x5
	.long	0x40d
	.uleb128 0x1
	.long	.LASF80
	.byte	0x8
	.byte	0x6a
	.byte	0x15
	.long	0x3dd
	.byte	0
	.uleb128 0x1
	.long	.LASF82
	.byte	0x8
	.byte	0x6b
	.byte	0x15
	.long	0x3dd
	.byte	0x10
	.byte	0
	.uleb128 0x21
	.byte	0x20
	.byte	0x8
	.byte	0x65
	.byte	0x3
	.long	0x43d
	.uleb128 0x14
	.long	.LASF83
	.byte	0x66
	.byte	0x13
	.long	0x41
	.uleb128 0x14
	.long	.LASF84
	.byte	0x67
	.byte	0x14
	.long	0x4d
	.uleb128 0x14
	.long	.LASF85
	.byte	0x68
	.byte	0x12
	.long	0x54
	.uleb128 0x22
	.long	0x3e9
	.byte	0
	.uleb128 0x10
	.byte	0x28
	.byte	0x8
	.byte	0x61
	.byte	0x9
	.long	0x461
	.uleb128 0x1
	.long	.LASF86
	.byte	0x8
	.byte	0x63
	.byte	0x1a
	.long	0x2fe
	.byte	0
	.uleb128 0x1
	.long	.LASF82
	.byte	0x8
	.byte	0x6d
	.byte	0x5
	.long	0x40d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF87
	.byte	0x8
	.byte	0x6e
	.byte	0x3
	.long	0x43d
	.uleb128 0x12
	.long	.LASF89
	.byte	0x18
	.byte	0x8
	.byte	0x73
	.byte	0x10
	.long	0x4af
	.uleb128 0x1
	.long	.LASF90
	.byte	0x8
	.byte	0x75
	.byte	0x7
	.long	0x69
	.byte	0
	.uleb128 0x1
	.long	.LASF91
	.byte	0x8
	.byte	0x76
	.byte	0x7
	.long	0x69
	.byte	0x4
	.uleb128 0x1
	.long	.LASF92
	.byte	0x8
	.byte	0x77
	.byte	0x7
	.long	0x69
	.byte	0x8
	.uleb128 0x1
	.long	.LASF93
	.byte	0x8
	.byte	0x78
	.byte	0x11
	.long	0x4af
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x461
	.uleb128 0x7
	.long	.LASF89
	.byte	0x8
	.byte	0x79
	.byte	0x3
	.long	0x46d
	.uleb128 0x9
	.long	.LASF94
	.value	0x100
	.byte	0xf
	.long	0xa7
	.uleb128 0x9
	.long	.LASF95
	.value	0x10b
	.byte	0xd
	.long	0x69
	.uleb128 0x8
	.byte	0x40
	.value	0x114
	.byte	0x9
	.long	0x557
	.uleb128 0x2
	.long	.LASF96
	.value	0x117
	.byte	0x7
	.long	0xd5
	.byte	0
	.uleb128 0x2
	.long	.LASF97
	.value	0x11a
	.byte	0x6
	.long	0x69
	.byte	0x4
	.uleb128 0x2
	.long	.LASF98
	.value	0x11c
	.byte	0x6
	.long	0x69
	.byte	0x8
	.uleb128 0x2
	.long	.LASF99
	.value	0x11e
	.byte	0x8
	.long	0xa7
	.byte	0x10
	.uleb128 0xb
	.string	"qos"
	.value	0x12c
	.byte	0x6
	.long	0x69
	.byte	0x18
	.uleb128 0x2
	.long	.LASF100
	.value	0x13f
	.byte	0x6
	.long	0x69
	.byte	0x1c
	.uleb128 0xb
	.string	"dup"
	.value	0x146
	.byte	0x6
	.long	0x69
	.byte	0x20
	.uleb128 0x2
	.long	.LASF101
	.value	0x14a
	.byte	0x6
	.long	0x69
	.byte	0x24
	.uleb128 0x2
	.long	.LASF102
	.value	0x14e
	.byte	0x11
	.long	0x4b4
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.long	.LASF103
	.value	0x14f
	.byte	0x3
	.long	0x4d8
	.uleb128 0x5
	.long	0x557
	.uleb128 0x8
	.byte	0x10
	.value	0x28b
	.byte	0x2
	.long	0x58c
	.uleb128 0xb
	.string	"len"
	.value	0x28d
	.byte	0x7
	.long	0x69
	.byte	0
	.uleb128 0x2
	.long	.LASF80
	.value	0x28e
	.byte	0xf
	.long	0x2ec
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x30
	.value	0x275
	.byte	0x9
	.long	0x5f1
	.uleb128 0x2
	.long	.LASF96
	.value	0x278
	.byte	0x7
	.long	0xd5
	.byte	0
	.uleb128 0x2
	.long	.LASF97
	.value	0x27c
	.byte	0x6
	.long	0x69
	.byte	0x4
	.uleb128 0x2
	.long	.LASF104
	.value	0x27e
	.byte	0xe
	.long	0xcb
	.byte	0x8
	.uleb128 0x2
	.long	.LASF105
	.value	0x280
	.byte	0xe
	.long	0xcb
	.byte	0x10
	.uleb128 0x2
	.long	.LASF100
	.value	0x284
	.byte	0x6
	.long	0x69
	.byte	0x18
	.uleb128 0xb
	.string	"qos"
	.value	0x289
	.byte	0x6
	.long	0x69
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF99
	.value	0x28f
	.byte	0x4
	.long	0x568
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.long	.LASF106
	.value	0x290
	.byte	0x3
	.long	0x58c
	.uleb128 0x8
	.byte	0x80
	.value	0x2a5
	.byte	0x9
	.long	0x6f1
	.uleb128 0x2
	.long	.LASF96
	.value	0x2a8
	.byte	0x7
	.long	0xd5
	.byte	0
	.uleb128 0x2
	.long	.LASF97
	.value	0x2b1
	.byte	0x6
	.long	0x69
	.byte	0x4
	.uleb128 0x2
	.long	.LASF107
	.value	0x2b4
	.byte	0xe
	.long	0xcb
	.byte	0x8
	.uleb128 0x2
	.long	.LASF108
	.value	0x2b9
	.byte	0xe
	.long	0xcb
	.byte	0x10
	.uleb128 0x2
	.long	.LASF109
	.value	0x2be
	.byte	0xe
	.long	0xcb
	.byte	0x18
	.uleb128 0x2
	.long	.LASF110
	.value	0x2c1
	.byte	0xe
	.long	0xcb
	.byte	0x20
	.uleb128 0x2
	.long	.LASF111
	.value	0x2cb
	.byte	0xe
	.long	0xcb
	.byte	0x28
	.uleb128 0x2
	.long	.LASF112
	.value	0x2ce
	.byte	0x9
	.long	0x69
	.byte	0x30
	.uleb128 0x2
	.long	.LASF113
	.value	0x2d4
	.byte	0x9
	.long	0x69
	.byte	0x34
	.uleb128 0x2
	.long	.LASF114
	.value	0x2db
	.byte	0x9
	.long	0x69
	.byte	0x38
	.uleb128 0x2
	.long	.LASF115
	.value	0x2e2
	.byte	0xe
	.long	0xcb
	.byte	0x40
	.uleb128 0x2
	.long	.LASF116
	.value	0x2e8
	.byte	0xb
	.long	0x70a
	.byte	0x48
	.uleb128 0x2
	.long	.LASF117
	.value	0x2ee
	.byte	0xb
	.long	0xa7
	.byte	0x50
	.uleb128 0x2
	.long	.LASF118
	.value	0x2f5
	.byte	0x11
	.long	0x73c
	.byte	0x58
	.uleb128 0x2
	.long	.LASF119
	.value	0x2fb
	.byte	0x8
	.long	0xa7
	.byte	0x60
	.uleb128 0x2
	.long	.LASF120
	.value	0x302
	.byte	0x6
	.long	0x69
	.byte	0x68
	.uleb128 0x2
	.long	.LASF121
	.value	0x30b
	.byte	0x17
	.long	0x741
	.byte	0x70
	.uleb128 0x2
	.long	.LASF122
	.value	0x311
	.byte	0xf
	.long	0x54
	.byte	0x78
	.byte	0
	.uleb128 0x18
	.long	0x69
	.long	0x70a
	.uleb128 0x3
	.long	0xcb
	.uleb128 0x3
	.long	0x2e
	.uleb128 0x3
	.long	0xa7
	.byte	0
	.uleb128 0x5
	.long	0x6f1
	.uleb128 0x18
	.long	0x54
	.long	0x737
	.uleb128 0x3
	.long	0xcb
	.uleb128 0x3
	.long	0xa9
	.uleb128 0x3
	.long	0x54
	.uleb128 0x3
	.long	0x737
	.uleb128 0x3
	.long	0x54
	.uleb128 0x3
	.long	0xa7
	.byte	0
	.uleb128 0x5
	.long	0x41
	.uleb128 0x5
	.long	0x70f
	.uleb128 0x5
	.long	0x48
	.uleb128 0x9
	.long	.LASF123
	.value	0x312
	.byte	0x3
	.long	0x5fd
	.uleb128 0x8
	.byte	0x10
	.value	0x31d
	.byte	0x9
	.long	0x776
	.uleb128 0x2
	.long	.LASF124
	.value	0x31f
	.byte	0xe
	.long	0xcb
	.byte	0
	.uleb128 0x2
	.long	.LASF82
	.value	0x320
	.byte	0xe
	.long	0xcb
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF125
	.value	0x321
	.byte	0x3
	.long	0x752
	.uleb128 0xd
	.long	0x776
	.uleb128 0x8
	.byte	0x10
	.value	0x3b7
	.byte	0x2
	.long	0x7b8
	.uleb128 0x2
	.long	.LASF126
	.value	0x3b9
	.byte	0xf
	.long	0xcb
	.byte	0
	.uleb128 0x2
	.long	.LASF127
	.value	0x3ba
	.byte	0x7
	.long	0x69
	.byte	0x8
	.uleb128 0x2
	.long	.LASF128
	.value	0x3bb
	.byte	0x7
	.long	0x69
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.byte	0x10
	.value	0x3c0
	.byte	0x2
	.long	0x7dc
	.uleb128 0xb
	.string	"len"
	.value	0x3c2
	.byte	0x7
	.long	0x69
	.byte	0
	.uleb128 0x2
	.long	.LASF80
	.value	0x3c3
	.byte	0xf
	.long	0x2ec
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x98
	.value	0x33e
	.byte	0x9
	.long	0x8f7
	.uleb128 0x2
	.long	.LASF96
	.value	0x341
	.byte	0x7
	.long	0xd5
	.byte	0
	.uleb128 0x2
	.long	.LASF97
	.value	0x34c
	.byte	0x6
	.long	0x69
	.byte	0x4
	.uleb128 0x2
	.long	.LASF129
	.value	0x356
	.byte	0x6
	.long	0x69
	.byte	0x8
	.uleb128 0x2
	.long	.LASF130
	.value	0x36c
	.byte	0x6
	.long	0x69
	.byte	0xc
	.uleb128 0x2
	.long	.LASF131
	.value	0x376
	.byte	0x6
	.long	0x69
	.byte	0x10
	.uleb128 0x2
	.long	.LASF132
	.value	0x37c
	.byte	0x1a
	.long	0x8f7
	.byte	0x18
	.uleb128 0x2
	.long	.LASF133
	.value	0x382
	.byte	0xe
	.long	0xcb
	.byte	0x20
	.uleb128 0x2
	.long	.LASF134
	.value	0x388
	.byte	0xe
	.long	0xcb
	.byte	0x28
	.uleb128 0x2
	.long	.LASF135
	.value	0x38c
	.byte	0x6
	.long	0x69
	.byte	0x30
	.uleb128 0x2
	.long	.LASF136
	.value	0x394
	.byte	0x6
	.long	0x69
	.byte	0x34
	.uleb128 0xb
	.string	"ssl"
	.value	0x399
	.byte	0x19
	.long	0x8fc
	.byte	0x38
	.uleb128 0x2
	.long	.LASF137
	.value	0x39d
	.byte	0x6
	.long	0x69
	.byte	0x40
	.uleb128 0x2
	.long	.LASF138
	.value	0x3ab
	.byte	0xf
	.long	0x901
	.byte	0x48
	.uleb128 0x2
	.long	.LASF127
	.value	0x3b3
	.byte	0x6
	.long	0x69
	.byte	0x50
	.uleb128 0x2
	.long	.LASF139
	.value	0x3bc
	.byte	0x4
	.long	0x787
	.byte	0x58
	.uleb128 0x2
	.long	.LASF140
	.value	0x3c4
	.byte	0x4
	.long	0x7b8
	.byte	0x68
	.uleb128 0x2
	.long	.LASF141
	.value	0x3c8
	.byte	0x6
	.long	0x69
	.byte	0x78
	.uleb128 0x2
	.long	.LASF142
	.value	0x3cc
	.byte	0x6
	.long	0x69
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF143
	.value	0x3d0
	.byte	0x1e
	.long	0x906
	.byte	0x80
	.uleb128 0x2
	.long	.LASF144
	.value	0x3d6
	.byte	0xe
	.long	0xcb
	.byte	0x88
	.uleb128 0x2
	.long	.LASF145
	.value	0x3da
	.byte	0xe
	.long	0xcb
	.byte	0x90
	.byte	0
	.uleb128 0x5
	.long	0x5f1
	.uleb128 0x5
	.long	0x746
	.uleb128 0x5
	.long	0xae
	.uleb128 0x5
	.long	0x782
	.uleb128 0x9
	.long	.LASF146
	.value	0x3db
	.byte	0x3
	.long	0x7dc
	.uleb128 0x12
	.long	.LASF147
	.byte	0xb0
	.byte	0xa
	.byte	0x53
	.byte	0x8
	.long	0xab8
	.uleb128 0x1
	.long	.LASF148
	.byte	0xa
	.byte	0x55
	.byte	0xe
	.long	0xcb
	.byte	0
	.uleb128 0x1
	.long	.LASF149
	.byte	0xa
	.byte	0x56
	.byte	0xe
	.long	0xcb
	.byte	0x8
	.uleb128 0x1
	.long	.LASF150
	.byte	0xa
	.byte	0x57
	.byte	0xe
	.long	0xcb
	.byte	0x10
	.uleb128 0x1
	.long	.LASF151
	.byte	0xa
	.byte	0x58
	.byte	0xe
	.long	0xcb
	.byte	0x18
	.uleb128 0x1
	.long	.LASF152
	.byte	0xa
	.byte	0x59
	.byte	0xe
	.long	0xcb
	.byte	0x20
	.uleb128 0x1
	.long	.LASF153
	.byte	0xa
	.byte	0x5a
	.byte	0xe
	.long	0xcb
	.byte	0x28
	.uleb128 0x1
	.long	.LASF154
	.byte	0xa
	.byte	0x5b
	.byte	0xe
	.long	0xcb
	.byte	0x30
	.uleb128 0x1
	.long	.LASF155
	.byte	0xa
	.byte	0x5d
	.byte	0xb
	.long	0x54
	.byte	0x38
	.uleb128 0x1
	.long	.LASF156
	.byte	0xa
	.byte	0x5e
	.byte	0xb
	.long	0x54
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF157
	.byte	0xa
	.byte	0x5f
	.byte	0xb
	.long	0x54
	.byte	0x40
	.uleb128 0x1
	.long	.LASF158
	.byte	0xa
	.byte	0x60
	.byte	0xb
	.long	0x54
	.byte	0x44
	.uleb128 0x1
	.long	.LASF159
	.byte	0xa
	.byte	0x61
	.byte	0xb
	.long	0x54
	.byte	0x48
	.uleb128 0x1
	.long	.LASF160
	.byte	0xa
	.byte	0x62
	.byte	0xb
	.long	0x54
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF161
	.byte	0xa
	.byte	0x63
	.byte	0xb
	.long	0x54
	.byte	0x50
	.uleb128 0x1
	.long	.LASF162
	.byte	0xa
	.byte	0x64
	.byte	0xb
	.long	0x54
	.byte	0x54
	.uleb128 0x1
	.long	.LASF163
	.byte	0xa
	.byte	0x65
	.byte	0xb
	.long	0x54
	.byte	0x58
	.uleb128 0x1
	.long	.LASF164
	.byte	0xa
	.byte	0x66
	.byte	0xb
	.long	0x54
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF165
	.byte	0xa
	.byte	0x67
	.byte	0x8
	.long	0xab8
	.byte	0x60
	.uleb128 0x1
	.long	.LASF166
	.byte	0xa
	.byte	0x68
	.byte	0xb
	.long	0x54
	.byte	0x64
	.uleb128 0x1
	.long	.LASF167
	.byte	0xa
	.byte	0x69
	.byte	0xb
	.long	0x54
	.byte	0x68
	.uleb128 0x1
	.long	.LASF168
	.byte	0xa
	.byte	0x6a
	.byte	0x8
	.long	0xab8
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF169
	.byte	0xa
	.byte	0x6b
	.byte	0xb
	.long	0x54
	.byte	0x70
	.uleb128 0x1
	.long	.LASF170
	.byte	0xa
	.byte	0x6d
	.byte	0xb
	.long	0x54
	.byte	0x74
	.uleb128 0x1
	.long	.LASF171
	.byte	0xa
	.byte	0x6e
	.byte	0x8
	.long	0xabf
	.byte	0x78
	.uleb128 0x1
	.long	.LASF172
	.byte	0xa
	.byte	0x6f
	.byte	0x8
	.long	0xabf
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF173
	.byte	0xa
	.byte	0x71
	.byte	0x6
	.long	0xab8
	.byte	0x80
	.uleb128 0x1
	.long	.LASF174
	.byte	0xa
	.byte	0x72
	.byte	0xe
	.long	0xcb
	.byte	0x88
	.uleb128 0x1
	.long	.LASF175
	.byte	0xa
	.byte	0x73
	.byte	0xe
	.long	0xcb
	.byte	0x90
	.uleb128 0x1
	.long	.LASF176
	.byte	0xa
	.byte	0x74
	.byte	0x6
	.long	0x69
	.byte	0x98
	.uleb128 0x1
	.long	.LASF177
	.byte	0xa
	.byte	0x75
	.byte	0xe
	.long	0xcb
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF178
	.byte	0xa
	.byte	0x77
	.byte	0xe
	.long	0xcb
	.byte	0xa8
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.long	.LASF179
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.long	.LASF180
	.uleb128 0x16
	.long	.LASF182
	.byte	0xa
	.byte	0x7f
	.byte	0x17
	.long	0xad2
	.uleb128 0x5
	.long	0x917
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.long	.LASF183
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.long	.LASF184
	.uleb128 0x10
	.byte	0x40
	.byte	0xc
	.byte	0x32
	.byte	0x9
	.long	0xb64
	.uleb128 0x1
	.long	.LASF185
	.byte	0xc
	.byte	0x33
	.byte	0xb
	.long	0x54
	.byte	0
	.uleb128 0x1
	.long	.LASF186
	.byte	0xc
	.byte	0x34
	.byte	0x9
	.long	0xb64
	.byte	0x8
	.uleb128 0x1
	.long	.LASF187
	.byte	0xc
	.byte	0x35
	.byte	0x9
	.long	0xb64
	.byte	0x10
	.uleb128 0x1
	.long	.LASF188
	.byte	0xc
	.byte	0x36
	.byte	0x9
	.long	0xb64
	.byte	0x18
	.uleb128 0x1
	.long	.LASF189
	.byte	0xc
	.byte	0x37
	.byte	0x9
	.long	0xb64
	.byte	0x20
	.uleb128 0x17
	.string	"LAE"
	.byte	0xc
	.byte	0x38
	.byte	0x9
	.long	0xb64
	.byte	0x28
	.uleb128 0x1
	.long	.LASF190
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.long	0xad7
	.byte	0x30
	.uleb128 0x1
	.long	.LASF191
	.byte	0xc
	.byte	0x3a
	.byte	0xb
	.long	0x54
	.byte	0x38
	.uleb128 0x1
	.long	.LASF192
	.byte	0xc
	.byte	0x3b
	.byte	0x6
	.long	0x69
	.byte	0x3c
	.byte	0
	.uleb128 0x5
	.long	0xabf
	.uleb128 0x7
	.long	.LASF193
	.byte	0xc
	.byte	0x3c
	.byte	0x3
	.long	0xae5
	.uleb128 0xc
	.long	.LASF202
	.byte	0x1a
	.byte	0x13
	.long	0x4c0
	.uleb128 0x9
	.byte	0x3
	.quad	client
	.uleb128 0x23
	.long	.LASF210
	.byte	0x9
	.value	0x593
	.byte	0xd
	.long	0xb9d
	.uleb128 0x3
	.long	0xb9d
	.byte	0
	.uleb128 0x5
	.long	0x4c0
	.uleb128 0xa
	.long	.LASF194
	.byte	0x9
	.value	0x43b
	.byte	0xc
	.long	0x69
	.long	0xbbe
	.uleb128 0x3
	.long	0x4c0
	.uleb128 0x3
	.long	0x69
	.byte	0
	.uleb128 0xa
	.long	.LASF195
	.byte	0x9
	.value	0x505
	.byte	0xc
	.long	0x69
	.long	0xbe4
	.uleb128 0x3
	.long	0x4c0
	.uleb128 0x3
	.long	0xcb
	.uleb128 0x3
	.long	0x563
	.uleb128 0x3
	.long	0xbe4
	.byte	0
	.uleb128 0x5
	.long	0x4cc
	.uleb128 0xa
	.long	.LASF196
	.byte	0xd
	.value	0x197
	.byte	0xf
	.long	0x2e
	.long	0xc00
	.uleb128 0x3
	.long	0xcb
	.byte	0
	.uleb128 0xa
	.long	.LASF197
	.byte	0xb
	.value	0x16d
	.byte	0xc
	.long	0x69
	.long	0xc1d
	.uleb128 0x3
	.long	0xa9
	.uleb128 0x3
	.long	0xcb
	.uleb128 0x19
	.byte	0
	.uleb128 0x24
	.long	.LASF198
	.byte	0xe
	.byte	0x4c
	.byte	0xf
	.long	0xbf
	.long	0xc33
	.uleb128 0x3
	.long	0xc33
	.byte	0
	.uleb128 0x5
	.long	0xbf
	.uleb128 0xa
	.long	.LASF199
	.byte	0x9
	.value	0x405
	.byte	0xc
	.long	0x69
	.long	0xc54
	.uleb128 0x3
	.long	0x4c0
	.uleb128 0x3
	.long	0xc54
	.byte	0
	.uleb128 0x5
	.long	0x90b
	.uleb128 0xa
	.long	.LASF200
	.byte	0xb
	.value	0x165
	.byte	0xc
	.long	0x69
	.long	0xc76
	.uleb128 0x3
	.long	0x2cd
	.uleb128 0x3
	.long	0xd0
	.uleb128 0x19
	.byte	0
	.uleb128 0xa
	.long	.LASF201
	.byte	0x9
	.value	0x226
	.byte	0xc
	.long	0x69
	.long	0xca1
	.uleb128 0x3
	.long	0xb9d
	.uleb128 0x3
	.long	0xcb
	.uleb128 0x3
	.long	0xcb
	.uleb128 0x3
	.long	0x69
	.uleb128 0x3
	.long	0xa7
	.byte	0
	.uleb128 0x25
	.long	.LASF211
	.byte	0x1
	.byte	0x57
	.byte	0x5
	.long	0xab8
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd1
	.uleb128 0x11
	.string	"rc"
	.byte	0x58
	.byte	0x9
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF212
	.byte	0x1
	.byte	0x34
	.byte	0x5
	.long	0xab8
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xd59
	.uleb128 0x1a
	.long	.LASF203
	.byte	0x1a
	.long	0xd59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1a
	.long	.LASF185
	.byte	0x26
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0xc
	.long	.LASF99
	.byte	0x35
	.byte	0x7
	.long	0xd5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x11
	.string	"ts"
	.byte	0x36
	.byte	0x18
	.long	0x2e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0xc
	.long	.LASF204
	.byte	0x41
	.byte	0x18
	.long	0x557
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0xc
	.long	.LASF205
	.byte	0x42
	.byte	0x1e
	.long	0x4cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x11
	.string	"rc"
	.byte	0x47
	.byte	0x9
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.uleb128 0x5
	.long	0xb69
	.uleb128 0xe
	.long	0xb3
	.long	0xd6e
	.uleb128 0xf
	.long	0x3a
	.byte	0x77
	.byte	0
	.uleb128 0x27
	.long	.LASF213
	.byte	0x1
	.byte	0x1c
	.byte	0x5
	.long	0xab8
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.long	.LASF206
	.byte	0x1d
	.byte	0x1f
	.long	0x90b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x11
	.string	"rc"
	.byte	0x1e
	.byte	0x9
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 52
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF203:
	.string	"levels"
.LASF192:
	.string	"direction"
.LASF134:
	.string	"password"
.LASF67:
	.string	"MQTTPROPERTY_CODE_RESPONSE_INFORMATION"
.LASF211:
	.string	"mqtt_end"
.LASF160:
	.string	"segment_size"
.LASF35:
	.string	"_shortbuf"
.LASF70:
	.string	"MQTTPROPERTY_CODE_RECEIVE_MAXIMUM"
.LASF121:
	.string	"protos"
.LASF208:
	.string	"_IO_lock_t"
.LASF196:
	.string	"strlen"
.LASF181:
	.string	"stderr"
.LASF24:
	.string	"_IO_buf_end"
.LASF69:
	.string	"MQTTPROPERTY_CODE_REASON_STRING"
.LASF105:
	.string	"message"
.LASF87:
	.string	"MQTTProperty"
.LASF120:
	.string	"disableDefaultTrustStore"
.LASF22:
	.string	"_IO_write_end"
.LASF5:
	.string	"unsigned int"
.LASF116:
	.string	"ssl_error_cb"
.LASF40:
	.string	"_freeres_list"
.LASF155:
	.string	"sample_rate"
.LASF62:
	.string	"MQTTPROPERTY_CODE_AUTHENTICATION_METHOD"
.LASF143:
	.string	"httpHeaders"
.LASF16:
	.string	"_flags"
.LASF56:
	.string	"MQTTPROPERTY_CODE_CORRELATION_DATA"
.LASF75:
	.string	"MQTTPROPERTY_CODE_USER_PROPERTY"
.LASF127:
	.string	"MQTTVersion"
.LASF170:
	.string	"calibration_time"
.LASF89:
	.string	"MQTTProperties"
.LASF28:
	.string	"_markers"
.LASF141:
	.string	"maxInflightMessages"
.LASF173:
	.string	"mqtt_enable"
.LASF176:
	.string	"mqtt_qos"
.LASF125:
	.string	"MQTTClient_nameValue"
.LASF101:
	.string	"msgid"
.LASF161:
	.string	"levels_record_period"
.LASF97:
	.string	"struct_version"
.LASF207:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF110:
	.string	"privateKeyPassword"
.LASF191:
	.string	"le_counter"
.LASF77:
	.string	"MQTTPROPERTY_CODE_WILDCARD_SUBSCRIPTION_AVAILABLE"
.LASF27:
	.string	"_IO_save_end"
.LASF59:
	.string	"MQTTPROPERTY_CODE_ASSIGNED_CLIENT_IDENTIFIER"
.LASF115:
	.string	"CApath"
.LASF180:
	.string	"float"
.LASF68:
	.string	"MQTTPROPERTY_CODE_SERVER_REFERENCE"
.LASF47:
	.string	"_IO_codecvt"
.LASF90:
	.string	"count"
.LASF50:
	.string	"long long unsigned int"
.LASF95:
	.string	"MQTTClient_deliveryToken"
.LASF54:
	.string	"MQTTPROPERTY_CODE_CONTENT_TYPE"
.LASF91:
	.string	"max_count"
.LASF26:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_offset"
.LASF198:
	.string	"time"
.LASF154:
	.string	"data_output_format"
.LASF82:
	.string	"value"
.LASF30:
	.string	"_fileno"
.LASF74:
	.string	"MQTTPROPERTY_CODE_RETAIN_AVAILABLE"
.LASF195:
	.string	"MQTTClient_publishMessage"
.LASF145:
	.string	"httpsProxy"
.LASF132:
	.string	"will"
.LASF9:
	.string	"size_t"
.LASF99:
	.string	"payload"
.LASF52:
	.string	"MQTTPROPERTY_CODE_PAYLOAD_FORMAT_INDICATOR"
.LASF19:
	.string	"_IO_read_base"
.LASF179:
	.string	"_Bool"
.LASF65:
	.string	"MQTTPROPERTY_CODE_WILL_DELAY_INTERVAL"
.LASF63:
	.string	"MQTTPROPERTY_CODE_AUTHENTICATION_DATA"
.LASF144:
	.string	"httpProxy"
.LASF10:
	.string	"__uint64_t"
.LASF129:
	.string	"keepAliveInterval"
.LASF76:
	.string	"MQTTPROPERTY_CODE_MAXIMUM_PACKET_SIZE"
.LASF98:
	.string	"payloadlen"
.LASF185:
	.string	"segment_number"
.LASF60:
	.string	"MQTTPROPERTY_CODE_ASSIGNED_CLIENT_IDENTIFER"
.LASF178:
	.string	"server_socket"
.LASF152:
	.string	"output_filename"
.LASF71:
	.string	"MQTTPROPERTY_CODE_TOPIC_ALIAS_MAXIMUM"
.LASF14:
	.string	"char"
.LASF43:
	.string	"_mode"
.LASF159:
	.string	"segment_duration"
.LASF46:
	.string	"_IO_marker"
.LASF150:
	.string	"input_file"
.LASF17:
	.string	"_IO_read_ptr"
.LASF58:
	.string	"MQTTPROPERTY_CODE_SESSION_EXPIRY_INTERVAL"
.LASF80:
	.string	"data"
.LASF118:
	.string	"ssl_psk_cb"
.LASF79:
	.string	"MQTTPROPERTY_CODE_SHARED_SUBSCRIPTION_AVAILABLE"
.LASF202:
	.string	"client"
.LASF189:
	.string	"LAFmin"
.LASF15:
	.string	"time_t"
.LASF188:
	.string	"LAFmax"
.LASF128:
	.string	"sessionPresent"
.LASF151:
	.string	"output_path"
.LASF109:
	.string	"privateKey"
.LASF130:
	.string	"cleansession"
.LASF20:
	.string	"_IO_write_base"
.LASF49:
	.string	"long long int"
.LASF100:
	.string	"retained"
.LASF113:
	.string	"sslVersion"
.LASF157:
	.string	"bits_per_sample"
.LASF25:
	.string	"_IO_save_base"
.LASF123:
	.string	"MQTTClient_SSLOptions"
.LASF156:
	.string	"channels"
.LASF194:
	.string	"MQTTClient_disconnect"
.LASF108:
	.string	"keyStore"
.LASF73:
	.string	"MQTTPROPERTY_CODE_MAXIMUM_QOS"
.LASF190:
	.string	"le_accumulator"
.LASF138:
	.string	"serverURIs"
.LASF164:
	.string	"audio_file_duration"
.LASF137:
	.string	"serverURIcount"
.LASF41:
	.string	"_freeres_buf"
.LASF184:
	.string	"long double"
.LASF66:
	.string	"MQTTPROPERTY_CODE_REQUEST_RESPONSE_INFORMATION"
.LASF53:
	.string	"MQTTPROPERTY_CODE_MESSAGE_EXPIRY_INTERVAL"
.LASF167:
	.string	"data_file_duration"
.LASF42:
	.string	"__pad5"
.LASF117:
	.string	"ssl_error_context"
.LASF165:
	.string	"audio_record_ok"
.LASF199:
	.string	"MQTTClient_connect"
.LASF177:
	.string	"mqtt_device_credential"
.LASF61:
	.string	"MQTTPROPERTY_CODE_SERVER_KEEP_ALIVE"
.LASF34:
	.string	"_vtable_offset"
.LASF78:
	.string	"MQTTPROPERTY_CODE_SUBSCRIPTION_IDENTIFIERS_AVAILABLE"
.LASF81:
	.string	"MQTTLenString"
.LASF93:
	.string	"array"
.LASF210:
	.string	"MQTTClient_destroy"
.LASF193:
	.string	"Levels"
.LASF153:
	.string	"audio_output_format"
.LASF197:
	.string	"sprintf"
.LASF205:
	.string	"token"
.LASF148:
	.string	"identification"
.LASF96:
	.string	"struct_id"
.LASF147:
	.string	"config"
.LASF18:
	.string	"_IO_read_end"
.LASF126:
	.string	"serverURI"
.LASF111:
	.string	"enabledCipherSuites"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF133:
	.string	"username"
.LASF92:
	.string	"length"
.LASF139:
	.string	"returned"
.LASF48:
	.string	"_IO_wide_data"
.LASF51:
	.string	"uint64_t"
.LASF158:
	.string	"block_size"
.LASF200:
	.string	"fprintf"
.LASF171:
	.string	"calibration_reference"
.LASF201:
	.string	"MQTTClient_create"
.LASF124:
	.string	"name"
.LASF213:
	.string	"mqtt_begin"
.LASF206:
	.string	"conn_opts"
.LASF86:
	.string	"identifier"
.LASF172:
	.string	"calibration_delta"
.LASF39:
	.string	"_wide_data"
.LASF140:
	.string	"binarypwd"
.LASF36:
	.string	"_lock"
.LASF169:
	.string	"background_duration"
.LASF2:
	.string	"long unsigned int"
.LASF32:
	.string	"_old_offset"
.LASF88:
	.string	"_IO_FILE"
.LASF168:
	.string	"data_record_ok"
.LASF212:
	.string	"mqtt_publish"
.LASF83:
	.string	"byte"
.LASF136:
	.string	"retryInterval"
.LASF57:
	.string	"MQTTPROPERTY_CODE_SUBSCRIPTION_IDENTIFIER"
.LASF104:
	.string	"topicName"
.LASF3:
	.string	"unsigned char"
.LASF103:
	.string	"MQTTClient_message"
.LASF21:
	.string	"_IO_write_ptr"
.LASF163:
	.string	"audio_loop_recording"
.LASF175:
	.string	"mqtt_topic"
.LASF107:
	.string	"trustStore"
.LASF182:
	.string	"config_struct"
.LASF13:
	.string	"__time_t"
.LASF149:
	.string	"input_device"
.LASF38:
	.string	"_codecvt"
.LASF174:
	.string	"mqtt_broker"
.LASF55:
	.string	"MQTTPROPERTY_CODE_RESPONSE_TOPIC"
.LASF72:
	.string	"MQTTPROPERTY_CODE_TOPIC_ALIAS"
.LASF11:
	.string	"__off_t"
.LASF112:
	.string	"enableServerCertAuth"
.LASF64:
	.string	"MQTTPROPERTY_CODE_REQUEST_PROBLEM_INFORMATION"
.LASF6:
	.string	"signed char"
.LASF106:
	.string	"MQTTClient_willOptions"
.LASF146:
	.string	"MQTTClient_connectOptions"
.LASF4:
	.string	"short unsigned int"
.LASF142:
	.string	"cleanstart"
.LASF102:
	.string	"properties"
.LASF209:
	.string	"MQTTPropertyCodes"
.LASF186:
	.string	"LAeq"
.LASF162:
	.string	"run_duration"
.LASF183:
	.string	"double"
.LASF204:
	.string	"pubmsg"
.LASF29:
	.string	"_chain"
.LASF114:
	.string	"verify"
.LASF45:
	.string	"FILE"
.LASF119:
	.string	"ssl_psk_context"
.LASF135:
	.string	"connectTimeout"
.LASF31:
	.string	"_flags2"
.LASF122:
	.string	"protos_len"
.LASF33:
	.string	"_cur_column"
.LASF166:
	.string	"data_loop_recording"
.LASF187:
	.string	"LApeak"
.LASF84:
	.string	"integer2"
.LASF12:
	.string	"__off64_t"
.LASF85:
	.string	"integer4"
.LASF44:
	.string	"_unused2"
.LASF23:
	.string	"_IO_buf_base"
.LASF94:
	.string	"MQTTClient"
.LASF131:
	.string	"reliable"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/mqtt.c"
.LASF1:
	.string	"/home/aluno/Desktop/sound_meter-master_v03"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
