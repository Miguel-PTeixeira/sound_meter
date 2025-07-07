	.file	"ring.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v02" "src/ring.c"
	.globl	ring_float_new
	.type	ring_float_new, @function
ring_float_new:
.LFB6:
	.file 1 "src/ring.c"
	.loc 1 21 41
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 22 42
	movq	-24(%rbp), %rax
	addq	$10, %rax
	.loc 1 22 21
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 23 5
	cmpq	$0, -8(%rbp)
	jne	.L2
	.loc 1 24 9
	movl	$0, %eax
	jmp	.L3
.L2:
	.loc 1 25 13
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 1 26 26
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	.loc 1 26 24
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 26 18
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 26 12
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 27 14
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	.loc 1 27 32
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 27 26
	salq	$2, %rax
	addq	%rax, %rdx
	.loc 1 27 12
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 1 28 16
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 1 29 9
	movq	-8(%rbp), %rax
.L3:
	.loc 1 30 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ring_float_new, .-ring_float_new
	.globl	ring_float_destroy
	.type	ring_float_destroy, @function
ring_float_destroy:
.LFB7:
	.loc 1 32 43
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 33 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 34 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ring_float_destroy, .-ring_float_destroy
	.globl	ring_float_write
	.type	ring_float_write, @function
ring_float_write:
.LFB8:
	.loc 1 36 54
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	.loc 1 37 7
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 37 13
	movss	-12(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 1 38 10
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 38 22
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 38 5
	cmpq	%rax, %rdx
	jnb	.L6
	.loc 1 39 7
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 39 13
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L7
.L6:
	.loc 1 41 15
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	.loc 1 41 13
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L7:
	.loc 1 43 10
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 43 27
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 43 5
	cmpq	%rax, %rdx
	jne	.L8
	.loc 1 44 19
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 44 13
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 47 1
	jmp	.L10
.L8:
	.loc 1 46 7
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 46 16
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
.L10:
	.loc 1 47 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ring_float_write, .-ring_float_write
	.globl	ring_float_read
	.type	ring_float_read, @function
ring_float_read:
.LFB9:
	.loc 1 49 41
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 50 21
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 50 8
	movss	(%rax), %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 1 51 10
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 51 22
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 51 5
	cmpq	%rax, %rdx
	jnb	.L12
	.loc 1 52 7
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 52 13
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L13
.L12:
	.loc 1 54 15
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rdx
	.loc 1 54 13
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
.L13:
	.loc 1 55 6
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 55 15
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 56 9
	movss	-4(%rbp), %xmm0
	.loc 1 57 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ring_float_read, .-ring_float_read
	.globl	ring_float_empty
	.type	ring_float_empty, @function
ring_float_empty:
.LFB10:
	.loc 1 59 40
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 60 13
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 60 23
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	.loc 1 61 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ring_float_empty, .-ring_float_empty
	.globl	ring_float_counter
	.type	ring_float_counter, @function
ring_float_counter:
.LFB11:
	.loc 1 63 42
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 64 13
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 65 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ring_float_counter, .-ring_float_counter
	.globl	ring_float_full
	.type	ring_float_full, @function
ring_float_full:
.LFB12:
	.loc 1 67 39
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 68 13
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 68 30
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 68 23
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	.loc 1 69 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ring_float_full, .-ring_float_full
.Letext0:
	.file 2 "src/ring.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 4 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2a6
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x3
	.byte	0xd6
	.byte	0x1b
	.long	0x3a
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0xc
	.byte	0x8
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.long	.LASF12
	.uleb128 0xd
	.byte	0x28
	.byte	0x2
	.byte	0x16
	.byte	0x9
	.long	0xe2
	.uleb128 0x4
	.string	"put"
	.byte	0x17
	.byte	0x9
	.long	0xe2
	.byte	0
	.uleb128 0x4
	.string	"get"
	.byte	0x17
	.byte	0xf
	.long	0xe2
	.byte	0x8
	.uleb128 0x5
	.long	.LASF13
	.byte	0x18
	.byte	0x9
	.long	0x2e
	.byte	0x10
	.uleb128 0x5
	.long	.LASF14
	.byte	0x19
	.byte	0x9
	.long	0x2e
	.byte	0x18
	.uleb128 0x4
	.string	"end"
	.byte	0x1a
	.byte	0x9
	.long	0xe2
	.byte	0x20
	.uleb128 0x5
	.long	.LASF15
	.byte	0x1b
	.byte	0x8
	.long	0xee
	.byte	0x28
	.byte	0
	.uleb128 0x7
	.long	0xe7
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.long	.LASF16
	.uleb128 0xe
	.long	0xe7
	.long	0xfd
	.uleb128 0xf
	.long	0x3a
	.byte	0
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0x1c
	.byte	0x3
	.long	0x90
	.uleb128 0x10
	.long	.LASF29
	.byte	0x4
	.value	0x2af
	.byte	0xd
	.long	0x11c
	.uleb128 0x8
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF30
	.byte	0x4
	.value	0x2a0
	.byte	0xe
	.long	0x79
	.long	0x133
	.uleb128 0x8
	.long	0x2e
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x43
	.byte	0x5
	.long	0x41
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x163
	.uleb128 0x2
	.long	.LASF21
	.byte	0x43
	.byte	0x21
	.long	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.long	0xfd
	.uleb128 0x3
	.long	.LASF20
	.byte	0x3f
	.byte	0x5
	.long	0x41
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x198
	.uleb128 0x2
	.long	.LASF21
	.byte	0x3f
	.byte	0x24
	.long	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.long	.LASF22
	.byte	0x3b
	.byte	0x5
	.long	0x41
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c8
	.uleb128 0x2
	.long	.LASF21
	.byte	0x3b
	.byte	0x22
	.long	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.long	.LASF23
	.byte	0x31
	.byte	0x7
	.long	0xe7
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x206
	.uleb128 0x2
	.long	.LASF21
	.byte	0x31
	.byte	0x23
	.long	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x32
	.byte	0x8
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF25
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x241
	.uleb128 0x2
	.long	.LASF21
	.byte	0x24
	.byte	0x23
	.long	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.long	.LASF24
	.byte	0x24
	.byte	0x2f
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.long	.LASF26
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x26e
	.uleb128 0x2
	.long	.LASF21
	.byte	0x20
	.byte	0x25
	.long	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF27
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.long	0x163
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF14
	.byte	0x15
	.byte	0x23
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x16
	.byte	0xe
	.long	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x5
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
	.uleb128 0x3
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
.LASF26:
	.string	"ring_float_destroy"
.LASF17:
	.string	"size_t"
.LASF24:
	.string	"value"
.LASF25:
	.string	"ring_float_write"
.LASF28:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF16:
	.string	"float"
.LASF13:
	.string	"counter"
.LASF14:
	.string	"size"
.LASF22:
	.string	"ring_float_empty"
.LASF2:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF19:
	.string	"ring_float_full"
.LASF15:
	.string	"array"
.LASF5:
	.string	"unsigned char"
.LASF27:
	.string	"ring_float_new"
.LASF18:
	.string	"Ring_float"
.LASF23:
	.string	"ring_float_read"
.LASF7:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF20:
	.string	"ring_float_counter"
.LASF29:
	.string	"free"
.LASF4:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF21:
	.string	"ring"
.LASF9:
	.string	"short int"
.LASF3:
	.string	"long int"
.LASF12:
	.string	"long double"
.LASF8:
	.string	"signed char"
.LASF30:
	.string	"malloc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/ring.c"
.LASF1:
	.string	"/home/aluno/Desktop/sound_meter-master_v02"
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
