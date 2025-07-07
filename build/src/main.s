	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v02_2" "src/main.c"
	.globl	running
	.data
	.type	running, @object
	.size	running, 1
running:
	.byte	1
	.text
	.type	int_handler, @function
int_handler:
.LFB308:
	.file 1 "src/main.c"
	.loc 1 53 37
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 54 10
	movb	$0, running(%rip)
	.loc 1 55 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE308:
	.size	int_handler, .-int_handler
	.section	.rodata
	.align 8
.LC0:
	.ascii	"Usage: %s [options] <source file_name>\noptions:\n\t--verbos"
	.ascii	"e\n\t-h, --help\n\t-v, --version\n\t-d, --device <device nam"
	.ascii	"e>\n\t-i, --input <file name>\n\t-o,"
	.string	" --output <file name>\n\t-f, --data_output_format <csv | json>\n\t-r, --sample_rate <rate>\n\t-a, --channels <channels>\n\t-n, --identification <name>\n\t-t, --duration <seconds>\n\t-c, --calibrate <seconds>\n\t-g, --config <file name>\n\t-b, --block_size <sample number>\n"
	.text
	.type	help, @function
help:
.LFB309:
	.loc 1 59 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 60 2
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 77 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE309:
	.size	help, .-help
	.section	.rodata
	.align 8
.LC1:
	.string	"Sound meter v1.0 (Jul  7 2025)\nBased on MoSeMusic project by Guilherme Albano and David Meneses\nEzequiel Conde (ezeq@cc.isel.ipl.pt)"
	.text
	.type	about, @function
about:
.LFB310:
	.loc 1 80 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 81 2
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 84 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE310:
	.size	about, .-about
	.section	.rodata
.LC2:
	.string	"44100"
.LC3:
	.string	"48000"
	.align 8
.LC4:
	.string	"expected sample_rate [44100,48000]"
.LC5:
	.string	"Assertion failed: %s\n"
.LC6:
	.string	"sound_meter"
.LC7:
	.string	"512"
.LC8:
	.string	"1024"
.LC9:
	.string	"2048"
	.align 8
.LC10:
	.string	"expected block_size [512, 1024, 2028]"
.LC11:
	.string	"Error in option -%c argument\n"
.LC12:
	.string	":hvd:i:o:f:r:a:n:t:c:g:b:"
.LC13:
	.string	"SOUND_METER_CONFIG_FILENAME"
.LC14:
	.string	"sound_meter_config.json"
.LC15:
	.string	"Configuration filename: %s\n"
.LC16:
	.string	"SOUND_METER_CONFIG_FILEPATH"
.LC17:
	.string	"./"
.LC18:
	.string	"Configuration pathname: %s\n"
	.align 8
.LC19:
	.string	"\n\tOutput file: %s\n\tRun duration: %d seconds\n\n"
.LC21:
	.string	"\nCalibrating for %d seconds\n"
.LC22:
	.string	"src/main.c"
	.align 8
.LC23:
	.string	"lenght_read <= sbuffer_write_size(ring_calibration)"
.LC24:
	.string	"-"
.LC25:
	.string	"%d\n"
.LC26:
	.string	"\nCalibration reference: %.1f\n"
.LC27:
	.string	"Raw LAE: %.1f\n"
.LC28:
	.string	"Calibration delta: %.1f\n"
	.align 8
.LC29:
	.string	"\nStarting sound level measuring..."
.LC30:
	.string	"a"
.LC31:
	.string	"b"
.LC32:
	.string	"c"
.LC33:
	.string	"d"
	.align 8
.LC34:
	.string	"LAeq, LAFmin, LAE, LAFmax, LApeak"
	.align 8
.LC35:
	.string	"lenght_read <= sbuffer_write_size(third_octave_data[i].ring)"
	.align 8
.LC36:
	.string	"lenght_read <= sbuffer_write_size(ring_z)"
	.align 8
.LC37:
	.string	"lenght_read <= sbuffer_write_size(ring_a)"
	.align 8
.LC38:
	.string	"lenght_read <= sbuffer_write_size(ring_c)"
	.align 8
.LC39:
	.string	"lenght_read <= sbuffer_write_size(ring_afast)"
	.align 8
.LC40:
	.string	"lenght_read <= sbuffer_write_size(ring_aslow)"
.LC41:
	.string	"\r%6.1f%6.1f%6.1f%6.1f%6.1f\n"
	.align 8
.LC42:
	.string	"ERROR : could not start recording (in_out.c : 79)"
.LC43:
	.string	"\nTotal time: %d seconds\n"
	.align 8
.LC44:
	.string	"Saving configuration in ./sound_meter_config.json"
.LC45:
	.string	"./sound_meter_config.json"
	.text
	.globl	main
	.type	main, @function
main:
.LFB311:
	.loc 1 87 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1192, %rsp
	.cfi_offset 3, -24
	movl	%edi, -1172(%rbp)
	movq	%rsi, -1184(%rbp)
	.loc 1 87 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 108 6
	movl	$0, -1160(%rbp)
	.loc 1 110 8
	movq	$0, -1104(%rbp)
	.loc 1 111 8
	movq	$0, -1096(%rbp)
	.loc 1 112 8
	movq	$0, -1088(%rbp)
	.loc 1 113 8
	movq	$0, -1080(%rbp)
	.loc 1 114 8
	movq	$0, -1072(%rbp)
	.loc 1 115 8
	movq	$0, -1064(%rbp)
	.loc 1 116 8
	movq	$0, -1056(%rbp)
	.loc 1 117 8
	movq	$0, -1048(%rbp)
	.loc 1 118 8
	movq	$0, -1040(%rbp)
	.loc 1 119 8
	movq	$0, -1032(%rbp)
	.loc 1 120 6
	movl	$0, -1156(%rbp)
	.loc 1 122 2
	leaq	int_handler(%rip), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	signal@PLT
	.loc 1 124 8
	jmp	.L5
