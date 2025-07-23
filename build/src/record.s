	.file	"record.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v03_1" "src/record.c"
	.globl	record
	.bss
	.align 32
	.type	record, @object
	.size	record, 976
record:
	.zero	976
	.globl	record_struct
	.section	.data.rel.local,"aw"
	.align 8
	.type	record_struct, @object
	.size	record_struct, 8
record_struct:
	.quad	record
	.globl	removing
	.bss
	.type	removing, @object
	.size	removing, 1
removing:
	.zero	1
	.globl	start
	.type	start, @object
	.size	start, 1
start:
	.zero	1
	.text
	.globl	create_output_file
	.type	create_output_file, @function
create_output_file:
.LFB308:
	.file 1 "src/record.c"
	.loc 1 32 27
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 33 18
	movq	config_struct(%rip), %rax
	movq	16(%rax), %rax
	.loc 1 33 4
	testq	%rax, %rax
	jne	.L2
	.loc 1 34 3
	movl	$0, %eax
	call	output_get_audio_filepath@PLT
	.loc 1 34 3 is_stmt 0 discriminator 1
	movq	%rax, %rsi
	movl	$0, %edi
	call	output_new_filename@PLT
.L2:
	.loc 1 36 19 is_stmt 1
	movl	$0, %eax
	call	output_get_audio_filepath@PLT
	movq	%rax, -8(%rbp)
	.loc 1 37 18
	movq	config_struct(%rip), %rax
	movzbl	96(%rax), %eax
	.loc 1 37 4
	testb	%al, %al
	je	.L3
	.loc 1 38 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	output_file_open@PLT
