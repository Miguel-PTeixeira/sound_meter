	.file	"record.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v03_1" "src/record.c"
	.globl	record
	.bss
	.align 32
	.type	record, @object
	.size	record, 984
record:
	.zero	984
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
	.loc 1 33 27
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 34 18
	movq	config_struct(%rip), %rax
	movq	16(%rax), %rax
	.loc 1 34 4
	testq	%rax, %rax
	jne	.L2
	.loc 1 35 3
	movl	$0, %eax
	call	output_get_audio_filepath@PLT
	.loc 1 35 3 is_stmt 0 discriminator 1
	movq	%rax, %rsi
	movl	$0, %edi
	call	output_new_filename@PLT
.L2:
	.loc 1 37 19 is_stmt 1
	movl	$0, %eax
	call	output_get_audio_filepath@PLT
	movq	%rax, -8(%rbp)
	.loc 1 38 18
	movq	config_struct(%rip), %rax
	movzbl	96(%rax), %eax
	.loc 1 38 4
	testb	%al, %al
	je	.L3
	.loc 1 39 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	output_file_open@PLT
.L3:
	.loc 1 40 2
	movq	952+record(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_file@PLT
	.loc 1 41 1
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
	.loc 1 53 51
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
	.loc 1 54 11
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 55 11
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 56 12
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 57 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE309:
	.size	compare_by_name, .-compare_by_name
	.section	.rodata
	.align 8
.LC0:
	.string	"For file managing reasons, the parameters used will be:"
	.align 8
.LC1:
	.string	"\taudio_file_duration = %d\n\taudio_loop_recording = %d\n"
	.align 8
.LC2:
	.string	"\tdata_file_duration = %d\n\tdata_loop_recording = %d\n"
.LC3:
	.string	".ogg"
.LC4:
	.string	".csv"
	.align 8
.LC5:
	.string	"\tFree Disk Space = %lld bytes\n"
	.align 8
.LC6:
	.string	"\tMemory Needed =   %lld bytes\n"
	.align 8
.LC7:
	.string	"ERROR : not enough space in disk for %lld bytes\n"
	.text
	.globl	storage_window_init
	.type	storage_window_init, @function
storage_window_init:
.LFB310:
	.loc 1 69 26
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 70 6
	movl	$16, -20(%rbp)
	.loc 1 71 54
	movq	config_struct(%rip), %rax
	movl	56(%rax), %edx
	.loc 1 71 68
	movl	-20(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, %ecx
	.loc 1 71 101
	movq	record_struct(%rip), %rax
	.loc 1 71 105
	movq	520(%rax), %rsi
	.loc 1 71 87
	movq	%rcx, %rax
	cqto
	idivq	%rsi
	.loc 1 71 15
	movl	%eax, -16(%rbp)
	.loc 1 76 31
	movq	config_struct(%rip), %rax
	movl	56(%rax), %edx
	.loc 1 76 60
	movq	config_struct(%rip), %rax
	movl	92(%rax), %eax
	.loc 1 76 45
	imull	%edx, %eax
	.loc 1 76 16
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	.loc 1 77 18
	movq	config_struct(%rip), %rax
	movq	16(%rax), %rax
	.loc 1 77 4
	testq	%rax, %rax
	jne	.L7
.LBB2:
	.loc 1 78 48
	movq	config_struct(%rip), %rax
	movl	88(%rax), %edx
	.loc 1 78 87
	movq	config_struct(%rip), %rax
	movl	92(%rax), %eax
	.loc 1 78 71
	addl	%edx, %eax
	leal	-1(%rax), %ecx
	.loc 1 78 128
	movq	config_struct(%rip), %rax
	movl	92(%rax), %esi
	.loc 1 78 16
	movl	%ecx, %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -28(%rbp)
	.loc 1 80 47
	movq	config_struct(%rip), %rax
	movl	100(%rax), %edx
	.loc 1 80 85
	movq	config_struct(%rip), %rax
	movl	104(%rax), %eax
	.loc 1 80 69
	addl	%edx, %eax
	leal	-1(%rax), %ecx
	.loc 1 80 125
	movq	config_struct(%rip), %rax
	movl	104(%rax), %esi
	.loc 1 80 16
	movl	%ecx, %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -24(%rbp)
	.loc 1 82 3
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 83 19
	movq	config_struct(%rip), %rax
	movzbl	96(%rax), %eax
	.loc 1 83 5
	testb	%al, %al
	je	.L8
	.loc 1 84 55
	movq	config_struct(%rip), %rax
	movl	92(%rax), %edx
	.loc 1 84 17
	movq	config_struct(%rip), %rax
	.loc 1 84 77
	imull	-28(%rbp), %edx
	.loc 1 84 40
	movl	%edx, 88(%rax)
	.loc 1 88 18
	movq	config_struct(%rip), %rax
	.loc 1 85 4
	movl	88(%rax), %edx
	.loc 1 87 18
	movq	config_struct(%rip), %rax
	.loc 1 85 4
	movl	92(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L9
.L8:
	.loc 1 90 25
	movl	$0, -28(%rbp)
.L9:
	.loc 1 93 19
	movq	config_struct(%rip), %rax
	movzbl	108(%rax), %eax
	.loc 1 93 5
	testb	%al, %al
	je	.L10
	.loc 1 94 54
	movq	config_struct(%rip), %rax
	movl	104(%rax), %edx
	.loc 1 94 17
	movq	config_struct(%rip), %rax
	.loc 1 94 75
	imull	-24(%rbp), %edx
	.loc 1 94 39
	movl	%edx, 100(%rax)
	.loc 1 98 18
	movq	config_struct(%rip), %rax
	.loc 1 95 4
	movl	100(%rax), %edx
	.loc 1 97 18
	movq	config_struct(%rip), %rax
	.loc 1 95 4
	movl	104(%rax), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L11
.L10:
	.loc 1 100 24
	movl	$0, -24(%rbp)
.L11:
	.loc 1 103 38
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	create_files_storage@PLT
	.loc 1 103 36 discriminator 1
	movq	%rax, 952+record(%rip)
	.loc 1 103 15 discriminator 1
	movq	952+record(%rip), %rax
	.loc 1 103 5 discriminator 1
	testq	%rax, %rax
	je	.L12
	.loc 1 104 34
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	create_files_storage@PLT
	.loc 1 104 32 discriminator 1
	movq	%rax, 960+record(%rip)
	.loc 1 104 12 discriminator 1
	movq	960+record(%rip), %rax
	.loc 1 103 85 discriminator 1
	testq	%rax, %rax
	jne	.L13
.L12:
	.loc 1 105 12
	movl	$0, %eax
	jmp	.L14
.L13:
	.loc 1 107 74
	movq	config_struct(%rip), %rax
	.loc 1 107 8
	movq	24(%rax), %rcx
	movq	952+record(%rip), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	load_files_from_directory@PLT
	.loc 1 107 5 discriminator 1
	testl	%eax, %eax
	je	.L15
	.loc 1 108 70
	movq	config_struct(%rip), %rax
	.loc 1 108 5
	movq	24(%rax), %rcx
	movq	960+record(%rip), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	load_files_from_directory@PLT
	.loc 1 107 96 discriminator 1
	testl	%eax, %eax
	jne	.L16
.L15:
	.loc 1 109 12
	movl	$0, %eax
	jmp	.L14
.L16:
	.loc 1 111 66
	movl	$0, %eax
	call	output_get_audio_filepath@PLT
	.loc 1 111 59 discriminator 1
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 111 12 discriminator 2
	addl	$630, %eax
	movl	%eax, -12(%rbp)
	.loc 1 113 33
	movq	config_struct(%rip), %rax
	movl	88(%rax), %edx
	.loc 1 113 71
	movq	config_struct(%rip), %rax
	movl	56(%rax), %eax
	.loc 1 113 56
	movl	%edx, %ecx
	imull	%eax, %ecx
	.loc 1 114 21
	movq	config_struct(%rip), %rax
	movl	100(%rax), %edx
	.loc 1 114 58
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	.loc 1 114 43
	imull	%edx, %eax
	.loc 1 114 81
	imull	-12(%rbp), %eax
	.loc 1 113 86
	addl	%ecx, %eax
	.loc 1 113 17
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
.L7:
.LBE2:
	.loc 1 116 36
	movl	-16(%rbp), %edi
	.loc 1 116 17
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	%rdi
	movq	%rax, -8(%rbp)
	.loc 1 117 33
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	.loc 1 117 17
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$2, %rax
	movq	%rax, -8(%rbp)
	.loc 1 119 2
	movl	$0, %eax
	call	get_free_disk_space@PLT
	.loc 1 119 2 is_stmt 0 discriminator 1
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 120 2 is_stmt 1
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 122 5
	movl	$0, %eax
	call	get_free_disk_space@PLT
	.loc 1 122 4 discriminator 1
	cmpq	-8(%rbp), %rax
	jnb	.L17
	.loc 1 123 3
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 124 10
	movl	$0, %eax
	jmp	.L14
.L17:
	.loc 1 127 9
	movl	$1, %eax
.L14:
	.loc 1 128 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE310:
	.size	storage_window_init, .-storage_window_init
	.section	.rodata
	.align 8
.LC8:
	.string	"ERROR : could not create an output_file (record.c : 173)"
	.align 8
.LC10:
	.string	"Error initializing the encoder\n\n"
.LC11:
	.string	"encoder_example.c"
.LC12:
	.string	"ENCODER"
	.text
	.globl	record_start
	.type	record_start, @function
record_start:
.LFB311:
	.loc 1 140 19
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	.loc 1 140 19
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 142 16
	movl	$0, 920+record(%rip)
	.loc 1 145 25
	movq	$0, 936+record(%rip)
	.loc 1 148 22
	movq	$0, 944+record(%rip)
	.loc 1 151 5
	movl	$0, %eax
	call	create_output_file
	.loc 1 152 16
	movq	record(%rip), %rax
	.loc 1 152 8
	testq	%rax, %rax
	jne	.L19
	.loc 1 153 4
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$56, %edx
	movl	$1, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 154 11
	movl	$0, %eax
	jmp	.L28
.L19:
	.loc 1 157 5
	leaq	496+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_info_init@PLT
	.loc 1 158 82
	movq	config_struct(%rip), %rax
	movl	56(%rax), %eax
	.loc 1 158 9
	movl	%eax, %edx
	.loc 1 158 57
	movq	config_struct(%rip), %rax
	movl	60(%rax), %eax
	.loc 1 158 9
	movl	%eax, %ecx
	movl	.LC9(%rip), %eax
	movd	%eax, %xmm0
	movq	%rcx, %rsi
	leaq	496+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_encode_init_vbr@PLT
	.loc 1 158 8 discriminator 1
	testl	%eax, %eax
	je	.L21
	.loc 1 159 9
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	movl	$1, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 160 9
	movq	record(%rip), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 161 16
	movl	$0, %eax
	jmp	.L28
.L21:
	.loc 1 165 5
	leaq	552+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_comment_init@PLT
	.loc 1 166 5
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	leaq	552+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_comment_add_tag@PLT
	.loc 1 167 5
	leaq	496+record(%rip), %rax
	movq	%rax, %rsi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_analysis_init@PLT
	.loc 1 168 5
	leaq	728+record(%rip), %rax
	movq	%rax, %rsi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_block_init@PLT
	.loc 1 171 11
	movl	$0, %edi
	call	time@PLT
	.loc 1 171 5 discriminator 1
	movl	%eax, %edi
	call	srand@PLT
	.loc 1 172 5
	call	rand@PLT
	.loc 1 172 5 is_stmt 0 discriminator 1
	movl	%eax, %esi
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_init@PLT
	.loc 1 176 5 is_stmt 1
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
	.loc 1 177 5
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_packetin@PLT
	.loc 1 178 5
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_packetin@PLT
	.loc 1 179 5
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_packetin@PLT
	.loc 1 181 11
	jmp	.L22
.L25:
.LBB3:
	.loc 1 182 22
	leaq	416+record(%rip), %rax
	movq	%rax, %rsi
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_flush@PLT
	movl	%eax, -164(%rbp)
	.loc 1 183 12
	cmpl	$0, -164(%rbp)
	je	.L30
	.loc 1 184 9
	movq	record(%rip), %rdx
	.loc 1 184 46
	movq	424+record(%rip), %rax
	.loc 1 184 9
	movq	%rax, %rsi
	.loc 1 184 25
	movq	416+record(%rip), %rax
	.loc 1 184 9
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 185 9
	movq	record(%rip), %rdx
	.loc 1 185 44
	movq	440+record(%rip), %rax
	.loc 1 185 9
	movq	%rax, %rsi
	.loc 1 185 25
	movq	432+record(%rip), %rax
	.loc 1 185 9
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
.L22:
.LBE3:
	.loc 1 181 19
	movl	920+record(%rip), %eax
	.loc 1 181 12
	testl	%eax, %eax
	je	.L25
	jmp	.L24
.L30:
.LBB4:
	.loc 1 183 26
	nop
.L24:
.LBE4:
	.loc 1 188 8
	movzbl	start(%rip), %eax
	xorl	$1, %eax
	.loc 1 188 7
	testb	%al, %al
	je	.L26
	.loc 1 189 9
	movb	$1, start(%rip)
	.loc 1 190 7
	movl	$0, %eax
	call	storage_window_init
	.loc 1 190 5 discriminator 1
	testl	%eax, %eax
	je	.L27
	.loc 1 190 46 discriminator 1
	movq	config_struct(%rip), %rax
	movzbl	96(%rax), %eax
	.loc 1 190 32 discriminator 1
	xorl	$1, %eax
	.loc 1 190 29 discriminator 1
	testb	%al, %al
	je	.L26
.L27:
	.loc 1 191 11
	movl	$0, %eax
	jmp	.L28
.L26:
	.loc 1 193 22
	movl	$0, %edi
	call	time@PLT
	.loc 1 193 20 discriminator 1
	movq	%rax, 968+record(%rip)
	.loc 1 194 22
	movl	$0, 976+record(%rip)
	.loc 1 195 12
	movl	$1, %eax
.L28:
	.loc 1 196 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
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
	je	.L33
	.loc 1 215 3
	movq	record(%rip), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 216 17
	movq	$0, record(%rip)
.L33:
	.loc 1 218 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE312:
	.size	record_stop, .-record_stop
	.section	.rodata
.LC13:
	.string	"src/record.c"
	.align 8
.LC14:
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
	je	.L35
	.loc 1 231 45 discriminator 1
	movl	$1, %eax
	.loc 1 231 45 is_stmt 0
	jmp	.L36
.L35:
	.loc 1 232 29 is_stmt 1
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	movl	%eax, %eax
	.loc 1 232 33
	cmpq	-32(%rbp), %rax
	jnb	.L37
	.loc 1 232 10 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$232, %edx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L37:
	.loc 1 236 4
	cmpq	$0, -32(%rbp)
	je	.L38
	.loc 1 236 29 discriminator 1
	movl	924+record(%rip), %eax
	.loc 1 236 20 discriminator 1
	cmpl	$1, %eax
	jne	.L39
.L38:
	.loc 1 238 3
	movl	$0, %esi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_analysis_wrote@PLT
	jmp	.L40
.L39:
.LBB5:
	.loc 1 242 65
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 242 18
	movl	%eax, %esi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_analysis_buffer@PLT
	movq	%rax, -8(%rbp)
.LBB6:
	.loc 1 244 11
	movl	$0, -16(%rbp)
	.loc 1 244 3
	jmp	.L41
.L42:
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
.L41:
	.loc 1 244 37 discriminator 1
	movq	config_struct(%rip), %rax
	movl	60(%rax), %eax
	.loc 1 244 22 discriminator 1
	movl	-16(%rbp), %edx
	cmpl	%eax, %edx
	jb	.L42
.LBE6:
	.loc 1 254 3
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_analysis_wrote@PLT
.L40:
.LBE5:
	.loc 1 257 7
	jmp	.L43
.L51:
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
	jmp	.L49
.L50:
	.loc 1 264 10
	movq	936+record(%rip), %rdx
	.loc 1 264 36
	movq	456+record(%rip), %rax
	.loc 1 264 24
	addq	%rdx, %rax
	movq	%rax, 936+record(%rip)
	.loc 1 265 4
	leaq	448+record(%rip), %rax
	movq	%rax, %rsi
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_packetin@PLT
	.loc 1 267 9
	jmp	.L47
.L48:
.LBB7:
	.loc 1 268 16
	leaq	416+record(%rip), %rax
	movq	%rax, %rsi
	leaq	8+record(%rip), %rax
	movq	%rax, %rdi
	call	ogg_stream_pageout@PLT
	movl	%eax, -12(%rbp)
	.loc 1 269 7
	cmpl	$0, -12(%rbp)
	jne	.L46
	.loc 1 269 18
	jmp	.L49
.L46:
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
	je	.L47
	.loc 1 273 43 discriminator 1
	movl	$1, 920+record(%rip)
.L47:
.LBE7:
	.loc 1 267 17
	movl	920+record(%rip), %eax
	.loc 1 267 10
	testl	%eax, %eax
	je	.L48
.L49:
	.loc 1 262 9
	leaq	448+record(%rip), %rax
	movq	%rax, %rsi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_bitrate_flushpacket@PLT
	.loc 1 262 9 is_stmt 0 discriminator 1
	testl	%eax, %eax
	jne	.L50
.L43:
	.loc 1 257 8 is_stmt 1
	leaq	728+record(%rip), %rax
	movq	%rax, %rsi
	leaq	584+record(%rip), %rax
	movq	%rax, %rdi
	call	vorbis_analysis_blockout@PLT
	.loc 1 257 55 discriminator 1
	cmpl	$1, %eax
	je	.L51
	.loc 1 278 8
	movq	944+record(%rip), %rax
	movq	%rax, %rdx
	.loc 1 278 22
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, 944+record(%rip)
	.loc 1 280 9
	movl	$1, %eax
.L36:
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
.LC9:
	.long	-1110651699
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
	.long	0x1279
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
	.uleb128 0x11
	.long	0xa9
	.uleb128 0xc
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
	.uleb128 0x12
	.long	.LASF45
	.uleb128 0x3
	.long	0x250
	.uleb128 0x3
	.long	0xb5
	.uleb128 0xd
	.long	0xa9
	.long	0x26f
	.uleb128 0x13
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x248
	.uleb128 0x12
	.long	.LASF46
	.uleb128 0x3
	.long	0x274
	.uleb128 0x12
	.long	.LASF47
	.uleb128 0x3
	.long	0x27e
	.uleb128 0xd
	.long	0xa9
	.long	0x298
	.uleb128 0x13
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.long	0xb0
	.uleb128 0x14
	.long	0x298
	.uleb128 0x3
	.long	0x23c
	.uleb128 0x14
	.long	0x2a2
	.uleb128 0x15
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
	.uleb128 0x14
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
	.uleb128 0x11
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
	.uleb128 0x8
	.long	.LASF74
	.byte	0x9
	.byte	0x45
	.byte	0x7
	.long	0x66
	.value	0x16c
	.uleb128 0x8
	.long	.LASF75
	.byte	0x9
	.byte	0x47
	.byte	0x7
	.long	0x66
	.value	0x170
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0x49
	.byte	0x7
	.long	0x66
	.value	0x174
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0x4b
	.byte	0x8
	.long	0x79
	.value	0x178
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.byte	0x4c
	.byte	0x8
	.long	0x79
	.value	0x180
	.uleb128 0x8
	.long	.LASF79
	.byte	0x9
	.byte	0x4d
	.byte	0xf
	.long	0x2f0
	.value	0x188
	.uleb128 0x8
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
	.uleb128 0xc
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
	.uleb128 0xc
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
	.uleb128 0xc
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
	.uleb128 0xc
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
	.uleb128 0xc
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
	.uleb128 0xc
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
	.uleb128 0x15
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
	.value	0x3d8
	.byte	0xe
	.byte	0x13
	.long	0xb9d
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
	.uleb128 0xa
	.string	"og"
	.byte	0x17
	.byte	0xc
	.long	0x394
	.value	0x1a0
	.uleb128 0xa
	.string	"op"
	.byte	0x19
	.byte	0xe
	.long	0x51e
	.value	0x1c0
	.uleb128 0xa
	.string	"vi"
	.byte	0x1b
	.byte	0xf
	.long	0x5a0
	.value	0x1f0
	.uleb128 0xa
	.string	"vc"
	.byte	0x1d
	.byte	0x12
	.long	0x87a
	.value	0x228
	.uleb128 0xa
	.string	"vd"
	.byte	0x1f
	.byte	0x14
	.long	0x6cf
	.value	0x248
	.uleb128 0xa
	.string	"vb"
	.byte	0x20
	.byte	0x10
	.long	0x827
	.value	0x2d8
	.uleb128 0xa
	.string	"eos"
	.byte	0x22
	.byte	0x7
	.long	0x66
	.value	0x398
	.uleb128 0xa
	.string	"eoc"
	.byte	0x23
	.byte	0x7
	.long	0x66
	.value	0x39c
	.uleb128 0x8
	.long	.LASF56
	.byte	0xe
	.byte	0x24
	.byte	0xc
	.long	0x6be
	.value	0x3a0
	.uleb128 0x8
	.long	.LASF170
	.byte	0xe
	.byte	0x25
	.byte	0x8
	.long	0x79
	.value	0x3a8
	.uleb128 0x8
	.long	.LASF171
	.byte	0xe
	.byte	0x26
	.byte	0x8
	.long	0x79
	.value	0x3b0
	.uleb128 0x8
	.long	.LASF172
	.byte	0xe
	.byte	0x28
	.byte	0x12
	.long	0xb9d
	.value	0x3b8
	.uleb128 0x8
	.long	.LASF173
	.byte	0xe
	.byte	0x29
	.byte	0x12
	.long	0xb9d
	.value	0x3c0
	.uleb128 0x8
	.long	.LASF174
	.byte	0xe
	.byte	0x2b
	.byte	0xa
	.long	0x2bf
	.value	0x3c8
	.uleb128 0x8
	.long	.LASF175
	.byte	0xe
	.byte	0x2c
	.byte	0xc
	.long	0x41
	.value	0x3d0
	.byte	0
	.uleb128 0x3
	.long	0xaaa
	.uleb128 0x5
	.long	.LASF176
	.byte	0xe
	.byte	0x2d
	.byte	0x2
	.long	0xab6
	.uleb128 0x15
	.long	.LASF177
	.byte	0xe
	.byte	0x33
	.byte	0x16
	.long	0xbba
	.uleb128 0x3
	.long	0xba2
	.uleb128 0x16
	.long	.LASF178
	.byte	0xd
	.byte	0xe
	.long	0xba2
	.uleb128 0x9
	.byte	0x3
	.quad	record
	.uleb128 0x24
	.long	0xbae
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x9
	.byte	0x3
	.quad	record_struct
	.uleb128 0x16
	.long	.LASF179
	.byte	0x15
	.byte	0x5
	.long	0xa2e
	.uleb128 0x9
	.byte	0x3
	.quad	removing
	.uleb128 0x16
	.long	.LASF180
	.byte	0x16
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
	.long	0xc2b
	.uleb128 0x2
	.long	0x7f5
	.uleb128 0x2
	.long	0xc2b
	.byte	0
	.uleb128 0x3
	.long	0x827
	.uleb128 0x4
	.long	.LASF182
	.byte	0xa
	.byte	0xc6
	.byte	0xc
	.long	0x66
	.long	0xc4b
	.uleb128 0x2
	.long	0x7f5
	.uleb128 0x2
	.long	0xc4b
	.byte	0
	.uleb128 0x3
	.long	0x51e
	.uleb128 0x4
	.long	.LASF183
	.byte	0x9
	.byte	0xc4
	.byte	0xc
	.long	0x66
	.long	0xc66
	.uleb128 0x2
	.long	0xc66
	.byte	0
	.uleb128 0x3
	.long	0x3a0
	.uleb128 0x4
	.long	.LASF184
	.byte	0x9
	.byte	0xa0
	.byte	0xc
	.long	0x66
	.long	0xc86
	.uleb128 0x2
	.long	0xc86
	.uleb128 0x2
	.long	0xc8b
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
	.long	0xca6
	.uleb128 0x2
	.long	0xc2b
	.byte	0
	.uleb128 0x4
	.long	.LASF186
	.byte	0xa
	.byte	0xc3
	.byte	0xc
	.long	0x66
	.long	0xcc1
	.uleb128 0x2
	.long	0xc2b
	.uleb128 0x2
	.long	0xc4b
	.byte	0
	.uleb128 0x4
	.long	.LASF187
	.byte	0xf
	.byte	0x2b
	.byte	0xe
	.long	0x48
	.long	0xce1
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
	.long	0xcfc
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
	.long	0xd17
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
	.long	0xd38
	.uleb128 0x2
	.long	0x298
	.uleb128 0x2
	.long	0x298
	.uleb128 0x2
	.long	0x41
	.uleb128 0x2
	.long	0x298
	.byte	0
	.uleb128 0xb
	.long	.LASF191
	.byte	0xa
	.byte	0xa5
	.byte	0xd
	.long	0xd4a
	.uleb128 0x2
	.long	0x6b9
	.byte	0
	.uleb128 0xb
	.long	.LASF192
	.byte	0xa
	.byte	0xad
	.byte	0xd
	.long	0xd5c
	.uleb128 0x2
	.long	0xd5c
	.byte	0
	.uleb128 0x3
	.long	0x87a
	.uleb128 0xb
	.long	.LASF193
	.byte	0xa
	.byte	0xb1
	.byte	0xd
	.long	0xd73
	.uleb128 0x2
	.long	0x7f5
	.byte	0
	.uleb128 0x4
	.long	.LASF194
	.byte	0xa
	.byte	0xb0
	.byte	0xc
	.long	0x66
	.long	0xd89
	.uleb128 0x2
	.long	0xc2b
	.byte	0
	.uleb128 0x4
	.long	.LASF195
	.byte	0x9
	.byte	0xb8
	.byte	0xc
	.long	0x66
	.long	0xd9f
	.uleb128 0x2
	.long	0xc86
	.byte	0
	.uleb128 0xf
	.long	.LASF196
	.byte	0xc
	.value	0x2e9
	.byte	0xf
	.long	0x2e
	.long	0xdc5
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
	.long	0xde0
	.uleb128 0x2
	.long	0xc86
	.uleb128 0x2
	.long	0xc8b
	.byte	0
	.uleb128 0x4
	.long	.LASF198
	.byte	0x9
	.byte	0x9d
	.byte	0xc
	.long	0x66
	.long	0xdfb
	.uleb128 0x2
	.long	0xc86
	.uleb128 0x2
	.long	0xc4b
	.byte	0
	.uleb128 0x4
	.long	.LASF199
	.byte	0xa
	.byte	0xbb
	.byte	0xc
	.long	0x66
	.long	0xe25
	.uleb128 0x2
	.long	0x7f5
	.uleb128 0x2
	.long	0xd5c
	.uleb128 0x2
	.long	0xc4b
	.uleb128 0x2
	.long	0xc4b
	.uleb128 0x2
	.long	0xc4b
	.byte	0
	.uleb128 0x4
	.long	.LASF200
	.byte	0x9
	.byte	0xb7
	.byte	0xc
	.long	0x66
	.long	0xe40
	.uleb128 0x2
	.long	0xc86
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
	.long	0xe60
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x4
	.long	.LASF202
	.byte	0x12
	.byte	0x4c
	.byte	0xf
	.long	0x2bf
	.long	0xe76
	.uleb128 0x2
	.long	0xe76
	.byte	0
	.uleb128 0x3
	.long	0x2bf
	.uleb128 0x4
	.long	.LASF203
	.byte	0xa
	.byte	0xaf
	.byte	0xc
	.long	0x66
	.long	0xe96
	.uleb128 0x2
	.long	0x7f5
	.uleb128 0x2
	.long	0xc2b
	.byte	0
	.uleb128 0x4
	.long	.LASF204
	.byte	0xa
	.byte	0xb9
	.byte	0xc
	.long	0x66
	.long	0xeb1
	.uleb128 0x2
	.long	0x7f5
	.uleb128 0x2
	.long	0x6b9
	.byte	0
	.uleb128 0xb
	.long	.LASF205
	.byte	0xa
	.byte	0xa9
	.byte	0xd
	.long	0xecd
	.uleb128 0x2
	.long	0xd5c
	.uleb128 0x2
	.long	0x298
	.uleb128 0x2
	.long	0x298
	.byte	0
	.uleb128 0xb
	.long	.LASF206
	.byte	0xa
	.byte	0xa7
	.byte	0xd
	.long	0xedf
	.uleb128 0x2
	.long	0xd5c
	.byte	0
	.uleb128 0x4
	.long	.LASF207
	.byte	0xc
	.byte	0xb8
	.byte	0xc
	.long	0x66
	.long	0xef5
	.uleb128 0x2
	.long	0x2a2
	.byte	0
	.uleb128 0x4
	.long	.LASF208
	.byte	0x13
	.byte	0x9d
	.byte	0xc
	.long	0x66
	.long	0xf1a
	.uleb128 0x2
	.long	0x6b9
	.uleb128 0x2
	.long	0x79
	.uleb128 0x2
	.long	0x79
	.uleb128 0x2
	.long	0x6c8
	.byte	0
	.uleb128 0xb
	.long	.LASF209
	.byte	0xa
	.byte	0xa4
	.byte	0xd
	.long	0xf2c
	.uleb128 0x2
	.long	0x6b9
	.byte	0
	.uleb128 0xf
	.long	.LASF210
	.byte	0xc
	.value	0x165
	.byte	0xc
	.long	0x66
	.long	0xf49
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
	.long	0xf5b
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF212
	.byte	0xf
	.value	0x197
	.byte	0xf
	.long	0x2e
	.long	0xf72
	.uleb128 0x2
	.long	0x298
	.byte	0
	.uleb128 0x4
	.long	.LASF213
	.byte	0xd
	.byte	0x1f
	.byte	0x5
	.long	0x66
	.long	0xf92
	.uleb128 0x2
	.long	0xb9d
	.uleb128 0x2
	.long	0x298
	.uleb128 0x2
	.long	0xa4
	.byte	0
	.uleb128 0x4
	.long	.LASF214
	.byte	0xd
	.byte	0x1d
	.byte	0x10
	.long	0xb9d
	.long	0xfa8
	.uleb128 0x2
	.long	0x66
	.byte	0
	.uleb128 0xf
	.long	.LASF215
	.byte	0xc
	.value	0x16b
	.byte	0xc
	.long	0x66
	.long	0xfc0
	.uleb128 0x2
	.long	0x298
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF216
	.byte	0xf
	.byte	0x9c
	.byte	0xc
	.long	0x66
	.long	0xfdb
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
	.long	0xff6
	.uleb128 0x2
	.long	0xb9d
	.uleb128 0x2
	.long	0xa4
	.byte	0
	.uleb128 0xb
	.long	.LASF218
	.byte	0x14
	.byte	0x27
	.byte	0x6
	.long	0x1008
	.uleb128 0x2
	.long	0xa4
	.byte	0
	.uleb128 0xb
	.long	.LASF219
	.byte	0x14
	.byte	0x28
	.byte	0x6
	.long	0x101f
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
	.long	0x1031
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
	.long	0x10e7
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
	.long	0x10f7
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.0
	.uleb128 0x29
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x10c4
	.uleb128 0x9
	.long	.LASF56
	.byte	0xf2
	.byte	0xb
	.long	0x6be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.quad	.LBB6
	.quad	.LBE6-.LBB6
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
	.uleb128 0x17
	.quad	.LBB7
	.quad	.LBE7-.LBB7
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
	.long	0x10f7
	.uleb128 0x13
	.long	0x3a
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.long	0x10e7
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
	.byte	0x8c
	.long	0x66
	.quad	.LFB311
	.quad	.LFE311-.LFB311
	.uleb128 0x1
	.byte	0x9c
	.long	0x1179
	.uleb128 0x9
	.long	.LASF224
	.byte	0xaf
	.byte	0x10
	.long	0x51e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x9
	.long	.LASF225
	.byte	0xaf
	.byte	0x1c
	.long	0x51e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x9
	.long	.LASF226
	.byte	0xaf
	.byte	0x29
	.long	0x51e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LLRL0
	.uleb128 0x9
	.long	.LASF223
	.byte	0xb6
	.byte	0xd
	.long	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF228
	.byte	0x45
	.long	0x66
	.quad	.LFB310
	.quad	.LFE310-.LFB310
	.uleb128 0x1
	.byte	0x9c
	.long	0x1200
	.uleb128 0x9
	.long	.LASF229
	.byte	0x46
	.byte	0x6
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF230
	.byte	0x47
	.byte	0xf
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF231
	.byte	0x48
	.byte	0x15
	.long	0x2d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x9
	.long	.LASF232
	.byte	0x4e
	.byte	0x10
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.long	.LASF233
	.byte	0x50
	.byte	0x10
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF234
	.byte	0x6f
	.byte	0xc
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF236
	.byte	0x35
	.long	0x66
	.quad	.LFB309
	.quad	.LFE309-.LFB309
	.uleb128 0x1
	.byte	0x9c
	.long	0x1253
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
	.uleb128 0x9
	.long	.LASF237
	.byte	0x36
	.byte	0xb
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF238
	.byte	0x37
	.byte	0xb
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF239
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.quad	.LFB308
	.quad	.LFE308-.LFB308
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF240
	.byte	0x25
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
	.uleb128 0xc
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.sleb128 53
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
	.uleb128 .LBB3-.Ltext0
	.uleb128 .LBE3-.Ltext0
	.byte	0x4
	.uleb128 .LBB4-.Ltext0
	.uleb128 .LBE4-.Ltext0
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
.LASF212:
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
.LASF232:
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
.LASF214:
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
.LASF215:
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
.LASF234:
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
.LASF231:
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
.LASF213:
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
.LASF233:
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
