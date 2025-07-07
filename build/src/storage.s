	.file	"storage.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v03" "src/storage.c"
	.data
	.type	reading_dir, @object
	.size	reading_dir, 1
reading_dir:
	.byte	1
	.section	.rodata
.LC0:
	.string	"/"
	.align 8
.LC1:
	.string	"ERROR: Could not read statistics\n"
	.text
	.globl	get_free_disk_space
	.type	get_free_disk_space, @function
get_free_disk_space:
.LFB6:
	.file 1 "src/storage.c"
	.loc 1 13 42
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	.loc 1 13 42
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 15 9
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	statvfs@PLT
	.loc 1 15 8 discriminator 1
	testl	%eax, %eax
	je	.L2
	.loc 1 16 9
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 17 16
	movl	$0, %eax
	jmp	.L4
.L2:
	.loc 1 19 36
	movq	-96(%rbp), %rdx
	.loc 1 19 52
	movq	-128(%rbp), %rax
	.loc 1 19 46
	imulq	%rdx, %rax
.L4:
	.loc 1 20 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	get_free_disk_space, .-get_free_disk_space
	.globl	create_files_storage
	.type	create_files_storage, @function
create_files_storage:
.LFB7:
	.loc 1 22 56
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 23 25
	movl	$40, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 24 8
	cmpq	$0, -8(%rbp)
	jne	.L7
	.loc 1 24 20 discriminator 1
	movl	$0, %eax
	.loc 1 24 20 is_stmt 0
	jmp	.L8
.L7:
	.loc 1 26 19 is_stmt 1
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	.loc 1 26 17 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 27 12
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 27 8
	testq	%rax, %rax
	jne	.L9
	.loc 1 28 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 29 15
	movl	$0, %eax
	jmp	.L8
.L9:
	.loc 1 32 21
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	.loc 1 33 14
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	.loc 1 34 15
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 32(%rax)
	.loc 1 35 16
	movq	-8(%rbp), %rax
	movl	$1, 36(%rax)
	.loc 1 36 18
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 37 21
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 1 39 12
	movq	-8(%rbp), %rax
.L8:
	.loc 1 40 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	create_files_storage, .-create_files_storage
	.section	.rodata
.LC2:
	.string	"./data/sound_events"
.LC3:
	.string	"mkdir failed"
.LC4:
	.string	"rb"
.LC5:
	.string	"fopen original failed"
.LC6:
	.string	"%s/%s"
.LC7:
	.string	"wb"
.LC8:
	.string	"fopen archived failed"
	.text
	.globl	archive_file
	.type	archive_file, @function
archive_file:
.LFB8:
	.loc 1 42 40
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$592, %rsp
	movq	%rdi, -4680(%rbp)
	.loc 1 42 40
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 43 8
	cmpq	$0, -4680(%rbp)
	jne	.L11
	.loc 1 43 27 discriminator 1
	movl	$0, %eax
	.loc 1 43 27 is_stmt 0
	jmp	.L21
.L11:
	.loc 1 45 17 is_stmt 1
	leaq	.LC2(%rip), %rax
	movq	%rax, -4672(%rbp)
	.loc 1 48 16
	movq	-4672(%rbp), %rax
	movq	%rax, %rdi
	call	opendir@PLT
	movq	%rax, -4664(%rbp)
	.loc 1 49 8
	cmpq	$0, -4664(%rbp)
	jne	.L13
	.loc 1 50 13
	movq	-4672(%rbp), %rax
	movl	$493, %esi
	movq	%rax, %rdi
	call	mkdir@PLT
	.loc 1 50 12 discriminator 1
	testl	%eax, %eax
	je	.L14
	.loc 1 51 13
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	.loc 1 52 20
	movl	$0, %eax
	jmp	.L21
.L13:
	.loc 1 55 9
	movq	-4664(%rbp), %rax
	movq	%rax, %rdi
	call	closedir@PLT