.L27:
	.loc 1 126 3
	cmpl	$118, -1120(%rbp)
	ja	.L5
	movl	-1120(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L8(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L8(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L8:
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L22-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L21-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L20-.L8
	.long	.L19-.L8
	.long	.L18-.L8
	.long	.L17-.L8
	.long	.L5-.L8
	.long	.L16-.L8
	.long	.L15-.L8
	.long	.L14-.L8
	.long	.L13-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L12-.L8
	.long	.L11-.L8
	.long	.L5-.L8
	.long	.L5-.L8
	.long	.L10-.L8
	.long	.L5-.L8
	.long	.L9-.L8
	.long	.L5-.L8
	.long	.L7-.L8
	.text
.L14:
	.loc 1 130 4
	movq	-1184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	help
	.loc 1 131 11
	movl	$0, %eax
	jmp	.L91
.L7:
	.loc 1 133 4
	movl	$0, %eax
	call	about
	.loc 1 134 4
	jmp	.L5
.L17:
	.loc 1 136 27
	movq	optarg(%rip), %rax
	movq	%rax, -1104(%rbp)
	.loc 1 137 4
	jmp	.L5
.L13:
	.loc 1 139 26
	movq	optarg(%rip), %rax
	movq	%rax, -1096(%rbp)
	.loc 1 140 4
	jmp	.L5
.L11:
	.loc 1 142 27
	movq	optarg(%rip), %rax
	movq	%rax, -1088(%rbp)
	.loc 1 143 4
	jmp	.L5
.L16:
	.loc 1 145 30
	movq	optarg(%rip), %rax
	movq	%rax, -1080(%rbp)
	.loc 1 146 4
	jmp	.L5
.L15:
	.loc 1 148 27
	movq	optarg(%rip), %rax
	movq	%rax, -1040(%rbp)
	.loc 1 149 4
	jmp	.L5
.L10:
	.loc 1 151 23
	movq	optarg(%rip), %rax
	movq	%rax, -1072(%rbp)
	.loc 1 152 15
	movq	-1032(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 152 12 discriminator 1
	testl	%eax, %eax
	je	.L93
	.loc 1 152 57 discriminator 1
	movq	-1032(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 152 13 discriminator 1
	testl	%eax, %eax
	je	.L93
	.loc 1 152 100 discriminator 2
	movq	stderr(%rip), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 152 70 discriminator 1
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 152 84 discriminator 2
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	help
	.loc 1 152 105 discriminator 3
	movl	$1, %edi
	call	exit@PLT
.L20:
	.loc 1 156 20
	movq	optarg(%rip), %rax
	movq	%rax, -1064(%rbp)
	.loc 1 157 4
	jmp	.L5
.L12:
	.loc 1 159 26
	movq	optarg(%rip), %rax
	movq	%rax, -1056(%rbp)
	.loc 1 160 4
	jmp	.L5
.L9:
	.loc 1 162 19
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1156(%rbp)
	.loc 1 163 4
	jmp	.L5
.L18:
	.loc 1 165 28
	movq	optarg(%rip), %rax
	movq	%rax, -1048(%rbp)
	.loc 1 166 4
	jmp	.L5
.L19:
	.loc 1 168 22
	movq	optarg(%rip), %rax
	movq	%rax, -1032(%rbp)
	.loc 1 169 15
	movq	-1032(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 169 12 discriminator 1
	testl	%eax, %eax
	je	.L94
	.loc 1 169 55 discriminator 1
	movq	-1032(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 169 52 discriminator 1
	testl	%eax, %eax
	je	.L94
	.loc 1 169 96 discriminator 2
	movq	-1032(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 169 13 discriminator 1
	testl	%eax, %eax
	je	.L94
	.loc 1 169 138 discriminator 3
	movq	stderr(%rip), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 169 73 discriminator 1
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 169 87 discriminator 2
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	help
	.loc 1 169 108 discriminator 3
	movl	$1, %edi
	call	exit@PLT
.L22:
	.loc 1 173 4
	movl	optopt(%rip), %edx
	movq	stderr(%rip), %rax
	leaq	.LC11(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 174 21
	movl	$1, -1160(%rbp)
	.loc 1 175 4
	jmp	.L5
.L21:
	.loc 1 177 21
	movl	$1, -1160(%rbp)
	.loc 1 178 4
	jmp	.L5
.L93:
	.loc 1 154 4
	nop
	jmp	.L5
.L94:
	.loc 1 171 4
	nop
.L5:
	.loc 1 124 24
	leaq	-1164(%rbp), %rdx
	movq	-1184(%rbp), %rsi
	movl	-1172(%rbp), %eax
	movq	%rdx, %r8
	leaq	long_options.2(%rip), %rdx
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -1120(%rbp)
	.loc 1 125 34
	cmpl	$-1, -1120(%rbp)
	jne	.L27
	.loc 1 181 5
	cmpl	$0, -1160(%rbp)
	je	.L28
	.loc 1 182 3
	movq	-1184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	help
	.loc 1 183 3
	movl	$1, %edi
	call	exit@PLT
.L28:
	.loc 1 189 14
	movq	-1040(%rbp), %rax
	movq	%rax, -1024(%rbp)
	.loc 1 190 5
	cmpq	$0, -1024(%rbp)
	jne	.L29
	.loc 1 191 21
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -1024(%rbp)
	.loc 1 192 6
	cmpq	$0, -1024(%rbp)
	jne	.L29
	.loc 1 193 20
	leaq	.LC14(%rip), %rax
	movq	%rax, -1024(%rbp)
.L29:
	.loc 1 195 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 195 5
	testl	%eax, %eax
	je	.L30
	.loc 1 196 3
	movq	-1024(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L30:
	.loc 1 214 7
	movq	-1024(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1166(%rbp)
	.loc 1 215 5
	cmpb	$47, -1166(%rbp)
	je	.L31
	.loc 1 215 26 discriminator 1
	cmpb	$46, -1166(%rbp)
	je	.L31
.LBB2:
	.loc 1 216 22
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -1008(%rbp)
	.loc 1 217 6
	cmpq	$0, -1008(%rbp)
	jne	.L32
	.loc 1 218 9
	leaq	.LC17(%rip), %rax
	movq	%rax, -1008(%rbp)
.L32:
	.loc 1 219 27
	movq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 1 219 42 discriminator 1
	movq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 219 40 discriminator 2
	addq	%rbx, %rax
	.loc 1 219 20 discriminator 2
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -968(%rbp)
	.loc 1 220 3
	movq	-1008(%rbp), %rdx
	movq	-968(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 1 221 3
	movq	-1024(%rbp), %rdx
	movq	-968(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	.loc 1 222 19
	movq	-968(%rbp), %rax
	movq	%rax, -1016(%rbp)
.LBE2:
	.loc 1 215 50
	jmp	.L33
.L31:
	.loc 1 225 21
	movq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, -1016(%rbp)
.L33:
	.loc 1 227 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 227 5
	testl	%eax, %eax
	je	.L34
	.loc 1 228 3
	movq	-1016(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L34:
	.loc 1 230 18
	movq	-1016(%rbp), %rax
	movq	%rax, %rdi
	call	config_load@PLT
	.loc 1 230 16 discriminator 1
	movq	%rax, config_struct(%rip)
	.loc 1 232 2
	movq	-1016(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 236 5
	cmpq	$0, -1104(%rbp)
	je	.L35
	.loc 1 237 16
	movq	config_struct(%rip), %rax
	.loc 1 237 31
	movq	-1104(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L35:
	.loc 1 239 5
	cmpq	$0, -1096(%rbp)
	je	.L36
	.loc 1 240 16
	movq	config_struct(%rip), %rax
	.loc 1 240 29
	movq	-1096(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L36:
	.loc 1 242 5
	cmpq	$0, -1080(%rbp)
	je	.L37
	.loc 1 243 16
	movq	config_struct(%rip), %rax
	.loc 1 243 37
	movq	-1080(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L37:
	.loc 1 245 5
	cmpq	$0, -1072(%rbp)
	je	.L38
	.loc 1 246 32
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	.loc 1 246 16 discriminator 1
	movq	config_struct(%rip), %rax
	.loc 1 246 30 discriminator 1
	movl	%edx, 56(%rax)
.L38:
	.loc 1 248 5
	cmpq	$0, -1064(%rbp)
	je	.L39
	.loc 1 249 29
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	.loc 1 249 16 discriminator 1
	movq	config_struct(%rip), %rax
	.loc 1 249 27 discriminator 1
	movl	%edx, 60(%rax)
.L39:
	.loc 1 251 5
	cmpq	$0, -1056(%rbp)
	je	.L40
	.loc 1 252 16
	movq	config_struct(%rip), %rax
	.loc 1 252 33
	movq	-1056(%rbp), %rdx
	movq	%rdx, (%rax)
.L40:
	.loc 1 254 5
	cmpl	$0, -1156(%rbp)
	je	.L41
	.loc 1 255 16
	movq	config_struct(%rip), %rax
	.loc 1 255 31
	movl	-1156(%rbp), %edx
	movl	%edx, 84(%rax)
.L41:
	.loc 1 257 5
	cmpq	$0, -1048(%rbp)
	je	.L42
	.loc 1 258 37
	movq	-1048(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	.loc 1 258 16 discriminator 1
	movq	config_struct(%rip), %rax
	.loc 1 258 35 discriminator 1
	movl	%edx, 116(%rax)
.L42:
	.loc 1 260 5
	cmpq	$0, -1032(%rbp)
	je	.L43
	.loc 1 261 31
	movq	-1032(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	.loc 1 261 16 discriminator 1
	movq	config_struct(%rip), %rax
	.loc 1 261 29 discriminator 1
	movl	%edx, 68(%rax)
.L43:
	.loc 1 263 2
	movq	-1096(%rbp), %rdx
	movq	-1088(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	output_set_filename@PLT
	.loc 1 265 45
	movq	config_struct(%rip), %rax
	movl	72(%rax), %edx
	.loc 1 265 79
	movq	config_struct(%rip), %rax
	movl	56(%rax), %eax
	.loc 1 265 64
	imull	%eax, %edx
	.loc 1 265 15
	movq	config_struct(%rip), %rax
	.loc 1 265 93
	movl	%edx, %edx
	imulq	$274877907, %rdx, %rdx
	shrq	$32, %rdx
	shrl	$6, %edx
	.loc 1 265 30
	movl	%edx, 76(%rax)
	.loc 1 267 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 267 5
	testl	%eax, %eax
	je	.L44
	.loc 1 268 3
	movl	$0, %eax
	call	config_print@PLT
	.loc 1 269 3
	movl	$0, %eax
	call	output_get_data_filepath@PLT
	movq	%rax, %rcx
	.loc 1 269 3 is_stmt 0 discriminator 1
	movl	-1156(%rbp), %eax
	movl	%eax, %edx
	movq	%rcx, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L44:
	.loc 1 279 7 is_stmt 1
	movq	config_struct(%rip), %rax
	movq	%rax, %rdi
	call	input_device_open@PLT
	.loc 1 279 6 discriminator 1
	xorl	$1, %eax
	.loc 1 279 5 discriminator 1
	testb	%al, %al
	je	.L45
	.loc 1 280 2
	movl	$1, %edi
	call	exit@PLT
.L45:
	.loc 1 282 29
	movl	$0, %eax
	call	timeweight_create@PLT
	movq	%rax, -960(%rbp)
	.loc 1 283 29
	movl	$0, %eax
	call	timeweight_create@PLT
	movq	%rax, -952(%rbp)
	.loc 1 284 21
	movl	$3, %edi
	call	aweighting_create@PLT
	movq	%rax, -944(%rbp)
	.loc 1 285 21
	movl	$2, %edi
	call	cweighting_create@PLT
	movq	%rax, -936(%rbp)
	.loc 1 287 41
	movq	config_struct(%rip), %rax
	movl	60(%rax), %edx
	.loc 1 287 67
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 287 52
	imull	%edx, %eax
	movl	%eax, %eax
	.loc 1 287 21
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -928(%rbp)
	.loc 1 290 49
	movq	config_struct(%rip), %rax
	movl	76(%rax), %edx
	.loc 1 290 79
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 290 64
	addl	%edx, %eax
	.loc 1 290 92
	leal	-1(%rax), %ecx
	.loc 1 291 24
	movq	config_struct(%rip), %rax
	movl	68(%rax), %ebx
	.loc 1 291 9
	movl	%ecx, %eax
	movl	$0, %edx
	divl	%ebx
	.loc 1 291 38
	leal	1(%rax), %edx
	.loc 1 292 24
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 290 11
	imull	%edx, %eax
	movl	%eax, -1116(%rbp)
.LBB3:
	.loc 1 297 11
	movl	$0, -1152(%rbp)
	.loc 1 297 2
	jmp	.L46
.L47:
	.loc 1 298 33
	movl	-1152(%rbp), %eax
	movl	%eax, %edi
	call	third_octave_create@PLT
	movq	%rax, %rcx
	.loc 1 298 31 discriminator 1
	movl	-1152(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$736, %rax
	movq	%rcx, (%rax)
	.loc 1 299 33
	movl	$0, %eax
	call	levels_create@PLT
	movq	%rax, %rcx
	.loc 1 299 31 discriminator 1
	movl	-1152(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$728, %rax
	movq	%rcx, (%rax)
	.loc 1 300 31
	movl	-1116(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, %rcx
	.loc 1 300 29 discriminator 1
	movl	-1152(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$720, %rax
	movq	%rcx, (%rax)
	.loc 1 297 81 discriminator 3
	addl	$1, -1152(%rbp)
.L46:
	.loc 1 297 20 discriminator 1
	movl	-1152(%rbp), %eax
	cmpl	$29, %eax
	jbe	.L47
.LBE3:
	.loc 1 303 27
	movl	-1116(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -920(%rbp)
	.loc 1 304 27
	movl	-1116(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -912(%rbp)
	.loc 1 305 27
	movl	-1116(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -904(%rbp)
	.loc 1 306 31
	movl	-1116(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -896(%rbp)
	.loc 1 307 31
	movl	-1116(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -888(%rbp)
	.loc 1 309 21
	movl	$0, %eax
	call	levels_create@PLT
	movq	%rax, -880(%rbp)
	.loc 1 310 21
	movl	$0, %eax
	call	levels_create@PLT
	movq	%rax, -872(%rbp)
	.loc 1 311 21
	movl	$0, %eax
	call	levels_create@PLT
	movq	%rax, -864(%rbp)
	.loc 1 312 25
	movl	$0, %eax
	call	levels_create@PLT
	movq	%rax, -856(%rbp)
	.loc 1 313 25
	movl	$0, %eax
	call	levels_create@PLT
	movq	%rax, -848(%rbp)
	.loc 1 315 26
	movl	$0, %eax
	call	levels_create@PLT
	movq	%rax, -840(%rbp)
	.loc 1 321 19
	movq	config_struct(%rip), %rax
	movl	116(%rax), %eax
	.loc 1 321 5
	testl	%eax, %eax
	je	.L48
.LBB4:
	.loc 1 324 12
	movl	$0, -1148(%rbp)
	.loc 1 325 49
	movq	config_struct(%rip), %rax
	movl	116(%rax), %eax
	.loc 1 325 73
	imull	$1000, %eax, %eax
	.loc 1 325 12
	addl	$2000, %eax
	movl	%eax, -1112(%rbp)
	.loc 1 326 9
	pxor	%xmm0, %xmm0
	movss	%xmm0, -1144(%rbp)
	.loc 1 327 12
	movl	$0, -1140(%rbp)
	.loc 1 328 56
	movq	config_struct(%rip), %rax
	.loc 1 328 3
	movl	116(%rax), %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 330 38
	movl	-1116(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -832(%rbp)
	.loc 1 332 9
	jmp	.L53
.L56:
.LBB5:
	.loc 1 333 67
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 333 25
	movl	%eax, %edx
	movq	-928(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	input_device_read@PLT
	movq	%rax, -824(%rbp)
	.loc 1 334 7
	cmpq	$0, -824(%rbp)
	je	.L95
	.loc 1 337 36
	movq	-832(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -816(%rbp)
	.loc 1 338 18
	movq	-832(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 338 18 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 338 35 is_stmt 1 discriminator 1
	cmpq	-824(%rbp), %rax
	jnb	.L52
	.loc 1 338 12 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$338, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L52:
	.loc 1 340 4
	movq	-824(%rbp), %rax
	movl	%eax, %ecx
	movq	-816(%rbp), %rdx
	movq	-928(%rbp), %rsi
	movq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	aweighting_filtering@PLT
	.loc 1 341 4
	movq	-824(%rbp), %rax
	movl	%eax, %edx
	movq	-816(%rbp), %rcx
	movq	-816(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_block_square@PLT
	.loc 1 342 4
	movq	-824(%rbp), %rax
	movl	%eax, %ecx
	movq	-816(%rbp), %rdx
	movq	-816(%rbp), %rsi
	movq	-960(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_filtering@PLT
	.loc 1 343 4
	movq	-824(%rbp), %rax
	movl	%eax, %edx
	movq	-832(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 345 8
	movq	-832(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	movl	%eax, %edx
	.loc 1 345 55 discriminator 1
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 1 345 7 discriminator 1
	cmpl	%eax, %edx
	jb	.L53
	.loc 1 346 5
	movq	config_struct(%rip), %rdx
	movq	-832(%rbp), %rcx
	movq	-856(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 347 8
	cmpl	$1999, -1148(%rbp)
	ja	.L54
	.loc 1 348 10
	movl	verbose_flag.1(%rip), %eax
	.loc 1 348 9
	testl	%eax, %eax
	je	.L55
	.loc 1 349 7
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L55
.L54:
	.loc 1 352 33
	movq	-856(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 352 38
	movss	(%rax), %xmm0
	.loc 1 352 18
	movss	-1144(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -1144(%rbp)
	.loc 1 353 15
	addl	$1, -1140(%rbp)
	.loc 1 354 10
	movl	verbose_flag.1(%rip), %eax
	.loc 1 354 9
	testl	%eax, %eax
	je	.L55
	.loc 1 355 44
	movl	-1112(%rbp), %eax
	subl	-1148(%rbp), %eax
	.loc 1 355 7
	movl	%eax, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	movl	%eax, %esi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L55:
	.loc 1 357 34
	movq	-856(%rbp), %rax
	movl	$0, (%rax)
	.loc 1 358 30
	movq	config_struct(%rip), %rax
	movl	72(%rax), %eax
	.loc 1 358 14
	addl	%eax, -1148(%rbp)
.L53:
.LBE5:
	.loc 1 332 19
	movl	-1148(%rbp), %eax
	cmpl	-1112(%rbp), %eax
	jb	.L56
	jmp	.L51
.L95:
.LBB6:
	.loc 1 335 5
	nop
.L51:
.LBE6:
	.loc 1 361 16
	movq	config_struct(%rip), %rax
	.loc 1 361 35
	movl	$0, 116(%rax)
	.loc 1 362 51
	movq	config_struct(%rip), %rax
	movss	120(%rax), %xmm1
	.loc 1 363 16
	movl	-1140(%rbp), %eax
	testq	%rax, %rax
	js	.L57
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L58
.L57:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L58:
	movss	-1144(%rbp), %xmm2
	divss	%xmm0, %xmm2
	.loc 1 362 16
	movq	config_struct(%rip), %rax
	.loc 1 362 75
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	.loc 1 362 36
	movss	%xmm0, 124(%rax)
	.loc 1 365 3
	movq	-832(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 369 7
	movl	verbose_flag.1(%rip), %eax
	.loc 1 369 6
	testl	%eax, %eax
	je	.L48
	.loc 1 370 59
	movq	config_struct(%rip), %rax
	movss	120(%rax), %xmm0
	.loc 1 370 4
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 371 42
	movl	-1140(%rbp), %eax
	testq	%rax, %rax
	js	.L59
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L60
.L59:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L60:
	movss	-1144(%rbp), %xmm1
	divss	%xmm0, %xmm1
	.loc 1 371 4
	pxor	%xmm6, %xmm6
	cvtss2sd	%xmm1, %xmm6
	movq	%xmm6, %rax
	movq	%rax, %xmm0
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 372 53
	movq	config_struct(%rip), %rax
	movss	124(%rax), %xmm0
	.loc 1 372 4
	pxor	%xmm7, %xmm7
	cvtss2sd	%xmm0, %xmm7
	movq	%xmm7, %rax
	movq	%rax, %xmm0
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
.L48:
.LBE4:
	.loc 1 378 2
	movl	$0, %eax
	call	server_init@PLT
	.loc 1 380 19
	movq	config_struct(%rip), %rax
	movzbl	128(%rax), %eax
	.loc 1 380 5
	testb	%al, %al
	je	.L61
	.loc 1 381 3
	movl	$0, %eax
	call	mqtt_begin@PLT
.L61:
	.loc 1 383 6
	cmpq	$0, -1096(%rbp)
	sete	%al
	movb	%al, -1165(%rbp)
	.loc 1 385 2
	movzbl	-1165(%rbp), %eax
	movl	%eax, %edi
	call	output_open@PLT
	.loc 1 387 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 387 5
	testl	%eax, %eax
	je	.L62
	.loc 1 388 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L62:
	.loc 1 390 9
	movq	$0, -1000(%rbp)
	.loc 1 391 9
	movq	$0, -992(%rbp)
	.loc 1 392 9
	movq	$0, -984(%rbp)
	.loc 1 393 9
	movq	$0, -976(%rbp)
	.loc 1 395 6
	movzbl	-1165(%rbp), %eax
	xorl	$1, %eax
	.loc 1 395 5
	testb	%al, %al
	je	.L63
	.loc 1 396 8
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	audit_create@PLT
	movq	%rax, -1000(%rbp)
	.loc 1 397 8
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	audit_create@PLT
	movq	%rax, -992(%rbp)
	.loc 1 398 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	audit_create@PLT
	movq	%rax, -984(%rbp)
	.loc 1 399 8
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	call	audit_create@PLT
	movq	%rax, -976(%rbp)
.L63:
	.loc 1 402 5
	cmpb	$0, -1165(%rbp)
	je	.L64
	.loc 1 403 17
	movq	config_struct(%rip), %rax
	.loc 1 403 40
	movl	$1, 80(%rax)
.L64:
	.loc 1 406 2
	movl	$0, %eax
	call	lae_average_create@PLT
	.loc 1 408 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 408 5
	testl	%eax, %eax
	je	.L65
	.loc 1 409 3
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L65:
	.loc 1 411 11
	movl	$0, -1136(%rbp)
	.loc 1 412 15
	movl	-1156(%rbp), %eax
	imull	$1000, %eax, %eax
	movl	%eax, -1156(%rbp)
	.loc 1 414 2
	movl	$0, %eax
	call	record_start@PLT
	.loc 1 416 8
	jmp	.L66
.L85:
.LBB7:
	.loc 1 417 66
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 417 24
	movl	%eax, %edx
	movq	-928(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	input_device_read@PLT
	movq	%rax, -808(%rbp)
	.loc 1 418 6
	cmpq	$0, -808(%rbp)
	je	.L96
.LBB8:
	.loc 1 421 11
	movl	$0, -1132(%rbp)
	.loc 1 421 3
	jmp	.L69
.L71:
.LBB9:
	.loc 1 422 26
	movl	-1132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$720, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -760(%rbp)
	.loc 1 423 18
	movl	-1132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$720, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 423 18 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 423 35 is_stmt 1 discriminator 1
	cmpq	-808(%rbp), %rax
	jnb	.L70
	.loc 1 423 12 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$423, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L70:
	.loc 1 424 4
	movq	-808(%rbp), %rax
	movl	%eax, %ecx
	movl	-1132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$736, %rax
	movq	(%rax), %rax
	movq	-760(%rbp), %rdx
	movq	-928(%rbp), %rsi
	movq	%rax, %rdi
	call	third_octave_filtering@PLT
	.loc 1 425 4
	movq	-808(%rbp), %rax
	movl	%eax, %edx
	movq	-760(%rbp), %rcx
	movq	-760(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_block_square@PLT
	.loc 1 426 4
	movq	-808(%rbp), %rax
	movl	%eax, %ecx
	movq	-760(%rbp), %rdx
	movq	-760(%rbp), %rsi
	movq	-960(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_filtering@PLT
	.loc 1 427 4
	movq	-808(%rbp), %rax
	movl	%eax, %ecx
	movl	-1132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$720, %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
.LBE9:
	.loc 1 421 23 discriminator 2
	addl	$1, -1132(%rbp)
.L69:
	.loc 1 421 17 discriminator 1
	cmpl	$29, -1132(%rbp)
	jle	.L71
.LBE8:
	.loc 1 430 25
	movq	-920(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -800(%rbp)
	.loc 1 431 25
	movq	-912(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -792(%rbp)
	.loc 1 432 25
	movq	-904(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -784(%rbp)
	.loc 1 433 29
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -776(%rbp)
	.loc 1 434 29
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -768(%rbp)
	.loc 1 435 17
	movq	-920(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 435 17 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 435 34 is_stmt 1 discriminator 1
	cmpq	-808(%rbp), %rax
	jnb	.L72
	.loc 1 435 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$435, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L72:
	.loc 1 436 17
	movq	-912(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 436 17 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 436 34 is_stmt 1 discriminator 1
	cmpq	-808(%rbp), %rax
	jnb	.L73
	.loc 1 436 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$436, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L73:
	.loc 1 437 17
	movq	-904(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 437 17 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 437 34 is_stmt 1 discriminator 1
	cmpq	-808(%rbp), %rax
	jnb	.L74
	.loc 1 437 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$437, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L74:
	.loc 1 438 17
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 438 17 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 438 34 is_stmt 1 discriminator 1
	cmpq	-808(%rbp), %rax
	jnb	.L75
	.loc 1 438 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$438, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L75:
	.loc 1 439 17
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 439 17 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 439 34 is_stmt 1 discriminator 1
	cmpq	-808(%rbp), %rax
	jnb	.L76
	.loc 1 439 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$439, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L76:
	.loc 1 441 3
	movq	-808(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-928(%rbp), %rcx
	movq	-800(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 1 442 3
	movq	-808(%rbp), %rax
	movl	%eax, %ecx
	movq	-792(%rbp), %rdx
	movq	-928(%rbp), %rsi
	movq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	aweighting_filtering@PLT
	.loc 1 443 3
	movq	-808(%rbp), %rax
	movl	%eax, %ecx
	movq	-784(%rbp), %rdx
	movq	-928(%rbp), %rsi
	movq	-936(%rbp), %rax
	movq	%rax, %rdi
	call	cweighting_filtering@PLT
	.loc 1 444 3
	movq	-808(%rbp), %rax
	movl	%eax, %edx
	movq	-920(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 445 3
	movq	-808(%rbp), %rax
	movl	%eax, %edx
	movq	-912(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 446 3
	movq	-808(%rbp), %rax
	movl	%eax, %edx
	movq	-904(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 448 3
	movq	-808(%rbp), %rax
	movl	%eax, %edx
	movq	-776(%rbp), %rcx
	movq	-792(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_block_square@PLT
	.loc 1 449 3
	movq	-808(%rbp), %rax
	movl	%eax, %edx
	movq	-768(%rbp), %rcx
	movq	-792(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_block_square@PLT
	.loc 1 451 3
	movq	-808(%rbp), %rax
	movl	%eax, %ecx
	movq	-776(%rbp), %rdx
	movq	-776(%rbp), %rsi
	movq	-960(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_filtering@PLT
	.loc 1 452 3
	movq	-808(%rbp), %rax
	movl	%eax, %ecx
	movq	-768(%rbp), %rdx
	movq	-768(%rbp), %rsi
	movq	-952(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_filtering@PLT
	.loc 1 453 3
	movq	-808(%rbp), %rax
	movl	%eax, %edx
	movq	-896(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 454 3
	movq	-808(%rbp), %rax
	movl	%eax, %edx
	movq	-888(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 456 7
	movzbl	-1165(%rbp), %eax
	xorl	$1, %eax
	.loc 1 456 6
	testb	%al, %al
	je	.L77
	.loc 1 457 4
	movq	-808(%rbp), %rax
	movl	%eax, %edx
	movq	-928(%rbp), %rcx
	movq	-1000(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	audit_append_samples@PLT
	.loc 1 458 4
	movq	-808(%rbp), %rax
	movl	%eax, %edx
	movq	-792(%rbp), %rcx
	movq	-992(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	audit_append_samples@PLT
	.loc 1 459 4
	movq	-808(%rbp), %rax
	movl	%eax, %edx
	movq	-792(%rbp), %rcx
	movq	-984(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	audit_append_samples@PLT
	.loc 1 460 4
	movq	-808(%rbp), %rax
	movl	%eax, %edx
	movq	-776(%rbp), %rcx
	movq	-976(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	audit_append_samples@PLT
.L77:
	.loc 1 463 7
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	movl	%eax, %edx
	.loc 1 463 48 discriminator 1
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 1 463 6 discriminator 1
	cmpl	%eax, %edx
	jb	.L78
.LBB10:
.LBB11:
	.loc 1 464 12
	movl	$0, -1128(%rbp)
	.loc 1 464 4
	jmp	.L79
.L80:
	.loc 1 465 5
	movq	config_struct(%rip), %rsi
	movl	-1128(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$720, %rax
	movq	(%rax), %rcx
	movl	-1128(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$728, %rax
	movq	(%rax), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 464 24 discriminator 3
	addl	$1, -1128(%rbp)
.L79:
	.loc 1 464 18 discriminator 1
	cmpl	$29, -1128(%rbp)
	jle	.L80
.LBE11:
	.loc 1 467 4
	movq	config_struct(%rip), %rdx
	movq	-920(%rbp), %rcx
	movq	-880(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 468 4
	movq	config_struct(%rip), %rdx
	movq	-912(%rbp), %rcx
	movq	-872(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 469 4
	movq	config_struct(%rip), %rdx
	movq	-904(%rbp), %rcx
	movq	-864(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 470 4
	movq	config_struct(%rip), %rdx
	movq	-896(%rbp), %rcx
	movq	-856(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 471 4
	movq	config_struct(%rip), %rdx
	movq	-888(%rbp), %rcx
	movq	-848(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 473 48
	movq	-856(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 473 34
	movq	-840(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 474 75
	movq	-856(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 474 94
	movq	-856(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 474 111
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 474 81
	salq	$2, %rax
	addq	%rax, %rdx
	.loc 1 474 19
	movq	-840(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 474 39
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 474 56
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 474 25
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 1 474 81
	movss	(%rdx), %xmm0
	.loc 1 474 61
	movss	%xmm0, (%rax)
	.loc 1 475 77
	movq	-856(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 1 475 98
	movq	-856(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 475 115
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 475 85
	salq	$2, %rax
	addq	%rax, %rdx
	.loc 1 475 19
	movq	-840(%rbp), %rax
	movq	32(%rax), %rcx
	.loc 1 475 41
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 475 58
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 475 27
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 1 475 85
	movss	(%rdx), %xmm0
	.loc 1 475 63
	movss	%xmm0, (%rax)
	.loc 1 476 74
	movq	-856(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 476 92
	movq	-856(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 476 109
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 476 79
	salq	$2, %rax
	addq	%rax, %rdx
	.loc 1 476 19
	movq	-840(%rbp), %rax
	movq	40(%rax), %rcx
	.loc 1 476 38
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 476 55
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 476 24
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 1 476 79
	movss	(%rdx), %xmm0
	.loc 1 476 60
	movss	%xmm0, (%rax)
	.loc 1 477 77
	movq	-856(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 477 98
	movq	-856(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 477 115
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 477 85
	salq	$2, %rax
	addq	%rax, %rdx
	.loc 1 477 19
	movq	-840(%rbp), %rax
	movq	24(%rax), %rcx
	.loc 1 477 41
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 477 58
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 477 27
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 1 477 85
	movss	(%rdx), %xmm0
	.loc 1 477 63
	movss	%xmm0, (%rax)
	.loc 1 478 73
	movq	-864(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 478 90
	movq	-864(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 478 107
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 478 81
	salq	$2, %rax
	addq	%rax, %rdx
	.loc 1 478 19
	movq	-840(%rbp), %rax
	movq	16(%rax), %rcx
	.loc 1 478 41
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 478 58
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 478 27
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 1 478 81
	movss	(%rdx), %xmm0
	.loc 1 478 63
	movss	%xmm0, (%rax)
	.loc 1 481 37
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 481 54
	subl	$1, %eax
	.loc 1 481 8
	movl	%eax, -1108(%rbp)
	.loc 1 487 19
	movq	-840(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 487 27
	movl	-1108(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 483 4
	movss	(%rax), %xmm5
	movss	%xmm5, -1176(%rbp)
	.loc 1 486 19
	movq	-840(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 486 27
	movl	-1108(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 483 4
	movss	(%rax), %xmm6
	movss	%xmm6, -1188(%rbp)
	.loc 1 485 19
	movq	-840(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 485 24
	movl	-1108(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 483 4
	movss	(%rax), %xmm7
	movss	%xmm7, -1192(%rbp)
	.loc 1 484 19
	movq	-840(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 484 27
	movl	-1108(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 483 4
	movss	(%rax), %xmm1
	movss	%xmm1, -1196(%rbp)
	.loc 1 483 50
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 483 56
	movl	-1108(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 483 4
	movl	(%rax), %ebx
	.loc 1 483 26
	movl	$0, %edi
	call	time@PLT
	.loc 1 483 4 discriminator 1
	movss	-1176(%rbp), %xmm4
	movss	-1188(%rbp), %xmm3
	movss	-1192(%rbp), %xmm2
	movss	-1196(%rbp), %xmm1
	movd	%ebx, %xmm0
	movq	%rax, %rdi
	call	server_send@PLT
	.loc 1 489 21
	movq	config_struct(%rip), %rax
	movzbl	128(%rax), %eax
	.loc 1 489 7
	testb	%al, %al
	je	.L81
	.loc 1 490 46
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 490 63
	subl	$1, %eax
	.loc 1 490 5
	movl	%eax, %edx
	movq	-840(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mqtt_publish@PLT
.L81:
	.loc 1 491 8
	movl	verbose_flag.1(%rip), %eax
	.loc 1 491 7
	testl	%eax, %eax
	je	.L82
	.loc 1 497 19
	movq	-840(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 497 27
	movl	-1108(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 492 5
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	.loc 1 496 19
	movq	-840(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 496 27
	movl	-1108(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 492 5
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	.loc 1 495 19
	movq	-840(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 495 24
	movl	-1108(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 492 5
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 1 494 19
	movq	-840(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 494 27
	movl	-1108(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 492 5
	cvtss2sd	%xmm0, %xmm0
	.loc 1 493 19
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 493 25
	movl	-1108(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm4
	.loc 1 492 5
	cvtss2sd	%xmm4, %xmm4
	movq	%xmm4, %rax
	movapd	%xmm3, %xmm4
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	movl	$5, %eax
	call	printf@PLT
.L82:
	.loc 1 499 33
	movq	config_struct(%rip), %rax
	movl	72(%rax), %eax
	.loc 1 499 17
	addl	%eax, -1136(%rbp)
.L78:
.LBE10:
	.loc 1 503 20
	movq	-840(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 503 53
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	.loc 1 503 6
	cmpl	%eax, %edx
	jne	.L83
	.loc 1 504 4
	movzbl	-1165(%rbp), %edx
	movq	-840(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	output_record@PLT
.L83:
	.loc 1 507 6
	cmpb	$0, -1165(%rbp)
	je	.L66
	.loc 1 508 17
	movq	record_struct(%rip), %rax
	movq	944(%rax), %rcx
	.loc 1 508 48
	movq	config_struct(%rip), %rax
	movl	56(%rax), %edx
	.loc 1 508 77
	movq	config_struct(%rip), %rax
	movl	92(%rax), %eax
	.loc 1 508 62
	imull	%edx, %eax
	movl	%eax, %eax
	.loc 1 507 18 discriminator 1
	cmpq	%rax, %rcx
	jl	.L66
	.loc 1 510 4
	movl	$0, %eax
	call	record_stop@PLT
	.loc 1 511 8
	movl	$0, %eax
	call	record_start@PLT
	.loc 1 511 6 discriminator 1
	testl	%eax, %eax
	jne	.L66
	.loc 1 512 5
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	movl	$1, %esi
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 513 12
	movl	$1, %eax
	jmp	.L91
.L66:
.LBE7:
	.loc 1 416 9
	movzbl	running(%rip), %eax
	.loc 1 416 17
	testb	%al, %al
	je	.L68
	.loc 1 416 17 is_stmt 0 discriminator 1
	cmpl	$0, -1156(%rbp)
	je	.L85
	.loc 1 416 55 is_stmt 1 discriminator 2
	movl	-1156(%rbp), %eax
	.loc 1 416 39 discriminator 2
	cmpl	%eax, -1136(%rbp)
	jb	.L85
	jmp	.L68
.L96:
.LBB12:
	.loc 1 419 4
	nop
.L68:
.LBE12:
	.loc 1 517 10
	movb	$0, running(%rip)
	.loc 1 518 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 518 5
	testl	%eax, %eax
	je	.L86
	.loc 1 519 3
	movl	-1136(%rbp), %eax
	movl	%eax, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	movl	%eax, %esi
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L86:
	.loc 1 521 2
	movzbl	-1165(%rbp), %edx
	movq	-840(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	output_record@PLT
	.loc 1 523 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 523 5
	testl	%eax, %eax
	je	.L87
	.loc 1 524 3
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L87:
	.loc 1 525 2
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdi
	call	config_save@PLT
	.loc 1 537 2
	movl	$0, %eax
	call	server_end@PLT
	.loc 1 538 19
	movq	config_struct(%rip), %rax
	movzbl	128(%rax), %eax
	.loc 1 538 5
	testb	%al, %al
	je	.L88
	.loc 1 539 3
	movl	$0, %eax
	call	mqtt_end@PLT
.L88:
	.loc 1 540 2
	movl	$0, %eax
	call	input_device_close@PLT
	.loc 1 541 2
	movl	$0, %eax
	call	output_close@PLT
.LBB13:
	.loc 1 543 10
	movl	$0, -1124(%rbp)
	.loc 1 543 2
	jmp	.L89
.L90:
	.loc 1 544 3
	movl	-1124(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$728, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	levels_destroy@PLT
	.loc 1 545 3
	movl	-1124(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$736, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	third_octave_destroy@PLT
	.loc 1 546 3
	movl	-1124(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$720, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 543 22 discriminator 3
	addl	$1, -1124(%rbp)
.L89:
	.loc 1 543 16 discriminator 1
	cmpl	$29, -1124(%rbp)
	jle	.L90
.LBE13:
	.loc 1 549 2
	movq	-840(%rbp), %rax
	movq	%rax, %rdi
	call	levels_destroy@PLT
	.loc 1 550 2
	movq	-864(%rbp), %rax
	movq	%rax, %rdi
	call	levels_destroy@PLT
	.loc 1 551 2
	movq	-872(%rbp), %rax
	movq	%rax, %rdi
	call	levels_destroy@PLT
	.loc 1 552 2
	movq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	levels_destroy@PLT
	.loc 1 553 2
	movq	-848(%rbp), %rax
	movq	%rax, %rdi
	call	levels_destroy@PLT
	.loc 1 554 2
	movq	-856(%rbp), %rax
	movq	%rax, %rdi
	call	levels_destroy@PLT
	.loc 1 555 2
	movq	-960(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_destroy@PLT
	.loc 1 556 2
	movq	-952(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_destroy@PLT
	.loc 1 557 2
	movq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	aweighting_destroy@PLT
	.loc 1 558 2
	movq	-936(%rbp), %rax
	movq	%rax, %rdi
	call	cweighting_destroy@PLT
	.loc 1 559 2
	movl	$0, %eax
	call	lae_average_destroy@PLT
	.loc 1 560 2
	movq	config_struct(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	config_destroy@PLT
	.loc 1 561 2
	movq	-928(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 562 2
	movq	-904(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 563 2
	movq	-912(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 564 2
	movq	-920(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 565 2
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 566 2
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 567 36
	movq	record_struct(%rip), %rax
	.loc 1 567 2
	movq	952(%rax), %rax
	movq	%rax, %rdi
	call	delete_files_storage@PLT
	.loc 1 568 36
	movq	record_struct(%rip), %rax
	.loc 1 568 2
	movq	960(%rax), %rax
	movq	%rax, %rdi
	call	delete_files_storage@PLT
	movl	$0, %eax
.L91:
	.loc 1 569 1
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L92
	call	__stack_chk_fail@PLT
.L92:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE311:
	.size	main, .-main
	.section	.rodata
.LC46:
	.string	"verbose"
.LC47:
	.string	"help"
.LC48:
	.string	"version"
.LC49:
	.string	"device"
.LC50:
	.string	"input"
.LC51:
	.string	"output"
.LC52:
	.string	"output_format"
.LC53:
	.string	"sample_rate"
.LC54:
	.string	"channels"
.LC55:
	.string	"identification"
.LC56:
	.string	"duration"
.LC57:
	.string	"calibrate"
.LC58:
	.string	"config"
.LC59:
	.string	"block_size"
	.section	.data.rel.local,"aw"
	.align 32
	.type	long_options.2, @object
	.size	long_options.2, 480
long_options.2:
	.quad	.LC46
	.long	0
	.zero	4
	.quad	verbose_flag.1
	.long	1
	.zero	4
	.quad	.LC47
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC48
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC49
	.long	1
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC50
	.long	1
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC51
	.long	1
	.zero	4
	.quad	0
	.long	111
	.zero	4
	.quad	.LC52
	.long	1
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC53
	.long	1
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC54
	.long	1
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC55
	.long	1
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC56
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC57
	.long	2
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC58
	.long	1
	.zero	4
	.quad	0
	.long	103
	.zero	4
	.quad	.LC59
	.long	1
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.local	verbose_flag.1
	.comm	verbose_flag.1,4,4
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 10 "/usr/include/glib-2.0/glib/gtypes.h"
	.file 11 "/usr/include/glib-2.0/glib/garray.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 13 "/usr/include/signal.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 15 "src/config.h"
	.file 16 "src/process.h"
	.file 17 "src/filter.h"
	.file 18 "/usr/local/include/wave.h"
	.file 19 "src/in_out.h"
	.file 20 "/usr/local/include/ogg/config_types.h"
	.file 21 "/usr/local/include/ogg/ogg.h"
	.file 22 "/usr/local/include/vorbis/codec.h"
	.file 23 "src/storage.h"
	.file 24 "src/record.h"
	.file 25 "src/mqtt.h"
	.file 26 "src/server.h"
	.file 27 "/usr/include/time.h"
	.file 28 "/usr/include/string.h"
	.file 29 "src/sbuffer.h"
	.file 30 "/usr/include/assert.h"
	.file 31 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1b95
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1e
	.long	.LASF362
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0xd6
	.byte	0x1b
	.long	0x3a
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1f
	.byte	0x8
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF9
	.byte	0x3
	.byte	0x28
	.byte	0x1c
	.long	0x51
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x41
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x2c
	.byte	0x19
	.long	0x91
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
	.byte	0x2d
	.byte	0x1b
	.long	0x3a
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x91
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x91
	.uleb128 0x3
	.long	.LASF16
	.byte	0x3
	.byte	0xa0
	.byte	0x12
	.long	0x91
	.uleb128 0x4
	.long	0xd2
	.uleb128 0x16
	.long	0xc8
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF17
	.uleb128 0x16
	.long	0xd2
	.uleb128 0x12
	.long	0xd2
	.long	0xee
	.uleb128 0x13
	.long	0x3a
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	.LASF55
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x275
	.uleb128 0x1
	.long	.LASF18
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x72
	.byte	0
	.uleb128 0x1
	.long	.LASF19
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xc8
	.byte	0x8
	.uleb128 0x1
	.long	.LASF20
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xc8
	.byte	0x10
	.uleb128 0x1
	.long	.LASF21
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xc8
	.byte	0x18
	.uleb128 0x1
	.long	.LASF22
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xc8
	.byte	0x20
	.uleb128 0x1
	.long	.LASF23
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xc8
	.byte	0x28
	.uleb128 0x1
	.long	.LASF24
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xc8
	.byte	0x30
	.uleb128 0x1
	.long	.LASF25
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xc8
	.byte	0x38
	.uleb128 0x1
	.long	.LASF26
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xc8
	.byte	0x40
	.uleb128 0x1
	.long	.LASF27
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xc8
	.byte	0x48
	.uleb128 0x1
	.long	.LASF28
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xc8
	.byte	0x50
	.uleb128 0x1
	.long	.LASF29
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xc8
	.byte	0x58
	.uleb128 0x1
	.long	.LASF30
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x28e
	.byte	0x60
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x293
	.byte	0x68
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x72
	.byte	0x70
	.uleb128 0x1
	.long	.LASF33
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x72
	.byte	0x74
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0xa4
	.byte	0x78
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x51
	.byte	0x80
	.uleb128 0x1
	.long	.LASF36
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x58
	.byte	0x82
	.uleb128 0x1
	.long	.LASF37
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x298
	.byte	0x83
	.uleb128 0x1
	.long	.LASF38
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x2a8
	.byte	0x88
	.uleb128 0x1
	.long	.LASF39
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0xb0
	.byte	0x90
	.uleb128 0x1
	.long	.LASF40
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x2b2
	.byte	0x98
	.uleb128 0x1
	.long	.LASF41
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x2bc
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF42
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x293
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF43
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x48
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF44
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF45
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x72
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF46
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x2c1
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF47
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xee
	.uleb128 0x21
	.long	.LASF363
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x18
	.long	.LASF48
	.uleb128 0x4
	.long	0x289
	.uleb128 0x4
	.long	0xee
	.uleb128 0x12
	.long	0xd2
	.long	0x2a8
	.uleb128 0x13
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x281
	.uleb128 0x18
	.long	.LASF49
	.uleb128 0x4
	.long	0x2ad
	.uleb128 0x18
	.long	.LASF50
	.uleb128 0x4
	.long	0x2b7
	.uleb128 0x12
	.long	0xd2
	.long	0x2d1
	.uleb128 0x13
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0xd9
	.uleb128 0x1c
	.long	0x2d1
	.uleb128 0x4
	.long	0x275
	.uleb128 0x1c
	.long	0x2db
	.uleb128 0x17
	.long	.LASF52
	.byte	0x7
	.byte	0x97
	.byte	0xe
	.long	0x2db
	.uleb128 0x3
	.long	.LASF51
	.byte	0x6
	.byte	0xa
	.byte	0x12
	.long	0xbc
	.uleb128 0x17
	.long	.LASF53
	.byte	0x8
	.byte	0x24
	.byte	0xe
	.long	0xc8
	.uleb128 0x17
	.long	.LASF54
	.byte	0x8
	.byte	0x3b
	.byte	0xc
	.long	0x72
	.uleb128 0xe
	.long	.LASF56
	.byte	0x20
	.byte	0x9
	.byte	0x32
	.byte	0x8
	.long	0x357
	.uleb128 0x1
	.long	.LASF57
	.byte	0x9
	.byte	0x34
	.byte	0xf
	.long	0x2d1
	.byte	0
	.uleb128 0x1
	.long	.LASF58
	.byte	0x9
	.byte	0x37
	.byte	0x7
	.long	0x72
	.byte	0x8
	.uleb128 0x1
	.long	.LASF59
	.byte	0x9
	.byte	0x38
	.byte	0x8
	.long	0x35c
	.byte	0x10
	.uleb128 0x6
	.string	"val"
	.byte	0x9
	.byte	0x39
	.byte	0x7
	.long	0x72
	.byte	0x18
	.byte	0
	.uleb128 0x16
	.long	0x315
	.uleb128 0x4
	.long	0x72
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF60
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.long	.LASF61
	.uleb128 0x3
	.long	.LASF62
	.byte	0xa
	.byte	0x34
	.byte	0xe
	.long	0xd2
	.uleb128 0x3
	.long	.LASF63
	.byte	0xa
	.byte	0x3d
	.byte	0x16
	.long	0x41
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.long	.LASF64
	.uleb128 0x16
	.long	0x387
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.long	.LASF65
	.uleb128 0x4
	.long	0x39f
	.uleb128 0x22
	.uleb128 0x3
	.long	.LASF66
	.byte	0xb
	.byte	0x27
	.byte	0x18
	.long	0x3ac
	.uleb128 0xe
	.long	.LASF67
	.byte	0x10
	.byte	0xb
	.byte	0x2b
	.byte	0x8
	.long	0x3d4
	.uleb128 0x1
	.long	.LASF68
	.byte	0xb
	.byte	0x2d
	.byte	0xa
	.long	0x3d4
	.byte	0
	.uleb128 0x6
	.string	"len"
	.byte	0xb
	.byte	0x2e
	.byte	0x9
	.long	0x37b
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x36f
	.uleb128 0x3
	.long	.LASF69
	.byte	0xc
	.byte	0x1b
	.byte	0x13
	.long	0x85
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF70
	.uleb128 0x3
	.long	.LASF71
	.byte	0xd
	.byte	0x48
	.byte	0x10
	.long	0x3f8
	.uleb128 0x4
	.long	0x3fd
	.uleb128 0x23
	.long	0x408
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x4
	.long	0x3a0
	.uleb128 0x3
	.long	.LASF72
	.byte	0xe
	.byte	0x19
	.byte	0x14
	.long	0x66
	.uleb128 0x3
	.long	.LASF73
	.byte	0xe
	.byte	0x1a
	.byte	0x14
	.long	0x79
	.uleb128 0x3
	.long	.LASF74
	.byte	0xe
	.byte	0x1b
	.byte	0x14
	.long	0x98
	.uleb128 0xe
	.long	.LASF75
	.byte	0xb0
	.byte	0xf
	.byte	0x53
	.byte	0x8
	.long	0x5d2
	.uleb128 0x1
	.long	.LASF76
	.byte	0xf
	.byte	0x55
	.byte	0xe
	.long	0x2d1
	.byte	0
	.uleb128 0x1
	.long	.LASF77
	.byte	0xf
	.byte	0x56
	.byte	0xe
	.long	0x2d1
	.byte	0x8
	.uleb128 0x1
	.long	.LASF78
	.byte	0xf
	.byte	0x57
	.byte	0xe
	.long	0x2d1
	.byte	0x10
	.uleb128 0x1
	.long	.LASF79
	.byte	0xf
	.byte	0x58
	.byte	0xe
	.long	0x2d1
	.byte	0x18
	.uleb128 0x1
	.long	.LASF80
	.byte	0xf
	.byte	0x59
	.byte	0xe
	.long	0x2d1
	.byte	0x20
	.uleb128 0x1
	.long	.LASF81
	.byte	0xf
	.byte	0x5a
	.byte	0xe
	.long	0x2d1
	.byte	0x28
	.uleb128 0x1
	.long	.LASF82
	.byte	0xf
	.byte	0x5b
	.byte	0xe
	.long	0x2d1
	.byte	0x30
	.uleb128 0x1
	.long	.LASF83
	.byte	0xf
	.byte	0x5d
	.byte	0xb
	.long	0x41
	.byte	0x38
	.uleb128 0x1
	.long	.LASF84
	.byte	0xf
	.byte	0x5e
	.byte	0xb
	.long	0x41
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF85
	.byte	0xf
	.byte	0x5f
	.byte	0xb
	.long	0x41
	.byte	0x40
	.uleb128 0x1
	.long	.LASF86
	.byte	0xf
	.byte	0x60
	.byte	0xb
	.long	0x41
	.byte	0x44
	.uleb128 0x1
	.long	.LASF87
	.byte	0xf
	.byte	0x61
	.byte	0xb
	.long	0x41
	.byte	0x48
	.uleb128 0x1
	.long	.LASF88
	.byte	0xf
	.byte	0x62
	.byte	0xb
	.long	0x41
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF89
	.byte	0xf
	.byte	0x63
	.byte	0xb
	.long	0x41
	.byte	0x50
	.uleb128 0x1
	.long	.LASF90
	.byte	0xf
	.byte	0x64
	.byte	0xb
	.long	0x41
	.byte	0x54
	.uleb128 0x1
	.long	.LASF91
	.byte	0xf
	.byte	0x65
	.byte	0xb
	.long	0x41
	.byte	0x58
	.uleb128 0x1
	.long	.LASF92
	.byte	0xf
	.byte	0x66
	.byte	0xb
	.long	0x41
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF93
	.byte	0xf
	.byte	0x67
	.byte	0x8
	.long	0x5d2
	.byte	0x60
	.uleb128 0x1
	.long	.LASF94
	.byte	0xf
	.byte	0x68
	.byte	0xb
	.long	0x41
	.byte	0x64
	.uleb128 0x1
	.long	.LASF95
	.byte	0xf
	.byte	0x69
	.byte	0xb
	.long	0x41
	.byte	0x68
	.uleb128 0x1
	.long	.LASF96
	.byte	0xf
	.byte	0x6a
	.byte	0x8
	.long	0x5d2
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF97
	.byte	0xf
	.byte	0x6b
	.byte	0xb
	.long	0x41
	.byte	0x70
	.uleb128 0x1
	.long	.LASF98
	.byte	0xf
	.byte	0x6d
	.byte	0xb
	.long	0x41
	.byte	0x74
	.uleb128 0x1
	.long	.LASF99
	.byte	0xf
	.byte	0x6e
	.byte	0x8
	.long	0x387
	.byte	0x78
	.uleb128 0x1
	.long	.LASF100
	.byte	0xf
	.byte	0x6f
	.byte	0x8
	.long	0x387
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF101
	.byte	0xf
	.byte	0x71
	.byte	0x6
	.long	0x5d2
	.byte	0x80
	.uleb128 0x1
	.long	.LASF102
	.byte	0xf
	.byte	0x72
	.byte	0xe
	.long	0x2d1
	.byte	0x88
	.uleb128 0x1
	.long	.LASF103
	.byte	0xf
	.byte	0x73
	.byte	0xe
	.long	0x2d1
	.byte	0x90
	.uleb128 0x1
	.long	.LASF104
	.byte	0xf
	.byte	0x74
	.byte	0x6
	.long	0x72
	.byte	0x98
	.uleb128 0x1
	.long	.LASF105
	.byte	0xf
	.byte	0x75
	.byte	0xe
	.long	0x2d1
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF106
	.byte	0xf
	.byte	0x77
	.byte	0xe
	.long	0x2d1
	.byte	0xa8
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF107
	.uleb128 0x17
	.long	.LASF108
	.byte	0xf
	.byte	0x7f
	.byte	0x17
	.long	0x5e5
	.uleb128 0x4
	.long	0x431
	.uleb128 0xc
	.byte	0x40
	.byte	0x10
	.byte	0x32
	.long	0x668
	.uleb128 0x1
	.long	.LASF109
	.byte	0x10
	.byte	0x33
	.byte	0xb
	.long	0x41
	.byte	0
	.uleb128 0x1
	.long	.LASF110
	.byte	0x10
	.byte	0x34
	.byte	0x9
	.long	0x668
	.byte	0x8
	.uleb128 0x1
	.long	.LASF111
	.byte	0x10
	.byte	0x35
	.byte	0x9
	.long	0x668
	.byte	0x10
	.uleb128 0x1
	.long	.LASF112
	.byte	0x10
	.byte	0x36
	.byte	0x9
	.long	0x668
	.byte	0x18
	.uleb128 0x1
	.long	.LASF113
	.byte	0x10
	.byte	0x37
	.byte	0x9
	.long	0x668
	.byte	0x20
	.uleb128 0x6
	.string	"LAE"
	.byte	0x10
	.byte	0x38
	.byte	0x9
	.long	0x668
	.byte	0x28
	.uleb128 0x1
	.long	.LASF114
	.byte	0x10
	.byte	0x39
	.byte	0x9
	.long	0x393
	.byte	0x30
	.uleb128 0x1
	.long	.LASF115
	.byte	0x10
	.byte	0x3a
	.byte	0xb
	.long	0x41
	.byte	0x38
	.uleb128 0x1
	.long	.LASF116
	.byte	0x10
	.byte	0x3b
	.byte	0x6
	.long	0x72
	.byte	0x3c
	.byte	0
	.uleb128 0x4
	.long	0x387
	.uleb128 0x3
	.long	.LASF117
	.byte	0x10
	.byte	0x3c
	.byte	0x3
	.long	0x5ea
	.uleb128 0xc
	.byte	0x4
	.byte	0x11
	.byte	0x24
	.long	0x68f
	.uleb128 0x1
	.long	.LASF118
	.byte	0x11
	.byte	0x25
	.byte	0x8
	.long	0x387
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF119
	.byte	0x11
	.byte	0x26
	.byte	0x3
	.long	0x679
	.uleb128 0xc
	.byte	0x18
	.byte	0x11
	.byte	0x2f
	.long	0x6c7
	.uleb128 0x6
	.string	"u"
	.byte	0x11
	.byte	0x30
	.byte	0x9
	.long	0x668
	.byte	0
	.uleb128 0x6
	.string	"N"
	.byte	0x11
	.byte	0x33
	.byte	0x6
	.long	0x72
	.byte	0x8
	.uleb128 0x1
	.long	.LASF120
	.byte	0x11
	.byte	0x34
	.byte	0xf
	.long	0x6c7
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	0x38e
	.uleb128 0x3
	.long	.LASF121
	.byte	0x11
	.byte	0x35
	.byte	0x3
	.long	0x69b
	.uleb128 0xc
	.byte	0x18
	.byte	0x11
	.byte	0x40
	.long	0x704
	.uleb128 0x6
	.string	"u"
	.byte	0x11
	.byte	0x41
	.byte	0x9
	.long	0x668
	.byte	0
	.uleb128 0x6
	.string	"N"
	.byte	0x11
	.byte	0x44
	.byte	0x6
	.long	0x72
	.byte	0x8
	.uleb128 0x1
	.long	.LASF120
	.byte	0x11
	.byte	0x45
	.byte	0xf
	.long	0x6c7
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF122
	.byte	0x11
	.byte	0x46
	.byte	0x3
	.long	0x6d8
	.uleb128 0xc
	.byte	0x18
	.byte	0x11
	.byte	0x4c
	.long	0x73c
	.uleb128 0x6
	.string	"u"
	.byte	0x11
	.byte	0x4d
	.byte	0xc
	.long	0x668
	.byte	0
	.uleb128 0x6
	.string	"N"
	.byte	0x11
	.byte	0x4e
	.byte	0x9
	.long	0x72
	.byte	0x8
	.uleb128 0x1
	.long	.LASF120
	.byte	0x11
	.byte	0x4f
	.byte	0x12
	.long	0x6c7
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF123
	.byte	0x11
	.byte	0x50
	.byte	0x3
	.long	0x710
	.uleb128 0xc
	.byte	0x18
	.byte	0x11
	.byte	0x52
	.long	0x778
	.uleb128 0x1
	.long	.LASF124
	.byte	0x11
	.byte	0x53
	.byte	0x15
	.long	0x778
	.byte	0
	.uleb128 0x1
	.long	.LASF125
	.byte	0x11
	.byte	0x54
	.byte	0xa
	.long	0x77d
	.byte	0x8
	.uleb128 0x1
	.long	.LASF126
	.byte	0x11
	.byte	0x55
	.byte	0x12
	.long	0x787
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	0x73c
	.uleb128 0x4
	.long	0x66d
	.uleb128 0x18
	.long	.LASF127
	.uleb128 0x4
	.long	0x782
	.uleb128 0x3
	.long	.LASF128
	.byte	0x11
	.byte	0x56
	.byte	0x2
	.long	0x748
	.uleb128 0x4
	.long	0xc8
	.uleb128 0xc
	.byte	0x8
	.byte	0x12
	.byte	0x1e
	.long	0x7c0
	.uleb128 0x1
	.long	.LASF129
	.byte	0x12
	.byte	0x1f
	.byte	0x7
	.long	0xde
	.byte	0
	.uleb128 0x1
	.long	.LASF130
	.byte	0x12
	.byte	0x20
	.byte	0xb
	.long	0x419
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF131
	.byte	0x12
	.byte	0x21
	.byte	0x3
	.long	0x79d
	.uleb128 0xc
	.byte	0xc
	.byte	0x12
	.byte	0x23
	.long	0x7ef
	.uleb128 0x1
	.long	.LASF132
	.byte	0x12
	.byte	0x24
	.byte	0xe
	.long	0x7c0
	.byte	0
	.uleb128 0x1
	.long	.LASF133
	.byte	0x12
	.byte	0x25
	.byte	0x7
	.long	0xde
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF134
	.byte	0x12
	.byte	0x26
	.byte	0x3
	.long	0x7cc
	.uleb128 0xc
	.byte	0x18
	.byte	0x12
	.byte	0x28
	.long	0x85f
	.uleb128 0x1
	.long	.LASF132
	.byte	0x12
	.byte	0x29
	.byte	0xe
	.long	0x7c0
	.byte	0
	.uleb128 0x1
	.long	.LASF135
	.byte	0x12
	.byte	0x2a
	.byte	0xb
	.long	0x40d
	.byte	0x8
	.uleb128 0x1
	.long	.LASF136
	.byte	0x12
	.byte	0x2b
	.byte	0xb
	.long	0x40d
	.byte	0xa
	.uleb128 0x1
	.long	.LASF137
	.byte	0x12
	.byte	0x2c
	.byte	0xb
	.long	0x419
	.byte	0xc
	.uleb128 0x1
	.long	.LASF138
	.byte	0x12
	.byte	0x2d
	.byte	0xb
	.long	0x419
	.byte	0x10
	.uleb128 0x1
	.long	.LASF139
	.byte	0x12
	.byte	0x2e
	.byte	0xb
	.long	0x40d
	.byte	0x14
	.uleb128 0x1
	.long	.LASF140
	.byte	0x12
	.byte	0x2f
	.byte	0xb
	.long	0x40d
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.long	.LASF141
	.byte	0x12
	.byte	0x30
	.byte	0x3
	.long	0x7fb
	.uleb128 0xc
	.byte	0x8
	.byte	0x12
	.byte	0x32
	.long	0x881
	.uleb128 0x1
	.long	.LASF132
	.byte	0x12
	.byte	0x33
	.byte	0xe
	.long	0x7c0
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF142
	.byte	0x12
	.byte	0x34
	.byte	0x3
	.long	0x86b
	.uleb128 0xe
	.long	.LASF143
	.byte	0x50
	.byte	0x12
	.byte	0x36
	.byte	0x10
	.long	0x8f5
	.uleb128 0x6
	.string	"fd"
	.byte	0x12
	.byte	0x37
	.byte	0x8
	.long	0x2db
	.byte	0
	.uleb128 0x1
	.long	.LASF144
	.byte	0x12
	.byte	0x38
	.byte	0xc
	.long	0x7ef
	.byte	0x8
	.uleb128 0x1
	.long	.LASF145
	.byte	0x12
	.byte	0x39
	.byte	0xe
	.long	0x85f
	.byte	0x14
	.uleb128 0x1
	.long	.LASF146
	.byte	0x12
	.byte	0x3a
	.byte	0xf
	.long	0x881
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF147
	.byte	0x12
	.byte	0x3b
	.byte	0x7
	.long	0x91
	.byte	0x38
	.uleb128 0x1
	.long	.LASF148
	.byte	0x12
	.byte	0x3c
	.byte	0xa
	.long	0x408
	.byte	0x40
	.uleb128 0x1
	.long	.LASF149
	.byte	0x12
	.byte	0x3d
	.byte	0x9
	.long	0x2e
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.long	.LASF150
	.byte	0x12
	.byte	0x3e
	.byte	0x3
	.long	0x88d
	.uleb128 0x4
	.long	0x8f5
	.uleb128 0xe
	.long	.LASF151
	.byte	0x10
	.byte	0x13
	.byte	0x32
	.byte	0x10
	.long	0x92d
	.uleb128 0x6
	.string	"id"
	.byte	0x13
	.byte	0x33
	.byte	0x8
	.long	0xc8
	.byte	0
	.uleb128 0x1
	.long	.LASF143
	.byte	0x13
	.byte	0x34
	.byte	0x8
	.long	0x901
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF152
	.byte	0x13
	.byte	0x35
	.byte	0x3
	.long	0x906
	.uleb128 0x3
	.long	.LASF153
	.byte	0x14
	.byte	0x17
	.byte	0x11
	.long	0x3d9
	.uleb128 0xc
	.byte	0x28
	.byte	0x15
	.byte	0x1f
	.long	0x98f
	.uleb128 0x1
	.long	.LASF154
	.byte	0x15
	.byte	0x20
	.byte	0x8
	.long	0x91
	.byte	0
	.uleb128 0x1
	.long	.LASF155
	.byte	0x15
	.byte	0x21
	.byte	0x7
	.long	0x72
	.byte	0x8
	.uleb128 0x1
	.long	.LASF156
	.byte	0x15
	.byte	0x23
	.byte	0x12
	.long	0x98f
	.byte	0x10
	.uleb128 0x6
	.string	"ptr"
	.byte	0x15
	.byte	0x24
	.byte	0x12
	.long	0x98f
	.byte	0x18
	.uleb128 0x1
	.long	.LASF157
	.byte	0x15
	.byte	0x25
	.byte	0x8
	.long	0x91
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	0x4a
	.uleb128 0x3
	.long	.LASF158
	.byte	0x15
	.byte	0x26
	.byte	0x3
	.long	0x945
	.uleb128 0xc
	.byte	0x20
	.byte	0x15
	.byte	0x2a
	.long	0x9dd
	.uleb128 0x1
	.long	.LASF132
	.byte	0x15
	.byte	0x2b
	.byte	0x12
	.long	0x98f
	.byte	0
	.uleb128 0x1
	.long	.LASF159
	.byte	0x15
	.byte	0x2c
	.byte	0x8
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF160
	.byte	0x15
	.byte	0x2d
	.byte	0x12
	.long	0x98f
	.byte	0x10
	.uleb128 0x1
	.long	.LASF161
	.byte	0x15
	.byte	0x2e
	.byte	0x8
	.long	0x91
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.long	.LASF162
	.byte	0x15
	.byte	0x2f
	.byte	0x3
	.long	0x9a0
	.uleb128 0x1d
	.value	0x198
	.byte	0x15
	.byte	0x34
	.long	0xae4
	.uleb128 0x1
	.long	.LASF163
	.byte	0x15
	.byte	0x35
	.byte	0x12
	.long	0x98f
	.byte	0
	.uleb128 0x1
	.long	.LASF164
	.byte	0x15
	.byte	0x36
	.byte	0x8
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF165
	.byte	0x15
	.byte	0x37
	.byte	0x8
	.long	0x91
	.byte	0x10
	.uleb128 0x1
	.long	.LASF166
	.byte	0x15
	.byte	0x38
	.byte	0x8
	.long	0x91
	.byte	0x18
	.uleb128 0x1
	.long	.LASF167
	.byte	0x15
	.byte	0x3b
	.byte	0x8
	.long	0x35c
	.byte	0x20
	.uleb128 0x1
	.long	.LASF168
	.byte	0x15
	.byte	0x3c
	.byte	0x10
	.long	0xae4
	.byte	0x28
	.uleb128 0x1
	.long	.LASF169
	.byte	0x15
	.byte	0x3f
	.byte	0x8
	.long	0x91
	.byte	0x30
	.uleb128 0x1
	.long	.LASF170
	.byte	0x15
	.byte	0x40
	.byte	0x8
	.long	0x91
	.byte	0x38
	.uleb128 0x1
	.long	.LASF171
	.byte	0x15
	.byte	0x41
	.byte	0x8
	.long	0x91
	.byte	0x40
	.uleb128 0x1
	.long	.LASF172
	.byte	0x15
	.byte	0x42
	.byte	0x8
	.long	0x91
	.byte	0x48
	.uleb128 0x1
	.long	.LASF132
	.byte	0x15
	.byte	0x44
	.byte	0x11
	.long	0xae9
	.byte	0x50
	.uleb128 0xd
	.long	.LASF173
	.byte	0x15
	.byte	0x45
	.byte	0x7
	.long	0x72
	.value	0x16c
	.uleb128 0xd
	.long	.LASF174
	.byte	0x15
	.byte	0x47
	.byte	0x7
	.long	0x72
	.value	0x170
	.uleb128 0xd
	.long	.LASF175
	.byte	0x15
	.byte	0x49
	.byte	0x7
	.long	0x72
	.value	0x174
	.uleb128 0xd
	.long	.LASF176
	.byte	0x15
	.byte	0x4b
	.byte	0x8
	.long	0x91
	.value	0x178
	.uleb128 0xd
	.long	.LASF177
	.byte	0x15
	.byte	0x4c
	.byte	0x8
	.long	0x91
	.value	0x180
	.uleb128 0xd
	.long	.LASF178
	.byte	0x15
	.byte	0x4d
	.byte	0xf
	.long	0x939
	.value	0x188
	.uleb128 0xd
	.long	.LASF179
	.byte	0x15
	.byte	0x52
	.byte	0xf
	.long	0x939
	.value	0x190
	.byte	0
	.uleb128 0x4
	.long	0x939
	.uleb128 0x12
	.long	0x4a
	.long	0xafa
	.uleb128 0x24
	.long	0x3a
	.value	0x119
	.byte	0
	.uleb128 0x3
	.long	.LASF180
	.byte	0x15
	.byte	0x54
	.byte	0x3
	.long	0x9e9
	.uleb128 0xc
	.byte	0x30
	.byte	0x15
	.byte	0x59
	.long	0xb5d
	.uleb128 0x1
	.long	.LASF181
	.byte	0x15
	.byte	0x5a
	.byte	0x12
	.long	0x98f
	.byte	0
	.uleb128 0x1
	.long	.LASF182
	.byte	0x15
	.byte	0x5b
	.byte	0x8
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF175
	.byte	0x15
	.byte	0x5c
	.byte	0x8
	.long	0x91
	.byte	0x10
	.uleb128 0x1
	.long	.LASF174
	.byte	0x15
	.byte	0x5d
	.byte	0x8
	.long	0x91
	.byte	0x18
	.uleb128 0x1
	.long	.LASF179
	.byte	0x15
	.byte	0x5f
	.byte	0xf
	.long	0x939
	.byte	0x20
	.uleb128 0x1
	.long	.LASF178
	.byte	0x15
	.byte	0x61
	.byte	0xf
	.long	0x939
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.long	.LASF183
	.byte	0x15
	.byte	0x66
	.byte	0x3
	.long	0xb06
	.uleb128 0xe
	.long	.LASF184
	.byte	0x38
	.byte	0x16
	.byte	0x1b
	.byte	0x10
	.long	0xbdf
	.uleb128 0x1
	.long	.LASF185
	.byte	0x16
	.byte	0x1c
	.byte	0x7
	.long	0x72
	.byte	0
	.uleb128 0x1
	.long	.LASF84
	.byte	0x16
	.byte	0x1d
	.byte	0x7
	.long	0x72
	.byte	0x4
	.uleb128 0x1
	.long	.LASF186
	.byte	0x16
	.byte	0x1e
	.byte	0x8
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF187
	.byte	0x16
	.byte	0x2f
	.byte	0x8
	.long	0x91
	.byte	0x10
	.uleb128 0x1
	.long	.LASF188
	.byte	0x16
	.byte	0x30
	.byte	0x8
	.long	0x91
	.byte	0x18
	.uleb128 0x1
	.long	.LASF189
	.byte	0x16
	.byte	0x31
	.byte	0x8
	.long	0x91
	.byte	0x20
	.uleb128 0x1
	.long	.LASF190
	.byte	0x16
	.byte	0x32
	.byte	0x8
	.long	0x91
	.byte	0x28
	.uleb128 0x1
	.long	.LASF191
	.byte	0x16
	.byte	0x34
	.byte	0x9
	.long	0x48
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.long	.LASF184
	.byte	0x16
	.byte	0x35
	.byte	0x3
	.long	0xb69
	.uleb128 0xe
	.long	.LASF192
	.byte	0x90
	.byte	0x16
	.byte	0x3a
	.byte	0x10
	.long	0xcf8
	.uleb128 0x1
	.long	.LASF193
	.byte	0x16
	.byte	0x3b
	.byte	0x7
	.long	0x72
	.byte	0
	.uleb128 0x6
	.string	"vi"
	.byte	0x16
	.byte	0x3c
	.byte	0x10
	.long	0xcf8
	.byte	0x8
	.uleb128 0x6
	.string	"pcm"
	.byte	0x16
	.byte	0x3e
	.byte	0xb
	.long	0xcfd
	.byte	0x10
	.uleb128 0x1
	.long	.LASF194
	.byte	0x16
	.byte	0x3f
	.byte	0xb
	.long	0xcfd
	.byte	0x18
	.uleb128 0x1
	.long	.LASF195
	.byte	0x16
	.byte	0x40
	.byte	0x7
	.long	0x72
	.byte	0x20
	.uleb128 0x1
	.long	.LASF196
	.byte	0x16
	.byte	0x41
	.byte	0x7
	.long	0x72
	.byte	0x24
	.uleb128 0x1
	.long	.LASF197
	.byte	0x16
	.byte	0x42
	.byte	0x7
	.long	0x72
	.byte	0x28
	.uleb128 0x1
	.long	.LASF198
	.byte	0x16
	.byte	0x44
	.byte	0x7
	.long	0x72
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF199
	.byte	0x16
	.byte	0x45
	.byte	0x7
	.long	0x72
	.byte	0x30
	.uleb128 0x6
	.string	"lW"
	.byte	0x16
	.byte	0x47
	.byte	0x8
	.long	0x91
	.byte	0x38
	.uleb128 0x6
	.string	"W"
	.byte	0x16
	.byte	0x48
	.byte	0x8
	.long	0x91
	.byte	0x40
	.uleb128 0x6
	.string	"nW"
	.byte	0x16
	.byte	0x49
	.byte	0x8
	.long	0x91
	.byte	0x48
	.uleb128 0x1
	.long	.LASF200
	.byte	0x16
	.byte	0x4a
	.byte	0x8
	.long	0x91
	.byte	0x50
	.uleb128 0x1
	.long	.LASF179
	.byte	0x16
	.byte	0x4c
	.byte	0xf
	.long	0x939
	.byte	0x58
	.uleb128 0x1
	.long	.LASF201
	.byte	0x16
	.byte	0x4d
	.byte	0xf
	.long	0x939
	.byte	0x60
	.uleb128 0x1
	.long	.LASF202
	.byte	0x16
	.byte	0x4f
	.byte	0xf
	.long	0x939
	.byte	0x68
	.uleb128 0x1
	.long	.LASF203
	.byte	0x16
	.byte	0x50
	.byte	0xf
	.long	0x939
	.byte	0x70
	.uleb128 0x1
	.long	.LASF204
	.byte	0x16
	.byte	0x51
	.byte	0xf
	.long	0x939
	.byte	0x78
	.uleb128 0x1
	.long	.LASF205
	.byte	0x16
	.byte	0x52
	.byte	0xf
	.long	0x939
	.byte	0x80
	.uleb128 0x1
	.long	.LASF206
	.byte	0x16
	.byte	0x54
	.byte	0x9
	.long	0x48
	.byte	0x88
	.byte	0
	.uleb128 0x4
	.long	0xbdf
	.uleb128 0x4
	.long	0x668
	.uleb128 0x3
	.long	.LASF192
	.byte	0x16
	.byte	0x55
	.byte	0x3
	.long	0xbeb
	.uleb128 0xe
	.long	.LASF207
	.byte	0xc0
	.byte	0x16
	.byte	0x57
	.byte	0x10
	.long	0xe28
	.uleb128 0x6
	.string	"pcm"
	.byte	0x16
	.byte	0x59
	.byte	0xb
	.long	0xcfd
	.byte	0
	.uleb128 0x6
	.string	"opb"
	.byte	0x16
	.byte	0x5a
	.byte	0x12
	.long	0x994
	.byte	0x8
	.uleb128 0x6
	.string	"lW"
	.byte	0x16
	.byte	0x5c
	.byte	0x8
	.long	0x91
	.byte	0x30
	.uleb128 0x6
	.string	"W"
	.byte	0x16
	.byte	0x5d
	.byte	0x8
	.long	0x91
	.byte	0x38
	.uleb128 0x6
	.string	"nW"
	.byte	0x16
	.byte	0x5e
	.byte	0x8
	.long	0x91
	.byte	0x40
	.uleb128 0x1
	.long	.LASF208
	.byte	0x16
	.byte	0x5f
	.byte	0x7
	.long	0x72
	.byte	0x48
	.uleb128 0x1
	.long	.LASF209
	.byte	0x16
	.byte	0x60
	.byte	0x7
	.long	0x72
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF199
	.byte	0x16
	.byte	0x62
	.byte	0x7
	.long	0x72
	.byte	0x50
	.uleb128 0x1
	.long	.LASF179
	.byte	0x16
	.byte	0x63
	.byte	0xf
	.long	0x939
	.byte	0x58
	.uleb128 0x1
	.long	.LASF201
	.byte	0x16
	.byte	0x64
	.byte	0xf
	.long	0x939
	.byte	0x60
	.uleb128 0x6
	.string	"vd"
	.byte	0x16
	.byte	0x65
	.byte	0x15
	.long	0xe28
	.byte	0x68
	.uleb128 0x1
	.long	.LASF210
	.byte	0x16
	.byte	0x69
	.byte	0x9
	.long	0x48
	.byte	0x70
	.uleb128 0x1
	.long	.LASF211
	.byte	0x16
	.byte	0x6a
	.byte	0x8
	.long	0x91
	.byte	0x78
	.uleb128 0x1
	.long	.LASF212
	.byte	0x16
	.byte	0x6b
	.byte	0x8
	.long	0x91
	.byte	0x80
	.uleb128 0x1
	.long	.LASF213
	.byte	0x16
	.byte	0x6c
	.byte	0x8
	.long	0x91
	.byte	0x88
	.uleb128 0x1
	.long	.LASF214
	.byte	0x16
	.byte	0x6d
	.byte	0x17
	.long	0xe55
	.byte	0x90
	.uleb128 0x1
	.long	.LASF202
	.byte	0x16
	.byte	0x70
	.byte	0x8
	.long	0x91
	.byte	0x98
	.uleb128 0x1
	.long	.LASF203
	.byte	0x16
	.byte	0x71
	.byte	0x8
	.long	0x91
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF204
	.byte	0x16
	.byte	0x72
	.byte	0x8
	.long	0x91
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF205
	.byte	0x16
	.byte	0x73
	.byte	0x8
	.long	0x91
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF215
	.byte	0x16
	.byte	0x75
	.byte	0x9
	.long	0x48
	.byte	0xb8
	.byte	0
	.uleb128 0x4
	.long	0xd02
	.uleb128 0xe
	.long	.LASF216
	.byte	0x10
	.byte	0x16
	.byte	0x7e
	.byte	0x8
	.long	0xe55
	.uleb128 0x6
	.string	"ptr"
	.byte	0x16
	.byte	0x7f
	.byte	0x9
	.long	0x48
	.byte	0
	.uleb128 0x1
	.long	.LASF217
	.byte	0x16
	.byte	0x80
	.byte	0x17
	.long	0xe55
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0xe2d
	.uleb128 0x3
	.long	.LASF207
	.byte	0x16
	.byte	0x77
	.byte	0x3
	.long	0xd0e
	.uleb128 0xe
	.long	.LASF218
	.byte	0x20
	.byte	0x16
	.byte	0x8b
	.byte	0x10
	.long	0xea8
	.uleb128 0x1
	.long	.LASF219
	.byte	0x16
	.byte	0x8e
	.byte	0xa
	.long	0x798
	.byte	0
	.uleb128 0x1
	.long	.LASF220
	.byte	0x16
	.byte	0x8f
	.byte	0x8
	.long	0x35c
	.byte	0x8
	.uleb128 0x1
	.long	.LASF221
	.byte	0x16
	.byte	0x90
	.byte	0x7
	.long	0x72
	.byte	0x10
	.uleb128 0x1
	.long	.LASF222
	.byte	0x16
	.byte	0x91
	.byte	0x9
	.long	0xc8
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.long	.LASF218
	.byte	0x16
	.byte	0x93
	.byte	0x3
	.long	0xe66
	.uleb128 0xc
	.byte	0x28
	.byte	0x17
	.byte	0x5
	.long	0xf18
	.uleb128 0x1
	.long	.LASF157
	.byte	0x17
	.byte	0x6
	.byte	0x9
	.long	0x798
	.byte	0
	.uleb128 0x1
	.long	.LASF223
	.byte	0x17
	.byte	0x7
	.byte	0x8
	.long	0xc8
	.byte	0x8
	.uleb128 0x1
	.long	.LASF224
	.byte	0x17
	.byte	0x8
	.byte	0x8
	.long	0xc8
	.byte	0x10
	.uleb128 0x1
	.long	.LASF225
	.byte	0x17
	.byte	0x9
	.byte	0x6
	.long	0x72
	.byte	0x18
	.uleb128 0x1
	.long	.LASF226
	.byte	0x17
	.byte	0xa
	.byte	0x6
	.long	0x72
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF227
	.byte	0x17
	.byte	0xb
	.byte	0x6
	.long	0x72
	.byte	0x20
	.uleb128 0x1
	.long	.LASF228
	.byte	0x17
	.byte	0xc
	.byte	0x6
	.long	0x72
	.byte	0x24
	.byte	0
	.uleb128 0x3
	.long	.LASF229
	.byte	0x17
	.byte	0xd
	.byte	0x2
	.long	0xeb4
	.uleb128 0x1d
	.value	0x3d8
	.byte	0x18
	.byte	0x13
	.long	0x100b
	.uleb128 0x1
	.long	.LASF230
	.byte	0x18
	.byte	0x14
	.byte	0xa
	.long	0x2db
	.byte	0
	.uleb128 0x6
	.string	"os"
	.byte	0x18
	.byte	0x15
	.byte	0x14
	.long	0xafa
	.byte	0x8
	.uleb128 0x10
	.string	"og"
	.byte	0x17
	.byte	0xc
	.long	0x9dd
	.value	0x1a0
	.uleb128 0x10
	.string	"op"
	.byte	0x19
	.byte	0xe
	.long	0xb5d
	.value	0x1c0
	.uleb128 0x10
	.string	"vi"
	.byte	0x1b
	.byte	0xf
	.long	0xbdf
	.value	0x1f0
	.uleb128 0x10
	.string	"vc"
	.byte	0x1d
	.byte	0x12
	.long	0xea8
	.value	0x228
	.uleb128 0x10
	.string	"vd"
	.byte	0x1f
	.byte	0x14
	.long	0xd02
	.value	0x248
	.uleb128 0x10
	.string	"vb"
	.byte	0x20
	.byte	0x10
	.long	0xe5a
	.value	0x2d8
	.uleb128 0x10
	.string	"eos"
	.byte	0x22
	.byte	0x7
	.long	0x72
	.value	0x398
	.uleb128 0x10
	.string	"eoc"
	.byte	0x23
	.byte	0x7
	.long	0x72
	.value	0x39c
	.uleb128 0xd
	.long	.LASF156
	.byte	0x18
	.byte	0x24
	.byte	0xc
	.long	0xcfd
	.value	0x3a0
	.uleb128 0xd
	.long	.LASF231
	.byte	0x18
	.byte	0x25
	.byte	0x8
	.long	0x91
	.value	0x3a8
	.uleb128 0xd
	.long	.LASF232
	.byte	0x18
	.byte	0x26
	.byte	0x8
	.long	0x91
	.value	0x3b0
	.uleb128 0xd
	.long	.LASF233
	.byte	0x18
	.byte	0x28
	.byte	0x12
	.long	0x100b
	.value	0x3b8
	.uleb128 0xd
	.long	.LASF234
	.byte	0x18
	.byte	0x29
	.byte	0x12
	.long	0x100b
	.value	0x3c0
	.uleb128 0xd
	.long	.LASF235
	.byte	0x18
	.byte	0x2b
	.byte	0xa
	.long	0x2f1
	.value	0x3c8
	.uleb128 0xd
	.long	.LASF236
	.byte	0x18
	.byte	0x2c
	.byte	0xa
	.long	0x2f1
	.value	0x3d0
	.byte	0
	.uleb128 0x4
	.long	0xf18
	.uleb128 0x3
	.long	.LASF237
	.byte	0x18
	.byte	0x2d
	.byte	0x2
	.long	0xf24
	.uleb128 0x17
	.long	.LASF238
	.byte	0x18
	.byte	0x33
	.byte	0x16
	.long	0x1028
	.uleb128 0x4
	.long	0x1010
	.uleb128 0x25
	.long	.LASF239
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.long	0x5d2
	.uleb128 0x9
	.byte	0x3
	.quad	running
	.uleb128 0x9
	.long	.LASF242
	.byte	0x17
	.byte	0x18
	.long	0x1054
	.uleb128 0x2
	.long	0x100b
	.byte	0
	.uleb128 0xf
	.long	.LASF240
	.byte	0xf
	.byte	0x7c
	.long	0x1061
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.long	.LASF241
	.byte	0x10
	.byte	0x49
	.long	0x106e
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.long	.LASF243
	.byte	0x11
	.byte	0x49
	.long	0x107f
	.uleb128 0x2
	.long	0x107f
	.byte	0
	.uleb128 0x4
	.long	0x704
	.uleb128 0x9
	.long	.LASF244
	.byte	0x11
	.byte	0x38
	.long	0x1095
	.uleb128 0x2
	.long	0x1095
	.byte	0
	.uleb128 0x4
	.long	0x6cc
	.uleb128 0x9
	.long	.LASF245
	.byte	0x11
	.byte	0x29
	.long	0x10ab
	.uleb128 0x2
	.long	0x10ab
	.byte	0
	.uleb128 0x4
	.long	0x68f
	.uleb128 0x9
	.long	.LASF246
	.byte	0x11
	.byte	0x5b
	.long	0x10c1
	.uleb128 0x2
	.long	0x778
	.byte	0
	.uleb128 0x9
	.long	.LASF247
	.byte	0x10
	.byte	0x3f
	.long	0x10d2
	.uleb128 0x2
	.long	0x77d
	.byte	0
	.uleb128 0xf
	.long	.LASF248
	.byte	0x13
	.byte	0x29
	.long	0x10df
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.long	.LASF249
	.byte	0x13
	.byte	0x24
	.long	0x10ec
	.uleb128 0xa
	.byte	0
	.uleb128 0x14
	.long	.LASF250
	.byte	0x19
	.byte	0x18
	.byte	0x5
	.long	0x5d2
	.long	0x10fe
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.long	.LASF251
	.byte	0x1a
	.byte	0x5
	.long	0x110b
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.long	.LASF252
	.byte	0xf
	.byte	0x7b
	.long	0x111c
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0xf
	.long	.LASF253
	.byte	0x18
	.byte	0x31
	.long	0x1129
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.long	.LASF254
	.byte	0x13
	.byte	0x2e
	.long	0x113f
	.uleb128 0x2
	.long	0x77d
	.uleb128 0x2
	.long	0x5d2
	.byte	0
	.uleb128 0x7
	.long	.LASF256
	.byte	0x19
	.byte	0x17
	.byte	0x5
	.long	0x5d2
	.long	0x115a
	.uleb128 0x2
	.long	0x77d
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x9
	.long	.LASF255
	.byte	0x1a
	.byte	0x7
	.long	0x1184
	.uleb128 0x2
	.long	0x425
	.uleb128 0x2
	.long	0x387
	.uleb128 0x2
	.long	0x387
	.uleb128 0x2
	.long	0x387
	.uleb128 0x2
	.long	0x387
	.uleb128 0x2
	.long	0x387
	.byte	0
	.uleb128 0x7
	.long	.LASF257
	.byte	0x1b
	.byte	0x4c
	.byte	0xf
	.long	0x2f1
	.long	0x119a
	.uleb128 0x2
	.long	0x119a
	.byte	0
	.uleb128 0x4
	.long	0x2f1
	.uleb128 0x7
	.long	.LASF258
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.long	0x72
	.long	0x11bf
	.uleb128 0x2
	.long	0x11bf
	.uleb128 0x2
	.long	0x668
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x4
	.long	0x92d
	.uleb128 0x9
	.long	.LASF259
	.byte	0x11
	.byte	0x4a
	.long	0x11e4
	.uleb128 0x2
	.long	0x107f
	.uleb128 0x2
	.long	0x668
	.uleb128 0x2
	.long	0x668
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x7
	.long	.LASF260
	.byte	0x1c
	.byte	0x2b
	.byte	0xe
	.long	0x48
	.long	0x1204
	.uleb128 0x2
	.long	0x48
	.uleb128 0x2
	.long	0x39a
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x9
	.long	.LASF261
	.byte	0x11
	.byte	0x5d
	.long	0x1224
	.uleb128 0x2
	.long	0x778
	.uleb128 0x2
	.long	0x668
	.uleb128 0x2
	.long	0x668
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x14
	.long	.LASF262
	.byte	0x18
	.byte	0x2f
	.byte	0x5
	.long	0x72
	.long	0x1236
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.long	.LASF263
	.byte	0x10
	.byte	0x48
	.long	0x1243
	.uleb128 0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF264
	.byte	0x13
	.byte	0x37
	.byte	0x8
	.long	0x11bf
	.long	0x1259
	.uleb128 0x2
	.long	0xc8
	.byte	0
	.uleb128 0x9
	.long	.LASF265
	.byte	0x13
	.byte	0x26
	.long	0x126a
	.uleb128 0x2
	.long	0x5d2
	.byte	0
	.uleb128 0x14
	.long	.LASF266
	.byte	0x19
	.byte	0x16
	.byte	0x5
	.long	0x5d2
	.long	0x127c
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.long	.LASF267
	.byte	0x1a
	.byte	0x4
	.long	0x1289
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.long	.LASF268
	.byte	0x1d
	.byte	0x10
	.long	0x129a
	.uleb128 0x2
	.long	0x787
	.byte	0
	.uleb128 0x15
	.long	.LASF269
	.byte	0x7
	.value	0x2d4
	.byte	0xc
	.long	0x72
	.long	0x12b1
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x9
	.long	.LASF270
	.byte	0x10
	.byte	0x43
	.long	0x12cc
	.uleb128 0x2
	.long	0x77d
	.uleb128 0x2
	.long	0x787
	.uleb128 0x2
	.long	0x5e5
	.byte	0
	.uleb128 0x7
	.long	.LASF271
	.byte	0x1d
	.byte	0x15
	.byte	0xa
	.long	0x41
	.long	0x12e2
	.uleb128 0x2
	.long	0x787
	.byte	0
	.uleb128 0x9
	.long	.LASF272
	.byte	0x1d
	.byte	0x38
	.long	0x12f8
	.uleb128 0x2
	.long	0x787
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x9
	.long	.LASF273
	.byte	0x11
	.byte	0x2d
	.long	0x1318
	.uleb128 0x2
	.long	0x10ab
	.uleb128 0x2
	.long	0x668
	.uleb128 0x2
	.long	0x668
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x9
	.long	.LASF274
	.byte	0x10
	.byte	0x41
	.long	0x1333
	.uleb128 0x2
	.long	0x668
	.uleb128 0x2
	.long	0x668
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x9
	.long	.LASF275
	.byte	0x11
	.byte	0x3b
	.long	0x1353
	.uleb128 0x2
	.long	0x1095
	.uleb128 0x2
	.long	0x668
	.uleb128 0x2
	.long	0x668
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x26
	.long	.LASF276
	.byte	0x1e
	.byte	0x45
	.byte	0xd
	.long	0x1374
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0x2
	.long	0x41
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x7
	.long	.LASF277
	.byte	0x1d
	.byte	0x33
	.byte	0xa
	.long	0x41
	.long	0x138a
	.uleb128 0x2
	.long	0x787
	.byte	0
	.uleb128 0x7
	.long	.LASF278
	.byte	0x1d
	.byte	0x2e
	.byte	0x8
	.long	0x668
	.long	0x13a0
	.uleb128 0x2
	.long	0x787
	.byte	0
	.uleb128 0x7
	.long	.LASF279
	.byte	0x13
	.byte	0x23
	.byte	0x8
	.long	0x2e
	.long	0x13bb
	.uleb128 0x2
	.long	0x668
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x7
	.long	.LASF280
	.byte	0x1d
	.byte	0xb
	.byte	0x11
	.long	0x787
	.long	0x13d1
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x14
	.long	.LASF281
	.byte	0x10
	.byte	0x3e
	.byte	0x9
	.long	0x77d
	.long	0x13e3
	.uleb128 0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF282
	.byte	0x11
	.byte	0x5a
	.byte	0x14
	.long	0x778
	.long	0x13f9
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x7
	.long	.LASF283
	.byte	0x11
	.byte	0x48
	.byte	0xa
	.long	0x107f
	.long	0x140f
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x7
	.long	.LASF284
	.byte	0x11
	.byte	0x37
	.byte	0xa
	.long	0x1095
	.long	0x1425
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x14
	.long	.LASF285
	.byte	0x11
	.byte	0x28
	.byte	0xd
	.long	0x10ab
	.long	0x1437
	.uleb128 0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF286
	.byte	0x13
	.byte	0x22
	.byte	0x5
	.long	0x5d2
	.long	0x144d
	.uleb128 0x2
	.long	0x5e5
	.byte	0
	.uleb128 0x14
	.long	.LASF287
	.byte	0x13
	.byte	0x2c
	.byte	0x7
	.long	0xc8
	.long	0x145f
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.long	.LASF288
	.byte	0xf
	.byte	0x7d
	.long	0x146c
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.long	.LASF289
	.byte	0x13
	.byte	0x2b
	.long	0x1482
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x27
	.long	.LASF290
	.byte	0x1f
	.value	0x2af
	.byte	0xd
	.long	0x1495
	.uleb128 0x2
	.long	0x48
	.byte	0
	.uleb128 0x7
	.long	.LASF291
	.byte	0xf
	.byte	0x7a
	.byte	0x10
	.long	0x5e5
	.long	0x14ab
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x7
	.long	.LASF292
	.byte	0x1c
	.byte	0xbb
	.byte	0xe
	.long	0xc8
	.long	0x14c1
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x7
	.long	.LASF293
	.byte	0x1c
	.byte	0x95
	.byte	0xe
	.long	0xc8
	.long	0x14dc
	.uleb128 0x2
	.long	0xc8
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x7
	.long	.LASF294
	.byte	0x1c
	.byte	0x8d
	.byte	0xe
	.long	0xc8
	.long	0x14f7
	.uleb128 0x2
	.long	0xc8
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x15
	.long	.LASF295
	.byte	0x1f
	.value	0x2a0
	.byte	0xe
	.long	0x48
	.long	0x150e
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x15
	.long	.LASF296
	.byte	0x1c
	.value	0x197
	.byte	0xf
	.long	0x2e
	.long	0x1525
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x15
	.long	.LASF297
	.byte	0x1f
	.value	0x305
	.byte	0xe
	.long	0xc8
	.long	0x153c
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x7
	.long	.LASF298
	.byte	0x9
	.byte	0x42
	.byte	0xc
	.long	0x72
	.long	0x1566
	.uleb128 0x2
	.long	0x72
	.uleb128 0x2
	.long	0x1566
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0x2
	.long	0x156b
	.uleb128 0x2
	.long	0x35c
	.byte	0
	.uleb128 0x4
	.long	0xcd
	.uleb128 0x4
	.long	0x357
	.uleb128 0x7
	.long	.LASF299
	.byte	0x1f
	.byte	0x69
	.byte	0xc
	.long	0x72
	.long	0x1586
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x28
	.long	.LASF300
	.byte	0x1f
	.value	0x2f4
	.byte	0xd
	.long	0x1599
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x15
	.long	.LASF301
	.byte	0x7
	.value	0x165
	.byte	0xc
	.long	0x72
	.long	0x15b6
	.uleb128 0x2
	.long	0x2e0
	.uleb128 0x2
	.long	0x2d6
	.uleb128 0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF302
	.byte	0x1c
	.byte	0x9c
	.byte	0xc
	.long	0x72
	.long	0x15d1
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x7
	.long	.LASF303
	.byte	0xd
	.byte	0x58
	.byte	0x17
	.long	0x3ec
	.long	0x15ec
	.uleb128 0x2
	.long	0x72
	.uleb128 0x2
	.long	0x3ec
	.byte	0
	.uleb128 0x15
	.long	.LASF304
	.byte	0x7
	.value	0x16b
	.byte	0xc
	.long	0x72
	.long	0x1604
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0xa
	.byte	0
	.uleb128 0x29
	.long	.LASF364
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.long	0x72
	.quad	.LFB311
	.quad	.LFE311-.LFB311
	.uleb128 0x1
	.byte	0x9c
	.long	0x1af3
	.uleb128 0x19
	.long	.LASF305
	.byte	0x56
	.byte	0xf
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1188
	.uleb128 0x19
	.long	.LASF306
	.byte	0x56
	.byte	0x1b
	.long	0x798
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1200
	.uleb128 0x8
	.long	.LASF307
	.byte	0x58
	.byte	0xd
	.long	0x72
	.uleb128 0x9
	.byte	0x3
	.quad	verbose_flag.1
	.uleb128 0x8
	.long	.LASF308
	.byte	0x59
	.byte	0x17
	.long	0x1af3
	.uleb128 0x9
	.byte	0x3
	.quad	long_options.2
	.uleb128 0x8
	.long	.LASF309
	.byte	0x6b
	.byte	0x6
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1180
	.uleb128 0x8
	.long	.LASF310
	.byte	0x6b
	.byte	0x14
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.uleb128 0x8
	.long	.LASF311
	.byte	0x6c
	.byte	0x6
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1176
	.uleb128 0x8
	.long	.LASF312
	.byte	0x6e
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x8
	.long	.LASF313
	.byte	0x6f
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x8
	.long	.LASF314
	.byte	0x70
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x8
	.long	.LASF315
	.byte	0x71
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x8
	.long	.LASF316
	.byte	0x72
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x8
	.long	.LASF317
	.byte	0x73
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x8
	.long	.LASF318
	.byte	0x74
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x8
	.long	.LASF319
	.byte	0x75
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x8
	.long	.LASF320
	.byte	0x76
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x8
	.long	.LASF321
	.byte	0x77
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x8
	.long	.LASF90
	.byte	0x78
	.byte	0x6
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1172
	.uleb128 0x8
	.long	.LASF322
	.byte	0xbd
	.byte	0xe
	.long	0x2d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x8
	.long	.LASF323
	.byte	0xd5
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1032
	.uleb128 0x8
	.long	.LASF324
	.byte	0xd6
	.byte	0x7
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1182
	.uleb128 0x5
	.long	.LASF325
	.value	0x11a
	.byte	0xe
	.long	0x10ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -976
	.uleb128 0x5
	.long	.LASF326
	.value	0x11b
	.byte	0xe
	.long	0x10ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -968
	.uleb128 0x5
	.long	.LASF327
	.value	0x11c
	.byte	0xb
	.long	0x1095
	.uleb128 0x3
	.byte	0x91
	.sleb128 -960
	.uleb128 0x5
	.long	.LASF328
	.value	0x11d
	.byte	0xb
	.long	0x107f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -952
	.uleb128 0x5
	.long	.LASF329
	.value	0x11f
	.byte	0x9
	.long	0x668
	.uleb128 0x3
	.byte	0x91
	.sleb128 -944
	.uleb128 0x5
	.long	.LASF330
	.value	0x122
	.byte	0xb
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1132
	.uleb128 0x5
	.long	.LASF331
	.value	0x126
	.byte	0x12
	.long	0x1b03
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.uleb128 0x5
	.long	.LASF332
	.value	0x12f
	.byte	0x12
	.long	0x787
	.uleb128 0x3
	.byte	0x91
	.sleb128 -936
	.uleb128 0x5
	.long	.LASF333
	.value	0x130
	.byte	0x12
	.long	0x787
	.uleb128 0x3
	.byte	0x91
	.sleb128 -928
	.uleb128 0x5
	.long	.LASF334
	.value	0x131
	.byte	0x12
	.long	0x787
	.uleb128 0x3
	.byte	0x91
	.sleb128 -920
	.uleb128 0x5
	.long	.LASF335
	.value	0x132
	.byte	0x12
	.long	0x787
	.uleb128 0x3
	.byte	0x91
	.sleb128 -912
	.uleb128 0x5
	.long	.LASF336
	.value	0x133
	.byte	0x12
	.long	0x787
	.uleb128 0x3
	.byte	0x91
	.sleb128 -904
	.uleb128 0x5
	.long	.LASF337
	.value	0x135
	.byte	0xa
	.long	0x77d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -896
	.uleb128 0x5
	.long	.LASF338
	.value	0x136
	.byte	0xa
	.long	0x77d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -888
	.uleb128 0x5
	.long	.LASF339
	.value	0x137
	.byte	0xa
	.long	0x77d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -880
	.uleb128 0x5
	.long	.LASF340
	.value	0x138
	.byte	0xa
	.long	0x77d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -872
	.uleb128 0x5
	.long	.LASF341
	.value	0x139
	.byte	0xa
	.long	0x77d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -864
	.uleb128 0x5
	.long	.LASF342
	.value	0x13b
	.byte	0xa
	.long	0x77d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x2a
	.long	.LASF365
	.long	0x1b23
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.0
	.uleb128 0x5
	.long	.LASF343
	.value	0x17f
	.byte	0x6
	.long	0x5d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1181
	.uleb128 0x11
	.string	"wa"
	.value	0x186
	.byte	0x9
	.long	0x11bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.uleb128 0x11
	.string	"wb"
	.value	0x187
	.byte	0x9
	.long	0x11bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1008
	.uleb128 0x11
	.string	"wc"
	.value	0x188
	.byte	0x9
	.long	0x11bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1000
	.uleb128 0x11
	.string	"wd"
	.value	0x189
	.byte	0x9
	.long	0x11bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -992
	.uleb128 0x5
	.long	.LASF236
	.value	0x19b
	.byte	0xb
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1152
	.uleb128 0x1a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1930
	.uleb128 0x8
	.long	.LASF344
	.byte	0xd8
	.byte	0xf
	.long	0x2d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1024
	.uleb128 0x8
	.long	.LASF345
	.byte	0xdb
	.byte	0x9
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -984
	.byte	0
	.uleb128 0x1a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1954
	.uleb128 0x11
	.string	"i"
	.value	0x129
	.byte	0xb
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1168
	.byte	0
	.uleb128 0x1a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x19e0
	.uleb128 0x5
	.long	.LASF346
	.value	0x144
	.byte	0xc
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1164
	.uleb128 0x5
	.long	.LASF347
	.value	0x145
	.byte	0xc
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1128
	.uleb128 0x5
	.long	.LASF348
	.value	0x146
	.byte	0x9
	.long	0x387
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1160
	.uleb128 0x5
	.long	.LASF349
	.value	0x147
	.byte	0xc
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1156
	.uleb128 0x5
	.long	.LASF350
	.value	0x14a
	.byte	0x13
	.long	0x787
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x2b
	.long	.LLRL0
	.uleb128 0x5
	.long	.LASF351
	.value	0x14d
	.byte	0xb
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -840
	.uleb128 0x5
	.long	.LASF352
	.value	0x151
	.byte	0xb
	.long	0x668
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LLRL1
	.long	0x1ad2
	.uleb128 0x5
	.long	.LASF351
	.value	0x1a1
	.byte	0xa
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.uleb128 0x5
	.long	.LASF353
	.value	0x1ae
	.byte	0xa
	.long	0x668
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x5
	.long	.LASF354
	.value	0x1af
	.byte	0xa
	.long	0x668
	.uleb128 0x3
	.byte	0x91
	.sleb128 -808
	.uleb128 0x5
	.long	.LASF355
	.value	0x1b0
	.byte	0xa
	.long	0x668
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x5
	.long	.LASF356
	.value	0x1b1
	.byte	0xa
	.long	0x668
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x5
	.long	.LASF357
	.value	0x1b2
	.byte	0xa
	.long	0x668
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x1a
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x1a8f
	.uleb128 0x11
	.string	"i"
	.value	0x1a5
	.byte	0xb
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1148
	.uleb128 0x1b
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x5
	.long	.LASF358
	.value	0x1a6
	.byte	0xb
	.long	0x668
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x5
	.long	.LASF359
	.value	0x1e1
	.byte	0x8
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1124
	.uleb128 0x1b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x11
	.string	"i"
	.value	0x1d0
	.byte	0xc
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1144
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x11
	.string	"i"
	.value	0x21f
	.byte	0xa
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x315
	.long	0x1b03
	.uleb128 0x13
	.long	0x3a
	.byte	0xe
	.byte	0
	.uleb128 0x12
	.long	0x78c
	.long	0x1b13
	.uleb128 0x13
	.long	0x3a
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.long	0xd9
	.long	0x1b23
	.uleb128 0x13
	.long	0x3a
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.long	0x1b13
	.uleb128 0x2d
	.long	.LASF366
	.byte	0x1
	.byte	0x4f
	.byte	0xd
	.quad	.LFB310
	.quad	.LFE310-.LFB310
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF367
	.byte	0x1
	.byte	0x3a
	.byte	0xd
	.quad	.LFB309
	.quad	.LFE309-.LFB309
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b6f
	.uleb128 0x19
	.long	.LASF360
	.byte	0x3a
	.byte	0x18
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF368
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.quad	.LFB308
	.quad	.LFE308-.LFB308
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF361
	.byte	0x35
	.byte	0x1d
	.long	0x72
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0xa
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
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
	.sleb128 24
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
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2e
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
	.uleb128 .LBB5-.Ltext0
	.uleb128 .LBE5-.Ltext0
	.byte	0x4
	.uleb128 .LBB6-.Ltext0
	.uleb128 .LBE6-.Ltext0
	.byte	0
.LLRL1:
	.byte	0x4
	.uleb128 .LBB7-.Ltext0
	.uleb128 .LBE7-.Ltext0
	.byte	0x4
	.uleb128 .LBB12-.Ltext0
	.uleb128 .LBE12-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF297:
	.string	"getenv"
.LASF223:
	.string	"dir_path"
.LASF116:
	.string	"direction"
.LASF250:
	.string	"mqtt_end"
.LASF88:
	.string	"segment_size"
.LASF349:
	.string	"average_n"
.LASF37:
	.string	"_shortbuf"
.LASF220:
	.string	"comment_lengths"
.LASF200:
	.string	"centerW"
.LASF202:
	.string	"glue_bits"
.LASF363:
	.string	"_IO_lock_t"
.LASF164:
	.string	"body_storage"
.LASF231:
	.string	"endfile_size"
.LASF230:
	.string	"output"
.LASF336:
	.string	"ring_aslow"
.LASF232:
	.string	"sample_count"
.LASF52:
	.string	"stderr"
.LASF241:
	.string	"lae_average_destroy"
.LASF26:
	.string	"_IO_buf_end"
.LASF14:
	.string	"__off_t"
.LASF262:
	.string	"record_start"
.LASF54:
	.string	"optopt"
.LASF303:
	.string	"signal"
.LASF253:
	.string	"record_stop"
.LASF96:
	.string	"data_record_ok"
.LASF118:
	.string	"previous"
.LASF207:
	.string	"vorbis_block"
.LASF122:
	.string	"Cfilter"
.LASF24:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF150:
	.string	"Wave"
.LASF246:
	.string	"third_octave_destroy"
.LASF185:
	.string	"version"
.LASF42:
	.string	"_freeres_list"
.LASF83:
	.string	"sample_rate"
.LASF18:
	.string	"_flags"
.LASF252:
	.string	"config_save"
.LASF368:
	.string	"int_handler"
.LASF196:
	.string	"pcm_current"
.LASF329:
	.string	"block_raw"
.LASF176:
	.string	"serialno"
.LASF350:
	.string	"ring_calibration"
.LASF63:
	.string	"guint"
.LASF285:
	.string	"timeweight_create"
.LASF98:
	.string	"calibration_time"
.LASF184:
	.string	"vorbis_info"
.LASF342:
	.string	"levels_return"
.LASF104:
	.string	"mqtt_qos"
.LASF186:
	.string	"rate"
.LASF308:
	.string	"long_options"
.LASF315:
	.string	"option_data_output_format"
.LASF244:
	.string	"aweighting_destroy"
.LASF228:
	.string	"update"
.LASF209:
	.string	"mode"
.LASF245:
	.string	"timeweight_destroy"
.LASF125:
	.string	"levels"
.LASF225:
	.string	"current_idx"
.LASF258:
	.string	"audit_append_samples"
.LASF89:
	.string	"levels_record_period"
.LASF130:
	.string	"ChunkSize"
.LASF135:
	.string	"AudioFormat"
.LASF298:
	.string	"getopt_long"
.LASF341:
	.string	"levels_aslow"
.LASF362:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF105:
	.string	"mqtt_device_credential"
.LASF127:
	.string	"sbuffer"
.LASF143:
	.string	"wave"
.LASF115:
	.string	"le_counter"
.LASF73:
	.string	"uint32_t"
.LASF294:
	.string	"strcpy"
.LASF157:
	.string	"storage"
.LASF293:
	.string	"strcat"
.LASF29:
	.string	"_IO_save_end"
.LASF224:
	.string	"file_format"
.LASF140:
	.string	"BitsPerSample"
.LASF218:
	.string	"vorbis_comment"
.LASF327:
	.string	"afilter"
.LASF49:
	.string	"_IO_codecvt"
.LASF235:
	.string	"time_start"
.LASF203:
	.string	"time_bits"
.LASF163:
	.string	"body_data"
.LASF291:
	.string	"config_load"
.LASF144:
	.string	"riff_chunk"
.LASF287:
	.string	"output_get_data_filepath"
.LASF70:
	.string	"long long unsigned int"
.LASF206:
	.string	"backend_state"
.LASF277:
	.string	"sbuffer_write_size"
.LASF142:
	.string	"SubChunkData"
.LASF222:
	.string	"vendor"
.LASF356:
	.string	"block_ring_afast"
.LASF238:
	.string	"record_struct"
.LASF240:
	.string	"config_destroy"
.LASF314:
	.string	"option_output_filename"
.LASF251:
	.string	"server_end"
.LASF139:
	.string	"BlockAlign"
.LASF9:
	.string	"__uint16_t"
.LASF272:
	.string	"sbuffer_write_produces"
.LASF71:
	.string	"__sighandler_t"
.LASF28:
	.string	"_IO_backup_base"
.LASF179:
	.string	"granulepos"
.LASF39:
	.string	"_offset"
.LASF67:
	.string	"_GArray"
.LASF257:
	.string	"time"
.LASF172:
	.string	"lacing_returned"
.LASF321:
	.string	"option_block_size"
.LASF187:
	.string	"bitrate_upper"
.LASF82:
	.string	"data_output_format"
.LASF301:
	.string	"fprintf"
.LASF32:
	.string	"_fileno"
.LASF292:
	.string	"strdup"
.LASF346:
	.string	"milisecs"
.LASF261:
	.string	"third_octave_filtering"
.LASF312:
	.string	"option_device_filename"
.LASF286:
	.string	"input_device_open"
.LASF177:
	.string	"pageno"
.LASF95:
	.string	"data_file_duration"
.LASF69:
	.string	"int64_t"
.LASF66:
	.string	"GArray"
.LASF65:
	.string	"double"
.LASF280:
	.string	"sbuffer_create"
.LASF21:
	.string	"_IO_read_base"
.LASF107:
	.string	"_Bool"
.LASF190:
	.string	"bitrate_window"
.LASF305:
	.string	"argc"
.LASF154:
	.string	"endbyte"
.LASF120:
	.string	"coefs"
.LASF182:
	.string	"bytes"
.LASF213:
	.string	"totaluse"
.LASF290:
	.string	"free"
.LASF13:
	.string	"__uint64_t"
.LASF344:
	.string	"path"
.LASF119:
	.string	"Timeweight"
.LASF255:
	.string	"server_send"
.LASF212:
	.string	"localalloc"
.LASF79:
	.string	"output_path"
.LASF208:
	.string	"pcmend"
.LASF326:
	.string	"twslowfilter"
.LASF109:
	.string	"segment_number"
.LASF106:
	.string	"server_socket"
.LASF279:
	.string	"input_device_read"
.LASF345:
	.string	"pathname"
.LASF17:
	.string	"char"
.LASF270:
	.string	"process_segment_levels"
.LASF247:
	.string	"levels_destroy"
.LASF151:
	.string	"audit"
.LASF45:
	.string	"_mode"
.LASF87:
	.string	"segment_duration"
.LASF354:
	.string	"block_ring_a"
.LASF355:
	.string	"block_ring_c"
.LASF78:
	.string	"input_file"
.LASF335:
	.string	"ring_afast"
.LASF22:
	.string	"_IO_write_base"
.LASF347:
	.string	"calibration_milisecs"
.LASF19:
	.string	"_IO_read_ptr"
.LASF162:
	.string	"ogg_page"
.LASF300:
	.string	"exit"
.LASF198:
	.string	"preextrapolate"
.LASF211:
	.string	"localtop"
.LASF338:
	.string	"levels_a"
.LASF339:
	.string	"levels_c"
.LASF351:
	.string	"lenght_read"
.LASF227:
	.string	"space"
.LASF353:
	.string	"block_ring_z"
.LASF178:
	.string	"packetno"
.LASF113:
	.string	"LAFmin"
.LASF51:
	.string	"time_t"
.LASF112:
	.string	"LAFmax"
.LASF201:
	.string	"sequence"
.LASF138:
	.string	"ByteRate"
.LASF337:
	.string	"levels_z"
.LASF195:
	.string	"pcm_storage"
.LASF152:
	.string	"Audit"
.LASF137:
	.string	"SampleRate"
.LASF204:
	.string	"floor_bits"
.LASF48:
	.string	"_IO_marker"
.LASF148:
	.string	"samples"
.LASF60:
	.string	"long long int"
.LASF147:
	.string	"file_offset"
.LASF304:
	.string	"printf"
.LASF259:
	.string	"cweighting_filtering"
.LASF366:
	.string	"about"
.LASF27:
	.string	"_IO_save_base"
.LASF132:
	.string	"header"
.LASF264:
	.string	"audit_create"
.LASF84:
	.string	"channels"
.LASF352:
	.string	"block_ring_calibration"
.LASF30:
	.string	"_markers"
.LASF333:
	.string	"ring_a"
.LASF210:
	.string	"localstore"
.LASF229:
	.string	"Files_Storage"
.LASF263:
	.string	"lae_average_create"
.LASF114:
	.string	"le_accumulator"
.LASF275:
	.string	"aweighting_filtering"
.LASF92:
	.string	"audio_file_duration"
.LASF189:
	.string	"bitrate_lower"
.LASF156:
	.string	"buffer"
.LASF332:
	.string	"ring_z"
.LASF226:
	.string	"size"
.LASF43:
	.string	"_freeres_buf"
.LASF93:
	.string	"audio_record_ok"
.LASF282:
	.string	"third_octave_create"
.LASF322:
	.string	"config_filename"
.LASF81:
	.string	"audio_output_format"
.LASF180:
	.string	"ogg_stream_state"
.LASF168:
	.string	"granule_vals"
.LASF249:
	.string	"input_device_close"
.LASF44:
	.string	"__pad5"
.LASF331:
	.string	"third_octave_data"
.LASF316:
	.string	"option_sample_rate"
.LASF165:
	.string	"body_fill"
.LASF358:
	.string	"block_filter"
.LASF56:
	.string	"option"
.LASF36:
	.string	"_vtable_offset"
.LASF309:
	.string	"option_index"
.LASF319:
	.string	"option_calibration_time"
.LASF199:
	.string	"eofflag"
.LASF68:
	.string	"data"
.LASF53:
	.string	"optarg"
.LASF11:
	.string	"__int64_t"
.LASF274:
	.string	"process_block_square"
.LASF306:
	.string	"argv"
.LASF289:
	.string	"output_set_filename"
.LASF117:
	.string	"Levels"
.LASF61:
	.string	"long double"
.LASF310:
	.string	"option_char"
.LASF216:
	.string	"alloc_chain"
.LASF269:
	.string	"puts"
.LASF288:
	.string	"config_print"
.LASF161:
	.string	"body_len"
.LASF242:
	.string	"delete_files_storage"
.LASF364:
	.string	"main"
.LASF205:
	.string	"res_bits"
.LASF8:
	.string	"size_t"
.LASF159:
	.string	"header_len"
.LASF10:
	.string	"__uint32_t"
.LASF76:
	.string	"identification"
.LASF320:
	.string	"option_config_filename"
.LASF166:
	.string	"body_returned"
.LASF194:
	.string	"pcmret"
.LASF75:
	.string	"config"
.LASF330:
	.string	"segment_buffer_size"
.LASF133:
	.string	"Format"
.LASF20:
	.string	"_IO_read_end"
.LASF281:
	.string	"levels_create"
.LASF323:
	.string	"config_pathname"
.LASF7:
	.string	"short int"
.LASF12:
	.string	"long int"
.LASF123:
	.string	"ThirdOctaveFilter"
.LASF234:
	.string	"created_data_files"
.LASF85:
	.string	"bits_per_sample"
.LASF217:
	.string	"next"
.LASF171:
	.string	"lacing_packet"
.LASF80:
	.string	"output_filename"
.LASF124:
	.string	"filter"
.LASF219:
	.string	"user_comments"
.LASF50:
	.string	"_IO_wide_data"
.LASF128:
	.string	"ThirdOctaveData"
.LASF59:
	.string	"flag"
.LASF145:
	.string	"subchunk_fmt"
.LASF74:
	.string	"uint64_t"
.LASF284:
	.string	"aweighting_create"
.LASF324:
	.string	"first_letter"
.LASF86:
	.string	"block_size"
.LASF191:
	.string	"codec_setup"
.LASF99:
	.string	"calibration_reference"
.LASF134:
	.string	"RiffChunk"
.LASF343:
	.string	"continuous"
.LASF237:
	.string	"record_state"
.LASF243:
	.string	"cweighting_destroy"
.LASF334:
	.string	"ring_c"
.LASF57:
	.string	"name"
.LASF266:
	.string	"mqtt_begin"
.LASF129:
	.string	"ChunkID"
.LASF25:
	.string	"_IO_buf_base"
.LASF296:
	.string	"strlen"
.LASF214:
	.string	"reap"
.LASF100:
	.string	"calibration_delta"
.LASF317:
	.string	"option_channels"
.LASF41:
	.string	"_wide_data"
.LASF38:
	.string	"_lock"
.LASF97:
	.string	"background_duration"
.LASF265:
	.string	"output_open"
.LASF2:
	.string	"long unsigned int"
.LASF173:
	.string	"header_fill"
.LASF34:
	.string	"_old_offset"
.LASF313:
	.string	"option_input_filename"
.LASF55:
	.string	"_IO_FILE"
.LASF361:
	.string	"unused"
.LASF64:
	.string	"float"
.LASF181:
	.string	"packet"
.LASF276:
	.string	"__assert_fail"
.LASF136:
	.string	"NumChannels"
.LASF256:
	.string	"mqtt_publish"
.LASF160:
	.string	"body"
.LASF307:
	.string	"verbose_flag"
.LASF348:
	.string	"average_sum"
.LASF367:
	.string	"help"
.LASF233:
	.string	"created_audio_files"
.LASF72:
	.string	"uint16_t"
.LASF4:
	.string	"unsigned char"
.LASF155:
	.string	"endbit"
.LASF183:
	.string	"ogg_packet"
.LASF158:
	.string	"oggpack_buffer"
.LASF340:
	.string	"levels_afast"
.LASF215:
	.string	"internal"
.LASF23:
	.string	"_IO_write_ptr"
.LASF91:
	.string	"audio_loop_recording"
.LASF273:
	.string	"timeweight_filtering"
.LASF103:
	.string	"mqtt_topic"
.LASF248:
	.string	"output_close"
.LASF357:
	.string	"block_ring_aslow"
.LASF193:
	.string	"analysisp"
.LASF169:
	.string	"lacing_storage"
.LASF108:
	.string	"config_struct"
.LASF267:
	.string	"server_init"
.LASF16:
	.string	"__time_t"
.LASF131:
	.string	"ChunkHeader"
.LASF77:
	.string	"input_device"
.LASF325:
	.string	"twfastfilter"
.LASF40:
	.string	"_codecvt"
.LASF102:
	.string	"mqtt_broker"
.LASF236:
	.string	"time_elapsed"
.LASF295:
	.string	"malloc"
.LASF101:
	.string	"mqtt_enable"
.LASF318:
	.string	"option_identification"
.LASF62:
	.string	"gchar"
.LASF311:
	.string	"error_in_options"
.LASF126:
	.string	"ring"
.LASF6:
	.string	"signed char"
.LASF141:
	.string	"SubChunkFmt"
.LASF268:
	.string	"sbuffer_destroy"
.LASF328:
	.string	"cfilter"
.LASF5:
	.string	"short unsigned int"
.LASF278:
	.string	"sbuffer_write_ptr"
.LASF360:
	.string	"prog_name"
.LASF260:
	.string	"memcpy"
.LASF283:
	.string	"cweighting_create"
.LASF153:
	.string	"ogg_int64_t"
.LASF170:
	.string	"lacing_fill"
.LASF299:
	.string	"atoi"
.LASF197:
	.string	"pcm_returned"
.LASF365:
	.string	"__PRETTY_FUNCTION__"
.LASF149:
	.string	"current"
.LASF110:
	.string	"LAeq"
.LASF90:
	.string	"run_duration"
.LASF254:
	.string	"output_record"
.LASF121:
	.string	"Afilter"
.LASF239:
	.string	"running"
.LASF146:
	.string	"subchunk_data"
.LASF31:
	.string	"_chain"
.LASF192:
	.string	"vorbis_dsp_state"
.LASF47:
	.string	"FILE"
.LASF271:
	.string	"sbuffer_size"
.LASF33:
	.string	"_flags2"
.LASF58:
	.string	"has_arg"
.LASF221:
	.string	"comments"
.LASF35:
	.string	"_cur_column"
.LASF174:
	.string	"e_o_s"
.LASF175:
	.string	"b_o_s"
.LASF94:
	.string	"data_loop_recording"
.LASF188:
	.string	"bitrate_nominal"
.LASF111:
	.string	"LApeak"
.LASF15:
	.string	"__off64_t"
.LASF167:
	.string	"lacing_vals"
.LASF46:
	.string	"_unused2"
.LASF302:
	.string	"strcmp"
.LASF359:
	.string	"segment_index"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/aluno/Desktop/sound_meter-master_v02_2"
.LASF0:
	.string	"src/main.c"
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
