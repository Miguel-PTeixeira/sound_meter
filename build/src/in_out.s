	.file	"in_out.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v03_1" "src/in_out.c"
	.type	json_decref, @function
json_decref:
.LFB18:
	.file 1 "/usr/include/jansson.h"
	.loc 1 131 46
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 132 8
	cmpq	$0, -8(%rbp)
	je	.L3
	.loc 1 132 21 discriminator 1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 132 14 discriminator 1
	cmpq	$-1, %rax
	je	.L3
	.loc 1 132 68 discriminator 2
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 1 132 49 discriminator 2
	movl	$1, %eax
	negq	%rax
	movq	%rax, %rcx
	movq	%rcx, %rax
	lock xaddq	%rax, (%rdx)
	addq	%rcx, %rax
	.loc 1 132 46 discriminator 1
	testq	%rax, %rax
	jne	.L3
	.loc 1 133 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_delete@PLT
.L3:
	.loc 1 134 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	json_decref, .-json_decref
	.local	device
	.comm	device,16,16
	.section	.rodata
	.align 8
.LC0:
	.string	"cannot open audio device %s (%s)\n"
.LC1:
	.string	"snd_pcm_set_params: %s\n"
	.align 8
.LC2:
	.string	"cannot prepare audio interface for use (%s)\n"
.LC3:
	.string	"Can't load wave file %s\n"
	.text
	.globl	input_device_open
	.type	input_device_open, @function
input_device_open:
.LFB323:
	.file 2 "src/in_out.c"
	.loc 2 28 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 29 12
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 29 5
	testq	%rax, %rax
	jne	.L5
.LBB2:
	.loc 2 30 17
	movl	$1, device(%rip)
	.loc 2 31 16
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rsi
	leaq	8+device(%rip), %rax
	movq	%rax, %rdi
	call	snd_pcm_open@PLT
	movl	%eax, -4(%rbp)
	.loc 2 32 6
	cmpl	$0, -4(%rbp)
	jns	.L6
	.loc 2 33 4
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	snd_strerror@PLT
	movq	%rax, %rcx
	.loc 2 33 4 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 36 10 is_stmt 1
	movl	$0, %eax
	jmp	.L7
