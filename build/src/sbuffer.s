	.file	"sbuffer.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v03" "src/sbuffer.c"
	.type	min, @function
min:
.LFB6:
	.file 1 "src/sbuffer.c"
	.loc 1 16 52
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 17 19
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	cmovbe	%edx, %eax
	.loc 1 18 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	min, .-min
	.globl	sbuffer_create
	.type	sbuffer_create, @function
sbuffer_create:
.LFB7:
	.loc 1 20 51
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 21 25
	movl	$32, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 22 5
	cmpq	$0, -8(%rbp)
	jne	.L4
	.loc 1 23 9
	movl	$0, %eax
	jmp	.L5
.L4:
	.loc 1 24 17
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 24(%rax)
	.loc 1 25 28
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %eax
	.loc 1 25 17
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	.loc 1 25 15 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 26 10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 26 5
	testq	%rax, %rax
	jne	.L6
	.loc 1 27 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 28 9
	movl	$0, %eax
	jmp	.L5
.L6:
	.loc 1 30 64
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	.loc 1 30 50
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	.loc 1 30 44
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	.loc 1 30 30
	movq	-8(%rbp), %rax
	movl	20(%rax), %edx
	.loc 1 30 24
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 1 30 18
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	.loc 1 30 12
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 1 31 20
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	.loc 1 32 9
	movq	-8(%rbp), %rax
.L5:
	.loc 1 33 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	sbuffer_create, .-sbuffer_create
	.globl	sbuffer_destroy
	.type	sbuffer_destroy, @function
sbuffer_destroy:
.LFB8:
	.loc 1 35 44
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 36 11
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 36 2
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 37 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 38 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	sbuffer_destroy, .-sbuffer_destroy
	.globl	sbuffer_size
	.type	sbuffer_size, @function
sbuffer_size:
.LFB9:
	.loc 1 40 45
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 41 13
	movq	-8(%rbp), %rax
	movl	20(%rax), %edx
	.loc 1 41 33
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 41 27
	subl	%eax, %edx
	.loc 1 41 27 is_stmt 0 discriminator 1
	movl	%edx, %eax
	.loc 1 42 1 is_stmt 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	sbuffer_size, .-sbuffer_size
	.globl	sbuffer_capacity
	.type	sbuffer_capacity, @function
sbuffer_capacity:
.LFB10:
	.loc 1 44 49
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 45 13
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 46 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	sbuffer_capacity, .-sbuffer_capacity
	.globl	sbuffer_read_ptr
	.type	sbuffer_read_ptr, @function
sbuffer_read_ptr:
.LFB11:
	.loc 1 48 47
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 49 14
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 49 27
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %eax
	.loc 1 49 22
	salq	$2, %rax
	.loc 1 49 9
	addq	%rdx, %rax
	.loc 1 50 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	sbuffer_read_ptr, .-sbuffer_read_ptr
	.globl	sbuffer_read_size
	.type	sbuffer_read_size, @function
sbuffer_read_size:
.LFB12:
	.loc 1 52 50
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	.loc 1 53 33
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_capacity
	movl	%eax, %edx
	.loc 1 53 62 discriminator 1
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 53 9 discriminator 1
	subl	%eax, %edx
	movl	%edx, %ebx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size
	.loc 1 53 9 is_stmt 0 discriminator 2
	movl	%ebx, %esi
	movl	%eax, %edi
	call	min
	.loc 1 54 1 is_stmt 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	sbuffer_read_size, .-sbuffer_read_size
	.section	.rodata
.LC0:
	.string	"src/sbuffer.c"
	.align 8
.LC1:
	.string	"this->get < sbuffer_capacity(this)"
	.text
	.globl	sbuffer_read_consumes
	.type	sbuffer_read_consumes, @function
