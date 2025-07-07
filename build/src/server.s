	.file	"server.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v03" "src/server.c"
	.local	server_mutex
	.comm	server_mutex,40,32
	.local	server_condition
	.comm	server_condition,48,32
	.local	server_thread
	.comm	server_thread,8,8
	.local	server_ts
	.comm	server_ts,8,8
	.local	server_laeq
	.comm	server_laeq,4,4
	.local	server_lapeak
	.comm	server_lapeak,4,4
	.local	server_lafmax
	.comm	server_lafmax,4,4
	.local	server_lafmin
	.comm	server_lafmin,4,4
	.local	server_lae
	.comm	server_lae,4,4
	.type	timespec_add_mili, @function
timespec_add_mili:
.LFB6:
	.file 1 "src/server.c"
	.loc 1 26 68
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 1 27 21
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 27 17
	movl	$999999999, %edx
	subq	%rax, %rdx
	.loc 1 27 42
	movl	-12(%rbp), %eax
	imulq	$1000000, %rax, %rax
	.loc 1 27 5
	cmpq	%rax, %rdx
	jle	.L2
	.loc 1 28 5
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 28 27
	movl	-12(%rbp), %eax
	imulq	$1000000, %rax, %rax
	.loc 1 28 15
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 34 1
	jmp	.L4
.L2:
	.loc 1 31 5
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 31 14
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 32 26
	movl	-12(%rbp), %eax
	imulq	$1000000, %rax, %rdx
	.loc 1 32 51
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 32 47
	movl	$999999999, %ecx
	subq	%rax, %rcx
	.loc 1 32 34
	subq	%rcx, %rdx
	.loc 1 32 15
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L4:
	.loc 1 34 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	timespec_add_mili, .-timespec_add_mili
	.local	sockcli_table
	.comm	sockcli_table,20,16
	.local	sockcli_table_current
	.comm	sockcli_table_current,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"Error in \"socket(AF_UNIX, SOCK_DGRAM, 0)\""
	.align 8
.LC1:
	.string	"Error in \"fcntl(sockfd, F_GETFL, 0)\""
	.align 8
.LC2:
	.string	"Error in \"fcntl(sockfd, F_SETFL, 0)\""
	.align 8
.LC3:
	.string	"Error in \"bind(sock, local, len)\""
.LC4:
	.string	"Error in \"listen(sockfd, 0)\""
	.align 8
.LC5:
	.string	"{\"ts\": %lld, \"values\": {\"LAeq\": %.1f, \"LAFmin\": %.1f, \"LAE\": %.1f, \"LAFmax\": %.1f, \"LApeak\": %.1f } }"
	.align 8
.LC6:
	.string	"Error in \"accept(sockfd, NULL, 0)\""
	.text
	.type	server_thread_func, @function
server_thread_func:
.LFB7:
	.loc 1 43 47
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -312(%rbp)
	.loc 1 43 47
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 44 15
	movl	$0, %edx
	movl	$1, %esi
	movl	$1, %edi
	call	socket@PLT
	movl	%eax, -300(%rbp)
	.loc 1 45 5
	cmpl	$0, -300(%rbp)
	jns	.L6
	.loc 1 46 3
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 47 3
	movl	$1, %edi
	call	exit@PLT
.L6:
	.loc 1 49 21
	movl	-300(%rbp), %eax
	movl	$0, %edx
	movl	$3, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fcntl@PLT
	movl	%eax, -296(%rbp)
	.loc 1 50 12
	cmpl	$0, -296(%rbp)
	jns	.L7
	.loc 1 51 17
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 52 17
	movl	$1, %edi
	call	exit@PLT
.L7:
	.loc 1 54 22
	movl	-296(%rbp), %eax
	orb	$8, %ah
	movl	%eax, %edx
	movl	-300(%rbp), %eax
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fcntl@PLT
	movl	%eax, -292(%rbp)
	.loc 1 55 12
	cmpl	$0, -292(%rbp)
	jns	.L8
	.loc 1 56 17
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	movl	$1, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 57 17
	movl	$1, %edi
	call	exit@PLT
