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
	.loc 2 64 85
	movq	config_struct(%rip), %rdx
	movl	72(%rdx), %edx
	.loc 2 64 104
	addl	$999, %edx
	.loc 2 64 111
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
	.loc 2 83 25
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 2 84 22
	movl	$96, %edi
	call	malloc@PLT
	movq	%rax, -48(%rbp)
	.loc 2 85 8
	cmpq	$0, -48(%rbp)
	jne	.L16
	.loc 2 86 15
	movl	$0, %eax
	jmp	.L17
.L16:
	.loc 2 88 46
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 88 12
	salq	$2, %rax
	movq	%rax, -40(%rbp)
	.loc 2 89 22
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -32(%rbp)
	.loc 2 90 8
	cmpq	$0, -32(%rbp)
	jne	.L18
	.loc 2 91 9
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 92 15
	movl	$0, %eax
	jmp	.L17
.L18:
	.loc 2 94 5
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 2 96 46
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 96 12
	salq	$2, %rax
	movq	%rax, -24(%rbp)
	.loc 2 97 20
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	.loc 2 98 8
	cmpq	$0, -16(%rbp)
	jne	.L19
	.loc 2 99 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 100 9
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 101 15
	movl	$0, %eax
	jmp	.L17
.L19:
	.loc 2 103 5
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 2 105 12
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 106 18
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 107 26
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 107 10
	salq	$2, %rax
	addq	%rax, -8(%rbp)
	.loc 2 108 20
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 2 109 26
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 109 10
	salq	$2, %rax
	addq	%rax, -8(%rbp)
	.loc 2 110 20
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 2 111 26
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 111 10
	salq	$2, %rax
	addq	%rax, -8(%rbp)
	.loc 2 112 20
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	.loc 2 113 26
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 113 10
	salq	$2, %rax
	addq	%rax, -8(%rbp)
	.loc 2 114 17
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 40(%rax)
	.loc 2 115 26
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 115 10
	salq	$2, %rax
	addq	%rax, -8(%rbp)
	.loc 2 116 17
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 48(%rax)
	.loc 2 118 19
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 72(%rax)
	.loc 2 119 43
	movq	config_struct(%rip), %rax
	movss	120(%rax), %xmm0
	.loc 2 119 28
	movq	-48(%rbp), %rax
	movss	%xmm0, 56(%rax)
	.loc 2 120 28
	movq	-48(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 80(%rax)
	.loc 2 121 24
	movq	-48(%rbp), %rax
	movl	$0, 88(%rax)
	.loc 2 122 20
	movl	$0, %eax
	call	percentil_create
	.loc 2 122 18 discriminator 1
	movq	-48(%rbp), %rdx
	movq	%rax, 64(%rdx)
	.loc 2 124 15
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 124 8
	testq	%rax, %rax
	jne	.L20
	.loc 2 125 9
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 126 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 127 9
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 128 15
	movl	$0, %eax
	jmp	.L17
.L20:
	.loc 2 131 28
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	.loc 2 132 12
	movq	-48(%rbp), %rax
.L17:
	.loc 2 133 1
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
	.loc 2 137 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 138 13
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 138 2
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 139 2
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	percentil_destroy
	.loc 2 140 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 141 1
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
	.loc 2 144 1
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
	.loc 2 145 16
	movl	$0, -4(%rbp)
	.loc 2 145 2
	jmp	.L23
.L24:
	.loc 2 146 24
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 146 15
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movq	%xmm2, %rax
	movsd	.LC4(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	.loc 2 146 9 discriminator 1
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 146 15 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	.loc 2 146 13 discriminator 1
	movss	%xmm0, (%rax)
	.loc 2 145 34 discriminator 3
	addl	$1, -4(%rbp)
.L23:
	.loc 2 145 25 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L24
.LBE2:
	.loc 2 149 1
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
	.loc 2 151 52
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 2 152 19
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	cmovbe	%edx, %eax
	.loc 2 153 1
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
	.loc 2 156 1
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
	.loc 2 158 6
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	movl	%eax, %edx
	.loc 2 158 41 discriminator 1
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 158 5 discriminator 1
	cmpl	%eax, %edx
	jb	.L40
.LBB3:
	.loc 2 159 20
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 160 61
	movq	config_struct(%rip), %rax
	.loc 2 160 19
	movl	76(%rax), %ebx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_size@PLT
	.loc 2 160 19 is_stmt 0 discriminator 1
	movl	%ebx, %esi
	movl	%eax, %edi
	call	min
	movl	%eax, -36(%rbp)
	.loc 2 162 9 is_stmt 1
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -48(%rbp)
.LBB4:
	.loc 2 163 17
	movl	$1, -44(%rbp)
	.loc 2 163 3
	jmp	.L29
.L32:
.LBB5:
	.loc 2 165 31
	movl	-44(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 165 10
	movss	.LC5(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 2 166 7
	movss	-28(%rbp), %xmm0
	comiss	-48(%rbp), %xmm0
	jbe	.L30
	.loc 2 167 10
	movss	-28(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
.L30:
.LBE5:
	.loc 2 163 35 discriminator 2
	addl	$1, -44(%rbp)
.L29:
	.loc 2 163 26 discriminator 1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L32
.LBE4:
	.loc 2 169 3
	movl	-36(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
	.loc 2 170 27
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 170 6
	cmpl	%eax, -36(%rbp)
	jnb	.L33
	.loc 2 171 14
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 172 24
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 172 9
	subl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB6:
	.loc 2 173 18
	movl	$0, -40(%rbp)
	.loc 2 173 4
	jmp	.L34
.L37:
.LBB7:
	.loc 2 175 32
	movl	-40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 175 11
	movss	.LC5(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	.loc 2 176 8
	movss	-32(%rbp), %xmm0
	comiss	-48(%rbp), %xmm0
	jbe	.L35
	.loc 2 177 11
	movss	-32(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
.L35:
.LBE7:
	.loc 2 173 36 discriminator 2
	addl	$1, -40(%rbp)
.L34:
	.loc 2 173 27 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L37
.LBE6:
	.loc 2 179 4
	movl	-36(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
.L33:
	.loc 2 181 44
	movl	-48(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	.loc 2 181 76 discriminator 1
	movq	-72(%rbp), %rax
	movss	124(%rax), %xmm1
	.loc 2 181 9 discriminator 1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 181 24 discriminator 1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 181 17 discriminator 1
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 2 181 68 discriminator 1
	addss	%xmm1, %xmm0
	.loc 2 181 42 discriminator 1
	movss	%xmm0, (%rax)
.L40:
.LBE3:
	.loc 2 183 1
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
	.loc 2 186 1
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
	.loc 2 187 8
	pxor	%xmm0, %xmm0
	movss	%xmm0, -108(%rbp)
	.loc 2 188 5
	cmpq	$0, -144(%rbp)
	je	.L42
	.loc 2 189 9
	movq	-144(%rbp), %rax
	movss	124(%rax), %xmm0
	movss	%xmm0, -108(%rbp)
.L42:
	.loc 2 192 1
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	movl	%eax, %edx
	.loc 2 192 42 discriminator 1
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 192 33 discriminator 1
	cmpl	%eax, %edx
	jnb	.L43
	.loc 2 192 10 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$192, %edx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L43:
	.loc 2 193 12
	movq	-120(%rbp), %rax
	movl	(%rax), %edx
	.loc 2 193 45
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	.loc 2 193 5
	cmpl	%eax, %edx
	jb	.L44
	.loc 2 194 26
	movq	-120(%rbp), %rax
	movl	$0, (%rax)
.L44:
	.loc 2 197 25
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 198 9
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 200 66
	movq	config_struct(%rip), %rax
	.loc 2 200 18
	movl	76(%rax), %ebx
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_size@PLT
	.loc 2 200 18 is_stmt 0 discriminator 1
	movl	%ebx, %esi
	movl	%eax, %edi
	call	min
	movl	%eax, -72(%rbp)
	.loc 2 203 8 is_stmt 1
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -104(%rbp)
	.loc 2 204 8
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -100(%rbp)
	.loc 2 205 8
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -96(%rbp)
	.loc 2 208 8
	movss	-104(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	.loc 2 210 5
	cmpq	$0, -136(%rbp)
	je	.L45
	.loc 2 211 2
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	movl	%eax, %ebx
	.loc 2 211 30 discriminator 1
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	.loc 2 211 34 discriminator 2
	cmpl	%eax, %ebx
	je	.L46
	.loc 2 211 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$211, %edx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L46:
	.loc 2 212 19
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -32(%rbp)
	.loc 2 213 20
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -92(%rbp)
.L45:
.LBB8:
	.loc 2 216 16
	movl	$1, -88(%rbp)
	.loc 2 216 2
	jmp	.L47
.L53:
.LBB9:
	.loc 2 217 37
	movl	-88(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 217 9
	movss	(%rax), %xmm0
	movss	%xmm0, -40(%rbp)
	.loc 2 218 20
	movss	-104(%rbp), %xmm0
	addss	-40(%rbp), %xmm0
	movss	%xmm0, -104(%rbp)
	.loc 2 219 6
	movss	-40(%rbp), %xmm0
	comiss	-100(%rbp), %xmm0
	jbe	.L48
	.loc 2 220 21
	movss	-40(%rbp), %xmm0
	movss	%xmm0, -100(%rbp)
.L48:
	.loc 2 221 6
	movss	-96(%rbp), %xmm0
	comiss	-40(%rbp), %xmm0
	jbe	.L50
	.loc 2 222 21
	movss	-40(%rbp), %xmm0
	movss	%xmm0, -96(%rbp)
.L50:
	.loc 2 224 6
	cmpq	$0, -136(%rbp)
	je	.L52
.LBB10:
	.loc 2 225 38
	movl	-88(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 225 10
	movss	(%rax), %xmm0
	movss	%xmm0, -36(%rbp)
	.loc 2 226 21
	movss	-92(%rbp), %xmm0
	addss	-36(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
.L52:
.LBE10:
.LBE9:
	.loc 2 216 34 discriminator 2
	addl	$1, -88(%rbp)
.L47:
	.loc 2 216 25 discriminator 1
	movl	-88(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jb	.L53
.LBE8:
	.loc 2 230 2
	movl	-72(%rbp), %edx
	movq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
	.loc 2 231 5
	cmpq	$0, -136(%rbp)
	je	.L54
	.loc 2 232 3
	movl	-72(%rbp), %edx
	movq	-136(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
.L54:
	.loc 2 234 26
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 234 5
	cmpl	%eax, -72(%rbp)
	jnb	.L55
.LBB11:
	.loc 2 235 37
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 235 12
	subl	-72(%rbp), %eax
	movl	%eax, -68(%rbp)
	.loc 2 236 19
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 237 6
	cmpq	$0, -136(%rbp)
	je	.L56
	.loc 2 238 20
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -32(%rbp)
.L56:
.LBB12:
	.loc 2 240 17
	movl	$0, -84(%rbp)
	.loc 2 240 3
	jmp	.L57
.L63:
.LBB13:
	.loc 2 241 38
	movl	-84(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 241 10
	movss	(%rax), %xmm0
	movss	%xmm0, -64(%rbp)
	.loc 2 242 21
	movss	-104(%rbp), %xmm0
	addss	-64(%rbp), %xmm0
	movss	%xmm0, -104(%rbp)
	.loc 2 243 7
	movss	-64(%rbp), %xmm0
	comiss	-100(%rbp), %xmm0
	jbe	.L58
	.loc 2 244 22
	movss	-64(%rbp), %xmm0
	movss	%xmm0, -100(%rbp)
.L58:
	.loc 2 245 7
	movss	-96(%rbp), %xmm0
	comiss	-64(%rbp), %xmm0
	jbe	.L60
	.loc 2 246 22
	movss	-64(%rbp), %xmm0
	movss	%xmm0, -96(%rbp)
.L60:
	.loc 2 248 7
	cmpq	$0, -136(%rbp)
	je	.L62
.LBB14:
	.loc 2 249 39
	movl	-84(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 249 11
	movss	(%rax), %xmm0
	movss	%xmm0, -60(%rbp)
	.loc 2 250 22
	movss	-92(%rbp), %xmm0
	addss	-60(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
.L62:
.LBE14:
.LBE13:
	.loc 2 240 40 discriminator 2
	addl	$1, -84(%rbp)
.L57:
	.loc 2 240 26 discriminator 1
	movl	-84(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jb	.L63
.LBE12:
	.loc 2 253 3
	movl	-68(%rbp), %edx
	movq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
	.loc 2 254 6
	cmpq	$0, -136(%rbp)
	je	.L55
	.loc 2 255 4
	movl	-68(%rbp), %edx
	movq	-136(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
.L55:
.LBE11:
	.loc 2 259 52
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 259 37
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L64
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L65
.L64:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L65:
	movss	-104(%rbp), %xmm1
	divss	%xmm0, %xmm1
	.loc 2 259 15
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 259 9 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
	.loc 2 260 6
	pxor	%xmm0, %xmm0
	comiss	-104(%rbp), %xmm0
	jbe	.L66
	.loc 2 261 53
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 261 38
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L68
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L69
.L68:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L69:
	movss	-104(%rbp), %xmm1
	divss	%xmm0, %xmm1
	.loc 2 261 16
	movss	.LC5(%rip), %xmm0
	andps	%xmm1, %xmm0
	.loc 2 261 11
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 261 11 is_stmt 0 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	.loc 2 261 8 is_stmt 1 discriminator 1
	movss	.LC10(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
.L66:
	.loc 2 262 18
	pxor	%xmm4, %xmm4
	cvtss2sd	-100(%rbp), %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 262 9 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	.loc 2 263 18
	pxor	%xmm5, %xmm5
	cvtss2sd	-96(%rbp), %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 263 9 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	.loc 2 264 41
	movl	-80(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	movd	%xmm0, %eax
	.loc 2 264 9 discriminator 1
	movq	-120(%rbp), %rdx
	movq	40(%rdx), %rcx
	.loc 2 264 21 discriminator 1
	movq	-120(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, %edx
	.loc 2 264 14 discriminator 1
	salq	$2, %rdx
	addq	%rcx, %rdx
	.loc 2 264 64 discriminator 1
	movd	%eax, %xmm0
	addss	-108(%rbp), %xmm0
	.loc 2 264 39 discriminator 1
	movss	%xmm0, (%rdx)
	.loc 2 265 44
	movl	-56(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	movd	%xmm0, %eax
	.loc 2 265 9 discriminator 1
	movq	-120(%rbp), %rdx
	movq	24(%rdx), %rcx
	.loc 2 265 24 discriminator 1
	movq	-120(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, %edx
	.loc 2 265 17 discriminator 1
	salq	$2, %rdx
	addq	%rcx, %rdx
	.loc 2 265 70 discriminator 1
	movd	%eax, %xmm0
	addss	-108(%rbp), %xmm0
	.loc 2 265 42 discriminator 1
	movss	%xmm0, (%rdx)
	.loc 2 266 44
	movl	-52(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	movd	%xmm0, %eax
	.loc 2 266 9 discriminator 1
	movq	-120(%rbp), %rdx
	movq	32(%rdx), %rcx
	.loc 2 266 24 discriminator 1
	movq	-120(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, %edx
	.loc 2 266 17 discriminator 1
	salq	$2, %rdx
	addq	%rcx, %rdx
	.loc 2 266 70 discriminator 1
	movd	%eax, %xmm0
	addss	-108(%rbp), %xmm0
	.loc 2 266 42 discriminator 1
	movss	%xmm0, (%rdx)
	.loc 2 268 16
	movl	-80(%rbp), %edx
	movq	-120(%rbp), %rax
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	lae_average
	movd	%xmm0, %eax
	movl	%eax, -48(%rbp)
	.loc 2 269 42
	movl	-48(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	movd	%xmm0, %eax
	.loc 2 269 9 discriminator 1
	movq	-120(%rbp), %rdx
	movq	8(%rdx), %rcx
	.loc 2 269 22 discriminator 1
	movq	-120(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, %edx
	.loc 2 269 15 discriminator 1
	salq	$2, %rdx
	addq	%rcx, %rdx
	.loc 2 269 66 discriminator 1
	movd	%eax, %xmm0
	addss	-108(%rbp), %xmm0
	.loc 2 269 40 discriminator 1
	movss	%xmm0, (%rdx)
	.loc 2 272 6
	cmpq	$0, -136(%rbp)
	je	.L70
.LBB15:
	.loc 2 273 53
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 273 38
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L71
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L72
.L71:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L72:
	movss	-92(%rbp), %xmm1
	divss	%xmm0, %xmm1
	.loc 2 273 16
	pxor	%xmm6, %xmm6
	cvtss2sd	%xmm1, %xmm6
	movq	%xmm6, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 273 10 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	.loc 2 274 7
	pxor	%xmm0, %xmm0
	comiss	-92(%rbp), %xmm0
	jbe	.L73
	.loc 2 275 54
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 275 39
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L75
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L76
.L75:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L76:
	movss	-92(%rbp), %xmm1
	divss	%xmm0, %xmm1
	.loc 2 275 17
	movss	.LC5(%rip), %xmm0
	andps	%xmm1, %xmm0
	.loc 2 275 12
	pxor	%xmm7, %xmm7
	cvtss2sd	%xmm0, %xmm7
	movq	%xmm7, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 275 12 is_stmt 0 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	.loc 2 275 9 is_stmt 1 discriminator 1
	movss	.LC10(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
.L73:
	.loc 2 276 42
	movl	-76(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	movd	%xmm0, %eax
	.loc 2 276 10 discriminator 1
	movq	-120(%rbp), %rdx
	movq	48(%rdx), %rcx
	.loc 2 276 22 discriminator 1
	movq	-120(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, %edx
	.loc 2 276 15 discriminator 1
	salq	$2, %rdx
	addq	%rcx, %rdx
	.loc 2 276 65 discriminator 1
	movd	%eax, %xmm0
	addss	-108(%rbp), %xmm0
	.loc 2 276 40 discriminator 1
	movss	%xmm0, (%rdx)
.L70:
.LBE15:
	.loc 2 279 5
	cmpq	$0, -136(%rbp)
	je	.L77
.LBB16:
	.loc 2 280 48
	movq	config_struct(%rip), %rax
	movl	112(%rax), %eax
	.loc 2 280 87
	movq	config_struct(%rip), %rdx
	movl	72(%rdx), %edx
	.loc 2 280 106
	addl	$999, %edx
	.loc 2 280 113
	movl	%edx, %edx
	imulq	$274877907, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ebx
	shrl	$6, %ebx
	.loc 2 280 70
	movl	$0, %edx
	divl	%ebx
	.loc 2 280 8
	movl	%eax, -44(%rbp)
	.loc 2 283 51
	movq	-120(%rbp), %rax
	movq	48(%rax), %rdx
	.loc 2 283 63
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 283 56
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 283 10
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 283 30
	movq	-120(%rbp), %rdx
	movq	64(%rdx), %rdx
	.loc 2 283 36
	movl	(%rdx), %edx
	.loc 2 283 56
	movss	(%rcx), %xmm0
	.loc 2 283 43
	movl	%edx, %edx
	movss	%xmm0, 4(%rax,%rdx,4)
	.loc 2 284 10
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 284 16
	movl	(%rax), %edx
	.loc 2 284 21
	addl	$1, %edx
	movl	%edx, (%rax)
	.loc 2 286 8
	movl	beginning(%rip), %eax
	.loc 2 286 7
	testl	%eax, %eax
	je	.L78
	.loc 2 287 71
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 287 77
	movl	(%rax), %eax
	.loc 2 287 30
	movl	%eax, %ecx
	.loc 2 287 50
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 287 56
	addq	$4, %rax
	.loc 2 287 30
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_percentil
	movd	%xmm0, %eax
	.loc 2 287 28 discriminator 1
	movq	-120(%rbp), %rdx
	movl	%eax, 56(%rdx)
.L78:
	.loc 2 288 14
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 288 20
	movl	(%rax), %edx
	.loc 2 288 26
	movl	-44(%rbp), %eax
	.loc 2 288 7
	cmpl	%eax, %edx
	jb	.L79
	.loc 2 289 71
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 289 77
	movl	(%rax), %eax
	.loc 2 289 30
	movl	%eax, %ecx
	.loc 2 289 50
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 289 56
	addq	$4, %rax
	.loc 2 289 30
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_percentil
	movd	%xmm0, %eax
	.loc 2 289 28 discriminator 1
	movq	-120(%rbp), %rdx
	movl	%eax, 56(%rdx)
	.loc 2 290 11
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 290 23
	movl	$0, (%rax)
	.loc 2 291 15
	movl	$0, beginning(%rip)
.L79:
	.loc 2 294 10
	movq	-120(%rbp), %rax
	movq	72(%rax), %rdx
	.loc 2 294 24
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 294 17
	salq	$2, %rax
	leaq	(%rdx,%rax), %rbx
	.loc 2 294 44
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	event_check
	.loc 2 294 42 discriminator 1
	movl	%eax, (%rbx)
.L77:
.LBE16:
	.loc 2 296 8
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 296 24
	leal	1(%rax), %edx
	movq	-120(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 297 1
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
	.loc 2 307 1
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
	.loc 2 308 1
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
	.loc 2 310 51
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 311 11
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -8(%rbp)
	.loc 2 312 11
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 2 313 16
	movss	-8(%rbp), %xmm0
	comiss	-4(%rbp), %xmm0
	seta	%al
	movzbl	%al, %edx
	.loc 2 313 28
	movss	-4(%rbp), %xmm0
	comiss	-8(%rbp), %xmm0
	seta	%al
	movzbl	%al, %eax
	.loc 2 313 22
	subl	%eax, %edx
	.loc 2 313 22 is_stmt 0 discriminator 1
	movl	%edx, %eax
	.loc 2 314 1 is_stmt 1
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
	.loc 2 316 54
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
	.loc 2 318 2
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rax
	leaq	cmp_func(%rip), %rdx
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	.loc 2 320 21
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	.loc 2 320 6
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 2 322 17
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 323 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	get_percentil, .-get_percentil
	.globl	event_check
	.type	event_check, @function
event_check:
.LFB22:
	.loc 2 325 32
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 329 11
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	.loc 2 329 23
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 329 16
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 329 49
	movq	-8(%rbp), %rax
	movss	56(%rax), %xmm2
	.loc 2 329 66
	movss	.LC11(%rip), %xmm1
	addss	%xmm2, %xmm1
	.loc 2 329 4
	comiss	%xmm1, %xmm0
	jbe	.L96
	.loc 2 330 11
	movl	$1, %eax
	jmp	.L94
.L96:
	.loc 2 332 9
	movl	$0, %eax
.L94:
	.loc 2 333 1
	popq	%rbp
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
.LC4:
	.long	0
	.long	1073741824
	.align 16
.LC5:
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
.LC11:
	.long	1092616192
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 4 "/usr/include/stdlib.h"
	.file 5 "src/config.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 7 "/usr/include/assert.h"
	.file 8 "src/sbuffer.h"
	.file 9 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xbd7
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x19
	.long	.LASF121
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x1b
	.byte	0x8
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x12
	.long	0x68
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF11
	.uleb128 0xf
	.long	.LASF14
	.byte	0x3
	.byte	0xd6
	.byte	0x1b
	.long	0x43
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x4
	.value	0x3b4
	.byte	0xf
	.long	0xa9
	.uleb128 0x7
	.long	0xae
	.uleb128 0x1d
	.long	0x58
	.long	0xc2
	.uleb128 0x3
	.long	0xc2
	.uleb128 0x3
	.long	0xc2
	.byte	0
	.uleb128 0x7
	.long	0xc7
	.uleb128 0x1e
	.uleb128 0x7
	.long	0x6f
	.uleb128 0x1f
	.long	.LASF81
	.byte	0xb0
	.byte	0x5
	.byte	0x53
	.byte	0x8
	.long	0x26e
	.uleb128 0x1
	.long	.LASF16
	.byte	0x5
	.byte	0x55
	.byte	0xe
	.long	0xc8
	.byte	0
	.uleb128 0x1
	.long	.LASF17
	.byte	0x5
	.byte	0x56
	.byte	0xe
	.long	0xc8
	.byte	0x8
	.uleb128 0x1
	.long	.LASF18
	.byte	0x5
	.byte	0x57
	.byte	0xe
	.long	0xc8
	.byte	0x10
	.uleb128 0x1
	.long	.LASF19
	.byte	0x5
	.byte	0x58
	.byte	0xe
	.long	0xc8
	.byte	0x18
	.uleb128 0x1
	.long	.LASF20
	.byte	0x5
	.byte	0x59
	.byte	0xe
	.long	0xc8
	.byte	0x20
	.uleb128 0x1
	.long	.LASF21
	.byte	0x5
	.byte	0x5a
	.byte	0xe
	.long	0xc8
	.byte	0x28
	.uleb128 0x1
	.long	.LASF22
	.byte	0x5
	.byte	0x5b
	.byte	0xe
	.long	0xc8
	.byte	0x30
	.uleb128 0x1
	.long	.LASF23
	.byte	0x5
	.byte	0x5d
	.byte	0xb
	.long	0x3c
	.byte	0x38
	.uleb128 0x1
	.long	.LASF24
	.byte	0x5
	.byte	0x5e
	.byte	0xb
	.long	0x3c
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF25
	.byte	0x5
	.byte	0x5f
	.byte	0xb
	.long	0x3c
	.byte	0x40
	.uleb128 0x1
	.long	.LASF26
	.byte	0x5
	.byte	0x60
	.byte	0xb
	.long	0x3c
	.byte	0x44
	.uleb128 0x1
	.long	.LASF27
	.byte	0x5
	.byte	0x61
	.byte	0xb
	.long	0x3c
	.byte	0x48
	.uleb128 0x1
	.long	.LASF28
	.byte	0x5
	.byte	0x62
	.byte	0xb
	.long	0x3c
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF29
	.byte	0x5
	.byte	0x63
	.byte	0xb
	.long	0x3c
	.byte	0x50
	.uleb128 0x1
	.long	.LASF30
	.byte	0x5
	.byte	0x64
	.byte	0xb
	.long	0x3c
	.byte	0x54
	.uleb128 0x1
	.long	.LASF31
	.byte	0x5
	.byte	0x65
	.byte	0xb
	.long	0x3c
	.byte	0x58
	.uleb128 0x1
	.long	.LASF32
	.byte	0x5
	.byte	0x66
	.byte	0xb
	.long	0x3c
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF33
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.long	0x26e
	.byte	0x60
	.uleb128 0x1
	.long	.LASF34
	.byte	0x5
	.byte	0x68
	.byte	0xb
	.long	0x3c
	.byte	0x64
	.uleb128 0x1
	.long	.LASF35
	.byte	0x5
	.byte	0x69
	.byte	0xb
	.long	0x3c
	.byte	0x68
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5
	.byte	0x6a
	.byte	0x8
	.long	0x26e
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5
	.byte	0x6b
	.byte	0xb
	.long	0x3c
	.byte	0x70
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5
	.byte	0x6d
	.byte	0xb
	.long	0x3c
	.byte	0x74
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5
	.byte	0x6e
	.byte	0x8
	.long	0x74
	.byte	0x78
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5
	.byte	0x6f
	.byte	0x8
	.long	0x74
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5
	.byte	0x71
	.byte	0x6
	.long	0x26e
	.byte	0x80
	.uleb128 0x1
	.long	.LASF42
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.long	0xc8
	.byte	0x88
	.uleb128 0x1
	.long	.LASF43
	.byte	0x5
	.byte	0x73
	.byte	0xe
	.long	0xc8
	.byte	0x90
	.uleb128 0x1
	.long	.LASF44
	.byte	0x5
	.byte	0x74
	.byte	0x6
	.long	0x58
	.byte	0x98
	.uleb128 0x1
	.long	.LASF45
	.byte	0x5
	.byte	0x75
	.byte	0xe
	.long	0xc8
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF46
	.byte	0x5
	.byte	0x77
	.byte	0xe
	.long	0xc8
	.byte	0xa8
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF47
	.uleb128 0x20
	.long	.LASF122
	.byte	0x5
	.byte	0x7f
	.byte	0x17
	.long	0x281
	.uleb128 0x7
	.long	0xcd
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF48
	.uleb128 0x13
	.byte	0x4
	.byte	0x33
	.long	0x2ae
	.uleb128 0x10
	.string	"pos"
	.byte	0x34
	.byte	0xb
	.long	0x3c
	.byte	0
	.uleb128 0x1
	.long	.LASF49
	.byte	0x1
	.byte	0x35
	.byte	0x8
	.long	0x2ae
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.long	0x74
	.long	0x2bd
	.uleb128 0x21
	.long	0x43
	.byte	0
	.uleb128 0xf
	.long	.LASF50
	.byte	0x1
	.byte	0x36
	.byte	0x3
	.long	0x28d
	.uleb128 0x13
	.byte	0x60
	.byte	0x3b
	.long	0x378
	.uleb128 0x1
	.long	.LASF51
	.byte	0x1
	.byte	0x3c
	.byte	0xb
	.long	0x3c
	.byte	0
	.uleb128 0x1
	.long	.LASF52
	.byte	0x1
	.byte	0x3d
	.byte	0x9
	.long	0x378
	.byte	0x8
	.uleb128 0x1
	.long	.LASF53
	.byte	0x1
	.byte	0x3e
	.byte	0x9
	.long	0x378
	.byte	0x10
	.uleb128 0x1
	.long	.LASF54
	.byte	0x1
	.byte	0x3f
	.byte	0x9
	.long	0x378
	.byte	0x18
	.uleb128 0x1
	.long	.LASF55
	.byte	0x1
	.byte	0x40
	.byte	0x9
	.long	0x378
	.byte	0x20
	.uleb128 0x10
	.string	"LAE"
	.byte	0x41
	.byte	0x9
	.long	0x378
	.byte	0x28
	.uleb128 0x10
	.string	"LAS"
	.byte	0x42
	.byte	0x9
	.long	0x378
	.byte	0x30
	.uleb128 0x1
	.long	.LASF56
	.byte	0x1
	.byte	0x43
	.byte	0x8
	.long	0x74
	.byte	0x38
	.uleb128 0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x44
	.byte	0xd
	.long	0x37d
	.byte	0x40
	.uleb128 0x1
	.long	.LASF58
	.byte	0x1
	.byte	0x45
	.byte	0x7
	.long	0x382
	.byte	0x48
	.uleb128 0x1
	.long	.LASF59
	.byte	0x1
	.byte	0x46
	.byte	0x9
	.long	0x7b
	.byte	0x50
	.uleb128 0x1
	.long	.LASF60
	.byte	0x1
	.byte	0x47
	.byte	0xb
	.long	0x3c
	.byte	0x58
	.uleb128 0x1
	.long	.LASF61
	.byte	0x1
	.byte	0x48
	.byte	0x6
	.long	0x58
	.byte	0x5c
	.byte	0
	.uleb128 0x7
	.long	0x74
	.uleb128 0x7
	.long	0x2bd
	.uleb128 0x7
	.long	0x58
	.uleb128 0xf
	.long	.LASF62
	.byte	0x1
	.byte	0x49
	.byte	0x3
	.long	0x2c9
	.uleb128 0x2
	.long	.LASF78
	.byte	0x20
	.byte	0xc
	.long	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	beginning
	.uleb128 0x15
	.long	.LASF66
	.value	0x3ca
	.long	0x3c8
	.uleb128 0x3
	.long	0x66
	.uleb128 0x3
	.long	0x82
	.uleb128 0x3
	.long	0x82
	.uleb128 0x3
	.long	0x9c
	.byte	0
	.uleb128 0x9
	.long	.LASF63
	.byte	0x6
	.byte	0x8f
	.byte	0xf
	.long	0x7b
	.long	0x3de
	.uleb128 0x3
	.long	0x7b
	.byte	0
	.uleb128 0x22
	.long	.LASF64
	.byte	0x7
	.byte	0x45
	.byte	0xd
	.long	0x3ff
	.uleb128 0x3
	.long	0xc8
	.uleb128 0x3
	.long	0xc8
	.uleb128 0x3
	.long	0x3c
	.uleb128 0x3
	.long	0xc8
	.byte	0
	.uleb128 0x9
	.long	.LASF65
	.byte	0x6
	.byte	0x6b
	.byte	0x10
	.long	0x7b
	.long	0x415
	.uleb128 0x3
	.long	0x7b
	.byte	0
	.uleb128 0x23
	.long	.LASF67
	.byte	0x8
	.byte	0x29
	.byte	0x6
	.long	0x42c
	.uleb128 0x3
	.long	0x42c
	.uleb128 0x3
	.long	0x3c
	.byte	0
	.uleb128 0x7
	.long	0x431
	.uleb128 0x24
	.long	.LASF123
	.uleb128 0x9
	.long	.LASF68
	.byte	0x8
	.byte	0x24
	.byte	0xa
	.long	0x3c
	.long	0x44c
	.uleb128 0x3
	.long	0x42c
	.byte	0
	.uleb128 0x9
	.long	.LASF69
	.byte	0x8
	.byte	0x1f
	.byte	0x8
	.long	0x378
	.long	0x462
	.uleb128 0x3
	.long	0x42c
	.byte	0
	.uleb128 0x9
	.long	.LASF70
	.byte	0x8
	.byte	0x15
	.byte	0xa
	.long	0x3c
	.long	0x478
	.uleb128 0x3
	.long	0x42c
	.byte	0
	.uleb128 0x25
	.string	"pow"
	.byte	0x6
	.byte	0x8c
	.byte	0x10
	.long	0x7b
	.long	0x493
	.uleb128 0x3
	.long	0x7b
	.uleb128 0x3
	.long	0x7b
	.byte	0
	.uleb128 0x9
	.long	.LASF71
	.byte	0x9
	.byte	0x3d
	.byte	0xe
	.long	0x66
	.long	0x4b3
	.uleb128 0x3
	.long	0x66
	.uleb128 0x3
	.long	0x58
	.uleb128 0x3
	.long	0x82
	.byte	0
	.uleb128 0x15
	.long	.LASF72
	.value	0x2af
	.long	0x4c4
	.uleb128 0x3
	.long	0x66
	.byte	0
	.uleb128 0x26
	.long	.LASF73
	.byte	0x4
	.value	0x2a0
	.byte	0xe
	.long	0x66
	.long	0x4db
	.uleb128 0x3
	.long	0x82
	.byte	0
	.uleb128 0x27
	.long	.LASF74
	.byte	0x2
	.value	0x145
	.byte	0x5
	.long	0x58
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x50e
	.uleb128 0x8
	.long	.LASF76
	.value	0x145
	.byte	0x19
	.long	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.long	0x387
	.uleb128 0x28
	.long	.LASF75
	.byte	0x2
	.value	0x13c
	.byte	0x7
	.long	0x74
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x573
	.uleb128 0x8
	.long	.LASF49
	.value	0x13c
	.byte	0x1c
	.long	0x378
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF77
	.value	0x13c
	.byte	0x27
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.long	.LASF57
	.value	0x13c
	.byte	0x31
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.long	.LASF79
	.value	0x140
	.byte	0x6
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.long	.LASF104
	.byte	0x2
	.value	0x136
	.byte	0xc
	.long	0x58
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c9
	.uleb128 0x16
	.string	"a"
	.byte	0x21
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"b"
	.byte	0x30
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.string	"fa"
	.value	0x137
	.byte	0xb
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"fb"
	.value	0x138
	.byte	0xb
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF82
	.byte	0x2
	.value	0x132
	.byte	0x6
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x616
	.uleb128 0x8
	.long	.LASF76
	.value	0x132
	.byte	0x28
	.long	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.long	.LASF80
	.value	0x132
	.byte	0x40
	.long	0x616
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF81
	.value	0x132
	.byte	0x57
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.long	0x42c
	.uleb128 0xb
	.long	.LASF83
	.byte	0xb9
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x870
	.uleb128 0x5
	.long	.LASF76
	.byte	0x2
	.byte	0xb9
	.byte	0x25
	.long	0x50e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x5
	.long	.LASF84
	.byte	0x2
	.byte	0xb9
	.byte	0x3d
	.long	0x42c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x5
	.long	.LASF85
	.byte	0x2
	.byte	0xb9
	.byte	0x59
	.long	0x42c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x5
	.long	.LASF81
	.byte	0x2
	.byte	0xb9
	.byte	0x74
	.long	0x281
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2
	.long	.LASF86
	.byte	0xbb
	.byte	0x8
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.long	.LASF124
	.long	0x880
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.0
	.uleb128 0x2
	.long	.LASF87
	.byte	0xc5
	.byte	0x9
	.long	0x378
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF88
	.byte	0xc6
	.byte	0x9
	.long	0x378
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF77
	.byte	0xc8
	.byte	0xb
	.long	0x3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.long	.LASF89
	.byte	0xcb
	.byte	0x8
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2
	.long	.LASF90
	.byte	0xcc
	.byte	0x8
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2
	.long	.LASF91
	.byte	0xcd
	.byte	0x8
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2
	.long	.LASF92
	.byte	0xd0
	.byte	0x8
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0xd
	.string	"lae"
	.value	0x103
	.byte	0x9
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xa
	.long	.LASF93
	.value	0x106
	.byte	0x9
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xa
	.long	.LASF94
	.value	0x107
	.byte	0x9
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.long	.LASF95
	.value	0x10c
	.byte	0x9
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x7a2
	.uleb128 0xc
	.string	"i"
	.byte	0xd8
	.byte	0x10
	.long	0x3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x6
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2
	.long	.LASF96
	.byte	0xd9
	.byte	0x9
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2
	.long	.LASF97
	.byte	0xe1
	.byte	0xa
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x828
	.uleb128 0x2
	.long	.LASF98
	.byte	0xeb
	.byte	0xc
	.long	0x3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0xc
	.string	"i"
	.byte	0xf0
	.byte	0x11
	.long	0x3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x6
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2
	.long	.LASF96
	.byte	0xf1
	.byte	0xa
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2
	.long	.LASF97
	.byte	0xf9
	.byte	0xb
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x84e
	.uleb128 0xd
	.string	"las"
	.value	0x111
	.byte	0xa
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x6
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0xa
	.long	.LASF99
	.value	0x118
	.byte	0x8
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x6f
	.long	0x880
	.uleb128 0x2c
	.long	0x43
	.byte	0x16
	.byte	0
	.uleb128 0x12
	.long	0x870
	.uleb128 0xb
	.long	.LASF100
	.byte	0x9b
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x98e
	.uleb128 0x5
	.long	.LASF76
	.byte	0x2
	.byte	0x9b
	.byte	0x28
	.long	0x50e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.long	.LASF80
	.byte	0x2
	.byte	0x9b
	.byte	0x40
	.long	0x42c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.long	.LASF81
	.byte	0x2
	.byte	0x9b
	.byte	0x55
	.long	0x281
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2
	.long	.LASF101
	.byte	0x9f
	.byte	0xa
	.long	0x378
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF77
	.byte	0xa0
	.byte	0xc
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.long	.LASF102
	.byte	0xa2
	.byte	0x9
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x94e
	.uleb128 0xc
	.string	"i"
	.byte	0xa3
	.byte	0x11
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2
	.long	.LASF103
	.byte	0xa5
	.byte	0xa
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x6
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0xc
	.string	"i"
	.byte	0xad
	.byte	0x12
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2
	.long	.LASF103
	.byte	0xaf
	.byte	0xb
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.string	"min"
	.byte	0x2
	.byte	0x97
	.byte	0x18
	.long	0x3c
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x9c9
	.uleb128 0x11
	.string	"a"
	.byte	0x97
	.byte	0x25
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"b"
	.byte	0x97
	.byte	0x31
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	.LASF105
	.byte	0x8f
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xa31
	.uleb128 0x5
	.long	.LASF106
	.byte	0x2
	.byte	0x8f
	.byte	0x22
	.long	0x378
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF107
	.byte	0x2
	.byte	0x8f
	.byte	0x30
	.long	0x378
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF77
	.byte	0x2
	.byte	0x8f
	.byte	0x41
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xc
	.string	"i"
	.byte	0x91
	.byte	0x10
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF108
	.byte	0x88
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xa5d
	.uleb128 0x5
	.long	.LASF76
	.byte	0x2
	.byte	0x88
	.byte	0x1d
	.long	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.long	.LASF109
	.byte	0x53
	.byte	0x9
	.long	0x50e
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xad3
	.uleb128 0x2
	.long	.LASF76
	.byte	0x54
	.byte	0xd
	.long	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF110
	.byte	0x58
	.byte	0xc
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF111
	.byte	0x59
	.byte	0xc
	.long	0x378
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF112
	.byte	0x60
	.byte	0xc
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF113
	.byte	0x61
	.byte	0xa
	.long	0x382
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.long	.LASF114
	.byte	0x69
	.byte	0xc
	.long	0x378
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	.LASF115
	.byte	0x4b
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xaff
	.uleb128 0x5
	.long	.LASF57
	.byte	0x2
	.byte	0x4b
	.byte	0x23
	.long	0x37d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.long	.LASF116
	.byte	0x3f
	.byte	0xc
	.long	0x37d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xb3d
	.uleb128 0x2
	.long	.LASF99
	.byte	0x40
	.byte	0x6
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.long	.LASF57
	.byte	0x42
	.byte	0xd
	.long	0x37d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF117
	.byte	0x2
	.byte	0x37
	.byte	0x7
	.long	0x74
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xb7c
	.uleb128 0x5
	.long	.LASF76
	.byte	0x2
	.byte	0x37
	.byte	0x1b
	.long	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"le"
	.byte	0x37
	.byte	0x29
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x18
	.long	.LASF118
	.byte	0x2b
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.long	.LASF119
	.byte	0x23
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.byte	0x28
	.byte	0x15
	.long	0x74
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.long	.LASF120
	.byte	0x1
	.byte	0x28
	.byte	0x2d
	.long	0x74
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 310
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x24
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
.LASF76:
	.string	"levels"
.LASF61:
	.string	"direction"
.LASF28:
	.string	"segment_size"
.LASF106:
	.string	"input"
.LASF85:
	.string	"ring_aslow"
.LASF118:
	.string	"lae_average_destroy"
.LASF99:
	.string	"percentil_segment_number"
.LASF4:
	.string	"unsigned int"
.LASF23:
	.string	"sample_rate"
.LASF95:
	.string	"laeq"
.LASF38:
	.string	"calibration_time"
.LASF82:
	.string	"process_segment_direction"
.LASF94:
	.string	"lafmin"
.LASF29:
	.string	"levels_record_period"
.LASF90:
	.string	"sample_max_afast"
.LASF69:
	.string	"sbuffer_read_ptr"
.LASF121:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF123:
	.string	"sbuffer"
.LASF60:
	.string	"le_counter"
.LASF80:
	.string	"ring"
.LASF67:
	.string	"sbuffer_read_consumes"
.LASF100:
	.string	"process_segment_levelpeak"
.LASF10:
	.string	"float"
.LASF58:
	.string	"event"
.LASF110:
	.string	"Fsegment_data_size"
.LASF63:
	.string	"sqrt"
.LASF73:
	.string	"malloc"
.LASF79:
	.string	"index"
.LASF13:
	.string	"long long unsigned int"
.LASF120:
	.string	"linear"
.LASF22:
	.string	"data_output_format"
.LASF14:
	.string	"size_t"
.LASF35:
	.string	"data_file_duration"
.LASF107:
	.string	"output"
.LASF47:
	.string	"_Bool"
.LASF72:
	.string	"free"
.LASF87:
	.string	"samples_afast"
.LASF19:
	.string	"output_path"
.LASF51:
	.string	"segment_number"
.LASF50:
	.string	"Percentil"
.LASF46:
	.string	"server_socket"
.LASF20:
	.string	"output_filename"
.LASF9:
	.string	"char"
.LASF83:
	.string	"process_segment_levels"
.LASF27:
	.string	"segment_duration"
.LASF56:
	.string	"background_LAS"
.LASF18:
	.string	"input_file"
.LASF84:
	.string	"ring_afast"
.LASF55:
	.string	"LAFmin"
.LASF54:
	.string	"LAFmax"
.LASF65:
	.string	"log10"
.LASF104:
	.string	"cmp_func"
.LASF101:
	.string	"samples"
.LASF125:
	.string	"linear_to_decibel"
.LASF12:
	.string	"long long int"
.LASF115:
	.string	"percentil_destroy"
.LASF91:
	.string	"sample_min_afast"
.LASF24:
	.string	"channels"
.LASF119:
	.string	"lae_average_create"
.LASF71:
	.string	"memset"
.LASF59:
	.string	"le_accumulator"
.LASF32:
	.string	"audio_file_duration"
.LASF116:
	.string	"percentil_create"
.LASF15:
	.string	"__compar_fn_t"
.LASF77:
	.string	"size"
.LASF48:
	.string	"long double"
.LASF92:
	.string	"sample_sum_aslow"
.LASF33:
	.string	"audio_record_ok"
.LASF45:
	.string	"mqtt_device_credential"
.LASF49:
	.string	"array"
.LASF105:
	.string	"process_block_square"
.LASF93:
	.string	"lafmax"
.LASF62:
	.string	"Levels"
.LASF21:
	.string	"audio_output_format"
.LASF74:
	.string	"event_check"
.LASF16:
	.string	"identification"
.LASF113:
	.string	"ibuffer"
.LASF81:
	.string	"config"
.LASF109:
	.string	"levels_create"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF112:
	.string	"Isegment_data_size"
.LASF25:
	.string	"bits_per_sample"
.LASF114:
	.string	"temp"
.LASF102:
	.string	"peak"
.LASF75:
	.string	"get_percentil"
.LASF26:
	.string	"block_size"
.LASF98:
	.string	"remaining"
.LASF39:
	.string	"calibration_reference"
.LASF108:
	.string	"levels_destroy"
.LASF68:
	.string	"sbuffer_read_size"
.LASF40:
	.string	"calibration_delta"
.LASF37:
	.string	"background_duration"
.LASF5:
	.string	"long unsigned int"
.LASF97:
	.string	"sample_aslow"
.LASF36:
	.string	"data_record_ok"
.LASF103:
	.string	"sample"
.LASF57:
	.string	"perc"
.LASF2:
	.string	"unsigned char"
.LASF31:
	.string	"audio_loop_recording"
.LASF43:
	.string	"mqtt_topic"
.LASF122:
	.string	"config_struct"
.LASF17:
	.string	"input_device"
.LASF42:
	.string	"mqtt_broker"
.LASF41:
	.string	"mqtt_enable"
.LASF78:
	.string	"beginning"
.LASF6:
	.string	"signed char"
.LASF86:
	.string	"delta"
.LASF3:
	.string	"short unsigned int"
.LASF64:
	.string	"__assert_fail"
.LASF124:
	.string	"__PRETTY_FUNCTION__"
.LASF52:
	.string	"LAeq"
.LASF30:
	.string	"run_duration"
.LASF11:
	.string	"double"
.LASF70:
	.string	"sbuffer_size"
.LASF111:
	.string	"fbuffer"
.LASF89:
	.string	"sample_sum_afast"
.LASF88:
	.string	"samples_aslow"
.LASF34:
	.string	"data_loop_recording"
.LASF53:
	.string	"LApeak"
.LASF96:
	.string	"sample_afast"
.LASF44:
	.string	"mqtt_qos"
.LASF66:
	.string	"qsort"
.LASF117:
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