sbuffer_read_consumes:
.LFB13:
	.loc 1 56 62
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 57 5
	movq	-24(%rbp), %rax
	movl	8(%rax), %ebx
	.loc 1 57 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_capacity
	.loc 1 57 33 discriminator 1
	cmpl	%eax, %ebx
	jb	.L17
	.loc 1 57 10 discriminator 1
	leaq	__PRETTY_FUNCTION__.1(%rip), %rax
	movq	%rax, %rcx
	movl	$57, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	.loc 1 58 6
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	.loc 1 58 12
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 1 59 10
	movq	-24(%rbp), %rax
	movl	8(%rax), %ebx
	.loc 1 59 19
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_capacity
	.loc 1 59 5 discriminator 1
	cmpl	%eax, %ebx
	jb	.L18
	.loc 1 60 16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_capacity
	.loc 1 60 7 discriminator 1
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %edx
	.loc 1 60 13 discriminator 1
	subl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
.L18:
	.loc 1 61 6
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	.loc 1 61 20
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 1 62 5
	movq	-24(%rbp), %rax
	movl	8(%rax), %ebx
	.loc 1 62 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_capacity
	.loc 1 62 33 discriminator 1
	cmpl	%eax, %ebx
	jb	.L20
	.loc 1 62 10 discriminator 1
	leaq	__PRETTY_FUNCTION__.1(%rip), %rax
	movq	%rax, %rcx
	movl	$62, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	.loc 1 63 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	sbuffer_read_consumes, .-sbuffer_read_consumes
	.globl	sbuffer_write_ptr
	.type	sbuffer_write_ptr, @function
sbuffer_write_ptr:
.LFB14:
	.loc 1 65 48
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 66 14
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 66 27
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %eax
	.loc 1 66 22
	salq	$2, %rax
	.loc 1 66 9
	addq	%rdx, %rax
	.loc 1 67 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	sbuffer_write_ptr, .-sbuffer_write_ptr
	.globl	sbuffer_write_size
	.type	sbuffer_write_size, @function
sbuffer_write_size:
.LFB15:
	.loc 1 69 51
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	.loc 1 70 58
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_capacity
	movl	%eax, %edx
	.loc 1 70 87 discriminator 1
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	.loc 1 70 9 discriminator 1
	movl	%edx, %ebx
	subl	%eax, %ebx
	.loc 1 70 13 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_capacity
	movl	%eax, %r12d
	.loc 1 70 38 discriminator 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size
	.loc 1 70 9 discriminator 3
	movl	%r12d, %edx
	subl	%eax, %edx
	movl	%ebx, %esi
	movl	%edx, %edi
	call	min
	.loc 1 71 1
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	sbuffer_write_size, .-sbuffer_write_size
	.section	.rodata
.LC2:
	.string	"this->put < this->capacity"
.LC3:
	.string	"n <= sbuffer_free(this)"
	.align 8
.LC4:
	.string	"this->put < sbuffer_capacity(this)"
	.align 8
.LC5:
	.string	"this->max_counter <= sbuffer_capacity(this)"
	.text
	.globl	sbuffer_write_produces
	.type	sbuffer_write_produces, @function
sbuffer_write_produces:
.LFB16:
	.loc 1 73 63
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 74 5
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	.loc 1 74 17
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 74 33
	cmpl	%eax, %edx
	jb	.L26
	.loc 1 74 10 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$74, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	.loc 1 75 6
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_free
	.loc 1 75 33 discriminator 1
	cmpl	-28(%rbp), %eax
	jnb	.L27
	.loc 1 75 10 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$75, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L27:
	.loc 1 76 6
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	.loc 1 76 12
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 1 77 10
	movq	-24(%rbp), %rax
	movl	12(%rax), %ebx
	.loc 1 77 19
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_capacity
	.loc 1 77 5 discriminator 1
	cmpl	%eax, %ebx
	jb	.L28
	.loc 1 78 16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_capacity
	.loc 1 78 7 discriminator 1
	movq	-24(%rbp), %rdx
	movl	12(%rdx), %edx
	.loc 1 78 13 discriminator 1
	subl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L28:
	.loc 1 79 6
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	.loc 1 79 20
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	.loc 1 80 6
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size
	.loc 1 80 31 discriminator 1
	movq	-24(%rbp), %rdx
	movl	28(%rdx), %edx
	.loc 1 80 5 discriminator 1
	cmpl	%eax, %edx
	jnb	.L29
	.loc 1 81 23
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size
	.loc 1 81 21 discriminator 1
	movq	-24(%rbp), %rdx
	movl	%eax, 28(%rdx)