.L3:
	.loc 1 39 2
	movq	944+record(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_file@PLT
	.loc 1 40 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE308:
	.size	create_output_file, .-create_output_file
	.globl	compare_by_name
	.type	compare_by_name, @function
compare_by_name:
.LFB309:
	.loc 1 52 51
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
	.loc 1 53 11
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 54 11
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 55 12
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 56 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE309:
	.size	compare_by_name, .-compare_by_name
	.section	.rodata
	.align 8
.LC1:
	.string	"For file managing reasons, the parameters used will be:"
	.align 8
.LC2:
	.string	"\taudio_file_duration = %d\n\taudio_loop_recording = %d\n"
	.align 8
.LC3:
	.string	"\tdata_file_duration = %d\n\tdata_loop_recording = %d\n"
.LC4:
	.string	".ogg"
.LC5:
	.string	".csv"
	.align 8
.LC7:
	.string	"\tFree Disk Space = %lld bytes\n"
	.align 8
.LC8:
	.string	"\tMemory Needed =   %lld bytes\n"
	.align 8
.LC9:
	.string	"ERROR : not enough space in disk for %lld bytes\n"
	.text
	.globl	storage_window_init
	.type	storage_window_init, @function
storage_window_init:
.LFB310:
	.loc 1 68 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 69 6
	movl	$2, -20(%rbp)
	.loc 1 70 47
	movq	config_struct(%rip), %rax
	movl	56(%rax), %edx
	.loc 1 70 61
	movl	-20(%rbp), %eax
	imull	%edx, %eax
	.loc 1 70 80
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L7
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L8
.L7:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L8:
	.loc 1 70 102
	movq	record_struct(%rip), %rax
	.loc 1 70 106
	movq	520(%rax), %rax
	.loc 1 70 82
	pxor	%xmm1, %xmm1
	cvtsi2ssq	%rax, %xmm1
	.loc 1 70 122
	movss	.LC0(%rip), %xmm2
	divss	%xmm2, %xmm1
	.loc 1 70 8
	divss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	.loc 1 71 82
	movl	$0, %eax
	call	output_get_audio_filepath@PLT
	.loc 1 71 75 discriminator 1
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 71 11 discriminator 2
	addl	$744, %eax
	movl	%eax, -12(%rbp)
	.loc 1 73 50
	movq	config_struct(%rip), %rax
	movl	56(%rax), %edx
	.loc 1 73 79
	movq	config_struct(%rip), %rax
	movl	92(%rax), %eax
	.loc 1 73 64
	imull	%eax, %edx
	.loc 1 73 101
	movl	-20(%rbp), %eax
	imull	%edx, %eax
	.loc 1 73 21
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	.loc 1 76 18
	movq	config_struct(%rip), %rax
	movq	16(%rax), %rax
	.loc 1 76 4
	testq	%rax, %rax
	jne	.L9
.LBB2:
	.loc 1 77 48
	movq	config_struct(%rip), %rax
	movl	88(%rax), %edx
	.loc 1 77 87
	movq	config_struct(%rip), %rax
	movl	92(%rax), %eax
	.loc 1 77 71
	addl	%edx, %eax
	leal	-1(%rax), %ecx
	.loc 1 77 128
	movq	config_struct(%rip), %rax
	movl	92(%rax), %esi
	.loc 1 77 16
	movl	%ecx, %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -28(%rbp)
	.loc 1 79 47
	movq	config_struct(%rip), %rax
	movl	100(%rax), %edx
	.loc 1 79 85
	movq	config_struct(%rip), %rax
	movl	104(%rax), %eax
	.loc 1 79 69
	addl	%edx, %eax
	leal	-1(%rax), %ecx
	.loc 1 79 125
	movq	config_struct(%rip), %rax
	movl	104(%rax), %esi
	.loc 1 79 16
	movl	%ecx, %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -24(%rbp)
	.loc 1 81 3
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 82 19
	movq	config_struct(%rip), %rax
	movzbl	96(%rax), %eax
	.loc 1 82 5
	testb	%al, %al
	je	.L10
	.loc 1 83 55
	movq	config_struct(%rip), %rax
	movl	92(%rax), %edx
	.loc 1 83 17
	movq	config_struct(%rip), %rax
	.loc 1 83 77
	imull	-28(%rbp), %edx
	.loc 1 83 40
	movl	%edx, 88(%rax)
	.loc 1 87 18
	movq	config_struct(%rip), %rax
	.loc 1 84 4
	movl	88(%rax), %edx
	.loc 1 86 18
	movq	config_struct(%rip), %rax
	.loc 1 84 4
	movl	92(%rax), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L11
.L10:
	.loc 1 89 25
	movl	$0, -28(%rbp)
.L11:
	.loc 1 92 19
	movq	config_struct(%rip), %rax
	movzbl	108(%rax), %eax
	.loc 1 92 5
	testb	%al, %al
	je	.L12
	.loc 1 93 54
	movq	config_struct(%rip), %rax
	movl	104(%rax), %edx
	.loc 1 93 17
	movq	config_struct(%rip), %rax
	.loc 1 93 75
	imull	-24(%rbp), %edx
	.loc 1 93 39
	movl	%edx, 100(%rax)
	.loc 1 97 18
	movq	config_struct(%rip), %rax
	.loc 1 94 4
	movl	100(%rax), %edx
	.loc 1 96 18
	movq	config_struct(%rip), %rax
	.loc 1 94 4
	movl	104(%rax), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L13
.L12:
	.loc 1 99 24
	movl	$0, -24(%rbp)
.L13:
	.loc 1 102 21
	movq	config_struct(%rip), %rax
	movzbl	96(%rax), %eax
	.loc 1 102 5
	testb	%al, %al
	je	.L14
	.loc 1 102 73 discriminator 1
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	create_files_storage@PLT
	.loc 1 102 71 discriminator 1
	movq	%rax, 944+record(%rip)
	.loc 1 102 50 discriminator 1
	movq	944+record(%rip), %rax
	.loc 1 102 39 discriminator 1
	testq	%rax, %rax
	je	.L15
.L14:
	.loc 1 103 18
	movq	config_struct(%rip), %rax
	movzbl	108(%rax), %eax
	.loc 1 102 121 discriminator 3
	testb	%al, %al
	je	.L16
	.loc 1 103 68
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	create_files_storage@PLT
	.loc 1 103 66 discriminator 1
	movq	%rax, 952+record(%rip)
	.loc 1 103 46 discriminator 1
	movq	952+record(%rip), %rax
	.loc 1 103 35 discriminator 1
	testq	%rax, %rax
	jne	.L16
.L15:
	.loc 1 104 12
	movl	$0, %eax
	jmp	.L17
.L16:
	.loc 1 106 21
	movq	config_struct(%rip), %rax
	movzbl	96(%rax), %eax
	.loc 1 106 5
	testb	%al, %al
	je	.L18
	.loc 1 106 110 discriminator 1
	movq	config_struct(%rip), %rax
	.loc 1 106 44 discriminator 1
	movq	24(%rax), %rcx
	movq	944+record(%rip), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	load_files_from_directory@PLT
	.loc 1 106 39 discriminator 1
	testl	%eax, %eax
	je	.L19
.L18:
	.loc 1 107 18
	movq	config_struct(%rip), %rax
	movzbl	108(%rax), %eax
	.loc 1 106 134 discriminator 3
	testb	%al, %al
	je	.L20
	.loc 1 107 105
	movq	config_struct(%rip), %rax
	.loc 1 107 40
	movq	24(%rax), %rcx
	movq	952+record(%rip), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	load_files_from_directory@PLT
	.loc 1 107 35 discriminator 1
	testl	%eax, %eax
	jne	.L20
.L19:
	.loc 1 108 12
	movl	$0, %eax
	jmp	.L17
.L20:
	.loc 1 111 34
	movq	config_struct(%rip), %rax
	movl	88(%rax), %edx
	.loc 1 111 72
	movq	config_struct(%rip), %rax
	movl	56(%rax), %eax
	.loc 1 111 57
	imull	%eax, %edx
	.loc 1 111 86
	movl	-20(%rbp), %eax
	imull	%edx, %eax
	.loc 1 111 105
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L21
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L22
.L21:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L22:
	movaps	%xmm0, %xmm1
	divss	-16(%rbp), %xmm1
	.loc 1 111 144
	movq	config_struct(%rip), %rax
	movzbl	96(%rax), %eax
	movzbl	%al, %eax
	.loc 1 111 130
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	.loc 1 111 17
	comiss	.LC6(%rip), %xmm0
	jnb	.L23
	cvttss2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	jmp	.L24
.L23:
	movss	.LC6(%rip), %xmm1
	subss	%xmm1, %xmm0
	cvttss2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, -8(%rbp)
.L24:
	movq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
.L9:
.LBE2:
	.loc 1 113 34
	movq	config_struct(%rip), %rax
	movl	100(%rax), %edx
	.loc 1 113 71
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	.loc 1 113 56
	imull	%edx, %eax
	.loc 1 113 94
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	.loc 1 113 125
	movq	config_struct(%rip), %rax
	movzbl	108(%rax), %eax
	movzbl	%al, %eax
	.loc 1 113 111
	imull	%edx, %eax
	movl	%eax, %eax
	.loc 1 113 17
	addq	%rax, -8(%rbp)
	.loc 1 114 33
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	.loc 1 114 17
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$2, %rax
	movq	%rax, -8(%rbp)
	.loc 1 116 2
	movl	$0, %eax
	call	get_free_disk_space@PLT
	.loc 1 116 2 is_stmt 0 discriminator 1
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 117 2 is_stmt 1
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 119 5
	movl	$0, %eax
	call	get_free_disk_space@PLT
	.loc 1 119 4 discriminator 1
	cmpq	-8(%rbp), %rax
	jnb	.L25
	.loc 1 120 3
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC9(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 121 10
	movl	$0, %eax
	jmp	.L17
.L25:
	.loc 1 124 9
	movl	$1, %eax
.L17:
	.loc 1 125 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE310:
	.size	storage_window_init, .-storage_window_init
	.section	.rodata
	.align 8
.LC10:
	.string	"ERROR : could not create an output_file (record.c : 173)"
	.align 8
.LC12:
	.string	"Error initializing the encoder\n\n"
.LC13:
	.string	"encoder_example.c"
.LC14:
	.string	"ENCODER"
	.text
	.globl	record_start
	.type	record_start, @function
record_start:
.LFB311:
	.loc 1 137 19
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	.loc 1 137 19
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 139 16
	movl	$0, 920+record(%rip)
	.loc 1 142 25
	movq	$0, 928+record(%rip)
	.loc 1 145 22
	movq	$0, 936+record(%rip)
	.loc 1 148 18
	movq	config_struct(%rip), %rax
	movzbl	96(%rax), %eax
	.loc 1 148 4
	testb	%al, %al
	je	.L27
	.loc 1 149 3
	movl	$0, %eax
	call	create_output_file
	.loc 1 150 14
	movq	record(%rip), %rax
	.loc 1 150 6
	testq	%rax, %rax
	jne	.L27
	.loc 1 151 5
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$56, %edx
	movl	$1, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 152 12
	movl	$0, %eax
	jmp	.L28
.L27:
	.loc 1 156 5
	leaq	496+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_info_init@PLT
	.loc 1 157 82
	movq	config_struct(%rip), %rax
	movl	56(%rax), %eax
	.loc 1 157 9
	movl	%eax, %edx
	.loc 1 157 57
	movq	config_struct(%rip), %rax
	movl	60(%rax), %eax
	.loc 1 157 9
	movl	%eax, %ecx
	movl	.LC11(%rip), %eax
	movd	%eax, %xmm0
	movq	%rcx, %rsi
	leaq	496+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_encode_init_vbr@PLT
	.loc 1 157 8 discriminator 1
	testl	%eax, %eax
	je	.L29
	.loc 1 158 9
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	movl	$1, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 159 9
	movq	record(%rip), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 160 16
	movl	$0, %eax
	jmp	.L28
.L29:
	.loc 1 164 5
	leaq	552+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_comment_init@PLT
	.loc 1 165 5
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	552+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_comment_add_tag@PLT
	.loc 1 166 5
	leaq	496+record(%rip), %rax
	movq	%rax, %rsi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_analysis_init@PLT
	.loc 1 167 5
	leaq	728+record(%rip), %rax
	movq	%rax, %rsi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_block_init@PLT
	.loc 1 170 11
	movl	$0, %edi
	call	time@PLT
	.loc 1 170 5 discriminator 1
	movl	%eax, %edi
	call	srand@PLT
	.loc 1 171 5
	call	rand@PLT
	.loc 1 171 5 is_stmt 0 discriminator 1
	movl	%eax, %esi
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_init@PLT
	.loc 1 173 18 is_stmt 1
	movq	config_struct(%rip), %rax
	movzbl	96(%rax), %eax
	.loc 1 173 4
	testb	%al, %al
	je	.L30
.LBB3:
	.loc 1 176 3
	leaq	-64(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	552+record(%rip), %rax
	movq	%rax, %rsi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_analysis_headerout@PLT
	.loc 1 177 3
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_packetin@PLT
	.loc 1 178 3
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_packetin@PLT
	.loc 1 179 3
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_packetin@PLT
	.loc 1 181 9
	jmp	.L31
.L34:
.LBB4:
	.loc 1 182 17
	leaq	416+record(%rip), %rax
	movq	%rax, %rsi
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_flush@PLT
	movl	%eax, -164(%rbp)
	.loc 1 183 7
	cmpl	$0, -164(%rbp)
	je	.L37
	.loc 1 184 4
	movq	record(%rip), %rdx
	.loc 1 184 41
	movq	424+record(%rip), %rax
	.loc 1 184 4
	movq	%rax, %rsi
	.loc 1 184 20
	movq	416+record(%rip), %rax
	.loc 1 184 4
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 185 4
	movq	record(%rip), %rdx
	.loc 1 185 39
	movq	440+record(%rip), %rax
	.loc 1 185 4
	movq	%rax, %rsi
	.loc 1 185 20
	movq	432+record(%rip), %rax
	.loc 1 185 4
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
.L31:
.LBE4:
	.loc 1 181 17
	movl	920+record(%rip), %eax
	.loc 1 181 10
	testl	%eax, %eax
	je	.L34
	jmp	.L30
.L37:
.LBB5:
	.loc 1 183 21
	nop
.L30:
.LBE5:
.LBE3:
	.loc 1 188 8
	movzbl	start(%rip), %eax
	xorl	$1, %eax
	.loc 1 188 7
	testb	%al, %al
	je	.L35
	.loc 1 189 9
	movb	$1, start(%rip)
	.loc 1 190 7
	movl	$0, %eax
	call	storage_window_init
	.loc 1 190 5 discriminator 1
	testl	%eax, %eax
	jne	.L35
	.loc 1 191 11
	movl	$0, %eax
	jmp	.L28
.L35:
	.loc 1 193 22
	movl	$0, %edi
	call	time@PLT
	.loc 1 193 20 discriminator 1
	movq	%rax, 960+record(%rip)
	.loc 1 194 22
	movl	$0, 968+record(%rip)
	.loc 1 195 12
	movl	$1, %eax
.L28:
	.loc 1 196 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L36
	call	__stack_chk_fail@PLT
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE311:
	.size	record_start, .-record_start
	.globl	record_stop
	.type	record_stop, @function
record_stop:
.LFB312:
	.loc 1 208 19
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 209 2
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_clear@PLT
	.loc 1 210 2
	leaq	728+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_block_clear@PLT
	.loc 1 211 2
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_dsp_clear@PLT
	.loc 1 212 2
	leaq	552+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_comment_clear@PLT
	.loc 1 213 2
	leaq	496+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_info_clear@PLT
	.loc 1 214 12
	movq	record(%rip), %rax
	.loc 1 214 5
	testq	%rax, %rax
	je	.L40
	.loc 1 215 3
	movq	record(%rip), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 216 17
	movq	$0, record(%rip)
.L40:
	.loc 1 218 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE312:
	.size	record_stop, .-record_stop
	.section	.rodata
.LC15:
	.string	"src/record.c"
	.align 8
.LC16:
	.string	"frames_read <= config_struct->block_size"
	.text
	.globl	record_append_samples
	.type	record_append_samples, @function
record_append_samples:
.LFB313:
	.loc 1 230 67
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
	.loc 1 231 19
	movq	config_struct(%rip), %rax
	movzbl	96(%rax), %eax
	.loc 1 231 5
	xorl	$1, %eax
	.loc 1 231 4
	testb	%al, %al
	je	.L42
	.loc 1 231 45 discriminator 1
	movl	$1, %eax
	.loc 1 231 45 is_stmt 0
	jmp	.L43
.L42:
	.loc 1 232 29 is_stmt 1
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	movl	%eax, %eax
	.loc 1 232 33
	cmpq	-32(%rbp), %rax
	jnb	.L44
	.loc 1 232 10 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$232, %edx
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L44:
	.loc 1 236 4
	cmpq	$0, -32(%rbp)
	jne	.L45
	.loc 1 238 3
	movl	$0, %esi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_analysis_wrote@PLT
	jmp	.L49
.L45:
.LBB6:
	.loc 1 242 65
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 242 18
	movl	%eax, %esi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_analysis_buffer@PLT
	movq	%rax, -8(%rbp)
.LBB7:
	.loc 1 244 11
	movl	$0, -16(%rbp)
	.loc 1 244 3
	jmp	.L47
.L48:
	.loc 1 245 4
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	.loc 1 245 43
	movl	-16(%rbp), %eax
	cltq
	imulq	-32(%rbp), %rax
	.loc 1 245 37
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	.loc 1 245 17
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	.loc 1 245 4
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 1 244 51 discriminator 3
	addl	$1, -16(%rbp)
.L47:
	.loc 1 244 37 discriminator 1
	movq	config_struct(%rip), %rax
	movl	60(%rax), %eax
	.loc 1 244 22 discriminator 1
	movl	-16(%rbp), %edx
	cmpl	%eax, %edx
	jb	.L48
.LBE7:
	.loc 1 254 3
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_analysis_wrote@PLT
.LBE6:
	.loc 1 257 7
	jmp	.L49
.L57:
	.loc 1 259 3
	movl	$0, %esi
	leaq	728+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_analysis@PLT
	.loc 1 260 3
	leaq	728+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_bitrate_addblock@PLT
	.loc 1 262 8
	jmp	.L55
.L56:
	.loc 1 264 10
	movq	928+record(%rip), %rdx
	.loc 1 264 36
	movq	456+record(%rip), %rax
	.loc 1 264 24
	addq	%rdx, %rax
	movq	%rax, 928+record(%rip)
	.loc 1 265 4
	leaq	448+record(%rip), %rax
	movq	%rax, %rsi
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_packetin@PLT
	.loc 1 267 9
	jmp	.L53
.L54:
.LBB8:
	.loc 1 268 16
	leaq	416+record(%rip), %rax
	movq	%rax, %rsi
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_pageout@PLT
	movl	%eax, -12(%rbp)
	.loc 1 269 7
	cmpl	$0, -12(%rbp)
	jne	.L52
	.loc 1 269 18
	jmp	.L55
.L52:
	.loc 1 270 5
	movq	record(%rip), %rdx
	.loc 1 270 40
	movq	424+record(%rip), %rax
	.loc 1 270 5
	movq	%rax, %rsi
	.loc 1 270 21
	movq	416+record(%rip), %rax
	.loc 1 270 5
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 271 5
	movq	record(%rip), %rdx
	.loc 1 271 38
	movq	440+record(%rip), %rax
	.loc 1 271 5
	movq	%rax, %rsi
	.loc 1 271 21
	movq	432+record(%rip), %rax
	.loc 1 271 5
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 273 8
	leaq	416+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_page_eos@PLT
	.loc 1 273 7 discriminator 1
	testl	%eax, %eax
	je	.L53
	.loc 1 273 43 discriminator 1
	movl	$1, 920+record(%rip)
.L53:
.LBE8:
	.loc 1 267 17
	movl	920+record(%rip), %eax
	.loc 1 267 10
	testl	%eax, %eax
	je	.L54
.L55:
	.loc 1 262 9
	leaq	448+record(%rip), %rax
	movq	%rax, %rsi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_bitrate_flushpacket@PLT
	.loc 1 262 9 is_stmt 0 discriminator 1
	testl	%eax, %eax
	jne	.L56
.L49:
	.loc 1 257 8 is_stmt 1
	leaq	728+record(%rip), %rax
	movq	%rax, %rsi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_analysis_blockout@PLT
	.loc 1 257 55 discriminator 1
	cmpl	$1, %eax
	je	.L57
	.loc 1 278 8
	movq	936+record(%rip), %rax
	movq	%rax, %rdx
	.loc 1 278 22
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, 936+record(%rip)
	.loc 1 280 9
	movl	$1, %eax
.L43:
	.loc 1 281 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE313:
	.size	record_append_samples, .-record_append_samples
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 22
__PRETTY_FUNCTION__.0:
	.string	"record_append_samples"
	.align 4
.LC0:
	.long	1090519040
	.align 4
.LC6:
	.long	1593835520
	.align 4
.LC11:
	.long	1063675494
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 8 "/usr/local/include/ogg/config_types.h"
	.file 9 "/usr/local/include/ogg/ogg.h"
	.file 10 "/usr/local/include/vorbis/codec.h"
	.file 11 "src/config.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "src/storage.h"
	.file 14 "src/record.h"
	.file 15 "/usr/include/string.h"
	.file 16 "/usr/include/assert.h"
	.file 17 "/usr/include/stdlib.h"
	.file 18 "/usr/include/time.h"
	.file 19 "/usr/local/include/vorbis/vorbisenc.h"
	.file 20 "src/in_out.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1270
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1e
	.long	.LASF241
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x5
	.long	.LASF8
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
	.uleb128 0x1f
	.byte	0x8
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
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0x2c
	.byte	0x19
	.long	0x79
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x79
	.uleb128 0x5
	.long	.LASF12
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x79
	.uleb128 0x5
	.long	.LASF13
	.byte	0x3
	.byte	0xa0
	.byte	0x12
	.long	0x79
	.uleb128 0x3
	.long	0xa9
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x12
	.long	0xa9
	.uleb128 0xb
	.long	.LASF85
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x23c
	.uleb128 0x1
	.long	.LASF15
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0x1
	.long	.LASF16
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xa4
	.byte	0x8
	.uleb128 0x1
	.long	.LASF17
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xa4
	.byte	0x10
	.uleb128 0x1
	.long	.LASF18
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xa4
	.byte	0x18
	.uleb128 0x1
	.long	.LASF19
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xa4
	.byte	0x20
	.uleb128 0x1
	.long	.LASF20
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xa4
	.byte	0x28
	.uleb128 0x1
	.long	.LASF21
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xa4
	.byte	0x30
	.uleb128 0x1
	.long	.LASF22
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xa4
	.byte	0x38
	.uleb128 0x1
	.long	.LASF23
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xa4
	.byte	0x40
	.uleb128 0x1
	.long	.LASF24
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xa4
	.byte	0x48
	.uleb128 0x1
	.long	.LASF25
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xa4
	.byte	0x50
	.uleb128 0x1
	.long	.LASF26
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xa4
	.byte	0x58
	.uleb128 0x1
	.long	.LASF27
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x255
	.byte	0x60
	.uleb128 0x1
	.long	.LASF28
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x25a
	.byte	0x68
	.uleb128 0x1
	.long	.LASF29
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x66
	.byte	0x70
	.uleb128 0x1
	.long	.LASF30
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x66
	.byte	0x74
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x80
	.byte	0x78
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x51
	.byte	0x80
	.uleb128 0x1
	.long	.LASF33
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x58
	.byte	0x82
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x25f
	.byte	0x83
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x26f
	.byte	0x88
	.uleb128 0x1
	.long	.LASF36
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x8c
	.byte	0x90
	.uleb128 0x1
	.long	.LASF37
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x279
	.byte	0x98
	.uleb128 0x1
	.long	.LASF38
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x283
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF39
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x25a
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF40
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x48
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF41
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF42
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x66
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF43
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x288
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF44
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xb5
	.uleb128 0x21
	.long	.LASF242
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x13
	.long	.LASF45
	.uleb128 0x3
	.long	0x250
	.uleb128 0x3
	.long	0xb5
	.uleb128 0xd
	.long	0xa9
	.long	0x26f
	.uleb128 0x14
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x248
	.uleb128 0x13
	.long	.LASF46
	.uleb128 0x3
	.long	0x274
	.uleb128 0x13
	.long	.LASF47
	.uleb128 0x3
	.long	0x27e
	.uleb128 0xd
	.long	0xa9
	.long	0x298
	.uleb128 0x14
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.long	0xb0
	.uleb128 0x15
	.long	0x298
	.uleb128 0x3
	.long	0x23c
	.uleb128 0x15
	.long	0x2a2
	.uleb128 0x16
	.long	.LASF160
	.byte	0xc
	.byte	0x97
	.byte	0xe
	.long	0x2a2
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0x5
	.long	.LASF49
	.byte	0x6
	.byte	0xa
	.byte	0x12
	.long	0x98
	.uleb128 0x5
	.long	.LASF50
	.byte	0x7
	.byte	0x1b
	.byte	0x13
	.long	0x6d
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF51
	.uleb128 0x3
	.long	0x2e8
	.uleb128 0x15
	.long	0x2de
	.uleb128 0x22
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.long	.LASF52
	.uleb128 0x5
	.long	.LASF53
	.byte	0x8
	.byte	0x17
	.byte	0x11
	.long	0x2cb
	.uleb128 0xe
	.byte	0x28
	.byte	0x9
	.byte	0x1f
	.long	0x346
	.uleb128 0x1
	.long	.LASF54
	.byte	0x9
	.byte	0x20
	.byte	0x8
	.long	0x79
	.byte	0
	.uleb128 0x1
	.long	.LASF55
	.byte	0x9
	.byte	0x21
	.byte	0x7
	.long	0x66
	.byte	0x8
	.uleb128 0x1
	.long	.LASF56
	.byte	0x9
	.byte	0x23
	.byte	0x12
	.long	0x346
	.byte	0x10
	.uleb128 0x7
	.string	"ptr"
	.byte	0x9
	.byte	0x24
	.byte	0x12
	.long	0x346
	.byte	0x18
	.uleb128 0x1
	.long	.LASF57
	.byte	0x9
	.byte	0x25
	.byte	0x8
	.long	0x79
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	0x4a
	.uleb128 0x5
	.long	.LASF58
	.byte	0x9
	.byte	0x26
	.byte	0x3
	.long	0x2fc
	.uleb128 0xe
	.byte	0x20
	.byte	0x9
	.byte	0x2a
	.long	0x394
	.uleb128 0x1
	.long	.LASF59
	.byte	0x9
	.byte	0x2b
	.byte	0x12
	.long	0x346
	.byte	0
	.uleb128 0x1
	.long	.LASF60
	.byte	0x9
	.byte	0x2c
	.byte	0x8
	.long	0x79
	.byte	0x8
	.uleb128 0x1
	.long	.LASF61
	.byte	0x9
	.byte	0x2d
	.byte	0x12
	.long	0x346
	.byte	0x10
	.uleb128 0x1
	.long	.LASF62
	.byte	0x9
	.byte	0x2e
	.byte	0x8
	.long	0x79
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF63
	.byte	0x9
	.byte	0x2f
	.byte	0x3
	.long	0x357
	.uleb128 0x12
	.long	0x394
	.uleb128 0x18
	.value	0x198
	.byte	0x9
	.byte	0x34
	.long	0x4a0
	.uleb128 0x1
	.long	.LASF64
	.byte	0x9
	.byte	0x35
	.byte	0x12
	.long	0x346
	.byte	0
	.uleb128 0x1
	.long	.LASF65
	.byte	0x9
	.byte	0x36
	.byte	0x8
	.long	0x79
	.byte	0x8
	.uleb128 0x1
	.long	.LASF66
	.byte	0x9
	.byte	0x37
	.byte	0x8
	.long	0x79
	.byte	0x10
	.uleb128 0x1
	.long	.LASF67
	.byte	0x9
	.byte	0x38
	.byte	0x8
	.long	0x79
	.byte	0x18
	.uleb128 0x1
	.long	.LASF68
	.byte	0x9
	.byte	0x3b
	.byte	0x8
	.long	0x4a0
	.byte	0x20
	.uleb128 0x1
	.long	.LASF69
	.byte	0x9
	.byte	0x3c
	.byte	0x10
	.long	0x4a5
	.byte	0x28
	.uleb128 0x1
	.long	.LASF70
	.byte	0x9
	.byte	0x3f
	.byte	0x8
	.long	0x79
	.byte	0x30
	.uleb128 0x1
	.long	.LASF71
	.byte	0x9
	.byte	0x40
	.byte	0x8
	.long	0x79
	.byte	0x38
	.uleb128 0x1
	.long	.LASF72
	.byte	0x9
	.byte	0x41
	.byte	0x8
	.long	0x79
	.byte	0x40
	.uleb128 0x1
	.long	.LASF73
	.byte	0x9
	.byte	0x42
	.byte	0x8
	.long	0x79
	.byte	0x48
	.uleb128 0x1
	.long	.LASF59
	.byte	0x9
	.byte	0x44
	.byte	0x11
	.long	0x4aa
	.byte	0x50
	.uleb128 0x9
	.long	.LASF74
	.byte	0x9
	.byte	0x45
	.byte	0x7
	.long	0x66
	.value	0x16c
	.uleb128 0x9
	.long	.LASF75
	.byte	0x9
	.byte	0x47
	.byte	0x7
	.long	0x66
	.value	0x170
	.uleb128 0x9
	.long	.LASF76
	.byte	0x9
	.byte	0x49
	.byte	0x7
	.long	0x66
	.value	0x174
	.uleb128 0x9
	.long	.LASF77
	.byte	0x9
	.byte	0x4b
	.byte	0x8
	.long	0x79
	.value	0x178
	.uleb128 0x9
	.long	.LASF78
	.byte	0x9
	.byte	0x4c
	.byte	0x8
	.long	0x79
	.value	0x180
	.uleb128 0x9
	.long	.LASF79
	.byte	0x9
	.byte	0x4d
	.byte	0xf
	.long	0x2f0
	.value	0x188
	.uleb128 0x9
	.long	.LASF80
	.byte	0x9
	.byte	0x52
	.byte	0xf
	.long	0x2f0
	.value	0x190
	.byte	0
	.uleb128 0x3
	.long	0x66
	.uleb128 0x3
	.long	0x2f0
	.uleb128 0xd
	.long	0x4a
	.long	0x4bb
	.uleb128 0x23
	.long	0x3a
	.value	0x119
	.byte	0
	.uleb128 0x5
	.long	.LASF81
	.byte	0x9
	.byte	0x54
	.byte	0x3
	.long	0x3a5
	.uleb128 0xe
	.byte	0x30
	.byte	0x9
	.byte	0x59
	.long	0x51e
	.uleb128 0x1
	.long	.LASF82
	.byte	0x9
	.byte	0x5a
	.byte	0x12
	.long	0x346
	.byte	0
	.uleb128 0x1
	.long	.LASF83
	.byte	0x9
	.byte	0x5b
	.byte	0x8
	.long	0x79
	.byte	0x8
	.uleb128 0x1
	.long	.LASF76
	.byte	0x9
	.byte	0x5c
	.byte	0x8
	.long	0x79
	.byte	0x10
	.uleb128 0x1
	.long	.LASF75
	.byte	0x9
	.byte	0x5d
	.byte	0x8
	.long	0x79
	.byte	0x18
	.uleb128 0x1
	.long	.LASF80
	.byte	0x9
	.byte	0x5f
	.byte	0xf
	.long	0x2f0
	.byte	0x20
	.uleb128 0x1
	.long	.LASF79
	.byte	0x9
	.byte	0x61
	.byte	0xf
	.long	0x2f0
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.long	.LASF84
	.byte	0x9
	.byte	0x66
	.byte	0x3
	.long	0x4c7
	.uleb128 0xb
	.long	.LASF86
	.byte	0x38
	.byte	0xa
	.byte	0x1b
	.byte	0x10
	.long	0x5a0
	.uleb128 0x1
	.long	.LASF87
	.byte	0xa
	.byte	0x1c
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0x1
	.long	.LASF88
	.byte	0xa
	.byte	0x1d
	.byte	0x7
	.long	0x66
	.byte	0x4
	.uleb128 0x1
	.long	.LASF89
	.byte	0xa
	.byte	0x1e
	.byte	0x8
	.long	0x79
	.byte	0x8
	.uleb128 0x1
	.long	.LASF90
	.byte	0xa
	.byte	0x2f
	.byte	0x8
	.long	0x79
	.byte	0x10
	.uleb128 0x1
	.long	.LASF91
	.byte	0xa
	.byte	0x30
	.byte	0x8
	.long	0x79
	.byte	0x18
	.uleb128 0x1
	.long	.LASF92
	.byte	0xa
	.byte	0x31
	.byte	0x8
	.long	0x79
	.byte	0x20
	.uleb128 0x1
	.long	.LASF93
	.byte	0xa
	.byte	0x32
	.byte	0x8
	.long	0x79
	.byte	0x28
	.uleb128 0x1
	.long	.LASF94
	.byte	0xa
	.byte	0x34
	.byte	0x9
	.long	0x48
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.long	.LASF86
	.byte	0xa
	.byte	0x35
	.byte	0x3
	.long	0x52a
	.uleb128 0xb
	.long	.LASF95
	.byte	0x90
	.byte	0xa
	.byte	0x3a
	.byte	0x10
	.long	0x6b9
	.uleb128 0x1
	.long	.LASF96
	.byte	0xa
	.byte	0x3b
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0x7
	.string	"vi"
	.byte	0xa
	.byte	0x3c
	.byte	0x10
	.long	0x6b9
	.byte	0x8
	.uleb128 0x7
	.string	"pcm"
	.byte	0xa
	.byte	0x3e
	.byte	0xb
	.long	0x6be
	.byte	0x10
	.uleb128 0x1
	.long	.LASF97
	.byte	0xa
	.byte	0x3f
	.byte	0xb
	.long	0x6be
	.byte	0x18
	.uleb128 0x1
	.long	.LASF98
	.byte	0xa
	.byte	0x40
	.byte	0x7
	.long	0x66
	.byte	0x20
	.uleb128 0x1
	.long	.LASF99
	.byte	0xa
	.byte	0x41
	.byte	0x7
	.long	0x66
	.byte	0x24
	.uleb128 0x1
	.long	.LASF100
	.byte	0xa
	.byte	0x42
	.byte	0x7
	.long	0x66
	.byte	0x28
	.uleb128 0x1
	.long	.LASF101
	.byte	0xa
	.byte	0x44
	.byte	0x7
	.long	0x66
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF102
	.byte	0xa
	.byte	0x45
	.byte	0x7
	.long	0x66
	.byte	0x30
	.uleb128 0x7
	.string	"lW"
	.byte	0xa
	.byte	0x47
	.byte	0x8
	.long	0x79
	.byte	0x38
	.uleb128 0x7
	.string	"W"
	.byte	0xa
	.byte	0x48
	.byte	0x8
	.long	0x79
	.byte	0x40
	.uleb128 0x7
	.string	"nW"
	.byte	0xa
	.byte	0x49
	.byte	0x8
	.long	0x79
	.byte	0x48
	.uleb128 0x1
	.long	.LASF103
	.byte	0xa
	.byte	0x4a
	.byte	0x8
	.long	0x79
	.byte	0x50
	.uleb128 0x1
	.long	.LASF80
	.byte	0xa
	.byte	0x4c
	.byte	0xf
	.long	0x2f0
	.byte	0x58
	.uleb128 0x1
	.long	.LASF104
	.byte	0xa
	.byte	0x4d
	.byte	0xf
	.long	0x2f0
	.byte	0x60
	.uleb128 0x1
	.long	.LASF105
	.byte	0xa
	.byte	0x4f
	.byte	0xf
	.long	0x2f0
	.byte	0x68
	.uleb128 0x1
	.long	.LASF106
	.byte	0xa
	.byte	0x50
	.byte	0xf
	.long	0x2f0
	.byte	0x70
	.uleb128 0x1
	.long	.LASF107
	.byte	0xa
	.byte	0x51
	.byte	0xf
	.long	0x2f0
	.byte	0x78
	.uleb128 0x1
	.long	.LASF108
	.byte	0xa
	.byte	0x52
	.byte	0xf
	.long	0x2f0
	.byte	0x80
	.uleb128 0x1
	.long	.LASF109
	.byte	0xa
	.byte	0x54
	.byte	0x9
	.long	0x48
	.byte	0x88
	.byte	0
	.uleb128 0x3
	.long	0x5a0
	.uleb128 0x3
	.long	0x6c3
	.uleb128 0x3
	.long	0x6c8
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.long	.LASF110
	.uleb128 0x5
	.long	.LASF95
	.byte	0xa
	.byte	0x55
	.byte	0x3
	.long	0x5ac
	.uleb128 0xb
	.long	.LASF111
	.byte	0xc0
	.byte	0xa
	.byte	0x57
	.byte	0x10
	.long	0x7f5
	.uleb128 0x7
	.string	"pcm"
	.byte	0xa
	.byte	0x59
	.byte	0xb
	.long	0x6be
	.byte	0
	.uleb128 0x7
	.string	"opb"
	.byte	0xa
	.byte	0x5a
	.byte	0x12
	.long	0x34b
	.byte	0x8
	.uleb128 0x7
	.string	"lW"
	.byte	0xa
	.byte	0x5c
	.byte	0x8
	.long	0x79
	.byte	0x30
	.uleb128 0x7
	.string	"W"
	.byte	0xa
	.byte	0x5d
	.byte	0x8
	.long	0x79
	.byte	0x38
	.uleb128 0x7
	.string	"nW"
	.byte	0xa
	.byte	0x5e
	.byte	0x8
	.long	0x79
	.byte	0x40
	.uleb128 0x1
	.long	.LASF112
	.byte	0xa
	.byte	0x5f
	.byte	0x7
	.long	0x66
	.byte	0x48
	.uleb128 0x1
	.long	.LASF113
	.byte	0xa
	.byte	0x60
	.byte	0x7
	.long	0x66
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF102
	.byte	0xa
	.byte	0x62
	.byte	0x7
	.long	0x66
	.byte	0x50
	.uleb128 0x1
	.long	.LASF80
	.byte	0xa
	.byte	0x63
	.byte	0xf
	.long	0x2f0
	.byte	0x58
	.uleb128 0x1
	.long	.LASF104
	.byte	0xa
	.byte	0x64
	.byte	0xf
	.long	0x2f0
	.byte	0x60
	.uleb128 0x7
	.string	"vd"
	.byte	0xa
	.byte	0x65
	.byte	0x15
	.long	0x7f5
	.byte	0x68
	.uleb128 0x1
	.long	.LASF114
	.byte	0xa
	.byte	0x69
	.byte	0x9
	.long	0x48
	.byte	0x70
	.uleb128 0x1
	.long	.LASF115
	.byte	0xa
	.byte	0x6a
	.byte	0x8
	.long	0x79
	.byte	0x78
	.uleb128 0x1
	.long	.LASF116
	.byte	0xa
	.byte	0x6b
	.byte	0x8
	.long	0x79
	.byte	0x80
	.uleb128 0x1
	.long	.LASF117
	.byte	0xa
	.byte	0x6c
	.byte	0x8
	.long	0x79
	.byte	0x88
	.uleb128 0x1
	.long	.LASF118
	.byte	0xa
	.byte	0x6d
	.byte	0x17
	.long	0x822
	.byte	0x90
	.uleb128 0x1
	.long	.LASF105
	.byte	0xa
	.byte	0x70
	.byte	0x8
	.long	0x79
	.byte	0x98
	.uleb128 0x1
	.long	.LASF106
	.byte	0xa
	.byte	0x71
	.byte	0x8
	.long	0x79
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF107
	.byte	0xa
	.byte	0x72
	.byte	0x8
	.long	0x79
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF108
	.byte	0xa
	.byte	0x73
	.byte	0x8
	.long	0x79
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF119
	.byte	0xa
	.byte	0x75
	.byte	0x9
	.long	0x48
	.byte	0xb8
	.byte	0
	.uleb128 0x3
	.long	0x6cf
	.uleb128 0xb
	.long	.LASF120
	.byte	0x10
	.byte	0xa
	.byte	0x7e
	.byte	0x8
	.long	0x822
	.uleb128 0x7
	.string	"ptr"
	.byte	0xa
	.byte	0x7f
	.byte	0x9
	.long	0x48
	.byte	0
	.uleb128 0x1
	.long	.LASF121
	.byte	0xa
	.byte	0x80
	.byte	0x17
	.long	0x822
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	0x7fa
	.uleb128 0x5
	.long	.LASF111
	.byte	0xa
	.byte	0x77
	.byte	0x3
	.long	0x6db
	.uleb128 0xb
	.long	.LASF122
	.byte	0x20
	.byte	0xa
	.byte	0x8b
	.byte	0x10
	.long	0x875
	.uleb128 0x1
	.long	.LASF123
	.byte	0xa
	.byte	0x8e
	.byte	0xa
	.long	0x875
	.byte	0
	.uleb128 0x1
	.long	.LASF124
	.byte	0xa
	.byte	0x8f
	.byte	0x8
	.long	0x4a0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF125
	.byte	0xa
	.byte	0x90
	.byte	0x7
	.long	0x66
	.byte	0x10
	.uleb128 0x1
	.long	.LASF126
	.byte	0xa
	.byte	0x91
	.byte	0x9
	.long	0xa4
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.long	0xa4
	.uleb128 0x5
	.long	.LASF122
	.byte	0xa
	.byte	0x93
	.byte	0x3
	.long	0x833
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.long	.LASF127
	.uleb128 0xb
	.long	.LASF128
	.byte	0xb0
	.byte	0xb
	.byte	0x53
	.byte	0x8
	.long	0xa2e
	.uleb128 0x1
	.long	.LASF129
	.byte	0xb
	.byte	0x55
	.byte	0xe
	.long	0x298
	.byte	0
	.uleb128 0x1
	.long	.LASF130
	.byte	0xb
	.byte	0x56
	.byte	0xe
	.long	0x298
	.byte	0x8
	.uleb128 0x1
	.long	.LASF131
	.byte	0xb
	.byte	0x57
	.byte	0xe
	.long	0x298
	.byte	0x10
	.uleb128 0x1
	.long	.LASF132
	.byte	0xb
	.byte	0x58
	.byte	0xe
	.long	0x298
	.byte	0x18
	.uleb128 0x1
	.long	.LASF133
	.byte	0xb
	.byte	0x59
	.byte	0xe
	.long	0x298
	.byte	0x20
	.uleb128 0x1
	.long	.LASF134
	.byte	0xb
	.byte	0x5a
	.byte	0xe
	.long	0x298
	.byte	0x28
	.uleb128 0x1
	.long	.LASF135
	.byte	0xb
	.byte	0x5b
	.byte	0xe
	.long	0x298
	.byte	0x30
	.uleb128 0x1
	.long	.LASF136
	.byte	0xb
	.byte	0x5d
	.byte	0xb
	.long	0x41
	.byte	0x38
	.uleb128 0x1
	.long	.LASF88
	.byte	0xb
	.byte	0x5e
	.byte	0xb
	.long	0x41
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF137
	.byte	0xb
	.byte	0x5f
	.byte	0xb
	.long	0x41
	.byte	0x40
	.uleb128 0x1
	.long	.LASF138
	.byte	0xb
	.byte	0x60
	.byte	0xb
	.long	0x41
	.byte	0x44
	.uleb128 0x1
	.long	.LASF139
	.byte	0xb
	.byte	0x61
	.byte	0xb
	.long	0x41
	.byte	0x48
	.uleb128 0x1
	.long	.LASF140
	.byte	0xb
	.byte	0x62
	.byte	0xb
	.long	0x41
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF141
	.byte	0xb
	.byte	0x63
	.byte	0xb
	.long	0x41
	.byte	0x50
	.uleb128 0x1
	.long	.LASF142
	.byte	0xb
	.byte	0x64
	.byte	0xb
	.long	0x41
	.byte	0x54
	.uleb128 0x1
	.long	.LASF143
	.byte	0xb
	.byte	0x65
	.byte	0xb
	.long	0x41
	.byte	0x58
	.uleb128 0x1
	.long	.LASF144
	.byte	0xb
	.byte	0x66
	.byte	0xb
	.long	0x41
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF145
	.byte	0xb
	.byte	0x67
	.byte	0x8
	.long	0xa2e
	.byte	0x60
	.uleb128 0x1
	.long	.LASF146
	.byte	0xb
	.byte	0x68
	.byte	0xb
	.long	0x41
	.byte	0x64
	.uleb128 0x1
	.long	.LASF147
	.byte	0xb
	.byte	0x69
	.byte	0xb
	.long	0x41
	.byte	0x68
	.uleb128 0x1
	.long	.LASF148
	.byte	0xb
	.byte	0x6a
	.byte	0x8
	.long	0xa2e
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF149
	.byte	0xb
	.byte	0x6b
	.byte	0xb
	.long	0x41
	.byte	0x70
	.uleb128 0x1
	.long	.LASF150
	.byte	0xb
	.byte	0x6d
	.byte	0xb
	.long	0x41
	.byte	0x74
	.uleb128 0x1
	.long	.LASF151
	.byte	0xb
	.byte	0x6e
	.byte	0x8
	.long	0x6c8
	.byte	0x78
	.uleb128 0x1
	.long	.LASF152
	.byte	0xb
	.byte	0x6f
	.byte	0x8
	.long	0x6c8
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF153
	.byte	0xb
	.byte	0x71
	.byte	0x6
	.long	0xa2e
	.byte	0x80
	.uleb128 0x1
	.long	.LASF154
	.byte	0xb
	.byte	0x72
	.byte	0xe
	.long	0x298
	.byte	0x88
	.uleb128 0x1
	.long	.LASF155
	.byte	0xb
	.byte	0x73
	.byte	0xe
	.long	0x298
	.byte	0x90
	.uleb128 0x1
	.long	.LASF156
	.byte	0xb
	.byte	0x74
	.byte	0x6
	.long	0x66
	.byte	0x98
	.uleb128 0x1
	.long	.LASF157
	.byte	0xb
	.byte	0x75
	.byte	0xe
	.long	0x298
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF158
	.byte	0xb
	.byte	0x77
	.byte	0xe
	.long	0x298
	.byte	0xa8
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.long	.LASF159
	.uleb128 0x16
	.long	.LASF161
	.byte	0xb
	.byte	0x7f
	.byte	0x17
	.long	0xa41
	.uleb128 0x3
	.long	0x88d
	.uleb128 0xe
	.byte	0x28
	.byte	0xd
	.byte	0xd
	.long	0xaaa
	.uleb128 0x1
	.long	.LASF57
	.byte	0xd
	.byte	0xe
	.byte	0x9
	.long	0x875
	.byte	0
	.uleb128 0x1
	.long	.LASF162
	.byte	0xd
	.byte	0xf
	.byte	0x8
	.long	0xa4
	.byte	0x8
	.uleb128 0x1
	.long	.LASF163
	.byte	0xd
	.byte	0x10
	.byte	0x8
	.long	0xa4
	.byte	0x10
	.uleb128 0x1
	.long	.LASF164
	.byte	0xd
	.byte	0x11
	.byte	0x6
	.long	0x66
	.byte	0x18
	.uleb128 0x1
	.long	.LASF165
	.byte	0xd
	.byte	0x12
	.byte	0x6
	.long	0x66
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF166
	.byte	0xd
	.byte	0x13
	.byte	0x6
	.long	0x66
	.byte	0x20
	.uleb128 0x1
	.long	.LASF167
	.byte	0xd
	.byte	0x14
	.byte	0x6
	.long	0x66
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.long	.LASF168
	.byte	0xd
	.byte	0x15
	.byte	0x2
	.long	0xa46
	.uleb128 0x18
	.value	0x3d0
	.byte	0xe
	.byte	0x13
	.long	0xb82
	.uleb128 0x1
	.long	.LASF169
	.byte	0xe
	.byte	0x14
	.byte	0xa
	.long	0x2a2
	.byte	0
	.uleb128 0x7
	.string	"os"
	.byte	0xe
	.byte	0x15
	.byte	0x14
	.long	0x4bb
	.byte	0x8
	.uleb128 0xc
	.string	"og"
	.byte	0x17
	.byte	0xc
	.long	0x394
	.value	0x1a0
	.uleb128 0xc
	.string	"op"
	.byte	0x19
	.byte	0xe
	.long	0x51e
	.value	0x1c0
	.uleb128 0xc
	.string	"vi"
	.byte	0x1b
	.byte	0xf
	.long	0x5a0
	.value	0x1f0
	.uleb128 0xc
	.string	"vc"
	.byte	0x1d
	.byte	0x12
	.long	0x87a
	.value	0x228
	.uleb128 0xc
	.string	"vd"
	.byte	0x1f
	.byte	0x14
	.long	0x6cf
	.value	0x248
	.uleb128 0xc
	.string	"vb"
	.byte	0x20
	.byte	0x10
	.long	0x827
	.value	0x2d8
	.uleb128 0xc
	.string	"eos"
	.byte	0x22
	.byte	0x7
	.long	0x66
	.value	0x398
	.uleb128 0x9
	.long	.LASF170
	.byte	0xe
	.byte	0x24
	.byte	0x8
	.long	0x79
	.value	0x3a0
	.uleb128 0x9
	.long	.LASF171
	.byte	0xe
	.byte	0x25
	.byte	0x8
	.long	0x79
	.value	0x3a8
	.uleb128 0x9
	.long	.LASF172
	.byte	0xe
	.byte	0x27
	.byte	0x12
	.long	0xb82
	.value	0x3b0
	.uleb128 0x9
	.long	.LASF173
	.byte	0xe
	.byte	0x28
	.byte	0x12
	.long	0xb82
	.value	0x3b8
	.uleb128 0x9
	.long	.LASF174
	.byte	0xe
	.byte	0x2a
	.byte	0xa
	.long	0x2bf
	.value	0x3c0
	.uleb128 0x9
	.long	.LASF175
	.byte	0xe
	.byte	0x2b
	.byte	0xc
	.long	0x41
	.value	0x3c8
	.byte	0
	.uleb128 0x3
	.long	0xaaa
	.uleb128 0x5
	.long	.LASF176
	.byte	0xe
	.byte	0x2c
	.byte	0x2
	.long	0xab6
	.uleb128 0x16
	.long	.LASF177
	.byte	0xe
	.byte	0x32
	.byte	0x16
	.long	0xb9f
	.uleb128 0x3
	.long	0xb87
	.uleb128 0x17
	.long	.LASF178
	.byte	0xd
	.byte	0xe
	.long	0xb87
	.uleb128 0x9
	.byte	0x3
	.quad	record
	.uleb128 0x24
	.long	0xb93
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x9
	.byte	0x3
	.quad	record_struct
	.uleb128 0x17
	.long	.LASF179
	.byte	0x14
	.byte	0x5
	.long	0xa2e
	.uleb128 0x9
	.byte	0x3
	.quad	removing
	.uleb128 0x17
	.long	.LASF180
	.byte	0x15
	.byte	0x5
	.long	0xa2e
	.uleb128 0x9
	.byte	0x3
	.quad	start
	.uleb128 0x4
	.long	.LASF181
	.byte	0xa
	.byte	0xc2
	.byte	0xc
	.long	0x66
	.long	0xc10
	.uleb128 0x2
	.long	0x7f5
	.uleb128 0x2
	.long	0xc10
	.byte	0
	.uleb128 0x3
	.long	0x827
	.uleb128 0x4
	.long	.LASF182
	.byte	0xa
	.byte	0xc6
	.byte	0xc
	.long	0x66
	.long	0xc30
	.uleb128 0x2
	.long	0x7f5
	.uleb128 0x2
	.long	0xc30
	.byte	0
	.uleb128 0x3
	.long	0x51e
	.uleb128 0x4
	.long	.LASF183
	.byte	0x9
	.byte	0xc4
	.byte	0xc
	.long	0x66
	.long	0xc4b
	.uleb128 0x2
	.long	0xc4b
	.byte	0
	.uleb128 0x3
	.long	0x3a0
	.uleb128 0x4
	.long	.LASF184
	.byte	0x9
	.byte	0xa0
	.byte	0xc
	.long	0x66
	.long	0xc6b
	.uleb128 0x2
	.long	0xc6b
	.uleb128 0x2
	.long	0xc70
	.byte	0
	.uleb128 0x3
	.long	0x4bb
	.uleb128 0x3
	.long	0x394
	.uleb128 0x4
	.long	.LASF185
	.byte	0xa
	.byte	0xc5
	.byte	0xc
	.long	0x66
	.long	0xc8b
	.uleb128 0x2
	.long	0xc10
	.byte	0
	.uleb128 0x4
	.long	.LASF186
	.byte	0xa
	.byte	0xc3
	.byte	0xc
	.long	0x66
	.long	0xca6
	.uleb128 0x2
	.long	0xc10
	.uleb128 0x2
	.long	0xc30
	.byte	0
	.uleb128 0x4
	.long	.LASF187
	.byte	0xf
	.byte	0x2b
	.byte	0xe
	.long	0x48
	.long	0xcc6
	.uleb128 0x2
	.long	0x48
	.uleb128 0x2
	.long	0x2de
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x4
	.long	.LASF188
	.byte	0xa
	.byte	0xc0
	.byte	0x10
	.long	0x6be
	.long	0xce1
	.uleb128 0x2
	.long	0x7f5
	.uleb128 0x2
	.long	0x66
	.byte	0
	.uleb128 0x4
	.long	.LASF189
	.byte	0xa
	.byte	0xc1
	.byte	0xc
	.long	0x66
	.long	0xcfc
	.uleb128 0x2
	.long	0x7f5
	.uleb128 0x2
	.long	0x66
	.byte	0
	.uleb128 0x25
	.long	.LASF190
	.byte	0x10
	.byte	0x45
	.byte	0xd
	.long	0xd1d
	.uleb128 0x2
	.long	0x298
	.uleb128 0x2
	.long	0x298
	.uleb128 0x2
	.long	0x41
	.uleb128 0x2
	.long	0x298
	.byte	0
	.uleb128 0xa
	.long	.LASF191
	.byte	0xa
	.byte	0xa5
	.byte	0xd
	.long	0xd2f
	.uleb128 0x2
	.long	0x6b9
	.byte	0
	.uleb128 0xa
	.long	.LASF192
	.byte	0xa
	.byte	0xad
	.byte	0xd
	.long	0xd41
	.uleb128 0x2
	.long	0xd41
	.byte	0
	.uleb128 0x3
	.long	0x87a
	.uleb128 0xa
	.long	.LASF193
	.byte	0xa
	.byte	0xb1
	.byte	0xd
	.long	0xd58
	.uleb128 0x2
	.long	0x7f5
	.byte	0
	.uleb128 0x4
	.long	.LASF194
	.byte	0xa
	.byte	0xb0
	.byte	0xc
	.long	0x66
	.long	0xd6e
	.uleb128 0x2
	.long	0xc10
	.byte	0
	.uleb128 0x4
	.long	.LASF195
	.byte	0x9
	.byte	0xb8
	.byte	0xc
	.long	0x66
	.long	0xd84
	.uleb128 0x2
	.long	0xc6b
	.byte	0
	.uleb128 0xf
	.long	.LASF196
	.byte	0xc
	.value	0x2e9
	.byte	0xf
	.long	0x2e
	.long	0xdaa
	.uleb128 0x2
	.long	0x2e3
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x2a7
	.byte	0
	.uleb128 0x4
	.long	.LASF197
	.byte	0x9
	.byte	0xa2
	.byte	0xc
	.long	0x66
	.long	0xdc5
	.uleb128 0x2
	.long	0xc6b
	.uleb128 0x2
	.long	0xc70
	.byte	0
	.uleb128 0x4
	.long	.LASF198
	.byte	0x9
	.byte	0x9d
	.byte	0xc
	.long	0x66
	.long	0xde0
	.uleb128 0x2
	.long	0xc6b
	.uleb128 0x2
	.long	0xc30
	.byte	0
	.uleb128 0x4
	.long	.LASF199
	.byte	0xa
	.byte	0xbb
	.byte	0xc
	.long	0x66
	.long	0xe0a
	.uleb128 0x2
	.long	0x7f5
	.uleb128 0x2
	.long	0xd41
	.uleb128 0x2
	.long	0xc30
	.uleb128 0x2
	.long	0xc30
	.uleb128 0x2
	.long	0xc30
	.byte	0
	.uleb128 0x4
	.long	.LASF200
	.byte	0x9
	.byte	0xb7
	.byte	0xc
	.long	0x66
	.long	0xe25
	.uleb128 0x2
	.long	0xc6b
	.uleb128 0x2
	.long	0x66
	.byte	0
	.uleb128 0x26
	.long	.LASF243
	.byte	0x11
	.value	0x23d
	.byte	0xc
	.long	0x66
	.uleb128 0x27
	.long	.LASF201
	.byte	0x11
	.value	0x23f
	.byte	0xd
	.long	0xe45
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x4
	.long	.LASF202
	.byte	0x12
	.byte	0x4c
	.byte	0xf
	.long	0x2bf
	.long	0xe5b
	.uleb128 0x2
	.long	0xe5b
	.byte	0
	.uleb128 0x3
	.long	0x2bf
	.uleb128 0x4
	.long	.LASF203
	.byte	0xa
	.byte	0xaf
	.byte	0xc
	.long	0x66
	.long	0xe7b
	.uleb128 0x2
	.long	0x7f5
	.uleb128 0x2
	.long	0xc10
	.byte	0
	.uleb128 0x4
	.long	.LASF204
	.byte	0xa
	.byte	0xb9
	.byte	0xc
	.long	0x66
	.long	0xe96
	.uleb128 0x2
	.long	0x7f5
	.uleb128 0x2
	.long	0x6b9
	.byte	0
	.uleb128 0xa
	.long	.LASF205
	.byte	0xa
	.byte	0xa9
	.byte	0xd
	.long	0xeb2
	.uleb128 0x2
	.long	0xd41
	.uleb128 0x2
	.long	0x298
	.uleb128 0x2
	.long	0x298
	.byte	0
	.uleb128 0xa
	.long	.LASF206
	.byte	0xa
	.byte	0xa7
	.byte	0xd
	.long	0xec4
	.uleb128 0x2
	.long	0xd41
	.byte	0
	.uleb128 0x4
	.long	.LASF207
	.byte	0xc
	.byte	0xb8
	.byte	0xc
	.long	0x66
	.long	0xeda
	.uleb128 0x2
	.long	0x2a2
	.byte	0
	.uleb128 0x4
	.long	.LASF208
	.byte	0x13
	.byte	0x9d
	.byte	0xc
	.long	0x66
	.long	0xeff
	.uleb128 0x2
	.long	0x6b9
	.uleb128 0x2
	.long	0x79
	.uleb128 0x2
	.long	0x79
	.uleb128 0x2
	.long	0x6c8
	.byte	0
	.uleb128 0xa
	.long	.LASF209
	.byte	0xa
	.byte	0xa4
	.byte	0xd
	.long	0xf11
	.uleb128 0x2
	.long	0x6b9
	.byte	0
	.uleb128 0xf
	.long	.LASF210
	.byte	0xc
	.value	0x165
	.byte	0xc
	.long	0x66
	.long	0xf2e
	.uleb128 0x2
	.long	0x2a7
	.uleb128 0x2
	.long	0x29d
	.uleb128 0x10
	.byte	0
	.uleb128 0x19
	.long	.LASF211
	.byte	0xd
	.byte	0x17
	.byte	0x14
	.long	0x2d7
	.long	0xf40
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF212
	.byte	0xd
	.byte	0x1f
	.byte	0x5
	.long	0x66
	.long	0xf60
	.uleb128 0x2
	.long	0xb82
	.uleb128 0x2
	.long	0x298
	.uleb128 0x2
	.long	0xa4
	.byte	0
	.uleb128 0x4
	.long	.LASF213
	.byte	0xd
	.byte	0x1d
	.byte	0x10
	.long	0xb82
	.long	0xf76
	.uleb128 0x2
	.long	0x66
	.byte	0
	.uleb128 0xf
	.long	.LASF214
	.byte	0xc
	.value	0x16b
	.byte	0xc
	.long	0x66
	.long	0xf8e
	.uleb128 0x2
	.long	0x298
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF215
	.byte	0xf
	.value	0x197
	.byte	0xf
	.long	0x2e
	.long	0xfa5
	.uleb128 0x2
	.long	0x298
	.byte	0
	.uleb128 0x4
	.long	.LASF216
	.byte	0xf
	.byte	0x9c
	.byte	0xc
	.long	0x66
	.long	0xfc0
	.uleb128 0x2
	.long	0x298
	.uleb128 0x2
	.long	0x298
	.byte	0
	.uleb128 0x4
	.long	.LASF217
	.byte	0xd
	.byte	0x1e
	.byte	0x5
	.long	0x66
	.long	0xfdb
	.uleb128 0x2
	.long	0xb82
	.uleb128 0x2
	.long	0xa4
	.byte	0
	.uleb128 0xa
	.long	.LASF218
	.byte	0x14
	.byte	0x27
	.byte	0x6
	.long	0xfed
	.uleb128 0x2
	.long	0xa4
	.byte	0
	.uleb128 0xa
	.long	.LASF219
	.byte	0x14
	.byte	0x28
	.byte	0x6
	.long	0x1004
	.uleb128 0x2
	.long	0x2bf
	.uleb128 0x2
	.long	0xa4
	.byte	0
	.uleb128 0x19
	.long	.LASF220
	.byte	0x14
	.byte	0x2d
	.byte	0x7
	.long	0xa4
	.long	0x1016
	.uleb128 0x10
	.byte	0
	.uleb128 0x1a
	.long	.LASF235
	.byte	0xe6
	.long	0x66
	.quad	.LFB313
	.quad	.LFE313-.LFB313
	.uleb128 0x1
	.byte	0x9c
	.long	0x10cc
	.uleb128 0x1b
	.long	.LASF221
	.byte	0xe6
	.byte	0x22
	.long	0x6c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF222
	.byte	0xe6
	.byte	0x37
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF244
	.long	0x10dc
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.0
	.uleb128 0x29
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x10a9
	.uleb128 0x8
	.long	.LASF56
	.byte	0xf2
	.byte	0xb
	.long	0x6be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2a
	.string	"ch"
	.byte	0x1
	.byte	0xf4
	.byte	0xb
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x11
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2b
	.long	.LASF223
	.byte	0x1
	.value	0x10c
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xb0
	.long	0x10dc
	.uleb128 0x14
	.long	0x3a
	.byte	0x15
	.byte	0
	.uleb128 0x12
	.long	0x10cc
	.uleb128 0x2c
	.long	.LASF245
	.byte	0x1
	.byte	0xd0
	.byte	0x6
	.quad	.LFB312
	.quad	.LFE312-.LFB312
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.long	.LASF227
	.byte	0x89
	.long	0x66
	.quad	.LFB311
	.quad	.LFE311-.LFB311
	.uleb128 0x1
	.byte	0x9c
	.long	0x1170
	.uleb128 0x11
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x8
	.long	.LASF224
	.byte	0xaf
	.byte	0xe
	.long	0x51e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x8
	.long	.LASF225
	.byte	0xaf
	.byte	0x1a
	.long	0x51e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x8
	.long	.LASF226
	.byte	0xaf
	.byte	0x27
	.long	0x51e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LLRL0
	.uleb128 0x8
	.long	.LASF223
	.byte	0xb6
	.byte	0x8
	.long	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF228
	.byte	0x44
	.long	0x66
	.quad	.LFB310
	.quad	.LFE310-.LFB310
	.uleb128 0x1
	.byte	0x9c
	.long	0x11f7
	.uleb128 0x8
	.long	.LASF229
	.byte	0x45
	.byte	0x6
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.long	.LASF230
	.byte	0x46
	.byte	0x8
	.long	0x6c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF231
	.byte	0x47
	.byte	0xb
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.long	.LASF232
	.byte	0x49
	.byte	0x15
	.long	0x2d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x8
	.long	.LASF233
	.byte	0x4d
	.byte	0x10
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.long	.LASF234
	.byte	0x4f
	.byte	0x10
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF236
	.byte	0x34
	.long	0x66
	.quad	.LFB309
	.quad	.LFE309-.LFB309
	.uleb128 0x1
	.byte	0x9c
	.long	0x124a
	.uleb128 0x1d
	.string	"a"
	.byte	0x21
	.long	0x2de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"b"
	.byte	0x30
	.long	0x2de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.long	.LASF237
	.byte	0x35
	.byte	0xb
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF238
	.byte	0x36
	.byte	0xb
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF239
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.quad	.LFB308
	.quad	.LFE308-.LFB308
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	.LASF240
	.byte	0x24
	.byte	0x8
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x1c
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
	.sleb128 5
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x4
	.uleb128 .LBB4-.Ltext0
	.uleb128 .LBE4-.Ltext0
	.byte	0x4
	.uleb128 .LBB5-.Ltext0
	.uleb128 .LBE5-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF162:
	.string	"dir_path"
.LASF10:
	.string	"long int"
.LASF178:
	.string	"record"
.LASF140:
	.string	"segment_size"
.LASF34:
	.string	"_shortbuf"
.LASF243:
	.string	"rand"
.LASF124:
	.string	"comment_lengths"
.LASF103:
	.string	"centerW"
.LASF105:
	.string	"glue_bits"
.LASF242:
	.string	"_IO_lock_t"
.LASF65:
	.string	"body_storage"
.LASF170:
	.string	"endfile_size"
.LASF169:
	.string	"output"
.LASF215:
	.string	"strlen"
.LASF171:
	.string	"sample_count"
.LASF160:
	.string	"stderr"
.LASF240:
	.string	"filepath"
.LASF23:
	.string	"_IO_buf_end"
.LASF200:
	.string	"ogg_stream_init"
.LASF148:
	.string	"data_record_ok"
.LASF111:
	.string	"vorbis_block"
.LASF230:
	.string	"file_compression_ratio"
.LASF112:
	.string	"pcmend"
.LASF21:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF121:
	.string	"next"
.LASF87:
	.string	"version"
.LASF39:
	.string	"_freeres_list"
.LASF136:
	.string	"sample_rate"
.LASF99:
	.string	"pcm_current"
.LASF44:
	.string	"FILE"
.LASF77:
	.string	"serialno"
.LASF197:
	.string	"ogg_stream_flush"
.LASF205:
	.string	"vorbis_comment_add_tag"
.LASF150:
	.string	"calibration_time"
.LASF221:
	.string	"frames_buffer"
.LASF156:
	.string	"mqtt_qos"
.LASF167:
	.string	"update"
.LASF113:
	.string	"mode"
.LASF164:
	.string	"current_idx"
.LASF186:
	.string	"vorbis_analysis"
.LASF141:
	.string	"levels_record_period"
.LASF15:
	.string	"_flags"
.LASF183:
	.string	"ogg_page_eos"
.LASF241:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF120:
	.string	"alloc_chain"
.LASF57:
	.string	"storage"
.LASF194:
	.string	"vorbis_block_clear"
.LASF117:
	.string	"totaluse"
.LASF26:
	.string	"_IO_save_end"
.LASF163:
	.string	"file_format"
.LASF122:
	.string	"vorbis_comment"
.LASF46:
	.string	"_IO_codecvt"
.LASF174:
	.string	"time_start"
.LASF233:
	.string	"max_audio_files"
.LASF64:
	.string	"body_data"
.LASF223:
	.string	"result"
.LASF51:
	.string	"long long unsigned int"
.LASF218:
	.string	"output_file_open"
.LASF109:
	.string	"backend_state"
.LASF126:
	.string	"vendor"
.LASF199:
	.string	"vorbis_analysis_headerout"
.LASF177:
	.string	"record_struct"
.LASF193:
	.string	"vorbis_dsp_clear"
.LASF80:
	.string	"granulepos"
.LASF36:
	.string	"_offset"
.LASF202:
	.string	"time"
.LASF198:
	.string	"ogg_stream_packetin"
.LASF90:
	.string	"bitrate_upper"
.LASF135:
	.string	"data_output_format"
.LASF210:
	.string	"fprintf"
.LASF29:
	.string	"_fileno"
.LASF78:
	.string	"pageno"
.LASF191:
	.string	"vorbis_info_clear"
.LASF147:
	.string	"data_file_duration"
.LASF50:
	.string	"int64_t"
.LASF18:
	.string	"_IO_read_base"
.LASF159:
	.string	"_Bool"
.LASF93:
	.string	"bitrate_window"
.LASF237:
	.string	"file_a"
.LASF238:
	.string	"file_b"
.LASF54:
	.string	"endbyte"
.LASF83:
	.string	"bytes"
.LASF94:
	.string	"codec_setup"
.LASF245:
	.string	"record_stop"
.LASF116:
	.string	"localalloc"
.LASF132:
	.string	"output_path"
.LASF211:
	.string	"get_free_disk_space"
.LASF158:
	.string	"server_socket"
.LASF133:
	.string	"output_filename"
.LASF14:
	.string	"char"
.LASF89:
	.string	"rate"
.LASF42:
	.string	"_mode"
.LASF213:
	.string	"create_files_storage"
.LASF139:
	.string	"segment_duration"
.LASF192:
	.string	"vorbis_comment_clear"
.LASF131:
	.string	"input_file"
.LASF19:
	.string	"_IO_write_base"
.LASF16:
	.string	"_IO_read_ptr"
.LASF63:
	.string	"ogg_page"
.LASF101:
	.string	"preextrapolate"
.LASF115:
	.string	"localtop"
.LASF166:
	.string	"space"
.LASF79:
	.string	"packetno"
.LASF49:
	.string	"time_t"
.LASF179:
	.string	"removing"
.LASF98:
	.string	"pcm_storage"
.LASF107:
	.string	"floor_bits"
.LASF182:
	.string	"vorbis_bitrate_flushpacket"
.LASF45:
	.string	"_IO_marker"
.LASF48:
	.string	"long long int"
.LASF214:
	.string	"printf"
.LASF24:
	.string	"_IO_save_base"
.LASF225:
	.string	"header_comm"
.LASF59:
	.string	"header"
.LASF73:
	.string	"lacing_returned"
.LASF217:
	.string	"add_file"
.LASF88:
	.string	"channels"
.LASF27:
	.string	"_markers"
.LASF114:
	.string	"localstore"
.LASF168:
	.string	"Files_Storage"
.LASF144:
	.string	"audio_file_duration"
.LASF219:
	.string	"output_new_filename"
.LASF56:
	.string	"buffer"
.LASF165:
	.string	"size"
.LASF40:
	.string	"_freeres_buf"
.LASF201:
	.string	"srand"
.LASF25:
	.string	"_IO_backup_base"
.LASF134:
	.string	"audio_output_format"
.LASF81:
	.string	"ogg_stream_state"
.LASF69:
	.string	"granule_vals"
.LASF231:
	.string	"data_line_size"
.LASF41:
	.string	"__pad5"
.LASF145:
	.string	"audio_record_ok"
.LASF189:
	.string	"vorbis_analysis_wrote"
.LASF66:
	.string	"body_fill"
.LASF157:
	.string	"mqtt_device_credential"
.LASF33:
	.string	"_vtable_offset"
.LASF102:
	.string	"eofflag"
.LASF9:
	.string	"__int64_t"
.LASF52:
	.string	"long double"
.LASF227:
	.string	"record_start"
.LASF224:
	.string	"header_pkt"
.LASF92:
	.string	"bitrate_lower"
.LASF62:
	.string	"body_len"
.LASF195:
	.string	"ogg_stream_clear"
.LASF108:
	.string	"res_bits"
.LASF8:
	.string	"size_t"
.LASF220:
	.string	"output_get_audio_filepath"
.LASF60:
	.string	"header_len"
.LASF129:
	.string	"identification"
.LASF104:
	.string	"sequence"
.LASF67:
	.string	"body_returned"
.LASF97:
	.string	"pcmret"
.LASF128:
	.string	"config"
.LASF203:
	.string	"vorbis_block_init"
.LASF86:
	.string	"vorbis_info"
.LASF17:
	.string	"_IO_read_end"
.LASF7:
	.string	"short int"
.LASF188:
	.string	"vorbis_analysis_buffer"
.LASF228:
	.string	"storage_window_init"
.LASF173:
	.string	"created_data_files"
.LASF137:
	.string	"bits_per_sample"
.LASF96:
	.string	"analysisp"
.LASF72:
	.string	"lacing_packet"
.LASF100:
	.string	"pcm_returned"
.LASF123:
	.string	"user_comments"
.LASF47:
	.string	"_IO_wide_data"
.LASF207:
	.string	"fclose"
.LASF138:
	.string	"block_size"
.LASF204:
	.string	"vorbis_analysis_init"
.LASF151:
	.string	"calibration_reference"
.LASF176:
	.string	"record_state"
.LASF222:
	.string	"frames_read"
.LASF180:
	.string	"start"
.LASF184:
	.string	"ogg_stream_pageout"
.LASF22:
	.string	"_IO_buf_base"
.LASF118:
	.string	"reap"
.LASF152:
	.string	"calibration_delta"
.LASF38:
	.string	"_wide_data"
.LASF232:
	.string	"memory_needed"
.LASF35:
	.string	"_lock"
.LASF149:
	.string	"background_duration"
.LASF2:
	.string	"long unsigned int"
.LASF74:
	.string	"header_fill"
.LASF31:
	.string	"_old_offset"
.LASF85:
	.string	"_IO_FILE"
.LASF110:
	.string	"float"
.LASF181:
	.string	"vorbis_analysis_blockout"
.LASF82:
	.string	"packet"
.LASF190:
	.string	"__assert_fail"
.LASF61:
	.string	"body"
.LASF236:
	.string	"compare_by_name"
.LASF172:
	.string	"created_audio_files"
.LASF4:
	.string	"unsigned char"
.LASF55:
	.string	"endbit"
.LASF84:
	.string	"ogg_packet"
.LASF58:
	.string	"oggpack_buffer"
.LASF119:
	.string	"internal"
.LASF20:
	.string	"_IO_write_ptr"
.LASF143:
	.string	"audio_loop_recording"
.LASF209:
	.string	"vorbis_info_init"
.LASF212:
	.string	"load_files_from_directory"
.LASF155:
	.string	"mqtt_topic"
.LASF70:
	.string	"lacing_storage"
.LASF161:
	.string	"config_struct"
.LASF13:
	.string	"__time_t"
.LASF130:
	.string	"input_device"
.LASF37:
	.string	"_codecvt"
.LASF154:
	.string	"mqtt_broker"
.LASF175:
	.string	"time_elapsed"
.LASF153:
	.string	"mqtt_enable"
.LASF196:
	.string	"fwrite"
.LASF11:
	.string	"__off_t"
.LASF226:
	.string	"header_code"
.LASF6:
	.string	"signed char"
.LASF208:
	.string	"vorbis_encode_init_vbr"
.LASF5:
	.string	"short unsigned int"
.LASF187:
	.string	"memcpy"
.LASF53:
	.string	"ogg_int64_t"
.LASF71:
	.string	"lacing_fill"
.LASF234:
	.string	"max_data_files"
.LASF244:
	.string	"__PRETTY_FUNCTION__"
.LASF75:
	.string	"e_o_s"
.LASF142:
	.string	"run_duration"
.LASF127:
	.string	"double"
.LASF206:
	.string	"vorbis_comment_init"
.LASF28:
	.string	"_chain"
.LASF95:
	.string	"vorbis_dsp_state"
.LASF235:
	.string	"record_append_samples"
.LASF30:
	.string	"_flags2"
.LASF125:
	.string	"comments"
.LASF106:
	.string	"time_bits"
.LASF32:
	.string	"_cur_column"
.LASF76:
	.string	"b_o_s"
.LASF229:
	.string	"sample_byte_size"
.LASF185:
	.string	"vorbis_bitrate_addblock"
.LASF146:
	.string	"data_loop_recording"
.LASF91:
	.string	"bitrate_nominal"
.LASF12:
	.string	"__off64_t"
.LASF68:
	.string	"lacing_vals"
.LASF43:
	.string	"_unused2"
.LASF216:
	.string	"strcmp"
.LASF239:
	.string	"create_output_file"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/record.c"
.LASF1:
	.string	"/home/aluno/Desktop/sound_meter-master_v03_1"
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
