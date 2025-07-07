	.file	"dataSorting.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v02" "src/dataSorting.c"
	.globl	create_data
	.type	create_data, @function
create_data:
.LFB6:
	.file 1 "src/dataSorting.c"
	.loc 1 8 27
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 9 24
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 10 8
	cmpq	$0, -8(%rbp)
	jne	.L2
	.loc 1 10 22 discriminator 1
	movl	$0, %eax
	.loc 1 10 22 is_stmt 0
	jmp	.L3
.L2:
	.loc 1 11 16 is_stmt 1
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc 1 12 16
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 8(%rax)
	.loc 1 13 12
	movq	-8(%rbp), %rax
.L3:
	.loc 1 14 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	create_data, .-create_data
	.globl	add_element
	.type	add_element, @function
add_element:
.LFB7:
	.loc 1 17 48
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 18 8
	cmpq	$0, -40(%rbp)
	je	.L5
	.loc 1 18 15 discriminator 2
	cmpq	$0, -48(%rbp)
	jne	.L6
.L5:
	.loc 1 18 33 discriminator 3
	movl	$0, %eax
	.loc 1 18 33 is_stmt 0
	jmp	.L7
.L6:
	.loc 1 19 17 is_stmt 1
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 22 9
	movl	$0, -20(%rbp)
	.loc 1 23 11
	jmp	.L8
.L9:
	.loc 1 24 7
	addl	$1, -20(%rbp)
	.loc 1 25 17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L8:
	.loc 1 23 19
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 23 26
	testq	%rax, %rax
	jne	.L9
	.loc 1 28 7
	cmpl	$10, -20(%rbp)
	jle	.L10
	.loc 1 29 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	remove_first_elem
.L10:
	.loc 1 33 28
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 34 8
	cmpq	$0, -8(%rbp)
	jne	.L11
	.loc 1 34 27 discriminator 1
	movl	$0, %eax
	.loc 1 34 27 is_stmt 0
	jmp	.L7
.L11:
	.loc 1 36 22 is_stmt 1
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm0
	.loc 1 36 20
	movq	-8(%rbp), %rax
	movss	%xmm0, 8(%rax)
	.loc 1 37 20
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc 1 38 19
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 39 12
	movl	$1, %eax
.L7:
	.loc 1 40 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	add_element, .-add_element
	.type	cmp_func, @function
cmp_func:
.LFB8:
	.loc 1 43 51
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 44 11
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -8(%rbp)
	.loc 1 45 11
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 1 46 16
	movss	-8(%rbp), %xmm0
	comiss	-4(%rbp), %xmm0
	seta	%al
	movzbl	%al, %edx
	.loc 1 46 28
	movss	-4(%rbp), %xmm0
	comiss	-8(%rbp), %xmm0
	seta	%al
	movzbl	%al, %eax
	.loc 1 46 22
	subl	%eax, %edx
	.loc 1 46 22 is_stmt 0 discriminator 1
	movl	%edx, %eax
	.loc 1 47 1 is_stmt 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	cmp_func, .-cmp_func
	.globl	get_percentil
	.type	get_percentil, @function
get_percentil:
.LFB9:
	.loc 1 50 54
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	.loc 1 51 8
	cmpq	$0, -40(%rbp)
	je	.L15
	.loc 1 51 15 discriminator 2
	cmpl	$0, -44(%rbp)
	js	.L15
	.loc 1 51 32 discriminator 4
	cmpl	$100, -44(%rbp)
	jle	.L16
.L15:
	.loc 1 51 59 discriminator 5
	pxor	%xmm0, %xmm0
	.loc 1 51 59 is_stmt 0
	jmp	.L17
.L16:
	.loc 1 54 9 is_stmt 1
	movl	$0, -32(%rbp)
	.loc 1 55 17
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 56 11
	jmp	.L18
.L19:
	.loc 1 57 14
	addl	$1, -32(%rbp)
	.loc 1 58 17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L18:
	.loc 1 56 12
	cmpq	$0, -16(%rbp)
	jne	.L19
	.loc 1 60 8
	cmpl	$0, -32(%rbp)
	jne	.L20
	.loc 1 60 28 discriminator 1
	pxor	%xmm0, %xmm0
	.loc 1 60 28 is_stmt 0
	jmp	.L17
