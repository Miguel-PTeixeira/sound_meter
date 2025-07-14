	.file	"config.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v03_1" "src/config.c"
	.type	json_decref, @function
json_decref:
.LFB7:
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
.LFE7:
	.size	json_decref, .-json_decref
	.section	.rodata
.LC0:
	.string	"XXXX_NNNN"
.LC1:
	.string	"default"
.LC2:
	.string	"data/"
.LC3:
	.string	"_"
.LC4:
	.string	".ogg"
.LC5:
	.string	".csv"
	.align 8
.LC6:
	.string	"tcp://demo.thingsboard.io:1883"
.LC7:
	.string	"v1/devices/me/telemetry"
.LC8:
	.string	"undefined"
.LC9:
	.string	"sound_meter_server_socket"
	.section	.data.rel.local,"aw"
	.align 32
	.type	config, @object
	.size	config, 176
config:
	.quad	.LC0
	.quad	.LC1
	.zero	8
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.long	44100
	.long	1
	.long	16
	.long	1024
	.long	1000
	.zero	4
	.long	60
	.long	0
	.long	14400
	.long	3600
	.byte	1
	.zero	3
	.long	14400
	.long	3600
	.byte	1
	.zero	3
	.long	1800
	.zero	4
	.long	1119617024
	.zero	4
	.byte	0
	.zero	7
	.quad	.LC6
	.quad	.LC7
	.long	1
	.zero	4
	.quad	.LC8
	.quad	.LC9
	.globl	config_struct
	.align 8
	.type	config_struct, @object
	.size	config_struct, 8
config_struct:
	.quad	config
	.local	config_json
	.comm	config_json,8,8
	.section	.rodata
.LC10:
	.string	"enabled"
.LC11:
	.string	"disabled"
	.align 8
.LC12:
	.ascii	"Program configuration:\n\tIdentification: %s\n\tInput device"
	.ascii	": %s\n\tInput file: %s\n\tOutput path: %s\n\tOutput file: %s"
	.ascii	"\n\tAudio Output format: %s\n\tData Output format: %s\n\tSam"
	.ascii	"ple Rate: %d\n\tChannels: %d\n\tBits per sample: %d\n\tBlock"
	.ascii	" size: %d samples\n\tSegment duration: %d miliseconds\n\tSeg"
	.ascii	"ment size: %d samples\n\tLevels record period: %d seconds\n\t"
	.ascii	"Audio loop recording: %d seconds\n\tAudio file duration: %d "
	.ascii	"seconds\n\tAudio record ok: %d\n\tData loop recording: %d se"
	.ascii	"conds\n\tData fil"
	.string	"e duration: %d seconds\n\tData record ok: %d\n\tBackground duration: %d\n\tCalibration time: %d\n\tCalibration reference: %.1f dba\n\tCalibration delta: %.1f dba\n\tMQTT: %s\n\tMQTT Broker: %s\n\tMQTT Topic: %s\n\tMQTT qos: %d\n\tMQTT device credential: %s\n\tServer socket: %s\n"
	.text
	.globl	config_print
	.type	config_print, @function