.L8:
	.loc 1 60 28
	movw	$1, -240(%rbp)
	.loc 1 61 47
	movq	config_struct(%rip), %rax
	.loc 1 61 2
	movq	168(%rax), %rax
	leaq	-240(%rbp), %rdx
	addq	$2, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	.loc 1 62 2
	leaq	-240(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	unlink@PLT
	.loc 1 63 51
	leaq	-240(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 63 9 discriminator 1
	addq	$2, %rax
	movq	%rax, -272(%rbp)
	.loc 1 64 11
	movq	-272(%rbp), %rax
	movl	%eax, %edx
	leaq	-240(%rbp), %rcx
	movl	-300(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	bind@PLT
	movl	%eax, -292(%rbp)
	.loc 1 65 5
	cmpl	$0, -292(%rbp)
	jns	.L9
	.loc 1 66 3
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	movl	$1, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 67 3
	movl	$1, %edi
	call	exit@PLT
.L9:
	.loc 1 70 11
	movl	-300(%rbp), %eax
	movl	$5, %esi
	movl	%eax, %edi
	call	listen@PLT
	movl	%eax, -292(%rbp)
	.loc 1 71 5
	cmpl	$0, -292(%rbp)
	jns	.L10
	.loc 1 72 3
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 73 3
	movl	$1, %edi
	call	exit@PLT
.L10:
	.loc 1 77 9
	leaq	server_mutex(%rip), %rax
	movq	%rax, %rdi
	call	mtx_lock@PLT
	.loc 1 78 15
	jmp	.L11
.L21:
.LBB2:
	.loc 1 80 17
	leaq	-256(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	timespec_get@PLT
	.loc 1 81 17
	leaq	-256(%rbp), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	timespec_add_mili
	.loc 1 82 30
	leaq	-256(%rbp), %rax
	movq	%rax, %rdx
	leaq	server_mutex(%rip), %rax
	movq	%rax, %rsi
	leaq	server_condition(%rip), %rax
	movq	%rax, %rdi
	call	cnd_timedwait@PLT
	movl	%eax, -288(%rbp)
	.loc 1 83 20
	cmpl	$0, -288(%rbp)
	jne	.L12
.LBB3:
	.loc 1 85 25
	movss	server_lapeak(%rip), %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movss	server_lafmax(%rip), %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movss	server_lae(%rip), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movss	server_lafmin(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movss	server_laeq(%rip), %xmm4
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm4, %xmm5
	movq	%xmm5, %rcx
	movq	server_ts(%rip), %rdx
	leaq	-128(%rbp), %rax
	movapd	%xmm3, %xmm4
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movq	%rdx, %rcx
	leaq	.LC5(%rip), %rdx
	movl	$120, %esi
	movq	%rax, %rdi
	movl	$5, %eax
	call	snprintf@PLT
.LBB4:
	.loc 1 88 34
	movl	$0, -304(%rbp)
	.loc 1 88 25
	jmp	.L13
.L16:
.LBB5:
	.loc 1 89 51
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	.loc 1 89 51 is_stmt 0 discriminator 1
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	sockcli_table(%rip), %rax
	movl	(%rcx,%rax), %eax
	leaq	-128(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	movq	%rax, -264(%rbp)
	.loc 1 90 36 is_stmt 1
	cmpq	$0, -264(%rbp)
	jns	.L14
	.loc 1 91 37
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sockcli_table(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 1 92 70
	movq	sockcli_table_current(%rip), %rax
	subq	$1, %rax
	.loc 1 92 54
	movq	%rax, sockcli_table_current(%rip)
	.loc 1 92 70
	movq	sockcli_table_current(%rip), %rax
	.loc 1 92 69
	leaq	0(,%rax,4), %rdx
	leaq	sockcli_table(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 92 54
	movl	-304(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	sockcli_table(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	jmp	.L13
.L14:
	.loc 1 95 42
	addl	$1, -304(%rbp)
.L13:
.LBE5:
	.loc 1 88 43 discriminator 1
	movl	-304(%rbp), %eax
	movslq	%eax, %rdx
	movq	sockcli_table_current(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L16
	jmp	.L11
.L12:
.LBE4:
.LBE3:
	.loc 1 99 25
	cmpl	$4, -288(%rbp)
	jne	.L11
	.loc 1 100 50
	movq	sockcli_table_current(%rip), %rax
	.loc 1 100 25
	cmpq	$4, %rax
	ja	.L11
.LBB6:
	.loc 1 101 41
	movl	-300(%rbp), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	accept@PLT
	movl	%eax, -284(%rbp)
	.loc 1 102 28
	cmpl	$0, -284(%rbp)
	jns	.L18
	.loc 1 103 38
	call	__errno_location@PLT
	.loc 1 103 37 discriminator 1
	movl	(%rax), %eax
	.loc 1 103 36 discriminator 1
	cmpl	$11, %eax
	je	.L11
	.loc 1 103 57 discriminator 1
	call	__errno_location@PLT
	.loc 1 103 56 discriminator 1
	movl	(%rax), %eax
	.loc 1 103 52 discriminator 1
	cmpl	$11, %eax
	je	.L11
	.loc 1 104 41
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	movl	$1, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 105 41
	movl	$1, %edi
	call	exit@PLT
.L18:
.LBB7:
	.loc 1 109 45
	movl	-284(%rbp), %eax
	movl	$0, %edx
	movl	$3, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fcntl@PLT
	movl	%eax, -280(%rbp)
	.loc 1 110 36
	cmpl	$0, -280(%rbp)
	jns	.L19
	.loc 1 111 41
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 112 41
	movl	$1, %edi
	call	exit@PLT
.L19:
	.loc 1 114 46
	movl	-280(%rbp), %eax
	orb	$8, %ah
	movl	%eax, %edx
	movl	-284(%rbp), %eax
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fcntl@PLT
	movl	%eax, -276(%rbp)
	.loc 1 115 36
	cmpl	$0, -276(%rbp)
	jns	.L20
	.loc 1 116 41
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	movl	$1, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 117 41
	movl	$1, %edi
	call	exit@PLT
.L20:
	.loc 1 119 68
	movq	sockcli_table_current(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, sockcli_table_current(%rip)
	.loc 1 119 72
	leaq	0(,%rax,4), %rcx
	leaq	sockcli_table(%rip), %rdx
	movl	-284(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
.L11:
.LBE7:
.LBE6:
.LBE2:
	.loc 1 78 16
	movzbl	running(%rip), %eax
	testb	%al, %al
	jne	.L21
	.loc 1 123 9
	leaq	server_mutex(%rip), %rax
	movq	%rax, %rdi
	call	mtx_unlock@PLT
	.loc 1 124 16
	movl	$0, %eax
	.loc 1 125 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	server_thread_func, .-server_thread_func
	.section	.rodata
	.align 8
.LC7:
	.string	"Error in \"thrd_create(&thread_server, server_thread_func, NULL)\""
	.text
	.globl	server_init
	.type	server_init, @function
server_init:
.LFB8:
	.loc 1 127 20
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 128 9
	movl	$0, %esi
	leaq	server_mutex(%rip), %rax
	movq	%rax, %rdi
	call	mtx_init@PLT
	.loc 1 129 9
	leaq	server_condition(%rip), %rax
	movq	%rax, %rdi
	call	cnd_init@PLT
	.loc 1 130 29
	movl	$0, %edx
	leaq	server_thread_func(%rip), %rax
	movq	%rax, %rsi
	leaq	server_thread(%rip), %rax
	movq	%rax, %rdi
	call	thrd_create@PLT
	.loc 1 130 12 discriminator 1
	testl	%eax, %eax
	je	.L26
	.loc 1 131 17
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$64, %edx
	movl	$1, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 132 17
	movl	$1, %edi
	call	exit@PLT
.L26:
	.loc 1 134 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	server_init, .-server_init
	.globl	server_end
	.type	server_end, @function
server_end:
.LFB9:
	.loc 1 136 19
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 136 19
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 138 9
	movq	server_thread(%rip), %rax
	leaq	-12(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	thrd_join@PLT
	.loc 1 139 1
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	server_end, .-server_end
	.globl	server_send
	.type	server_send, @function
server_send:
.LFB10:
	.loc 1 141 96
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movss	%xmm2, -20(%rbp)
	movss	%xmm3, -24(%rbp)
	movss	%xmm4, -28(%rbp)
	.loc 1 142 2
	leaq	server_mutex(%rip), %rax
	movq	%rax, %rdi
	call	mtx_lock@PLT
	.loc 1 143 19
	movq	-8(%rbp), %rax
	movq	%rax, server_ts(%rip)
	.loc 1 144 21
	movss	-12(%rbp), %xmm0
	movss	%xmm0, server_laeq(%rip)
	.loc 1 145 23
	movss	-28(%rbp), %xmm0
	movss	%xmm0, server_lapeak(%rip)
	.loc 1 146 23
	movss	-24(%rbp), %xmm0
	movss	%xmm0, server_lafmax(%rip)
	.loc 1 147 23
	movss	-16(%rbp), %xmm0
	movss	%xmm0, server_lafmin(%rip)
	.loc 1 148 20
	movss	-20(%rbp), %xmm0
	movss	%xmm0, server_lae(%rip)
	.loc 1 149 2
	leaq	server_mutex(%rip), %rax
	movq	%rax, %rdi
	call	mtx_unlock@PLT
	.loc 1 150 2
	leaq	server_condition(%rip), %rax
	movq	%rax, %rdi
	call	cnd_signal@PLT
	.loc 1 151 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	server_send, .-server_send
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h"
	.file 6 "/usr/include/threads.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/sockaddr.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/socket.h"
	.file 14 "/usr/include/x86_64-linux-gnu/sys/un.h"
	.file 15 "src/config.h"
	.file 16 "/usr/include/x86_64-linux-gnu/sys/socket.h"
	.file 17 "/usr/include/time.h"
	.file 18 "/usr/include/string.h"
	.file 19 "/usr/include/fcntl.h"
	.file 20 "/usr/include/stdlib.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/socket_type.h"
	.file 22 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xca7
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x19
	.long	.LASF175
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xd6
	.byte	0x1b
	.long	0x3a
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x2d
	.byte	0x1b
	.long	0x3a
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x6b
	.uleb128 0x5
	.long	.LASF12
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x6b
	.uleb128 0x5
	.long	.LASF13
	.byte	0x3
	.byte	0xa0
	.byte	0x12
	.long	0x6b
	.uleb128 0x1b
	.byte	0x8
	.uleb128 0x5
	.long	.LASF14
	.byte	0x3
	.byte	0xc2
	.byte	0x12
	.long	0x6b
	.uleb128 0x5
	.long	.LASF15
	.byte	0x3
	.byte	0xc5
	.byte	0x12
	.long	0x6b
	.uleb128 0x4
	.long	0xc1
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x11
	.long	0xc1
	.uleb128 0x5
	.long	.LASF17
	.byte	0x3
	.byte	0xd2
	.byte	0x16
	.long	0x4f
	.uleb128 0x4
	.long	0xc8
	.uleb128 0xd
	.long	.LASF38
	.byte	0x10
	.byte	0x4
	.byte	0xb
	.long	0x105
	.uleb128 0x1
	.long	.LASF18
	.byte	0x4
	.byte	0x10
	.byte	0xc
	.long	0x96
	.byte	0
	.uleb128 0x1
	.long	.LASF19
	.byte	0x4
	.byte	0x15
	.byte	0x15
	.long	0xb0
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	0xde
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF20
	.uleb128 0x5
	.long	.LASF21
	.byte	0x5
	.byte	0x6a
	.byte	0x1b
	.long	0x3a
	.uleb128 0x5
	.long	.LASF22
	.byte	0x6
	.byte	0x28
	.byte	0x12
	.long	0x111
	.uleb128 0x5
	.long	.LASF23
	.byte	0x6
	.byte	0x29
	.byte	0xf
	.long	0x135
	.uleb128 0x4
	.long	0x13a
	.uleb128 0x1c
	.long	0x64
	.long	0x149
	.uleb128 0x2
	.long	0xa2
	.byte	0
	.uleb128 0x15
	.long	0x4f
	.byte	0x2d
	.long	0x172
	.uleb128 0x6
	.long	.LASF24
	.byte	0
	.uleb128 0x6
	.long	.LASF25
	.byte	0x1
	.uleb128 0x6
	.long	.LASF26
	.byte	0x2
	.uleb128 0x6
	.long	.LASF27
	.byte	0x3
	.uleb128 0x6
	.long	.LASF28
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.long	0x4f
	.byte	0x37
	.long	0x18f
	.uleb128 0x6
	.long	.LASF29
	.byte	0
	.uleb128 0x6
	.long	.LASF30
	.byte	0x1
	.uleb128 0x6
	.long	.LASF31
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.byte	0x28
	.byte	0x40
	.long	0x1ad
	.uleb128 0x10
	.long	.LASF32
	.byte	0x42
	.byte	0x8
	.long	0x1ad
	.uleb128 0x10
	.long	.LASF33
	.byte	0x43
	.byte	0xc
	.long	0x6b
	.byte	0
	.uleb128 0x9
	.long	0xc1
	.long	0x1bd
	.uleb128 0xa
	.long	0x3a
	.byte	0x27
	.byte	0
	.uleb128 0x5
	.long	.LASF34
	.byte	0x6
	.byte	0x44
	.byte	0x3
	.long	0x18f
	.uleb128 0x16
	.byte	0x30
	.byte	0x46
	.long	0x1e7
	.uleb128 0x10
	.long	.LASF32
	.byte	0x48
	.byte	0x8
	.long	0x1e7
	.uleb128 0x10
	.long	.LASF33
	.byte	0x49
	.byte	0x1f
	.long	0x1f7
	.byte	0
	.uleb128 0x9
	.long	0xc1
	.long	0x1f7
	.uleb128 0xa
	.long	0x3a
	.byte	0x2f
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF35
	.uleb128 0x5
	.long	.LASF36
	.byte	0x6
	.byte	0x4a
	.byte	0x3
	.long	0x1c9
	.uleb128 0x5
	.long	.LASF37
	.byte	0x7
	.byte	0x1b
	.byte	0x14
	.long	0x72
	.uleb128 0xd
	.long	.LASF39
	.byte	0xd8
	.byte	0x8
	.byte	0x31
	.long	0x39c
	.uleb128 0x1
	.long	.LASF40
	.byte	0x8
	.byte	0x33
	.byte	0x7
	.long	0x64
	.byte	0
	.uleb128 0x1
	.long	.LASF41
	.byte	0x8
	.byte	0x36
	.byte	0x9
	.long	0xbc
	.byte	0x8
	.uleb128 0x1
	.long	.LASF42
	.byte	0x8
	.byte	0x37
	.byte	0x9
	.long	0xbc
	.byte	0x10
	.uleb128 0x1
	.long	.LASF43
	.byte	0x8
	.byte	0x38
	.byte	0x9
	.long	0xbc
	.byte	0x18
	.uleb128 0x1
	.long	.LASF44
	.byte	0x8
	.byte	0x39
	.byte	0x9
	.long	0xbc
	.byte	0x20
	.uleb128 0x1
	.long	.LASF45
	.byte	0x8
	.byte	0x3a
	.byte	0x9
	.long	0xbc
	.byte	0x28
	.uleb128 0x1
	.long	.LASF46
	.byte	0x8
	.byte	0x3b
	.byte	0x9
	.long	0xbc
	.byte	0x30
	.uleb128 0x1
	.long	.LASF47
	.byte	0x8
	.byte	0x3c
	.byte	0x9
	.long	0xbc
	.byte	0x38
	.uleb128 0x1
	.long	.LASF48
	.byte	0x8
	.byte	0x3d
	.byte	0x9
	.long	0xbc
	.byte	0x40
	.uleb128 0x1
	.long	.LASF49
	.byte	0x8
	.byte	0x40
	.byte	0x9
	.long	0xbc
	.byte	0x48
	.uleb128 0x1
	.long	.LASF50
	.byte	0x8
	.byte	0x41
	.byte	0x9
	.long	0xbc
	.byte	0x50
	.uleb128 0x1
	.long	.LASF51
	.byte	0x8
	.byte	0x42
	.byte	0x9
	.long	0xbc
	.byte	0x58
	.uleb128 0x1
	.long	.LASF52
	.byte	0x8
	.byte	0x44
	.byte	0x16
	.long	0x3b5
	.byte	0x60
	.uleb128 0x1
	.long	.LASF53
	.byte	0x8
	.byte	0x46
	.byte	0x14
	.long	0x3ba
	.byte	0x68
	.uleb128 0x1
	.long	.LASF54
	.byte	0x8
	.byte	0x48
	.byte	0x7
	.long	0x64
	.byte	0x70
	.uleb128 0x1
	.long	.LASF55
	.byte	0x8
	.byte	0x49
	.byte	0x7
	.long	0x64
	.byte	0x74
	.uleb128 0x1
	.long	.LASF56
	.byte	0x8
	.byte	0x4a
	.byte	0xb
	.long	0x7e
	.byte	0x78
	.uleb128 0x1
	.long	.LASF57
	.byte	0x8
	.byte	0x4d
	.byte	0x12
	.long	0x48
	.byte	0x80
	.uleb128 0x1
	.long	.LASF58
	.byte	0x8
	.byte	0x4e
	.byte	0xf
	.long	0x56
	.byte	0x82
	.uleb128 0x1
	.long	.LASF59
	.byte	0x8
	.byte	0x4f
	.byte	0x8
	.long	0x3bf
	.byte	0x83
	.uleb128 0x1
	.long	.LASF60
	.byte	0x8
	.byte	0x51
	.byte	0xf
	.long	0x3cf
	.byte	0x88
	.uleb128 0x1
	.long	.LASF61
	.byte	0x8
	.byte	0x59
	.byte	0xd
	.long	0x8a
	.byte	0x90
	.uleb128 0x1
	.long	.LASF62
	.byte	0x8
	.byte	0x5b
	.byte	0x17
	.long	0x3d9
	.byte	0x98
	.uleb128 0x1
	.long	.LASF63
	.byte	0x8
	.byte	0x5c
	.byte	0x19
	.long	0x3e3
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF64
	.byte	0x8
	.byte	0x5d
	.byte	0x14
	.long	0x3ba
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF65
	.byte	0x8
	.byte	0x5e
	.byte	0x9
	.long	0xa2
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF66
	.byte	0x8
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF67
	.byte	0x8
	.byte	0x60
	.byte	0x7
	.long	0x64
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF68
	.byte	0x8
	.byte	0x62
	.byte	0x8
	.long	0x3e8
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF69
	.byte	0x9
	.byte	0x7
	.byte	0x19
	.long	0x216
	.uleb128 0x1d
	.long	.LASF176
	.byte	0x8
	.byte	0x2b
	.byte	0xe
	.uleb128 0x12
	.long	.LASF70
	.uleb128 0x4
	.long	0x3b0
	.uleb128 0x4
	.long	0x216
	.uleb128 0x9
	.long	0xc1
	.long	0x3cf
	.uleb128 0xa
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x3a8
	.uleb128 0x12
	.long	.LASF71
	.uleb128 0x4
	.long	0x3d4
	.uleb128 0x12
	.long	.LASF72
	.uleb128 0x4
	.long	0x3de
	.uleb128 0x9
	.long	0xc1
	.long	0x3f8
	.uleb128 0xa
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF73
	.byte	0xa
	.byte	0x4e
	.byte	0x13
	.long	0xa4
	.uleb128 0x4
	.long	0x39c
	.uleb128 0x13
	.long	.LASF126
	.byte	0xa
	.byte	0x97
	.byte	0xe
	.long	0x404
	.uleb128 0x4
	.long	0x41a
	.uleb128 0x1e
	.uleb128 0x1f
	.long	.LASF74
	.byte	0xb
	.value	0x112
	.byte	0x15
	.long	0xcd
	.uleb128 0x20
	.long	.LASF177
	.byte	0x7
	.byte	0x4
	.long	0x4f
	.byte	0x15
	.byte	0x18
	.byte	0x6
	.long	0x475
	.uleb128 0x6
	.long	.LASF75
	.byte	0x1
	.uleb128 0x6
	.long	.LASF76
	.byte	0x2
	.uleb128 0x6
	.long	.LASF77
	.byte	0x3
	.uleb128 0x6
	.long	.LASF78
	.byte	0x4
	.uleb128 0x6
	.long	.LASF79
	.byte	0x5
	.uleb128 0x6
	.long	.LASF80
	.byte	0x6
	.uleb128 0x6
	.long	.LASF81
	.byte	0xa
	.uleb128 0x21
	.long	.LASF82
	.long	0x80000
	.uleb128 0x22
	.long	.LASF83
	.value	0x800
	.byte	0
	.uleb128 0x5
	.long	.LASF84
	.byte	0xc
	.byte	0x1c
	.byte	0x1c
	.long	0x48
	.uleb128 0xd
	.long	.LASF85
	.byte	0x10
	.byte	0xd
	.byte	0xb7
	.long	0x4a8
	.uleb128 0x1
	.long	.LASF86
	.byte	0xd
	.byte	0xb9
	.byte	0x11
	.long	0x475
	.byte	0
	.uleb128 0x1
	.long	.LASF87
	.byte	0xd
	.byte	0xba
	.byte	0xa
	.long	0x4ad
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.long	0x481
	.uleb128 0x9
	.long	0xc1
	.long	0x4bd
	.uleb128 0xa
	.long	0x3a
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.long	.LASF88
	.byte	0x6e
	.byte	0xe
	.byte	0x1d
	.long	0x4e4
	.uleb128 0x1
	.long	.LASF89
	.byte	0xe
	.byte	0x1f
	.byte	0x11
	.long	0x475
	.byte	0
	.uleb128 0x1
	.long	.LASF90
	.byte	0xe
	.byte	0x20
	.byte	0xa
	.long	0x4e4
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0xc1
	.long	0x4f4
	.uleb128 0xa
	.long	0x3a
	.byte	0x6b
	.byte	0
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.long	.LASF91
	.uleb128 0xd
	.long	.LASF92
	.byte	0xb0
	.byte	0xf
	.byte	0x53
	.long	0x69b
	.uleb128 0x1
	.long	.LASF93
	.byte	0xf
	.byte	0x55
	.byte	0xe
	.long	0xd9
	.byte	0
	.uleb128 0x1
	.long	.LASF94
	.byte	0xf
	.byte	0x56
	.byte	0xe
	.long	0xd9
	.byte	0x8
	.uleb128 0x1
	.long	.LASF95
	.byte	0xf
	.byte	0x57
	.byte	0xe
	.long	0xd9
	.byte	0x10
	.uleb128 0x1
	.long	.LASF96
	.byte	0xf
	.byte	0x58
	.byte	0xe
	.long	0xd9
	.byte	0x18
	.uleb128 0x1
	.long	.LASF97
	.byte	0xf
	.byte	0x59
	.byte	0xe
	.long	0xd9
	.byte	0x20
	.uleb128 0x1
	.long	.LASF98
	.byte	0xf
	.byte	0x5a
	.byte	0xe
	.long	0xd9
	.byte	0x28
	.uleb128 0x1
	.long	.LASF99
	.byte	0xf
	.byte	0x5b
	.byte	0xe
	.long	0xd9
	.byte	0x30
	.uleb128 0x1
	.long	.LASF100
	.byte	0xf
	.byte	0x5d
	.byte	0xb
	.long	0x4f
	.byte	0x38
	.uleb128 0x1
	.long	.LASF101
	.byte	0xf
	.byte	0x5e
	.byte	0xb
	.long	0x4f
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF102
	.byte	0xf
	.byte	0x5f
	.byte	0xb
	.long	0x4f
	.byte	0x40
	.uleb128 0x1
	.long	.LASF103
	.byte	0xf
	.byte	0x60
	.byte	0xb
	.long	0x4f
	.byte	0x44
	.uleb128 0x1
	.long	.LASF104
	.byte	0xf
	.byte	0x61
	.byte	0xb
	.long	0x4f
	.byte	0x48
	.uleb128 0x1
	.long	.LASF105
	.byte	0xf
	.byte	0x62
	.byte	0xb
	.long	0x4f
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF106
	.byte	0xf
	.byte	0x63
	.byte	0xb
	.long	0x4f
	.byte	0x50
	.uleb128 0x1
	.long	.LASF107
	.byte	0xf
	.byte	0x64
	.byte	0xb
	.long	0x4f
	.byte	0x54
	.uleb128 0x1
	.long	.LASF108
	.byte	0xf
	.byte	0x65
	.byte	0xb
	.long	0x4f
	.byte	0x58
	.uleb128 0x1
	.long	.LASF109
	.byte	0xf
	.byte	0x66
	.byte	0xb
	.long	0x4f
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF110
	.byte	0xf
	.byte	0x67
	.byte	0x8
	.long	0x69b
	.byte	0x60
	.uleb128 0x1
	.long	.LASF111
	.byte	0xf
	.byte	0x68
	.byte	0xb
	.long	0x4f
	.byte	0x64
	.uleb128 0x1
	.long	.LASF112
	.byte	0xf
	.byte	0x69
	.byte	0xb
	.long	0x4f
	.byte	0x68
	.uleb128 0x1
	.long	.LASF113
	.byte	0xf
	.byte	0x6a
	.byte	0x8
	.long	0x69b
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF114
	.byte	0xf
	.byte	0x6b
	.byte	0xb
	.long	0x4f
	.byte	0x70
	.uleb128 0x1
	.long	.LASF115
	.byte	0xf
	.byte	0x6d
	.byte	0xb
	.long	0x4f
	.byte	0x74
	.uleb128 0x1
	.long	.LASF116
	.byte	0xf
	.byte	0x6e
	.byte	0x8
	.long	0x6a2
	.byte	0x78
	.uleb128 0x1
	.long	.LASF117
	.byte	0xf
	.byte	0x6f
	.byte	0x8
	.long	0x6a2
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF118
	.byte	0xf
	.byte	0x71
	.byte	0x6
	.long	0x69b
	.byte	0x80
	.uleb128 0x1
	.long	.LASF119
	.byte	0xf
	.byte	0x72
	.byte	0xe
	.long	0xd9
	.byte	0x88
	.uleb128 0x1
	.long	.LASF120
	.byte	0xf
	.byte	0x73
	.byte	0xe
	.long	0xd9
	.byte	0x90
	.uleb128 0x1
	.long	.LASF121
	.byte	0xf
	.byte	0x74
	.byte	0x6
	.long	0x64
	.byte	0x98
	.uleb128 0x1
	.long	.LASF122
	.byte	0xf
	.byte	0x75
	.byte	0xe
	.long	0xd9
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF123
	.byte	0xf
	.byte	0x77
	.byte	0xe
	.long	0xd9
	.byte	0xa8
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.long	.LASF124
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.long	.LASF125
	.uleb128 0x13
	.long	.LASF127
	.byte	0xf
	.byte	0x7f
	.byte	0x17
	.long	0x6b5
	.uleb128 0x4
	.long	0x4fb
	.uleb128 0x3
	.long	.LASF128
	.byte	0xe
	.byte	0xe
	.long	0x1bd
	.uleb128 0x9
	.byte	0x3
	.quad	server_mutex
	.uleb128 0x3
	.long	.LASF129
	.byte	0xf
	.byte	0xe
	.long	0x1fe
	.uleb128 0x9
	.byte	0x3
	.quad	server_condition
	.uleb128 0x3
	.long	.LASF130
	.byte	0x10
	.byte	0xf
	.long	0x11d
	.uleb128 0x9
	.byte	0x3
	.quad	server_thread
	.uleb128 0x3
	.long	.LASF131
	.byte	0x12
	.byte	0x1b
	.long	0x10a
	.uleb128 0x9
	.byte	0x3
	.quad	server_ts
	.uleb128 0x3
	.long	.LASF132
	.byte	0x13
	.byte	0xe
	.long	0x6a2
	.uleb128 0x9
	.byte	0x3
	.quad	server_laeq
	.uleb128 0x3
	.long	.LASF133
	.byte	0x14
	.byte	0xe
	.long	0x6a2
	.uleb128 0x9
	.byte	0x3
	.quad	server_lapeak
	.uleb128 0x3
	.long	.LASF134
	.byte	0x15
	.byte	0xe
	.long	0x6a2
	.uleb128 0x9
	.byte	0x3
	.quad	server_lafmax
	.uleb128 0x3
	.long	.LASF135
	.byte	0x16
	.byte	0xe
	.long	0x6a2
	.uleb128 0x9
	.byte	0x3
	.quad	server_lafmin
	.uleb128 0x3
	.long	.LASF136
	.byte	0x17
	.byte	0xe
	.long	0x6a2
	.uleb128 0x9
	.byte	0x3
	.quad	server_lae
	.uleb128 0x9
	.long	0x64
	.long	0x787
	.uleb128 0xa
	.long	0x3a
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF137
	.byte	0x24
	.byte	0xc
	.long	0x777
	.uleb128 0x9
	.byte	0x3
	.quad	sockcli_table
	.uleb128 0x3
	.long	.LASF138
	.byte	0x25
	.byte	0xf
	.long	0x2e
	.uleb128 0x9
	.byte	0x3
	.quad	sockcli_table_current
	.uleb128 0x13
	.long	.LASF139
	.byte	0x1
	.byte	0x29
	.byte	0xc
	.long	0x69b
	.uleb128 0x8
	.long	.LASF140
	.byte	0x6
	.byte	0xb9
	.byte	0xc
	.long	0x64
	.long	0x7d3
	.uleb128 0x2
	.long	0x7d3
	.byte	0
	.uleb128 0x4
	.long	0x1fe
	.uleb128 0xe
	.long	0x7d3
	.uleb128 0x8
	.long	.LASF141
	.byte	0x6
	.byte	0x74
	.byte	0xc
	.long	0x64
	.long	0x7f8
	.uleb128 0x2
	.long	0x11d
	.uleb128 0x2
	.long	0x7f8
	.byte	0
	.uleb128 0x4
	.long	0x64
	.uleb128 0x8
	.long	.LASF142
	.byte	0x6
	.byte	0x51
	.byte	0xc
	.long	0x64
	.long	0x81d
	.uleb128 0x2
	.long	0x81d
	.uleb128 0x2
	.long	0x129
	.uleb128 0x2
	.long	0xa2
	.byte	0
	.uleb128 0x4
	.long	0x11d
	.uleb128 0x8
	.long	.LASF143
	.byte	0x6
	.byte	0xb5
	.byte	0xc
	.long	0x64
	.long	0x838
	.uleb128 0x2
	.long	0x7d3
	.byte	0
	.uleb128 0x8
	.long	.LASF144
	.byte	0x6
	.byte	0x89
	.byte	0xc
	.long	0x64
	.long	0x853
	.uleb128 0x2
	.long	0x853
	.uleb128 0x2
	.long	0x64
	.byte	0
	.uleb128 0x4
	.long	0x1bd
	.uleb128 0xe
	.long	0x853
	.uleb128 0x8
	.long	.LASF145
	.byte	0x6
	.byte	0xa7
	.byte	0xc
	.long	0x64
	.long	0x873
	.uleb128 0x2
	.long	0x853
	.byte	0
	.uleb128 0x23
	.long	.LASF178
	.byte	0x16
	.byte	0x25
	.byte	0xd
	.long	0x7f8
	.uleb128 0xb
	.long	.LASF146
	.byte	0x10
	.value	0x132
	.byte	0xc
	.long	0x64
	.long	0x8a0
	.uleb128 0x2
	.long	0x64
	.uleb128 0x2
	.long	0x8a5
	.uleb128 0x2
	.long	0x8af
	.byte	0
	.uleb128 0x4
	.long	0x481
	.uleb128 0xe
	.long	0x8a0
	.uleb128 0x4
	.long	0x41b
	.uleb128 0xe
	.long	0x8aa
	.uleb128 0xb
	.long	.LASF147
	.byte	0xb
	.value	0x166
	.byte	0xc
	.long	0x64
	.long	0x8cb
	.uleb128 0x2
	.long	0x64
	.byte	0
	.uleb128 0xb
	.long	.LASF148
	.byte	0xb
	.value	0x17a
	.byte	0x10
	.long	0x3f8
	.long	0x8ec
	.uleb128 0x2
	.long	0x64
	.uleb128 0x2
	.long	0x415
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0xb
	.long	.LASF149
	.byte	0xa
	.value	0x181
	.byte	0xc
	.long	0x64
	.long	0x90e
	.uleb128 0x2
	.long	0xbc
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0xd9
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.long	.LASF150
	.byte	0x6
	.byte	0xc6
	.byte	0xc
	.long	0x64
	.long	0x92e
	.uleb128 0x2
	.long	0x7d8
	.uleb128 0x2
	.long	0x858
	.uleb128 0x2
	.long	0x933
	.byte	0
	.uleb128 0x4
	.long	0x105
	.uleb128 0xe
	.long	0x92e
	.uleb128 0xb
	.long	.LASF151
	.byte	0x11
	.value	0x180
	.byte	0xc
	.long	0x64
	.long	0x954
	.uleb128 0x2
	.long	0x954
	.uleb128 0x2
	.long	0x64
	.byte	0
	.uleb128 0x4
	.long	0xde
	.uleb128 0x8
	.long	.LASF152
	.byte	0x6
	.byte	0x8d
	.byte	0xc
	.long	0x64
	.long	0x96f
	.uleb128 0x2
	.long	0x853
	.byte	0
	.uleb128 0xb
	.long	.LASF153
	.byte	0x10
	.value	0x128
	.byte	0xc
	.long	0x64
	.long	0x98b
	.uleb128 0x2
	.long	0x64
	.uleb128 0x2
	.long	0x64
	.byte	0
	.uleb128 0x8
	.long	.LASF154
	.byte	0x10
	.byte	0x70
	.byte	0xc
	.long	0x64
	.long	0x9ab
	.uleb128 0x2
	.long	0x64
	.uleb128 0x2
	.long	0x9ab
	.uleb128 0x2
	.long	0x41b
	.byte	0
	.uleb128 0x4
	.long	0x4a8
	.uleb128 0xb
	.long	.LASF155
	.byte	0x12
	.value	0x197
	.byte	0xf
	.long	0x2e
	.long	0x9c7
	.uleb128 0x2
	.long	0xd9
	.byte	0
	.uleb128 0xb
	.long	.LASF156
	.byte	0xb
	.value	0x35a
	.byte	0xc
	.long	0x64
	.long	0x9de
	.uleb128 0x2
	.long	0xd9
	.byte	0
	.uleb128 0x8
	.long	.LASF157
	.byte	0x12
	.byte	0x8d
	.byte	0xe
	.long	0xbc
	.long	0x9f9
	.uleb128 0x2
	.long	0xbc
	.uleb128 0x2
	.long	0xd9
	.byte	0
	.uleb128 0x8
	.long	.LASF158
	.byte	0x13
	.byte	0xb1
	.byte	0xc
	.long	0x64
	.long	0xa15
	.uleb128 0x2
	.long	0x64
	.uleb128 0x2
	.long	0x64
	.uleb128 0x17
	.byte	0
	.uleb128 0x24
	.long	.LASF159
	.byte	0x14
	.value	0x2f4
	.byte	0xd
	.long	0xa28
	.uleb128 0x2
	.long	0x64
	.byte	0
	.uleb128 0x8
	.long	.LASF160
	.byte	0x10
	.byte	0x66
	.byte	0xc
	.long	0x64
	.long	0xa48
	.uleb128 0x2
	.long	0x64
	.uleb128 0x2
	.long	0x64
	.uleb128 0x2
	.long	0x64
	.byte	0
	.uleb128 0x25
	.long	.LASF179
	.byte	0x1
	.byte	0x8d
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xaba
	.uleb128 0x14
	.string	"ts"
	.byte	0x8d
	.byte	0x1b
	.long	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.long	.LASF161
	.byte	0x8d
	.byte	0x25
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.long	.LASF162
	.byte	0x8d
	.byte	0x31
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"lae"
	.byte	0x8d
	.byte	0x3f
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.long	.LASF163
	.byte	0x8d
	.byte	0x4a
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF164
	.byte	0x8d
	.byte	0x58
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x26
	.long	.LASF180
	.byte	0x1
	.byte	0x88
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xae7
	.uleb128 0x3
	.long	.LASF165
	.byte	0x89
	.byte	0xd
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x27
	.long	.LASF181
	.byte	0x1
	.byte	0x7f
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF182
	.byte	0x1
	.byte	0x2b
	.byte	0xc
	.long	0x64
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xc64
	.uleb128 0xc
	.long	.LASF166
	.byte	0x2b
	.byte	0x25
	.long	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x3
	.long	.LASF167
	.byte	0x2c
	.byte	0x6
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x3
	.long	.LASF168
	.byte	0x31
	.byte	0xd
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x3
	.long	.LASF165
	.byte	0x36
	.byte	0xd
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x3
	.long	.LASF169
	.byte	0x3b
	.byte	0x15
	.long	0x4bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x18
	.string	"len"
	.byte	0x3f
	.byte	0x9
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0xf
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x3
	.long	.LASF170
	.byte	0x4f
	.byte	0x13
	.long	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x3
	.long	.LASF165
	.byte	0x52
	.byte	0x15
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xc11
	.uleb128 0x3
	.long	.LASF171
	.byte	0x54
	.byte	0x1e
	.long	0xc64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xf
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x18
	.string	"i"
	.byte	0x58
	.byte	0x22
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0xf
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x3
	.long	.LASF172
	.byte	0x59
	.byte	0x29
	.long	0x3f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x3
	.long	.LASF173
	.byte	0x65
	.byte	0x1d
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0xf
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x3
	.long	.LASF168
	.byte	0x6d
	.byte	0x25
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x3
	.long	.LASF165
	.byte	0x72
	.byte	0x25
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xc1
	.long	0xc74
	.uleb128 0xa
	.long	0x3a
	.byte	0x77
	.byte	0
	.uleb128 0x2a
	.long	.LASF183
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.string	"ts"
	.byte	0x1a
	.byte	0x30
	.long	0x954
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.long	.LASF174
	.byte	0x1a
	.byte	0x3d
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x5
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
	.byte	0
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
	.uleb128 0x28
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
.LASF11:
	.string	"__off_t"
.LASF7:
	.string	"short int"
.LASF41:
	.string	"_IO_read_ptr"
.LASF53:
	.string	"_chain"
.LASF24:
	.string	"thrd_success"
.LASF59:
	.string	"_shortbuf"
.LASF129:
	.string	"server_condition"
.LASF9:
	.string	"size_t"
.LASF28:
	.string	"thrd_timedout"
.LASF160:
	.string	"socket"
.LASF33:
	.string	"__align"
.LASF141:
	.string	"thrd_join"
.LASF147:
	.string	"close"
.LASF143:
	.string	"cnd_init"
.LASF131:
	.string	"server_ts"
.LASF73:
	.string	"ssize_t"
.LASF32:
	.string	"__size"
.LASF145:
	.string	"mtx_unlock"
.LASF47:
	.string	"_IO_buf_base"
.LASF83:
	.string	"SOCK_NONBLOCK"
.LASF20:
	.string	"long long unsigned int"
.LASF118:
	.string	"mqtt_enable"
.LASF74:
	.string	"socklen_t"
.LASF108:
	.string	"audio_loop_recording"
.LASF120:
	.string	"mqtt_topic"
.LASF62:
	.string	"_codecvt"
.LASF34:
	.string	"mtx_t"
.LASF167:
	.string	"sockfd"
.LASF106:
	.string	"levels_record_period"
.LASF117:
	.string	"calibration_delta"
.LASF6:
	.string	"signed char"
.LASF29:
	.string	"mtx_plain"
.LASF99:
	.string	"data_output_format"
.LASF137:
	.string	"sockcli_table"
.LASF180:
	.string	"server_end"
.LASF25:
	.string	"thrd_busy"
.LASF42:
	.string	"_IO_read_end"
.LASF121:
	.string	"mqtt_qos"
.LASF54:
	.string	"_fileno"
.LASF101:
	.string	"channels"
.LASF8:
	.string	"long int"
.LASF136:
	.string	"server_lae"
.LASF175:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF40:
	.string	"_flags"
.LASF95:
	.string	"input_file"
.LASF14:
	.string	"__ssize_t"
.LASF48:
	.string	"_IO_buf_end"
.LASF57:
	.string	"_cur_column"
.LASF75:
	.string	"SOCK_STREAM"
.LASF71:
	.string	"_IO_codecvt"
.LASF142:
	.string	"thrd_create"
.LASF98:
	.string	"audio_output_format"
.LASF56:
	.string	"_old_offset"
.LASF171:
	.string	"buffer"
.LASF158:
	.string	"fcntl"
.LASF26:
	.string	"thrd_error"
.LASF150:
	.string	"cnd_timedwait"
.LASF89:
	.string	"sun_family"
.LASF132:
	.string	"server_laeq"
.LASF116:
	.string	"calibration_reference"
.LASF114:
	.string	"background_duration"
.LASF66:
	.string	"__pad5"
.LASF84:
	.string	"sa_family_t"
.LASF35:
	.string	"long long int"
.LASF70:
	.string	"_IO_marker"
.LASF78:
	.string	"SOCK_RDM"
.LASF169:
	.string	"sockaddr_local"
.LASF127:
	.string	"config_struct"
.LASF5:
	.string	"unsigned int"
.LASF103:
	.string	"block_size"
.LASF65:
	.string	"_freeres_buf"
.LASF155:
	.string	"strlen"
.LASF2:
	.string	"long unsigned int"
.LASF96:
	.string	"output_path"
.LASF107:
	.string	"run_duration"
.LASF45:
	.string	"_IO_write_ptr"
.LASF128:
	.string	"server_mutex"
.LASF154:
	.string	"bind"
.LASF23:
	.string	"thrd_start_t"
.LASF4:
	.string	"short unsigned int"
.LASF134:
	.string	"server_lafmax"
.LASF162:
	.string	"lafmin"
.LASF153:
	.string	"listen"
.LASF49:
	.string	"_IO_save_base"
.LASF151:
	.string	"timespec_get"
.LASF135:
	.string	"server_lafmin"
.LASF100:
	.string	"sample_rate"
.LASF157:
	.string	"strcpy"
.LASF60:
	.string	"_lock"
.LASF55:
	.string	"_flags2"
.LASF67:
	.string	"_mode"
.LASF130:
	.string	"server_thread"
.LASF88:
	.string	"sockaddr_un"
.LASF63:
	.string	"_wide_data"
.LASF173:
	.string	"sockclifd"
.LASF148:
	.string	"write"
.LASF111:
	.string	"data_loop_recording"
.LASF156:
	.string	"unlink"
.LASF19:
	.string	"tv_nsec"
.LASF61:
	.string	"_offset"
.LASF166:
	.string	"not_used"
.LASF15:
	.string	"__syscall_slong_t"
.LASF183:
	.string	"timespec_add_mili"
.LASF46:
	.string	"_IO_write_end"
.LASF37:
	.string	"uint64_t"
.LASF94:
	.string	"input_device"
.LASF109:
	.string	"audio_file_duration"
.LASF176:
	.string	"_IO_lock_t"
.LASF161:
	.string	"laeq"
.LASF39:
	.string	"_IO_FILE"
.LASF163:
	.string	"lafmax"
.LASF80:
	.string	"SOCK_DCCP"
.LASF22:
	.string	"thrd_t"
.LASF10:
	.string	"__uint64_t"
.LASF125:
	.string	"float"
.LASF86:
	.string	"sa_family"
.LASF140:
	.string	"cnd_signal"
.LASF52:
	.string	"_markers"
.LASF177:
	.string	"__socket_type"
.LASF138:
	.string	"sockcli_table_current"
.LASF122:
	.string	"mqtt_device_credential"
.LASF124:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF152:
	.string	"mtx_lock"
.LASF146:
	.string	"accept"
.LASF93:
	.string	"identification"
.LASF68:
	.string	"_unused2"
.LASF18:
	.string	"tv_sec"
.LASF38:
	.string	"timespec"
.LASF58:
	.string	"_vtable_offset"
.LASF69:
	.string	"FILE"
.LASF159:
	.string	"exit"
.LASF97:
	.string	"output_filename"
.LASF133:
	.string	"server_lapeak"
.LASF81:
	.string	"SOCK_PACKET"
.LASF30:
	.string	"mtx_recursive"
.LASF172:
	.string	"written"
.LASF105:
	.string	"segment_size"
.LASF36:
	.string	"cnd_t"
.LASF91:
	.string	"long double"
.LASF16:
	.string	"char"
.LASF17:
	.string	"__socklen_t"
.LASF92:
	.string	"config"
.LASF85:
	.string	"sockaddr"
.LASF139:
	.string	"running"
.LASF31:
	.string	"mtx_timed"
.LASF112:
	.string	"data_file_duration"
.LASF181:
	.string	"server_init"
.LASF178:
	.string	"__errno_location"
.LASF104:
	.string	"segment_duration"
.LASF12:
	.string	"__off64_t"
.LASF43:
	.string	"_IO_read_base"
.LASF51:
	.string	"_IO_save_end"
.LASF110:
	.string	"audio_record_ok"
.LASF27:
	.string	"thrd_nomem"
.LASF90:
	.string	"sun_path"
.LASF149:
	.string	"snprintf"
.LASF13:
	.string	"__time_t"
.LASF21:
	.string	"__thrd_t"
.LASF123:
	.string	"server_socket"
.LASF126:
	.string	"stderr"
.LASF82:
	.string	"SOCK_CLOEXEC"
.LASF182:
	.string	"server_thread_func"
.LASF76:
	.string	"SOCK_DGRAM"
.LASF170:
	.string	"time_point"
.LASF164:
	.string	"lapeak"
.LASF119:
	.string	"mqtt_broker"
.LASF50:
	.string	"_IO_backup_base"
.LASF168:
	.string	"flags"
.LASF102:
	.string	"bits_per_sample"
.LASF174:
	.string	"milis"
.LASF115:
	.string	"calibration_time"
.LASF113:
	.string	"data_record_ok"
.LASF87:
	.string	"sa_data"
.LASF64:
	.string	"_freeres_list"
.LASF77:
	.string	"SOCK_RAW"
.LASF179:
	.string	"server_send"
.LASF72:
	.string	"_IO_wide_data"
.LASF79:
	.string	"SOCK_SEQPACKET"
.LASF144:
	.string	"mtx_init"
.LASF44:
	.string	"_IO_write_base"
.LASF165:
	.string	"result"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/server.c"
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
