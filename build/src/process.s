	.file	"process.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v02_2" "src/process.c"
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
	.globl	lae_average_create
	.type	lae_average_create, @function
lae_average_create:
.LFB8:
	.file 2 "src/process.c"
	.loc 2 35 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 40 1
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
	.loc 2 43 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 44 1
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
	.loc 2 55 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	.loc 2 56 8
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm1
	.loc 2 56 25
	pxor	%xmm0, %xmm0
	cvtss2sd	-12(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	.loc 2 57 8
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	.loc 2 57 21
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 56(%rax)
	.loc 2 58 15
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm1
	.loc 2 58 40
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	.loc 2 58 32
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
	.loc 2 59 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	lae_average, .-lae_average
	.globl	levels_create
	.type	levels_create, @function
levels_create:
.LFB11:
	.loc 2 64 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 2 65 19
	movl	$64, %edi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	.loc 2 66 5
	cmpq	$0, -24(%rbp)
	jne	.L10
	.loc 2 67 9
	movl	$0, %eax
	jmp	.L11
.L10:
	.loc 2 69 42
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 69 9
	salq	$2, %rax
	movq	%rax, -16(%rbp)
	.loc 2 70 18
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 71 5
	cmpq	$0, -8(%rbp)
	jne	.L12
	.loc 2 72 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 73 9
	movl	$0, %eax
	jmp	.L11
.L12:
	.loc 2 75 2
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 2 76 15
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 77 8
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 77 18
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	.loc 2 78 42
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 78 26
	salq	$2, %rax
	addq	%rax, -8(%rbp)
	.loc 2 78 17
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 2 79 42
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 79 26
	salq	$2, %rax
	addq	%rax, -8(%rbp)
	.loc 2 79 17
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 2 80 42
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 80 26
	salq	$2, %rax
	addq	%rax, -8(%rbp)
	.loc 2 80 17
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	.loc 2 81 39
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	.loc 2 81 23
	salq	$2, %rax
	addq	%rax, -8(%rbp)
	.loc 2 81 14
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 40(%rax)
	.loc 2 82 25
	movq	-24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 48(%rax)
	.loc 2 83 21
	movq	-24(%rbp), %rax
	movl	$0, 56(%rax)
	.loc 2 85 25
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	.loc 2 86 9
	movq	-24(%rbp), %rax
.L11:
	.loc 2 87 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	levels_create, .-levels_create
	.globl	levels_destroy
	.type	levels_destroy, @function
levels_destroy:
.LFB12:
	.loc 2 90 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 91 13
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 91 2
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 92 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 93 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	levels_destroy, .-levels_destroy
	.globl	process_block_square
	.type	process_block_square, @function
process_block_square:
.LFB13:
	.loc 2 96 1
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
	.loc 2 97 16
	movl	$0, -4(%rbp)
	.loc 2 97 2
	jmp	.L15
.L16:
	.loc 2 98 24
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 98 15
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movq	%xmm2, %rax
	movsd	.LC5(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	.loc 2 98 9 discriminator 1
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 98 15 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	.loc 2 98 13 discriminator 1
	movss	%xmm0, (%rax)
	.loc 2 97 34 discriminator 3
	addl	$1, -4(%rbp)
.L15:
	.loc 2 97 25 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L16
.LBE2:
	.loc 2 101 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	process_block_square, .-process_block_square
	.type	min, @function
min:
.LFB14:
	.loc 2 103 52
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 2 104 19
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	cmovbe	%edx, %eax
	.loc 2 105 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	min, .-min
	.globl	process_segment_levelpeak
	.type	process_segment_levelpeak, @function
process_segment_levelpeak:
.LFB15:
	.loc 2 108 1
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
	.loc 2 110 6
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	movl	%eax, %edx
	.loc 2 110 41 discriminator 1
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 110 5 discriminator 1
	cmpl	%eax, %edx
	jb	.L32
.LBB3:
	.loc 2 111 20
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 112 61
	movq	config_struct(%rip), %rax
	.loc 2 112 19
	movl	76(%rax), %ebx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_size@PLT
	.loc 2 112 19 is_stmt 0 discriminator 1
	movl	%ebx, %esi
	movl	%eax, %edi
	call	min
	movl	%eax, -36(%rbp)
	.loc 2 114 28 is_stmt 1
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	.loc 2 114 9
	movss	.LC6(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
.LBB4:
	.loc 2 115 17
	movl	$1, -44(%rbp)
	.loc 2 115 3
	jmp	.L21
.L24:
.LBB5:
	.loc 2 117 31
	movl	-44(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 117 10
	movss	.LC6(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 2 118 7
	movss	-28(%rbp), %xmm0
	comiss	-48(%rbp), %xmm0
	jbe	.L22
	.loc 2 119 10
	movss	-28(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
.L22:
.LBE5:
	.loc 2 115 35 discriminator 2
	addl	$1, -44(%rbp)
.L21:
	.loc 2 115 26 discriminator 1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L24
.LBE4:
	.loc 2 121 3
	movl	-36(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
	.loc 2 122 27
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 122 6
	cmpl	%eax, -36(%rbp)
	jnb	.L25
	.loc 2 123 14
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 124 24
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 124 9
	subl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB6:
	.loc 2 125 18
	movl	$0, -40(%rbp)
	.loc 2 125 4
	jmp	.L26
.L29:
.LBB7:
	.loc 2 127 32
	movl	-40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 127 11
	movss	.LC6(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	.loc 2 128 8
	movss	-32(%rbp), %xmm0
	comiss	-48(%rbp), %xmm0
	jbe	.L27
	.loc 2 129 11
	movss	-32(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
.L27:
.LBE7:
	.loc 2 125 36 discriminator 2
	addl	$1, -40(%rbp)
.L26:
	.loc 2 125 27 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L29
.LBE6:
	.loc 2 131 4
	movl	-36(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
.L25:
	.loc 2 133 44
	movl	-48(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	.loc 2 133 76 discriminator 1
	movq	-72(%rbp), %rax
	movss	124(%rax), %xmm1
	.loc 2 133 9 discriminator 1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 133 24 discriminator 1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 133 17 discriminator 1
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 2 133 68 discriminator 1
	addss	%xmm1, %xmm0
	.loc 2 133 42 discriminator 1
	movss	%xmm0, (%rax)
.L32:
.LBE3:
	.loc 2 135 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	process_segment_levelpeak, .-process_segment_levelpeak
	.section	.rodata
.LC7:
	.string	"src/process.c"
	.align 8
.LC8:
	.string	"sbuffer_size(ring) >= config_struct->segment_size"
	.text
	.globl	process_segment_levels
	.type	process_segment_levels, @function
process_segment_levels:
.LFB16:
	.loc 2 138 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	.loc 2 140 1
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	movl	%eax, %edx
	.loc 2 140 36 discriminator 1
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 140 33 discriminator 1
	cmpl	%eax, %edx
	jnb	.L34
	.loc 2 140 10 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$140, %edx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L34:
	.loc 2 141 11
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	.loc 2 141 44
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	.loc 2 141 4
	cmpl	%eax, %edx
	jb	.L35
	.loc 2 142 26
	movq	-88(%rbp), %rax
	movl	$0, (%rax)
.L35:
	.loc 2 143 19
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 144 60
	movq	config_struct(%rip), %rax
	.loc 2 144 18
	movl	76(%rax), %ebx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_size@PLT
	.loc 2 144 18 is_stmt 0 discriminator 1
	movl	%ebx, %esi
	movl	%eax, %edi
	call	min
	movl	%eax, -48(%rbp)
	.loc 2 146 8 is_stmt 1
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -72(%rbp)
	.loc 2 147 8
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -68(%rbp)
	.loc 2 148 8
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -64(%rbp)
.LBB8:
	.loc 2 149 16
	movl	$1, -60(%rbp)
	.loc 2 149 2
	jmp	.L36
.L41:
.LBB9:
	.loc 2 151 25
	movl	-60(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 151 9
	movss	(%rax), %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 2 152 14
	movss	-72(%rbp), %xmm0
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
	.loc 2 153 6
	movss	-28(%rbp), %xmm0
	comiss	-68(%rbp), %xmm0
	jbe	.L37
	.loc 2 154 15
	movss	-28(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
.L37:
	.loc 2 155 6
	movss	-64(%rbp), %xmm0
	comiss	-28(%rbp), %xmm0
	jbe	.L39
	.loc 2 156 15
	movss	-28(%rbp), %xmm0
	movss	%xmm0, -64(%rbp)
.L39:
.LBE9:
	.loc 2 149 34 discriminator 2
	addl	$1, -60(%rbp)
.L36:
	.loc 2 149 25 discriminator 1
	movl	-60(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jb	.L41
.LBE8:
	.loc 2 158 2
	movl	-48(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
	.loc 2 159 26
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 159 5
	cmpl	%eax, -48(%rbp)
	jnb	.L42
	.loc 2 160 13
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_read_ptr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 161 23
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 161 8
	subl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB10:
	.loc 2 162 17
	movl	$0, -56(%rbp)
	.loc 2 162 3
	jmp	.L43
.L48:
.LBB11:
	.loc 2 164 26
	movl	-56(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 164 10
	movss	(%rax), %xmm0
	movss	%xmm0, -44(%rbp)
	.loc 2 165 15
	movss	-72(%rbp), %xmm0
	addss	-44(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
	.loc 2 166 7
	movss	-44(%rbp), %xmm0
	comiss	-68(%rbp), %xmm0
	jbe	.L44
	.loc 2 167 16
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
.L44:
	.loc 2 168 7
	movss	-64(%rbp), %xmm0
	comiss	-44(%rbp), %xmm0
	jbe	.L46
	.loc 2 169 16
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -64(%rbp)
.L46:
.LBE11:
	.loc 2 162 35 discriminator 2
	addl	$1, -56(%rbp)
.L43:
	.loc 2 162 26 discriminator 1
	movl	-56(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jb	.L48
.LBE10:
	.loc 2 171 3
	movl	-48(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_read_consumes@PLT
.L42:
	.loc 2 174 46
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 174 30
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L49
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L50
.L49:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L50:
	movss	-72(%rbp), %xmm1
	divss	%xmm0, %xmm1
	.loc 2 174 14
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 174 8 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	.loc 2 175 4
	pxor	%xmm0, %xmm0
	comiss	-72(%rbp), %xmm0
	jbe	.L51
	.loc 2 176 46
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 2 176 30
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L53
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L54
.L53:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L54:
	movss	-72(%rbp), %xmm1
	divss	%xmm0, %xmm1
	.loc 2 176 15
	cvttss2sil	%xmm1, %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	.loc 2 176 10
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 176 10 is_stmt 0 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	.loc 2 176 7 is_stmt 1 discriminator 1
	movss	.LC9(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
.L51:
	.loc 2 177 17
	pxor	%xmm4, %xmm4
	cvtss2sd	-68(%rbp), %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 177 8 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	.loc 2 178 17
	pxor	%xmm5, %xmm5
	cvtss2sd	-64(%rbp), %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	.loc 2 178 8 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	.loc 2 179 40
	movl	-52(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	.loc 2 179 71 discriminator 1
	movq	-104(%rbp), %rax
	movss	124(%rax), %xmm1
	.loc 2 179 8 discriminator 1
	movq	-88(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 2 179 20 discriminator 1
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 179 13 discriminator 1
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 2 179 63 discriminator 1
	addss	%xmm1, %xmm0
	.loc 2 179 38 discriminator 1
	movss	%xmm0, (%rax)
	.loc 2 180 43
	movl	-40(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	.loc 2 180 77 discriminator 1
	movq	-104(%rbp), %rax
	movss	124(%rax), %xmm1
	.loc 2 180 8 discriminator 1
	movq	-88(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 180 23 discriminator 1
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 180 16 discriminator 1
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 2 180 69 discriminator 1
	addss	%xmm1, %xmm0
	.loc 2 180 41 discriminator 1
	movss	%xmm0, (%rax)
	.loc 2 181 68
	pxor	%xmm1, %xmm1
	cvtss2sd	-36(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	.loc 2 181 43
	pxor	%xmm6, %xmm6
	cvtsd2ss	%xmm0, %xmm6
	movd	%xmm6, %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	.loc 2 181 90 discriminator 1
	movq	-104(%rbp), %rax
	movss	124(%rax), %xmm1
	.loc 2 181 8 discriminator 1
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 2 181 23 discriminator 1
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 181 16 discriminator 1
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 2 181 82 discriminator 1
	addss	%xmm1, %xmm0
	.loc 2 181 41 discriminator 1
	movss	%xmm0, (%rax)
	.loc 2 183 15
	movl	-52(%rbp), %edx
	movq	-88(%rbp), %rax
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	lae_average
	movd	%xmm0, %eax
	movl	%eax, -32(%rbp)
	.loc 2 184 41
	movl	-32(%rbp), %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	.loc 2 184 73 discriminator 1
	movq	-104(%rbp), %rax
	movss	124(%rax), %xmm1
	.loc 2 184 8 discriminator 1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 184 21 discriminator 1
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 184 14 discriminator 1
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 2 184 65 discriminator 1
	addss	%xmm1, %xmm0
	.loc 2 184 39 discriminator 1
	movss	%xmm0, (%rax)
	.loc 2 185 8
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 185 24
	leal	1(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 186 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	process_segment_levels, .-process_segment_levels
	.globl	process_segment_direction
	.type	process_segment_direction, @function
process_segment_direction:
.LFB17:
	.loc 2 195 1
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
	.loc 2 196 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	process_segment_direction, .-process_segment_direction
	.type	cmp_func, @function
cmp_func:
.LFB18:
	.loc 2 198 51
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 199 11
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -8(%rbp)
	.loc 2 200 11
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 2 201 16
	movss	-8(%rbp), %xmm0
	comiss	-4(%rbp), %xmm0
	seta	%al
	movzbl	%al, %edx
	.loc 2 201 28
	movss	-4(%rbp), %xmm0
	comiss	-8(%rbp), %xmm0
	seta	%al
	movzbl	%al, %eax
	.loc 2 201 22
	subl	%eax, %edx
	.loc 2 201 22 is_stmt 0 discriminator 1
	movl	%edx, %eax
	.loc 2 202 1 is_stmt 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	cmp_func, .-cmp_func
	.globl	get_percentil
	.type	get_percentil, @function
get_percentil:
.LFB19:
	.loc 2 204 54
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
	.loc 2 206 2
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rax
	leaq	cmp_func(%rip), %rdx
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	.loc 2 208 20
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	.loc 2 208 6
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 2 209 8
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L64
	.loc 2 209 30 discriminator 1
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
.L64:
	.loc 2 211 17
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 212 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	get_percentil, .-get_percentil
	.globl	event_check
	.type	event_check, @function
event_check:
.LFB20:
	.loc 2 214 56
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	.loc 2 216 28
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 216 43
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 216 59
	subl	$1, %eax
	movl	%eax, %eax
	.loc 2 216 36
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 2 216 8
	movss	(%rax), %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 2 219 2
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	.loc 2 221 36
	movss	-28(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	addss	%xmm0, %xmm1
	.loc 2 221 4
	movss	-4(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L71
	.loc 2 222 11
	movl	$1, %eax
	jmp	.L69
.L71:
	.loc 2 223 9
	movl	$0, %eax
.L69:
	.loc 2 224 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
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
.LC9:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC10:
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
	.long	0xc03
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x17
	.long	.LASF144
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x6
	.byte	0x8
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
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
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
	.uleb128 0x19
	.byte	0x8
	.uleb128 0x5
	.long	0x85
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x10
	.long	0x85
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.byte	0xd6
	.byte	0x1b
	.long	0x43
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x1a
	.long	.LASF17
	.byte	0x5
	.value	0x3b4
	.byte	0xf
	.long	0xc6
	.uleb128 0x5
	.long	0xcb
	.uleb128 0x1b
	.long	0x58
	.long	0xdf
	.uleb128 0x2
	.long	0xdf
	.uleb128 0x2
	.long	0xdf
	.byte	0
	.uleb128 0x5
	.long	0xe4
	.uleb128 0x1c
	.uleb128 0x5
	.long	0x8c
	.uleb128 0x11
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
	.uleb128 0x1d
	.long	.LASF145
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF48
	.uleb128 0x5
	.long	0x284
	.uleb128 0x5
	.long	0xea
	.uleb128 0xe
	.long	0x85
	.long	0x2a3
	.uleb128 0xf
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x27c
	.uleb128 0xc
	.long	.LASF49
	.uleb128 0x5
	.long	0x2a8
	.uleb128 0xc
	.long	.LASF50
	.uleb128 0x5
	.long	0x2b2
	.uleb128 0xe
	.long	0x85
	.long	0x2cc
	.uleb128 0xf
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	0x270
	.uleb128 0x12
	.long	.LASF85
	.byte	0x9
	.byte	0x96
	.byte	0xe
	.long	0x2cc
	.uleb128 0x11
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
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.long	.LASF84
	.uleb128 0x12
	.long	.LASF86
	.byte	0x8
	.byte	0x7f
	.byte	0x17
	.long	0x490
	.uleb128 0x5
	.long	0x2dd
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.long	.LASF87
	.uleb128 0x1e
	.byte	0x40
	.byte	0x1
	.byte	0x32
	.byte	0x9
	.long	0x51b
	.uleb128 0x1
	.long	.LASF88
	.byte	0x1
	.byte	0x33
	.byte	0xb
	.long	0x3c
	.byte	0
	.uleb128 0x1
	.long	.LASF89
	.byte	0x1
	.byte	0x34
	.byte	0x9
	.long	0x51b
	.byte	0x8
	.uleb128 0x1
	.long	.LASF90
	.byte	0x1
	.byte	0x35
	.byte	0x9
	.long	0x51b
	.byte	0x10
	.uleb128 0x1
	.long	.LASF91
	.byte	0x1
	.byte	0x36
	.byte	0x9
	.long	0x51b
	.byte	0x18
	.uleb128 0x1
	.long	.LASF92
	.byte	0x1
	.byte	0x37
	.byte	0x9
	.long	0x51b
	.byte	0x20
	.uleb128 0x1f
	.string	"LAE"
	.byte	0x1
	.byte	0x38
	.byte	0x9
	.long	0x51b
	.byte	0x28
	.uleb128 0x1
	.long	.LASF93
	.byte	0x1
	.byte	0x39
	.byte	0x9
	.long	0x98
	.byte	0x30
	.uleb128 0x1
	.long	.LASF94
	.byte	0x1
	.byte	0x3a
	.byte	0xb
	.long	0x3c
	.byte	0x38
	.uleb128 0x1
	.long	.LASF95
	.byte	0x1
	.byte	0x3b
	.byte	0x6
	.long	0x58
	.byte	0x3c
	.byte	0
	.uleb128 0x5
	.long	0x91
	.uleb128 0xa
	.long	.LASF96
	.byte	0x1
	.byte	0x3c
	.byte	0x3
	.long	0x49c
	.uleb128 0x9
	.long	.LASF97
	.byte	0x9
	.byte	0xec
	.byte	0xc
	.long	0x58
	.long	0x542
	.uleb128 0x2
	.long	0x2cc
	.byte	0
	.uleb128 0x13
	.long	.LASF101
	.value	0x3ca
	.long	0x562
	.uleb128 0x2
	.long	0x7e
	.uleb128 0x2
	.long	0x9f
	.uleb128 0x2
	.long	0x9f
	.uleb128 0x2
	.long	0xb9
	.byte	0
	.uleb128 0x9
	.long	.LASF98
	.byte	0xa
	.byte	0x8f
	.byte	0xf
	.long	0x98
	.long	0x578
	.uleb128 0x2
	.long	0x98
	.byte	0
	.uleb128 0x20
	.long	.LASF99
	.byte	0xb
	.byte	0x45
	.byte	0xd
	.long	0x599
	.uleb128 0x2
	.long	0xe5
	.uleb128 0x2
	.long	0xe5
	.uleb128 0x2
	.long	0x3c
	.uleb128 0x2
	.long	0xe5
	.byte	0
	.uleb128 0x9
	.long	.LASF100
	.byte	0xa
	.byte	0x6b
	.byte	0x10
	.long	0x98
	.long	0x5af
	.uleb128 0x2
	.long	0x98
	.byte	0
	.uleb128 0x21
	.long	.LASF102
	.byte	0xc
	.byte	0x29
	.byte	0x6
	.long	0x5c6
	.uleb128 0x2
	.long	0x5c6
	.uleb128 0x2
	.long	0x3c
	.byte	0
	.uleb128 0x5
	.long	0x5cb
	.uleb128 0xc
	.long	.LASF103
	.uleb128 0x9
	.long	.LASF104
	.byte	0xc
	.byte	0x24
	.byte	0xa
	.long	0x3c
	.long	0x5e6
	.uleb128 0x2
	.long	0x5c6
	.byte	0
	.uleb128 0x9
	.long	.LASF105
	.byte	0xc
	.byte	0x1f
	.byte	0x8
	.long	0x51b
	.long	0x5fc
	.uleb128 0x2
	.long	0x5c6
	.byte	0
	.uleb128 0x9
	.long	.LASF106
	.byte	0xc
	.byte	0x15
	.byte	0xa
	.long	0x3c
	.long	0x612
	.uleb128 0x2
	.long	0x5c6
	.byte	0
	.uleb128 0x22
	.string	"pow"
	.byte	0xa
	.byte	0x8c
	.byte	0x10
	.long	0x98
	.long	0x62d
	.uleb128 0x2
	.long	0x98
	.uleb128 0x2
	.long	0x98
	.byte	0
	.uleb128 0x9
	.long	.LASF107
	.byte	0xd
	.byte	0x3d
	.byte	0xe
	.long	0x7e
	.long	0x64d
	.uleb128 0x2
	.long	0x7e
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0x9f
	.byte	0
	.uleb128 0x13
	.long	.LASF108
	.value	0x2af
	.long	0x65e
	.uleb128 0x2
	.long	0x7e
	.byte	0
	.uleb128 0x23
	.long	.LASF109
	.byte	0x5
	.value	0x2a0
	.byte	0xe
	.long	0x7e
	.long	0x675
	.uleb128 0x2
	.long	0x9f
	.byte	0
	.uleb128 0x14
	.long	.LASF112
	.byte	0xd6
	.byte	0x5
	.long	0x58
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c3
	.uleb128 0x3
	.long	.LASF110
	.byte	0x2
	.byte	0xd6
	.byte	0x19
	.long	0x6c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF111
	.byte	0x2
	.byte	0xd6
	.byte	0x27
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.long	.LASF117
	.byte	0xd8
	.byte	0x8
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.long	0x520
	.uleb128 0x14
	.long	.LASF113
	.byte	0xcc
	.byte	0x7
	.long	0x91
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x725
	.uleb128 0x3
	.long	.LASF114
	.byte	0x2
	.byte	0xcc
	.byte	0x1c
	.long	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF115
	.byte	0x2
	.byte	0xcc
	.byte	0x27
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.long	.LASF116
	.byte	0x2
	.byte	0xcc
	.byte	0x31
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.long	.LASF118
	.byte	0xd0
	.byte	0x6
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF132
	.byte	0x2
	.byte	0xc6
	.byte	0xc
	.long	0x58
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x77a
	.uleb128 0xb
	.string	"a"
	.byte	0xc6
	.byte	0x21
	.long	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"b"
	.byte	0xc6
	.byte	0x30
	.long	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"fa"
	.byte	0xc7
	.byte	0xb
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"fb"
	.byte	0xc8
	.byte	0xb
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.long	.LASF120
	.byte	0x2
	.byte	0xc2
	.byte	0x6
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c6
	.uleb128 0x3
	.long	.LASF110
	.byte	0x2
	.byte	0xc2
	.byte	0x28
	.long	0x6c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.long	.LASF119
	.byte	0x2
	.byte	0xc2
	.byte	0x40
	.long	0x7c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.long	.LASF52
	.byte	0x2
	.byte	0xc2
	.byte	0x57
	.long	0x490
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5
	.long	0x5c6
	.uleb128 0xd
	.long	.LASF121
	.byte	0x89
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x92f
	.uleb128 0x3
	.long	.LASF110
	.byte	0x2
	.byte	0x89
	.byte	0x25
	.long	0x6c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3
	.long	.LASF119
	.byte	0x2
	.byte	0x89
	.byte	0x3d
	.long	0x5c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3
	.long	.LASF52
	.byte	0x2
	.byte	0x89
	.byte	0x52
	.long	0x490
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.long	.LASF146
	.long	0x93f
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.0
	.uleb128 0x4
	.long	.LASF122
	.byte	0x8f
	.byte	0x9
	.long	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF115
	.byte	0x90
	.byte	0xb
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.long	.LASF123
	.byte	0x92
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4
	.long	.LASF124
	.byte	0x93
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x4
	.long	.LASF125
	.byte	0x94
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x7
	.string	"lae"
	.byte	0xae
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.long	.LASF126
	.byte	0xb1
	.byte	0x8
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.long	.LASF127
	.byte	0xb2
	.byte	0x8
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.long	.LASF128
	.byte	0xb7
	.byte	0x8
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x8ef
	.uleb128 0x7
	.string	"i"
	.byte	0x95
	.byte	0x10
	.long	0x3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x8
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x4
	.long	.LASF129
	.byte	0x97
	.byte	0x9
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x7
	.string	"i"
	.byte	0xa2
	.byte	0x11
	.long	0x3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x4
	.long	.LASF129
	.byte	0xa4
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x8c
	.long	0x93f
	.uleb128 0xf
	.long	0x43
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.long	0x92f
	.uleb128 0xd
	.long	.LASF130
	.byte	0x6b
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xa4d
	.uleb128 0x3
	.long	.LASF110
	.byte	0x2
	.byte	0x6b
	.byte	0x28
	.long	0x6c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.long	.LASF119
	.byte	0x2
	.byte	0x6b
	.byte	0x40
	.long	0x5c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.long	.LASF52
	.byte	0x2
	.byte	0x6b
	.byte	0x55
	.long	0x490
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x8
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x4
	.long	.LASF122
	.byte	0x6f
	.byte	0xa
	.long	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF115
	.byte	0x70
	.byte	0xc
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.long	.LASF131
	.byte	0x72
	.byte	0x9
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0xa0d
	.uleb128 0x7
	.string	"i"
	.byte	0x73
	.byte	0x11
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x4
	.long	.LASF129
	.byte	0x75
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x7
	.string	"i"
	.byte	0x7d
	.byte	0x12
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x4
	.long	.LASF129
	.byte	0x7f
	.byte	0xb
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.string	"min"
	.byte	0x2
	.byte	0x67
	.byte	0x18
	.long	0x3c
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xa88
	.uleb128 0xb
	.string	"a"
	.byte	0x67
	.byte	0x25
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"b"
	.byte	0x67
	.byte	0x31
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	.LASF133
	.byte	0x5f
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xaf0
	.uleb128 0x3
	.long	.LASF134
	.byte	0x2
	.byte	0x5f
	.byte	0x22
	.long	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF135
	.byte	0x2
	.byte	0x5f
	.byte	0x30
	.long	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF115
	.byte	0x2
	.byte	0x5f
	.byte	0x41
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x7
	.string	"i"
	.byte	0x61
	.byte	0x10
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF136
	.byte	0x59
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xb1c
	.uleb128 0x3
	.long	.LASF110
	.byte	0x2
	.byte	0x59
	.byte	0x1d
	.long	0x6c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF137
	.byte	0x2
	.byte	0x3f
	.byte	0x9
	.long	0x6c3
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xb69
	.uleb128 0x4
	.long	.LASF110
	.byte	0x41
	.byte	0xa
	.long	0x6c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF138
	.byte	0x45
	.byte	0x9
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.long	.LASF139
	.byte	0x46
	.byte	0x9
	.long	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF140
	.byte	0x2
	.byte	0x36
	.byte	0x7
	.long	0x91
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xba8
	.uleb128 0x3
	.long	.LASF110
	.byte	0x2
	.byte	0x36
	.byte	0x1b
	.long	0x6c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"le"
	.byte	0x36
	.byte	0x29
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x16
	.long	.LASF141
	.byte	0x2a
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF142
	.byte	0x22
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF147
	.byte	0x1
	.byte	0x28
	.byte	0x15
	.long	0x91
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.long	.LASF143
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2a
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
.LASF110:
	.string	"levels"
.LASF95:
	.string	"direction"
.LASF65:
	.string	"segment_size"
.LASF37:
	.string	"_shortbuf"
.LASF145:
	.string	"_IO_lock_t"
.LASF134:
	.string	"input"
.LASF141:
	.string	"lae_average_destroy"
.LASF26:
	.string	"_IO_buf_end"
.LASF97:
	.string	"fflush"
.LASF139:
	.string	"buffer"
.LASF24:
	.string	"_IO_write_end"
.LASF4:
	.string	"unsigned int"
.LASF42:
	.string	"_freeres_list"
.LASF60:
	.string	"sample_rate"
.LASF128:
	.string	"laeq"
.LASF18:
	.string	"_flags"
.LASF124:
	.string	"sample_max"
.LASF75:
	.string	"calibration_time"
.LASF120:
	.string	"process_segment_direction"
.LASF30:
	.string	"_markers"
.LASF81:
	.string	"mqtt_qos"
.LASF127:
	.string	"lafmin"
.LASF66:
	.string	"levels_record_period"
.LASF105:
	.string	"sbuffer_read_ptr"
.LASF144:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF103:
	.string	"sbuffer"
.LASF94:
	.string	"le_counter"
.LASF119:
	.string	"ring"
.LASF85:
	.string	"stdout"
.LASF102:
	.string	"sbuffer_read_consumes"
.LASF29:
	.string	"_IO_save_end"
.LASF130:
	.string	"process_segment_levelpeak"
.LASF12:
	.string	"float"
.LASF49:
	.string	"_IO_codecvt"
.LASF98:
	.string	"sqrt"
.LASF109:
	.string	"malloc"
.LASF118:
	.string	"index"
.LASF16:
	.string	"long long unsigned int"
.LASF143:
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
.LASF135:
	.string	"output"
.LASF21:
	.string	"_IO_read_base"
.LASF84:
	.string	"_Bool"
.LASF108:
	.string	"free"
.LASF56:
	.string	"output_path"
.LASF88:
	.string	"segment_number"
.LASF83:
	.string	"server_socket"
.LASF111:
	.string	"background_level"
.LASF57:
	.string	"output_filename"
.LASF11:
	.string	"char"
.LASF121:
	.string	"process_segment_levels"
.LASF45:
	.string	"_mode"
.LASF64:
	.string	"segment_duration"
.LASF48:
	.string	"_IO_marker"
.LASF101:
	.string	"qsort"
.LASF55:
	.string	"input_file"
.LASF19:
	.string	"_IO_read_ptr"
.LASF92:
	.string	"LAFmin"
.LASF91:
	.string	"LAFmax"
.LASF100:
	.string	"log10"
.LASF132:
	.string	"cmp_func"
.LASF22:
	.string	"_IO_write_base"
.LASF122:
	.string	"samples"
.LASF147:
	.string	"linear_to_decibel"
.LASF15:
	.string	"long long int"
.LASF27:
	.string	"_IO_save_base"
.LASF61:
	.string	"channels"
.LASF142:
	.string	"lae_average_create"
.LASF107:
	.string	"memset"
.LASF93:
	.string	"le_accumulator"
.LASF69:
	.string	"audio_file_duration"
.LASF17:
	.string	"__compar_fn_t"
.LASF115:
	.string	"size"
.LASF43:
	.string	"_freeres_buf"
.LASF87:
	.string	"long double"
.LASF44:
	.string	"__pad5"
.LASF70:
	.string	"audio_record_ok"
.LASF82:
	.string	"mqtt_device_credential"
.LASF36:
	.string	"_vtable_offset"
.LASF125:
	.string	"sample_min"
.LASF114:
	.string	"array"
.LASF133:
	.string	"process_block_square"
.LASF126:
	.string	"lafmax"
.LASF96:
	.string	"Levels"
.LASF58:
	.string	"audio_output_format"
.LASF112:
	.string	"event_check"
.LASF53:
	.string	"identification"
.LASF52:
	.string	"config"
.LASF20:
	.string	"_IO_read_end"
.LASF137:
	.string	"levels_create"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF62:
	.string	"bits_per_sample"
.LASF131:
	.string	"peak"
.LASF50:
	.string	"_IO_wide_data"
.LASF113:
	.string	"get_percentil"
.LASF63:
	.string	"block_size"
.LASF76:
	.string	"calibration_reference"
.LASF136:
	.string	"levels_destroy"
.LASF104:
	.string	"sbuffer_read_size"
.LASF77:
	.string	"calibration_delta"
.LASF41:
	.string	"_wide_data"
.LASF123:
	.string	"sample_sum"
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
.LASF73:
	.string	"data_record_ok"
.LASF129:
	.string	"sample"
.LASF116:
	.string	"perc"
.LASF138:
	.string	"segment_data_size"
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
.LASF6:
	.string	"signed char"
.LASF117:
	.string	"noise_level"
.LASF3:
	.string	"short unsigned int"
.LASF99:
	.string	"__assert_fail"
.LASF146:
	.string	"__PRETTY_FUNCTION__"
.LASF89:
	.string	"LAeq"
.LASF67:
	.string	"run_duration"
.LASF13:
	.string	"double"
.LASF106:
	.string	"sbuffer_size"
.LASF31:
	.string	"_chain"
.LASF47:
	.string	"FILE"
.LASF33:
	.string	"_flags2"
.LASF35:
	.string	"_cur_column"
.LASF71:
	.string	"data_loop_recording"
.LASF90:
	.string	"LApeak"
.LASF10:
	.string	"__off64_t"
.LASF46:
	.string	"_unused2"
.LASF25:
	.string	"_IO_buf_base"
.LASF140:
	.string	"lae_average"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/aluno/Desktop/sound_meter-master_v02_2"
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