.L14:
	.loc 1 59 27
	movq	-4680(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -4656(%rbp)
	.loc 1 60 8
	cmpq	$0, -4656(%rbp)
	jne	.L15
	.loc 1 61 9
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	.loc 1 62 16
	movl	$0, %eax
	jmp	.L21
.L15:
	.loc 1 66 28
	movq	-4680(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -4648(%rbp)
	.loc 1 67 40
	cmpq	$0, -4648(%rbp)
	je	.L16
	.loc 1 67 40 is_stmt 0 discriminator 1
	movq	-4648(%rbp), %rax
	addq	$1, %rax
	jmp	.L17
.L16:
	.loc 1 67 40 discriminator 2
	movq	-4680(%rbp), %rax
.L17:
	.loc 1 67 14 is_stmt 1 discriminator 4
	movq	%rax, -4648(%rbp)
	.loc 1 71 5
	movq	-4648(%rbp), %rcx
	movq	-4672(%rbp), %rdx
	leaq	-4624(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	leaq	.LC6(%rip), %rdx
	movl	$512, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 1 74 27
	leaq	-4624(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -4640(%rbp)
	.loc 1 75 8
	cmpq	$0, -4640(%rbp)
	jne	.L19
	.loc 1 76 9
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	.loc 1 77 9
	movq	-4656(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 78 16
	movl	$0, %eax
	jmp	.L21
.L20:
	.loc 1 85 9
	movq	-4640(%rbp), %rcx
	movq	-4632(%rbp), %rdx
	leaq	-4112(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
.L19:
	.loc 1 84 21
	movq	-4656(%rbp), %rdx
	leaq	-4112(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4096, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, -4632(%rbp)
	.loc 1 84 70 discriminator 1
	cmpq	$0, -4632(%rbp)
	jne	.L20
	.loc 1 88 5
	movq	-4656(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 89 5
	movq	-4640(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 90 12
	movl	$1, %eax
.L21:
	.loc 1 91 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	archive_file, .-archive_file
	.globl	archive_worker
	.type	archive_worker, @function
archive_worker:
.LFB9:
	.loc 1 95 33
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 96 11
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 97 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	archive_file
	.loc 1 98 11
	movl	$0, %eax
	.loc 1 99 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	archive_worker, .-archive_worker
	.globl	archive_file_with_thread
	.type	archive_file_with_thread, @function
archive_file_with_thread:
.LFB10:
	.loc 1 102 52
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 1 102 52
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 104 23
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, -16(%rbp)
	.loc 1 105 8
	cmpq	$0, -16(%rbp)
	jne	.L26
	.loc 1 105 28 discriminator 1
	movl	$0, %eax
	.loc 1 105 28 is_stmt 0
	jmp	.L29
.L26:
	.loc 1 107 9 is_stmt 1
	movq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rcx
	leaq	archive_worker(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create@PLT
	.loc 1 107 8 discriminator 1
	testl	%eax, %eax
	je	.L28
	.loc 1 108 9
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 109 16
	movl	$0, %eax
	jmp	.L29
.L28:
	.loc 1 111 2
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 112 5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_detach@PLT
	.loc 1 113 12
	movl	$1, %eax
.L29:
	.loc 1 114 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	archive_file_with_thread, .-archive_file_with_thread
	.globl	add_file
	.type	add_file, @function
add_file:
.LFB11:
	.loc 1 118 49
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	.loc 1 118 49
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 119 8
	cmpq	$0, -88(%rbp)
	je	.L32
	.loc 1 119 13 discriminator 2
	cmpq	$0, -96(%rbp)
	jne	.L33
.L32:
	.loc 1 119 34 discriminator 3
	movl	$0, %eax
	.loc 1 119 34 is_stmt 0
	jmp	.L34
.L33:
	.loc 1 122 11 is_stmt 1
	movq	-88(%rbp), %rax
	movl	28(%rax), %edx
	.loc 1 122 22
	movq	-88(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 122 8
	cmpl	%eax, %edx
	jge	.L35
	.loc 1 123 11
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 123 23
	movq	-88(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	.loc 1 123 20
	salq	$3, %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 123 33
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	.loc 1 123 31 discriminator 1
	movq	%rax, (%rbx)
	.loc 1 124 16
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 124 28
	movq	-88(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	.loc 1 124 25
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 1 124 12
	testq	%rax, %rax
	jne	.L36
	.loc 1 124 44 discriminator 1
	movl	$0, %eax
	.loc 1 124 44 is_stmt 0
	jmp	.L34
.L36:
	.loc 1 125 11 is_stmt 1
	movq	-88(%rbp), %rax
	movl	28(%rax), %eax
	.loc 1 125 17
	leal	1(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 28(%rax)
	jmp	.L37
.L35:
	.loc 1 128 15
	movq	-88(%rbp), %rax
	movl	36(%rax), %eax
	.loc 1 128 12
	testl	%eax, %eax
	je	.L38
	.loc 1 128 29 discriminator 1
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 128 41 discriminator 1
	movq	-88(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 1 128 38 discriminator 1
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 1 128 24 discriminator 1
	testq	%rax, %rax
	je	.L38
	.loc 1 129 22
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 129 34
	movq	-88(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 1 129 31
	salq	$3, %rax
	addq	%rdx, %rax
	.loc 1 129 13
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	remove@PLT
	.loc 1 132 19
	movq	-88(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 132 16
	testl	%eax, %eax
	jne	.L50
	.loc 1 132 41 discriminator 1
	movzbl	reading_dir(%rip), %eax
	xorl	$1, %eax
	.loc 1 132 38 discriminator 1
	testb	%al, %al
	je	.L50
	.loc 1 132 59 discriminator 2
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 132 54 discriminator 2
	testq	%rax, %rax
	je	.L50
	.loc 1 132 75 discriminator 3
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 132 70 discriminator 3
	testq	%rax, %rax
	je	.L50
.LBB2:
	.loc 1 132 90 discriminator 4
	movq	%rsp, %rax
	movq	%rax, %rbx
	.loc 1 134 23
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 134 14
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 134 14 is_stmt 0 discriminator 1
	movq	%rax, %rdx
	.loc 1 134 10 is_stmt 1 discriminator 1
	subq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L40:
	cmpq	%rdx, %rsp
	je	.L41
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L40
.L41:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L42
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L42:
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	.loc 1 134 50 discriminator 2
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 134 37 discriminator 2
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 1 135 31
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 135 22
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 135 22 is_stmt 0 discriminator 1
	movq	%rax, %rdx
	.loc 1 135 10 is_stmt 1 discriminator 1
	subq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L43:
	cmpq	%rdx, %rsp
	je	.L44
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L43
.L44:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L45
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L45:
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	.loc 1 135 69 discriminator 2
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 135 48 discriminator 2
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 1 136 22
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	load_files_from_directory
	.loc 1 136 20 discriminator 1
	testl	%eax, %eax
	jne	.L46
	.loc 1 137 28
	movl	$0, %eax
	.loc 1 137 28 is_stmt 0 discriminator 1
	movq	%rbx, %rsp
	jmp	.L34
.L46:
	movq	%rbx, %rsp
.LBE2:
	.loc 1 132 16 is_stmt 1
	jmp	.L50
.L38:
.LBB3:
	.loc 1 141 31
	movq	-88(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 141 17
	addl	%eax, %eax
	movl	%eax, -68(%rbp)
	.loc 1 142 34
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 1 142 44
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 142 34
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -32(%rbp)
	.loc 1 143 16
	cmpq	$0, -32(%rbp)
	jne	.L48
	.loc 1 143 38 discriminator 1
	movl	$0, %eax
	.loc 1 143 38 is_stmt 0
	jmp	.L34
.L48:
	.loc 1 144 25 is_stmt 1
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 145 23
	movq	-88(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, 32(%rax)
	jmp	.L47
.L50:
.LBE3:
	.loc 1 132 16
	nop
.L47:
	.loc 1 148 18
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 148 30
	movq	-88(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 1 148 27
	salq	$3, %rax
	addq	%rdx, %rax
	.loc 1 148 9
	movq	(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 1 149 16
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 149 28
	movq	-88(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 1 149 25
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 1 149 12
	testq	%rax, %rax
	jne	.L37
	.loc 1 149 51 discriminator 1
	movl	$0, %eax
	.loc 1 149 51 is_stmt 0
	jmp	.L34
.L37:
	.loc 1 151 26 is_stmt 1
	movq	-88(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 151 40
	leal	1(%rax), %ecx
	.loc 1 151 49
	movq	-88(%rbp), %rax
	movl	32(%rax), %ebx
	.loc 1 151 45
	movl	%ecx, %eax
	cltd
	idivl	%ebx
	movl	%edx, %ecx
	movl	%ecx, %edx
	.loc 1 151 21
	movq	-88(%rbp), %rax
	movl	%edx, 24(%rax)
	.loc 1 152 12
	movl	$1, %eax
.L34:
	.loc 1 153 1
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L49
	call	__stack_chk_fail@PLT
.L49:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	add_file, .-add_file
	.globl	compare_strings
	.type	compare_strings, @function
compare_strings:
.LFB12:
	.loc 1 155 51
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 156 17
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 157 17
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 158 12
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 159 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	compare_strings, .-compare_strings
	.section	.rodata
.LC9:
	.string	""
.LC10:
	.string	"."
.LC11:
	.string	".."
	.text
	.globl	load_files_from_directory
	.type	load_files_from_directory, @function
load_files_from_directory:
.LFB13:
	.loc 1 161 91
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	.loc 1 161 91
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 162 8
	cmpq	$0, -88(%rbp)
	je	.L54
	.loc 1 162 13 discriminator 2
	cmpq	$0, -96(%rbp)
	jne	.L55
.L54:
	.loc 1 162 34 discriminator 3
	movl	$0, %eax
	.loc 1 162 34 is_stmt 0
	jmp	.L56
.L55:
	.loc 1 163 8 is_stmt 1
	cmpq	$0, -104(%rbp)
	jne	.L57
	.loc 1 163 35 discriminator 1
	leaq	.LC9(%rip), %rax
	movq	%rax, -104(%rbp)
.L57:
	.loc 1 165 11
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 165 8
	testq	%rax, %rax
	je	.L58
	.loc 1 165 37 discriminator 1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 165 30 discriminator 1
	movq	%rax, %rdi
	call	free@PLT
.L58:
	.loc 1 166 11
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 166 8
	testq	%rax, %rax
	je	.L59
	.loc 1 166 40 discriminator 1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 166 33 discriminator 1
	movq	%rax, %rdi
	call	free@PLT
.L59:
	.loc 1 168 20
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, %rdx
	.loc 1 168 18 discriminator 1
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 169 23
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, %rdx
	.loc 1 169 21 discriminator 1
	movq	-88(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 170 12
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 170 8
	testq	%rax, %rax
	je	.L60
	.loc 1 170 29 discriminator 2
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 170 23 discriminator 2
	testq	%rax, %rax
	jne	.L61
.L60:
	.loc 1 170 51 discriminator 3
	movl	$0, %eax
	.loc 1 170 51 is_stmt 0
	jmp	.L56
.L61:
	.loc 1 172 16 is_stmt 1
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	opendir@PLT
	movq	%rax, -72(%rbp)
	.loc 1 173 8
	cmpq	$0, -72(%rbp)
	jne	.L62
	.loc 1 173 22 discriminator 1
	movl	$0, %eax
	.loc 1 173 22 is_stmt 0
	jmp	.L56
.L62:
	.loc 1 176 25 is_stmt 1
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -64(%rbp)
	.loc 1 178 17
	movb	$1, reading_dir(%rip)
	.loc 1 179 11
	jmp	.L63
.L71:
.LBB4:
	.loc 1 180 25
	movq	-56(%rbp), %rax
	addq	$19, %rax
	.loc 1 180 13
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 180 12 discriminator 1
	testl	%eax, %eax
	je	.L73
	.loc 1 180 60 discriminator 2
	movq	-56(%rbp), %rax
	addq	$19, %rax
	.loc 1 180 48 discriminator 2
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 180 45 discriminator 1
	testl	%eax, %eax
	je	.L73
	.loc 1 183 39
	movq	-56(%rbp), %rax
	addq	$19, %rax
	.loc 1 183 27
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -48(%rbp)
	.loc 1 185 12
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L63
	.loc 1 186 20
	movq	-56(%rbp), %rax
	leaq	19(%rax), %rdx
	.loc 1 186 45
	movq	-48(%rbp), %rax
	subq	-64(%rbp), %rax
	.loc 1 186 13
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	.loc 1 185 36 discriminator 1
	testl	%eax, %eax
	jne	.L63
.LBB5:
	.loc 1 186 78
	movq	%rsp, %rax
	movq	%rax, %r12
	.loc 1 188 27
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 188 18
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 1 188 53 discriminator 1
	movq	-56(%rbp), %rax
	addq	$19, %rax
	.loc 1 188 41 discriminator 1
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 188 39 discriminator 2
	addq	%rbx, %rax
	.loc 1 188 63 discriminator 2
	addq	$2, %rax
	movq	%rax, %rdx
	.loc 1 188 9 discriminator 2
	subq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L67:
	cmpq	%rdx, %rsp
	je	.L68
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L67
.L68:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L69
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L69:
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	.loc 1 189 50
	movq	-56(%rbp), %rax
	leaq	19(%rax), %rcx
	.loc 1 189 4
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 1 191 17
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_file
	.loc 1 191 16 discriminator 1
	cmpl	$1, %eax
	je	.L70
	.loc 1 192 17
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	closedir@PLT
	.loc 1 193 24
	movl	$0, %eax
	.loc 1 193 24 is_stmt 0 discriminator 1
	movq	%r12, %rsp
	jmp	.L56
.L70:
	movq	%r12, %rsp
	jmp	.L63
.L73:
.LBE5:
	.loc 1 181 13 is_stmt 1
	nop
.L63:
.LBE4:
	.loc 1 179 21
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -56(%rbp)
	.loc 1 179 35 discriminator 1
	cmpq	$0, -56(%rbp)
	jne	.L71
	.loc 1 197 25
	movq	-88(%rbp), %rax
	movl	28(%rax), %eax
	.loc 1 197 5
	movslq	%eax, %rsi
	.loc 1 197 13
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 197 5
	leaq	compare_strings(%rip), %rdx
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	.loc 1 198 17
	movb	$0, reading_dir(%rip)
	.loc 1 200 5
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	closedir@PLT
	.loc 1 201 12
	movl	$1, %eax
.L56:
	.loc 1 202 1
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L72
	call	__stack_chk_fail@PLT
.L72:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	load_files_from_directory, .-load_files_from_directory
	.globl	delete_files_storage
	.type	delete_files_storage, @function
delete_files_storage:
.LFB14:
	.loc 1 204 46
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 205 8
	cmpq	$0, -24(%rbp)
	je	.L82
.LBB6:
	.loc 1 207 14
	movl	$0, -4(%rbp)
	.loc 1 207 5
	jmp	.L77
.L79:
	.loc 1 208 15
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 208 24
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 1 208 12
	testq	%rax, %rax
	je	.L78
	.loc 1 209 20
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 209 29
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 1 209 13
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L78:
	.loc 1 207 36 discriminator 2
	addl	$1, -4(%rbp)
.L77:
	.loc 1 207 27 discriminator 1
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 207 23 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L79
.LBE6:
	.loc 1 213 12
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 213 5
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 214 11
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 214 8
	testq	%rax, %rax
	je	.L80
	.loc 1 214 30 discriminator 1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 214 23 discriminator 1
	movq	%rax, %rdi
	call	free@PLT
.L80:
	.loc 1 215 11
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 215 8
	testq	%rax, %rax
	je	.L81
	.loc 1 215 33 discriminator 1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 215 26 discriminator 1
	movq	%rax, %rdi
	call	free@PLT
.L81:
	.loc 1 216 5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L74
.L82:
	.loc 1 205 14
	nop
.L74:
	.loc 1 217 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	delete_files_storage, .-delete_files_storage
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 7 "/usr/include/stdlib.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/dirent.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/statvfs.h"
	.file 10 "src/storage.h"
	.file 11 "/usr/include/dirent.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "/usr/include/string.h"
	.file 14 "/usr/include/pthread.h"
	.file 15 "/usr/include/x86_64-linux-gnu/sys/stat.h"
	.file 16 "/usr/include/x86_64-linux-gnu/sys/statvfs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xbe3
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1a
	.long	.LASF139
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
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1b
	.byte	0x8
	.uleb128 0xa
	.long	0x48
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x6
	.byte	0x2
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
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x94
	.byte	0x1b
	.long	0x3a
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0x96
	.byte	0x16
	.long	0x41
	.uleb128 0x5
	.long	.LASF12
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x72
	.uleb128 0x5
	.long	.LASF13
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x72
	.uleb128 0x5
	.long	.LASF14
	.byte	0x3
	.byte	0xb8
	.byte	0x1b
	.long	0x3a
	.uleb128 0x5
	.long	.LASF15
	.byte	0x3
	.byte	0xbc
	.byte	0x1b
	.long	0x3a
	.uleb128 0x4
	.long	0xc6
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x14
	.long	0xc6
	.uleb128 0x15
	.long	.LASF57
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.long	0x258
	.uleb128 0x1
	.long	.LASF17
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x6b
	.byte	0
	.uleb128 0x1
	.long	.LASF18
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xc1
	.byte	0x8
	.uleb128 0x1
	.long	.LASF19
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xc1
	.byte	0x10
	.uleb128 0x1
	.long	.LASF20
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xc1
	.byte	0x18
	.uleb128 0x1
	.long	.LASF21
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xc1
	.byte	0x20
	.uleb128 0x1
	.long	.LASF22
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xc1
	.byte	0x28
	.uleb128 0x1
	.long	.LASF23
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xc1
	.byte	0x30
	.uleb128 0x1
	.long	.LASF24
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xc1
	.byte	0x38
	.uleb128 0x1
	.long	.LASF25
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xc1
	.byte	0x40
	.uleb128 0x1
	.long	.LASF26
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xc1
	.byte	0x48
	.uleb128 0x1
	.long	.LASF27
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xc1
	.byte	0x50
	.uleb128 0x1
	.long	.LASF28
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xc1
	.byte	0x58
	.uleb128 0x1
	.long	.LASF29
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x271
	.byte	0x60
	.uleb128 0x1
	.long	.LASF30
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x276
	.byte	0x68
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x6b
	.byte	0x70
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x6b
	.byte	0x74
	.uleb128 0x1
	.long	.LASF33
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x91
	.byte	0x78
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x56
	.byte	0x80
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x5d
	.byte	0x82
	.uleb128 0x1
	.long	.LASF36
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x27b
	.byte	0x83
	.uleb128 0x1
	.long	.LASF37
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x28b
	.byte	0x88
	.uleb128 0x1
	.long	.LASF38
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x9d
	.byte	0x90
	.uleb128 0x1
	.long	.LASF39
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x295
	.byte	0x98
	.uleb128 0x1
	.long	.LASF40
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x29f
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF41
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x276
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF42
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x48
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF43
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF44
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x6b
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF45
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x2a4
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF46
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xd2
	.uleb128 0x1d
	.long	.LASF140
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x10
	.long	.LASF47
	.uleb128 0x4
	.long	0x26c
	.uleb128 0x4
	.long	0xd2
	.uleb128 0x8
	.long	0xc6
	.long	0x28b
	.uleb128 0xe
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x264
	.uleb128 0x10
	.long	.LASF48
	.uleb128 0x4
	.long	0x290
	.uleb128 0x10
	.long	.LASF49
	.uleb128 0x4
	.long	0x29a
	.uleb128 0x8
	.long	0xc6
	.long	0x2b4
	.uleb128 0xe
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0xcd
	.uleb128 0xa
	.long	0x2b4
	.uleb128 0x4
	.long	0x258
	.uleb128 0xa
	.long	0x2be
	.uleb128 0x1e
	.long	.LASF141
	.byte	0xc
	.byte	0x97
	.byte	0xe
	.long	0x2be
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF50
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF51
	.uleb128 0x5
	.long	.LASF52
	.byte	0x6
	.byte	0x1b
	.byte	0x1b
	.long	0x3a
	.uleb128 0x1f
	.long	.LASF55
	.byte	0x38
	.byte	0x6
	.byte	0x38
	.byte	0x7
	.long	0x312
	.uleb128 0x16
	.long	.LASF53
	.byte	0x3a
	.byte	0x8
	.long	0x312
	.uleb128 0x16
	.long	.LASF54
	.byte	0x3b
	.byte	0xc
	.long	0x72
	.byte	0
	.uleb128 0x8
	.long	0xc6
	.long	0x322
	.uleb128 0xe
	.long	0x3a
	.byte	0x37
	.byte	0
	.uleb128 0x5
	.long	.LASF55
	.byte	0x6
	.byte	0x3e
	.byte	0x1e
	.long	0x2ee
	.uleb128 0x14
	.long	0x322
	.uleb128 0x20
	.long	.LASF56
	.byte	0x7
	.value	0x3b4
	.byte	0xf
	.long	0x340
	.uleb128 0x4
	.long	0x345
	.uleb128 0x17
	.long	0x6b
	.long	0x359
	.uleb128 0x2
	.long	0x359
	.uleb128 0x2
	.long	0x359
	.byte	0
	.uleb128 0x4
	.long	0x363
	.uleb128 0xa
	.long	0x359
	.uleb128 0x21
	.uleb128 0x22
	.long	.LASF58
	.value	0x118
	.byte	0x8
	.byte	0x16
	.byte	0x8
	.long	0x3b4
	.uleb128 0x1
	.long	.LASF59
	.byte	0x8
	.byte	0x19
	.byte	0xd
	.long	0x79
	.byte	0
	.uleb128 0x1
	.long	.LASF60
	.byte	0x8
	.byte	0x1a
	.byte	0xd
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF61
	.byte	0x8
	.byte	0x1f
	.byte	0x18
	.long	0x56
	.byte	0x10
	.uleb128 0x1
	.long	.LASF62
	.byte	0x8
	.byte	0x20
	.byte	0x13
	.long	0x4f
	.byte	0x12
	.uleb128 0x1
	.long	.LASF63
	.byte	0x8
	.byte	0x21
	.byte	0xa
	.long	0x3b4
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.long	0xc6
	.long	0x3c4
	.uleb128 0xe
	.long	0x3a
	.byte	0xff
	.byte	0
	.uleb128 0x23
	.string	"DIR"
	.byte	0xb
	.byte	0x7f
	.byte	0x1c
	.long	0x3d0
	.uleb128 0x10
	.long	.LASF64
	.uleb128 0x15
	.long	.LASF65
	.byte	0x70
	.byte	0x9
	.byte	0x1d
	.long	0x48b
	.uleb128 0x1
	.long	.LASF66
	.byte	0x9
	.byte	0x1f
	.byte	0x17
	.long	0x3a
	.byte	0
	.uleb128 0x1
	.long	.LASF67
	.byte	0x9
	.byte	0x20
	.byte	0x17
	.long	0x3a
	.byte	0x8
	.uleb128 0x1
	.long	.LASF68
	.byte	0x9
	.byte	0x22
	.byte	0x12
	.long	0xa9
	.byte	0x10
	.uleb128 0x1
	.long	.LASF69
	.byte	0x9
	.byte	0x23
	.byte	0x12
	.long	0xa9
	.byte	0x18
	.uleb128 0x1
	.long	.LASF70
	.byte	0x9
	.byte	0x24
	.byte	0x12
	.long	0xa9
	.byte	0x20
	.uleb128 0x1
	.long	.LASF71
	.byte	0x9
	.byte	0x25
	.byte	0x12
	.long	0xb5
	.byte	0x28
	.uleb128 0x1
	.long	.LASF72
	.byte	0x9
	.byte	0x26
	.byte	0x12
	.long	0xb5
	.byte	0x30
	.uleb128 0x1
	.long	.LASF73
	.byte	0x9
	.byte	0x27
	.byte	0x12
	.long	0xb5
	.byte	0x38
	.uleb128 0x1
	.long	.LASF74
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.long	0x3a
	.byte	0x40
	.uleb128 0x1
	.long	.LASF75
	.byte	0x9
	.byte	0x34
	.byte	0x17
	.long	0x3a
	.byte	0x48
	.uleb128 0x1
	.long	.LASF76
	.byte	0x9
	.byte	0x35
	.byte	0x17
	.long	0x3a
	.byte	0x50
	.uleb128 0x1
	.long	.LASF77
	.byte	0x9
	.byte	0x36
	.byte	0x12
	.long	0x41
	.byte	0x58
	.uleb128 0x1
	.long	.LASF78
	.byte	0x9
	.byte	0x37
	.byte	0x9
	.long	0x48b
	.byte	0x5c
	.byte	0
	.uleb128 0x8
	.long	0x6b
	.long	0x49b
	.uleb128 0xe
	.long	0x3a
	.byte	0x4
	.byte	0
	.uleb128 0x24
	.byte	0x28
	.byte	0xa
	.byte	0x5
	.byte	0x9
	.long	0x500
	.uleb128 0x1
	.long	.LASF79
	.byte	0xa
	.byte	0x6
	.byte	0x9
	.long	0x500
	.byte	0
	.uleb128 0x1
	.long	.LASF80
	.byte	0xa
	.byte	0x7
	.byte	0x8
	.long	0xc1
	.byte	0x8
	.uleb128 0x1
	.long	.LASF81
	.byte	0xa
	.byte	0x8
	.byte	0x8
	.long	0xc1
	.byte	0x10
	.uleb128 0x1
	.long	.LASF82
	.byte	0xa
	.byte	0x9
	.byte	0x6
	.long	0x6b
	.byte	0x18
	.uleb128 0x1
	.long	.LASF83
	.byte	0xa
	.byte	0xa
	.byte	0x6
	.long	0x6b
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF84
	.byte	0xa
	.byte	0xb
	.byte	0x6
	.long	0x6b
	.byte	0x20
	.uleb128 0x1
	.long	.LASF85
	.byte	0xa
	.byte	0xc
	.byte	0x6
	.long	0x6b
	.byte	0x24
	.byte	0
	.uleb128 0x4
	.long	0xc1
	.uleb128 0x5
	.long	.LASF86
	.byte	0xa
	.byte	0xd
	.byte	0x2
	.long	0x49b
	.uleb128 0x3
	.long	.LASF111
	.byte	0xb
	.byte	0xc
	.long	0x526
	.uleb128 0x9
	.byte	0x3
	.quad	reading_dir
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.long	.LASF87
	.uleb128 0x12
	.long	.LASF105
	.byte	0x7
	.value	0x3ca
	.long	0x54e
	.uleb128 0x2
	.long	0x48
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x333
	.byte	0
	.uleb128 0x9
	.long	.LASF88
	.byte	0xb
	.byte	0xa4
	.byte	0x17
	.long	0x564
	.long	0x564
	.uleb128 0x2
	.long	0x569
	.byte	0
	.uleb128 0x4
	.long	0x364
	.uleb128 0x4
	.long	0x3c4
	.uleb128 0x7
	.long	.LASF89
	.byte	0xc
	.value	0x16d
	.byte	0xc
	.long	0x6b
	.long	0x58b
	.uleb128 0x2
	.long	0xc1
	.uleb128 0x2
	.long	0x2b4
	.uleb128 0x18
	.byte	0
	.uleb128 0x9
	.long	.LASF90
	.byte	0xd
	.byte	0x9c
	.byte	0xc
	.long	0x6b
	.long	0x5a6
	.uleb128 0x2
	.long	0x2b4
	.uleb128 0x2
	.long	0x2b4
	.byte	0
	.uleb128 0x7
	.long	.LASF91
	.byte	0x7
	.value	0x2ab
	.byte	0xe
	.long	0x48
	.long	0x5c2
	.uleb128 0x2
	.long	0x48
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x9
	.long	.LASF92
	.byte	0xd
	.byte	0x8d
	.byte	0xe
	.long	0xc1
	.long	0x5dd
	.uleb128 0x2
	.long	0xc1
	.uleb128 0x2
	.long	0x2b4
	.byte	0
	.uleb128 0x7
	.long	.LASF93
	.byte	0xd
	.value	0x197
	.byte	0xf
	.long	0x2e
	.long	0x5f4
	.uleb128 0x2
	.long	0x2b4
	.byte	0
	.uleb128 0x9
	.long	.LASF94
	.byte	0xc
	.byte	0x9e
	.byte	0xc
	.long	0x6b
	.long	0x60a
	.uleb128 0x2
	.long	0x2b4
	.byte	0
	.uleb128 0x7
	.long	.LASF95
	.byte	0xe
	.value	0x10d
	.byte	0xc
	.long	0x6b
	.long	0x621
	.uleb128 0x2
	.long	0x2e2
	.byte	0
	.uleb128 0x9
	.long	.LASF96
	.byte	0xe
	.byte	0xca
	.byte	0xc
	.long	0x6b
	.long	0x646
	.uleb128 0x2
	.long	0x64b
	.uleb128 0x2
	.long	0x655
	.uleb128 0x2
	.long	0x65a
	.uleb128 0x2
	.long	0x4a
	.byte	0
	.uleb128 0x4
	.long	0x2e2
	.uleb128 0xa
	.long	0x646
	.uleb128 0x4
	.long	0x32e
	.uleb128 0xa
	.long	0x650
	.uleb128 0x4
	.long	0x65f
	.uleb128 0x17
	.long	0x48
	.long	0x66e
	.uleb128 0x2
	.long	0x48
	.byte	0
	.uleb128 0x9
	.long	.LASF97
	.byte	0xd
	.byte	0xbb
	.byte	0xe
	.long	0xc1
	.long	0x684
	.uleb128 0x2
	.long	0x2b4
	.byte	0
	.uleb128 0x7
	.long	.LASF98
	.byte	0xc
	.value	0x2e2
	.byte	0xf
	.long	0x2e
	.long	0x6aa
	.uleb128 0x2
	.long	0x4a
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x2c3
	.byte	0
	.uleb128 0x7
	.long	.LASF99
	.byte	0xc
	.value	0x2e9
	.byte	0xf
	.long	0x2e
	.long	0x6d0
	.uleb128 0x2
	.long	0x35e
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x2c3
	.byte	0
	.uleb128 0x9
	.long	.LASF100
	.byte	0xc
	.byte	0xb8
	.byte	0xc
	.long	0x6b
	.long	0x6e6
	.uleb128 0x2
	.long	0x2be
	.byte	0
	.uleb128 0x7
	.long	.LASF101
	.byte	0xc
	.value	0x181
	.byte	0xc
	.long	0x6b
	.long	0x708
	.uleb128 0x2
	.long	0xc1
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x2b4
	.uleb128 0x18
	.byte	0
	.uleb128 0x7
	.long	.LASF102
	.byte	0xd
	.value	0x111
	.byte	0xe
	.long	0xc1
	.long	0x724
	.uleb128 0x2
	.long	0x2b4
	.uleb128 0x2
	.long	0x6b
	.byte	0
	.uleb128 0x7
	.long	.LASF103
	.byte	0xc
	.value	0x108
	.byte	0xe
	.long	0x2be
	.long	0x740
	.uleb128 0x2
	.long	0x2b9
	.uleb128 0x2
	.long	0x2b9
	.byte	0
	.uleb128 0x9
	.long	.LASF104
	.byte	0xb
	.byte	0x86
	.byte	0xc
	.long	0x6b
	.long	0x756
	.uleb128 0x2
	.long	0x569
	.byte	0
	.uleb128 0x12
	.long	.LASF106
	.byte	0xc
	.value	0x36e
	.long	0x768
	.uleb128 0x2
	.long	0x2b4
	.byte	0
	.uleb128 0x7
	.long	.LASF107
	.byte	0xf
	.value	0x185
	.byte	0xc
	.long	0x6b
	.long	0x784
	.uleb128 0x2
	.long	0x2b4
	.uleb128 0x2
	.long	0x85
	.byte	0
	.uleb128 0x9
	.long	.LASF108
	.byte	0xb
	.byte	0x8d
	.byte	0xd
	.long	0x569
	.long	0x79a
	.uleb128 0x2
	.long	0x2b4
	.byte	0
	.uleb128 0x12
	.long	.LASF109
	.byte	0x7
	.value	0x2af
	.long	0x7ac
	.uleb128 0x2
	.long	0x48
	.byte	0
	.uleb128 0x7
	.long	.LASF110
	.byte	0x7
	.value	0x2a0
	.byte	0xe
	.long	0x48
	.long	0x7c3
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x9
	.long	.LASF65
	.byte	0x10
	.byte	0x33
	.byte	0xc
	.long	0x6b
	.long	0x7de
	.uleb128 0x2
	.long	0x2b9
	.uleb128 0x2
	.long	0x7e3
	.byte	0
	.uleb128 0x4
	.long	0x3d5
	.uleb128 0xa
	.long	0x7de
	.uleb128 0x25
	.long	.LASF142
	.byte	0x1
	.byte	0xcc
	.byte	0x6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x832
	.uleb128 0xc
	.string	"fs"
	.byte	0xcc
	.byte	0x2a
	.long	0x832
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0xf
	.string	"i"
	.byte	0xcf
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x505
	.uleb128 0xb
	.long	.LASF116
	.byte	0xa1
	.byte	0x5
	.long	0x6b
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f3
	.uleb128 0xc
	.string	"fs"
	.byte	0xa1
	.byte	0x2e
	.long	0x832
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xd
	.long	.LASF80
	.byte	0xa1
	.byte	0x3e
	.long	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.long	.LASF81
	.byte	0xa1
	.byte	0x4e
	.long	0xc1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xf
	.string	"dir"
	.byte	0xac
	.byte	0xa
	.long	0x569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.long	.LASF112
	.byte	0xaf
	.byte	0x14
	.long	0x564
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.long	.LASF113
	.byte	0xb0
	.byte	0xc
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x3
	.long	.LASF114
	.byte	0xb7
	.byte	0x10
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x3
	.long	.LASF115
	.byte	0xbc
	.byte	0x9
	.long	0x8f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xc6
	.long	0x906
	.uleb128 0x13
	.long	0x3a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	.LASF117
	.byte	0x9b
	.byte	0x5
	.long	0x6b
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x95c
	.uleb128 0xc
	.string	"a"
	.byte	0x9b
	.byte	0x21
	.long	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"b"
	.byte	0x9b
	.byte	0x30
	.long	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF118
	.byte	0x9c
	.byte	0x11
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.long	.LASF119
	.byte	0x9d
	.byte	0x11
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	.LASF120
	.byte	0x76
	.byte	0x5
	.long	0x6b
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ff
	.uleb128 0xc
	.string	"fs"
	.byte	0x76
	.byte	0x1d
	.long	0x832
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xd
	.long	.LASF121
	.byte	0x76
	.byte	0x27
	.long	0xc1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x9cf
	.uleb128 0xf
	.string	"dir"
	.byte	0x86
	.byte	0xa
	.long	0x9ff
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x3
	.long	.LASF81
	.byte	0x87
	.byte	0xa
	.long	0xa13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x3
	.long	.LASF122
	.byte	0x8d
	.byte	0x11
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.long	.LASF123
	.byte	0x8e
	.byte	0x14
	.long	0x500
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xc6
	.long	0xa13
	.uleb128 0x13
	.long	0x3a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xc6
	.long	0xa26
	.uleb128 0x13
	.long	0x3a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	.LASF124
	.byte	0x66
	.byte	0x5
	.long	0x6b
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xa72
	.uleb128 0xd
	.long	.LASF121
	.byte	0x66
	.byte	0x2a
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF125
	.byte	0x67
	.byte	0xf
	.long	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF126
	.byte	0x68
	.byte	0xb
	.long	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.long	.LASF127
	.byte	0x5f
	.byte	0x7
	.long	0x48
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xab0
	.uleb128 0xc
	.string	"arg"
	.byte	0x5f
	.byte	0x1c
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF121
	.byte	0x60
	.byte	0xb
	.long	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	.LASF128
	.byte	0x2a
	.byte	0x5
	.long	0x6b
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xb59
	.uleb128 0xd
	.long	.LASF121
	.byte	0x2a
	.byte	0x1e
	.long	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4696
	.uleb128 0x3
	.long	.LASF129
	.byte	0x2d
	.byte	0x11
	.long	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4688
	.uleb128 0xf
	.string	"dir"
	.byte	0x30
	.byte	0xa
	.long	0x569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4680
	.uleb128 0x3
	.long	.LASF130
	.byte	0x3b
	.byte	0xb
	.long	0x2be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4672
	.uleb128 0x3
	.long	.LASF131
	.byte	0x42
	.byte	0x11
	.long	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4664
	.uleb128 0x3
	.long	.LASF132
	.byte	0x46
	.byte	0xa
	.long	0xb59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4640
	.uleb128 0x3
	.long	.LASF133
	.byte	0x4a
	.byte	0xb
	.long	0x2be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4656
	.uleb128 0x3
	.long	.LASF134
	.byte	0x52
	.byte	0xa
	.long	0xb6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x3
	.long	.LASF135
	.byte	0x53
	.byte	0xc
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4648
	.byte	0
	.uleb128 0x8
	.long	0xc6
	.long	0xb6a
	.uleb128 0x19
	.long	0x3a
	.value	0x1ff
	.byte	0
	.uleb128 0x8
	.long	0xc6
	.long	0xb7b
	.uleb128 0x19
	.long	0x3a
	.value	0xfff
	.byte	0
	.uleb128 0xb
	.long	.LASF136
	.byte	0x16
	.byte	0x10
	.long	0x832
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xbb8
	.uleb128 0xd
	.long	.LASF137
	.byte	0x16
	.byte	0x29
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"fs"
	.byte	0x17
	.byte	0x14
	.long	0x832
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF143
	.byte	0x1
	.byte	0xd
	.byte	0x14
	.long	0x2db
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.long	.LASF138
	.byte	0xe
	.byte	0x14
	.long	0x3d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1f
	.uleb128 0x17
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
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x23
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
.LASF80:
	.string	"dir_path"
.LASF52:
	.string	"pthread_t"
.LASF36:
	.string	"_shortbuf"
.LASF102:
	.string	"strrchr"
.LASF140:
	.string	"_IO_lock_t"
.LASF136:
	.string	"create_files_storage"
.LASF93:
	.string	"strlen"
.LASF141:
	.string	"stderr"
.LASF121:
	.string	"filepath"
.LASF25:
	.string	"_IO_buf_end"
.LASF134:
	.string	"buffer"
.LASF23:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF41:
	.string	"_freeres_list"
.LASF17:
	.string	"_flags"
.LASF108:
	.string	"opendir"
.LASF29:
	.string	"_markers"
.LASF96:
	.string	"pthread_create"
.LASF72:
	.string	"f_ffree"
.LASF85:
	.string	"update"
.LASF82:
	.string	"current_idx"
.LASF63:
	.string	"d_name"
.LASF113:
	.string	"format_len"
.LASF95:
	.string	"pthread_detach"
.LASF10:
	.string	"__ino_t"
.LASF123:
	.string	"new_storage"
.LASF139:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF133:
	.string	"archived_file"
.LASF92:
	.string	"strcpy"
.LASF79:
	.string	"storage"
.LASF14:
	.string	"__fsblkcnt_t"
.LASF28:
	.string	"_IO_save_end"
.LASF81:
	.string	"file_format"
.LASF48:
	.string	"_IO_codecvt"
.LASF110:
	.string	"malloc"
.LASF124:
	.string	"archive_file_with_thread"
.LASF51:
	.string	"long long unsigned int"
.LASF61:
	.string	"d_reclen"
.LASF115:
	.string	"fullpath"
.LASF27:
	.string	"_IO_backup_base"
.LASF38:
	.string	"_offset"
.LASF129:
	.string	"dirname"
.LASF55:
	.string	"pthread_attr_t"
.LASF75:
	.string	"f_flag"
.LASF31:
	.string	"_fileno"
.LASF138:
	.string	"stat"
.LASF94:
	.string	"remove"
.LASF103:
	.string	"fopen"
.LASF132:
	.string	"archived_path"
.LASF9:
	.string	"size_t"
.LASF11:
	.string	"__mode_t"
.LASF62:
	.string	"d_type"
.LASF20:
	.string	"_IO_read_base"
.LASF87:
	.string	"_Bool"
.LASF118:
	.string	"str1"
.LASF119:
	.string	"str2"
.LASF137:
	.string	"storage_space"
.LASF135:
	.string	"bytes"
.LASF109:
	.string	"free"
.LASF107:
	.string	"mkdir"
.LASF127:
	.string	"archive_worker"
.LASF143:
	.string	"get_free_disk_space"
.LASF128:
	.string	"archive_file"
.LASF16:
	.string	"char"
.LASF44:
	.string	"_mode"
.LASF131:
	.string	"filename"
.LASF47:
	.string	"_IO_marker"
.LASF105:
	.string	"qsort"
.LASF18:
	.string	"_IO_read_ptr"
.LASF84:
	.string	"space"
.LASF21:
	.string	"_IO_write_base"
.LASF71:
	.string	"f_files"
.LASF50:
	.string	"long long int"
.LASF106:
	.string	"perror"
.LASF77:
	.string	"f_type"
.LASF26:
	.string	"_IO_save_base"
.LASF120:
	.string	"add_file"
.LASF69:
	.string	"f_bfree"
.LASF126:
	.string	"path_copy"
.LASF130:
	.string	"original_file"
.LASF86:
	.string	"Files_Storage"
.LASF67:
	.string	"f_frsize"
.LASF15:
	.string	"__fsfilcnt_t"
.LASF56:
	.string	"__compar_fn_t"
.LASF101:
	.string	"snprintf"
.LASF83:
	.string	"size"
.LASF42:
	.string	"_freeres_buf"
.LASF70:
	.string	"f_bavail"
.LASF43:
	.string	"__pad5"
.LASF74:
	.string	"f_fsid"
.LASF35:
	.string	"_vtable_offset"
.LASF65:
	.string	"statvfs"
.LASF89:
	.string	"sprintf"
.LASF68:
	.string	"f_blocks"
.LASF114:
	.string	"name_len"
.LASF58:
	.string	"dirent"
.LASF19:
	.string	"_IO_read_end"
.LASF104:
	.string	"closedir"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF98:
	.string	"fread"
.LASF117:
	.string	"compare_strings"
.LASF49:
	.string	"_IO_wide_data"
.LASF122:
	.string	"new_space"
.LASF100:
	.string	"fclose"
.LASF88:
	.string	"readdir"
.LASF60:
	.string	"d_off"
.LASF78:
	.string	"__f_spare"
.LASF40:
	.string	"_wide_data"
.LASF37:
	.string	"_lock"
.LASF2:
	.string	"long unsigned int"
.LASF33:
	.string	"_old_offset"
.LASF57:
	.string	"_IO_FILE"
.LASF64:
	.string	"__dirstream"
.LASF125:
	.string	"thread"
.LASF112:
	.string	"entry"
.LASF66:
	.string	"f_bsize"
.LASF4:
	.string	"unsigned char"
.LASF22:
	.string	"_IO_write_ptr"
.LASF116:
	.string	"load_files_from_directory"
.LASF111:
	.string	"reading_dir"
.LASF76:
	.string	"f_namemax"
.LASF59:
	.string	"d_ino"
.LASF39:
	.string	"_codecvt"
.LASF91:
	.string	"realloc"
.LASF99:
	.string	"fwrite"
.LASF12:
	.string	"__off_t"
.LASF142:
	.string	"delete_files_storage"
.LASF90:
	.string	"strcmp"
.LASF6:
	.string	"signed char"
.LASF97:
	.string	"strdup"
.LASF73:
	.string	"f_favail"
.LASF5:
	.string	"short unsigned int"
.LASF54:
	.string	"__align"
.LASF30:
	.string	"_chain"
.LASF46:
	.string	"FILE"
.LASF32:
	.string	"_flags2"
.LASF53:
	.string	"__size"
.LASF34:
	.string	"_cur_column"
.LASF13:
	.string	"__off64_t"
.LASF45:
	.string	"_unused2"
.LASF24:
	.string	"_IO_buf_base"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/storage.c"
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
