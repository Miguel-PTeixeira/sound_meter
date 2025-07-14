	.file	"process.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v03_1" "src/process.c"
	.type	linear_to_decibel, @function
linear_to_decibel:
.LFB6:
	.file 1 "src/process.h"
	.loc 1 41 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	.loc 1 42 31
	pxor	%xmm1, %xmm1
	cvtss2sd	-4(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	.loc 1 42 17
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	log10@PLT
	.loc 1 42 15 discriminator 1
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	.loc 1 43 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	linear_to_decibel, .-linear_to_decibel
	.data
	.align 4
	.type	beginning, @object
	.size	beginning, 4
beginning:
	.long	1
	.text
	.globl	lae_average_create
	.type	lae_average_create, @function
lae_average_create:
.LFB8:
	.file 2 "src/process.c"
	.loc 2 36 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 41 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	lae_average_create, .-lae_average_create
	.globl	lae_average_destroy
	.type	lae_average_destroy, @function
lae_average_destroy:
.LFB9:
	.loc 2 44 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 45 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	lae_average_destroy, .-lae_average_destroy
	.globl	lae_average
	.type	lae_average, @function
lae_average:
.LFB10:
	.loc 2 56 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	.loc 2 57 8
	movq	-8(%rbp), %rax
	movsd	80(%rax), %xmm1
	.loc 2 57 25
	pxor	%xmm0, %xmm0
	cvtss2sd	-12(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 80(%rax)
	.loc 2 58 8
	movq	-8(%rbp), %rax
	movl	88(%rax), %eax
	.loc 2 58 21
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 88(%rax)
	.loc 2 59 15
	movq	-8(%rbp), %rax
	movsd	80(%rax), %xmm1
	.loc 2 59 40
	movq	-8(%rbp), %rax
	movl	88(%rax), %eax
	.loc 2 59 32
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L6
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L7
.L6:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L7:
	divsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	.loc 2 60 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	lae_average, .-lae_average
	.globl	percentil_create
	.type	percentil_create, @function
percentil_create:
.LFB11:
	.loc 2 63 31
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 64 46
	movq	config_struct(%rip), %rax
	movl	112(%rax), %eax
	.loc 2 64 84
	movq	config_struct(%rip), %rdx
	movl	72(%rdx), %edx
	.loc 2 64 103
	movl	%edx, %edx
	imulq	$274877907, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	shrl	$6, %ecx
	.loc 2 64 68
	movl	$0, %edx
	divl	%ecx
	.loc 2 64 6
	movl	%eax, -12(%rbp)
	.loc 2 66 45
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	.loc 2 66 20
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 67 5
	cmpq	$0, -8(%rbp)
	jne	.L10
	.loc 2 69 9
	movl	$0, %eax
	jmp	.L11
.L10:
	.loc 2 71 12
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	.loc 2 72 9
	movq	-8(%rbp), %rax
.L11:
	.loc 2 73 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	percentil_create, .-percentil_create
	.globl	percentil_destroy
	.type	percentil_destroy, @function
percentil_destroy:
.LFB12:
	.loc 2 75 40
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 76 4
	cmpq	$0, -8(%rbp)
	je	.L14
	.loc 2 77 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L14:
	.loc 2 78 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	percentil_destroy, .-percentil_destroy
	.globl	levels_create
	.type	levels_create, @function
levels_create:
.LFB13:
	.loc 2 84 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 2 85 19
	movl	$96, %edi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	.loc 2 86 5
	cmpq	$0, -40(%rbp)
	jne	.L16
	.loc 2 87 9
	movl	$0, %eax
	jmp	.L17
.L16:
	.loc 2 89 43
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 89 9
	salq	$2, %rax
	movq	%rax, -32(%rbp)
	.loc 2 90 19
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	.loc 2 91 5
	cmpq	$0, -24(%rbp)
	jne	.L18
	.loc 2 92 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 93 9
	movl	$0, %eax
	jmp	.L17
.L18:
	.loc 2 95 2
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 2 97 43
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 97 9
	salq	$2, %rax
	movq	%rax, -16(%rbp)
	.loc 2 98 17
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 99 5
	cmpq	$0, -8(%rbp)
	jne	.L19
	.loc 2 100 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 101 9
	movl	$0, %eax
	jmp	.L17
.L19:
	.loc 2 103 2
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 2 105 15
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 106 8
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 106 18
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	.loc 2 107 43
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 107 27
	salq	$2, %rax
	addq	%rax, -24(%rbp)
	.loc 2 107 17
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 2 108 43
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 108 27
	salq	$2, %rax
	addq	%rax, -24(%rbp)
	.loc 2 108 17
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 2 109 43
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 109 27
	salq	$2, %rax
	addq	%rax, -24(%rbp)
	.loc 2 109 17
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	.loc 2 110 40
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 110 24
	salq	$2, %rax
	addq	%rax, -24(%rbp)
	.loc 2 110 14
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	.loc 2 111 40
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 111 24
	salq	$2, %rax
	addq	%rax, -24(%rbp)
	.loc 2 111 14
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 48(%rax)
	.loc 2 112 16
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 72(%rax)
	.loc 2 113 40
	movq	config_struct(%rip), %rax
	movss	120(%rax), %xmm0
	.loc 2 113 25
	movq	-40(%rbp), %rax
	movss	%xmm0, 56(%rax)
	.loc 2 114 25
	movq	-40(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 80(%rax)
	.loc 2 115 21
	movq	-40(%rbp), %rax
	movl	$0, 88(%rax)
	.loc 2 116 17
	movl	$0, %eax
	call	percentil_create
	.loc 2 116 15 discriminator 1
	movq	-40(%rbp), %rdx
	movq	%rax, 64(%rdx)
	.loc 2 118 25
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	.loc 2 119 9
	movq	-40(%rbp), %rax
.L17:
	.loc 2 120 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	levels_create, .-levels_create
	.globl	levels_destroy
	.type	levels_destroy, @function
levels_destroy:
.LFB14:
	.loc 2 123 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 124 13
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 124 2
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 125 2
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	percentil_destroy
	.loc 2 126 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 127 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	levels_destroy, .-levels_destroy
	.globl	process_block_square
	.type	process_block_square, @function
process_block_square:
.LFB15:
	.loc 2 130 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
.LBB2:
	.loc 2 131 16
	movl	$0, -4(%rbp)
	.loc 2 131 2
	jmp	.L22
.L23:
	.loc 2 132 24
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 132 15
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movq	%xmm2, %rax
	movsd	.LC5(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	.loc 2 132 9 discriminator 1
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 132 15 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	.loc 2 132 13 discriminator 1
	movss	%xmm0, (%rax)
	.loc 2 131 34 discriminator 3
	addl	$1, -4(%rbp)
.L22:
	.loc 2 131 25 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L23
.LBE2:
	.loc 2 135 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	process_block_square, .-process_block_square
	.type	min, @function
min:
.LFB16:
	.loc 2 137 52
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 2 138 19
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	cmovbe	%edx, %eax
	.loc 2 139 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	min, .-min
	.globl	process_segment_levelpeak
	.type	process_segment_levelpeak, @function
process_segment_levelpeak:
.LFB17:
	.loc 2 142 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 2 144 6
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	movl	%eax, %edx
	.loc 2 144 41 discriminator 1
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 144 5 discriminator 1
	cmpl	%eax, %edx
	jb	.L39
.LBB3:
	.loc 2 145 20
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 146 61
	movq	config_struct(%rip), %rax
	.loc 2 146 19
	movl	76(%rax), %ebx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_size@PLT
	.loc 2 146 19 is_stmt 0 discriminator 1
	movl	%ebx, %esi
	movl	%eax, %edi
	call	min
	movl	%eax, -36(%rbp)
	.loc 2 148 28 is_stmt 1
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	.loc 2 148 9
	movss	.LC6(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
.LBB4:
	.loc 2 149 17
	movl	$1, -44(%rbp)
	.loc 2 149 3
	jmp	.L28
.L31:
.LBB5:
	.loc 2 151 31
	movl	-44(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 151 10
	movss	.LC6(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 2 152 7
	movss	-28(%rbp), %xmm0
	comiss	-48(%rbp), %xmm0
	jbe	.L29
	.loc 2 153 10
	movss	-28(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
.L29:
.LBE5:
	.loc 2 149 35 discriminator 2
	addl	$1, -44(%rbp)
.L28:
	.loc 2 149 26 discriminator 1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L31
.LBE4:
	.loc 2 155 3
	movl	-36(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
	.loc 2 156 27
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 156 6
	cmpl	%eax, -36(%rbp)
	jnb	.L32
	.loc 2 157 14
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 158 24
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 158 9
	subl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB6:
	.loc 2 159 18
	movl	$0, -40(%rbp)
	.loc 2 159 4
	jmp	.L33
.L36:
.LBB7:
	.loc 2 161 32
	movl	-40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 161 11
	movss	.LC6(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	.loc 2 162 8
	movss	-32(%rbp), %xmm0
	comiss	-48(%rbp), %xmm0
	jbe	.L34
	.loc 2 163 11
	movss	-32(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
.L34:
.LBE7:
	.loc 2 159 36 discriminator 2
	addl	$1, -40(%rbp)
.L33:
	.loc 2 159 27 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L36
.LBE6:
	.loc 2 165 4
	movl	-36(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
.L32:
	.loc 2 167 44
	movl	-48(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	.loc 2 167 76 discriminator 1
	movq	-72(%rbp), %rax
	movss	124(%rax), %xmm1
	.loc 2 167 9 discriminator 1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 167 24 discriminator 1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 167 17 discriminator 1
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 2 167 68 discriminator 1
	addss	%xmm1, %xmm0
	.loc 2 167 42 discriminator 1
	movss	%xmm0, (%rax)
.L39:
.LBE3:
	.loc 2 169 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	process_segment_levelpeak, .-process_segment_levelpeak
	.section	.rodata
.LC7:
	.string	"src/process.c"
	.align 8
.LC8:
	.string	"sbuffer_size(ring_afast) >= config_struct->segment_size"
	.align 8
.LC9:
	.string	"sbuffer_size(ring_aslow) == sbuffer_size(ring_afast)"
	.text
	.globl	process_segment_levels
	.type	process_segment_levels, @function
process_segment_levels:
.LFB18:
	.loc 2 172 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	.loc 2 173 8
	pxor	%xmm0, %xmm0
	movss	%xmm0, -108(%rbp)
	.loc 2 174 5
	cmpq	$0, -144(%rbp)
	je	.L41
	.loc 2 175 9
	movq	-144(%rbp), %rax
	movss	124(%rax), %xmm0
	movss	%xmm0, -108(%rbp)
.L41:
	.loc 2 178 1
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	movl	%eax, %edx
	.loc 2 178 42 discriminator 1
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 178 33 discriminator 1
	cmpl	%eax, %edx
	jnb	.L42
	.loc 2 178 10 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$178, %edx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L42:
	.loc 2 179 12
	movq	-120(%rbp), %rax
	movl	(%rax), %edx
	.loc 2 179 45
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	.loc 2 179 5
	cmpl	%eax, %edx
	jb	.L43
	.loc 2 180 26
	movq	-120(%rbp), %rax
	movl	$0, (%rax)
.L43:
	.loc 2 183 25
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 184 9
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 186 66
	movq	config_struct(%rip), %rax
	.loc 2 186 18
	movl	76(%rax), %ebx
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_size@PLT
	.loc 2 186 18 is_stmt 0 discriminator 1
	movl	%ebx, %esi
	movl	%eax, %edi
	call	min
	movl	%eax, -72(%rbp)
	.loc 2 189 8 is_stmt 1
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -104(%rbp)
	.loc 2 190 8
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -100(%rbp)
	.loc 2 191 8
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -96(%rbp)
	.loc 2 194 8
	movss	-104(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	.loc 2 196 5
	cmpq	$0, -136(%rbp)
	je	.L44
	.loc 2 197 2
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	movl	%eax, %ebx
	.loc 2 197 30 discriminator 1
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	.loc 2 197 34 discriminator 2
	cmpl	%eax, %ebx
	je	.L45
	.loc 2 197 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$197, %edx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L45:
	.loc 2 198 19
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -32(%rbp)
	.loc 2 199 20
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -92(%rbp)
.L44:
.LBB8:
	.loc 2 202 16
	movl	$1, -88(%rbp)
	.loc 2 202 2
	jmp	.L46
.L52:
.LBB9:
	.loc 2 203 37
	movl	-88(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 203 9
	movss	(%rax), %xmm0
	movss	%xmm0, -40(%rbp)
	.loc 2 204 20
	movss	-104(%rbp), %xmm0
	addss	-40(%rbp), %xmm0
	movss	%xmm0, -104(%rbp)
	.loc 2 205 6
	movss	-40(%rbp), %xmm0
	comiss	-100(%rbp), %xmm0
	jbe	.L47
	.loc 2 206 21
	movss	-40(%rbp), %xmm0
	movss	%xmm0, -100(%rbp)
.L47:
	.loc 2 207 6
	movss	-96(%rbp), %xmm0
	comiss	-40(%rbp), %xmm0
	jbe	.L49
	.loc 2 208 21
	movss	-40(%rbp), %xmm0
	movss	%xmm0, -96(%rbp)
.L49:
	.loc 2 210 6
	cmpq	$0, -136(%rbp)
	je	.L51
.LBB10:
	.loc 2 211 38
	movl	-88(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 211 10
	movss	(%rax), %xmm0
	movss	%xmm0, -36(%rbp)
	.loc 2 212 21
	movss	-92(%rbp), %xmm0
	addss	-36(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
.L51:
.LBE10:
.LBE9:
	.loc 2 202 34 discriminator 2
	addl	$1, -88(%rbp)
.L46:
	.loc 2 202 25 discriminator 1
	movl	-88(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jb	.L52
.LBE8:
	.loc 2 216 2
	movl	-72(%rbp), %edx
	movq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
	.loc 2 217 5
	cmpq	$0, -136(%rbp)
	je	.L53
	.loc 2 218 3
	movl	-72(%rbp), %edx
	movq	-136(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
.L53:
	.loc 2 220 26
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 220 5
	cmpl	%eax, -72(%rbp)
	jnb	.L54
.LBB11:
	.loc 2 221 37
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 221 12
	subl	-72(%rbp), %eax
	movl	%eax, -68(%rbp)
	.loc 2 222 19
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 223 6
	cmpq	$0, -136(%rbp)
	je	.L55
	.loc 2 224 20
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -32(%rbp)
.L55:
.LBB12:
	.loc 2 226 17
	movl	$0, -84(%rbp)
	.loc 2 226 3
	jmp	.L56
.L62:
.LBB13:
	.loc 2 227 38
	movl	-84(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 227 10
	movss	(%rax), %xmm0
	movss	%xmm0, -64(%rbp)
	.loc 2 228 21
	movss	-104(%rbp), %xmm0
	addss	-64(%rbp), %xmm0
	movss	%xmm0, -104(%rbp)
	.loc 2 229 7
	movss	-64(%rbp), %xmm0
	comiss	-100(%rbp), %xmm0
	jbe	.L57
	.loc 2 230 22
	movss	-64(%rbp), %xmm0
	movss	%xmm0, -100(%rbp)
.L57:
	.loc 2 231 7
	movss	-96(%rbp), %xmm0
	comiss	-64(%rbp), %xmm0
	jbe	.L59
	.loc 2 232 22
	movss	-64(%rbp), %xmm0
	movss	%xmm0, -96(%rbp)
.L59:
	.loc 2 234 7
	cmpq	$0, -136(%rbp)
	je	.L61
.LBB14:
	.loc 2 235 39
	movl	-84(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 235 11
	movss	(%rax), %xmm0
	movss	%xmm0, -60(%rbp)
	.loc 2 236 22
	movss	-92(%rbp), %xmm0
	addss	-60(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
.L61:
.LBE14:
.LBE13:
	.loc 2 226 40 discriminator 2
	addl	$1, -84(%rbp)
.L56:
	.loc 2 226 26 discriminator 1
	movl	-84(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jb	.L62
.LBE12:
	.loc 2 239 3
	movl	-68(%rbp), %edx
	movq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
	.loc 2 240 6
	cmpq	$0, -136(%rbp)
	je	.L54
	.loc 2 241 4
	movl	-68(%rbp), %edx
	movq	-136(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
.L54:
.LBE11:
	.loc 2 245 52
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 245 37
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L63
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L64
.L63:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L64:
	movss	-104(%rbp), %xmm1
	divss	%xmm0, %xmm1
	.loc 2 245 15
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 245 9 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
	.loc 2 246 6
	pxor	%xmm0, %xmm0
	comiss	-104(%rbp), %xmm0
	jbe	.L65
	.loc 2 247 53
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 247 38
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L67
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L68
.L67:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L68:
	movss	-104(%rbp), %xmm1
	divss	%xmm0, %xmm1
	.loc 2 247 16
	movss	.LC6(%rip), %xmm0
	andps	%xmm1, %xmm0
	.loc 2 247 11
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 247 11 is_stmt 0 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	.loc 2 247 8 is_stmt 1 discriminator 1
	movss	.LC10(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
.L65:
	.loc 2 248 18
	pxor	%xmm4, %xmm4
	cvtss2sd	-100(%rbp), %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 248 9 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	.loc 2 249 18
	pxor	%xmm5, %xmm5
	cvtss2sd	-96(%rbp), %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 249 9 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	.loc 2 250 41
	movl	-80(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	movd	%xmm0, %eax
	.loc 2 250 9 discriminator 1
	movq	-120(%rbp), %rdx
	movq	40(%rdx), %rcx
	.loc 2 250 21 discriminator 1
	movq	-120(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, %edx
	.loc 2 250 14 discriminator 1
	salq	$2, %rdx
	addq	%rcx, %rdx
	.loc 2 250 64 discriminator 1
	movd	%eax, %xmm0
	addss	-108(%rbp), %xmm0
	.loc 2 250 39 discriminator 1
	movss	%xmm0, (%rdx)
	.loc 2 251 44
	movl	-56(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	movd	%xmm0, %eax
	.loc 2 251 9 discriminator 1
	movq	-120(%rbp), %rdx
	movq	24(%rdx), %rcx
	.loc 2 251 24 discriminator 1
	movq	-120(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, %edx
	.loc 2 251 17 discriminator 1
	salq	$2, %rdx
	addq	%rcx, %rdx
	.loc 2 251 70 discriminator 1
	movd	%eax, %xmm0
	addss	-108(%rbp), %xmm0
	.loc 2 251 42 discriminator 1
	movss	%xmm0, (%rdx)
	.loc 2 252 44
	movl	-52(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	movd	%xmm0, %eax
	.loc 2 252 9 discriminator 1
	movq	-120(%rbp), %rdx
	movq	32(%rdx), %rcx
	.loc 2 252 24 discriminator 1
	movq	-120(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, %edx
	.loc 2 252 17 discriminator 1
	salq	$2, %rdx
	addq	%rcx, %rdx
	.loc 2 252 70 discriminator 1
	movd	%eax, %xmm0
	addss	-108(%rbp), %xmm0
	.loc 2 252 42 discriminator 1
	movss	%xmm0, (%rdx)
	.loc 2 254 16
	movl	-80(%rbp), %edx
	movq	-120(%rbp), %rax
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	lae_average
	movd	%xmm0, %eax
	movl	%eax, -48(%rbp)
	.loc 2 255 42
	movl	-48(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	movd	%xmm0, %eax
	.loc 2 255 9 discriminator 1
	movq	-120(%rbp), %rdx
	movq	8(%rdx), %rcx
	.loc 2 255 22 discriminator 1
	movq	-120(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, %edx
	.loc 2 255 15 discriminator 1
	salq	$2, %rdx
	addq	%rcx, %rdx
	.loc 2 255 66 discriminator 1
	movd	%eax, %xmm0
	addss	-108(%rbp), %xmm0
	.loc 2 255 40 discriminator 1
	movss	%xmm0, (%rdx)
	.loc 2 258 6
	cmpq	$0, -136(%rbp)
	je	.L69
.LBB15:
	.loc 2 259 53
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 259 38
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L70
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L71
.L70:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L71:
	movss	-92(%rbp), %xmm1
	divss	%xmm0, %xmm1
	.loc 2 259 16
	pxor	%xmm6, %xmm6
	cvtss2sd	%xmm1, %xmm6
	movq	%xmm6, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 259 10 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	.loc 2 260 7
	pxor	%xmm0, %xmm0
	comiss	-92(%rbp), %xmm0
	jbe	.L72
	.loc 2 261 54
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 261 39
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L74
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L75
.L74:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L75:
	movss	-92(%rbp), %xmm1
	divss	%xmm0, %xmm1
	.loc 2 261 17
	movss	.LC6(%rip), %xmm0
	andps	%xmm1, %xmm0
	.loc 2 261 12
	pxor	%xmm7, %xmm7
	cvtss2sd	%xmm0, %xmm7
	movq	%xmm7, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 261 12 is_stmt 0 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	.loc 2 261 9 is_stmt 1 discriminator 1
	movss	.LC10(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
.L72:
	.loc 2 262 42
	movl	-76(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	movd	%xmm0, %eax
	.loc 2 262 10 discriminator 1
	movq	-120(%rbp), %rdx
	movq	48(%rdx), %rcx
	.loc 2 262 22 discriminator 1
	movq	-120(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, %edx
	.loc 2 262 15 discriminator 1
	salq	$2, %rdx
	addq	%rcx, %rdx
	.loc 2 262 65 discriminator 1
	movd	%eax, %xmm0
	addss	-108(%rbp), %xmm0
	.loc 2 262 40 discriminator 1
	movss	%xmm0, (%rdx)
.L69:
.LBE15:
	.loc 2 265 5
	cmpq	$0, -136(%rbp)
	je	.L76
.LBB16:
	.loc 2 266 48
	movq	config_struct(%rip), %rax
	movl	112(%rax), %eax
	.loc 2 266 86
	movq	config_struct(%rip), %rdx
	movl	72(%rdx), %edx
	.loc 2 266 105
	movl	%edx, %edx
	imulq	$274877907, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ebx
	shrl	$6, %ebx
	.loc 2 266 70
	movl	$0, %edx
	divl	%ebx
	.loc 2 266 8
	movl	%eax, -44(%rbp)
	.loc 2 269 51
	movq	-120(%rbp), %rax
	movq	48(%rax), %rdx
	.loc 2 269 63
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 269 56
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 269 10
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 269 30
	movq	-120(%rbp), %rdx
	movq	64(%rdx), %rdx
	.loc 2 269 36
	movl	(%rdx), %edx
	.loc 2 269 56
	movss	(%rcx), %xmm0
	.loc 2 269 43
	movl	%edx, %edx
	movss	%xmm0, 4(%rax,%rdx,4)
	.loc 2 270 10
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 270 16
	movl	(%rax), %edx
	.loc 2 270 21
	addl	$1, %edx
	movl	%edx, (%rax)
	.loc 2 272 8
	movl	beginning(%rip), %eax
	.loc 2 272 7
	testl	%eax, %eax
	je	.L77
	.loc 2 273 71
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 273 77
	movl	(%rax), %eax
	.loc 2 273 30
	movl	%eax, %ecx
	.loc 2 273 50
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 273 56
	addq	$4, %rax
	.loc 2 273 30
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_percentil
	movd	%xmm0, %eax
	.loc 2 273 28 discriminator 1
	movq	-120(%rbp), %rdx
	movl	%eax, 56(%rdx)
.L77:
	.loc 2 274 14
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 274 20
	movl	(%rax), %edx
	.loc 2 274 26
	movl	-44(%rbp), %eax
	.loc 2 274 7
	cmpl	%eax, %edx
	jb	.L78
	.loc 2 275 71
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 275 77
	movl	(%rax), %eax
	.loc 2 275 30
	movl	%eax, %ecx
	.loc 2 275 50
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 275 56
	addq	$4, %rax
	.loc 2 275 30
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_percentil
	movd	%xmm0, %eax
	.loc 2 275 28 discriminator 1
	movq	-120(%rbp), %rdx
	movl	%eax, 56(%rdx)
	.loc 2 276 11
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 276 23
	movl	$0, (%rax)
	.loc 2 277 15
	movl	$0, beginning(%rip)
.L78:
	.loc 2 280 10
	movq	-120(%rbp), %rax
	movq	72(%rax), %rdx
	.loc 2 280 24
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 280 17
	salq	$2, %rax
	leaq	(%rdx,%rax), %rbx
	.loc 2 280 44
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	event_check
	.loc 2 280 42 discriminator 1
	movl	%eax, (%rbx)
.L76:
.LBE16:
	.loc 2 282 8
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 282 24
	leal	1(%rax), %edx
	movq	-120(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 283 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	process_segment_levels, .-process_segment_levels
	.globl	process_segment_direction
	.type	process_segment_direction, @function
process_segment_direction:
.LFB19:
	.loc 2 293 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 2 294 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	process_segment_direction, .-process_segment_direction
	.type	cmp_func, @function
cmp_func:
.LFB20:
	.loc 2 296 51
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 297 11
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -8(%rbp)
	.loc 2 298 11
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 2 299 16
	movss	-8(%rbp), %xmm0
	comiss	-4(%rbp), %xmm0
	seta	%al
	movzbl	%al, %edx
	.loc 2 299 28
	movss	-4(%rbp), %xmm0
	comiss	-8(%rbp), %xmm0
	seta	%al
	movzbl	%al, %eax
	.loc 2 299 22
	subl	%eax, %edx
	.loc 2 299 22 is_stmt 0 discriminator 1
	movl	%edx, %eax
	.loc 2 300 1 is_stmt 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	cmp_func, .-cmp_func
	.globl	get_percentil
	.type	get_percentil, @function
get_percentil:
.LFB21:
	.loc 2 302 54
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	.loc 2 304 2
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rax
	leaq	cmp_func(%rip), %rdx
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	.loc 2 306 21
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	.loc 2 306 6
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 2 308 17
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 309 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	get_percentil, .-get_percentil
	.section	.rodata
	.align 8
.LC11:
	.string	"background_level = %f\tnoise_level = %f\n"
	.text
	.globl	event_check
	.type	event_check, @function
event_check:
.LFB22:
	.loc 2 311 32
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 312 82
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	.loc 2 312 94
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 312 87
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 312 2
	cvtss2sd	%xmm0, %xmm0
	.loc 2 312 59
	movq	-8(%rbp), %rax
	movss	56(%rax), %xmm1
	.loc 2 312 2
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm1, %xmm3
	movq	%xmm3, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	.loc 2 313 2
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	.loc 2 315 11
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	.loc 2 315 23
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 315 16
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 315 49
	movq	-8(%rbp), %rax
	movss	56(%rax), %xmm2
	.loc 2 315 66
	movss	.LC12(%rip), %xmm1
	addss	%xmm2, %xmm1
	.loc 2 315 4
	comiss	%xmm1, %xmm0
	jbe	.L95
	.loc 2 316 11
	movl	$1, %eax
	jmp	.L93
.L95:
	.loc 2 318 9
	movl	$0, %eax
.L93:
	.loc 2 319 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	event_check, .-event_check
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 23
__PRETTY_FUNCTION__.0:
	.string	"process_segment_levels"
	.align 8
.LC0:
	.long	-1598689907
	.long	1051772663
	.align 8
.LC1:
	.long	-2147483648
	.long	1056241845
	.align 8
.LC2:
	.long	0
	.long	1077149696
	.align 8
.LC5:
	.long	0
	.long	1073741824
	.align 16
.LC6:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 16
.LC10:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC12:
	.long	1092616192
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 5 "/usr/include/stdlib.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "src/config.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 11 "/usr/include/assert.h"
	.file 12 "src/sbuffer.h"
	.file 13 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe00
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1f
	.long	.LASF161
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0xa
	.long	.LASF9
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x5f
	.uleb128 0xa
	.long	.LASF10
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x5f
	.uleb128 0x21
	.byte	0x8
	.uleb128 0x4
	.long	0x85
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x14
	.long	0x85
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.byte	0xd6
	.byte	0x1b
	.long	0x43
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x22
	.long	.LASF17
	.byte	0x5
	.value	0x3b4
	.byte	0xf
	.long	0xc6
	.uleb128 0x4
	.long	0xcb
	.uleb128 0x23
	.long	0x58
	.long	0xdf
	.uleb128 0x3
	.long	0xdf
	.uleb128 0x3
	.long	0xdf
	.byte	0
	.uleb128 0x4
	.long	0xe4
	.uleb128 0x24
	.uleb128 0x4
	.long	0x8c
	.uleb128 0x15
	.long	.LASF51
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.long	0x270
	.uleb128 0x1
	.long	.LASF18
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x1
	.long	.LASF19
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x80
	.byte	0x8
	.uleb128 0x1
	.long	.LASF20
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x80
	.byte	0x10
	.uleb128 0x1
	.long	.LASF21
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x80
	.byte	0x18
	.uleb128 0x1
	.long	.LASF22
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x80
	.byte	0x20
	.uleb128 0x1
	.long	.LASF23
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x80
	.byte	0x28
	.uleb128 0x1
	.long	.LASF24
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x80
	.byte	0x30
	.uleb128 0x1
	.long	.LASF25
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x80
	.byte	0x38
	.uleb128 0x1
	.long	.LASF26
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x80
	.byte	0x40
	.uleb128 0x1
	.long	.LASF27
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x80
	.byte	0x48
	.uleb128 0x1
	.long	.LASF28
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x80
	.byte	0x50
	.uleb128 0x1
	.long	.LASF29
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x80
	.byte	0x58
	.uleb128 0x1
	.long	.LASF30
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x289
	.byte	0x60
	.uleb128 0x1
	.long	.LASF31
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x28e
	.byte	0x68
	.uleb128 0x1
	.long	.LASF32
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x58
	.byte	0x70
	.uleb128 0x1
	.long	.LASF33
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x74
	.uleb128 0x1
	.long	.LASF34
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0x66
	.byte	0x78
	.uleb128 0x1
	.long	.LASF35
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x1
	.long	.LASF36
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x1
	.long	.LASF37
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x293
	.byte	0x83
	.uleb128 0x1
	.long	.LASF38
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x2a3
	.byte	0x88
	.uleb128 0x1
	.long	.LASF39
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0x72
	.byte	0x90
	.uleb128 0x1
	.long	.LASF40
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x2ad
	.byte	0x98
	.uleb128 0x1
	.long	.LASF41
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x2b7
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF42
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x28e
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF43
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x7e
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF44
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x9f
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF45
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x58
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF46
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x2bc
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0xea
	.uleb128 0x25
	.long	.LASF162
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xd
	.long	.LASF48
	.uleb128 0x4
	.long	0x284
	.uleb128 0x4
	.long	0xea
	.uleb128 0xe
	.long	0x85
	.long	0x2a3
	.uleb128 0x10
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x27c
	.uleb128 0xd
	.long	.LASF49
	.uleb128 0x4
	.long	0x2a8
	.uleb128 0xd
	.long	.LASF50
	.uleb128 0x4
	.long	0x2b2
	.uleb128 0xe
	.long	0x85
	.long	0x2cc
	.uleb128 0x10
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x270
	.uleb128 0x16
	.long	.LASF85
	.byte	0x9
	.byte	0x96
	.byte	0xe
	.long	0x2cc
	.uleb128 0x15
	.long	.LASF52
	.byte	0xb0
	.byte	0x8
	.byte	0x53
	.long	0x47d
	.uleb128 0x1
	.long	.LASF53
	.byte	0x8
	.byte	0x55
	.byte	0xe
	.long	0xe5
	.byte	0
	.uleb128 0x1
	.long	.LASF54
	.byte	0x8
	.byte	0x56
	.byte	0xe
	.long	0xe5
	.byte	0x8
	.uleb128 0x1
	.long	.LASF55
	.byte	0x8
	.byte	0x57
	.byte	0xe
	.long	0xe5
	.byte	0x10
	.uleb128 0x1
	.long	.LASF56
	.byte	0x8
	.byte	0x58
	.byte	0xe
	.long	0xe5
	.byte	0x18
	.uleb128 0x1
	.long	.LASF57
	.byte	0x8
	.byte	0x59
	.byte	0xe
	.long	0xe5
	.byte	0x20
	.uleb128 0x1
	.long	.LASF58
	.byte	0x8
	.byte	0x5a
	.byte	0xe
	.long	0xe5
	.byte	0x28
	.uleb128 0x1
	.long	.LASF59
	.byte	0x8
	.byte	0x5b
	.byte	0xe
	.long	0xe5
	.byte	0x30
	.uleb128 0x1
	.long	.LASF60
	.byte	0x8
	.byte	0x5d
	.byte	0xb
	.long	0x3c
	.byte	0x38
	.uleb128 0x1
	.long	.LASF61
	.byte	0x8
	.byte	0x5e
	.byte	0xb
	.long	0x3c
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF62
	.byte	0x8
	.byte	0x5f
	.byte	0xb
	.long	0x3c
	.byte	0x40
	.uleb128 0x1
	.long	.LASF63
	.byte	0x8
	.byte	0x60
	.byte	0xb
	.long	0x3c
	.byte	0x44
	.uleb128 0x1
	.long	.LASF64
	.byte	0x8
	.byte	0x61
	.byte	0xb
	.long	0x3c
	.byte	0x48
	.uleb128 0x1
	.long	.LASF65
	.byte	0x8
	.byte	0x62
	.byte	0xb
	.long	0x3c
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF66
	.byte	0x8
	.byte	0x63
	.byte	0xb
	.long	0x3c
	.byte	0x50
	.uleb128 0x1
	.long	.LASF67
	.byte	0x8
	.byte	0x64
	.byte	0xb
	.long	0x3c
	.byte	0x54
	.uleb128 0x1
	.long	.LASF68
	.byte	0x8
	.byte	0x65
	.byte	0xb
	.long	0x3c
	.byte	0x58
	.uleb128 0x1
	.long	.LASF69
	.byte	0x8
	.byte	0x66
	.byte	0xb
	.long	0x3c
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF70
	.byte	0x8
	.byte	0x67
	.byte	0x8
	.long	0x47d
	.byte	0x60
	.uleb128 0x1
	.long	.LASF71
	.byte	0x8
	.byte	0x68
	.byte	0xb
	.long	0x3c
	.byte	0x64
	.uleb128 0x1
	.long	.LASF72
	.byte	0x8
	.byte	0x69
	.byte	0xb
	.long	0x3c
	.byte	0x68
	.uleb128 0x1
	.long	.LASF73
	.byte	0x8
	.byte	0x6a
	.byte	0x8
	.long	0x47d
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF74
	.byte	0x8
	.byte	0x6b
	.byte	0xb
	.long	0x3c
	.byte	0x70
	.uleb128 0x1
	.long	.LASF75
	.byte	0x8
	.byte	0x6d
	.byte	0xb
	.long	0x3c
	.byte	0x74
	.uleb128 0x1
	.long	.LASF76
	.byte	0x8
	.byte	0x6e
	.byte	0x8
	.long	0x91
	.byte	0x78
	.uleb128 0x1
	.long	.LASF77
	.byte	0x8
	.byte	0x6f
	.byte	0x8
	.long	0x91
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF78
	.byte	0x8
	.byte	0x71
	.byte	0x6
	.long	0x47d
	.byte	0x80
	.uleb128 0x1
	.long	.LASF79
	.byte	0x8
	.byte	0x72
	.byte	0xe
	.long	0xe5
	.byte	0x88
	.uleb128 0x1
	.long	.LASF80
	.byte	0x8
	.byte	0x73
	.byte	0xe
	.long	0xe5
	.byte	0x90
	.uleb128 0x1
	.long	.LASF81
	.byte	0x8
	.byte	0x74
	.byte	0x6
	.long	0x58
	.byte	0x98
	.uleb128 0x1
	.long	.LASF82
	.byte	0x8
	.byte	0x75
	.byte	0xe
	.long	0xe5
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF83
	.byte	0x8
	.byte	0x77
	.byte	0xe
	.long	0xe5
	.byte	0xa8
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.long	.LASF84
	.uleb128 0x16
	.long	.LASF86
	.byte	0x8
	.byte	0x7f
	.byte	0x17
	.long	0x490
	.uleb128 0x4
	.long	0x2dd
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.long	.LASF87
	.uleb128 0x17
	.byte	0x4
	.byte	0x33
	.long	0x4bd
	.uleb128 0x11
	.string	"pos"
	.byte	0x34
	.byte	0xb
	.long	0x3c
	.byte	0
	.uleb128 0x1
	.long	.LASF88
	.byte	0x1
	.byte	0x35
	.byte	0x8
	.long	0x4bd
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	0x91
	.long	0x4cc
	.uleb128 0x26
	.long	0x43
	.byte	0
	.uleb128 0xa
	.long	.LASF89
	.byte	0x1
	.byte	0x36
	.byte	0x3
	.long	0x49c
	.uleb128 0x17
	.byte	0x60
	.byte	0x3b
	.long	0x587
	.uleb128 0x1
	.long	.LASF90
	.byte	0x1
	.byte	0x3c
	.byte	0xb
	.long	0x3c
	.byte	0
	.uleb128 0x1
	.long	.LASF91
	.byte	0x1
	.byte	0x3d
	.byte	0x9
	.long	0x587
	.byte	0x8
	.uleb128 0x1
	.long	.LASF92
	.byte	0x1
	.byte	0x3e
	.byte	0x9
	.long	0x587
	.byte	0x10
	.uleb128 0x1
	.long	.LASF93
	.byte	0x1
	.byte	0x3f
	.byte	0x9
	.long	0x587
	.byte	0x18
	.uleb128 0x1
	.long	.LASF94
	.byte	0x1
	.byte	0x40
	.byte	0x9
	.long	0x587
	.byte	0x20
	.uleb128 0x11
	.string	"LAE"
	.byte	0x41
	.byte	0x9
	.long	0x587
	.byte	0x28
	.uleb128 0x11
	.string	"LAS"
	.byte	0x42
	.byte	0x9
	.long	0x587
	.byte	0x30
	.uleb128 0x1
	.long	.LASF95
	.byte	0x1
	.byte	0x43
	.byte	0x8
	.long	0x91
	.byte	0x38
	.uleb128 0x1
	.long	.LASF96
	.byte	0x1
	.byte	0x44
	.byte	0xd
	.long	0x58c
	.byte	0x40
	.uleb128 0x1
	.long	.LASF97
	.byte	0x1
	.byte	0x45
	.byte	0x7
	.long	0x591
	.byte	0x48
	.uleb128 0x1
	.long	.LASF98
	.byte	0x1
	.byte	0x46
	.byte	0x9
	.long	0x98
	.byte	0x50
	.uleb128 0x1
	.long	.LASF99
	.byte	0x1
	.byte	0x47
	.byte	0xb
	.long	0x3c
	.byte	0x58
	.uleb128 0x1
	.long	.LASF100
	.byte	0x1
	.byte	0x48
	.byte	0x6
	.long	0x58
	.byte	0x5c
	.byte	0
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x4cc
	.uleb128 0x4
	.long	0x58
	.uleb128 0xa
	.long	.LASF101
	.byte	0x1
	.byte	0x49
	.byte	0x3
	.long	0x4d8
	.uleb128 0x2
	.long	.LASF120
	.byte	0x20
	.byte	0xc
	.long	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	beginning
	.uleb128 0x8
	.long	.LASF102
	.byte	0x9
	.byte	0xec
	.byte	0xc
	.long	0x58
	.long	0x5cd
	.uleb128 0x3
	.long	0x2cc
	.byte	0
	.uleb128 0x18
	.long	.LASF103
	.byte	0x9
	.value	0x16b
	.byte	0xc
	.long	0x58
	.long	0x5e5
	.uleb128 0x3
	.long	0xe5
	.uleb128 0x27
	.byte	0
	.uleb128 0x19
	.long	.LASF107
	.value	0x3ca
	.long	0x605
	.uleb128 0x3
	.long	0x7e
	.uleb128 0x3
	.long	0x9f
	.uleb128 0x3
	.long	0x9f
	.uleb128 0x3
	.long	0xb9
	.byte	0
	.uleb128 0x8
	.long	.LASF104
	.byte	0xa
	.byte	0x8f
	.byte	0xf
	.long	0x98
	.long	0x61b
	.uleb128 0x3
	.long	0x98
	.byte	0
	.uleb128 0x28
	.long	.LASF105
	.byte	0xb
	.byte	0x45
	.byte	0xd
	.long	0x63c
	.uleb128 0x3
	.long	0xe5
	.uleb128 0x3
	.long	0xe5
	.uleb128 0x3
	.long	0x3c
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0x8
	.long	.LASF106
	.byte	0xa
	.byte	0x6b
	.byte	0x10
	.long	0x98
	.long	0x652
	.uleb128 0x3
	.long	0x98
	.byte	0
	.uleb128 0x29
	.long	.LASF108
	.byte	0xc
	.byte	0x29
	.byte	0x6
	.long	0x669
	.uleb128 0x3
	.long	0x669
	.uleb128 0x3
	.long	0x3c
	.byte	0
	.uleb128 0x4
	.long	0x66e
	.uleb128 0xd
	.long	.LASF109
	.uleb128 0x8
	.long	.LASF110
	.byte	0xc
	.byte	0x24
	.byte	0xa
	.long	0x3c
	.long	0x689
	.uleb128 0x3
	.long	0x669
	.byte	0
	.uleb128 0x8
	.long	.LASF111
	.byte	0xc
	.byte	0x1f
	.byte	0x8
	.long	0x587
	.long	0x69f
	.uleb128 0x3
	.long	0x669
	.byte	0
	.uleb128 0x8
	.long	.LASF112
	.byte	0xc
	.byte	0x15
	.byte	0xa
	.long	0x3c
	.long	0x6b5
	.uleb128 0x3
	.long	0x669
	.byte	0
	.uleb128 0x2a
	.string	"pow"
	.byte	0xa
	.byte	0x8c
	.byte	0x10
	.long	0x98
	.long	0x6d0
	.uleb128 0x3
	.long	0x98
	.uleb128 0x3
	.long	0x98
	.byte	0
	.uleb128 0x8
	.long	.LASF113
	.byte	0xd
	.byte	0x3d
	.byte	0xe
	.long	0x7e
	.long	0x6f0
	.uleb128 0x3
	.long	0x7e
	.uleb128 0x3
	.long	0x58
	.uleb128 0x3
	.long	0x9f
	.byte	0
	.uleb128 0x19
	.long	.LASF114
	.value	0x2af
	.long	0x701
	.uleb128 0x3
	.long	0x7e
	.byte	0
	.uleb128 0x18
	.long	.LASF115
	.byte	0x5
	.value	0x2a0
	.byte	0xe
	.long	0x7e
	.long	0x718
	.uleb128 0x3
	.long	0x9f
	.byte	0
	.uleb128 0x1a
	.long	.LASF116
	.value	0x137
	.byte	0x5
	.long	0x58
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x74a
	.uleb128 0x9
	.long	.LASF118
	.value	0x137
	.byte	0x19
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.long	0x596
	.uleb128 0x1a
	.long	.LASF117
	.value	0x12e
	.byte	0x7
	.long	0x91
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ae
	.uleb128 0x9
	.long	.LASF88
	.value	0x12e
	.byte	0x1c
	.long	0x587
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF119
	.value	0x12e
	.byte	0x27
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.long	.LASF96
	.value	0x12e
	.byte	0x31
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF121
	.value	0x132
	.byte	0x6
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF145
	.byte	0x2
	.value	0x128
	.byte	0xc
	.long	0x58
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x804
	.uleb128 0x1c
	.string	"a"
	.byte	0x21
	.long	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"b"
	.byte	0x30
	.long	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"fa"
	.value	0x129
	.byte	0xb
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"fb"
	.value	0x12a
	.byte	0xb
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF123
	.byte	0x2
	.value	0x124
	.byte	0x6
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x851
	.uleb128 0x9
	.long	.LASF118
	.value	0x124
	.byte	0x28
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF122
	.value	0x124
	.byte	0x40
	.long	0x851
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF52
	.value	0x124
	.byte	0x57
	.long	0x490
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x4
	.long	0x669
	.uleb128 0xc
	.long	.LASF124
	.byte	0xab
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa7
	.uleb128 0x6
	.long	.LASF118
	.byte	0x2
	.byte	0xab
	.byte	0x25
	.long	0x74a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x6
	.long	.LASF125
	.byte	0x2
	.byte	0xab
	.byte	0x3d
	.long	0x669
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x6
	.long	.LASF126
	.byte	0x2
	.byte	0xab
	.byte	0x59
	.long	0x669
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x6
	.long	.LASF52
	.byte	0x2
	.byte	0xab
	.byte	0x74
	.long	0x490
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2
	.long	.LASF127
	.byte	0xad
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2d
	.long	.LASF163
	.long	0xab7
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.0
	.uleb128 0x2
	.long	.LASF128
	.byte	0xb7
	.byte	0x9
	.long	0x587
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF129
	.byte	0xb8
	.byte	0x9
	.long	0x587
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF119
	.byte	0xba
	.byte	0xb
	.long	0x3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.long	.LASF130
	.byte	0xbd
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2
	.long	.LASF131
	.byte	0xbe
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2
	.long	.LASF132
	.byte	0xbf
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2
	.long	.LASF133
	.byte	0xc2
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0xb
	.string	"lae"
	.byte	0xf5
	.byte	0x9
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.long	.LASF134
	.byte	0xf8
	.byte	0x9
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.long	.LASF135
	.byte	0xf9
	.byte	0x9
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.long	.LASF136
	.byte	0xfe
	.byte	0x9
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x9d9
	.uleb128 0xb
	.string	"i"
	.byte	0xca
	.byte	0x10
	.long	0x3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x7
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2
	.long	.LASF137
	.byte	0xcb
	.byte	0x9
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2
	.long	.LASF138
	.byte	0xd3
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0xa5f
	.uleb128 0x2
	.long	.LASF139
	.byte	0xdd
	.byte	0xc
	.long	0x3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x7
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0xb
	.string	"i"
	.byte	0xe2
	.byte	0x11
	.long	0x3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x7
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2
	.long	.LASF137
	.byte	0xe3
	.byte	0xa
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x7
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2
	.long	.LASF138
	.byte	0xeb
	.byte	0xb
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0xa85
	.uleb128 0x12
	.string	"las"
	.value	0x103
	.byte	0xa
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x7
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x1b
	.long	.LASF140
	.value	0x10a
	.byte	0x8
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x8c
	.long	0xab7
	.uleb128 0x10
	.long	0x43
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.long	0xaa7
	.uleb128 0xc
	.long	.LASF141
	.byte	0x8d
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc5
	.uleb128 0x6
	.long	.LASF118
	.byte	0x2
	.byte	0x8d
	.byte	0x28
	.long	0x74a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.long	.LASF122
	.byte	0x2
	.byte	0x8d
	.byte	0x40
	.long	0x669
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.long	.LASF52
	.byte	0x2
	.byte	0x8d
	.byte	0x55
	.long	0x490
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x7
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2
	.long	.LASF142
	.byte	0x91
	.byte	0xa
	.long	0x587
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF119
	.byte	0x92
	.byte	0xc
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.long	.LASF143
	.byte	0x94
	.byte	0x9
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0xb85
	.uleb128 0xb
	.string	"i"
	.byte	0x95
	.byte	0x11
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2
	.long	.LASF144
	.byte	0x97
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0xb
	.string	"i"
	.byte	0x9f
	.byte	0x12
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2
	.long	.LASF144
	.byte	0xa1
	.byte	0xb
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.string	"min"
	.byte	0x2
	.byte	0x89
	.byte	0x18
	.long	0x3c
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xc00
	.uleb128 0x13
	.string	"a"
	.byte	0x89
	.byte	0x25
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"b"
	.byte	0x89
	.byte	0x31
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF146
	.byte	0x81
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xc68
	.uleb128 0x6
	.long	.LASF147
	.byte	0x2
	.byte	0x81
	.byte	0x22
	.long	0x587
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF148
	.byte	0x2
	.byte	0x81
	.byte	0x30
	.long	0x587
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.long	.LASF119
	.byte	0x2
	.byte	0x81
	.byte	0x41
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xb
	.string	"i"
	.byte	0x83
	.byte	0x10
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF149
	.byte	0x7a
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xc94
	.uleb128 0x6
	.long	.LASF118
	.byte	0x2
	.byte	0x7a
	.byte	0x1d
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF150
	.byte	0x53
	.byte	0x9
	.long	0x74a
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xcfc
	.uleb128 0x2
	.long	.LASF118
	.byte	0x55
	.byte	0xa
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF151
	.byte	0x59
	.byte	0x9
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF152
	.byte	0x5a
	.byte	0x9
	.long	0x587
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF153
	.byte	0x61
	.byte	0x9
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.long	.LASF154
	.byte	0x62
	.byte	0x7
	.long	0x591
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF155
	.byte	0x4b
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xd28
	.uleb128 0x6
	.long	.LASF96
	.byte	0x2
	.byte	0x4b
	.byte	0x23
	.long	0x58c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF156
	.byte	0x3f
	.byte	0xc
	.long	0x58c
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xd66
	.uleb128 0x2
	.long	.LASF140
	.byte	0x40
	.byte	0x6
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.long	.LASF96
	.byte	0x42
	.byte	0xd
	.long	0x58c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF157
	.byte	0x2
	.byte	0x37
	.byte	0x7
	.long	0x91
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xda5
	.uleb128 0x6
	.long	.LASF118
	.byte	0x2
	.byte	0x37
	.byte	0x1b
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"le"
	.byte	0x37
	.byte	0x29
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.long	.LASF158
	.byte	0x2b
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF159
	.byte	0x23
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF164
	.byte	0x1
	.byte	0x28
	.byte	0x15
	.long	0x91
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.long	.LASF160
	.byte	0x1
	.byte	0x28
	.byte	0x2d
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
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
	.sleb128 2
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
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 296
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2f
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
.LASF118:
	.string	"levels"
.LASF100:
	.string	"direction"
.LASF65:
	.string	"segment_size"
.LASF37:
	.string	"_shortbuf"
.LASF162:
	.string	"_IO_lock_t"
.LASF147:
	.string	"input"
.LASF126:
	.string	"ring_aslow"
.LASF158:
	.string	"lae_average_destroy"
.LASF26:
	.string	"_IO_buf_end"
.LASF140:
	.string	"percentil_segment_number"
.LASF102:
	.string	"fflush"
.LASF24:
	.string	"_IO_write_end"
.LASF4:
	.string	"unsigned int"
.LASF42:
	.string	"_freeres_list"
.LASF60:
	.string	"sample_rate"
.LASF136:
	.string	"laeq"
.LASF18:
	.string	"_flags"
.LASF75:
	.string	"calibration_time"
.LASF123:
	.string	"process_segment_direction"
.LASF30:
	.string	"_markers"
.LASF81:
	.string	"mqtt_qos"
.LASF135:
	.string	"lafmin"
.LASF66:
	.string	"levels_record_period"
.LASF131:
	.string	"sample_max_afast"
.LASF111:
	.string	"sbuffer_read_ptr"
.LASF161:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF109:
	.string	"sbuffer"
.LASF99:
	.string	"le_counter"
.LASF122:
	.string	"ring"
.LASF85:
	.string	"stdout"
.LASF108:
	.string	"sbuffer_read_consumes"
.LASF29:
	.string	"_IO_save_end"
.LASF142:
	.string	"samples"
.LASF141:
	.string	"process_segment_levelpeak"
.LASF12:
	.string	"float"
.LASF97:
	.string	"event"
.LASF49:
	.string	"_IO_codecvt"
.LASF104:
	.string	"sqrt"
.LASF115:
	.string	"malloc"
.LASF121:
	.string	"index"
.LASF16:
	.string	"long long unsigned int"
.LASF160:
	.string	"linear"
.LASF28:
	.string	"_IO_backup_base"
.LASF39:
	.string	"_offset"
.LASF59:
	.string	"data_output_format"
.LASF32:
	.string	"_fileno"
.LASF14:
	.string	"size_t"
.LASF72:
	.string	"data_file_duration"
.LASF148:
	.string	"output"
.LASF21:
	.string	"_IO_read_base"
.LASF84:
	.string	"_Bool"
.LASF114:
	.string	"free"
.LASF128:
	.string	"samples_afast"
.LASF56:
	.string	"output_path"
.LASF90:
	.string	"segment_number"
.LASF89:
	.string	"Percentil"
.LASF83:
	.string	"server_socket"
.LASF57:
	.string	"output_filename"
.LASF11:
	.string	"char"
.LASF124:
	.string	"process_segment_levels"
.LASF45:
	.string	"_mode"
.LASF64:
	.string	"segment_duration"
.LASF48:
	.string	"_IO_marker"
.LASF95:
	.string	"background_LAS"
.LASF55:
	.string	"input_file"
.LASF125:
	.string	"ring_afast"
.LASF19:
	.string	"_IO_read_ptr"
.LASF94:
	.string	"LAFmin"
.LASF93:
	.string	"LAFmax"
.LASF106:
	.string	"log10"
.LASF145:
	.string	"cmp_func"
.LASF22:
	.string	"_IO_write_base"
.LASF164:
	.string	"linear_to_decibel"
.LASF15:
	.string	"long long int"
.LASF103:
	.string	"printf"
.LASF27:
	.string	"_IO_save_base"
.LASF155:
	.string	"percentil_destroy"
.LASF132:
	.string	"sample_min_afast"
.LASF61:
	.string	"channels"
.LASF159:
	.string	"lae_average_create"
.LASF113:
	.string	"memset"
.LASF98:
	.string	"le_accumulator"
.LASF69:
	.string	"audio_file_duration"
.LASF156:
	.string	"percentil_create"
.LASF17:
	.string	"__compar_fn_t"
.LASF119:
	.string	"size"
.LASF43:
	.string	"_freeres_buf"
.LASF87:
	.string	"long double"
.LASF133:
	.string	"sample_sum_aslow"
.LASF44:
	.string	"__pad5"
.LASF70:
	.string	"audio_record_ok"
.LASF82:
	.string	"mqtt_device_credential"
.LASF36:
	.string	"_vtable_offset"
.LASF88:
	.string	"array"
.LASF146:
	.string	"process_block_square"
.LASF134:
	.string	"lafmax"
.LASF101:
	.string	"Levels"
.LASF58:
	.string	"audio_output_format"
.LASF116:
	.string	"event_check"
.LASF53:
	.string	"identification"
.LASF154:
	.string	"ibuffer"
.LASF52:
	.string	"config"
.LASF20:
	.string	"_IO_read_end"
.LASF150:
	.string	"levels_create"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF153:
	.string	"Isegment_data_size"
.LASF62:
	.string	"bits_per_sample"
.LASF143:
	.string	"peak"
.LASF50:
	.string	"_IO_wide_data"
.LASF117:
	.string	"get_percentil"
.LASF63:
	.string	"block_size"
.LASF139:
	.string	"remaining"
.LASF76:
	.string	"calibration_reference"
.LASF149:
	.string	"levels_destroy"
.LASF110:
	.string	"sbuffer_read_size"
.LASF77:
	.string	"calibration_delta"
.LASF41:
	.string	"_wide_data"
.LASF38:
	.string	"_lock"
.LASF74:
	.string	"background_duration"
.LASF5:
	.string	"long unsigned int"
.LASF34:
	.string	"_old_offset"
.LASF51:
	.string	"_IO_FILE"
.LASF138:
	.string	"sample_aslow"
.LASF73:
	.string	"data_record_ok"
.LASF144:
	.string	"sample"
.LASF96:
	.string	"perc"
.LASF2:
	.string	"unsigned char"
.LASF23:
	.string	"_IO_write_ptr"
.LASF68:
	.string	"audio_loop_recording"
.LASF80:
	.string	"mqtt_topic"
.LASF86:
	.string	"config_struct"
.LASF54:
	.string	"input_device"
.LASF40:
	.string	"_codecvt"
.LASF79:
	.string	"mqtt_broker"
.LASF78:
	.string	"mqtt_enable"
.LASF9:
	.string	"__off_t"
.LASF120:
	.string	"beginning"
.LASF151:
	.string	"Fsegment_data_size"
.LASF6:
	.string	"signed char"
.LASF127:
	.string	"delta"
.LASF3:
	.string	"short unsigned int"
.LASF105:
	.string	"__assert_fail"
.LASF163:
	.string	"__PRETTY_FUNCTION__"
.LASF91:
	.string	"LAeq"
.LASF67:
	.string	"run_duration"
.LASF13:
	.string	"double"
.LASF112:
	.string	"sbuffer_size"
.LASF31:
	.string	"_chain"
.LASF152:
	.string	"fbuffer"
.LASF47:
	.string	"FILE"
.LASF33:
	.string	"_flags2"
.LASF130:
	.string	"sample_sum_afast"
.LASF35:
	.string	"_cur_column"
.LASF129:
	.string	"samples_aslow"
.LASF71:
	.string	"data_loop_recording"
.LASF92:
	.string	"LApeak"
.LASF137:
	.string	"sample_afast"
.LASF10:
	.string	"__off64_t"
.LASF46:
	.string	"_unused2"
.LASF25:
	.string	"_IO_buf_base"
.LASF107:
	.string	"qsort"
.LASF157:
	.string	"lae_average"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/aluno/Desktop/sound_meter-master_v03_1"
.LASF0:
	.string	"src/process.c"
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