.L29:
	.loc 1 82 5
	movq	-24(%rbp), %rax
	movl	12(%rax), %ebx
	.loc 1 82 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_capacity
	.loc 1 82 33 discriminator 1
	cmpl	%eax, %ebx
	jb	.L30
	.loc 1 82 10 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$82, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L30:
	.loc 1 83 5
	movq	-24(%rbp), %rax
	movl	28(%rax), %ebx
	.loc 1 83 22
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_capacity
	.loc 1 83 33 discriminator 1
	cmpl	%ebx, %eax
	jnb	.L32
	.loc 1 83 10 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$83, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L32:
	.loc 1 84 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	sbuffer_write_produces, .-sbuffer_write_produces
	.globl	sbuffer_free
	.type	sbuffer_free, @function
sbuffer_free:
.LFB17:
	.loc 1 86 45
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	.loc 1 87 13
	movq	-16(%rbp), %rax
	movl	24(%rax), %ebx
	.loc 1 87 26
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size
	.loc 1 87 24 discriminator 1
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 88 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	sbuffer_free, .-sbuffer_free
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.1, @object
	.size	__PRETTY_FUNCTION__.1, 22
__PRETTY_FUNCTION__.1:
	.string	"sbuffer_read_consumes"
	.align 16
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 23
__PRETTY_FUNCTION__.0:
	.string	"sbuffer_write_produces"
	.text
.Letext0:
	.file 2 "/usr/include/assert.h"
	.file 3 "/usr/include/stdlib.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x402
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xf
	.long	.LASF34
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x10
	.long	.LASF35
	.byte	0x4
	.byte	0xd6
	.byte	0x1b
	.long	0x3a
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x11
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
	.uleb128 0x12
	.byte	0x8
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x8
	.long	0x7b
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.long	.LASF12
	.uleb128 0x13
	.long	.LASF36
	.byte	0x20
	.byte	0x1
	.byte	0x6
	.byte	0x8
	.long	0xf5
	.uleb128 0x4
	.long	.LASF13
	.byte	0x7
	.byte	0x9
	.long	0xf5
	.byte	0
	.uleb128 0xb
	.string	"get"
	.byte	0x8
	.long	0x64
	.byte	0x8
	.uleb128 0xb
	.string	"put"
	.byte	0x9
	.long	0x64
	.byte	0xc
	.uleb128 0x4
	.long	.LASF14
	.byte	0xa
	.byte	0xb
	.long	0x64
	.byte	0x10
	.uleb128 0x4
	.long	.LASF15
	.byte	0xb
	.byte	0xb
	.long	0x64
	.byte	0x14
	.uleb128 0x4
	.long	.LASF16
	.byte	0xc
	.byte	0xb
	.long	0x64
	.byte	0x18
	.uleb128 0x4
	.long	.LASF17
	.byte	0xd
	.byte	0xb
	.long	0x64
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.long	0xfa
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.long	.LASF18
	.uleb128 0x14
	.long	.LASF19
	.byte	0x2
	.byte	0x45
	.byte	0xd
	.long	0x122
	.uleb128 0x3
	.long	0x122
	.uleb128 0x3
	.long	0x122
	.uleb128 0x3
	.long	0x64
	.uleb128 0x3
	.long	0x122
	.byte	0
	.uleb128 0x9
	.long	0x82
	.uleb128 0x15
	.long	.LASF37
	.byte	0x3
	.value	0x2af
	.byte	0xd
	.long	0x13a
	.uleb128 0x3
	.long	0x79
	.byte	0
	.uleb128 0x16
	.long	.LASF20
	.byte	0x3
	.value	0x2a0
	.byte	0xe
	.long	0x79
	.long	0x151
	.uleb128 0x3
	.long	0x2e
	.byte	0
	.uleb128 0x5
	.long	.LASF22
	.byte	0x56
	.byte	0xa
	.long	0x64
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x181
	.uleb128 0x2
	.long	.LASF21
	.byte	0x56
	.byte	0x27
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x9
	.long	0x95
	.uleb128 0xa
	.long	.LASF25
	.byte	0x49
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d0
	.uleb128 0x2
	.long	.LASF21
	.byte	0x49
	.byte	0x2d
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"n"
	.byte	0x49
	.byte	0x3c
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.long	.LASF27
	.long	0x1e0
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.0
	.byte	0
	.uleb128 0xd
	.long	0x82
	.long	0x1e0
	.uleb128 0xe
	.long	0x3a
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.long	0x1d0
	.uleb128 0x5
	.long	.LASF23
	.byte	0x45
	.byte	0xa
	.long	0x64
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x215
	.uleb128 0x2
	.long	.LASF21
	.byte	0x45
	.byte	0x2d
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.long	.LASF24
	.byte	0x41
	.byte	0x8
	.long	0xf5
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x245
	.uleb128 0x2
	.long	.LASF21
	.byte	0x41
	.byte	0x2a
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x38
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x28f
	.uleb128 0x2
	.long	.LASF21
	.byte	0x38
	.byte	0x2c
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"n"
	.byte	0x38
	.byte	0x3b
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.long	.LASF27
	.long	0x29f
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.1
	.byte	0
	.uleb128 0xd
	.long	0x82
	.long	0x29f
	.uleb128 0xe
	.long	0x3a
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.long	0x28f
	.uleb128 0x5
	.long	.LASF28
	.byte	0x34
	.byte	0xa
	.long	0x64
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d4
	.uleb128 0x2
	.long	.LASF21
	.byte	0x34
	.byte	0x2c
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.long	.LASF29
	.byte	0x30
	.byte	0x8
	.long	0xf5
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x304
	.uleb128 0x2
	.long	.LASF21
	.byte	0x30
	.byte	0x29
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.long	.LASF30
	.byte	0x2c
	.byte	0xa
	.long	0x64
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x334
	.uleb128 0x2
	.long	.LASF21
	.byte	0x2c
	.byte	0x2b
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.long	.LASF31
	.byte	0x28
	.byte	0xa
	.long	0x64
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x364
	.uleb128 0x2
	.long	.LASF21
	.byte	0x28
	.byte	0x27
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x23
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x38f
	.uleb128 0x2
	.long	.LASF21
	.byte	0x23
	.byte	0x26
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	.LASF33
	.byte	0x14
	.byte	0x11
	.long	0x181
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ce
	.uleb128 0x2
	.long	.LASF16
	.byte	0x14
	.byte	0x29
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.long	.LASF21
	.byte	0x1
	.byte	0x15
	.byte	0x12
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.string	"min"
	.byte	0x1
	.byte	0x10
	.byte	0x18
	.long	0x64
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.string	"a"
	.byte	0x10
	.byte	0x25
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"b"
	.byte	0x10
	.byte	0x31
	.long	0x64
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
.LASF25:
	.string	"sbuffer_write_produces"