config_print:
.LFB21:
	.file 2 "src/config.c"
	.loc 2 59 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	.loc 2 120 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movq	168(%rax), %rbx
	.loc 2 119 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movq	160(%rax), %r13
	.loc 2 118 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movl	152(%rax), %r14d
	.loc 2 117 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movq	144(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 2 116 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movq	136(%rax), %rax
	movq	%rax, -64(%rbp)
	.loc 2 115 16
	movq	config_struct(%rip), %rax
	movzbl	128(%rax), %eax
	.loc 2 60 2
	testb	%al, %al
	je	.L5
	.loc 2 60 2 is_stmt 0 discriminator 1
	leaq	.LC10(%rip), %r8
	jmp	.L6
.L5:
	.loc 2 60 2 discriminator 2
	leaq	.LC11(%rip), %r8
.L6:
	.loc 2 114 16 is_stmt 1
	movq	config_struct(%rip), %rax
	movss	124(%rax), %xmm0
	.loc 2 60 2
	cvtss2sd	%xmm0, %xmm0
	.loc 2 113 16
	movq	config_struct(%rip), %rax
	movss	120(%rax), %xmm1
	.loc 2 60 2
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	.loc 2 112 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movl	116(%rax), %eax
	movl	%eax, -68(%rbp)
	.loc 2 111 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movl	112(%rax), %edx
	movl	%edx, -72(%rbp)
	.loc 2 110 16
	movq	config_struct(%rip), %rax
	movzbl	108(%rax), %eax
	.loc 2 60 2
	movzbl	%al, %ecx
	movl	%ecx, -76(%rbp)
	.loc 2 109 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movl	104(%rax), %esi
	movl	%esi, -80(%rbp)
	.loc 2 108 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movl	100(%rax), %edi
	movl	%edi, -84(%rbp)
	.loc 2 107 16
	movq	config_struct(%rip), %rax
	movzbl	96(%rax), %eax
	.loc 2 60 2
	movzbl	%al, %r10d
	movl	%r10d, -88(%rbp)
	.loc 2 106 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movl	92(%rax), %r11d
	movl	%r11d, -92(%rbp)
	.loc 2 105 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movl	88(%rax), %r15d
	movl	%r15d, -96(%rbp)
	.loc 2 104 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movl	84(%rax), %r9d
	movl	%r9d, -100(%rbp)
	.loc 2 103 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movl	76(%rax), %r12d
	movl	%r12d, -104(%rbp)
	.loc 2 102 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movl	72(%rax), %eax
	movl	%eax, -108(%rbp)
	.loc 2 101 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movl	68(%rax), %edx
	movl	%edx, -112(%rbp)
	.loc 2 100 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movl	64(%rax), %r15d
	.loc 2 99 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movl	60(%rax), %r12d
	.loc 2 98 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movl	56(%rax), %r11d
	.loc 2 97 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movq	48(%rax), %r9
	.loc 2 96 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movq	40(%rax), %rsi
	.loc 2 95 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movq	32(%rax), %r10
	.loc 2 94 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movq	24(%rax), %rdi
	.loc 2 93 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movq	16(%rax), %rcx
	.loc 2 92 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movq	8(%rax), %rdx
	.loc 2 91 16
	movq	config_struct(%rip), %rax
	.loc 2 60 2
	movq	(%rax), %rax
	subq	$8, %rsp
	pushq	%rbx
	pushq	%r13
	pushq	%r14
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	pushq	%r8
	movl	-68(%rbp), %ebx
	pushq	%rbx
	movl	-72(%rbp), %ebx
	pushq	%rbx
	movl	-76(%rbp), %ebx
	pushq	%rbx
	movl	-80(%rbp), %ebx
	pushq	%rbx
	movl	-84(%rbp), %ebx
	pushq	%rbx
	movl	-88(%rbp), %ebx
	pushq	%rbx
	movl	-92(%rbp), %ebx
	pushq	%rbx
	movl	-96(%rbp), %ebx
	pushq	%rbx
	movl	-100(%rbp), %ebx
	pushq	%rbx
	movl	-104(%rbp), %ebx
	pushq	%rbx
	movl	-108(%rbp), %ebx
	pushq	%rbx
	movl	-112(%rbp), %ebx
	pushq	%rbx
	pushq	%r15
	pushq	%r12
	pushq	%r11
	pushq	%r9
	pushq	%rsi
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	movq	%r10, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	addq	$192, %rsp
	.loc 2 122 1
	nop
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	config_print, .-config_print
	.section	.rodata
.LC13:
	.string	"identification"
	.align 8
.LC14:
	.string	"Config: error updating config_struct (src/config.c: %d)\n"
.LC15:
	.string	"input_device"
.LC16:
	.string	"output_path"
.LC17:
	.string	"output_filename"
.LC18:
	.string	"data_output_format"
.LC19:
	.string	"sample_rate"
.LC20:
	.string	"channels"
.LC21:
	.string	"bits_per_sample"
.LC22:
	.string	"block_size"
.LC23:
	.string	"segment_duration"
.LC24:
	.string	"levels_record_period"
.LC25:
	.string	"audio_loop_recording"
.LC26:
	.string	"audio_file_duration"
.LC27:
	.string	"audio_record_ok"
.LC28:
	.string	"data_loop_recording"
.LC29:
	.string	"data_file_duration"
.LC30:
	.string	"data_record_ok"
.LC31:
	.string	"background_duration"
.LC32:
	.string	"calibration_reference"
.LC33:
	.string	"calibration_delta"
.LC34:
	.string	"mqtt_enable"
.LC35:
	.string	"mqtt_broker"
.LC36:
	.string	"mqtt_topic"
.LC37:
	.string	"mqtt_qos"
.LC38:
	.string	"mqtt_device_credential"
.LC39:
	.string	"server_socket"
	.text
	.type	config_update_from_json, @function
config_update_from_json:
.LFB22:
	.loc 2 161 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
.LBB2:
	.loc 2 162 26
	movq	-224(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -208(%rbp)
	.loc 2 162 77 discriminator 1
	cmpq	$0, -208(%rbp)
	je	.L8
	.loc 2 162 1 discriminator 1
	cmpq	$0, -208(%rbp)
	je	.L8
	.loc 2 162 2 discriminator 3
	movq	-208(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 162 3 discriminator 3
	cmpl	$2, %eax
	jne	.L8
	.loc 2 162 35 discriminator 5
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 162 33 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 2 162 33 is_stmt 0
	jmp	.L9
.L8:
	.loc 2 162 72 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$162, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L9:
.LBE2:
.LBB3:
	.loc 2 163 26
	movq	-224(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -200(%rbp)
	.loc 2 163 75 discriminator 1
	cmpq	$0, -200(%rbp)
	je	.L10
	.loc 2 163 1 discriminator 1
	cmpq	$0, -200(%rbp)
	je	.L10
	.loc 2 163 2 discriminator 3
	movq	-200(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 163 3 discriminator 3
	cmpl	$2, %eax
	jne	.L10
	.loc 2 163 33 discriminator 5
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 163 31 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 2 163 31 is_stmt 0
	jmp	.L11
.L10:
	.loc 2 163 70 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$163, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L11:
.LBE3:
.LBB4:
	.loc 2 164 26
	movq	-224(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -192(%rbp)
	.loc 2 164 74 discriminator 1
	cmpq	$0, -192(%rbp)
	je	.L12
	.loc 2 164 1 discriminator 1
	cmpq	$0, -192(%rbp)
	je	.L12
	.loc 2 164 2 discriminator 3
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 164 3 discriminator 3
	cmpl	$2, %eax
	jne	.L12
	.loc 2 164 32 discriminator 5
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 164 30 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 24(%rdx)
	.loc 2 164 30 is_stmt 0
	jmp	.L13
.L12:
	.loc 2 164 69 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$164, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L13:
.LBE4:
.LBB5:
	.loc 2 165 26
	movq	-224(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -184(%rbp)
	.loc 2 165 78 discriminator 1
	cmpq	$0, -184(%rbp)
	je	.L14
	.loc 2 165 1 discriminator 1
	cmpq	$0, -184(%rbp)
	je	.L14
	.loc 2 165 2 discriminator 3
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 165 3 discriminator 3
	cmpl	$2, %eax
	jne	.L14
	.loc 2 165 36 discriminator 5
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 165 34 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 32(%rdx)
	.loc 2 165 34 is_stmt 0
	jmp	.L15
.L14:
	.loc 2 165 73 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$165, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L15:
.LBE5:
.LBB6:
	.loc 2 166 26
	movq	-224(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -176(%rbp)
	.loc 2 166 81 discriminator 1
	cmpq	$0, -176(%rbp)
	je	.L16
	.loc 2 166 1 discriminator 1
	cmpq	$0, -176(%rbp)
	je	.L16
	.loc 2 166 2 discriminator 3
	movq	-176(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 166 3 discriminator 3
	cmpl	$2, %eax
	jne	.L16
	.loc 2 166 39 discriminator 5
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 166 37 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 48(%rdx)
	.loc 2 166 37 is_stmt 0
	jmp	.L17
.L16:
	.loc 2 166 76 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$166, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L17:
.LBE6:
.LBB7:
	.loc 2 168 26
	movq	-224(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -168(%rbp)
	.loc 2 168 74 discriminator 1
	cmpq	$0, -168(%rbp)
	je	.L18
	.loc 2 168 1 discriminator 1
	cmpq	$0, -168(%rbp)
	je	.L18
	.loc 2 168 2 discriminator 3
	movq	-168(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 168 3 discriminator 3
	cmpl	$3, %eax
	jne	.L18
	.loc 2 168 32 discriminator 5
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 168 30 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 56(%rax)
	.loc 2 168 30 is_stmt 0
	jmp	.L19
.L18:
	.loc 2 168 70 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$168, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L19:
.LBE7:
.LBB8:
	.loc 2 169 26
	movq	-224(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -160(%rbp)
	.loc 2 169 71 discriminator 1
	cmpq	$0, -160(%rbp)
	je	.L20
	.loc 2 169 1 discriminator 1
	cmpq	$0, -160(%rbp)
	je	.L20
	.loc 2 169 2 discriminator 3
	movq	-160(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 169 3 discriminator 3
	cmpl	$3, %eax
	jne	.L20
	.loc 2 169 29 discriminator 5
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 169 27 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 60(%rax)
	.loc 2 169 27 is_stmt 0
	jmp	.L21
.L20:
	.loc 2 169 67 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$169, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L21:
.LBE8:
.LBB9:
	.loc 2 170 26
	movq	-224(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -152(%rbp)
	.loc 2 170 78 discriminator 1
	cmpq	$0, -152(%rbp)
	je	.L22
	.loc 2 170 1 discriminator 1
	cmpq	$0, -152(%rbp)
	je	.L22
	.loc 2 170 2 discriminator 3
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 170 3 discriminator 3
	cmpl	$3, %eax
	jne	.L22
	.loc 2 170 36 discriminator 5
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 170 34 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 64(%rax)
	.loc 2 170 34 is_stmt 0
	jmp	.L23
.L22:
	.loc 2 170 74 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$170, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L23:
.LBE9:
.LBB10:
	.loc 2 171 26
	movq	-224(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -144(%rbp)
	.loc 2 171 73 discriminator 1
	cmpq	$0, -144(%rbp)
	je	.L24
	.loc 2 171 1 discriminator 1
	cmpq	$0, -144(%rbp)
	je	.L24
	.loc 2 171 2 discriminator 3
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 171 3 discriminator 3
	cmpl	$3, %eax
	jne	.L24
	.loc 2 171 31 discriminator 5
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 171 29 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 68(%rax)
	.loc 2 171 29 is_stmt 0
	jmp	.L25
.L24:
	.loc 2 171 69 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$171, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L25:
.LBE10:
.LBB11:
	.loc 2 172 26
	movq	-224(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -136(%rbp)
	.loc 2 172 79 discriminator 1
	cmpq	$0, -136(%rbp)
	je	.L26
	.loc 2 172 1 discriminator 1
	cmpq	$0, -136(%rbp)
	je	.L26
	.loc 2 172 2 discriminator 3
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 172 3 discriminator 3
	cmpl	$3, %eax
	jne	.L26
	.loc 2 172 37 discriminator 5
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 172 35 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 72(%rax)
	.loc 2 172 35 is_stmt 0
	jmp	.L27
.L26:
	.loc 2 172 75 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$172, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L27:
.LBE11:
.LBB12:
	.loc 2 173 26
	movq	-224(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -128(%rbp)
	.loc 2 173 83 discriminator 1
	cmpq	$0, -128(%rbp)
	je	.L28
	.loc 2 173 1 discriminator 1
	cmpq	$0, -128(%rbp)
	je	.L28
	.loc 2 173 2 discriminator 3
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 173 3 discriminator 3
	cmpl	$3, %eax
	jne	.L28
	.loc 2 173 41 discriminator 5
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 173 39 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 80(%rax)
	.loc 2 173 39 is_stmt 0
	jmp	.L29
.L28:
	.loc 2 173 79 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$173, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L29:
.LBE12:
.LBB13:
	.loc 2 174 26
	movq	-224(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -120(%rbp)
	.loc 2 174 83 discriminator 1
	cmpq	$0, -120(%rbp)
	je	.L30
	.loc 2 174 1 discriminator 1
	cmpq	$0, -120(%rbp)
	je	.L30
	.loc 2 174 2 discriminator 3
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 174 3 discriminator 3
	cmpl	$3, %eax
	jne	.L30
	.loc 2 174 41 discriminator 5
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 174 39 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 88(%rax)
	.loc 2 174 39 is_stmt 0
	jmp	.L31
.L30:
	.loc 2 174 79 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$174, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L31:
.LBE13:
.LBB14:
	.loc 2 175 26
	movq	-224(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -112(%rbp)
	.loc 2 175 82 discriminator 1
	cmpq	$0, -112(%rbp)
	je	.L32
	.loc 2 175 1 discriminator 1
	cmpq	$0, -112(%rbp)
	je	.L32
	.loc 2 175 2 discriminator 3
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 175 3 discriminator 3
	cmpl	$3, %eax
	jne	.L32
	.loc 2 175 40 discriminator 5
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 175 38 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 92(%rax)
	.loc 2 175 38 is_stmt 0
	jmp	.L33
.L32:
	.loc 2 175 78 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$175, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L33:
.LBE14:
.LBB15:
	.loc 2 176 26
	movq	-224(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -104(%rbp)
	.loc 2 176 78 discriminator 1
	cmpq	$0, -104(%rbp)
	je	.L34
	.loc 2 176 1 discriminator 1
	cmpq	$0, -104(%rbp)
	je	.L34
	.loc 2 176 2 discriminator 3
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 176 3 discriminator 3
	cmpl	$3, %eax
	jne	.L34
	.loc 2 176 36 discriminator 5
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 176 36 is_stmt 0 discriminator 1
	testq	%rax, %rax
	setne	%dl
	.loc 2 176 34 is_stmt 1 discriminator 1
	movq	-216(%rbp), %rax
	movb	%dl, 96(%rax)
	.loc 2 176 34 is_stmt 0
	jmp	.L35
.L34:
	.loc 2 176 74 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$176, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L35:
.LBE15:
.LBB16:
	.loc 2 177 26
	movq	-224(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -96(%rbp)
	.loc 2 177 82 discriminator 1
	cmpq	$0, -96(%rbp)
	je	.L36
	.loc 2 177 1 discriminator 1
	cmpq	$0, -96(%rbp)
	je	.L36
	.loc 2 177 2 discriminator 3
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 177 3 discriminator 3
	cmpl	$3, %eax
	jne	.L36
	.loc 2 177 40 discriminator 5
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 177 38 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 100(%rax)
	.loc 2 177 38 is_stmt 0
	jmp	.L37
.L36:
	.loc 2 177 78 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$177, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L37:
.LBE16:
.LBB17:
	.loc 2 178 26
	movq	-224(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -88(%rbp)
	.loc 2 178 81 discriminator 1
	cmpq	$0, -88(%rbp)
	je	.L38
	.loc 2 178 1 discriminator 1
	cmpq	$0, -88(%rbp)
	je	.L38
	.loc 2 178 2 discriminator 3
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 178 3 discriminator 3
	cmpl	$3, %eax
	jne	.L38
	.loc 2 178 39 discriminator 5
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 178 37 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 104(%rax)
	.loc 2 178 37 is_stmt 0
	jmp	.L39
.L38:
	.loc 2 178 77 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$178, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L39:
.LBE17:
.LBB18:
	.loc 2 179 26
	movq	-224(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -80(%rbp)
	.loc 2 179 77 discriminator 1
	cmpq	$0, -80(%rbp)
	je	.L40
	.loc 2 179 1 discriminator 1
	cmpq	$0, -80(%rbp)
	je	.L40
	.loc 2 179 2 discriminator 3
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 179 3 discriminator 3
	cmpl	$3, %eax
	jne	.L40
	.loc 2 179 35 discriminator 5
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 179 35 is_stmt 0 discriminator 1
	testq	%rax, %rax
	setne	%dl
	.loc 2 179 33 is_stmt 1 discriminator 1
	movq	-216(%rbp), %rax
	movb	%dl, 108(%rax)
	.loc 2 179 33 is_stmt 0
	jmp	.L41
.L40:
	.loc 2 179 73 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$179, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L41:
.LBE18:
.LBB19:
	.loc 2 180 26
	movq	-224(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -72(%rbp)
	.loc 2 180 82 discriminator 1
	cmpq	$0, -72(%rbp)
	je	.L42
	.loc 2 180 1 discriminator 1
	cmpq	$0, -72(%rbp)
	je	.L42
	.loc 2 180 2 discriminator 3
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 180 3 discriminator 3
	cmpl	$3, %eax
	jne	.L42
	.loc 2 180 40 discriminator 5
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 180 38 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 112(%rax)
	.loc 2 180 38 is_stmt 0
	jmp	.L43
.L42:
	.loc 2 180 78 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$180, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L43:
.LBE19:
.LBB20:
	.loc 2 182 26
	movq	-224(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -64(%rbp)
	.loc 2 182 84 discriminator 1
	cmpq	$0, -64(%rbp)
	je	.L44
	.loc 2 182 1 discriminator 1
	cmpq	$0, -64(%rbp)
	je	.L44
	.loc 2 182 2 discriminator 3
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 182 3 discriminator 3
	cmpl	$4, %eax
	jne	.L44
	.loc 2 182 42 discriminator 5
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	json_real_value@PLT
	.loc 2 182 42 is_stmt 0 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	.loc 2 182 40 is_stmt 1 discriminator 1
	movq	-216(%rbp), %rax
	movss	%xmm0, 120(%rax)
	.loc 2 182 40 is_stmt 0
	jmp	.L45
.L44:
	.loc 2 182 77 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$182, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L45:
.LBE20:
.LBB21:
	.loc 2 183 26
	movq	-224(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -56(%rbp)
	.loc 2 183 80 discriminator 1
	cmpq	$0, -56(%rbp)
	je	.L46
	.loc 2 183 1 discriminator 1
	cmpq	$0, -56(%rbp)
	je	.L46
	.loc 2 183 2 discriminator 3
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 183 3 discriminator 3
	cmpl	$4, %eax
	jne	.L46
	.loc 2 183 38 discriminator 5
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	json_real_value@PLT
	.loc 2 183 38 is_stmt 0 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	.loc 2 183 36 is_stmt 1 discriminator 1
	movq	-216(%rbp), %rax
	movss	%xmm0, 124(%rax)
	.loc 2 183 36 is_stmt 0
	jmp	.L47
.L46:
	.loc 2 183 73 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$183, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L47:
.LBE21:
.LBB22:
	.loc 2 185 26
	movq	-224(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -48(%rbp)
	.loc 2 185 74 discriminator 1
	cmpq	$0, -48(%rbp)
	je	.L48
	.loc 2 185 1 discriminator 1
	cmpq	$0, -48(%rbp)
	je	.L49
	.loc 2 185 2 discriminator 3
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 185 3 discriminator 3
	cmpl	$5, %eax
	je	.L50
.L49:
	.loc 2 185 24 discriminator 6
	cmpq	$0, -48(%rbp)
	je	.L48
	.loc 2 185 2 discriminator 7
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 185 3 discriminator 7
	cmpl	$6, %eax
	jne	.L48
.L50:
	.loc 2 185 3 discriminator 9
	cmpq	$0, -48(%rbp)
	je	.L51
	.loc 2 185 2 discriminator 11
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 185 3 discriminator 11
	cmpl	$5, %eax
	jne	.L51
	.loc 2 185 3 is_stmt 0 discriminator 13
	movl	$1, %eax
	.loc 2 185 3
	jmp	.L52
.L51:
	.loc 2 185 3 discriminator 14
	movl	$0, %eax
.L52:
	.loc 2 185 3 discriminator 16
	andl	$1, %eax
	.loc 2 185 30 is_stmt 1 discriminator 16
	movq	-216(%rbp), %rdx
	movb	%al, 128(%rdx)
	.loc 2 185 30 is_stmt 0
	jmp	.L53
.L48:
	.loc 2 185 8 is_stmt 1 discriminator 10
	movq	stderr(%rip), %rax
	movl	$185, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L53:
.LBE22:
.LBB23:
	.loc 2 186 26
	movq	-224(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -40(%rbp)
	.loc 2 186 74 discriminator 1
	cmpq	$0, -40(%rbp)
	je	.L54
	.loc 2 186 1 discriminator 1
	cmpq	$0, -40(%rbp)
	je	.L54
	.loc 2 186 2 discriminator 3
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 186 3 discriminator 3
	cmpl	$2, %eax
	jne	.L54
	.loc 2 186 32 discriminator 5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 186 30 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 136(%rdx)
	.loc 2 186 30 is_stmt 0
	jmp	.L55
.L54:
	.loc 2 186 69 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$186, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L55:
.LBE23:
.LBB24:
	.loc 2 187 26
	movq	-224(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -32(%rbp)
	.loc 2 187 73 discriminator 1
	cmpq	$0, -32(%rbp)
	je	.L56
	.loc 2 187 1 discriminator 1
	cmpq	$0, -32(%rbp)
	je	.L56
	.loc 2 187 2 discriminator 3
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 187 3 discriminator 3
	cmpl	$2, %eax
	jne	.L56
	.loc 2 187 31 discriminator 5
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 187 29 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 144(%rdx)
	.loc 2 187 29 is_stmt 0
	jmp	.L57
.L56:
	.loc 2 187 68 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$187, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L57:
.LBE24:
.LBB25:
	.loc 2 188 26
	movq	-224(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -24(%rbp)
	.loc 2 188 71 discriminator 1
	cmpq	$0, -24(%rbp)
	je	.L58
	.loc 2 188 1 discriminator 1
	cmpq	$0, -24(%rbp)
	je	.L58
	.loc 2 188 2 discriminator 3
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 188 3 discriminator 3
	cmpl	$3, %eax
	jne	.L58
	.loc 2 188 29 discriminator 5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 188 27 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 152(%rax)
	.loc 2 188 27 is_stmt 0
	jmp	.L59
.L58:
	.loc 2 188 67 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$188, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L59:
.LBE25:
.LBB26:
	.loc 2 189 26
	movq	-224(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -16(%rbp)
	.loc 2 189 85 discriminator 1
	cmpq	$0, -16(%rbp)
	je	.L60
	.loc 2 189 1 discriminator 1
	cmpq	$0, -16(%rbp)
	je	.L60
	.loc 2 189 2 discriminator 3
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 189 3 discriminator 3
	cmpl	$2, %eax
	jne	.L60
	.loc 2 189 43 discriminator 5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 189 41 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 160(%rdx)
	.loc 2 189 41 is_stmt 0
	jmp	.L61
.L60:
	.loc 2 189 80 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$189, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L61:
.LBE26:
.LBB27:
	.loc 2 190 26
	movq	-224(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -8(%rbp)
	.loc 2 190 76 discriminator 1
	cmpq	$0, -8(%rbp)
	je	.L62
	.loc 2 190 1 discriminator 1
	cmpq	$0, -8(%rbp)
	je	.L62
	.loc 2 190 2 discriminator 3
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 190 3 discriminator 3
	cmpl	$2, %eax
	jne	.L62
	.loc 2 190 34 discriminator 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 190 32 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 168(%rdx)
	.loc 2 190 32 is_stmt 0
	jmp	.L63
.L62:
	.loc 2 190 71 is_stmt 1 discriminator 6
	movq	stderr(%rip), %rax
	movl	$190, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.LBE27:
	.loc 2 191 1
	nop
.L63:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	config_update_from_json, .-config_update_from_json
	.section	.rodata
	.align 8
.LC40:
	.string	"Error: json_string_set() src/config.c: %d\n"
	.align 8
.LC41:
	.string	"Error: json_object_set_new src/config.c: %d\n"
	.align 8
.LC42:
	.string	"Error; json_stringsrc/config.c: %d\n"
	.align 8
.LC43:
	.string	"Config: error set json integer (src/config.c: %d)\n"
	.align 8
.LC44:
	.string	"Config: error creating json integer (src/config.c: %d)\n"
	.align 8
.LC45:
	.string	"Config: error set json real (src/config.c: %d)\n"
	.align 8
.LC46:
	.string	"Config: error creating json real (src/config.c: %d)\n"
	.text
	.type	config_update_to_json, @function
config_update_to_json:
.LFB23:
	.loc 2 262 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
.LBB28:
	.loc 2 263 26
	movq	-224(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -200(%rbp)
	.loc 2 263 77 discriminator 1
	cmpq	$0, -200(%rbp)
	je	.L65
	.loc 2 263 9 discriminator 1
	movq	-216(%rbp), %rax
	movq	(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_string_set@PLT
	.loc 2 263 8 discriminator 1
	testl	%eax, %eax
	je	.L66
	.loc 2 263 75 discriminator 3
	movq	stderr(%rip), %rax
	movl	$263, %edx
	leaq	.LC40(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L66
.L65:
	.loc 2 263 87 discriminator 2
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	json_string@PLT
	movq	%rax, -200(%rbp)
	.loc 2 263 134 discriminator 1
	cmpq	$0, -200(%rbp)
	je	.L67
	.loc 2 263 9 discriminator 4
	movq	-200(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC13(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 263 8 discriminator 1
	testl	%eax, %eax
	je	.L66
	.loc 2 263 79 discriminator 6
	movq	stderr(%rip), %rax
	movl	$263, %edx
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L66
.L67:
	.loc 2 263 71 discriminator 5
	movq	stderr(%rip), %rax
	movl	$263, %edx
	leaq	.LC42(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L66:
	.loc 2 263 92 discriminator 7
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 263 90 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, (%rdx)
.LBE28:
.LBB29:
	.loc 2 264 26
	movq	-224(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -192(%rbp)
	.loc 2 264 75 discriminator 1
	cmpq	$0, -192(%rbp)
	je	.L68
	.loc 2 264 9 discriminator 1
	movq	-216(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_string_set@PLT
	.loc 2 264 8 discriminator 1
	testl	%eax, %eax
	je	.L69
	.loc 2 264 73 discriminator 3
	movq	stderr(%rip), %rax
	movl	$264, %edx
	leaq	.LC40(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L69
.L68:
	.loc 2 264 87 discriminator 2
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	json_string@PLT
	movq	%rax, -192(%rbp)
	.loc 2 264 132 discriminator 1
	cmpq	$0, -192(%rbp)
	je	.L70
	.loc 2 264 9 discriminator 4
	movq	-192(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC15(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 264 8 discriminator 1
	testl	%eax, %eax
	je	.L69
	.loc 2 264 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$264, %edx
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L69
.L70:
	.loc 2 264 71 discriminator 5
	movq	stderr(%rip), %rax
	movl	$264, %edx
	leaq	.LC42(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L69:
	.loc 2 264 90 discriminator 7
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 264 88 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 8(%rdx)
.LBE29:
.LBB30:
	.loc 2 265 26
	movq	-224(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -184(%rbp)
	.loc 2 265 74 discriminator 1
	cmpq	$0, -184(%rbp)
	je	.L71
	.loc 2 265 9 discriminator 1
	movq	-216(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_string_set@PLT
	.loc 2 265 8 discriminator 1
	testl	%eax, %eax
	je	.L72
	.loc 2 265 72 discriminator 3
	movq	stderr(%rip), %rax
	movl	$265, %edx
	leaq	.LC40(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L72
.L71:
	.loc 2 265 87 discriminator 2
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	json_string@PLT
	movq	%rax, -184(%rbp)
	.loc 2 265 131 discriminator 1
	cmpq	$0, -184(%rbp)
	je	.L73
	.loc 2 265 9 discriminator 4
	movq	-184(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC16(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 265 8 discriminator 1
	testl	%eax, %eax
	je	.L72
	.loc 2 265 76 discriminator 6
	movq	stderr(%rip), %rax
	movl	$265, %edx
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L72
.L73:
	.loc 2 265 71 discriminator 5
	movq	stderr(%rip), %rax
	movl	$265, %edx
	leaq	.LC42(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L72:
	.loc 2 265 89 discriminator 7
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 265 87 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 24(%rdx)
.LBE30:
.LBB31:
	.loc 2 266 26
	movq	-224(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -176(%rbp)
	.loc 2 266 78 discriminator 1
	cmpq	$0, -176(%rbp)
	je	.L74
	.loc 2 266 9 discriminator 1
	movq	-216(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_string_set@PLT
	.loc 2 266 8 discriminator 1
	testl	%eax, %eax
	je	.L75
	.loc 2 266 76 discriminator 3
	movq	stderr(%rip), %rax
	movl	$266, %edx
	leaq	.LC40(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L75
.L74:
	.loc 2 266 87 discriminator 2
	movq	-216(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	json_string@PLT
	movq	%rax, -176(%rbp)
	.loc 2 266 135 discriminator 1
	cmpq	$0, -176(%rbp)
	je	.L76
	.loc 2 266 9 discriminator 4
	movq	-176(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 266 8 discriminator 1
	testl	%eax, %eax
	je	.L75
	.loc 2 266 80 discriminator 6
	movq	stderr(%rip), %rax
	movl	$266, %edx
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L75
.L76:
	.loc 2 266 71 discriminator 5
	movq	stderr(%rip), %rax
	movl	$266, %edx
	leaq	.LC42(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L75:
	.loc 2 266 93 discriminator 7
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 266 91 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 32(%rdx)
.LBE31:
.LBB32:
	.loc 2 267 26
	movq	-224(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -168(%rbp)
	.loc 2 267 81 discriminator 1
	cmpq	$0, -168(%rbp)
	je	.L77
	.loc 2 267 9 discriminator 1
	movq	-216(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_string_set@PLT
	.loc 2 267 8 discriminator 1
	testl	%eax, %eax
	je	.L78
	.loc 2 267 79 discriminator 3
	movq	stderr(%rip), %rax
	movl	$267, %edx
	leaq	.LC40(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L78
.L77:
	.loc 2 267 87 discriminator 2
	movq	-216(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	json_string@PLT
	movq	%rax, -168(%rbp)
	.loc 2 267 138 discriminator 1
	cmpq	$0, -168(%rbp)
	je	.L79
	.loc 2 267 9 discriminator 4
	movq	-168(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC18(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 267 8 discriminator 1
	testl	%eax, %eax
	je	.L78
	.loc 2 267 83 discriminator 6
	movq	stderr(%rip), %rax
	movl	$267, %edx
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L78
.L79:
	.loc 2 267 71 discriminator 5
	movq	stderr(%rip), %rax
	movl	$267, %edx
	leaq	.LC42(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L78:
	.loc 2 267 96 discriminator 7
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 267 94 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 48(%rdx)
.LBE32:
.LBB33:
	.loc 2 269 27
	movq	-224(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -128(%rbp)
	.loc 2 269 75 discriminator 1
	cmpq	$0, -128(%rbp)
	je	.L80
	.loc 2 269 53 discriminator 1
	movq	-216(%rbp), %rax
	movl	56(%rax), %eax
	.loc 2 269 9 discriminator 1
	movl	%eax, %edx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_integer_set@PLT
	.loc 2 269 8 discriminator 1
	testl	%eax, %eax
	je	.L81
	.loc 2 269 74 discriminator 3
	movq	stderr(%rip), %rax
	movl	$269, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L82
.L81:
	.loc 2 269 102 discriminator 4
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 269 100 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 56(%rax)
	jmp	.L82
.L80:
	.loc 2 269 186 discriminator 2
	movq	-216(%rbp), %rax
	movl	56(%rax), %eax
	.loc 2 269 160 discriminator 2
	movl	%eax, %eax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -128(%rbp)
	.loc 2 269 205 discriminator 1
	cmpq	$0, -128(%rbp)
	je	.L83
	.loc 2 269 9 discriminator 5
	movq	-128(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC19(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 269 8 discriminator 1
	testl	%eax, %eax
	je	.L82
	.loc 2 269 77 discriminator 7
	movq	stderr(%rip), %rax
	movl	$269, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L82
.L83:
	.loc 2 269 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$269, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L82:
.LBE33:
.LBB34:
	.loc 2 270 27
	movq	-224(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -120(%rbp)
	.loc 2 270 72 discriminator 1
	cmpq	$0, -120(%rbp)
	je	.L84
	.loc 2 270 53 discriminator 1
	movq	-216(%rbp), %rax
	movl	60(%rax), %eax
	.loc 2 270 9 discriminator 1
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_integer_set@PLT
	.loc 2 270 8 discriminator 1
	testl	%eax, %eax
	je	.L85
	.loc 2 270 71 discriminator 3
	movq	stderr(%rip), %rax
	movl	$270, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L86
.L85:
	.loc 2 270 99 discriminator 4
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 270 97 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 60(%rax)
	jmp	.L86
.L84:
	.loc 2 270 183 discriminator 2
	movq	-216(%rbp), %rax
	movl	60(%rax), %eax
	.loc 2 270 157 discriminator 2
	movl	%eax, %eax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -120(%rbp)
	.loc 2 270 199 discriminator 1
	cmpq	$0, -120(%rbp)
	je	.L87
	.loc 2 270 9 discriminator 5
	movq	-120(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC20(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 270 8 discriminator 1
	testl	%eax, %eax
	je	.L86
	.loc 2 270 74 discriminator 7
	movq	stderr(%rip), %rax
	movl	$270, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L86
.L87:
	.loc 2 270 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$270, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L86:
.LBE34:
.LBB35:
	.loc 2 271 27
	movq	-224(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -112(%rbp)
	.loc 2 271 79 discriminator 1
	cmpq	$0, -112(%rbp)
	je	.L88
	.loc 2 271 53 discriminator 1
	movq	-216(%rbp), %rax
	movl	64(%rax), %eax
	.loc 2 271 9 discriminator 1
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_integer_set@PLT
	.loc 2 271 8 discriminator 1
	testl	%eax, %eax
	je	.L89
	.loc 2 271 78 discriminator 3
	movq	stderr(%rip), %rax
	movl	$271, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L90
.L89:
	.loc 2 271 106 discriminator 4
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 271 104 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L90
.L88:
	.loc 2 271 190 discriminator 2
	movq	-216(%rbp), %rax
	movl	64(%rax), %eax
	.loc 2 271 164 discriminator 2
	movl	%eax, %eax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -112(%rbp)
	.loc 2 271 213 discriminator 1
	cmpq	$0, -112(%rbp)
	je	.L91
	.loc 2 271 9 discriminator 5
	movq	-112(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC21(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 271 8 discriminator 1
	testl	%eax, %eax
	je	.L90
	.loc 2 271 81 discriminator 7
	movq	stderr(%rip), %rax
	movl	$271, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L90
.L91:
	.loc 2 271 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$271, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L90:
.LBE35:
.LBB36:
	.loc 2 272 27
	movq	-224(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -104(%rbp)
	.loc 2 272 74 discriminator 1
	cmpq	$0, -104(%rbp)
	je	.L92
	.loc 2 272 53 discriminator 1
	movq	-216(%rbp), %rax
	movl	68(%rax), %eax
	.loc 2 272 9 discriminator 1
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_integer_set@PLT
	.loc 2 272 8 discriminator 1
	testl	%eax, %eax
	je	.L93
	.loc 2 272 73 discriminator 3
	movq	stderr(%rip), %rax
	movl	$272, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L94
.L93:
	.loc 2 272 101 discriminator 4
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 272 99 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 68(%rax)
	jmp	.L94
.L92:
	.loc 2 272 185 discriminator 2
	movq	-216(%rbp), %rax
	movl	68(%rax), %eax
	.loc 2 272 159 discriminator 2
	movl	%eax, %eax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -104(%rbp)
	.loc 2 272 203 discriminator 1
	cmpq	$0, -104(%rbp)
	je	.L95
	.loc 2 272 9 discriminator 5
	movq	-104(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC22(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 272 8 discriminator 1
	testl	%eax, %eax
	je	.L94
	.loc 2 272 76 discriminator 7
	movq	stderr(%rip), %rax
	movl	$272, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L94
.L95:
	.loc 2 272 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$272, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L94:
.LBE36:
.LBB37:
	.loc 2 273 27
	movq	-224(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -96(%rbp)
	.loc 2 273 80 discriminator 1
	cmpq	$0, -96(%rbp)
	je	.L96
	.loc 2 273 53 discriminator 1
	movq	-216(%rbp), %rax
	movl	72(%rax), %eax
	.loc 2 273 9 discriminator 1
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_integer_set@PLT
	.loc 2 273 8 discriminator 1
	testl	%eax, %eax
	je	.L97
	.loc 2 273 79 discriminator 3
	movq	stderr(%rip), %rax
	movl	$273, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L98
.L97:
	.loc 2 273 107 discriminator 4
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 273 105 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 72(%rax)
	jmp	.L98
.L96:
	.loc 2 273 191 discriminator 2
	movq	-216(%rbp), %rax
	movl	72(%rax), %eax
	.loc 2 273 165 discriminator 2
	movl	%eax, %eax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -96(%rbp)
	.loc 2 273 215 discriminator 1
	cmpq	$0, -96(%rbp)
	je	.L99
	.loc 2 273 9 discriminator 5
	movq	-96(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC23(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 273 8 discriminator 1
	testl	%eax, %eax
	je	.L98
	.loc 2 273 82 discriminator 7
	movq	stderr(%rip), %rax
	movl	$273, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L98
.L99:
	.loc 2 273 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$273, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L98:
.LBE37:
.LBB38:
	.loc 2 274 27
	movq	-224(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -88(%rbp)
	.loc 2 274 84 discriminator 1
	cmpq	$0, -88(%rbp)
	je	.L100
	.loc 2 274 53 discriminator 1
	movq	-216(%rbp), %rax
	movl	80(%rax), %eax
	.loc 2 274 9 discriminator 1
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_integer_set@PLT
	.loc 2 274 8 discriminator 1
	testl	%eax, %eax
	je	.L101
	.loc 2 274 83 discriminator 3
	movq	stderr(%rip), %rax
	movl	$274, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L102
.L101:
	.loc 2 274 111 discriminator 4
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 274 109 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 80(%rax)
	jmp	.L102
.L100:
	.loc 2 274 195 discriminator 2
	movq	-216(%rbp), %rax
	movl	80(%rax), %eax
	.loc 2 274 169 discriminator 2
	movl	%eax, %eax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -88(%rbp)
	.loc 2 274 223 discriminator 1
	cmpq	$0, -88(%rbp)
	je	.L103
	.loc 2 274 9 discriminator 5
	movq	-88(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC24(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 274 8 discriminator 1
	testl	%eax, %eax
	je	.L102
	.loc 2 274 86 discriminator 7
	movq	stderr(%rip), %rax
	movl	$274, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L102
.L103:
	.loc 2 274 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$274, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L102:
.LBE38:
.LBB39:
	.loc 2 275 27
	movq	-224(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -80(%rbp)
	.loc 2 275 84 discriminator 1
	cmpq	$0, -80(%rbp)
	je	.L104
	.loc 2 275 53 discriminator 1
	movq	-216(%rbp), %rax
	movl	88(%rax), %eax
	.loc 2 275 9 discriminator 1
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_integer_set@PLT
	.loc 2 275 8 discriminator 1
	testl	%eax, %eax
	je	.L105
	.loc 2 275 83 discriminator 3
	movq	stderr(%rip), %rax
	movl	$275, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L106
.L105:
	.loc 2 275 111 discriminator 4
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 275 109 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 88(%rax)
	jmp	.L106
.L104:
	.loc 2 275 195 discriminator 2
	movq	-216(%rbp), %rax
	movl	88(%rax), %eax
	.loc 2 275 169 discriminator 2
	movl	%eax, %eax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -80(%rbp)
	.loc 2 275 223 discriminator 1
	cmpq	$0, -80(%rbp)
	je	.L107
	.loc 2 275 9 discriminator 5
	movq	-80(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC25(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 275 8 discriminator 1
	testl	%eax, %eax
	je	.L106
	.loc 2 275 86 discriminator 7
	movq	stderr(%rip), %rax
	movl	$275, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L106
.L107:
	.loc 2 275 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$275, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L106:
.LBE39:
.LBB40:
	.loc 2 276 27
	movq	-224(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -72(%rbp)
	.loc 2 276 83 discriminator 1
	cmpq	$0, -72(%rbp)
	je	.L108
	.loc 2 276 53 discriminator 1
	movq	-216(%rbp), %rax
	movl	92(%rax), %eax
	.loc 2 276 9 discriminator 1
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_integer_set@PLT
	.loc 2 276 8 discriminator 1
	testl	%eax, %eax
	je	.L109
	.loc 2 276 82 discriminator 3
	movq	stderr(%rip), %rax
	movl	$276, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L110
.L109:
	.loc 2 276 110 discriminator 4
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 276 108 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 92(%rax)
	jmp	.L110
.L108:
	.loc 2 276 194 discriminator 2
	movq	-216(%rbp), %rax
	movl	92(%rax), %eax
	.loc 2 276 168 discriminator 2
	movl	%eax, %eax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -72(%rbp)
	.loc 2 276 221 discriminator 1
	cmpq	$0, -72(%rbp)
	je	.L111
	.loc 2 276 9 discriminator 5
	movq	-72(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC26(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 276 8 discriminator 1
	testl	%eax, %eax
	je	.L110
	.loc 2 276 85 discriminator 7
	movq	stderr(%rip), %rax
	movl	$276, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L110
.L111:
	.loc 2 276 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$276, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L110:
.LBE40:
.LBB41:
	.loc 2 277 27
	movq	-224(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -64(%rbp)
	.loc 2 277 79 discriminator 1
	cmpq	$0, -64(%rbp)
	je	.L112
	.loc 2 277 53 discriminator 1
	movq	-216(%rbp), %rax
	movzbl	96(%rax), %eax
	.loc 2 277 9 discriminator 1
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_integer_set@PLT
	.loc 2 277 8 discriminator 1
	testl	%eax, %eax
	je	.L113
	.loc 2 277 78 discriminator 3
	movq	stderr(%rip), %rax
	movl	$277, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L114
.L113:
	.loc 2 277 106 discriminator 4
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 277 106 is_stmt 0 discriminator 1
	testq	%rax, %rax
	setne	%dl
	.loc 2 277 104 is_stmt 1 discriminator 1
	movq	-216(%rbp), %rax
	movb	%dl, 96(%rax)
	jmp	.L114
.L112:
	.loc 2 277 190 discriminator 2
	movq	-216(%rbp), %rax
	movzbl	96(%rax), %eax
	.loc 2 277 164 discriminator 2
	movzbl	%al, %eax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -64(%rbp)
	.loc 2 277 213 discriminator 1
	cmpq	$0, -64(%rbp)
	je	.L115
	.loc 2 277 9 discriminator 5
	movq	-64(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC27(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 277 8 discriminator 1
	testl	%eax, %eax
	je	.L114
	.loc 2 277 81 discriminator 7
	movq	stderr(%rip), %rax
	movl	$277, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L114
.L115:
	.loc 2 277 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$277, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L114:
.LBE41:
.LBB42:
	.loc 2 278 27
	movq	-224(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -56(%rbp)
	.loc 2 278 83 discriminator 1
	cmpq	$0, -56(%rbp)
	je	.L116
	.loc 2 278 53 discriminator 1
	movq	-216(%rbp), %rax
	movl	100(%rax), %eax
	.loc 2 278 9 discriminator 1
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_integer_set@PLT
	.loc 2 278 8 discriminator 1
	testl	%eax, %eax
	je	.L117
	.loc 2 278 82 discriminator 3
	movq	stderr(%rip), %rax
	movl	$278, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L118
.L117:
	.loc 2 278 110 discriminator 4
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 278 108 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 100(%rax)
	jmp	.L118
.L116:
	.loc 2 278 194 discriminator 2
	movq	-216(%rbp), %rax
	movl	100(%rax), %eax
	.loc 2 278 168 discriminator 2
	movl	%eax, %eax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -56(%rbp)
	.loc 2 278 221 discriminator 1
	cmpq	$0, -56(%rbp)
	je	.L119
	.loc 2 278 9 discriminator 5
	movq	-56(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC28(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 278 8 discriminator 1
	testl	%eax, %eax
	je	.L118
	.loc 2 278 85 discriminator 7
	movq	stderr(%rip), %rax
	movl	$278, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L118
.L119:
	.loc 2 278 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$278, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L118:
.LBE42:
.LBB43:
	.loc 2 279 27
	movq	-224(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -48(%rbp)
	.loc 2 279 82 discriminator 1
	cmpq	$0, -48(%rbp)
	je	.L120
	.loc 2 279 53 discriminator 1
	movq	-216(%rbp), %rax
	movl	104(%rax), %eax
	.loc 2 279 9 discriminator 1
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_integer_set@PLT
	.loc 2 279 8 discriminator 1
	testl	%eax, %eax
	je	.L121
	.loc 2 279 81 discriminator 3
	movq	stderr(%rip), %rax
	movl	$279, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L122
.L121:
	.loc 2 279 109 discriminator 4
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 279 107 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 104(%rax)
	jmp	.L122
.L120:
	.loc 2 279 193 discriminator 2
	movq	-216(%rbp), %rax
	movl	104(%rax), %eax
	.loc 2 279 167 discriminator 2
	movl	%eax, %eax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -48(%rbp)
	.loc 2 279 219 discriminator 1
	cmpq	$0, -48(%rbp)
	je	.L123
	.loc 2 279 9 discriminator 5
	movq	-48(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC29(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 279 8 discriminator 1
	testl	%eax, %eax
	je	.L122
	.loc 2 279 84 discriminator 7
	movq	stderr(%rip), %rax
	movl	$279, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L122
.L123:
	.loc 2 279 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$279, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L122:
.LBE43:
.LBB44:
	.loc 2 280 27
	movq	-224(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -40(%rbp)
	.loc 2 280 78 discriminator 1
	cmpq	$0, -40(%rbp)
	je	.L124
	.loc 2 280 53 discriminator 1
	movq	-216(%rbp), %rax
	movzbl	108(%rax), %eax
	.loc 2 280 9 discriminator 1
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_integer_set@PLT
	.loc 2 280 8 discriminator 1
	testl	%eax, %eax
	je	.L125
	.loc 2 280 77 discriminator 3
	movq	stderr(%rip), %rax
	movl	$280, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L126
.L125:
	.loc 2 280 105 discriminator 4
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 280 105 is_stmt 0 discriminator 1
	testq	%rax, %rax
	setne	%dl
	.loc 2 280 103 is_stmt 1 discriminator 1
	movq	-216(%rbp), %rax
	movb	%dl, 108(%rax)
	jmp	.L126
.L124:
	.loc 2 280 189 discriminator 2
	movq	-216(%rbp), %rax
	movzbl	108(%rax), %eax
	.loc 2 280 163 discriminator 2
	movzbl	%al, %eax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -40(%rbp)
	.loc 2 280 211 discriminator 1
	cmpq	$0, -40(%rbp)
	je	.L127
	.loc 2 280 9 discriminator 5
	movq	-40(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC30(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 280 8 discriminator 1
	testl	%eax, %eax
	je	.L126
	.loc 2 280 80 discriminator 7
	movq	stderr(%rip), %rax
	movl	$280, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L126
.L127:
	.loc 2 280 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$280, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L126:
.LBE44:
.LBB45:
	.loc 2 281 27
	movq	-224(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -32(%rbp)
	.loc 2 281 83 discriminator 1
	cmpq	$0, -32(%rbp)
	je	.L128
	.loc 2 281 53 discriminator 1
	movq	-216(%rbp), %rax
	movl	112(%rax), %eax
	.loc 2 281 9 discriminator 1
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_integer_set@PLT
	.loc 2 281 8 discriminator 1
	testl	%eax, %eax
	je	.L129
	.loc 2 281 82 discriminator 3
	movq	stderr(%rip), %rax
	movl	$281, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L130
.L129:
	.loc 2 281 110 discriminator 4
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 281 108 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 112(%rax)
	jmp	.L130
.L128:
	.loc 2 281 194 discriminator 2
	movq	-216(%rbp), %rax
	movl	112(%rax), %eax
	.loc 2 281 168 discriminator 2
	movl	%eax, %eax
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -32(%rbp)
	.loc 2 281 221 discriminator 1
	cmpq	$0, -32(%rbp)
	je	.L131
	.loc 2 281 9 discriminator 5
	movq	-32(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC31(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 281 8 discriminator 1
	testl	%eax, %eax
	je	.L130
	.loc 2 281 85 discriminator 7
	movq	stderr(%rip), %rax
	movl	$281, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L130
.L131:
	.loc 2 281 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$281, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L130:
.LBE45:
.LBB46:
	.loc 2 283 24
	movq	-224(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -24(%rbp)
	.loc 2 283 82 discriminator 1
	cmpq	$0, -24(%rbp)
	je	.L132
	.loc 2 283 47 discriminator 1
	movq	-216(%rbp), %rax
	movss	120(%rax), %xmm0
	.loc 2 283 9 discriminator 1
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movq	%xmm1, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	json_real_set@PLT
	.loc 2 283 8 discriminator 1
	testl	%eax, %eax
	je	.L133
	.loc 2 283 78 discriminator 3
	movq	stderr(%rip), %rax
	movl	$283, %edx
	leaq	.LC45(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L134
.L133:
	.loc 2 283 109 discriminator 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_real_value@PLT
	.loc 2 283 109 is_stmt 0 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	.loc 2 283 107 is_stmt 1 discriminator 1
	movq	-216(%rbp), %rax
	movss	%xmm0, 120(%rax)
	jmp	.L134
.L132:
	.loc 2 283 181 discriminator 2
	movq	-216(%rbp), %rax
	movss	120(%rax), %xmm0
	.loc 2 283 158 discriminator 2
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	json_real@PLT
	movq	%rax, -24(%rbp)
	.loc 2 283 210 discriminator 1
	cmpq	$0, -24(%rbp)
	je	.L135
	.loc 2 283 9 discriminator 5
	movq	-24(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC32(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 283 8 discriminator 1
	testl	%eax, %eax
	je	.L134
	.loc 2 283 84 discriminator 7
	movq	stderr(%rip), %rax
	movl	$283, %edx
	leaq	.LC45(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L134
.L135:
	.loc 2 283 74 discriminator 6
	movq	stderr(%rip), %rax
	movl	$283, %edx
	leaq	.LC46(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L134:
.LBE46:
.LBB47:
	.loc 2 284 24
	movq	-224(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -16(%rbp)
	.loc 2 284 78 discriminator 1
	cmpq	$0, -16(%rbp)
	je	.L136
	.loc 2 284 47 discriminator 1
	movq	-216(%rbp), %rax
	movss	124(%rax), %xmm0
	.loc 2 284 9 discriminator 1
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	json_real_set@PLT
	.loc 2 284 8 discriminator 1
	testl	%eax, %eax
	je	.L137
	.loc 2 284 74 discriminator 3
	movq	stderr(%rip), %rax
	movl	$284, %edx
	leaq	.LC45(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L138
.L137:
	.loc 2 284 105 discriminator 4
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	json_real_value@PLT
	.loc 2 284 105 is_stmt 0 discriminator 1
	cvtsd2ss	%xmm0, %xmm0
	.loc 2 284 103 is_stmt 1 discriminator 1
	movq	-216(%rbp), %rax
	movss	%xmm0, 124(%rax)
	jmp	.L138
.L136:
	.loc 2 284 177 discriminator 2
	movq	-216(%rbp), %rax
	movss	124(%rax), %xmm0
	.loc 2 284 154 discriminator 2
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	call	json_real@PLT
	movq	%rax, -16(%rbp)
	.loc 2 284 202 discriminator 1
	cmpq	$0, -16(%rbp)
	je	.L139
	.loc 2 284 9 discriminator 5
	movq	-16(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC33(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 284 8 discriminator 1
	testl	%eax, %eax
	je	.L138
	.loc 2 284 80 discriminator 7
	movq	stderr(%rip), %rax
	movl	$284, %edx
	leaq	.LC45(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L138
.L139:
	.loc 2 284 74 discriminator 6
	movq	stderr(%rip), %rax
	movl	$284, %edx
	leaq	.LC46(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L138:
.LBE47:
	.loc 2 286 14
	movq	-216(%rbp), %rax
	movzbl	128(%rax), %eax
	.loc 2 286 8
	testb	%al, %al
	je	.L140
	.loc 2 286 5 discriminator 1
	call	json_true@PLT
	jmp	.L141
.L140:
	.loc 2 286 19 discriminator 2
	call	json_false@PLT
.L141:
	.loc 2 286 8 discriminator 4
	movq	-224(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	json_object_set_new@PLT
	.loc 2 286 7 discriminator 1
	testl	%eax, %eax
	je	.L142
	.loc 2 286 9 discriminator 5
	movq	stderr(%rip), %rax
	movl	$286, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L142:
.LBB48:
	.loc 2 287 26
	movq	-224(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -160(%rbp)
	.loc 2 287 74 discriminator 1
	cmpq	$0, -160(%rbp)
	je	.L143
	.loc 2 287 9 discriminator 1
	movq	-216(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_string_set@PLT
	.loc 2 287 8 discriminator 1
	testl	%eax, %eax
	je	.L144
	.loc 2 287 72 discriminator 3
	movq	stderr(%rip), %rax
	movl	$287, %edx
	leaq	.LC40(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L144
.L143:
	.loc 2 287 87 discriminator 2
	movq	-216(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	json_string@PLT
	movq	%rax, -160(%rbp)
	.loc 2 287 131 discriminator 1
	cmpq	$0, -160(%rbp)
	je	.L145
	.loc 2 287 9 discriminator 4
	movq	-160(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC35(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 287 8 discriminator 1
	testl	%eax, %eax
	je	.L144
	.loc 2 287 76 discriminator 6
	movq	stderr(%rip), %rax
	movl	$287, %edx
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L144
.L145:
	.loc 2 287 71 discriminator 5
	movq	stderr(%rip), %rax
	movl	$287, %edx
	leaq	.LC42(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L144:
	.loc 2 287 89 discriminator 7
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 287 87 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 136(%rdx)
.LBE48:
.LBB49:
	.loc 2 288 26
	movq	-224(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -152(%rbp)
	.loc 2 288 73 discriminator 1
	cmpq	$0, -152(%rbp)
	je	.L146
	.loc 2 288 9 discriminator 1
	movq	-216(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_string_set@PLT
	.loc 2 288 8 discriminator 1
	testl	%eax, %eax
	je	.L147
	.loc 2 288 71 discriminator 3
	movq	stderr(%rip), %rax
	movl	$288, %edx
	leaq	.LC40(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L147
.L146:
	.loc 2 288 87 discriminator 2
	movq	-216(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	json_string@PLT
	movq	%rax, -152(%rbp)
	.loc 2 288 130 discriminator 1
	cmpq	$0, -152(%rbp)
	je	.L148
	.loc 2 288 9 discriminator 4
	movq	-152(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC36(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 288 8 discriminator 1
	testl	%eax, %eax
	je	.L147
	.loc 2 288 75 discriminator 6
	movq	stderr(%rip), %rax
	movl	$288, %edx
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L147
.L148:
	.loc 2 288 71 discriminator 5
	movq	stderr(%rip), %rax
	movl	$288, %edx
	leaq	.LC42(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L147:
	.loc 2 288 88 discriminator 7
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 288 86 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 144(%rdx)
.LBE49:
.LBB50:
	.loc 2 289 27
	movq	-224(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -8(%rbp)
	.loc 2 289 72 discriminator 1
	cmpq	$0, -8(%rbp)
	je	.L149
	.loc 2 289 53 discriminator 1
	movq	-216(%rbp), %rax
	movl	152(%rax), %eax
	.loc 2 289 9 discriminator 1
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_integer_set@PLT
	.loc 2 289 8 discriminator 1
	testl	%eax, %eax
	je	.L150
	.loc 2 289 71 discriminator 3
	movq	stderr(%rip), %rax
	movl	$289, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L151
.L150:
	.loc 2 289 99 discriminator 4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_integer_value@PLT
	.loc 2 289 97 discriminator 1
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 152(%rax)
	jmp	.L151
.L149:
	.loc 2 289 183 discriminator 2
	movq	-216(%rbp), %rax
	movl	152(%rax), %eax
	.loc 2 289 157 discriminator 2
	cltq
	movq	%rax, %rdi
	call	json_integer@PLT
	movq	%rax, -8(%rbp)
	.loc 2 289 199 discriminator 1
	cmpq	$0, -8(%rbp)
	je	.L152
	.loc 2 289 9 discriminator 5
	movq	-8(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC37(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 289 8 discriminator 1
	testl	%eax, %eax
	je	.L151
	.loc 2 289 74 discriminator 7
	movq	stderr(%rip), %rax
	movl	$289, %edx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L151
.L152:
	.loc 2 289 77 discriminator 6
	movq	stderr(%rip), %rax
	movl	$289, %edx
	leaq	.LC44(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L151:
.LBE50:
.LBB51:
	.loc 2 290 26
	movq	-224(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -144(%rbp)
	.loc 2 290 85 discriminator 1
	cmpq	$0, -144(%rbp)
	je	.L153
	.loc 2 290 9 discriminator 1
	movq	-216(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_string_set@PLT
	.loc 2 290 8 discriminator 1
	testl	%eax, %eax
	je	.L154
	.loc 2 290 83 discriminator 3
	movq	stderr(%rip), %rax
	movl	$290, %edx
	leaq	.LC40(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L154
.L153:
	.loc 2 290 87 discriminator 2
	movq	-216(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	json_string@PLT
	movq	%rax, -144(%rbp)
	.loc 2 290 142 discriminator 1
	cmpq	$0, -144(%rbp)
	je	.L155
	.loc 2 290 9 discriminator 4
	movq	-144(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC38(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 290 8 discriminator 1
	testl	%eax, %eax
	je	.L154
	.loc 2 290 87 discriminator 6
	movq	stderr(%rip), %rax
	movl	$290, %edx
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L154
.L155:
	.loc 2 290 71 discriminator 5
	movq	stderr(%rip), %rax
	movl	$290, %edx
	leaq	.LC42(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L154:
	.loc 2 290 100 discriminator 7
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 290 98 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 160(%rdx)
.LBE51:
.LBB52:
	.loc 2 291 26
	movq	-224(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_get@PLT
	movq	%rax, -136(%rbp)
	.loc 2 291 76 discriminator 1
	cmpq	$0, -136(%rbp)
	je	.L156
	.loc 2 291 9 discriminator 1
	movq	-216(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_string_set@PLT
	.loc 2 291 8 discriminator 1
	testl	%eax, %eax
	je	.L157
	.loc 2 291 74 discriminator 3
	movq	stderr(%rip), %rax
	movl	$291, %edx
	leaq	.LC40(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L157
.L156:
	.loc 2 291 87 discriminator 2
	movq	-216(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	json_string@PLT
	movq	%rax, -136(%rbp)
	.loc 2 291 133 discriminator 1
	cmpq	$0, -136(%rbp)
	je	.L158
	.loc 2 291 9 discriminator 4
	movq	-136(%rbp), %rdx
	movq	-224(%rbp), %rax
	leaq	.LC39(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_object_set_new@PLT
	.loc 2 291 8 discriminator 1
	testl	%eax, %eax
	je	.L157
	.loc 2 291 78 discriminator 6
	movq	stderr(%rip), %rax
	movl	$291, %edx
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L157
.L158:
	.loc 2 291 71 discriminator 5
	movq	stderr(%rip), %rax
	movl	$291, %edx
	leaq	.LC42(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L157:
	.loc 2 291 91 discriminator 7
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	json_string_value@PLT
	.loc 2 291 89 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 168(%rdx)
.LBE52:
	.loc 2 292 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	config_update_to_json, .-config_update_to_json
	.globl	config_destroy
	.type	config_destroy, @function
config_destroy:
.LFB24:
	.loc 2 295 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 296 2
	movq	config_json(%rip), %rax
	movq	%rax, %rdi
	call	json_decref
	.loc 2 297 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	config_destroy, .-config_destroy
	.section	.rodata
	.align 8
.LC47:
	.string	"Config: error creating JSON object root.\n"
.LC48:
	.string	"r"
	.align 8
.LC49:
	.string	"Error merging default configuration with file configuration\n"
	.align 8
.LC50:
	.string	"%s: error on line %d: %s\nUsing default configuration"
	.align 8
.LC51:
	.string	"Config: error in file: %s: %s\nUsing default configuration\n"
	.text
	.globl	config_load
	.type	config_load, @function
config_load:
.LFB25:
	.loc 2 300 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	.loc 2 300 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 301 16
	call	json_object@PLT
	.loc 2 301 14 discriminator 1
	movq	%rax, config_json(%rip)
	.loc 2 302 18
	movq	config_json(%rip), %rax
	.loc 2 302 5
	testq	%rax, %rax
	jne	.L161
	.loc 2 303 3
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 2 304 9
	movl	$0, %eax
	jmp	.L162
.L161:
	.loc 2 306 2
	movq	config_json(%rip), %rdx
	movq	config_struct(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	config_update_to_json
	.loc 2 308 20
	movq	-296(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -288(%rbp)
	.loc 2 309 5
	cmpq	$0, -288(%rbp)
	je	.L163
.LBB53:
	.loc 2 311 23
	leaq	-272(%rbp), %rdx
	movq	-288(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	json_loadf@PLT
	movq	%rax, -280(%rbp)
	.loc 2 312 6
	cmpq	$0, -280(%rbp)
	je	.L164
	.loc 2 313 8
	movq	config_json(%rip), %rax
	movq	-280(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_object_update@PLT
	.loc 2 313 7 discriminator 1
	testl	%eax, %eax
	je	.L165
	.loc 2 314 5
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$60, %edx
	movl	$1, %esi
	leaq	.LC49(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
.L165:
	.loc 2 315 4
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	json_decref
	jmp	.L166
.L164:
	.loc 2 318 4
	movl	-272(%rbp), %ecx
	movq	stderr(%rip), %rax
	leaq	-272(%rbp), %rdx
	leaq	92(%rdx), %rsi
	movq	-296(%rbp), %rdx
	movq	%rsi, %r8
	leaq	.LC50(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L166:
	.loc 2 322 3
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.LBE53:
	jmp	.L167
.L163:
	.loc 2 327 34
	call	__errno_location@PLT
	.loc 2 325 3
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	.loc 2 325 3 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	movq	-296(%rbp), %rdx
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L167:
	.loc 2 330 2 is_stmt 1
	movq	config_json(%rip), %rdx
	movq	config_struct(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	config_update_from_json
	.loc 2 331 9
	movq	config_struct(%rip), %rax
.L162:
	.loc 2 332 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L168
	call	__stack_chk_fail@PLT
.L168:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	config_load, .-config_load
	.section	.rodata
	.align 8
.LC52:
	.string	"Error saving configuration (JSON format). File: %s\n"
	.text
	.globl	config_save
	.type	config_save, @function
config_save:
.LFB26:
	.loc 2 335 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 336 2
	movq	config_json(%rip), %rdx
	movq	config_struct(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	config_update_to_json
	.loc 2 338 6
	movq	config_json(%rip), %rax
	movq	-8(%rbp), %rcx
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_dump_file@PLT
	.loc 2 338 5 discriminator 1
	testl	%eax, %eax
	je	.L171
	.loc 2 339 3
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC52(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L171:
	.loc 2 342 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	config_save, .-config_save
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "src/config.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/string.h"
	.file 10 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10ec
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x18
	.long	.LASF140
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
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x9
	.long	.LASF9
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x5f
	.uleb128 0x9
	.long	.LASF10
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x5f
	.uleb128 0x1a
	.byte	0x8
	.uleb128 0x7
	.long	0x85
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x14
	.long	0x85
	.uleb128 0x9
	.long	.LASF12
	.byte	0x4
	.byte	0xd6
	.byte	0x1b
	.long	0x43
	.uleb128 0x1b
	.long	0x91
	.uleb128 0xc
	.long	.LASF57
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x229
	.uleb128 0x1
	.long	.LASF13
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x1
	.long	.LASF14
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x80
	.byte	0x8
	.uleb128 0x1
	.long	.LASF15
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x80
	.byte	0x10
	.uleb128 0x1
	.long	.LASF16
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x80
	.byte	0x18
	.uleb128 0x1
	.long	.LASF17
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x80
	.byte	0x20
	.uleb128 0x1
	.long	.LASF18
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x80
	.byte	0x28
	.uleb128 0x1
	.long	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x80
	.byte	0x30
	.uleb128 0x1
	.long	.LASF20
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x80
	.byte	0x38
	.uleb128 0x1
	.long	.LASF21
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x80
	.byte	0x40
	.uleb128 0x1
	.long	.LASF22
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x80
	.byte	0x48
	.uleb128 0x1
	.long	.LASF23
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x80
	.byte	0x50
	.uleb128 0x1
	.long	.LASF24
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x80
	.byte	0x58
	.uleb128 0x1
	.long	.LASF25
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x242
	.byte	0x60
	.uleb128 0x1
	.long	.LASF26
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x247
	.byte	0x68
	.uleb128 0x1
	.long	.LASF27
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x58
	.byte	0x70
	.uleb128 0x1
	.long	.LASF28
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x74
	.uleb128 0x1
	.long	.LASF29
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x66
	.byte	0x78
	.uleb128 0x1
	.long	.LASF30
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x1
	.long	.LASF31
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x1
	.long	.LASF32
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x24c
	.byte	0x83
	.uleb128 0x1
	.long	.LASF33
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x25c
	.byte	0x88
	.uleb128 0x1
	.long	.LASF34
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x72
	.byte	0x90
	.uleb128 0x1
	.long	.LASF35
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x266
	.byte	0x98
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x270
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x247
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x7e
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x91
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x58
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x275
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xa2
	.uleb128 0x1c
	.long	.LASF141
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF43
	.uleb128 0x7
	.long	0x23d
	.uleb128 0x7
	.long	0xa2
	.uleb128 0xd
	.long	0x85
	.long	0x25c
	.uleb128 0xe
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x235
	.uleb128 0x11
	.long	.LASF44
	.uleb128 0x7
	.long	0x261
	.uleb128 0x11
	.long	.LASF45
	.uleb128 0x7
	.long	0x26b
	.uleb128 0xd
	.long	0x85
	.long	0x285
	.uleb128 0xe
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.long	0x8c
	.uleb128 0x15
	.long	0x285
	.uleb128 0x7
	.long	0x229
	.uleb128 0x15
	.long	0x28f
	.uleb128 0x16
	.long	.LASF102
	.byte	0x8
	.byte	0x97
	.byte	0xe
	.long	0x28f
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1
	.byte	0x32
	.byte	0xe
	.long	0x2f2
	.uleb128 0xa
	.long	.LASF48
	.byte	0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x1
	.uleb128 0xa
	.long	.LASF50
	.byte	0x2
	.uleb128 0xa
	.long	.LASF51
	.byte	0x3
	.uleb128 0xa
	.long	.LASF52
	.byte	0x4
	.uleb128 0xa
	.long	.LASF53
	.byte	0x5
	.uleb128 0xa
	.long	.LASF54
	.byte	0x6
	.uleb128 0xa
	.long	.LASF55
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	.LASF56
	.byte	0x1
	.byte	0x3b
	.byte	0x3
	.long	0x2b3
	.uleb128 0xc
	.long	.LASF58
	.byte	0x10
	.byte	0x1
	.byte	0x3d
	.byte	0x10
	.long	0x326
	.uleb128 0x1
	.long	.LASF59
	.byte	0x1
	.byte	0x3e
	.byte	0xf
	.long	0x2f2
	.byte	0
	.uleb128 0x1
	.long	.LASF60
	.byte	0x1
	.byte	0x3f
	.byte	0x15
	.long	0x9d
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF58
	.byte	0x1
	.byte	0x40
	.byte	0x3
	.long	0x2fe
	.uleb128 0x14
	.long	0x326
	.uleb128 0x9
	.long	.LASF61
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.long	0x2a5
	.uleb128 0xc
	.long	.LASF62
	.byte	0xfc
	.byte	0x1
	.byte	0x98
	.byte	0x10
	.long	0x392
	.uleb128 0x1
	.long	.LASF63
	.byte	0x1
	.byte	0x99
	.byte	0x9
	.long	0x58
	.byte	0
	.uleb128 0x1
	.long	.LASF64
	.byte	0x1
	.byte	0x9a
	.byte	0x9
	.long	0x58
	.byte	0x4
	.uleb128 0x1
	.long	.LASF65
	.byte	0x1
	.byte	0x9b
	.byte	0x9
	.long	0x58
	.byte	0x8
	.uleb128 0x1
	.long	.LASF66
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.long	0x392
	.byte	0xc
	.uleb128 0x1
	.long	.LASF67
	.byte	0x1
	.byte	0x9d
	.byte	0xa
	.long	0x3a2
	.byte	0x5c
	.byte	0
	.uleb128 0xd
	.long	0x85
	.long	0x3a2
	.uleb128 0xe
	.long	0x43
	.byte	0x4f
	.byte	0
	.uleb128 0xd
	.long	0x85
	.long	0x3b2
	.uleb128 0xe
	.long	0x43
	.byte	0x9f
	.byte	0
	.uleb128 0x9
	.long	.LASF62
	.byte	0x1
	.byte	0x9e
	.byte	0x3
	.long	0x343
	.uleb128 0xc
	.long	.LASF68
	.byte	0xb0
	.byte	0x7
	.byte	0x53
	.byte	0x8
	.long	0x55f
	.uleb128 0x1
	.long	.LASF69
	.byte	0x7
	.byte	0x55
	.byte	0xe
	.long	0x285
	.byte	0
	.uleb128 0x1
	.long	.LASF70
	.byte	0x7
	.byte	0x56
	.byte	0xe
	.long	0x285
	.byte	0x8
	.uleb128 0x1
	.long	.LASF71
	.byte	0x7
	.byte	0x57
	.byte	0xe
	.long	0x285
	.byte	0x10
	.uleb128 0x1
	.long	.LASF72
	.byte	0x7
	.byte	0x58
	.byte	0xe
	.long	0x285
	.byte	0x18
	.uleb128 0x1
	.long	.LASF73
	.byte	0x7
	.byte	0x59
	.byte	0xe
	.long	0x285
	.byte	0x20
	.uleb128 0x1
	.long	.LASF74
	.byte	0x7
	.byte	0x5a
	.byte	0xe
	.long	0x285
	.byte	0x28
	.uleb128 0x1
	.long	.LASF75
	.byte	0x7
	.byte	0x5b
	.byte	0xe
	.long	0x285
	.byte	0x30
	.uleb128 0x1
	.long	.LASF76
	.byte	0x7
	.byte	0x5d
	.byte	0xb
	.long	0x3c
	.byte	0x38
	.uleb128 0x1
	.long	.LASF77
	.byte	0x7
	.byte	0x5e
	.byte	0xb
	.long	0x3c
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF78
	.byte	0x7
	.byte	0x5f
	.byte	0xb
	.long	0x3c
	.byte	0x40
	.uleb128 0x1
	.long	.LASF79
	.byte	0x7
	.byte	0x60
	.byte	0xb
	.long	0x3c
	.byte	0x44
	.uleb128 0x1
	.long	.LASF80
	.byte	0x7
	.byte	0x61
	.byte	0xb
	.long	0x3c
	.byte	0x48
	.uleb128 0x1
	.long	.LASF81
	.byte	0x7
	.byte	0x62
	.byte	0xb
	.long	0x3c
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF82
	.byte	0x7
	.byte	0x63
	.byte	0xb
	.long	0x3c
	.byte	0x50
	.uleb128 0x1
	.long	.LASF83
	.byte	0x7
	.byte	0x64
	.byte	0xb
	.long	0x3c
	.byte	0x54
	.uleb128 0x1
	.long	.LASF84
	.byte	0x7
	.byte	0x65
	.byte	0xb
	.long	0x3c
	.byte	0x58
	.uleb128 0x1
	.long	.LASF85
	.byte	0x7
	.byte	0x66
	.byte	0xb
	.long	0x3c
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF86
	.byte	0x7
	.byte	0x67
	.byte	0x8
	.long	0x55f
	.byte	0x60
	.uleb128 0x1
	.long	.LASF87
	.byte	0x7
	.byte	0x68
	.byte	0xb
	.long	0x3c
	.byte	0x64
	.uleb128 0x1
	.long	.LASF88
	.byte	0x7
	.byte	0x69
	.byte	0xb
	.long	0x3c
	.byte	0x68
	.uleb128 0x1
	.long	.LASF89
	.byte	0x7
	.byte	0x6a
	.byte	0x8
	.long	0x55f
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF90
	.byte	0x7
	.byte	0x6b
	.byte	0xb
	.long	0x3c
	.byte	0x70
	.uleb128 0x1
	.long	.LASF91
	.byte	0x7
	.byte	0x6d
	.byte	0xb
	.long	0x3c
	.byte	0x74
	.uleb128 0x1
	.long	.LASF92
	.byte	0x7
	.byte	0x6e
	.byte	0x8
	.long	0x566
	.byte	0x78
	.uleb128 0x1
	.long	.LASF93
	.byte	0x7
	.byte	0x6f
	.byte	0x8
	.long	0x566
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF94
	.byte	0x7
	.byte	0x71
	.byte	0x6
	.long	0x55f
	.byte	0x80
	.uleb128 0x1
	.long	.LASF95
	.byte	0x7
	.byte	0x72
	.byte	0xe
	.long	0x285
	.byte	0x88
	.uleb128 0x1
	.long	.LASF96
	.byte	0x7
	.byte	0x73
	.byte	0xe
	.long	0x285
	.byte	0x90
	.uleb128 0x1
	.long	.LASF97
	.byte	0x7
	.byte	0x74
	.byte	0x6
	.long	0x58
	.byte	0x98
	.uleb128 0x1
	.long	.LASF98
	.byte	0x7
	.byte	0x75
	.byte	0xe
	.long	0x285
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF99
	.byte	0x7
	.byte	0x77
	.byte	0xe
	.long	0x285
	.byte	0xa8
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.long	.LASF100
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.long	.LASF101
	.uleb128 0x16
	.long	.LASF103
	.byte	0x7
	.byte	0x7f
	.byte	0x17
	.long	0x579
	.uleb128 0x7
	.long	0x3be
	.uleb128 0x4
	.long	.LASF68
	.byte	0x17
	.byte	0x16
	.long	0x3be
	.uleb128 0x9
	.byte	0x3
	.quad	config
	.uleb128 0x1e
	.long	0x56d
	.byte	0x2
	.byte	0x35
	.byte	0x10
	.uleb128 0x9
	.byte	0x3
	.quad	config_struct
	.uleb128 0x4
	.long	.LASF104
	.byte	0x37
	.byte	0x10
	.long	0x5ba
	.uleb128 0x9
	.byte	0x3
	.quad	config_json
	.uleb128 0x7
	.long	0x326
	.uleb128 0x8
	.long	.LASF105
	.byte	0x1
	.value	0x18e
	.byte	0x5
	.long	0x58
	.long	0x5e0
	.uleb128 0x3
	.long	0x5e0
	.uleb128 0x3
	.long	0x285
	.uleb128 0x3
	.long	0x91
	.byte	0
	.uleb128 0x7
	.long	0x332
	.uleb128 0x8
	.long	.LASF106
	.byte	0x9
	.value	0x1a3
	.byte	0xe
	.long	0x80
	.long	0x5fc
	.uleb128 0x3
	.long	0x58
	.byte	0
	.uleb128 0xf
	.long	.LASF111
	.byte	0xa
	.byte	0x25
	.byte	0xd
	.long	0x608
	.uleb128 0x7
	.long	0x58
	.uleb128 0xb
	.long	.LASF107
	.byte	0x8
	.byte	0xb8
	.byte	0xc
	.long	0x58
	.long	0x623
	.uleb128 0x3
	.long	0x28f
	.byte	0
	.uleb128 0xb
	.long	.LASF108
	.byte	0x1
	.byte	0xc9
	.byte	0x5
	.long	0x58
	.long	0x63e
	.uleb128 0x3
	.long	0x5ba
	.uleb128 0x3
	.long	0x5ba
	.byte	0
	.uleb128 0x8
	.long	.LASF109
	.byte	0x1
	.value	0x172
	.byte	0x9
	.long	0x5ba
	.long	0x65f
	.uleb128 0x3
	.long	0x28f
	.uleb128 0x3
	.long	0x91
	.uleb128 0x3
	.long	0x65f
	.byte	0
	.uleb128 0x7
	.long	0x3b2
	.uleb128 0x8
	.long	.LASF110
	.byte	0x8
	.value	0x108
	.byte	0xe
	.long	0x28f
	.long	0x680
	.uleb128 0x3
	.long	0x28a
	.uleb128 0x3
	.long	0x28a
	.byte	0
	.uleb128 0xf
	.long	.LASF112
	.byte	0x1
	.byte	0x5f
	.byte	0x9
	.long	0x5ba
	.uleb128 0x1f
	.long	.LASF142
	.byte	0x1
	.byte	0x81
	.byte	0x6
	.long	0x69e
	.uleb128 0x3
	.long	0x5ba
	.byte	0
	.uleb128 0xf
	.long	.LASF113
	.byte	0x1
	.byte	0x68
	.byte	0x9
	.long	0x5ba
	.uleb128 0xf
	.long	.LASF114
	.byte	0x1
	.byte	0x67
	.byte	0x9
	.long	0x5ba
	.uleb128 0xb
	.long	.LASF115
	.byte	0x1
	.byte	0x66
	.byte	0x9
	.long	0x5ba
	.long	0x6cc
	.uleb128 0x3
	.long	0x6cc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.long	.LASF116
	.uleb128 0x8
	.long	.LASF117
	.byte	0x1
	.value	0x142
	.byte	0x5
	.long	0x58
	.long	0x6ef
	.uleb128 0x3
	.long	0x5ba
	.uleb128 0x3
	.long	0x6cc
	.byte	0
	.uleb128 0xb
	.long	.LASF118
	.byte	0x1
	.byte	0x65
	.byte	0x9
	.long	0x5ba
	.long	0x705
	.uleb128 0x3
	.long	0x337
	.byte	0
	.uleb128 0x8
	.long	.LASF119
	.byte	0x1
	.value	0x141
	.byte	0x5
	.long	0x58
	.long	0x721
	.uleb128 0x3
	.long	0x5ba
	.uleb128 0x3
	.long	0x337
	.byte	0
	.uleb128 0xb
	.long	.LASF120
	.byte	0x1
	.byte	0xc1
	.byte	0x5
	.long	0x58
	.long	0x741
	.uleb128 0x3
	.long	0x5ba
	.uleb128 0x3
	.long	0x285
	.uleb128 0x3
	.long	0x5ba
	.byte	0
	.uleb128 0xb
	.long	.LASF121
	.byte	0x1
	.byte	0x61
	.byte	0x9
	.long	0x5ba
	.long	0x757
	.uleb128 0x3
	.long	0x285
	.byte	0
	.uleb128 0x8
	.long	.LASF122
	.byte	0x1
	.value	0x13d
	.byte	0x5
	.long	0x58
	.long	0x773
	.uleb128 0x3
	.long	0x5ba
	.uleb128 0x3
	.long	0x285
	.byte	0
	.uleb128 0x8
	.long	.LASF123
	.byte	0x1
	.value	0x13a
	.byte	0x8
	.long	0x6cc
	.long	0x78a
	.uleb128 0x3
	.long	0x5e0
	.byte	0
	.uleb128 0x8
	.long	.LASF124
	.byte	0x1
	.value	0x139
	.byte	0xc
	.long	0x337
	.long	0x7a1
	.uleb128 0x3
	.long	0x5e0
	.byte	0
	.uleb128 0x8
	.long	.LASF125
	.byte	0x8
	.value	0x165
	.byte	0xc
	.long	0x58
	.long	0x7be
	.uleb128 0x3
	.long	0x294
	.uleb128 0x3
	.long	0x28a
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.long	.LASF126
	.byte	0x1
	.value	0x137
	.byte	0xd
	.long	0x285
	.long	0x7d5
	.uleb128 0x3
	.long	0x5e0
	.byte	0
	.uleb128 0xb
	.long	.LASF127
	.byte	0x1
	.byte	0xbd
	.byte	0x9
	.long	0x5ba
	.long	0x7f0
	.uleb128 0x3
	.long	0x5e0
	.uleb128 0x3
	.long	0x285
	.byte	0
	.uleb128 0x8
	.long	.LASF128
	.byte	0x8
	.value	0x16b
	.byte	0xc
	.long	0x58
	.long	0x808
	.uleb128 0x3
	.long	0x285
	.uleb128 0x17
	.byte	0
	.uleb128 0x20
	.long	.LASF143
	.byte	0x2
	.value	0x14e
	.byte	0x6
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x837
	.uleb128 0x10
	.long	.LASF129
	.value	0x14e
	.byte	0x1e
	.long	0x285
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF144
	.byte	0x2
	.value	0x12b
	.byte	0x10
	.long	0x579
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ad
	.uleb128 0x10
	.long	.LASF129
	.value	0x12b
	.byte	0x28
	.long	0x285
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x5
	.long	.LASF130
	.value	0x134
	.byte	0x8
	.long	0x28f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x12
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x5
	.long	.LASF131
	.value	0x136
	.byte	0x10
	.long	0x3b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x5
	.long	.LASF132
	.value	0x137
	.byte	0xb
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF137
	.byte	0x2
	.value	0x126
	.byte	0x6
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF135
	.byte	0x2
	.value	0x105
	.byte	0xd
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xcb4
	.uleb128 0x10
	.long	.LASF103
	.value	0x105
	.byte	0x32
	.long	0x579
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x10
	.long	.LASF104
	.value	0x105
	.byte	0x49
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x92d
	.uleb128 0x5
	.long	.LASF112
	.value	0x107
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x2
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x953
	.uleb128 0x5
	.long	.LASF112
	.value	0x108
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x2
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x979
	.uleb128 0x5
	.long	.LASF112
	.value	0x109
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x2
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x99f
	.uleb128 0x5
	.long	.LASF112
	.value	0x10a
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x2
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x9c5
	.uleb128 0x5
	.long	.LASF112
	.value	0x10b
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x2
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x9eb
	.uleb128 0x5
	.long	.LASF133
	.value	0x10d
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x2
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0xa11
	.uleb128 0x5
	.long	.LASF133
	.value	0x10e
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x2
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0xa37
	.uleb128 0x5
	.long	.LASF133
	.value	0x10f
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x2
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0xa5d
	.uleb128 0x5
	.long	.LASF133
	.value	0x110
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x2
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0xa83
	.uleb128 0x5
	.long	.LASF133
	.value	0x111
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0xaa9
	.uleb128 0x5
	.long	.LASF133
	.value	0x112
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x2
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0xacf
	.uleb128 0x5
	.long	.LASF133
	.value	0x113
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0xaf5
	.uleb128 0x5
	.long	.LASF133
	.value	0x114
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0xb1b
	.uleb128 0x5
	.long	.LASF133
	.value	0x115
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0xb41
	.uleb128 0x5
	.long	.LASF133
	.value	0x116
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0xb66
	.uleb128 0x5
	.long	.LASF133
	.value	0x117
	.byte	0xc
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0xb8b
	.uleb128 0x5
	.long	.LASF133
	.value	0x118
	.byte	0xc
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0xbb0
	.uleb128 0x5
	.long	.LASF133
	.value	0x119
	.byte	0xc
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0xbd5
	.uleb128 0x5
	.long	.LASF134
	.value	0x11b
	.byte	0xc
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0xbfa
	.uleb128 0x5
	.long	.LASF134
	.value	0x11c
	.byte	0xc
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0xc20
	.uleb128 0x5
	.long	.LASF112
	.value	0x11f
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x2
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0xc46
	.uleb128 0x5
	.long	.LASF112
	.value	0x120
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x2
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0xc6b
	.uleb128 0x5
	.long	.LASF133
	.value	0x121
	.byte	0xc
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0xc91
	.uleb128 0x5
	.long	.LASF112
	.value	0x122
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x12
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x5
	.long	.LASF112
	.value	0x123
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF136
	.byte	0x2
	.byte	0xa0
	.byte	0xd
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x10ab
	.uleb128 0x13
	.long	.LASF103
	.byte	0x2
	.byte	0xa0
	.byte	0x34
	.long	0x579
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x13
	.long	.LASF104
	.byte	0x2
	.byte	0xa0
	.byte	0x4b
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0xd17
	.uleb128 0x4
	.long	.LASF112
	.byte	0xa2
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x2
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xd3c
	.uleb128 0x4
	.long	.LASF112
	.byte	0xa3
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x2
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0xd61
	.uleb128 0x4
	.long	.LASF112
	.byte	0xa4
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x2
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xd86
	.uleb128 0x4
	.long	.LASF112
	.byte	0xa5
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x2
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0xdab
	.uleb128 0x4
	.long	.LASF112
	.byte	0xa6
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x2
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0xdd0
	.uleb128 0x4
	.long	.LASF112
	.byte	0xa8
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x2
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0xdf5
	.uleb128 0x4
	.long	.LASF112
	.byte	0xa9
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x2
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0xe1a
	.uleb128 0x4
	.long	.LASF112
	.byte	0xaa
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x2
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0xe3f
	.uleb128 0x4
	.long	.LASF112
	.byte	0xab
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x2
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0xe64
	.uleb128 0x4
	.long	.LASF112
	.byte	0xac
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x2
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0xe89
	.uleb128 0x4
	.long	.LASF112
	.byte	0xad
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x2
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0xeae
	.uleb128 0x4
	.long	.LASF112
	.byte	0xae
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x2
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0xed3
	.uleb128 0x4
	.long	.LASF112
	.byte	0xaf
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x2
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0xef8
	.uleb128 0x4
	.long	.LASF112
	.byte	0xb0
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x2
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0xf1d
	.uleb128 0x4
	.long	.LASF112
	.byte	0xb1
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0xf42
	.uleb128 0x4
	.long	.LASF112
	.byte	0xb2
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x2
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0xf67
	.uleb128 0x4
	.long	.LASF112
	.byte	0xb3
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0xf8c
	.uleb128 0x4
	.long	.LASF112
	.byte	0xb4
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0xfb1
	.uleb128 0x4
	.long	.LASF112
	.byte	0xb6
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0xfd6
	.uleb128 0x4
	.long	.LASF112
	.byte	0xb7
	.byte	0xc
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0xffa
	.uleb128 0x4
	.long	.LASF112
	.byte	0xb9
	.byte	0xc
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x101e
	.uleb128 0x4
	.long	.LASF112
	.byte	0xba
	.byte	0xc
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x1042
	.uleb128 0x4
	.long	.LASF112
	.byte	0xbb
	.byte	0xc
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x1066
	.uleb128 0x4
	.long	.LASF112
	.byte	0xbc
	.byte	0xc
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x108a
	.uleb128 0x4
	.long	.LASF112
	.byte	0xbd
	.byte	0xc
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x12
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x4
	.long	.LASF112
	.byte	0xbe
	.byte	0xc
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF138
	.byte	0x2
	.byte	0x3a
	.byte	0x6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF145
	.byte	0x1
	.byte	0x83
	.byte	0x14
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.long	.LASF139
	.byte	0x1
	.byte	0x83
	.byte	0x28
	.long	0x5ba
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x35
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x7c
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF81:
	.string	"segment_size"
.LASF32:
	.string	"_shortbuf"
.LASF141:
	.string	"_IO_lock_t"
.LASF62:
	.string	"json_error_t"
.LASF102:
	.string	"stderr"
.LASF21:
	.string	"_IO_buf_end"
.LASF109:
	.string	"json_loadf"
.LASF123:
	.string	"json_real_value"
.LASF48:
	.string	"JSON_OBJECT"
.LASF19:
	.string	"_IO_write_end"
.LASF4:
	.string	"unsigned int"
.LASF37:
	.string	"_freeres_list"
.LASF76:
	.string	"sample_rate"
.LASF13:
	.string	"_flags"
.LASF143:
	.string	"config_save"
.LASF117:
	.string	"json_real_set"
.LASF54:
	.string	"JSON_FALSE"
.LASF106:
	.string	"strerror"
.LASF91:
	.string	"calibration_time"
.LASF25:
	.string	"_markers"
.LASF119:
	.string	"json_integer_set"
.LASF97:
	.string	"mqtt_qos"
.LASF131:
	.string	"error"
.LASF135:
	.string	"config_update_to_json"
.LASF50:
	.string	"JSON_STRING"
.LASF82:
	.string	"levels_record_period"
.LASF111:
	.string	"__errno_location"
.LASF140:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF136:
	.string	"config_update_from_json"
.LASF53:
	.string	"JSON_TRUE"
.LASF108:
	.string	"json_object_update"
.LASF24:
	.string	"_IO_save_end"
.LASF101:
	.string	"float"
.LASF44:
	.string	"_IO_codecvt"
.LASF144:
	.string	"config_load"
.LASF60:
	.string	"refcount"
.LASF120:
	.string	"json_object_set_new"
.LASF47:
	.string	"long long unsigned int"
.LASF133:
	.string	"integer_json"
.LASF23:
	.string	"_IO_backup_base"
.LASF34:
	.string	"_offset"
.LASF75:
	.string	"data_output_format"
.LASF125:
	.string	"fprintf"
.LASF27:
	.string	"_fileno"
.LASF124:
	.string	"json_integer_value"
.LASF12:
	.string	"size_t"
.LASF88:
	.string	"data_file_duration"
.LASF55:
	.string	"JSON_NULL"
.LASF16:
	.string	"_IO_read_base"
.LASF100:
	.string	"_Bool"
.LASF112:
	.string	"json_object"
.LASF72:
	.string	"output_path"
.LASF99:
	.string	"server_socket"
.LASF73:
	.string	"output_filename"
.LASF118:
	.string	"json_integer"
.LASF11:
	.string	"char"
.LASF40:
	.string	"_mode"
.LASF80:
	.string	"segment_duration"
.LASF113:
	.string	"json_false"
.LASF43:
	.string	"_IO_marker"
.LASF71:
	.string	"input_file"
.LASF67:
	.string	"text"
.LASF14:
	.string	"_IO_read_ptr"
.LASF121:
	.string	"json_string"
.LASF114:
	.string	"json_true"
.LASF17:
	.string	"_IO_write_base"
.LASF46:
	.string	"long long int"
.LASF128:
	.string	"printf"
.LASF22:
	.string	"_IO_save_base"
.LASF77:
	.string	"channels"
.LASF122:
	.string	"json_string_set"
.LASF85:
	.string	"audio_file_duration"
.LASF38:
	.string	"_freeres_buf"
.LASF129:
	.string	"config_filename"
.LASF52:
	.string	"JSON_REAL"
.LASF105:
	.string	"json_dump_file"
.LASF39:
	.string	"__pad5"
.LASF86:
	.string	"audio_record_ok"
.LASF104:
	.string	"config_json"
.LASF98:
	.string	"mqtt_device_credential"
.LASF110:
	.string	"fopen"
.LASF31:
	.string	"_vtable_offset"
.LASF74:
	.string	"audio_output_format"
.LASF58:
	.string	"json_t"
.LASF137:
	.string	"config_destroy"
.LASF69:
	.string	"identification"
.LASF68:
	.string	"config"
.LASF15:
	.string	"_IO_read_end"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF78:
	.string	"bits_per_sample"
.LASF51:
	.string	"JSON_INTEGER"
.LASF45:
	.string	"_IO_wide_data"
.LASF107:
	.string	"fclose"
.LASF64:
	.string	"column"
.LASF79:
	.string	"block_size"
.LASF139:
	.string	"json"
.LASF92:
	.string	"calibration_reference"
.LASF130:
	.string	"config_fd"
.LASF66:
	.string	"source"
.LASF61:
	.string	"json_int_t"
.LASF93:
	.string	"calibration_delta"
.LASF36:
	.string	"_wide_data"
.LASF33:
	.string	"_lock"
.LASF90:
	.string	"background_duration"
.LASF138:
	.string	"config_print"
.LASF5:
	.string	"long unsigned int"
.LASF29:
	.string	"_old_offset"
.LASF57:
	.string	"_IO_FILE"
.LASF89:
	.string	"data_record_ok"
.LASF127:
	.string	"json_object_get"
.LASF59:
	.string	"type"
.LASF2:
	.string	"unsigned char"
.LASF145:
	.string	"json_decref"
.LASF63:
	.string	"line"
.LASF115:
	.string	"json_real"
.LASF18:
	.string	"_IO_write_ptr"
.LASF84:
	.string	"audio_loop_recording"
.LASF96:
	.string	"mqtt_topic"
.LASF142:
	.string	"json_delete"
.LASF103:
	.string	"config_struct"
.LASF49:
	.string	"JSON_ARRAY"
.LASF70:
	.string	"input_device"
.LASF35:
	.string	"_codecvt"
.LASF95:
	.string	"mqtt_broker"
.LASF132:
	.string	"file_json"
.LASF94:
	.string	"mqtt_enable"
.LASF9:
	.string	"__off_t"
.LASF56:
	.string	"json_type"
.LASF6:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF83:
	.string	"run_duration"
.LASF116:
	.string	"double"
.LASF26:
	.string	"_chain"
.LASF42:
	.string	"FILE"
.LASF126:
	.string	"json_string_value"
.LASF28:
	.string	"_flags2"
.LASF30:
	.string	"_cur_column"
.LASF87:
	.string	"data_loop_recording"
.LASF65:
	.string	"position"
.LASF10:
	.string	"__off64_t"
.LASF41:
	.string	"_unused2"
.LASF20:
	.string	"_IO_buf_base"
.LASF134:
	.string	"real_json"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/aluno/Desktop/sound_meter-master_v03_1"
.LASF0:
	.string	"src/config.c"
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