.L6:
	.loc 2 38 12
	movq	-24(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	60(%rax), %edx
	movq	8+device(%rip), %rax
	subq	$8, %rsp
	pushq	$500000
	movl	$1, %r9d
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	snd_pcm_set_params@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	.loc 2 45 6
	cmpl	$0, -4(%rbp)
	jns	.L8
	.loc 2 46 4
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	snd_strerror@PLT
	movq	%rax, %rdx
	.loc 2 46 4 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 47 10 is_stmt 1
	movl	$0, %eax
	jmp	.L7
.L8:
	.loc 2 59 12
	movq	8+device(%rip), %rax
	movq	%rax, %rdi
	call	snd_pcm_prepare@PLT
	movl	%eax, -4(%rbp)
	.loc 2 60 6
	cmpl	$0, -4(%rbp)
	jns	.L9
	.loc 2 61 4
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	snd_strerror@PLT
	movq	%rax, %rdx
	.loc 2 61 4 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 63 10 is_stmt 1
	movl	$0, %eax
	jmp	.L7
.L9:
	.loc 2 65 3
	movq	8+device(%rip), %rax
	movq	%rax, %rdi
	call	snd_pcm_start@PLT
.LBE2:
	jmp	.L10
.L5:
	.loc 2 68 17
	movl	$0, device(%rip)
	.loc 2 69 17
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	wave_load@PLT
	.loc 2 69 15 discriminator 1
	movq	%rax, 8+device(%rip)
	.loc 2 70 13
	movq	8+device(%rip), %rax
	.loc 2 70 6
	testq	%rax, %rax
	jne	.L11
	.loc 2 71 4
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 72 10
	movl	$0, %eax
	jmp	.L7
.L11:
	.loc 2 74 22
	movq	8+device(%rip), %rax
	movq	%rax, %rdi
	call	wave_get_number_of_channels@PLT
	.loc 2 74 22 is_stmt 0 discriminator 1
	movl	%eax, %edx
	.loc 2 74 20 is_stmt 1 discriminator 1
	movq	-24(%rbp), %rax
	movl	%edx, 60(%rax)
	.loc 2 75 25
	movq	8+device(%rip), %rax
	movq	%rax, %rdi
	call	wave_get_sample_rate@PLT
	.loc 2 75 25 is_stmt 0 discriminator 1
	movl	%eax, %edx
	.loc 2 75 23 is_stmt 1 discriminator 1
	movq	-24(%rbp), %rax
	movl	%edx, 56(%rax)
	.loc 2 76 29
	movq	8+device(%rip), %rax
	movq	%rax, %rdi
	call	wave_get_bits_per_sample@PLT
	.loc 2 76 29 is_stmt 0 discriminator 1
	movl	%eax, %edx
	.loc 2 76 27 is_stmt 1 discriminator 1
	movq	-24(%rbp), %rax
	movl	%edx, 64(%rax)
	.loc 2 77 33
	movq	8+device(%rip), %rax
	movq	%rax, %rdi
	call	wave_get_duration@PLT
	.loc 2 77 31 discriminator 1
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 92(%rax)
	.loc 2 78 38
	movq	-24(%rbp), %rax
	movl	92(%rax), %edx
	.loc 2 78 30
	movq	-24(%rbp), %rax
	movl	%edx, 104(%rax)
.L10:
	.loc 2 81 8
	movl	$1, %eax
.L7:
	.loc 2 82 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	input_device_open, .-input_device_open
	.section	.rodata
.LC4:
	.string	"Out of memory\n"
.LC5:
	.string	"src/in_out.c"
.LC6:
	.string	"false"
	.text
	.globl	input_device_read
	.type	input_device_read, @function
input_device_read:
.LFB324:
	.loc 2 96 1
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
	.loc 2 97 57
	movq	config_struct(%rip), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	.loc 2 97 42
	imulq	-32(%rbp), %rax
	.loc 2 97 27
	addq	%rax, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 98 5
	cmpq	$0, -8(%rbp)
	jne	.L13
	.loc 2 99 3
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$14, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 2 100 10
	movl	$0, %eax
	jmp	.L14
.L13:
	.loc 2 103 12
	movl	device(%rip), %eax
	.loc 2 103 5
	cmpl	$1, %eax
	jne	.L15
	.loc 2 104 17
	movq	8+device(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	snd_pcm_readi@PLT
	.loc 2 104 15 discriminator 1
	movq	%rax, -16(%rbp)
	jmp	.L16
.L15:
	.loc 2 111 17
	movl	device(%rip), %eax
	.loc 2 111 10
	testl	%eax, %eax
	jne	.L17
	.loc 2 112 17
	movq	8+device(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	wave_read_samples@PLT
	movq	%rax, -16(%rbp)
	.loc 2 113 6
	cmpq	$0, -16(%rbp)
	jne	.L16
	.loc 2 114 11
	movl	$0, %eax
	jmp	.L14
.L17:
	.loc 2 117 63 discriminator 1
	leaq	__PRETTY_FUNCTION__.1(%rip), %rax
	movq	%rax, %rcx
	movl	$117, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	.loc 2 120 2
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	samples_int16_to_float
	.loc 2 122 18
	movq	config_struct(%rip), %rax
	movl	116(%rax), %eax
	.loc 2 122 4
	testl	%eax, %eax
	jne	.L18
	.loc 2 123 3
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	record_append_samples@PLT
	.loc 2 124 3
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	third_octave_levels@PLT
.L18:
	.loc 2 127 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 128 9
	movq	-16(%rbp), %rax
.L14:
	.loc 2 129 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	input_device_read, .-input_device_read
	.section	.rodata
.LC7:
	.string	"Error closing sound card\n"
	.text
	.globl	input_device_close
	.type	input_device_close, @function
input_device_close:
.LFB325:
	.loc 2 132 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 133 12
	movl	device(%rip), %eax
	.loc 2 133 5
	cmpl	$1, %eax
	jne	.L20
.LBB3:
	.loc 2 134 21
	movq	8+device(%rip), %rax
	movq	%rax, %rdi
	call	snd_pcm_close@PLT
	movl	%eax, -4(%rbp)
	.loc 2 135 6
	cmpl	$0, -4(%rbp)
	jns	.L22
	.loc 2 136 4
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	movl	$1, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
.LBE3:
	.loc 2 141 1
	jmp	.L22
.L20:
	.loc 2 138 17
	movl	device(%rip), %eax
	.loc 2 138 10
	testl	%eax, %eax
	jne	.L22
	.loc 2 139 3
	movq	8+device(%rip), %rax
	movq	%rax, %rdi
	call	wave_destroy@PLT
.L22:
	.loc 2 141 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	input_device_close, .-input_device_close
	.local	current_format
	.comm	current_format,8,8
	.local	data_output_filepath
	.comm	data_output_filepath,8,8
	.local	data_output_fd
	.comm	data_output_fd,8,8
	.local	audio_output_filepath
	.comm	audio_output_filepath,8,8
	.local	output_json
	.comm	output_json,8,8
	.local	data_output_index
	.comm	data_output_index,4,4
	.local	sample_count
	.comm	sample_count,8,8
	.local	calendar
	.comm	calendar,8,8
	.local	output_time
	.comm	output_time,4,4
	.globl	output_open
	.type	output_open, @function
output_open:
.LFB326:
	.loc 2 164 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 165 13
	movl	$0, %edi
	call	time@PLT
	.loc 2 165 11 discriminator 1
	movq	%rax, calendar(%rip)
	.loc 2 166 5
	cmpb	$0, -4(%rbp)
	je	.L24
	.loc 2 167 3
	movq	data_output_filepath(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	output_new_filename
.L24:
	.loc 2 168 18
	movq	config_struct(%rip), %rax
	movzbl	108(%rax), %eax
	.loc 2 168 4
	testb	%al, %al
	je	.L26
	.loc 2 169 3
	movq	data_output_filepath(%rip), %rax
	movq	%rax, %rdi
	call	output_file_open
.L26:
	.loc 2 170 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE326:
	.size	output_open, .-output_open
	.globl	output_close
	.type	output_close, @function
output_close:
.LFB327:
	.loc 2 173 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 174 2
	movl	$0, %eax
	call	output_file_close
	.loc 2 175 2
	movq	data_output_filepath(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 176 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE327:
	.size	output_close, .-output_close
	.section	.rodata
.LC8:
	.string	".json"
	.text
	.globl	output_file_close
	.type	output_file_close, @function
output_file_close:
.LFB328:
	.loc 2 179 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 180 26
	movq	config_struct(%rip), %rax
	.loc 2 180 6
	movq	48(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 180 5 discriminator 1
	testl	%eax, %eax
	jne	.L29
	.loc 2 181 3
	movq	data_output_fd(%rip), %rcx
	movq	output_json(%rip), %rax
	movl	$6144, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_dumpf@PLT
	.loc 2 182 3
	movq	output_json(%rip), %rax
	movq	%rax, %rdi
	call	json_decref
.L29:
	.loc 2 184 21
	movq	data_output_fd(%rip), %rax
	.loc 2 184 5
	testq	%rax, %rax
	je	.L30
	.loc 2 185 3
	movq	data_output_fd(%rip), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L30:
	.loc 2 186 17
	movq	$0, data_output_fd(%rip)
	.loc 2 187 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE328:
	.size	output_file_close, .-output_file_close
	.type	output_init_filename, @function
output_init_filename:
.LFB329:
	.loc 2 190 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	.loc 2 191 45
	movq	config_struct(%rip), %rax
	.loc 2 191 25
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 2 192 25
	movq	config_struct(%rip), %rax
	.loc 2 192 5
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 191 9
	addq	%rbx, %rax
	movq	%rax, -40(%rbp)
	.loc 2 195 25
	movq	config_struct(%rip), %rax
	.loc 2 195 5
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 195 3 discriminator 1
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	.loc 2 193 9
	addq	$20, %rax
	movq	%rax, -32(%rbp)
	.loc 2 196 19
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	.loc 2 197 5
	cmpq	$0, -24(%rbp)
	jne	.L32
	.loc 2 198 3
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$14, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 2 199 9
	movl	$0, %eax
	jmp	.L33
.L32:
	.loc 2 201 32
	movq	config_struct(%rip), %rax
	.loc 2 201 2
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 2 202 32
	movq	config_struct(%rip), %rax
	.loc 2 202 2
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	.loc 2 203 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	.loc 2 203 2 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movabsq	$3264350161677140289, %rcx
	movabsq	$5570172396253430852, %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movl	$5460794, 16(%rax)
	.loc 2 204 2 is_stmt 1
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	.loc 2 205 9
	movq	-24(%rbp), %rax
.L33:
	.loc 2 206 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE329:
	.size	output_init_filename, .-output_init_filename
	.section	.rodata
.LC9:
	.string	"%Y-%m-%d_%H:%M:%S"
	.text
	.globl	output_new_filename
	.type	output_new_filename, @function
output_new_filename:
.LFB330:
	.loc 2 209 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	.loc 2 209 1
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %r13
	.loc 2 210 11
	movq	calendar(%rip), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, calendar(%rip)
	.loc 2 211 9
	movq	$19, -72(%rbp)
	.loc 2 212 24
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rbx
	movq	%rbx, %rax
	.loc 2 212 7
	subq	$1, %rax
	movq	%rax, -64(%rbp)
	movl	$16, %eax
	subq	$1, %rax
	addq	%rbx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L35:
	cmpq	%rdx, %rsp
	je	.L36
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L35
.L36:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L37
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L37:
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	.loc 2 213 45
	movq	config_struct(%rip), %rax
	.loc 2 213 25
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %r12
	.loc 2 214 25
	movq	config_struct(%rip), %rax
	.loc 2 214 5
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 213 9
	addq	%r12, %rax
	movq	%rax, -48(%rbp)
	.loc 2 215 55
	leaq	calendar(%rip), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	movq	%rax, %rdx
	.loc 2 215 2 discriminator 1
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC9(%rip), %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strftime@PLT
.LBB4:
	.loc 2 216 14
	movq	$0, -80(%rbp)
	.loc 2 216 2
	jmp	.L38
.L39:
	.loc 2 217 29
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 217 41
	movq	-56(%rbp), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 2 217 33
	movb	%al, (%rdx)
	.loc 2 216 36 discriminator 3
	addq	$1, -80(%rbp)
.L38:
	.loc 2 216 23 discriminator 1
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L39
.LBE4:
	movq	%r13, %rsp
	.loc 2 219 1
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE330:
	.size	output_new_filename, .-output_new_filename
	.local	LAeq_json
	.comm	LAeq_json,8,8
	.local	LAE_json
	.comm	LAE_json,8,8
	.local	LAFmin_json
	.comm	LAFmin_json,8,8
	.local	LAFmax_json
	.comm	LAFmax_json,8,8
	.local	LApeak_json
	.comm	LApeak_json,8,8
	.section	.rodata
.LC10:
	.string	"w"
.LC11:
	.string	"fopen(%s, \"w\") error: %s\n"
.LC12:
	.string	".csv"
	.align 8
.LC13:
	.string	"LAFeq, LAFmin, LAE, LAFmax, LCpeak, Freq[Hz]:, 25, 31.5, 40, 50, 63, 80, 100, 125, 160, 200, 250, 315, 400, 500, 630, 800, 1k, 1.25k, 1.6k, 2k, 2.5k, 3.15k, 4k, 5k, 6.3k, 8k, 10k, 12.5k, 16k, 20k, audio_file, Event\n"
	.align 8
.LC14:
	.string	"Output: error creating JSON object \"output_json\".\n"
.LC15:
	.string	"ts"
	.align 8
.LC16:
	.string	"Output: error adding JSON field \"ts\" (src/in_out.c: %d)\n"
.LC17:
	.string	"segment"
	.align 8
.LC18:
	.string	"Output: error adding JSON field \"segment\" (src/in_out.c: %d)\n"
.LC19:
	.string	"levels"
	.align 8
.LC20:
	.string	"Output: error adding JSON field \"levels\" (src/in_out.c: %d)\n"
.LC21:
	.string	"LAeq"
	.align 8
.LC22:
	.string	"Output: error adding JSON field \"LAeq\" (src/in_out.c: %d)\n"
.LC23:
	.string	"LAE"
	.align 8
.LC24:
	.string	"Output: error adding JSON field \"LAE\" (src/in_out.c: %d)\n"
.LC25:
	.string	"LAFmin"
	.align 8
.LC26:
	.string	"Output: error adding JSON field \"LAFmin\" (src/in_out.c: %d)\n"
.LC27:
	.string	"LAFmax"
	.align 8
.LC28:
	.string	"Output: error adding JSON field \"LAFmax\" (src/in_out.c: %d)\n"
.LC29:
	.string	"LCpeak"
	.align 8
.LC30:
	.string	"Output: error adding JSON field \"LApeak\" (src/in_out.c: %d)\n"
.LC31:
	.string	".ogg"
	.align 8
.LC32:
	.string	"Output: no output format recognized\n"
	.text
	.globl	output_file_open
	.type	output_file_open, @function
output_file_open:
.LFB331:
	.loc 2 228 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 229 23
	movq	-40(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -24(%rbp)
	.loc 2 230 5
	cmpq	$0, -24(%rbp)
	jne	.L42
	.loc 2 231 71
	call	__errno_location@PLT
	.loc 2 231 3 discriminator 1
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	.loc 2 231 3 is_stmt 0 discriminator 2
	movq	stderr(%rip), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 232 3 is_stmt 1
	movl	$1, %edi
	call	exit@PLT
.L42:
	.loc 2 235 19
	movq	-40(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 2 235 17 discriminator 1
	movq	%rax, current_format(%rip)
	.loc 2 237 6
	movq	current_format(%rip), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 237 5 discriminator 1
	testl	%eax, %eax
	jne	.L43
	.loc 2 238 18
	movq	-24(%rbp), %rax
	movq	%rax, data_output_fd(%rip)
	.loc 2 239 25
	movq	record_struct(%rip), %rax
	.loc 2 239 3
	movq	952(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_file@PLT
	.loc 2 240 3
	movq	data_output_fd(%rip), %rax
	movq	%rax, %rcx
	movl	$215, %edx
	movl	$1, %esi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	jmp	.L41
.L43:
	.loc 2 243 11
	movq	current_format(%rip), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 243 10 discriminator 1
	testl	%eax, %eax
	jne	.L45
.LBB5:
	.loc 2 244 18
	movq	-24(%rbp), %rax
	movq	%rax, data_output_fd(%rip)
	.loc 2 245 25
	movq	record_struct(%rip), %rax
	.loc 2 245 3
	movq	952(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_file@PLT
	.loc 2 259 17
	call	json_object@PLT
	.loc 2 259 15 discriminator 1
	movq	%rax, output_json(%rip)
	.loc 2 260 19
	movq	output_json(%rip), %rax
	.loc 2 260 6
	testq	%rax, %rax
	jne	.L46
	.loc 2 261 4
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$1, %esi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 2 262 4
	jmp	.L41
.L46:
	.loc 2 264 25
	movq	calendar(%rip), %rax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -16(%rbp)
	.loc 2 265 6
	cmpq	$0, -16(%rbp)
	je	.L47
	.loc 2 266 8
	movq	output_json(%rip), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC15(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 266 7 discriminator 1
	testl	%eax, %eax
	je	.L47
	.loc 2 267 5
	movq	stderr(%rip), %rax
	movl	$267, %edx
	leaq	.LC16(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 268 5
	jmp	.L41
.L47:
	.loc 2 271 43
	movq	config_struct(%rip), %rax
	movl	72(%rax), %eax
	.loc 2 271 17
	movl	%eax, %eax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -16(%rbp)
	.loc 2 272 6
	cmpq	$0, -16(%rbp)
	je	.L48
	.loc 2 273 8
	movq	output_json(%rip), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 273 7 discriminator 1
	testl	%eax, %eax
	je	.L48
	.loc 2 274 5
	movq	stderr(%rip), %rax
	movl	$274, %edx
	leaq	.LC18(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 275 5
	jmp	.L41
.L48:
	.loc 2 278 25
	call	json_object@PLT
	movq	%rax, -8(%rbp)
	.loc 2 279 6
	cmpq	$0, -8(%rbp)
	je	.L49
	.loc 2 280 8
	movq	output_json(%rip), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC19(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 280 7 discriminator 1
	testl	%eax, %eax
	je	.L49
	.loc 2 281 5
	movq	stderr(%rip), %rax
	movl	$281, %edx
	leaq	.LC20(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 282 5
	jmp	.L41
.L49:
	.loc 2 285 15
	call	json_array@PLT
	.loc 2 285 13 discriminator 1
	movq	%rax, LAeq_json(%rip)
	.loc 2 286 17
	movq	LAeq_json(%rip), %rax
	.loc 2 286 6
	testq	%rax, %rax
	je	.L50
	.loc 2 287 8
	movq	LAeq_json(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 287 7 discriminator 1
	testl	%eax, %eax
	je	.L50
	.loc 2 288 5
	movq	stderr(%rip), %rax
	movl	$288, %edx
	leaq	.LC22(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 289 5
	jmp	.L41
.L50:
	.loc 2 292 14
	call	json_array@PLT
	.loc 2 292 12 discriminator 1
	movq	%rax, LAE_json(%rip)
	.loc 2 293 16
	movq	LAE_json(%rip), %rax
	.loc 2 293 6
	testq	%rax, %rax
	je	.L51
	.loc 2 294 8
	movq	LAE_json(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC23(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 294 7 discriminator 1
	testl	%eax, %eax
	je	.L51
	.loc 2 295 5
	movq	stderr(%rip), %rax
	movl	$295, %edx
	leaq	.LC24(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 296 5
	jmp	.L41
.L51:
	.loc 2 299 17
	call	json_array@PLT
	.loc 2 299 15 discriminator 1
	movq	%rax, LAFmin_json(%rip)
	.loc 2 300 19
	movq	LAFmin_json(%rip), %rax
	.loc 2 300 6
	testq	%rax, %rax
	je	.L52
	.loc 2 301 8
	movq	LAFmin_json(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC25(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 301 7 discriminator 1
	testl	%eax, %eax
	je	.L52
	.loc 2 302 5
	movq	stderr(%rip), %rax
	movl	$302, %edx
	leaq	.LC26(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 303 5
	jmp	.L41
.L52:
	.loc 2 306 17
	call	json_array@PLT
	.loc 2 306 15 discriminator 1
	movq	%rax, LAFmax_json(%rip)
	.loc 2 307 19
	movq	LAFmax_json(%rip), %rax
	.loc 2 307 6
	testq	%rax, %rax
	je	.L53
	.loc 2 308 8
	movq	LAFmax_json(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC27(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 308 7 discriminator 1
	testl	%eax, %eax
	je	.L53
	.loc 2 309 5
	movq	stderr(%rip), %rax
	movl	$309, %edx
	leaq	.LC28(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 310 5
	jmp	.L41
.L53:
	.loc 2 313 17
	call	json_array@PLT
	.loc 2 313 15 discriminator 1
	movq	%rax, LApeak_json(%rip)
	.loc 2 314 19
	movq	LApeak_json(%rip), %rax
	.loc 2 314 6
	testq	%rax, %rax
	je	.L54
	.loc 2 315 8
	movq	LApeak_json(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC29(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 315 7 discriminator 1
	testl	%eax, %eax
	je	.L54
	.loc 2 316 5
	movq	stderr(%rip), %rax
	movl	$316, %edx
	leaq	.LC30(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 317 5
	jmp	.L41
.L54:
	.loc 2 320 21
	movl	$0, data_output_index(%rip)
.LBE5:
	jmp	.L41
.L45:
	.loc 2 321 11
	movq	current_format(%rip), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 321 10 discriminator 1
	testl	%eax, %eax
	jne	.L55
	.loc 2 322 16
	movq	record_struct(%rip), %rax
	.loc 2 322 25
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L41
.L55:
	.loc 2 325 3
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	movl	$1, %esi
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
.L41:
	.loc 2 327 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE331:
	.size	output_file_open, .-output_file_open
	.section	.rodata
	.align 8
.LC33:
	.string	"%2.1f, %2.1f, %2.1f, %2.1f, %2.1f, -, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %2.1f, %s, %d\n"
	.align 8
.LC34:
	.string	"Output: error creating real_json (src/in_out.c: %d)\n"
	.align 8
.LC35:
	.string	"Output: error set LAeq_json[i] (src/in_out.c: %d)\n"
	.align 8
.LC36:
	.string	"Output: error set LAE_json[i] (src/in_out.c: %d)\n"
	.align 8
.LC37:
	.string	"Output: error set LAFmin_json[i] (src/in_out.c: %d)\n"
	.align 8
.LC38:
	.string	"Output: error set LAFmax_json[i] (src/in_out.c: %d)\n"
	.align 8
.LC39:
	.string	"Output: error set LApeak_json[i] (src/in_out.c: %d)\n"
	.align 8
.LC40:
	.string	"ERROR : could not start recording (in_out.c : 79)"
	.text
	.globl	output_record
	.type	output_record, @function
output_record:
.LFB332:
	.loc 2 343 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, %eax
	movb	%al, -68(%rbp)
	.loc 2 344 26
	movq	config_struct(%rip), %rax
	.loc 2 344 6
	movq	48(%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 344 5 discriminator 1
	testl	%eax, %eax
	jne	.L57
.LBB6:
	.loc 2 345 17
	movl	$0, -48(%rbp)
	.loc 2 345 3
	jmp	.L58
.L60:
	.loc 2 363 34
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	.loc 2 363 41
	movl	-48(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 2 346 4
	movl	(%rax), %ecx
	movq	audio_output_filepath(%rip), %rdx
	.loc 2 362 99
	movq	-64(%rbp), %rax
	addq	$928, %rax
	.loc 2 362 103
	movq	16(%rax), %rax
	.loc 2 362 110
	movq	40(%rax), %rax
	.loc 2 362 115
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	.loc 2 362 76
	movq	-64(%rbp), %rax
	addq	$896, %rax
	.loc 2 362 80
	movq	16(%rax), %rax
	.loc 2 362 87
	movq	40(%rax), %rax
	.loc 2 362 92
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -88(%rbp)
	.loc 2 362 53
	movq	-64(%rbp), %rax
	addq	$864, %rax
	.loc 2 362 57
	movq	16(%rax), %rax
	.loc 2 362 64
	movq	40(%rax), %rax
	.loc 2 362 69
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movsd	%xmm3, -96(%rbp)
	.loc 2 362 30
	movq	-64(%rbp), %rax
	addq	$832, %rax
	.loc 2 362 34
	movq	16(%rax), %rax
	.loc 2 362 41
	movq	40(%rax), %rax
	.loc 2 362 46
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movsd	%xmm4, -104(%rbp)
	.loc 2 362 7
	movq	-64(%rbp), %rax
	addq	$800, %rax
	.loc 2 362 11
	movq	16(%rax), %rax
	.loc 2 362 18
	movq	40(%rax), %rax
	.loc 2 362 23
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
	movsd	%xmm5, -112(%rbp)
	.loc 2 361 99
	movq	-64(%rbp), %rax
	addq	$768, %rax
	.loc 2 361 103
	movq	16(%rax), %rax
	.loc 2 361 110
	movq	40(%rax), %rax
	.loc 2 361 115
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm6, %xmm6
	cvtss2sd	%xmm0, %xmm6
	movsd	%xmm6, -120(%rbp)
	.loc 2 361 76
	movq	-64(%rbp), %rax
	addq	$736, %rax
	.loc 2 361 80
	movq	16(%rax), %rax
	.loc 2 361 87
	movq	40(%rax), %rax
	.loc 2 361 92
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm7, %xmm7
	cvtss2sd	%xmm0, %xmm7
	movsd	%xmm7, -128(%rbp)
	.loc 2 361 53
	movq	-64(%rbp), %rax
	addq	$704, %rax
	.loc 2 361 57
	movq	16(%rax), %rax
	.loc 2 361 64
	movq	40(%rax), %rax
	.loc 2 361 69
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -136(%rbp)
	.loc 2 361 30
	movq	-64(%rbp), %rax
	addq	$672, %rax
	.loc 2 361 34
	movq	16(%rax), %rax
	.loc 2 361 41
	movq	40(%rax), %rax
	.loc 2 361 46
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm8, %xmm8
	cvtss2sd	%xmm0, %xmm8
	movsd	%xmm8, -144(%rbp)
	.loc 2 361 7
	movq	-64(%rbp), %rax
	addq	$640, %rax
	.loc 2 361 11
	movq	16(%rax), %rax
	.loc 2 361 18
	movq	40(%rax), %rax
	.loc 2 361 23
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm9, %xmm9
	cvtss2sd	%xmm0, %xmm9
	movsd	%xmm9, -152(%rbp)
	.loc 2 360 99
	movq	-64(%rbp), %rax
	addq	$608, %rax
	.loc 2 360 103
	movq	16(%rax), %rax
	.loc 2 360 110
	movq	40(%rax), %rax
	.loc 2 360 115
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm10, %xmm10
	cvtss2sd	%xmm0, %xmm10
	movsd	%xmm10, -160(%rbp)
	.loc 2 360 76
	movq	-64(%rbp), %rax
	addq	$576, %rax
	.loc 2 360 80
	movq	16(%rax), %rax
	.loc 2 360 87
	movq	40(%rax), %rax
	.loc 2 360 92
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm11, %xmm11
	cvtss2sd	%xmm0, %xmm11
	movsd	%xmm11, -168(%rbp)
	.loc 2 360 53
	movq	-64(%rbp), %rax
	addq	$544, %rax
	.loc 2 360 57
	movq	16(%rax), %rax
	.loc 2 360 64
	movq	40(%rax), %rax
	.loc 2 360 69
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm12, %xmm12
	cvtss2sd	%xmm0, %xmm12
	movsd	%xmm12, -176(%rbp)
	.loc 2 360 30
	movq	-64(%rbp), %rax
	addq	$512, %rax
	.loc 2 360 34
	movq	16(%rax), %rax
	.loc 2 360 41
	movq	40(%rax), %rax
	.loc 2 360 46
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm13, %xmm13
	cvtss2sd	%xmm0, %xmm13
	movsd	%xmm13, -184(%rbp)
	.loc 2 360 7
	movq	-64(%rbp), %rax
	addq	$480, %rax
	.loc 2 360 11
	movq	16(%rax), %rax
	.loc 2 360 18
	movq	40(%rax), %rax
	.loc 2 360 23
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm14, %xmm14
	cvtss2sd	%xmm0, %xmm14
	movsd	%xmm14, -192(%rbp)
	.loc 2 359 99
	movq	-64(%rbp), %rax
	addq	$448, %rax
	.loc 2 359 103
	movq	16(%rax), %rax
	.loc 2 359 110
	movq	40(%rax), %rax
	.loc 2 359 115
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm15, %xmm15
	cvtss2sd	%xmm0, %xmm15
	movsd	%xmm15, -200(%rbp)
	.loc 2 359 76
	movq	-64(%rbp), %rax
	addq	$416, %rax
	.loc 2 359 80
	movq	16(%rax), %rax
	.loc 2 359 87
	movq	40(%rax), %rax
	.loc 2 359 92
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, -208(%rbp)
	.loc 2 359 53
	movq	-64(%rbp), %rax
	addq	$384, %rax
	.loc 2 359 57
	movq	16(%rax), %rax
	.loc 2 359 64
	movq	40(%rax), %rax
	.loc 2 359 69
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -216(%rbp)
	.loc 2 359 30
	movq	-64(%rbp), %rax
	addq	$352, %rax
	.loc 2 359 34
	movq	16(%rax), %rax
	.loc 2 359 41
	movq	40(%rax), %rax
	.loc 2 359 46
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movsd	%xmm3, -224(%rbp)
	.loc 2 359 7
	movq	-64(%rbp), %rax
	addq	$320, %rax
	.loc 2 359 11
	movq	16(%rax), %rax
	.loc 2 359 18
	movq	40(%rax), %rax
	.loc 2 359 23
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm15, %xmm15
	cvtss2sd	%xmm0, %xmm15
	.loc 2 358 95
	movq	-64(%rbp), %rax
	addq	$288, %rax
	.loc 2 358 98
	movq	16(%rax), %rax
	.loc 2 358 105
	movq	40(%rax), %rax
	.loc 2 358 110
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm14, %xmm14
	cvtss2sd	%xmm0, %xmm14
	.loc 2 358 73
	movq	-64(%rbp), %rax
	addq	$256, %rax
	.loc 2 358 76
	movq	16(%rax), %rax
	.loc 2 358 83
	movq	40(%rax), %rax
	.loc 2 358 88
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm13, %xmm13
	cvtss2sd	%xmm0, %xmm13
	.loc 2 358 51
	movq	-64(%rbp), %rax
	addq	$224, %rax
	.loc 2 358 54
	movq	16(%rax), %rax
	.loc 2 358 61
	movq	40(%rax), %rax
	.loc 2 358 66
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm12, %xmm12
	cvtss2sd	%xmm0, %xmm12
	.loc 2 358 29
	movq	-64(%rbp), %rax
	addq	$192, %rax
	.loc 2 358 32
	movq	16(%rax), %rax
	.loc 2 358 39
	movq	40(%rax), %rax
	.loc 2 358 44
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm11, %xmm11
	cvtss2sd	%xmm0, %xmm11
	.loc 2 358 7
	movq	-64(%rbp), %rax
	addq	$160, %rax
	.loc 2 358 10
	movq	16(%rax), %rax
	.loc 2 358 17
	movq	40(%rax), %rax
	.loc 2 358 22
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm10, %xmm10
	cvtss2sd	%xmm0, %xmm10
	.loc 2 357 95
	movq	-64(%rbp), %rax
	subq	$-128, %rax
	.loc 2 357 98
	movq	16(%rax), %rax
	.loc 2 357 105
	movq	40(%rax), %rax
	.loc 2 357 110
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm9, %xmm9
	cvtss2sd	%xmm0, %xmm9
	.loc 2 357 73
	movq	-64(%rbp), %rax
	addq	$96, %rax
	.loc 2 357 76
	movq	16(%rax), %rax
	.loc 2 357 83
	movq	40(%rax), %rax
	.loc 2 357 88
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm8, %xmm8
	cvtss2sd	%xmm0, %xmm8
	.loc 2 357 51
	movq	-64(%rbp), %rax
	addq	$64, %rax
	.loc 2 357 54
	movq	16(%rax), %rax
	.loc 2 357 61
	movq	40(%rax), %rax
	.loc 2 357 66
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm7, %xmm7
	cvtss2sd	%xmm0, %xmm7
	.loc 2 357 29
	movq	-64(%rbp), %rax
	addq	$32, %rax
	.loc 2 357 32
	movq	16(%rax), %rax
	.loc 2 357 39
	movq	40(%rax), %rax
	.loc 2 357 44
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm6, %xmm6
	cvtss2sd	%xmm0, %xmm6
	.loc 2 357 10
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 357 17
	movq	40(%rax), %rax
	.loc 2 357 22
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
	.loc 2 356 82
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 356 90
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	.loc 2 356 63
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 356 71
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	.loc 2 356 47
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 356 52
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	.loc 2 356 28
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 356 36
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 2 356 11
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 356 17
	movl	-48(%rbp), %esi
	salq	$2, %rsi
	addq	%rsi, %rax
	movss	(%rax), %xmm0
	.loc 2 346 4
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm0, %rsi
	movq	data_output_fd(%rip), %rax
	subq	$8, %rsp
	pushq	-80(%rbp)
	pushq	-88(%rbp)
	pushq	-96(%rbp)
	pushq	-104(%rbp)
	pushq	-112(%rbp)
	pushq	-120(%rbp)
	pushq	-128(%rbp)
	pushq	-136(%rbp)
	pushq	-144(%rbp)
	pushq	-152(%rbp)
	pushq	-160(%rbp)
	pushq	-168(%rbp)
	pushq	-176(%rbp)
	pushq	-184(%rbp)
	pushq	-192(%rbp)
	pushq	-200(%rbp)
	pushq	-208(%rbp)
	pushq	-216(%rbp)
	pushq	-224(%rbp)
	leaq	-8(%rsp), %rsp
	movsd	%xmm15, (%rsp)
	leaq	-8(%rsp), %rsp
	movsd	%xmm14, (%rsp)
	leaq	-8(%rsp), %rsp
	movsd	%xmm13, (%rsp)
	leaq	-8(%rsp), %rsp
	movsd	%xmm12, (%rsp)
	leaq	-8(%rsp), %rsp
	movsd	%xmm11, (%rsp)
	leaq	-8(%rsp), %rsp
	movsd	%xmm10, (%rsp)
	leaq	-8(%rsp), %rsp
	movsd	%xmm9, (%rsp)
	leaq	-8(%rsp), %rsp
	movsd	%xmm8, (%rsp)
	movq	%rsi, %xmm0
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	movl	$8, %eax
	call	fprintf@PLT
	addq	$224, %rsp
	.loc 2 365 13
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	.loc 2 365 20
	movl	-48(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 2 365 6
	testl	%eax, %eax
	je	.L59
	.loc 2 366 5
	movq	audio_output_filepath(%rip), %rax
	movq	%rax, %rdi
	call	archive_file@PLT
.L59:
	.loc 2 345 52 discriminator 2
	addl	$1, -48(%rbp)
.L58:
	.loc 2 345 34 discriminator 1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 345 26 discriminator 1
	cmpl	%eax, -48(%rbp)
	jb	.L60
.LBE6:
	.loc 2 369 32
	movq	config_struct(%rip), %rax
	movl	56(%rax), %eax
	.loc 2 369 59
	movq	config_struct(%rip), %rdx
	movl	80(%rdx), %ecx
	.loc 2 369 45
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %edx
	.loc 2 369 16
	movq	sample_count(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, sample_count(%rip)
	jmp	.L61
.L57:
	.loc 2 371 31
	movq	config_struct(%rip), %rax
	.loc 2 371 11
	movq	48(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 371 10 discriminator 1
	testl	%eax, %eax
	jne	.L61
.LBB7:
	.loc 2 372 17
	movl	$0, -44(%rbp)
	.loc 2 372 3
	jmp	.L62
.L74:
.LBB8:
	.loc 2 373 42
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 373 48
	movl	-44(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 373 26
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	call	json_real@PLT
	movq	%rax, -40(%rbp)
	.loc 2 373 57 discriminator 1
	cmpq	$0, -40(%rbp)
	jne	.L63
	.loc 2 373 7 discriminator 1
	movq	stderr(%rip), %rax
	movl	$373, %edx
	leaq	.LC34(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 373 72
	jmp	.L56
.L63:
	.loc 2 373 86 discriminator 2
	movq	LAeq_json(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_array_append_new@PLT
	.loc 2 373 85 discriminator 1
	testl	%eax, %eax
	je	.L65
	.loc 2 373 138 discriminator 3
	movq	stderr(%rip), %rax
	movl	$373, %edx
	leaq	.LC35(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 373 76
	jmp	.L56
.L65:
.LBE8:
.LBB9:
	.loc 2 374 42
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 374 47
	movl	-44(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 374 26
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	call	json_real@PLT
	movq	%rax, -32(%rbp)
	.loc 2 374 56 discriminator 1
	cmpq	$0, -32(%rbp)
	jne	.L66
	.loc 2 374 7 discriminator 1
	movq	stderr(%rip), %rax
	movl	$374, %edx
	leaq	.LC34(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 374 72
	jmp	.L56
.L66:
	.loc 2 374 86 discriminator 2
	movq	LAE_json(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_array_append_new@PLT
	.loc 2 374 85 discriminator 1
	testl	%eax, %eax
	je	.L67
	.loc 2 374 137 discriminator 3
	movq	stderr(%rip), %rax
	movl	$374, %edx
	leaq	.LC36(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 374 75
	jmp	.L56
.L67:
.LBE9:
.LBB10:
	.loc 2 375 42
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 375 50
	movl	-44(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 375 26
	pxor	%xmm6, %xmm6
	cvtss2sd	%xmm0, %xmm6
	movq	%xmm6, %rax
	movq	%rax, %xmm0
	call	json_real@PLT
	movq	%rax, -24(%rbp)
	.loc 2 375 59 discriminator 1
	cmpq	$0, -24(%rbp)
	jne	.L68
	.loc 2 375 7 discriminator 1
	movq	stderr(%rip), %rax
	movl	$375, %edx
	leaq	.LC34(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 375 72
	jmp	.L56
.L68:
	.loc 2 375 86 discriminator 2
	movq	LAFmin_json(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_array_append_new@PLT
	.loc 2 375 85 discriminator 1
	testl	%eax, %eax
	je	.L69
	.loc 2 375 140 discriminator 3
	movq	stderr(%rip), %rax
	movl	$375, %edx
	leaq	.LC37(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 375 78
	jmp	.L56
.L69:
.LBE10:
.LBB11:
	.loc 2 376 42
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 376 50
	movl	-44(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 376 26
	pxor	%xmm7, %xmm7
	cvtss2sd	%xmm0, %xmm7
	movq	%xmm7, %rax
	movq	%rax, %xmm0
	call	json_real@PLT
	movq	%rax, -16(%rbp)
	.loc 2 376 59 discriminator 1
	cmpq	$0, -16(%rbp)
	jne	.L70
	.loc 2 376 7 discriminator 1
	movq	stderr(%rip), %rax
	movl	$376, %edx
	leaq	.LC34(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 376 72
	jmp	.L56
.L70:
	.loc 2 376 86 discriminator 2
	movq	LAFmax_json(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_array_append_new@PLT
	.loc 2 376 85 discriminator 1
	testl	%eax, %eax
	je	.L71
	.loc 2 376 140 discriminator 3
	movq	stderr(%rip), %rax
	movl	$376, %edx
	leaq	.LC38(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 376 78
	jmp	.L56
.L71:
.LBE11:
.LBB12:
	.loc 2 377 42
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 377 50
	movl	-44(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 377 26
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	json_real@PLT
	movq	%rax, -8(%rbp)
	.loc 2 377 59 discriminator 1
	cmpq	$0, -8(%rbp)
	jne	.L72
	.loc 2 377 7 discriminator 1
	movq	stderr(%rip), %rax
	movl	$377, %edx
	leaq	.LC34(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 377 72
	jmp	.L56
.L72:
	.loc 2 377 86 discriminator 2
	movq	LApeak_json(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_array_append_new@PLT
	.loc 2 377 85 discriminator 1
	testl	%eax, %eax
	je	.L73
	.loc 2 377 140 discriminator 3
	movq	stderr(%rip), %rax
	movl	$377, %edx
	leaq	.LC39(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 377 78
	jmp	.L56
.L73:
.LBE12:
	.loc 2 372 52 discriminator 2
	addl	$1, -44(%rbp)
.L62:
	.loc 2 372 34 discriminator 1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 372 26 discriminator 1
	cmpl	%eax, -44(%rbp)
	jb	.L74
.LBE7:
	.loc 2 379 30
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 379 21
	movl	data_output_index(%rip), %edx
	addl	%edx, %eax
	movl	%eax, data_output_index(%rip)
.L61:
	.loc 2 381 30
	movq	config_struct(%rip), %rax
	movl	80(%rax), %edx
	.loc 2 381 14
	movl	output_time(%rip), %eax
	addl	%edx, %eax
	movl	%eax, output_time(%rip)
	.loc 2 382 18
	movq	config_struct(%rip), %rax
	movzbl	108(%rax), %eax
	.loc 2 382 4
	testb	%al, %al
	je	.L75
	.loc 2 383 3
	movq	data_output_fd(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	.loc 2 384 3
	movq	data_output_fd(%rip), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	.loc 2 384 3 is_stmt 0 discriminator 1
	movl	%eax, %edi
	call	fsync@PLT
.L75:
	.loc 2 386 5 is_stmt 1
	cmpb	$0, -68(%rbp)
	je	.L76
	.loc 2 386 50 discriminator 1
	movq	config_struct(%rip), %rax
	movl	56(%rax), %edx
	.loc 2 386 79 discriminator 1
	movq	config_struct(%rip), %rax
	movl	104(%rax), %eax
	.loc 2 386 64 discriminator 1
	imull	%edx, %eax
	movl	%eax, %edx
	.loc 2 386 33 discriminator 1
	movq	sample_count(%rip), %rax
	.loc 2 386 17 discriminator 1
	cmpq	%rax, %rdx
	jg	.L76
	.loc 2 387 3
	movl	$0, %eax
	call	output_file_close
	.loc 2 388 3
	movq	data_output_filepath(%rip), %rax
	movl	output_time(%rip), %edx
	movl	%edx, %edx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	output_new_filename
	.loc 2 389 3
	movq	data_output_filepath(%rip), %rax
	movq	%rax, %rdi
	call	output_file_open
	.loc 2 390 15
	movl	$0, output_time(%rip)
	.loc 2 391 16
	movq	$0, sample_count(%rip)
.L76:
	.loc 2 394 32
	movl	$0, %edi
	call	time@PLT
	.loc 2 394 42 discriminator 1
	movl	%eax, %edx
	.loc 2 394 57 discriminator 1
	movq	record_struct(%rip), %rax
	movq	960(%rax), %rax
	.loc 2 394 42 discriminator 1
	movl	%eax, %ecx
	.loc 2 394 15 discriminator 1
	movq	record_struct(%rip), %rax
	.loc 2 394 42 discriminator 1
	subl	%ecx, %edx
	.loc 2 394 30 discriminator 1
	movl	%edx, 968(%rax)
	.loc 2 395 5
	cmpb	$0, -68(%rbp)
	je	.L56
	.loc 2 395 33 discriminator 1
	movq	record_struct(%rip), %rax
	movq	936(%rax), %rcx
	.loc 2 395 64 discriminator 1
	movq	config_struct(%rip), %rax
	movl	56(%rax), %edx
	.loc 2 395 93 discriminator 1
	movq	config_struct(%rip), %rax
	movl	92(%rax), %eax
	.loc 2 395 78 discriminator 1
	imull	%edx, %eax
	movl	%eax, %eax
	.loc 2 395 17 discriminator 1
	cmpq	%rax, %rcx
	jl	.L56
	.loc 2 396 3
	movl	$0, %eax
	call	record_stop@PLT
	.loc 2 397 3
	movq	audio_output_filepath(%rip), %rax
	movl	output_time(%rip), %edx
	movl	%edx, %edx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	output_new_filename
	.loc 2 398 15
	movl	$0, output_time(%rip)
	.loc 2 399 7
	movl	$0, %eax
	call	record_start@PLT
	.loc 2 399 5 discriminator 1
	testl	%eax, %eax
	jne	.L56
	.loc 2 400 4
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	movl	$1, %esi
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 2 401 4
	movl	$1, %edi
	call	exit@PLT
.L56:
	.loc 2 404 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE332:
	.size	output_record, .-output_record
	.type	get_filename, @function
get_filename:
.LFB333:
	.loc 2 406 49
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	.loc 2 407 27
	movq	-56(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -40(%rbp)
	.loc 2 408 47
	cmpq	$0, -40(%rbp)
	je	.L78
	.loc 2 408 47 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	jmp	.L79
.L78:
	.loc 2 408 47 discriminator 2
	movq	-56(%rbp), %rax
.L79:
	.loc 2 408 17 is_stmt 1 discriminator 4
	movq	%rax, -32(%rbp)
	.loc 2 410 23
	movq	-32(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 411 55
	cmpq	$0, -24(%rbp)
	je	.L80
	.loc 2 411 46 discriminator 1
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	jmp	.L81
.L80:
	.loc 2 411 57 discriminator 2
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
.L81:
	.loc 2 411 12 discriminator 4
	movq	%rax, -16(%rbp)
	.loc 2 413 17
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 414 8
	cmpq	$0, -8(%rbp)
	jne	.L82
	.loc 2 414 21 discriminator 1
	movl	$0, %eax
	.loc 2 414 21 is_stmt 0
	jmp	.L83
.L82:
	.loc 2 416 5 is_stmt 1
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	.loc 2 417 8
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 417 23
	movb	$0, (%rax)
	.loc 2 419 12
	movq	-8(%rbp), %rax
.L83:
	.loc 2 420 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE333:
	.size	get_filename, .-get_filename
	.type	get_extention, @function
get_extention:
.LFB334:
	.loc 2 423 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 424 20
	movq	-24(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -8(%rbp)
	.loc 2 425 30
	cmpq	$0, -8(%rbp)
	je	.L85
	.loc 2 425 30 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 425 30
	jmp	.L87
.L85:
	.loc 2 425 30 discriminator 2
	movl	$0, %eax
.L87:
	.loc 2 426 1 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE334:
	.size	get_extention, .-get_extention
	.type	get_stem, @function
get_stem:
.LFB335:
	.loc 2 429 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 430 22
	movq	-40(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -32(%rbp)
	.loc 2 431 5
	cmpq	$0, -32(%rbp)
	jne	.L89
	.loc 2 432 22
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 432 9 discriminator 1
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
.L89:
	.loc 2 433 22
	movq	-40(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 434 5
	cmpq	$0, -24(%rbp)
	jne	.L90
	.loc 2 435 9
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L91
.L90:
	.loc 2 437 9
	addq	$1, -24(%rbp)
.L91:
	.loc 2 438 27
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	.loc 2 438 9
	movq	%rax, -16(%rbp)
	.loc 2 440 15
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 441 5
	cmpq	$0, -8(%rbp)
	jne	.L92
	.loc 2 442 9
	movl	$0, %eax
	jmp	.L93
.L92:
	.loc 2 443 2
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 444 9
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 444 22
	movb	$0, (%rax)
	.loc 2 445 9
	movq	-8(%rbp), %rax
.L93:
	.loc 2 446 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE335:
	.size	get_stem, .-get_stem
	.type	concat2, @function
concat2:
.LFB336:
	.loc 2 448 62
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 449 26
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 2 449 41 discriminator 1
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 449 39 discriminator 2
	addq	%rbx, %rax
	.loc 2 449 19 discriminator 2
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	.loc 2 450 5
	cmpq	$0, -24(%rbp)
	jne	.L95
	.loc 2 451 3
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$14, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 2 452 9
	movl	$0, %eax
	jmp	.L96
.L95:
	.loc 2 454 2
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 2 455 2
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	.loc 2 456 9
	movq	-24(%rbp), %rax
.L96:
	.loc 2 457 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE336:
	.size	concat2, .-concat2
	.type	concat3, @function
concat3:
.LFB337:
	.loc 2 459 85
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 2 460 26
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 2 460 41 discriminator 1
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 460 39 discriminator 2
	addq	%rax, %rbx
	.loc 2 460 60 discriminator 2
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 460 58 discriminator 3
	addq	%rbx, %rax
	.loc 2 460 19 discriminator 3
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	.loc 2 461 5
	cmpq	$0, -24(%rbp)
	jne	.L98
	.loc 2 462 3
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$14, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 2 463 9
	movl	$0, %eax
	jmp	.L99
.L98:
	.loc 2 465 2
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 2 466 2
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	.loc 2 467 2
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	.loc 2 468 9
	movq	-24(%rbp), %rax
.L99:
	.loc 2 469 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE337:
	.size	concat3, .-concat3
	.globl	output_set_filename
	.type	output_set_filename, @function
output_set_filename:
.LFB338:
	.loc 2 472 1
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
	.loc 2 473 5
	cmpq	$0, -24(%rbp)
	je	.L101
.LBB13:
	.loc 2 474 8
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	.loc 2 475 6
	cmpb	$47, -9(%rbp)
	je	.L102
	.loc 2 475 27 discriminator 1
	cmpb	$46, -9(%rbp)
	je	.L102
	.loc 2 476 48
	movq	config_struct(%rip), %rax
	.loc 2 476 27
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	concat2
	.loc 2 476 25 discriminator 1
	movq	%rax, data_output_filepath(%rip)
.LBE13:
	.loc 2 496 1
	jmp	.L106
.L102:
.LBB14:
	.loc 2 478 27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	.loc 2 478 25 discriminator 1
	movq	%rax, data_output_filepath(%rip)
.LBE14:
	.loc 2 496 1
	jmp	.L106
.L101:
	.loc 2 480 10
	cmpq	$0, -32(%rbp)
	je	.L105
.LBB15:
	.loc 2 481 20
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	get_filename
	movq	%rax, -8(%rbp)
	.loc 2 485 23
	movq	config_struct(%rip), %rax
	.loc 2 483 26
	movq	48(%rax), %rdx
	.loc 2 483 47
	movq	config_struct(%rip), %rax
	.loc 2 483 26
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	concat3
	.loc 2 483 24 discriminator 1
	movq	%rax, data_output_filepath(%rip)
	.loc 2 489 23
	movq	config_struct(%rip), %rax
	.loc 2 487 27
	movq	40(%rax), %rdx
	.loc 2 487 48
	movq	config_struct(%rip), %rax
	.loc 2 487 27
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	concat3
	.loc 2 487 25 discriminator 1
	movq	%rax, audio_output_filepath(%rip)
	.loc 2 490 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE15:
	.loc 2 496 1
	jmp	.L106
.L105:
	.loc 2 493 60
	movq	config_struct(%rip), %rax
	.loc 2 493 26
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	output_init_filename
	.loc 2 493 24 discriminator 1
	movq	%rax, data_output_filepath(%rip)
	.loc 2 494 61
	movq	config_struct(%rip), %rax
	.loc 2 494 27
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	output_init_filename
	.loc 2 494 25 discriminator 1
	movq	%rax, audio_output_filepath(%rip)
.L106:
	.loc 2 496 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE338:
	.size	output_set_filename, .-output_set_filename
	.globl	output_get_data_filepath
	.type	output_get_data_filepath, @function
output_get_data_filepath:
.LFB339:
	.loc 2 499 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 500 9
	movq	data_output_filepath(%rip), %rax
	.loc 2 501 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE339:
	.size	output_get_data_filepath, .-output_get_data_filepath
	.globl	output_get_audio_filepath
	.type	output_get_audio_filepath, @function
output_get_audio_filepath:
.LFB340:
	.loc 2 504 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 505 9
	movq	audio_output_filepath(%rip), %rax
	.loc 2 506 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE340:
	.size	output_get_audio_filepath, .-output_get_audio_filepath
	.globl	audit_create
	.type	audit_create, @function
audit_create:
.LFB341:
	.loc 2 511 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 512 17
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 513 5
	cmpq	$0, -8(%rbp)
	jne	.L112
	.loc 2 514 9
	movl	$0, %eax
	jmp	.L113
.L112:
	.loc 2 515 12
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 516 41
	movq	config_struct(%rip), %rax
	movl	64(%rax), %eax
	.loc 2 516 16
	movl	$1, %esi
	movl	%eax, %edi
	call	wave_create@PLT
	.loc 2 516 14 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 2 517 49
	movq	config_struct(%rip), %rax
	movl	56(%rax), %eax
	.loc 2 517 2
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	wave_set_sample_rate@PLT
	.loc 2 518 9
	movq	-8(%rbp), %rax
.L113:
	.loc 2 519 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE341:
	.size	audit_create, .-audit_create
	.type	audit_make_filename, @function
audit_make_filename:
.LFB342:
	.loc 2 522 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 523 26
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	get_extention
	movq	%rax, -48(%rbp)
	.loc 2 524 15
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	get_stem
	movq	%rax, -40(%rbp)
	.loc 2 525 5
	cmpq	$0, -40(%rbp)
	jne	.L115
	.loc 2 526 9
	movl	$0, %eax
	jmp	.L116
.L115:
	.loc 2 527 25
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 2 527 55 discriminator 1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 527 53 discriminator 2
	addq	%rax, %rbx
	.loc 2 527 74 discriminator 2
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 527 72 discriminator 3
	addq	%rax, %rbx
	.loc 2 527 91 discriminator 3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 527 89 discriminator 4
	addq	%rbx, %rax
	.loc 2 527 9 discriminator 4
	addq	$3, %rax
	movq	%rax, -32(%rbp)
	.loc 2 528 19
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	.loc 2 529 5
	cmpq	$0, -24(%rbp)
	jne	.L117
	.loc 2 530 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 531 9
	movl	$0, %eax
	jmp	.L116
.L117:
	.loc 2 533 2
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 2 534 2
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	.loc 2 535 2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 536 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	.loc 2 536 2 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movw	$46, (%rax)
	.loc 2 537 2 is_stmt 1
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	.loc 2 538 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	.loc 2 538 2 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movw	$46, (%rax)
	.loc 2 539 2 is_stmt 1
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	.loc 2 540 9
	movq	-24(%rbp), %rax
.L116:
	.loc 2 541 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE342:
	.size	audit_make_filename, .-audit_make_filename
	.globl	audit_append_samples
	.type	audit_append_samples, @function
audit_append_samples:
.LFB343:
	.loc 2 544 1
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
	.loc 2 545 20
	movl	-36(%rbp), %eax
	addq	%rax, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	.loc 2 546 5
	cmpq	$0, -16(%rbp)
	jne	.L119
	.loc 2 547 9
	movl	$1, %eax
	jmp	.L120
.L119:
	.loc 2 548 2
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	samples_float_to_int16
	.loc 2 549 24
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	wave_append_samples@PLT
	movq	%rax, -8(%rbp)
	.loc 2 550 2
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 551 22
	movl	-36(%rbp), %eax
	cmpq	%rax, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
.L120:
	.loc 2 552 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE343:
	.size	audit_append_samples, .-audit_append_samples
	.globl	audit_destroy
	.type	audit_destroy, @function
audit_destroy:
.LFB344:
	.loc 2 555 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 556 2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	wave_format_update@PLT
	.loc 2 557 19
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	config_struct(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	audit_make_filename
	movq	%rax, -8(%rbp)
	.loc 2 558 2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	wave_store@PLT
	.loc 2 559 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 560 2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	wave_destroy@PLT
	.loc 2 561 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 562 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE344:
	.size	audit_destroy, .-audit_destroy
	.section	.rodata
.LC41:
	.string	"samples_int16 != NULL"
.LC42:
	.string	"samples_float != NULL"
.LC43:
	.string	"config_struct != NULL"
.LC44:
	.string	"config_struct->channels > 0"
	.align 8
.LC48:
	.string	"*samples_float_channel >= -1.0f && *samples_float_channel <= +1.0f"
	.text
	.globl	samples_int16_to_float
	.type	samples_int16_to_float, @function
samples_int16_to_float:
.LFB345:
	.loc 2 570 92
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 2 571 47
	cmpq	$0, -40(%rbp)
	jne	.L123
	.loc 2 571 24 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$571, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L123:
	.loc 2 572 47
	cmpq	$0, -48(%rbp)
	jne	.L124
	.loc 2 572 24 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$572, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L124:
	.loc 2 573 18
	movq	config_struct(%rip), %rax
	.loc 2 573 47
	testq	%rax, %rax
	jne	.L125
	.loc 2 573 24 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$573, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L125:
	.loc 2 574 17
	movq	config_struct(%rip), %rax
	movl	60(%rax), %eax
	.loc 2 574 36
	testl	%eax, %eax
	jne	.L126
	.loc 2 574 13 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$574, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L126:
.LBB16:
	.loc 2 576 19
	movl	$0, -24(%rbp)
	.loc 2 576 5
	jmp	.L127
.L134:
.LBB17:
	.loc 2 577 58
	movl	-24(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %eax
	.loc 2 577 54
	leaq	0(,%rax,4), %rdx
	.loc 2 577 16
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 578 56
	movl	-24(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	.loc 2 578 18
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.LBB18:
	.loc 2 579 23
	movl	$0, -20(%rbp)
	.loc 2 579 9
	jmp	.L128
.L133:
	.loc 2 580 46
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 2 580 39
	cwtl
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	.loc 2 580 70
	movss	.LC45(%rip), %xmm1
	divss	%xmm1, %xmm0
	.loc 2 580 36
	movq	-16(%rbp), %rax
	movss	%xmm0, (%rax)
	.loc 2 581 12
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0
	.loc 2 581 44
	movss	.LC46(%rip), %xmm1
	comiss	%xmm1, %xmm0
	jb	.L129
	.loc 2 581 47 discriminator 1
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm1
	.loc 2 581 44 discriminator 1
	movss	.LC47(%rip), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L132
.L129:
	.loc 2 581 21 discriminator 3
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$581, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L132:
	.loc 2 582 35
	addq	$4, -16(%rbp)
	.loc 2 583 51
	movq	config_struct(%rip), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	.loc 2 583 35
	addq	%rax, %rax
	addq	%rax, -8(%rbp)
	.loc 2 579 43 discriminator 2
	addl	$1, -20(%rbp)
.L128:
	.loc 2 579 32 discriminator 1
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jb	.L133
.LBE18:
.LBE17:
	.loc 2 576 56 discriminator 2
	addl	$1, -24(%rbp)
.L127:
	.loc 2 576 43 discriminator 1
	movq	config_struct(%rip), %rax
	movl	60(%rax), %eax
	.loc 2 576 28 discriminator 1
	cmpl	%eax, -24(%rbp)
	jb	.L134
.LBE16:
	.loc 2 586 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE345:
	.size	samples_int16_to_float, .-samples_int16_to_float
	.globl	samples_float_to_int16
	.type	samples_float_to_int16, @function
samples_float_to_int16:
.LFB346:
	.loc 2 590 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
.LBB19:
	.loc 2 591 16
	movl	$0, -8(%rbp)
	.loc 2 591 2
	jmp	.L137
.L138:
.LBB20:
	.loc 2 593 26
	movl	-8(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 593 9
	movss	(%rax), %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 2 594 18
	movss	-4(%rbp), %xmm1
	movss	.LC45(%rip), %xmm0
	mulss	%xmm1, %xmm0
	.loc 2 594 12
	cvttss2sil	%xmm0, %eax
	movw	%ax, -10(%rbp)
	.loc 2 595 16
	movl	-8(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 595 20
	movzwl	-10(%rbp), %eax
	movw	%ax, (%rdx)
.LBE20:
	.loc 2 591 36 discriminator 3
	addl	$1, -8(%rbp)
.L137:
	.loc 2 591 25 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L138
.LBE19:
	.loc 2 597 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE346:
	.size	samples_float_to_int16, .-samples_float_to_int16
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.1, @object
	.size	__PRETTY_FUNCTION__.1, 18
__PRETTY_FUNCTION__.1:
	.string	"input_device_read"
	.align 16
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 23
__PRETTY_FUNCTION__.0:
	.string	"samples_int16_to_float"
	.align 4
.LC45:
	.long	1191182336
	.align 4
.LC46:
	.long	-1082130432
	.align 4
.LC47:
	.long	1065353216
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 11 "/usr/include/alsa/pcm.h"
	.file 12 "src/config.h"
	.file 13 "/usr/include/stdio.h"
	.file 14 "/usr/local/include/ogg/config_types.h"
	.file 15 "/usr/local/include/ogg/ogg.h"
	.file 16 "/usr/local/include/vorbis/codec.h"
	.file 17 "src/storage.h"
	.file 18 "src/record.h"
	.file 19 "src/process.h"
	.file 20 "src/filter.h"
	.file 21 "/usr/include/glib-2.0/glib/gtypes.h"
	.file 22 "/usr/include/glib-2.0/glib/garray.h"
	.file 23 "/usr/local/include/wave.h"
	.file 24 "src/in_out.h"
	.file 25 "/usr/include/string.h"
	.file 26 "/usr/include/unistd.h"
	.file 27 "/usr/include/stdlib.h"
	.file 28 "/usr/include/errno.h"
	.file 29 "/usr/include/time.h"
	.file 30 "/usr/include/assert.h"
	.file 31 "/usr/include/alsa/error.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2436
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2c
	.long	.LASF479
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF8
	.byte	0x3
	.byte	0x27
	.byte	0x1a
	.long	0x5d
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0x28
	.byte	0x1c
	.long	0x35
	.uleb128 0x2d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x3c
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x2c
	.byte	0x19
	.long	0x8f
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x8f
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x8f
	.uleb128 0x4
	.long	.LASF15
	.byte	0x3
	.byte	0xa0
	.byte	0x12
	.long	0x8f
	.uleb128 0x2e
	.byte	0x8
	.uleb128 0x5
	.long	0xc6
	.uleb128 0x1b
	.long	0xbc
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x14
	.long	0xc6
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0xd6
	.byte	0x1b
	.long	0x43
	.uleb128 0x2f
	.long	0xd2
	.uleb128 0x5
	.long	0xbc
	.uleb128 0x13
	.long	0xc6
	.long	0xf8
	.uleb128 0x17
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	.LASF56
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x27f
	.uleb128 0x1
	.long	.LASF18
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x70
	.byte	0
	.uleb128 0x1
	.long	.LASF19
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xbc
	.byte	0x8
	.uleb128 0x1
	.long	.LASF20
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xbc
	.byte	0x10
	.uleb128 0x1
	.long	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xbc
	.byte	0x18
	.uleb128 0x1
	.long	.LASF22
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xbc
	.byte	0x20
	.uleb128 0x1
	.long	.LASF23
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xbc
	.byte	0x28
	.uleb128 0x1
	.long	.LASF24
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xbc
	.byte	0x30
	.uleb128 0x1
	.long	.LASF25
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xbc
	.byte	0x38
	.uleb128 0x1
	.long	.LASF26
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xbc
	.byte	0x40
	.uleb128 0x1
	.long	.LASF27
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xbc
	.byte	0x48
	.uleb128 0x1
	.long	.LASF28
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xbc
	.byte	0x50
	.uleb128 0x1
	.long	.LASF29
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xbc
	.byte	0x58
	.uleb128 0x1
	.long	.LASF30
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x298
	.byte	0x60
	.uleb128 0x1
	.long	.LASF31
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x29d
	.byte	0x68
	.uleb128 0x1
	.long	.LASF32
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x70
	.byte	0x70
	.uleb128 0x1
	.long	.LASF33
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x70
	.byte	0x74
	.uleb128 0x1
	.long	.LASF34
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x96
	.byte	0x78
	.uleb128 0x1
	.long	.LASF35
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x2a2
	.byte	0x83
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x2b2
	.byte	0x88
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xa2
	.byte	0x90
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2bc
	.byte	0x98
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2c6
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF42
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x29d
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF43
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0xba
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF44
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0xd2
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF45
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x70
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF46
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2cb
	.byte	0xc4
	.byte	0
	.uleb128 0x4
	.long	.LASF47
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xf8
	.uleb128 0x30
	.long	.LASF480
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0x18
	.long	.LASF48
	.uleb128 0x5
	.long	0x293
	.uleb128 0x5
	.long	0xf8
	.uleb128 0x13
	.long	0xc6
	.long	0x2b2
	.uleb128 0x17
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x28b
	.uleb128 0x18
	.long	.LASF49
	.uleb128 0x5
	.long	0x2b7
	.uleb128 0x18
	.long	.LASF50
	.uleb128 0x5
	.long	0x2c1
	.uleb128 0x13
	.long	0xc6
	.long	0x2db
	.uleb128 0x17
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	0xcd
	.uleb128 0x1b
	.long	0x2db
	.uleb128 0x5
	.long	0x27f
	.uleb128 0x1b
	.long	0x2e5
	.uleb128 0x1e
	.long	.LASF200
	.byte	0xd
	.byte	0x97
	.byte	0xe
	.long	0x2e5
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF51
	.uleb128 0x4
	.long	.LASF52
	.byte	0x7
	.byte	0xa
	.byte	0x12
	.long	0xae
	.uleb128 0x14
	.long	0x302
	.uleb128 0x4
	.long	.LASF53
	.byte	0x8
	.byte	0x19
	.byte	0x13
	.long	0x51
	.uleb128 0x4
	.long	.LASF54
	.byte	0x8
	.byte	0x1b
	.byte	0x13
	.long	0x83
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF55
	.uleb128 0x5
	.long	0x337
	.uleb128 0x31
	.uleb128 0x32
	.string	"tm"
	.byte	0x38
	.byte	0x9
	.byte	0x7
	.byte	0x8
	.long	0x3d4
	.uleb128 0x1
	.long	.LASF57
	.byte	0x9
	.byte	0x9
	.byte	0x7
	.long	0x70
	.byte	0
	.uleb128 0x1
	.long	.LASF58
	.byte	0x9
	.byte	0xa
	.byte	0x7
	.long	0x70
	.byte	0x4
	.uleb128 0x1
	.long	.LASF59
	.byte	0x9
	.byte	0xb
	.byte	0x7
	.long	0x70
	.byte	0x8
	.uleb128 0x1
	.long	.LASF60
	.byte	0x9
	.byte	0xc
	.byte	0x7
	.long	0x70
	.byte	0xc
	.uleb128 0x1
	.long	.LASF61
	.byte	0x9
	.byte	0xd
	.byte	0x7
	.long	0x70
	.byte	0x10
	.uleb128 0x1
	.long	.LASF62
	.byte	0x9
	.byte	0xe
	.byte	0x7
	.long	0x70
	.byte	0x14
	.uleb128 0x1
	.long	.LASF63
	.byte	0x9
	.byte	0xf
	.byte	0x7
	.long	0x70
	.byte	0x18
	.uleb128 0x1
	.long	.LASF64
	.byte	0x9
	.byte	0x10
	.byte	0x7
	.long	0x70
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF65
	.byte	0x9
	.byte	0x11
	.byte	0x7
	.long	0x70
	.byte	0x20
	.uleb128 0x1
	.long	.LASF66
	.byte	0x9
	.byte	0x14
	.byte	0xc
	.long	0x8f
	.byte	0x28
	.uleb128 0x1
	.long	.LASF67
	.byte	0x9
	.byte	0x15
	.byte	0xf
	.long	0x2db
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	0x338
	.uleb128 0x4
	.long	.LASF68
	.byte	0xa
	.byte	0x19
	.byte	0x14
	.long	0x64
	.uleb128 0x4
	.long	.LASF69
	.byte	0xa
	.byte	0x1a
	.byte	0x14
	.long	0x77
	.uleb128 0x1f
	.long	.LASF74
	.byte	0x7
	.long	0x3c
	.byte	0x65
	.long	0x413
	.uleb128 0x3
	.long	.LASF70
	.byte	0
	.uleb128 0x3
	.long	.LASF71
	.byte	0x1
	.uleb128 0x3
	.long	.LASF72
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF73
	.byte	0xb
	.byte	0x6b
	.byte	0x3
	.long	0x3f1
	.uleb128 0x1f
	.long	.LASF75
	.byte	0x7
	.long	0x3c
	.byte	0x6e
	.long	0x453
	.uleb128 0x3
	.long	.LASF76
	.byte	0
	.uleb128 0x3
	.long	.LASF77
	.byte	0x1
	.uleb128 0x3
	.long	.LASF78
	.byte	0x2
	.uleb128 0x3
	.long	.LASF79
	.byte	0x3
	.uleb128 0x3
	.long	.LASF80
	.byte	0x4
	.uleb128 0x3
	.long	.LASF81
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF82
	.byte	0xb
	.byte	0x7a
	.byte	0x3
	.long	0x41f
	.uleb128 0x1f
	.long	.LASF83
	.byte	0x5
	.long	0x70
	.byte	0x7d
	.long	0x5ef
	.uleb128 0x33
	.long	.LASF84
	.sleb128 -1
	.uleb128 0x3
	.long	.LASF85
	.byte	0
	.uleb128 0x3
	.long	.LASF86
	.byte	0x1
	.uleb128 0x3
	.long	.LASF87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF88
	.byte	0x3
	.uleb128 0x3
	.long	.LASF89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF90
	.byte	0x5
	.uleb128 0x3
	.long	.LASF91
	.byte	0x6
	.uleb128 0x3
	.long	.LASF92
	.byte	0x7
	.uleb128 0x3
	.long	.LASF93
	.byte	0x8
	.uleb128 0x3
	.long	.LASF94
	.byte	0x9
	.uleb128 0x3
	.long	.LASF95
	.byte	0xa
	.uleb128 0x3
	.long	.LASF96
	.byte	0xb
	.uleb128 0x3
	.long	.LASF97
	.byte	0xc
	.uleb128 0x3
	.long	.LASF98
	.byte	0xd
	.uleb128 0x3
	.long	.LASF99
	.byte	0xe
	.uleb128 0x3
	.long	.LASF100
	.byte	0xf
	.uleb128 0x3
	.long	.LASF101
	.byte	0x10
	.uleb128 0x3
	.long	.LASF102
	.byte	0x11
	.uleb128 0x3
	.long	.LASF103
	.byte	0x12
	.uleb128 0x3
	.long	.LASF104
	.byte	0x13
	.uleb128 0x3
	.long	.LASF105
	.byte	0x14
	.uleb128 0x3
	.long	.LASF106
	.byte	0x15
	.uleb128 0x3
	.long	.LASF107
	.byte	0x16
	.uleb128 0x3
	.long	.LASF108
	.byte	0x17
	.uleb128 0x3
	.long	.LASF109
	.byte	0x18
	.uleb128 0x3
	.long	.LASF110
	.byte	0x19
	.uleb128 0x3
	.long	.LASF111
	.byte	0x1a
	.uleb128 0x3
	.long	.LASF112
	.byte	0x1b
	.uleb128 0x3
	.long	.LASF113
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF114
	.byte	0x1f
	.uleb128 0x3
	.long	.LASF115
	.byte	0x20
	.uleb128 0x3
	.long	.LASF116
	.byte	0x21
	.uleb128 0x3
	.long	.LASF117
	.byte	0x22
	.uleb128 0x3
	.long	.LASF118
	.byte	0x23
	.uleb128 0x3
	.long	.LASF119
	.byte	0x24
	.uleb128 0x3
	.long	.LASF120
	.byte	0x25
	.uleb128 0x3
	.long	.LASF121
	.byte	0x26
	.uleb128 0x3
	.long	.LASF122
	.byte	0x27
	.uleb128 0x3
	.long	.LASF123
	.byte	0x28
	.uleb128 0x3
	.long	.LASF124
	.byte	0x29
	.uleb128 0x3
	.long	.LASF125
	.byte	0x2a
	.uleb128 0x3
	.long	.LASF126
	.byte	0x2b
	.uleb128 0x3
	.long	.LASF127
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF128
	.byte	0x2d
	.uleb128 0x3
	.long	.LASF129
	.byte	0x2e
	.uleb128 0x3
	.long	.LASF130
	.byte	0x2f
	.uleb128 0x3
	.long	.LASF131
	.byte	0x30
	.uleb128 0x3
	.long	.LASF132
	.byte	0x31
	.uleb128 0x3
	.long	.LASF133
	.byte	0x32
	.uleb128 0x3
	.long	.LASF134
	.byte	0x33
	.uleb128 0x3
	.long	.LASF135
	.byte	0x34
	.uleb128 0x3
	.long	.LASF136
	.byte	0x34
	.uleb128 0x3
	.long	.LASF137
	.byte	0x2
	.uleb128 0x3
	.long	.LASF138
	.byte	0x4
	.uleb128 0x3
	.long	.LASF139
	.byte	0x6
	.uleb128 0x3
	.long	.LASF140
	.byte	0x8
	.uleb128 0x3
	.long	.LASF141
	.byte	0xa
	.uleb128 0x3
	.long	.LASF142
	.byte	0xc
	.uleb128 0x3
	.long	.LASF143
	.byte	0xe
	.uleb128 0x3
	.long	.LASF144
	.byte	0x10
	.uleb128 0x3
	.long	.LASF145
	.byte	0x12
	.uleb128 0x3
	.long	.LASF146
	.byte	0x19
	.uleb128 0x3
	.long	.LASF147
	.byte	0x1b
	.byte	0
	.uleb128 0x1c
	.long	.LASF148
	.value	0x119
	.byte	0x3
	.long	0x45f
	.uleb128 0x1c
	.long	.LASF149
	.value	0x18c
	.byte	0x17
	.long	0x43
	.uleb128 0x1c
	.long	.LASF150
	.value	0x18e
	.byte	0xe
	.long	0x8f
	.uleb128 0x1c
	.long	.LASF151
	.value	0x1a2
	.byte	0x19
	.long	0x61f
	.uleb128 0x18
	.long	.LASF152
	.uleb128 0x5
	.long	0x613
	.uleb128 0x24
	.long	0x3c
	.byte	0x1
	.byte	0x32
	.byte	0xe
	.long	0x666
	.uleb128 0x3
	.long	.LASF153
	.byte	0
	.uleb128 0x3
	.long	.LASF154
	.byte	0x1
	.uleb128 0x3
	.long	.LASF155
	.byte	0x2
	.uleb128 0x3
	.long	.LASF156
	.byte	0x3
	.uleb128 0x3
	.long	.LASF157
	.byte	0x4
	.uleb128 0x3
	.long	.LASF158
	.byte	0x5
	.uleb128 0x3
	.long	.LASF159
	.byte	0x6
	.uleb128 0x3
	.long	.LASF160
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	.LASF161
	.byte	0x1
	.byte	0x3b
	.byte	0x3
	.long	0x629
	.uleb128 0xf
	.long	.LASF162
	.byte	0x10
	.byte	0x1
	.byte	0x3d
	.byte	0x10
	.long	0x69a
	.uleb128 0x1
	.long	.LASF163
	.byte	0x1
	.byte	0x3e
	.byte	0xf
	.long	0x666
	.byte	0
	.uleb128 0x1
	.long	.LASF164
	.byte	0x1
	.byte	0x3f
	.byte	0x15
	.long	0xde
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF162
	.byte	0x1
	.byte	0x40
	.byte	0x3
	.long	0x672
	.uleb128 0x14
	.long	0x69a
	.uleb128 0x4
	.long	.LASF165
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.long	0x2fb
	.uleb128 0xf
	.long	.LASF166
	.byte	0xb0
	.byte	0xc
	.byte	0x53
	.byte	0x8
	.long	0x858
	.uleb128 0x1
	.long	.LASF167
	.byte	0xc
	.byte	0x55
	.byte	0xe
	.long	0x2db
	.byte	0
	.uleb128 0x1
	.long	.LASF168
	.byte	0xc
	.byte	0x56
	.byte	0xe
	.long	0x2db
	.byte	0x8
	.uleb128 0x1
	.long	.LASF169
	.byte	0xc
	.byte	0x57
	.byte	0xe
	.long	0x2db
	.byte	0x10
	.uleb128 0x1
	.long	.LASF170
	.byte	0xc
	.byte	0x58
	.byte	0xe
	.long	0x2db
	.byte	0x18
	.uleb128 0x1
	.long	.LASF171
	.byte	0xc
	.byte	0x59
	.byte	0xe
	.long	0x2db
	.byte	0x20
	.uleb128 0x1
	.long	.LASF172
	.byte	0xc
	.byte	0x5a
	.byte	0xe
	.long	0x2db
	.byte	0x28
	.uleb128 0x1
	.long	.LASF173
	.byte	0xc
	.byte	0x5b
	.byte	0xe
	.long	0x2db
	.byte	0x30
	.uleb128 0x1
	.long	.LASF174
	.byte	0xc
	.byte	0x5d
	.byte	0xb
	.long	0x3c
	.byte	0x38
	.uleb128 0x1
	.long	.LASF175
	.byte	0xc
	.byte	0x5e
	.byte	0xb
	.long	0x3c
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF176
	.byte	0xc
	.byte	0x5f
	.byte	0xb
	.long	0x3c
	.byte	0x40
	.uleb128 0x1
	.long	.LASF177
	.byte	0xc
	.byte	0x60
	.byte	0xb
	.long	0x3c
	.byte	0x44
	.uleb128 0x1
	.long	.LASF178
	.byte	0xc
	.byte	0x61
	.byte	0xb
	.long	0x3c
	.byte	0x48
	.uleb128 0x1
	.long	.LASF179
	.byte	0xc
	.byte	0x62
	.byte	0xb
	.long	0x3c
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF180
	.byte	0xc
	.byte	0x63
	.byte	0xb
	.long	0x3c
	.byte	0x50
	.uleb128 0x1
	.long	.LASF181
	.byte	0xc
	.byte	0x64
	.byte	0xb
	.long	0x3c
	.byte	0x54
	.uleb128 0x1
	.long	.LASF182
	.byte	0xc
	.byte	0x65
	.byte	0xb
	.long	0x3c
	.byte	0x58
	.uleb128 0x1
	.long	.LASF183
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.long	0x3c
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF184
	.byte	0xc
	.byte	0x67
	.byte	0x8
	.long	0x858
	.byte	0x60
	.uleb128 0x1
	.long	.LASF185
	.byte	0xc
	.byte	0x68
	.byte	0xb
	.long	0x3c
	.byte	0x64
	.uleb128 0x1
	.long	.LASF186
	.byte	0xc
	.byte	0x69
	.byte	0xb
	.long	0x3c
	.byte	0x68
	.uleb128 0x1
	.long	.LASF187
	.byte	0xc
	.byte	0x6a
	.byte	0x8
	.long	0x858
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF188
	.byte	0xc
	.byte	0x6b
	.byte	0xb
	.long	0x3c
	.byte	0x70
	.uleb128 0x1
	.long	.LASF189
	.byte	0xc
	.byte	0x6d
	.byte	0xb
	.long	0x3c
	.byte	0x74
	.uleb128 0x1
	.long	.LASF190
	.byte	0xc
	.byte	0x6e
	.byte	0x8
	.long	0x85f
	.byte	0x78
	.uleb128 0x1
	.long	.LASF191
	.byte	0xc
	.byte	0x6f
	.byte	0x8
	.long	0x85f
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF192
	.byte	0xc
	.byte	0x71
	.byte	0x6
	.long	0x858
	.byte	0x80
	.uleb128 0x1
	.long	.LASF193
	.byte	0xc
	.byte	0x72
	.byte	0xe
	.long	0x2db
	.byte	0x88
	.uleb128 0x1
	.long	.LASF194
	.byte	0xc
	.byte	0x73
	.byte	0xe
	.long	0x2db
	.byte	0x90
	.uleb128 0x1
	.long	.LASF195
	.byte	0xc
	.byte	0x74
	.byte	0x6
	.long	0x70
	.byte	0x98
	.uleb128 0x1
	.long	.LASF196
	.byte	0xc
	.byte	0x75
	.byte	0xe
	.long	0x2db
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF197
	.byte	0xc
	.byte	0x77
	.byte	0xe
	.long	0x2db
	.byte	0xa8
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0x2
	.long	.LASF198
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.long	.LASF199
	.uleb128 0x14
	.long	0x85f
	.uleb128 0x1e
	.long	.LASF201
	.byte	0xc
	.byte	0x7f
	.byte	0x17
	.long	0x877
	.uleb128 0x5
	.long	0x6b7
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.long	.LASF202
	.uleb128 0x4
	.long	.LASF203
	.byte	0xe
	.byte	0x17
	.byte	0x11
	.long	0x31f
	.uleb128 0xd
	.byte	0x28
	.byte	0xf
	.byte	0x1f
	.long	0x8d9
	.uleb128 0x1
	.long	.LASF204
	.byte	0xf
	.byte	0x20
	.byte	0x8
	.long	0x8f
	.byte	0
	.uleb128 0x1
	.long	.LASF205
	.byte	0xf
	.byte	0x21
	.byte	0x7
	.long	0x70
	.byte	0x8
	.uleb128 0x1
	.long	.LASF206
	.byte	0xf
	.byte	0x23
	.byte	0x12
	.long	0x8d9
	.byte	0x10
	.uleb128 0xa
	.string	"ptr"
	.byte	0xf
	.byte	0x24
	.byte	0x12
	.long	0x8d9
	.byte	0x18
	.uleb128 0x1
	.long	.LASF207
	.byte	0xf
	.byte	0x25
	.byte	0x8
	.long	0x8f
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	0x2e
	.uleb128 0x4
	.long	.LASF208
	.byte	0xf
	.byte	0x26
	.byte	0x3
	.long	0x88f
	.uleb128 0xd
	.byte	0x20
	.byte	0xf
	.byte	0x2a
	.long	0x927
	.uleb128 0x1
	.long	.LASF209
	.byte	0xf
	.byte	0x2b
	.byte	0x12
	.long	0x8d9
	.byte	0
	.uleb128 0x1
	.long	.LASF210
	.byte	0xf
	.byte	0x2c
	.byte	0x8
	.long	0x8f
	.byte	0x8
	.uleb128 0x1
	.long	.LASF211
	.byte	0xf
	.byte	0x2d
	.byte	0x12
	.long	0x8d9
	.byte	0x10
	.uleb128 0x1
	.long	.LASF212
	.byte	0xf
	.byte	0x2e
	.byte	0x8
	.long	0x8f
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF213
	.byte	0xf
	.byte	0x2f
	.byte	0x3
	.long	0x8ea
	.uleb128 0x25
	.value	0x198
	.byte	0xf
	.byte	0x34
	.long	0xa2e
	.uleb128 0x1
	.long	.LASF214
	.byte	0xf
	.byte	0x35
	.byte	0x12
	.long	0x8d9
	.byte	0
	.uleb128 0x1
	.long	.LASF215
	.byte	0xf
	.byte	0x36
	.byte	0x8
	.long	0x8f
	.byte	0x8
	.uleb128 0x1
	.long	.LASF216
	.byte	0xf
	.byte	0x37
	.byte	0x8
	.long	0x8f
	.byte	0x10
	.uleb128 0x1
	.long	.LASF217
	.byte	0xf
	.byte	0x38
	.byte	0x8
	.long	0x8f
	.byte	0x18
	.uleb128 0x1
	.long	.LASF218
	.byte	0xf
	.byte	0x3b
	.byte	0x8
	.long	0xa2e
	.byte	0x20
	.uleb128 0x1
	.long	.LASF219
	.byte	0xf
	.byte	0x3c
	.byte	0x10
	.long	0xa33
	.byte	0x28
	.uleb128 0x1
	.long	.LASF220
	.byte	0xf
	.byte	0x3f
	.byte	0x8
	.long	0x8f
	.byte	0x30
	.uleb128 0x1
	.long	.LASF221
	.byte	0xf
	.byte	0x40
	.byte	0x8
	.long	0x8f
	.byte	0x38
	.uleb128 0x1
	.long	.LASF222
	.byte	0xf
	.byte	0x41
	.byte	0x8
	.long	0x8f
	.byte	0x40
	.uleb128 0x1
	.long	.LASF223
	.byte	0xf
	.byte	0x42
	.byte	0x8
	.long	0x8f
	.byte	0x48
	.uleb128 0x1
	.long	.LASF209
	.byte	0xf
	.byte	0x44
	.byte	0x11
	.long	0xa38
	.byte	0x50
	.uleb128 0xe
	.long	.LASF224
	.byte	0xf
	.byte	0x45
	.byte	0x7
	.long	0x70
	.value	0x16c
	.uleb128 0xe
	.long	.LASF225
	.byte	0xf
	.byte	0x47
	.byte	0x7
	.long	0x70
	.value	0x170
	.uleb128 0xe
	.long	.LASF226
	.byte	0xf
	.byte	0x49
	.byte	0x7
	.long	0x70
	.value	0x174
	.uleb128 0xe
	.long	.LASF227
	.byte	0xf
	.byte	0x4b
	.byte	0x8
	.long	0x8f
	.value	0x178
	.uleb128 0xe
	.long	.LASF228
	.byte	0xf
	.byte	0x4c
	.byte	0x8
	.long	0x8f
	.value	0x180
	.uleb128 0xe
	.long	.LASF229
	.byte	0xf
	.byte	0x4d
	.byte	0xf
	.long	0x883
	.value	0x188
	.uleb128 0xe
	.long	.LASF230
	.byte	0xf
	.byte	0x52
	.byte	0xf
	.long	0x883
	.value	0x190
	.byte	0
	.uleb128 0x5
	.long	0x70
	.uleb128 0x5
	.long	0x883
	.uleb128 0x13
	.long	0x2e
	.long	0xa49
	.uleb128 0x34
	.long	0x43
	.value	0x119
	.byte	0
	.uleb128 0x4
	.long	.LASF231
	.byte	0xf
	.byte	0x54
	.byte	0x3
	.long	0x933
	.uleb128 0xd
	.byte	0x30
	.byte	0xf
	.byte	0x59
	.long	0xaac
	.uleb128 0x1
	.long	.LASF232
	.byte	0xf
	.byte	0x5a
	.byte	0x12
	.long	0x8d9
	.byte	0
	.uleb128 0x1
	.long	.LASF233
	.byte	0xf
	.byte	0x5b
	.byte	0x8
	.long	0x8f
	.byte	0x8
	.uleb128 0x1
	.long	.LASF226
	.byte	0xf
	.byte	0x5c
	.byte	0x8
	.long	0x8f
	.byte	0x10
	.uleb128 0x1
	.long	.LASF225
	.byte	0xf
	.byte	0x5d
	.byte	0x8
	.long	0x8f
	.byte	0x18
	.uleb128 0x1
	.long	.LASF230
	.byte	0xf
	.byte	0x5f
	.byte	0xf
	.long	0x883
	.byte	0x20
	.uleb128 0x1
	.long	.LASF229
	.byte	0xf
	.byte	0x61
	.byte	0xf
	.long	0x883
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.long	.LASF234
	.byte	0xf
	.byte	0x66
	.byte	0x3
	.long	0xa55
	.uleb128 0xf
	.long	.LASF235
	.byte	0x38
	.byte	0x10
	.byte	0x1b
	.byte	0x10
	.long	0xb2e
	.uleb128 0x1
	.long	.LASF236
	.byte	0x10
	.byte	0x1c
	.byte	0x7
	.long	0x70
	.byte	0
	.uleb128 0x1
	.long	.LASF175
	.byte	0x10
	.byte	0x1d
	.byte	0x7
	.long	0x70
	.byte	0x4
	.uleb128 0x1
	.long	.LASF237
	.byte	0x10
	.byte	0x1e
	.byte	0x8
	.long	0x8f
	.byte	0x8
	.uleb128 0x1
	.long	.LASF238
	.byte	0x10
	.byte	0x2f
	.byte	0x8
	.long	0x8f
	.byte	0x10
	.uleb128 0x1
	.long	.LASF239
	.byte	0x10
	.byte	0x30
	.byte	0x8
	.long	0x8f
	.byte	0x18
	.uleb128 0x1
	.long	.LASF240
	.byte	0x10
	.byte	0x31
	.byte	0x8
	.long	0x8f
	.byte	0x20
	.uleb128 0x1
	.long	.LASF241
	.byte	0x10
	.byte	0x32
	.byte	0x8
	.long	0x8f
	.byte	0x28
	.uleb128 0x1
	.long	.LASF242
	.byte	0x10
	.byte	0x34
	.byte	0x9
	.long	0xba
	.byte	0x30
	.byte	0
	.uleb128 0x4
	.long	.LASF235
	.byte	0x10
	.byte	0x35
	.byte	0x3
	.long	0xab8
	.uleb128 0xf
	.long	.LASF243
	.byte	0x90
	.byte	0x10
	.byte	0x3a
	.byte	0x10
	.long	0xc47
	.uleb128 0x1
	.long	.LASF244
	.byte	0x10
	.byte	0x3b
	.byte	0x7
	.long	0x70
	.byte	0
	.uleb128 0xa
	.string	"vi"
	.byte	0x10
	.byte	0x3c
	.byte	0x10
	.long	0xc47
	.byte	0x8
	.uleb128 0xa
	.string	"pcm"
	.byte	0x10
	.byte	0x3e
	.byte	0xb
	.long	0xc4c
	.byte	0x10
	.uleb128 0x1
	.long	.LASF245
	.byte	0x10
	.byte	0x3f
	.byte	0xb
	.long	0xc4c
	.byte	0x18
	.uleb128 0x1
	.long	.LASF246
	.byte	0x10
	.byte	0x40
	.byte	0x7
	.long	0x70
	.byte	0x20
	.uleb128 0x1
	.long	.LASF247
	.byte	0x10
	.byte	0x41
	.byte	0x7
	.long	0x70
	.byte	0x24
	.uleb128 0x1
	.long	.LASF248
	.byte	0x10
	.byte	0x42
	.byte	0x7
	.long	0x70
	.byte	0x28
	.uleb128 0x1
	.long	.LASF249
	.byte	0x10
	.byte	0x44
	.byte	0x7
	.long	0x70
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF250
	.byte	0x10
	.byte	0x45
	.byte	0x7
	.long	0x70
	.byte	0x30
	.uleb128 0xa
	.string	"lW"
	.byte	0x10
	.byte	0x47
	.byte	0x8
	.long	0x8f
	.byte	0x38
	.uleb128 0xa
	.string	"W"
	.byte	0x10
	.byte	0x48
	.byte	0x8
	.long	0x8f
	.byte	0x40
	.uleb128 0xa
	.string	"nW"
	.byte	0x10
	.byte	0x49
	.byte	0x8
	.long	0x8f
	.byte	0x48
	.uleb128 0x1
	.long	.LASF251
	.byte	0x10
	.byte	0x4a
	.byte	0x8
	.long	0x8f
	.byte	0x50
	.uleb128 0x1
	.long	.LASF230
	.byte	0x10
	.byte	0x4c
	.byte	0xf
	.long	0x883
	.byte	0x58
	.uleb128 0x1
	.long	.LASF252
	.byte	0x10
	.byte	0x4d
	.byte	0xf
	.long	0x883
	.byte	0x60
	.uleb128 0x1
	.long	.LASF253
	.byte	0x10
	.byte	0x4f
	.byte	0xf
	.long	0x883
	.byte	0x68
	.uleb128 0x1
	.long	.LASF254
	.byte	0x10
	.byte	0x50
	.byte	0xf
	.long	0x883
	.byte	0x70
	.uleb128 0x1
	.long	.LASF255
	.byte	0x10
	.byte	0x51
	.byte	0xf
	.long	0x883
	.byte	0x78
	.uleb128 0x1
	.long	.LASF256
	.byte	0x10
	.byte	0x52
	.byte	0xf
	.long	0x883
	.byte	0x80
	.uleb128 0x1
	.long	.LASF257
	.byte	0x10
	.byte	0x54
	.byte	0x9
	.long	0xba
	.byte	0x88
	.byte	0
	.uleb128 0x5
	.long	0xb2e
	.uleb128 0x5
	.long	0xc51
	.uleb128 0x5
	.long	0x85f
	.uleb128 0x4
	.long	.LASF243
	.byte	0x10
	.byte	0x55
	.byte	0x3
	.long	0xb3a
	.uleb128 0xf
	.long	.LASF258
	.byte	0xc0
	.byte	0x10
	.byte	0x57
	.byte	0x10
	.long	0xd7c
	.uleb128 0xa
	.string	"pcm"
	.byte	0x10
	.byte	0x59
	.byte	0xb
	.long	0xc4c
	.byte	0
	.uleb128 0xa
	.string	"opb"
	.byte	0x10
	.byte	0x5a
	.byte	0x12
	.long	0x8de
	.byte	0x8
	.uleb128 0xa
	.string	"lW"
	.byte	0x10
	.byte	0x5c
	.byte	0x8
	.long	0x8f
	.byte	0x30
	.uleb128 0xa
	.string	"W"
	.byte	0x10
	.byte	0x5d
	.byte	0x8
	.long	0x8f
	.byte	0x38
	.uleb128 0xa
	.string	"nW"
	.byte	0x10
	.byte	0x5e
	.byte	0x8
	.long	0x8f
	.byte	0x40
	.uleb128 0x1
	.long	.LASF259
	.byte	0x10
	.byte	0x5f
	.byte	0x7
	.long	0x70
	.byte	0x48
	.uleb128 0x1
	.long	.LASF260
	.byte	0x10
	.byte	0x60
	.byte	0x7
	.long	0x70
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF250
	.byte	0x10
	.byte	0x62
	.byte	0x7
	.long	0x70
	.byte	0x50
	.uleb128 0x1
	.long	.LASF230
	.byte	0x10
	.byte	0x63
	.byte	0xf
	.long	0x883
	.byte	0x58
	.uleb128 0x1
	.long	.LASF252
	.byte	0x10
	.byte	0x64
	.byte	0xf
	.long	0x883
	.byte	0x60
	.uleb128 0xa
	.string	"vd"
	.byte	0x10
	.byte	0x65
	.byte	0x15
	.long	0xd7c
	.byte	0x68
	.uleb128 0x1
	.long	.LASF261
	.byte	0x10
	.byte	0x69
	.byte	0x9
	.long	0xba
	.byte	0x70
	.uleb128 0x1
	.long	.LASF262
	.byte	0x10
	.byte	0x6a
	.byte	0x8
	.long	0x8f
	.byte	0x78
	.uleb128 0x1
	.long	.LASF263
	.byte	0x10
	.byte	0x6b
	.byte	0x8
	.long	0x8f
	.byte	0x80
	.uleb128 0x1
	.long	.LASF264
	.byte	0x10
	.byte	0x6c
	.byte	0x8
	.long	0x8f
	.byte	0x88
	.uleb128 0x1
	.long	.LASF265
	.byte	0x10
	.byte	0x6d
	.byte	0x17
	.long	0xda9
	.byte	0x90
	.uleb128 0x1
	.long	.LASF253
	.byte	0x10
	.byte	0x70
	.byte	0x8
	.long	0x8f
	.byte	0x98
	.uleb128 0x1
	.long	.LASF254
	.byte	0x10
	.byte	0x71
	.byte	0x8
	.long	0x8f
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF255
	.byte	0x10
	.byte	0x72
	.byte	0x8
	.long	0x8f
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF256
	.byte	0x10
	.byte	0x73
	.byte	0x8
	.long	0x8f
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF266
	.byte	0x10
	.byte	0x75
	.byte	0x9
	.long	0xba
	.byte	0xb8
	.byte	0
	.uleb128 0x5
	.long	0xc56
	.uleb128 0xf
	.long	.LASF267
	.byte	0x10
	.byte	0x10
	.byte	0x7e
	.byte	0x8
	.long	0xda9
	.uleb128 0xa
	.string	"ptr"
	.byte	0x10
	.byte	0x7f
	.byte	0x9
	.long	0xba
	.byte	0
	.uleb128 0x1
	.long	.LASF268
	.byte	0x10
	.byte	0x80
	.byte	0x17
	.long	0xda9
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0xd81
	.uleb128 0x4
	.long	.LASF258
	.byte	0x10
	.byte	0x77
	.byte	0x3
	.long	0xc62
	.uleb128 0xf
	.long	.LASF269
	.byte	0x20
	.byte	0x10
	.byte	0x8b
	.byte	0x10
	.long	0xdfc
	.uleb128 0x1
	.long	.LASF270
	.byte	0x10
	.byte	0x8e
	.byte	0xa
	.long	0xe3
	.byte	0
	.uleb128 0x1
	.long	.LASF271
	.byte	0x10
	.byte	0x8f
	.byte	0x8
	.long	0xa2e
	.byte	0x8
	.uleb128 0x1
	.long	.LASF272
	.byte	0x10
	.byte	0x90
	.byte	0x7
	.long	0x70
	.byte	0x10
	.uleb128 0x1
	.long	.LASF273
	.byte	0x10
	.byte	0x91
	.byte	0x9
	.long	0xbc
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF269
	.byte	0x10
	.byte	0x93
	.byte	0x3
	.long	0xdba
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.long	.LASF274
	.uleb128 0xd
	.byte	0x28
	.byte	0x11
	.byte	0xd
	.long	0xe73
	.uleb128 0x1
	.long	.LASF207
	.byte	0x11
	.byte	0xe
	.byte	0x9
	.long	0xe3
	.byte	0
	.uleb128 0x1
	.long	.LASF275
	.byte	0x11
	.byte	0xf
	.byte	0x8
	.long	0xbc
	.byte	0x8
	.uleb128 0x1
	.long	.LASF276
	.byte	0x11
	.byte	0x10
	.byte	0x8
	.long	0xbc
	.byte	0x10
	.uleb128 0x1
	.long	.LASF277
	.byte	0x11
	.byte	0x11
	.byte	0x6
	.long	0x70
	.byte	0x18
	.uleb128 0x1
	.long	.LASF278
	.byte	0x11
	.byte	0x12
	.byte	0x6
	.long	0x70
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF279
	.byte	0x11
	.byte	0x13
	.byte	0x6
	.long	0x70
	.byte	0x20
	.uleb128 0x1
	.long	.LASF280
	.byte	0x11
	.byte	0x14
	.byte	0x6
	.long	0x70
	.byte	0x24
	.byte	0
	.uleb128 0x4
	.long	.LASF281
	.byte	0x11
	.byte	0x15
	.byte	0x2
	.long	0xe0f
	.uleb128 0x25
	.value	0x3d0
	.byte	0x12
	.byte	0x13
	.long	0xf4b
	.uleb128 0x1
	.long	.LASF282
	.byte	0x12
	.byte	0x14
	.byte	0xa
	.long	0x2e5
	.byte	0
	.uleb128 0xa
	.string	"os"
	.byte	0x12
	.byte	0x15
	.byte	0x14
	.long	0xa49
	.byte	0x8
	.uleb128 0x15
	.string	"og"
	.byte	0x17
	.byte	0xc
	.long	0x927
	.value	0x1a0
	.uleb128 0x15
	.string	"op"
	.byte	0x19
	.byte	0xe
	.long	0xaac
	.value	0x1c0
	.uleb128 0x15
	.string	"vi"
	.byte	0x1b
	.byte	0xf
	.long	0xb2e
	.value	0x1f0
	.uleb128 0x15
	.string	"vc"
	.byte	0x1d
	.byte	0x12
	.long	0xdfc
	.value	0x228
	.uleb128 0x15
	.string	"vd"
	.byte	0x1f
	.byte	0x14
	.long	0xc56
	.value	0x248
	.uleb128 0x15
	.string	"vb"
	.byte	0x20
	.byte	0x10
	.long	0xdae
	.value	0x2d8
	.uleb128 0x15
	.string	"eos"
	.byte	0x22
	.byte	0x7
	.long	0x70
	.value	0x398
	.uleb128 0xe
	.long	.LASF283
	.byte	0x12
	.byte	0x24
	.byte	0x8
	.long	0x8f
	.value	0x3a0
	.uleb128 0xe
	.long	.LASF284
	.byte	0x12
	.byte	0x25
	.byte	0x8
	.long	0x8f
	.value	0x3a8
	.uleb128 0xe
	.long	.LASF285
	.byte	0x12
	.byte	0x27
	.byte	0x12
	.long	0xf4b
	.value	0x3b0
	.uleb128 0xe
	.long	.LASF286
	.byte	0x12
	.byte	0x28
	.byte	0x12
	.long	0xf4b
	.value	0x3b8
	.uleb128 0xe
	.long	.LASF287
	.byte	0x12
	.byte	0x2a
	.byte	0xa
	.long	0x302
	.value	0x3c0
	.uleb128 0xe
	.long	.LASF288
	.byte	0x12
	.byte	0x2b
	.byte	0xc
	.long	0x3c
	.value	0x3c8
	.byte	0
	.uleb128 0x5
	.long	0xe73
	.uleb128 0x4
	.long	.LASF289
	.byte	0x12
	.byte	0x2c
	.byte	0x2
	.long	0xe7f
	.uleb128 0x1e
	.long	.LASF290
	.byte	0x12
	.byte	0x32
	.byte	0x16
	.long	0xf68
	.uleb128 0x5
	.long	0xf50
	.uleb128 0xd
	.byte	0x4
	.byte	0x13
	.byte	0x33
	.long	0xf90
	.uleb128 0xa
	.string	"pos"
	.byte	0x13
	.byte	0x34
	.byte	0xb
	.long	0x3c
	.byte	0
	.uleb128 0x1
	.long	.LASF291
	.byte	0x13
	.byte	0x35
	.byte	0x8
	.long	0xf90
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.long	0x85f
	.long	0xf9f
	.uleb128 0x35
	.long	0x43
	.byte	0
	.uleb128 0x4
	.long	.LASF292
	.byte	0x13
	.byte	0x36
	.byte	0x3
	.long	0xf6d
	.uleb128 0xd
	.byte	0x60
	.byte	0x13
	.byte	0x3b
	.long	0x105d
	.uleb128 0x1
	.long	.LASF293
	.byte	0x13
	.byte	0x3c
	.byte	0xb
	.long	0x3c
	.byte	0
	.uleb128 0x1
	.long	.LASF294
	.byte	0x13
	.byte	0x3d
	.byte	0x9
	.long	0xc51
	.byte	0x8
	.uleb128 0x1
	.long	.LASF295
	.byte	0x13
	.byte	0x3e
	.byte	0x9
	.long	0xc51
	.byte	0x10
	.uleb128 0x1
	.long	.LASF296
	.byte	0x13
	.byte	0x3f
	.byte	0x9
	.long	0xc51
	.byte	0x18
	.uleb128 0x1
	.long	.LASF297
	.byte	0x13
	.byte	0x40
	.byte	0x9
	.long	0xc51
	.byte	0x20
	.uleb128 0xa
	.string	"LAE"
	.byte	0x13
	.byte	0x41
	.byte	0x9
	.long	0xc51
	.byte	0x28
	.uleb128 0xa
	.string	"LAS"
	.byte	0x13
	.byte	0x42
	.byte	0x9
	.long	0xc51
	.byte	0x30
	.uleb128 0x1
	.long	.LASF298
	.byte	0x13
	.byte	0x43
	.byte	0x8
	.long	0x85f
	.byte	0x38
	.uleb128 0x1
	.long	.LASF299
	.byte	0x13
	.byte	0x44
	.byte	0xd
	.long	0x105d
	.byte	0x40
	.uleb128 0x1
	.long	.LASF300
	.byte	0x13
	.byte	0x45
	.byte	0x7
	.long	0xa2e
	.byte	0x48
	.uleb128 0x1
	.long	.LASF301
	.byte	0x13
	.byte	0x46
	.byte	0x9
	.long	0xe08
	.byte	0x50
	.uleb128 0x1
	.long	.LASF302
	.byte	0x13
	.byte	0x47
	.byte	0xb
	.long	0x3c
	.byte	0x58
	.uleb128 0x1
	.long	.LASF303
	.byte	0x13
	.byte	0x48
	.byte	0x6
	.long	0x70
	.byte	0x5c
	.byte	0
	.uleb128 0x5
	.long	0xf9f
	.uleb128 0x4
	.long	.LASF304
	.byte	0x13
	.byte	0x49
	.byte	0x3
	.long	0xfab
	.uleb128 0xd
	.byte	0x8
	.byte	0x14
	.byte	0x24
	.long	0x1091
	.uleb128 0x1
	.long	.LASF305
	.byte	0x14
	.byte	0x25
	.byte	0x8
	.long	0x85f
	.byte	0
	.uleb128 0x1
	.long	.LASF306
	.byte	0x14
	.byte	0x26
	.byte	0x8
	.long	0x85f
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF307
	.byte	0x14
	.byte	0x27
	.byte	0x3
	.long	0x106e
	.uleb128 0x5
	.long	0x866
	.uleb128 0xd
	.byte	0x18
	.byte	0x14
	.byte	0x4e
	.long	0x10ce
	.uleb128 0xa
	.string	"u"
	.byte	0x14
	.byte	0x4f
	.byte	0xc
	.long	0xc51
	.byte	0
	.uleb128 0xa
	.string	"N"
	.byte	0x14
	.byte	0x50
	.byte	0x9
	.long	0x70
	.byte	0x8
	.uleb128 0x1
	.long	.LASF308
	.byte	0x14
	.byte	0x51
	.byte	0x12
	.long	0x109d
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF309
	.byte	0x14
	.byte	0x52
	.byte	0x3
	.long	0x10a2
	.uleb128 0xd
	.byte	0x20
	.byte	0x14
	.byte	0x54
	.long	0x1117
	.uleb128 0x1
	.long	.LASF310
	.byte	0x14
	.byte	0x55
	.byte	0xe
	.long	0x1117
	.byte	0
	.uleb128 0x1
	.long	.LASF311
	.byte	0x14
	.byte	0x56
	.byte	0x15
	.long	0x111c
	.byte	0x8
	.uleb128 0x1
	.long	.LASF312
	.byte	0x14
	.byte	0x57
	.byte	0xa
	.long	0x1121
	.byte	0x10
	.uleb128 0x1
	.long	.LASF313
	.byte	0x14
	.byte	0x58
	.byte	0x12
	.long	0x112b
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	0x1091
	.uleb128 0x5
	.long	0x10ce
	.uleb128 0x5
	.long	0x1062
	.uleb128 0x18
	.long	.LASF314
	.uleb128 0x5
	.long	0x1126
	.uleb128 0x4
	.long	.LASF315
	.byte	0x14
	.byte	0x59
	.byte	0x2
	.long	0x10da
	.uleb128 0x4
	.long	.LASF316
	.byte	0x15
	.byte	0x34
	.byte	0xe
	.long	0xc6
	.uleb128 0x4
	.long	.LASF317
	.byte	0x15
	.byte	0x3d
	.byte	0x16
	.long	0x3c
	.uleb128 0x4
	.long	.LASF318
	.byte	0x16
	.byte	0x27
	.byte	0x18
	.long	0x1160
	.uleb128 0xf
	.long	.LASF319
	.byte	0x10
	.byte	0x16
	.byte	0x2b
	.byte	0x8
	.long	0x1188
	.uleb128 0x1
	.long	.LASF320
	.byte	0x16
	.byte	0x2d
	.byte	0xa
	.long	0x1188
	.byte	0
	.uleb128 0xa
	.string	"len"
	.byte	0x16
	.byte	0x2e
	.byte	0x9
	.long	0x1148
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x113c
	.uleb128 0x5
	.long	0x1154
	.uleb128 0xd
	.byte	0x8
	.byte	0x17
	.byte	0x1e
	.long	0x11b5
	.uleb128 0x1
	.long	.LASF321
	.byte	0x17
	.byte	0x1f
	.byte	0x7
	.long	0xe8
	.byte	0
	.uleb128 0x1
	.long	.LASF322
	.byte	0x17
	.byte	0x20
	.byte	0xb
	.long	0x3e5
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF323
	.byte	0x17
	.byte	0x21
	.byte	0x3
	.long	0x1192
	.uleb128 0xd
	.byte	0xc
	.byte	0x17
	.byte	0x23
	.long	0x11e4
	.uleb128 0x1
	.long	.LASF209
	.byte	0x17
	.byte	0x24
	.byte	0xe
	.long	0x11b5
	.byte	0
	.uleb128 0x1
	.long	.LASF324
	.byte	0x17
	.byte	0x25
	.byte	0x7
	.long	0xe8
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF325
	.byte	0x17
	.byte	0x26
	.byte	0x3
	.long	0x11c1
	.uleb128 0xd
	.byte	0x18
	.byte	0x17
	.byte	0x28
	.long	0x1254
	.uleb128 0x1
	.long	.LASF209
	.byte	0x17
	.byte	0x29
	.byte	0xe
	.long	0x11b5
	.byte	0
	.uleb128 0x1
	.long	.LASF326
	.byte	0x17
	.byte	0x2a
	.byte	0xb
	.long	0x3d9
	.byte	0x8
	.uleb128 0x1
	.long	.LASF327
	.byte	0x17
	.byte	0x2b
	.byte	0xb
	.long	0x3d9
	.byte	0xa
	.uleb128 0x1
	.long	.LASF328
	.byte	0x17
	.byte	0x2c
	.byte	0xb
	.long	0x3e5
	.byte	0xc
	.uleb128 0x1
	.long	.LASF329
	.byte	0x17
	.byte	0x2d
	.byte	0xb
	.long	0x3e5
	.byte	0x10
	.uleb128 0x1
	.long	.LASF330
	.byte	0x17
	.byte	0x2e
	.byte	0xb
	.long	0x3d9
	.byte	0x14
	.uleb128 0x1
	.long	.LASF331
	.byte	0x17
	.byte	0x2f
	.byte	0xb
	.long	0x3d9
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.long	.LASF332
	.byte	0x17
	.byte	0x30
	.byte	0x3
	.long	0x11f0
	.uleb128 0xd
	.byte	0x8
	.byte	0x17
	.byte	0x32
	.long	0x1276
	.uleb128 0x1
	.long	.LASF209
	.byte	0x17
	.byte	0x33
	.byte	0xe
	.long	0x11b5
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF333
	.byte	0x17
	.byte	0x34
	.byte	0x3
	.long	0x1260
	.uleb128 0xf
	.long	.LASF334
	.byte	0x50
	.byte	0x17
	.byte	0x36
	.byte	0x10
	.long	0x12ea
	.uleb128 0xa
	.string	"fd"
	.byte	0x17
	.byte	0x37
	.byte	0x8
	.long	0x2e5
	.byte	0
	.uleb128 0x1
	.long	.LASF335
	.byte	0x17
	.byte	0x38
	.byte	0xc
	.long	0x11e4
	.byte	0x8
	.uleb128 0x1
	.long	.LASF336
	.byte	0x17
	.byte	0x39
	.byte	0xe
	.long	0x1254
	.byte	0x14
	.uleb128 0x1
	.long	.LASF337
	.byte	0x17
	.byte	0x3a
	.byte	0xf
	.long	0x1276
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF338
	.byte	0x17
	.byte	0x3b
	.byte	0x7
	.long	0x8f
	.byte	0x38
	.uleb128 0x1
	.long	.LASF339
	.byte	0x17
	.byte	0x3c
	.byte	0xa
	.long	0x118d
	.byte	0x40
	.uleb128 0x1
	.long	.LASF340
	.byte	0x17
	.byte	0x3d
	.byte	0x9
	.long	0xd2
	.byte	0x48
	.byte	0
	.uleb128 0x4
	.long	.LASF341
	.byte	0x17
	.byte	0x3e
	.byte	0x3
	.long	0x1282
	.uleb128 0x24
	.long	0x3c
	.byte	0x18
	.byte	0x1b
	.byte	0x7
	.long	0x130f
	.uleb128 0x3
	.long	.LASF342
	.byte	0
	.uleb128 0x3
	.long	.LASF343
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x8
	.byte	0x18
	.byte	0x1c
	.byte	0x2
	.long	0x132f
	.uleb128 0x26
	.long	.LASF334
	.byte	0x1d
	.byte	0x9
	.long	0x132f
	.uleb128 0x26
	.long	.LASF344
	.byte	0x1e
	.byte	0xe
	.long	0x624
	.byte	0
	.uleb128 0x5
	.long	0x12ea
	.uleb128 0xf
	.long	.LASF168
	.byte	0x10
	.byte	0x18
	.byte	0x1a
	.byte	0x10
	.long	0x1355
	.uleb128 0x1
	.long	.LASF345
	.byte	0x18
	.byte	0x1b
	.byte	0x28
	.long	0x12f6
	.byte	0
	.uleb128 0x37
	.long	0x130f
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF346
	.byte	0x18
	.byte	0x20
	.byte	0x3
	.long	0x1334
	.uleb128 0xf
	.long	.LASF347
	.byte	0x10
	.byte	0x18
	.byte	0x32
	.byte	0x10
	.long	0x1388
	.uleb128 0xa
	.string	"id"
	.byte	0x18
	.byte	0x33
	.byte	0x8
	.long	0xbc
	.byte	0
	.uleb128 0x1
	.long	.LASF334
	.byte	0x18
	.byte	0x34
	.byte	0x8
	.long	0x132f
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF348
	.byte	0x18
	.byte	0x35
	.byte	0x3
	.long	0x1361
	.uleb128 0x8
	.long	.LASF345
	.byte	0x19
	.byte	0x15
	.long	0x1355
	.uleb128 0x9
	.byte	0x3
	.quad	device
	.uleb128 0x8
	.long	.LASF349
	.byte	0x92
	.byte	0xe
	.long	0xbc
	.uleb128 0x9
	.byte	0x3
	.quad	current_format
	.uleb128 0x8
	.long	.LASF350
	.byte	0x94
	.byte	0xe
	.long	0xbc
	.uleb128 0x9
	.byte	0x3
	.quad	data_output_filepath
	.uleb128 0x8
	.long	.LASF351
	.byte	0x96
	.byte	0xe
	.long	0x2e5
	.uleb128 0x9
	.byte	0x3
	.quad	data_output_fd
	.uleb128 0x8
	.long	.LASF352
	.byte	0x98
	.byte	0xe
	.long	0xbc
	.uleb128 0x9
	.byte	0x3
	.quad	audio_output_filepath
	.uleb128 0x8
	.long	.LASF353
	.byte	0x9a
	.byte	0x10
	.long	0x1412
	.uleb128 0x9
	.byte	0x3
	.quad	output_json
	.uleb128 0x5
	.long	0x69a
	.uleb128 0x8
	.long	.LASF354
	.byte	0x9c
	.byte	0xc
	.long	0x70
	.uleb128 0x9
	.byte	0x3
	.quad	data_output_index
	.uleb128 0x8
	.long	.LASF284
	.byte	0x9d
	.byte	0xd
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	sample_count
	.uleb128 0x8
	.long	.LASF355
	.byte	0x9f
	.byte	0xf
	.long	0x302
	.uleb128 0x9
	.byte	0x3
	.quad	calendar
	.uleb128 0x8
	.long	.LASF356
	.byte	0xa0
	.byte	0x11
	.long	0x3c
	.uleb128 0x9
	.byte	0x3
	.quad	output_time
	.uleb128 0x8
	.long	.LASF357
	.byte	0xdd
	.byte	0x10
	.long	0x1412
	.uleb128 0x9
	.byte	0x3
	.quad	LAeq_json
	.uleb128 0x8
	.long	.LASF358
	.byte	0xde
	.byte	0x10
	.long	0x1412
	.uleb128 0x9
	.byte	0x3
	.quad	LAE_json
	.uleb128 0x8
	.long	.LASF359
	.byte	0xdf
	.byte	0x10
	.long	0x1412
	.uleb128 0x9
	.byte	0x3
	.quad	LAFmin_json
	.uleb128 0x8
	.long	.LASF360
	.byte	0xe0
	.byte	0x10
	.long	0x1412
	.uleb128 0x9
	.byte	0x3
	.quad	LAFmax_json
	.uleb128 0x8
	.long	.LASF361
	.byte	0xe1
	.byte	0x10
	.long	0x1412
	.uleb128 0x9
	.byte	0x3
	.quad	LApeak_json
	.uleb128 0x6
	.long	.LASF362
	.byte	0x17
	.byte	0x43
	.byte	0x5
	.long	0x70
	.long	0x14ef
	.uleb128 0x2
	.long	0x132f
	.uleb128 0x2
	.long	0x2db
	.byte	0
	.uleb128 0x19
	.long	.LASF364
	.byte	0x17
	.byte	0x59
	.long	0x1500
	.uleb128 0x2
	.long	0x132f
	.byte	0
	.uleb128 0x6
	.long	.LASF363
	.byte	0x17
	.byte	0x57
	.byte	0x8
	.long	0xd2
	.long	0x1520
	.uleb128 0x2
	.long	0x132f
	.uleb128 0x2
	.long	0xbc
	.uleb128 0x2
	.long	0xd2
	.byte	0
	.uleb128 0x19
	.long	.LASF365
	.byte	0x17
	.byte	0x4b
	.long	0x1536
	.uleb128 0x2
	.long	0x132f
	.uleb128 0x2
	.long	0x70
	.byte	0
	.uleb128 0x6
	.long	.LASF366
	.byte	0x17
	.byte	0x40
	.byte	0x7
	.long	0x132f
	.long	0x1551
	.uleb128 0x2
	.long	0x70
	.uleb128 0x2
	.long	0x70
	.byte	0
	.uleb128 0x6
	.long	.LASF367
	.byte	0x19
	.byte	0xbb
	.byte	0xe
	.long	0xbc
	.long	0x1567
	.uleb128 0x2
	.long	0x2db
	.byte	0
	.uleb128 0x6
	.long	.LASF368
	.byte	0x19
	.byte	0x2b
	.byte	0xe
	.long	0xba
	.long	0x1587
	.uleb128 0x2
	.long	0xba
	.uleb128 0x2
	.long	0x332
	.uleb128 0x2
	.long	0xd2
	.byte	0
	.uleb128 0x6
	.long	.LASF369
	.byte	0x19
	.byte	0x90
	.byte	0xe
	.long	0xbc
	.long	0x15a7
	.uleb128 0x2
	.long	0xbc
	.uleb128 0x2
	.long	0x2db
	.uleb128 0x2
	.long	0xd2
	.byte	0
	.uleb128 0xb
	.long	.LASF370
	.byte	0x19
	.value	0x111
	.byte	0xe
	.long	0xbc
	.long	0x15c3
	.uleb128 0x2
	.long	0x2db
	.uleb128 0x2
	.long	0x70
	.byte	0
	.uleb128 0x38
	.long	.LASF371
	.byte	0x12
	.byte	0x2e
	.byte	0x5
	.long	0x70
	.long	0x15d5
	.uleb128 0x20
	.byte	0
	.uleb128 0x39
	.long	.LASF481
	.byte	0x12
	.byte	0x30
	.byte	0x6
	.long	0x15e3
	.uleb128 0x20
	.byte	0
	.uleb128 0xb
	.long	.LASF372
	.byte	0x1a
	.value	0x3dd
	.byte	0xc
	.long	0x70
	.long	0x15fa
	.uleb128 0x2
	.long	0x70
	.byte	0
	.uleb128 0xb
	.long	.LASF373
	.byte	0xd
	.value	0x373
	.byte	0xc
	.long	0x70
	.long	0x1611
	.uleb128 0x2
	.long	0x2e5
	.byte	0
	.uleb128 0x6
	.long	.LASF374
	.byte	0xd
	.byte	0xec
	.byte	0xc
	.long	0x70
	.long	0x1627
	.uleb128 0x2
	.long	0x2e5
	.byte	0
	.uleb128 0xb
	.long	.LASF375
	.byte	0x1
	.value	0x125
	.byte	0x5
	.long	0x70
	.long	0x1643
	.uleb128 0x2
	.long	0x1412
	.uleb128 0x2
	.long	0x1412
	.byte	0
	.uleb128 0x6
	.long	.LASF376
	.byte	0x1
	.byte	0x66
	.byte	0x9
	.long	0x1412
	.long	0x1659
	.uleb128 0x2
	.long	0xe08
	.byte	0
	.uleb128 0x6
	.long	.LASF377
	.byte	0x11
	.byte	0x1a
	.byte	0x5
	.long	0x70
	.long	0x166f
	.uleb128 0x2
	.long	0x2db
	.byte	0
	.uleb128 0x21
	.long	.LASF380
	.byte	0x1
	.byte	0x60
	.byte	0x9
	.long	0x1412
	.uleb128 0x6
	.long	.LASF378
	.byte	0x1
	.byte	0xc1
	.byte	0x5
	.long	0x70
	.long	0x169b
	.uleb128 0x2
	.long	0x1412
	.uleb128 0x2
	.long	0x2db
	.uleb128 0x2
	.long	0x1412
	.byte	0
	.uleb128 0x6
	.long	.LASF379
	.byte	0x1
	.byte	0x65
	.byte	0x9
	.long	0x1412
	.long	0x16b1
	.uleb128 0x2
	.long	0x6ab
	.byte	0
	.uleb128 0x21
	.long	.LASF381
	.byte	0x1
	.byte	0x5f
	.byte	0x9
	.long	0x1412
	.uleb128 0x6
	.long	.LASF382
	.byte	0x11
	.byte	0x1e
	.byte	0x5
	.long	0x70
	.long	0x16d8
	.uleb128 0x2
	.long	0xf4b
	.uleb128 0x2
	.long	0xbc
	.byte	0
	.uleb128 0x6
	.long	.LASF383
	.byte	0x19
	.byte	0xf6
	.byte	0xe
	.long	0xbc
	.long	0x16f3
	.uleb128 0x2
	.long	0x2db
	.uleb128 0x2
	.long	0x70
	.byte	0
	.uleb128 0x3a
	.long	.LASF384
	.byte	0x1b
	.value	0x2f4
	.byte	0xd
	.long	0x1706
	.uleb128 0x2
	.long	0x70
	.byte	0
	.uleb128 0xb
	.long	.LASF385
	.byte	0x19
	.value	0x1a3
	.byte	0xe
	.long	0xbc
	.long	0x171d
	.uleb128 0x2
	.long	0x70
	.byte	0
	.uleb128 0x21
	.long	.LASF386
	.byte	0x1c
	.byte	0x25
	.byte	0xd
	.long	0xa2e
	.uleb128 0xb
	.long	.LASF387
	.byte	0xd
	.value	0x108
	.byte	0xe
	.long	0x2e5
	.long	0x1745
	.uleb128 0x2
	.long	0x2e0
	.uleb128 0x2
	.long	0x2e0
	.byte	0
	.uleb128 0x6
	.long	.LASF388
	.byte	0x1d
	.byte	0x64
	.byte	0xf
	.long	0xd2
	.long	0x176a
	.uleb128 0x2
	.long	0xc1
	.uleb128 0x2
	.long	0xd2
	.uleb128 0x2
	.long	0x2e0
	.uleb128 0x2
	.long	0x176f
	.byte	0
	.uleb128 0x5
	.long	0x3d4
	.uleb128 0x1b
	.long	0x176a
	.uleb128 0x6
	.long	.LASF389
	.byte	0x1d
	.byte	0x89
	.byte	0x13
	.long	0x178a
	.long	0x178a
	.uleb128 0x2
	.long	0x178f
	.byte	0
	.uleb128 0x5
	.long	0x338
	.uleb128 0x5
	.long	0x30e
	.uleb128 0x6
	.long	.LASF390
	.byte	0x19
	.byte	0x95
	.byte	0xe
	.long	0xbc
	.long	0x17af
	.uleb128 0x2
	.long	0xbc
	.uleb128 0x2
	.long	0x2db
	.byte	0
	.uleb128 0x6
	.long	.LASF391
	.byte	0x19
	.byte	0x8d
	.byte	0xe
	.long	0xbc
	.long	0x17ca
	.uleb128 0x2
	.long	0xbc
	.uleb128 0x2
	.long	0x2db
	.byte	0
	.uleb128 0xb
	.long	.LASF392
	.byte	0x19
	.value	0x197
	.byte	0xf
	.long	0xd2
	.long	0x17e1
	.uleb128 0x2
	.long	0x2db
	.byte	0
	.uleb128 0x19
	.long	.LASF393
	.byte	0x1
	.byte	0x81
	.long	0x17f2
	.uleb128 0x2
	.long	0x1412
	.byte	0
	.uleb128 0x6
	.long	.LASF394
	.byte	0xd
	.byte	0xb8
	.byte	0xc
	.long	0x70
	.long	0x1808
	.uleb128 0x2
	.long	0x2e5
	.byte	0
	.uleb128 0xb
	.long	.LASF395
	.byte	0x1
	.value	0x18c
	.byte	0x5
	.long	0x70
	.long	0x1829
	.uleb128 0x2
	.long	0x1829
	.uleb128 0x2
	.long	0x2e5
	.uleb128 0x2
	.long	0xd2
	.byte	0
	.uleb128 0x5
	.long	0x6a6
	.uleb128 0x6
	.long	.LASF396
	.byte	0x19
	.byte	0x9c
	.byte	0xc
	.long	0x70
	.long	0x1849
	.uleb128 0x2
	.long	0x2db
	.uleb128 0x2
	.long	0x2db
	.byte	0
	.uleb128 0x6
	.long	.LASF397
	.byte	0x1d
	.byte	0x4c
	.byte	0xf
	.long	0x302
	.long	0x185f
	.uleb128 0x2
	.long	0x185f
	.byte	0
	.uleb128 0x5
	.long	0x302
	.uleb128 0x19
	.long	.LASF398
	.byte	0x17
	.byte	0x41
	.long	0x1875
	.uleb128 0x2
	.long	0x132f
	.byte	0
	.uleb128 0xb
	.long	.LASF399
	.byte	0xb
	.value	0x212
	.byte	0x5
	.long	0x70
	.long	0x188c
	.uleb128 0x2
	.long	0x624
	.byte	0
	.uleb128 0x3b
	.long	.LASF400
	.byte	0x1b
	.value	0x2af
	.byte	0xd
	.long	0x189f
	.uleb128 0x2
	.long	0xba
	.byte	0
	.uleb128 0x19
	.long	.LASF401
	.byte	0x14
	.byte	0x65
	.long	0x18b5
	.uleb128 0x2
	.long	0xc51
	.uleb128 0x2
	.long	0x3c
	.byte	0
	.uleb128 0x6
	.long	.LASF402
	.byte	0x12
	.byte	0x2f
	.byte	0x5
	.long	0x70
	.long	0x18d0
	.uleb128 0x2
	.long	0xc51
	.uleb128 0x2
	.long	0xd2
	.byte	0
	.uleb128 0x3c
	.long	.LASF403
	.byte	0x1e
	.byte	0x45
	.byte	0xd
	.long	0x18f1
	.uleb128 0x2
	.long	0x2db
	.uleb128 0x2
	.long	0x2db
	.uleb128 0x2
	.long	0x3c
	.uleb128 0x2
	.long	0x2db
	.byte	0
	.uleb128 0x6
	.long	.LASF404
	.byte	0x17
	.byte	0x53
	.byte	0x8
	.long	0xd2
	.long	0x1911
	.uleb128 0x2
	.long	0x132f
	.uleb128 0x2
	.long	0xbc
	.uleb128 0x2
	.long	0xd2
	.byte	0
	.uleb128 0xb
	.long	.LASF405
	.byte	0xb
	.value	0x238
	.byte	0x13
	.long	0x607
	.long	0x1932
	.uleb128 0x2
	.long	0x624
	.uleb128 0x2
	.long	0xba
	.uleb128 0x2
	.long	0x5fb
	.byte	0
	.uleb128 0xb
	.long	.LASF406
	.byte	0x1b
	.value	0x2a0
	.byte	0xe
	.long	0xba
	.long	0x1949
	.uleb128 0x2
	.long	0xd2
	.byte	0
	.uleb128 0x6
	.long	.LASF407
	.byte	0x17
	.byte	0x5b
	.byte	0x8
	.long	0xd2
	.long	0x195f
	.uleb128 0x2
	.long	0x132f
	.byte	0
	.uleb128 0x6
	.long	.LASF408
	.byte	0x17
	.byte	0x46
	.byte	0x5
	.long	0x70
	.long	0x1975
	.uleb128 0x2
	.long	0x132f
	.byte	0
	.uleb128 0x6
	.long	.LASF409
	.byte	0x17
	.byte	0x47
	.byte	0x5
	.long	0x70
	.long	0x198b
	.uleb128 0x2
	.long	0x132f
	.byte	0
	.uleb128 0x6
	.long	.LASF410
	.byte	0x17
	.byte	0x48
	.byte	0x5
	.long	0x70
	.long	0x19a1
	.uleb128 0x2
	.long	0x132f
	.byte	0
	.uleb128 0x6
	.long	.LASF411
	.byte	0x17
	.byte	0x42
	.byte	0x7
	.long	0x132f
	.long	0x19b7
	.uleb128 0x2
	.long	0x2db
	.byte	0
	.uleb128 0xb
	.long	.LASF412
	.byte	0xb
	.value	0x227
	.byte	0x5
	.long	0x70
	.long	0x19ce
	.uleb128 0x2
	.long	0x624
	.byte	0
	.uleb128 0xb
	.long	.LASF413
	.byte	0xb
	.value	0x224
	.byte	0x5
	.long	0x70
	.long	0x19e5
	.uleb128 0x2
	.long	0x624
	.byte	0
	.uleb128 0xb
	.long	.LASF414
	.byte	0xb
	.value	0x2a2
	.byte	0x5
	.long	0x70
	.long	0x1a1a
	.uleb128 0x2
	.long	0x624
	.uleb128 0x2
	.long	0x5ef
	.uleb128 0x2
	.long	0x453
	.uleb128 0x2
	.long	0x3c
	.uleb128 0x2
	.long	0x3c
	.uleb128 0x2
	.long	0x70
	.uleb128 0x2
	.long	0x3c
	.byte	0
	.uleb128 0xb
	.long	.LASF415
	.byte	0xd
	.value	0x165
	.byte	0xc
	.long	0x70
	.long	0x1a37
	.uleb128 0x2
	.long	0x2ea
	.uleb128 0x2
	.long	0x2e0
	.uleb128 0x20
	.byte	0
	.uleb128 0x6
	.long	.LASF416
	.byte	0x1f
	.byte	0x2d
	.byte	0xd
	.long	0x2db
	.long	0x1a4d
	.uleb128 0x2
	.long	0x70
	.byte	0
	.uleb128 0xb
	.long	.LASF417
	.byte	0xb
	.value	0x209
	.byte	0x5
	.long	0x70
	.long	0x1a73
	.uleb128 0x2
	.long	0x1a73
	.uleb128 0x2
	.long	0x2db
	.uleb128 0x2
	.long	0x413
	.uleb128 0x2
	.long	0x70
	.byte	0
	.uleb128 0x5
	.long	0x624
	.uleb128 0x3d
	.long	.LASF421
	.byte	0x2
	.value	0x24d
	.byte	0x6
	.quad	.LFB346
	.quad	.LFE346-.LFB346
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b10
	.uleb128 0x9
	.long	.LASF418
	.value	0x24d
	.byte	0x24
	.long	0xc51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF419
	.value	0x24d
	.byte	0x3c
	.long	0x1b10
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF420
	.value	0x24d
	.byte	0x54
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x11
	.string	"i"
	.value	0x24f
	.byte	0x10
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x11
	.string	"a"
	.value	0x251
	.byte	0x9
	.long	0x85f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"b"
	.value	0x252
	.byte	0xc
	.long	0x3d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x313
	.uleb128 0x1d
	.long	.LASF422
	.value	0x23a
	.quad	.LFB345
	.quad	.LFE345-.LFB345
	.uleb128 0x1
	.byte	0x9c
	.long	0x1be2
	.uleb128 0x9
	.long	.LASF419
	.value	0x23a
	.byte	0x26
	.long	0x1b10
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.long	.LASF418
	.value	0x23a
	.byte	0x3c
	.long	0xc51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.long	.LASF420
	.value	0x23a
	.byte	0x54
	.long	0x3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LASF475
	.long	0x1bf2
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.0
	.uleb128 0x10
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x11
	.string	"c"
	.value	0x240
	.byte	0x13
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x7
	.long	.LASF423
	.value	0x241
	.byte	0x10
	.long	0xc51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF424
	.value	0x242
	.byte	0x12
	.long	0x1b10
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x11
	.string	"i"
	.value	0x243
	.byte	0x17
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xcd
	.long	0x1bf2
	.uleb128 0x17
	.long	0x43
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.long	0x1be2
	.uleb128 0x1d
	.long	.LASF425
	.value	0x22a
	.quad	.LFB344
	.quad	.LFE344-.LFB344
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c33
	.uleb128 0x9
	.long	.LASF347
	.value	0x22a
	.byte	0x1b
	.long	0x1c33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF426
	.value	0x22d
	.byte	0x8
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	0x1388
	.uleb128 0x28
	.long	.LASF433
	.value	0x21f
	.byte	0x5
	.long	0x70
	.quad	.LFB343
	.quad	.LFE343-.LFB343
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ca6
	.uleb128 0x9
	.long	.LASF347
	.value	0x21f
	.byte	0x21
	.long	0x1c33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF320
	.value	0x21f
	.byte	0x2f
	.long	0xc51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF427
	.value	0x21f
	.byte	0x3e
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.long	.LASF206
	.value	0x221
	.byte	0xb
	.long	0x1b10
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF428
	.value	0x225
	.byte	0x9
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF441
	.value	0x209
	.byte	0xe
	.long	0xbc
	.quad	.LFB342
	.quad	.LFE342-.LFB342
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d24
	.uleb128 0x9
	.long	.LASF166
	.value	0x209
	.byte	0x31
	.long	0x877
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"id"
	.value	0x209
	.byte	0x3f
	.long	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x7
	.long	.LASF429
	.value	0x20b
	.byte	0xe
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.long	.LASF430
	.value	0x20c
	.byte	0x8
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF431
	.value	0x20f
	.byte	0x9
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.long	.LASF432
	.value	0x210
	.byte	0x8
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.long	.LASF434
	.value	0x1fe
	.byte	0x8
	.long	0x1c33
	.quad	.LFB341
	.quad	.LFE341-.LFB341
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d64
	.uleb128 0x22
	.string	"id"
	.value	0x1fe
	.byte	0x1b
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF347
	.value	0x200
	.byte	0x9
	.long	0x1c33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF435
	.value	0x1f7
	.long	0xbc
	.quad	.LFB340
	.quad	.LFE340-.LFB340
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.long	.LASF436
	.value	0x1f2
	.long	0xbc
	.quad	.LFB339
	.quad	.LFE339-.LFB339
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.long	.LASF437
	.value	0x1d7
	.quad	.LFB338
	.quad	.LFE338-.LFB338
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e14
	.uleb128 0x9
	.long	.LASF438
	.value	0x1d7
	.byte	0x26
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF439
	.value	0x1d7
	.byte	0x4a
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3e
	.long	.LLRL0
	.long	0x1df2
	.uleb128 0x7
	.long	.LASF440
	.value	0x1da
	.byte	0x8
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x10
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x7
	.long	.LASF426
	.value	0x1e1
	.byte	0x9
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF442
	.value	0x1cb
	.byte	0xe
	.long	0xbc
	.quad	.LFB337
	.quad	.LFE337-.LFB337
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e74
	.uleb128 0x9
	.long	.LASF443
	.value	0x1cb
	.byte	0x22
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.long	.LASF426
	.value	0x1cb
	.byte	0x34
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.long	.LASF429
	.value	0x1cb
	.byte	0x4a
	.long	0x2db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x7
	.long	.LASF432
	.value	0x1cc
	.byte	0x8
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x16
	.long	.LASF444
	.value	0x1c0
	.byte	0xe
	.long	0xbc
	.quad	.LFB336
	.quad	.LFE336-.LFB336
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ec4
	.uleb128 0x9
	.long	.LASF443
	.value	0x1c0
	.byte	0x22
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.long	.LASF426
	.value	0x1c0
	.byte	0x34
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.long	.LASF432
	.value	0x1c1
	.byte	0x8
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x16
	.long	.LASF445
	.value	0x1ac
	.byte	0xe
	.long	0xbc
	.quad	.LFB335
	.quad	.LFE335-.LFB335
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f32
	.uleb128 0x9
	.long	.LASF446
	.value	0x1ac
	.byte	0x23
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF447
	.value	0x1ae
	.byte	0xe
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.long	.LASF448
	.value	0x1b1
	.byte	0xe
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF449
	.value	0x1b6
	.byte	0x9
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF430
	.value	0x1b8
	.byte	0x8
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF450
	.value	0x1a6
	.byte	0x14
	.long	0x2db
	.quad	.LFB334
	.quad	.LFE334-.LFB334
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f73
	.uleb128 0x9
	.long	.LASF426
	.value	0x1a6
	.byte	0x2e
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"ptr"
	.value	0x1a8
	.byte	0xe
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF451
	.value	0x196
	.byte	0xe
	.long	0xbc
	.quad	.LFB333
	.quad	.LFE333-.LFB333
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ff1
	.uleb128 0x9
	.long	.LASF426
	.value	0x196
	.byte	0x27
	.long	0x2db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x7
	.long	.LASF452
	.value	0x197
	.byte	0x11
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF453
	.value	0x198
	.byte	0x11
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.string	"ext"
	.value	0x19a
	.byte	0x11
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF454
	.value	0x19b
	.byte	0xc
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.string	"ptr"
	.value	0x19d
	.byte	0xb
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF455
	.value	0x156
	.quad	.LFB332
	.quad	.LFE332-.LFB332
	.uleb128 0x1
	.byte	0x9c
	.long	0x2135
	.uleb128 0x9
	.long	.LASF312
	.value	0x156
	.byte	0x1c
	.long	0x1121
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"td"
	.value	0x156
	.byte	0x35
	.long	0x2135
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x9
	.long	.LASF456
	.value	0x156
	.byte	0x3d
	.long	0x858
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1a
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x2060
	.uleb128 0x11
	.string	"i"
	.value	0x159
	.byte	0x11
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x10
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x11
	.string	"i"
	.value	0x174
	.byte	0x11
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x20a3
	.uleb128 0x7
	.long	.LASF457
	.value	0x175
	.byte	0xe
	.long	0x1412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1a
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x20c8
	.uleb128 0x7
	.long	.LASF457
	.value	0x176
	.byte	0xe
	.long	0x1412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1a
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x20ed
	.uleb128 0x7
	.long	.LASF457
	.value	0x177
	.byte	0xe
	.long	0x1412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1a
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x2112
	.uleb128 0x7
	.long	.LASF457
	.value	0x178
	.byte	0xe
	.long	0x1412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x10
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x7
	.long	.LASF457
	.value	0x179
	.byte	0xe
	.long	0x1412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x1130
	.uleb128 0x23
	.long	.LASF458
	.byte	0xe3
	.quad	.LFB331
	.quad	.LFE331-.LFB331
	.uleb128 0x1
	.byte	0x9c
	.long	0x21a4
	.uleb128 0x12
	.long	.LASF432
	.byte	0x2
	.byte	0xe3
	.byte	0x1d
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF459
	.byte	0xe5
	.byte	0x9
	.long	0x2e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x7
	.long	.LASF460
	.value	0x108
	.byte	0xb
	.long	0x1412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF461
	.value	0x116
	.byte	0xb
	.long	0x1412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF462
	.byte	0xd0
	.quad	.LFB330
	.quad	.LFE330-.LFB330
	.uleb128 0x1
	.byte	0x9c
	.long	0x222e
	.uleb128 0x12
	.long	.LASF397
	.byte	0x2
	.byte	0xd0
	.byte	0x21
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x12
	.long	.LASF432
	.byte	0x2
	.byte	0xd0
	.byte	0x2d
	.long	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x8
	.long	.LASF463
	.byte	0xd3
	.byte	0x9
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x8
	.long	.LASF206
	.byte	0xd4
	.byte	0x7
	.long	0x222e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x8
	.long	.LASF464
	.byte	0xd5
	.byte	0x9
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x3f
	.string	"i"
	.byte	0x2
	.byte	0xd8
	.byte	0xe
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xc6
	.long	0x2242
	.uleb128 0x40
	.long	0x43
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x41
	.long	.LASF465
	.byte	0x2
	.byte	0xbd
	.byte	0xe
	.long	0xbc
	.quad	.LFB329
	.quad	.LFE329-.LFB329
	.uleb128 0x1
	.byte	0x9c
	.long	0x229f
	.uleb128 0x12
	.long	.LASF466
	.byte	0x2
	.byte	0xbd
	.byte	0x2f
	.long	0x2db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.long	.LASF464
	.byte	0xbf
	.byte	0x9
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF431
	.byte	0xc1
	.byte	0x9
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.long	.LASF432
	.byte	0xc4
	.byte	0x8
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.long	.LASF467
	.byte	0xb2
	.quad	.LFB328
	.quad	.LFE328-.LFB328
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF468
	.byte	0xac
	.quad	.LFB327
	.quad	.LFE327-.LFB327
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF469
	.byte	0xa3
	.quad	.LFB326
	.quad	.LFE326-.LFB326
	.uleb128 0x1
	.byte	0x9c
	.long	0x22fb
	.uleb128 0x12
	.long	.LASF470
	.byte	0x2
	.byte	0xa3
	.byte	0x16
	.long	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x42
	.long	.LASF482
	.byte	0x2
	.byte	0x83
	.byte	0x6
	.quad	.LFB325
	.quad	.LFE325-.LFB325
	.uleb128 0x1
	.byte	0x9c
	.long	0x233a
	.uleb128 0x10
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x8
	.long	.LASF471
	.byte	0x86
	.byte	0x7
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF472
	.byte	0x5f
	.byte	0x8
	.long	0xd2
	.quad	.LFB324
	.quad	.LFE324-.LFB324
	.uleb128 0x1
	.byte	0x9c
	.long	0x23a9
	.uleb128 0x12
	.long	.LASF206
	.byte	0x2
	.byte	0x5f
	.byte	0x21
	.long	0xc51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF473
	.byte	0x2
	.byte	0x5f
	.byte	0x30
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.long	.LASF419
	.byte	0x61
	.byte	0xb
	.long	0x1b10
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.long	.LASF474
	.byte	0x66
	.byte	0x9
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF475
	.long	0x23b9
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.1
	.byte	0
	.uleb128 0x13
	.long	0xcd
	.long	0x23b9
	.uleb128 0x17
	.long	0x43
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.long	0x23a9
	.uleb128 0x2b
	.long	.LASF476
	.byte	0x1b
	.byte	0x5
	.long	0x858
	.quad	.LFB323
	.quad	.LFE323-.LFB323
	.uleb128 0x1
	.byte	0x9c
	.long	0x240f
	.uleb128 0x12
	.long	.LASF166
	.byte	0x2
	.byte	0x1b
	.byte	0x26
	.long	0x877
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x8
	.long	.LASF477
	.byte	0x1f
	.byte	0x7
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	.LASF483
	.byte	0x1
	.byte	0x83
	.byte	0x14
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.long	.LASF478
	.byte	0x1
	.byte	0x83
	.byte	0x28
	.long	0x1412
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 18
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x26
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 24
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x2a
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x33
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x17
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
	.uleb128 0x37
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 .LBB13-.Ltext0
	.uleb128 .LBE13-.Ltext0
	.byte	0x4
	.uleb128 .LBB14-.Ltext0
	.uleb128 .LBE14-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF462:
	.string	"output_new_filename"
.LASF357:
	.string	"LAeq_json"
.LASF91:
	.string	"SND_PCM_FORMAT_S24_LE"
.LASF315:
	.string	"ThirdOctaveData"
.LASF100:
	.string	"SND_PCM_FORMAT_FLOAT_BE"
.LASF17:
	.string	"size_t"
.LASF249:
	.string	"preextrapolate"
.LASF338:
	.string	"file_offset"
.LASF319:
	.string	"_GArray"
.LASF78:
	.string	"SND_PCM_ACCESS_MMAP_COMPLEX"
.LASF59:
	.string	"tm_hour"
.LASF453:
	.string	"start"
.LASF227:
	.string	"serialno"
.LASF75:
	.string	"_snd_pcm_access"
.LASF245:
	.string	"pcmret"
.LASF70:
	.string	"SND_PCM_STREAM_PLAYBACK"
.LASF176:
	.string	"bits_per_sample"
.LASF49:
	.string	"_IO_codecvt"
.LASF465:
	.string	"output_init_filename"
.LASF136:
	.string	"SND_PCM_FORMAT_LAST"
.LASF450:
	.string	"get_extention"
.LASF479:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF419:
	.string	"samples_int16"
.LASF29:
	.string	"_IO_save_end"
.LASF443:
	.string	"path"
.LASF446:
	.string	"fullname"
.LASF204:
	.string	"endbyte"
.LASF85:
	.string	"SND_PCM_FORMAT_S8"
.LASF76:
	.string	"SND_PCM_ACCESS_MMAP_INTERLEAVED"
.LASF308:
	.string	"coefs"
.LASF172:
	.string	"audio_output_format"
.LASF52:
	.string	"time_t"
.LASF138:
	.string	"SND_PCM_FORMAT_U16"
.LASF273:
	.string	"vendor"
.LASF248:
	.string	"pcm_returned"
.LASF22:
	.string	"_IO_write_base"
.LASF432:
	.string	"filepath"
.LASF21:
	.string	"_IO_read_base"
.LASF215:
	.string	"body_storage"
.LASF366:
	.string	"wave_create"
.LASF166:
	.string	"config"
.LASF38:
	.string	"_lock"
.LASF196:
	.string	"mqtt_device_credential"
.LASF325:
	.string	"RiffChunk"
.LASF303:
	.string	"direction"
.LASF476:
	.string	"input_device_open"
.LASF246:
	.string	"pcm_storage"
.LASF238:
	.string	"bitrate_upper"
.LASF163:
	.string	"type"
.LASF108:
	.string	"SND_PCM_FORMAT_MPEG"
.LASF27:
	.string	"_IO_save_base"
.LASF312:
	.string	"levels"
.LASF418:
	.string	"samples_float"
.LASF225:
	.string	"e_o_s"
.LASF231:
	.string	"ogg_stream_state"
.LASF105:
	.string	"SND_PCM_FORMAT_MU_LAW"
.LASF258:
	.string	"vorbis_block"
.LASF332:
	.string	"SubChunkFmt"
.LASF214:
	.string	"body_data"
.LASF178:
	.string	"segment_duration"
.LASF388:
	.string	"strftime"
.LASF241:
	.string	"bitrate_window"
.LASF234:
	.string	"ogg_packet"
.LASF31:
	.string	"_chain"
.LASF164:
	.string	"refcount"
.LASF269:
	.string	"vorbis_comment"
.LASF447:
	.string	"point"
.LASF35:
	.string	"_cur_column"
.LASF277:
	.string	"current_idx"
.LASF86:
	.string	"SND_PCM_FORMAT_U8"
.LASF217:
	.string	"body_returned"
.LASF449:
	.string	"stem_size"
.LASF306:
	.string	"alpha"
.LASF373:
	.string	"fileno"
.LASF477:
	.string	"result"
.LASF194:
	.string	"mqtt_topic"
.LASF250:
	.string	"eofflag"
.LASF298:
	.string	"background_LAS"
.LASF309:
	.string	"ThirdOctaveFilter"
.LASF304:
	.string	"Levels"
.LASF73:
	.string	"snd_pcm_stream_t"
.LASF422:
	.string	"samples_int16_to_float"
.LASF12:
	.string	"long int"
.LASF65:
	.string	"tm_isdst"
.LASF383:
	.string	"strchr"
.LASF335:
	.string	"riff_chunk"
.LASF48:
	.string	"_IO_marker"
.LASF87:
	.string	"SND_PCM_FORMAT_S16_LE"
.LASF363:
	.string	"wave_append_samples"
.LASF286:
	.string	"created_data_files"
.LASF3:
	.string	"short unsigned int"
.LASF310:
	.string	"Tfilter"
.LASF435:
	.string	"output_get_audio_filepath"
.LASF114:
	.string	"SND_PCM_FORMAT_SPECIAL"
.LASF421:
	.string	"samples_float_to_int16"
.LASF213:
	.string	"ogg_page"
.LASF80:
	.string	"SND_PCM_ACCESS_RW_NONINTERLEAVED"
.LASF360:
	.string	"LAFmax_json"
.LASF404:
	.string	"wave_read_samples"
.LASF423:
	.string	"samples_float_channel"
.LASF403:
	.string	"__assert_fail"
.LASF117:
	.string	"SND_PCM_FORMAT_U24_3LE"
.LASF157:
	.string	"JSON_REAL"
.LASF6:
	.string	"signed char"
.LASF162:
	.string	"json_t"
.LASF103:
	.string	"SND_PCM_FORMAT_IEC958_SUBFRAME_LE"
.LASF260:
	.string	"mode"
.LASF56:
	.string	"_IO_FILE"
.LASF113:
	.string	"SND_PCM_FORMAT_U20_BE"
.LASF261:
	.string	"localstore"
.LASF50:
	.string	"_IO_wide_data"
.LASF124:
	.string	"SND_PCM_FORMAT_S18_3BE"
.LASF279:
	.string	"space"
.LASF475:
	.string	"__PRETTY_FUNCTION__"
.LASF267:
	.string	"alloc_chain"
.LASF102:
	.string	"SND_PCM_FORMAT_FLOAT64_BE"
.LASF440:
	.string	"first_letter"
.LASF189:
	.string	"calibration_time"
.LASF2:
	.string	"unsigned char"
.LASF441:
	.string	"audit_make_filename"
.LASF235:
	.string	"vorbis_info"
.LASF94:
	.string	"SND_PCM_FORMAT_U24_BE"
.LASF150:
	.string	"snd_pcm_sframes_t"
.LASF394:
	.string	"fclose"
.LASF292:
	.string	"Percentil"
.LASF463:
	.string	"date_size"
.LASF280:
	.string	"update"
.LASF472:
	.string	"input_device_read"
.LASF445:
	.string	"get_stem"
.LASF14:
	.string	"__off64_t"
.LASF209:
	.string	"header"
.LASF337:
	.string	"subchunk_data"
.LASF263:
	.string	"localalloc"
.LASF198:
	.string	"_Bool"
.LASF233:
	.string	"bytes"
.LASF290:
	.string	"record_struct"
.LASF322:
	.string	"ChunkSize"
.LASF471:
	.string	"result_code"
.LASF270:
	.string	"user_comments"
.LASF328:
	.string	"SampleRate"
.LASF16:
	.string	"char"
.LASF159:
	.string	"JSON_FALSE"
.LASF173:
	.string	"data_output_format"
.LASF282:
	.string	"output"
.LASF211:
	.string	"body"
.LASF293:
	.string	"segment_number"
.LASF230:
	.string	"granulepos"
.LASF354:
	.string	"data_output_index"
.LASF480:
	.string	"_IO_lock_t"
.LASF9:
	.string	"__uint16_t"
.LASF455:
	.string	"output_record"
.LASF272:
	.string	"comments"
.LASF140:
	.string	"SND_PCM_FORMAT_U24"
.LASF426:
	.string	"filename"
.LASF386:
	.string	"__errno_location"
.LASF347:
	.string	"audit"
.LASF58:
	.string	"tm_min"
.LASF431:
	.string	"filepath_size"
.LASF19:
	.string	"_IO_read_ptr"
.LASF271:
	.string	"comment_lengths"
.LASF126:
	.string	"SND_PCM_FORMAT_U18_3BE"
.LASF314:
	.string	"sbuffer"
.LASF82:
	.string	"snd_pcm_access_t"
.LASF396:
	.string	"strcmp"
.LASF285:
	.string	"created_audio_files"
.LASF142:
	.string	"SND_PCM_FORMAT_U32"
.LASF221:
	.string	"lacing_fill"
.LASF197:
	.string	"server_socket"
.LASF161:
	.string	"json_type"
.LASF99:
	.string	"SND_PCM_FORMAT_FLOAT_LE"
.LASF167:
	.string	"identification"
.LASF339:
	.string	"samples"
.LASF406:
	.string	"malloc"
.LASF473:
	.string	"nframes"
.LASF464:
	.string	"date_position"
.LASF389:
	.string	"localtime"
.LASF379:
	.string	"json_integer"
.LASF134:
	.string	"SND_PCM_FORMAT_DSD_U16_BE"
.LASF382:
	.string	"add_file"
.LASF153:
	.string	"JSON_OBJECT"
.LASF206:
	.string	"buffer"
.LASF436:
	.string	"output_get_data_filepath"
.LASF168:
	.string	"input_device"
.LASF222:
	.string	"lacing_packet"
.LASF237:
	.string	"rate"
.LASF243:
	.string	"vorbis_dsp_state"
.LASF414:
	.string	"snd_pcm_set_params"
.LASF229:
	.string	"packetno"
.LASF57:
	.string	"tm_sec"
.LASF39:
	.string	"_offset"
.LASF240:
	.string	"bitrate_lower"
.LASF74:
	.string	"_snd_pcm_stream"
.LASF97:
	.string	"SND_PCM_FORMAT_U32_LE"
.LASF191:
	.string	"calibration_delta"
.LASF90:
	.string	"SND_PCM_FORMAT_U16_BE"
.LASF411:
	.string	"wave_load"
.LASF119:
	.string	"SND_PCM_FORMAT_S20_3LE"
.LASF210:
	.string	"header_len"
.LASF185:
	.string	"data_loop_recording"
.LASF326:
	.string	"AudioFormat"
.LASF107:
	.string	"SND_PCM_FORMAT_IMA_ADPCM"
.LASF5:
	.string	"long unsigned int"
.LASF351:
	.string	"data_output_fd"
.LASF424:
	.string	"samples_int16_channel"
.LASF466:
	.string	"format"
.LASF10:
	.string	"__uint32_t"
.LASF350:
	.string	"data_output_filepath"
.LASF391:
	.string	"strcpy"
.LASF130:
	.string	"SND_PCM_FORMAT_G723_40_1B"
.LASF33:
	.string	"_flags2"
.LASF378:
	.string	"json_object_set_new"
.LASF439:
	.string	"option_input_filename"
.LASF71:
	.string	"SND_PCM_STREAM_CAPTURE"
.LASF46:
	.string	"_unused2"
.LASF358:
	.string	"LAE_json"
.LASF371:
	.string	"record_start"
.LASF362:
	.string	"wave_store"
.LASF223:
	.string	"lacing_returned"
.LASF192:
	.string	"mqtt_enable"
.LASF116:
	.string	"SND_PCM_FORMAT_S24_3BE"
.LASF458:
	.string	"output_file_open"
.LASF275:
	.string	"dir_path"
.LASF348:
	.string	"Audit"
.LASF324:
	.string	"Format"
.LASF427:
	.string	"data_size"
.LASF413:
	.string	"snd_pcm_prepare"
.LASF359:
	.string	"LAFmin_json"
.LASF327:
	.string	"NumChannels"
.LASF148:
	.string	"snd_pcm_format_t"
.LASF34:
	.string	"_old_offset"
.LASF120:
	.string	"SND_PCM_FORMAT_S20_3BE"
.LASF28:
	.string	"_IO_backup_base"
.LASF401:
	.string	"third_octave_levels"
.LASF341:
	.string	"Wave"
.LASF478:
	.string	"json"
.LASF247:
	.string	"pcm_current"
.LASF83:
	.string	"_snd_pcm_format"
.LASF203:
	.string	"ogg_int64_t"
.LASF184:
	.string	"audio_record_ok"
.LASF193:
	.string	"mqtt_broker"
.LASF158:
	.string	"JSON_TRUE"
.LASF307:
	.string	"Timeweight"
.LASF284:
	.string	"sample_count"
.LASF452:
	.string	"no_path"
.LASF122:
	.string	"SND_PCM_FORMAT_U20_3BE"
.LASF301:
	.string	"le_accumulator"
.LASF51:
	.string	"long long int"
.LASF253:
	.string	"glue_bits"
.LASF289:
	.string	"record_state"
.LASF61:
	.string	"tm_mon"
.LASF370:
	.string	"strrchr"
.LASF336:
	.string	"subchunk_fmt"
.LASF96:
	.string	"SND_PCM_FORMAT_S32_BE"
.LASF42:
	.string	"_freeres_list"
.LASF242:
	.string	"codec_setup"
.LASF274:
	.string	"double"
.LASF266:
	.string	"internal"
.LASF24:
	.string	"_IO_write_end"
.LASF407:
	.string	"wave_get_duration"
.LASF207:
	.string	"storage"
.LASF483:
	.string	"json_decref"
.LASF239:
	.string	"bitrate_nominal"
.LASF151:
	.string	"snd_pcm_t"
.LASF112:
	.string	"SND_PCM_FORMAT_U20_LE"
.LASF317:
	.string	"guint"
.LASF385:
	.string	"strerror"
.LASF321:
	.string	"ChunkID"
.LASF123:
	.string	"SND_PCM_FORMAT_S18_3LE"
.LASF199:
	.string	"float"
.LASF170:
	.string	"output_path"
.LASF300:
	.string	"event"
.LASF101:
	.string	"SND_PCM_FORMAT_FLOAT64_LE"
.LASF155:
	.string	"JSON_STRING"
.LASF25:
	.string	"_IO_buf_base"
.LASF93:
	.string	"SND_PCM_FORMAT_U24_LE"
.LASF4:
	.string	"unsigned int"
.LASF265:
	.string	"reap"
.LASF283:
	.string	"endfile_size"
.LASF143:
	.string	"SND_PCM_FORMAT_FLOAT"
.LASF171:
	.string	"output_filename"
.LASF175:
	.string	"channels"
.LASF375:
	.string	"json_array_append_new"
.LASF469:
	.string	"output_open"
.LASF44:
	.string	"__pad5"
.LASF133:
	.string	"SND_PCM_FORMAT_DSD_U32_LE"
.LASF428:
	.string	"wrote_frames"
.LASF381:
	.string	"json_object"
.LASF252:
	.string	"sequence"
.LASF340:
	.string	"current"
.LASF18:
	.string	"_flags"
.LASF474:
	.string	"read_frames"
.LASF278:
	.string	"size"
.LASF79:
	.string	"SND_PCM_ACCESS_RW_INTERLEAVED"
.LASF45:
	.string	"_mode"
.LASF433:
	.string	"audit_append_samples"
.LASF40:
	.string	"_codecvt"
.LASF434:
	.string	"audit_create"
.LASF188:
	.string	"background_duration"
.LASF281:
	.string	"Files_Storage"
.LASF467:
	.string	"output_file_close"
.LASF156:
	.string	"JSON_INTEGER"
.LASF330:
	.string	"BlockAlign"
.LASF125:
	.string	"SND_PCM_FORMAT_U18_3LE"
.LASF305:
	.string	"previous"
.LASF202:
	.string	"long double"
.LASF302:
	.string	"le_counter"
.LASF256:
	.string	"res_bits"
.LASF448:
	.string	"slash"
.LASF190:
	.string	"calibration_reference"
.LASF262:
	.string	"localtop"
.LASF201:
	.string	"config_struct"
.LASF111:
	.string	"SND_PCM_FORMAT_S20_BE"
.LASF47:
	.string	"FILE"
.LASF444:
	.string	"concat2"
.LASF442:
	.string	"concat3"
.LASF461:
	.string	"levels_json"
.LASF110:
	.string	"SND_PCM_FORMAT_S20_LE"
.LASF344:
	.string	"alsa_handle"
.LASF60:
	.string	"tm_mday"
.LASF212:
	.string	"body_len"
.LASF149:
	.string	"snd_pcm_uframes_t"
.LASF92:
	.string	"SND_PCM_FORMAT_S24_BE"
.LASF132:
	.string	"SND_PCM_FORMAT_DSD_U16_LE"
.LASF195:
	.string	"mqtt_qos"
.LASF457:
	.string	"real_json"
.LASF399:
	.string	"snd_pcm_close"
.LASF345:
	.string	"device"
.LASF259:
	.string	"pcmend"
.LASF398:
	.string	"wave_destroy"
.LASF55:
	.string	"long long unsigned int"
.LASF127:
	.string	"SND_PCM_FORMAT_G723_24"
.LASF323:
	.string	"ChunkHeader"
.LASF420:
	.string	"length"
.LASF68:
	.string	"uint16_t"
.LASF13:
	.string	"__off_t"
.LASF417:
	.string	"snd_pcm_open"
.LASF220:
	.string	"lacing_storage"
.LASF224:
	.string	"header_fill"
.LASF219:
	.string	"granule_vals"
.LASF43:
	.string	"_freeres_buf"
.LASF63:
	.string	"tm_wday"
.LASF89:
	.string	"SND_PCM_FORMAT_U16_LE"
.LASF296:
	.string	"LAFmax"
.LASF109:
	.string	"SND_PCM_FORMAT_GSM"
.LASF291:
	.string	"array"
.LASF131:
	.string	"SND_PCM_FORMAT_DSD_U8"
.LASF64:
	.string	"tm_yday"
.LASF430:
	.string	"stem"
.LASF129:
	.string	"SND_PCM_FORMAT_G723_40"
.LASF15:
	.string	"__time_t"
.LASF365:
	.string	"wave_set_sample_rate"
.LASF412:
	.string	"snd_pcm_start"
.LASF186:
	.string	"data_file_duration"
.LASF236:
	.string	"version"
.LASF254:
	.string	"time_bits"
.LASF318:
	.string	"GArray"
.LASF8:
	.string	"__int16_t"
.LASF369:
	.string	"strncpy"
.LASF37:
	.string	"_shortbuf"
.LASF128:
	.string	"SND_PCM_FORMAT_G723_24_1B"
.LASF342:
	.string	"DEVICE_WAVE"
.LASF257:
	.string	"backend_state"
.LASF410:
	.string	"wave_get_number_of_channels"
.LASF208:
	.string	"oggpack_buffer"
.LASF352:
	.string	"audio_output_filepath"
.LASF144:
	.string	"SND_PCM_FORMAT_FLOAT64"
.LASF177:
	.string	"block_size"
.LASF361:
	.string	"LApeak_json"
.LASF425:
	.string	"audit_destroy"
.LASF152:
	.string	"_snd_pcm"
.LASF384:
	.string	"exit"
.LASF160:
	.string	"JSON_NULL"
.LASF181:
	.string	"run_duration"
.LASF387:
	.string	"fopen"
.LASF408:
	.string	"wave_get_bits_per_sample"
.LASF115:
	.string	"SND_PCM_FORMAT_S24_3LE"
.LASF299:
	.string	"perc"
.LASF470:
	.string	"continous"
.LASF367:
	.string	"strdup"
.LASF288:
	.string	"time_elapsed"
.LASF72:
	.string	"SND_PCM_STREAM_LAST"
.LASF313:
	.string	"ring"
.LASF145:
	.string	"SND_PCM_FORMAT_IEC958_SUBFRAME"
.LASF41:
	.string	"_wide_data"
.LASF26:
	.string	"_IO_buf_end"
.LASF329:
	.string	"ByteRate"
.LASF331:
	.string	"BitsPerSample"
.LASF30:
	.string	"_markers"
.LASF355:
	.string	"calendar"
.LASF264:
	.string	"totaluse"
.LASF376:
	.string	"json_real"
.LASF218:
	.string	"lacing_vals"
.LASF415:
	.string	"fprintf"
.LASF346:
	.string	"Input_device"
.LASF77:
	.string	"SND_PCM_ACCESS_MMAP_NONINTERLEAVED"
.LASF66:
	.string	"tm_gmtoff"
.LASF200:
	.string	"stderr"
.LASF7:
	.string	"short int"
.LASF316:
	.string	"gchar"
.LASF121:
	.string	"SND_PCM_FORMAT_U20_3LE"
.LASF377:
	.string	"archive_file"
.LASF255:
	.string	"floor_bits"
.LASF349:
	.string	"current_format"
.LASF187:
	.string	"data_record_ok"
.LASF276:
	.string	"file_format"
.LASF416:
	.string	"snd_strerror"
.LASF182:
	.string	"audio_loop_recording"
.LASF53:
	.string	"int16_t"
.LASF95:
	.string	"SND_PCM_FORMAT_S32_LE"
.LASF36:
	.string	"_vtable_offset"
.LASF88:
	.string	"SND_PCM_FORMAT_S16_BE"
.LASF459:
	.string	"output_file"
.LASF438:
	.string	"option_output_filename"
.LASF81:
	.string	"SND_PCM_ACCESS_LAST"
.LASF409:
	.string	"wave_get_sample_rate"
.LASF183:
	.string	"audio_file_duration"
.LASF405:
	.string	"snd_pcm_readi"
.LASF395:
	.string	"json_dumpf"
.LASF137:
	.string	"SND_PCM_FORMAT_S16"
.LASF311:
	.string	"filter"
.LASF481:
	.string	"record_stop"
.LASF402:
	.string	"record_append_samples"
.LASF232:
	.string	"packet"
.LASF392:
	.string	"strlen"
.LASF67:
	.string	"tm_zone"
.LASF11:
	.string	"__int64_t"
.LASF118:
	.string	"SND_PCM_FORMAT_U24_3BE"
.LASF437:
	.string	"output_set_filename"
.LASF251:
	.string	"centerW"
.LASF174:
	.string	"sample_rate"
.LASF104:
	.string	"SND_PCM_FORMAT_IEC958_SUBFRAME_BE"
.LASF368:
	.string	"memcpy"
.LASF454:
	.string	"filename_len"
.LASF146:
	.string	"SND_PCM_FORMAT_S20"
.LASF20:
	.string	"_IO_read_end"
.LASF139:
	.string	"SND_PCM_FORMAT_S24"
.LASF84:
	.string	"SND_PCM_FORMAT_UNKNOWN"
.LASF287:
	.string	"time_start"
.LASF429:
	.string	"extention"
.LASF372:
	.string	"fsync"
.LASF69:
	.string	"uint32_t"
.LASF32:
	.string	"_fileno"
.LASF468:
	.string	"output_close"
.LASF98:
	.string	"SND_PCM_FORMAT_U32_BE"
.LASF226:
	.string	"b_o_s"
.LASF106:
	.string	"SND_PCM_FORMAT_A_LAW"
.LASF294:
	.string	"LAeq"
.LASF141:
	.string	"SND_PCM_FORMAT_S32"
.LASF135:
	.string	"SND_PCM_FORMAT_DSD_U32_BE"
.LASF380:
	.string	"json_array"
.LASF400:
	.string	"free"
.LASF295:
	.string	"LApeak"
.LASF390:
	.string	"strcat"
.LASF244:
	.string	"analysisp"
.LASF62:
	.string	"tm_year"
.LASF205:
	.string	"endbit"
.LASF333:
	.string	"SubChunkData"
.LASF364:
	.string	"wave_format_update"
.LASF23:
	.string	"_IO_write_ptr"
.LASF482:
	.string	"input_device_close"
.LASF393:
	.string	"json_delete"
.LASF397:
	.string	"time"
.LASF356:
	.string	"output_time"
.LASF179:
	.string	"segment_size"
.LASF147:
	.string	"SND_PCM_FORMAT_U20"
.LASF54:
	.string	"int64_t"
.LASF180:
	.string	"levels_record_period"
.LASF154:
	.string	"JSON_ARRAY"
.LASF334:
	.string	"wave"
.LASF169:
	.string	"input_file"
.LASF456:
	.string	"continuous"
.LASF451:
	.string	"get_filename"
.LASF228:
	.string	"pageno"
.LASF216:
	.string	"body_fill"
.LASF268:
	.string	"next"
.LASF460:
	.string	"object_json"
.LASF320:
	.string	"data"
.LASF374:
	.string	"fflush"
.LASF297:
	.string	"LAFmin"
.LASF353:
	.string	"output_json"
.LASF343:
	.string	"DEVICE_SOUND_CARD"
.LASF165:
	.string	"json_int_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/aluno/Desktop/sound_meter-master_v03_1"
.LASF0:
	.string	"src/in_out.c"
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