.LASF35:
	.string	"size_t"
.LASF26:
	.string	"sbuffer_read_consumes"
.LASF16:
	.string	"capacity"
.LASF23:
	.string	"sbuffer_write_size"
.LASF18:
	.string	"float"
.LASF19:
	.string	"__assert_fail"
.LASF24:
	.string	"sbuffer_write_ptr"
.LASF32:
	.string	"sbuffer_destroy"
.LASF34:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF27:
	.string	"__PRETTY_FUNCTION__"
.LASF5:
	.string	"unsigned char"
.LASF21:
	.string	"this"
.LASF22:
	.string	"sbuffer_free"
.LASF2:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF28:
	.string	"sbuffer_read_size"
.LASF33:
	.string	"sbuffer_create"
.LASF36:
	.string	"sbuffer"
.LASF14:
	.string	"get_counter"
.LASF7:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF29:
	.string	"sbuffer_read_ptr"
.LASF31:
	.string	"sbuffer_size"
.LASF37:
	.string	"free"
.LASF4:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF15:
	.string	"put_counter"
.LASF9:
	.string	"short int"
.LASF17:
	.string	"max_counter"
.LASF13:
	.string	"buffer"
.LASF3:
	.string	"long int"
.LASF12:
	.string	"long double"
.LASF8:
	.string	"signed char"
.LASF30:
	.string	"sbuffer_capacity"
.LASF20:
	.string	"malloc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/aluno/Desktop/sound_meter-master_v03"
.LASF0:
	.string	"src/sbuffer.c"
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