.L20:
	.loc 1 63 20 is_stmt 1
	movl	-32(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 64 8
	cmpq	$0, -8(%rbp)
	jne	.L21
	.loc 1 64 24 discriminator 1
	pxor	%xmm0, %xmm0
	.loc 1 64 24 is_stmt 0
	jmp	.L17
.L21:
	.loc 1 66 13 is_stmt 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB2:
	.loc 1 67 14
	movl	$0, -28(%rbp)
	.loc 1 67 5
	jmp	.L22
.L23:
	.loc 1 68 14
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 68 27
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm0
	.loc 1 68 18
	movss	%xmm0, (%rdx)
	.loc 1 69 17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 67 33 discriminator 3
	addl	$1, -28(%rbp)
.L22:
	.loc 1 67 23 discriminator 1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L23
.LBE2:
	.loc 1 73 5
	movl	-32(%rbp), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rax
	leaq	cmp_func(%rip), %rdx
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	.loc 1 75 28
	movl	-44(%rbp), %eax
	imull	-32(%rbp), %eax
	.loc 1 75 9
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -24(%rbp)
	.loc 1 76 8
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L24
	.loc 1 76 31 discriminator 1
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
.L24:
	.loc 1 78 25
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 78 11
	movss	(%rax), %xmm0
	movss	%xmm0, -20(%rbp)
	.loc 1 79 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 80 12
	movss	-20(%rbp), %xmm0
.L17:
	.loc 1 81 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	get_percentil, .-get_percentil
	.globl	remove_first_elem
	.type	remove_first_elem, @function
remove_first_elem:
.LFB10:
	.loc 1 83 42
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 84 8
	cmpq	$0, -24(%rbp)
	je	.L29
	.loc 1 84 23 discriminator 2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 84 15 discriminator 2
	testq	%rax, %rax
	je	.L29
	.loc 1 86 17
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 87 10
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 88 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L25
.L29:
	.loc 1 84 31
	nop
.L25:
	.loc 1 89 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	remove_first_elem, .-remove_first_elem
	.globl	free_data
	.type	free_data, @function
free_data:
.LFB11:
	.loc 1 95 34
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 96 17
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 97 11
	jmp	.L31
.L32:
.LBB3:
	.loc 1 98 21
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 99 9
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 100 17
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L31:
.LBE3:
	.loc 1 97 12
	cmpq	$0, -16(%rbp)
	jne	.L32
	.loc 1 102 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	free_data, .-free_data
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/stdlib.h"
	.file 4 "src/dataSorting.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x35e
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xe
	.long	.LASF35
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x7
	.long	.LASF12
	.byte	0x2
	.byte	0xd6
	.byte	0x1b
	.long	0x3a
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0xf
	.byte	0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x11
	.long	.LASF13
	.byte	0x3
	.value	0x3b4
	.byte	0xf
	.long	0x96
	.uleb128 0x5
	.long	0x9b
	.uleb128 0x12
	.long	0x66
	.long	0xaf
	.uleb128 0x3
	.long	0xaf
	.uleb128 0x3
	.long	0xaf
	.byte	0
	.uleb128 0x5
	.long	0xb4
	.uleb128 0x13
	.uleb128 0x14
	.long	.LASF17
	.byte	0x10
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.long	0xdb
	.uleb128 0x8
	.long	.LASF14
	.byte	0xb
	.byte	0x18
	.long	0xdb
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0xc
	.byte	0xb
	.long	0xe0
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0xb5
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF16
	.uleb128 0x7
	.long	.LASF17
	.byte	0x4
	.byte	0xd
	.byte	0x3
	.long	0xb5
	.uleb128 0x9
	.long	.LASF18
	.value	0x2af
	.long	0x104
	.uleb128 0x3
	.long	0x48
	.byte	0
	.uleb128 0x9
	.long	.LASF19
	.value	0x3ca
	.long	0x124
	.uleb128 0x3
	.long	0x48
	.uleb128 0x3
	.long	0x2e
	.uleb128 0x3
	.long	0x2e
	.uleb128 0x3
	.long	0x89
	.byte	0
	.uleb128 0x15
	.long	.LASF36
	.byte	0x3
	.value	0x2a0
	.byte	0xe
	.long	0x48
	.long	0x13b
	.uleb128 0x3
	.long	0x2e
	.byte	0
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x194
	.uleb128 0x4
	.long	.LASF23
	.byte	0x5f
	.byte	0x1c
	.long	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF20
	.byte	0x60
	.byte	0x11
	.long	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1
	.long	.LASF14
	.byte	0x62
	.byte	0x15
	.long	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0xe7
	.uleb128 0xa
	.long	.LASF22
	.byte	0x53
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d2
	.uleb128 0x4
	.long	.LASF23
	.byte	0x53
	.byte	0x24
	.long	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF24
	.byte	0x56
	.byte	0x11
	.long	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF30
	.byte	0x32
	.byte	0x7
	.long	0xe0
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x274
	.uleb128 0x4
	.long	.LASF23
	.byte	0x32
	.byte	0x21
	.long	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.long	.LASF25
	.byte	0x32
	.byte	0x2b
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.long	.LASF26
	.byte	0x36
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.long	.LASF20
	.byte	0x37
	.byte	0x11
	.long	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.long	.LASF27
	.byte	0x3f
	.byte	0xc
	.long	0x274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.long	.LASF28
	.byte	0x4b
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	.LASF29
	.byte	0x4e
	.byte	0xb
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x6
	.string	"i"
	.byte	0x43
	.byte	0xe
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0xe0
	.uleb128 0x16
	.long	.LASF37
	.byte	0x1
	.byte	0x2b
	.byte	0xc
	.long	0x66
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cc
	.uleb128 0xd
	.string	"a"
	.byte	0x21
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"b"
	.byte	0x30
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"fa"
	.byte	0x2c
	.byte	0xb
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"fb"
	.byte	0x2d
	.byte	0xb
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	.LASF31
	.byte	0x11
	.byte	0x5
	.long	0x66
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x334
	.uleb128 0x4
	.long	.LASF23
	.byte	0x11
	.byte	0x1d
	.long	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.long	.LASF32
	.byte	0x11
	.byte	0x29
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.long	.LASF20
	.byte	0x13
	.byte	0x11
	.long	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.long	.LASF33
	.byte	0x16
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF34
	.byte	0x21
	.byte	0x11
	.long	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.long	.LASF38
	.byte	0x1
	.byte	0x8
	.byte	0xd
	.long	0x194
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.long	.LASF15
	.byte	0x9
	.byte	0x11
	.long	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 43
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
.LASF37:
	.string	"cmp_func"
.LASF12:
	.string	"size_t"
.LASF14:
	.string	"next"
.LASF31:
	.string	"add_element"
.LASF20:
	.string	"current"
.LASF32:
	.string	"value"
.LASF26:
	.string	"count"
.LASF35:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF16:
	.string	"float"
.LASF15:
	.string	"data"
.LASF19:
	.string	"qsort"
.LASF30:
	.string	"get_percentil"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF27:
	.string	"array"
.LASF4:
	.string	"unsigned char"
.LASF24:
	.string	"to_remove"
.LASF23:
	.string	"head"
.LASF3:
	.string	"unsigned int"
.LASF21:
	.string	"free_data"
.LASF11:
	.string	"long long unsigned int"
.LASF29:
	.string	"result"
.LASF18:
	.string	"free"
.LASF10:
	.string	"long long int"
.LASF13:
	.string	"__compar_fn_t"
.LASF17:
	.string	"DataL_node"
.LASF28:
	.string	"index"
.LASF38:
	.string	"create_data"
.LASF25:
	.string	"percentil"
.LASF7:
	.string	"short int"
.LASF34:
	.string	"new_node"
.LASF8:
	.string	"long int"
.LASF9:
	.string	"char"
.LASF6:
	.string	"signed char"
.LASF33:
	.string	"size"
.LASF36:
	.string	"malloc"
.LASF22:
	.string	"remove_first_elem"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/dataSorting.c"
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
