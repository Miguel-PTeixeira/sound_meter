	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v03" "src/main.c"
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
.LC22:
	.string	"\nCalibrating for %d seconds\n"
.LC23:
	.string	"src/main.c"
	.align 8
.LC24:
	.string	"lenght_read <= sbuffer_write_size(ring_calibration)"
.LC25:
	.string	"-"
.LC26:
	.string	"%d\n"
.LC27:
	.string	"\nCalibration reference: %.1f\n"
.LC28:
	.string	"Raw LAE: %.1f\n"
.LC29:
	.string	"Calibration delta: %.1f\n"
	.align 8
.LC30:
	.string	"\nStarting sound level measuring..."
.LC31:
	.string	"a"
.LC32:
	.string	"b"
.LC33:
	.string	"c"
.LC34:
	.string	"d"
	.align 8
.LC35:
	.string	"LAeq, LAFmin, LAE, LAFmax, LApeak"
	.align 8
.LC36:
	.string	"lenght_read <= sbuffer_write_size(third_octave_data[i].ring)"
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
	.string	"\tan event occured"
.LC42:
	.string	"\r%6.1f%6.1f%6.1f%6.1f%6.1f\n"
	.align 8
.LC43:
	.string	"ERROR : could not start recording (in_out.c : 79)"
.LC44:
	.string	"\nTotal time: %d seconds\n"
	.align 8
.LC45:
	.string	"Saving configuration in ./sound_meter_config.json"
.LC46:
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
	pushq	%r12
	pushq	%rbx
	subq	$1200, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -1188(%rbp)
	movq	%rsi, -1200(%rbp)
	.loc 1 87 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 108 6
	movl	$0, -1164(%rbp)
	.loc 1 110 8
	movq	$0, -1096(%rbp)
	.loc 1 111 8
	movq	$0, -1088(%rbp)
	.loc 1 112 8
	movq	$0, -1080(%rbp)
	.loc 1 113 8
	movq	$0, -1072(%rbp)
	.loc 1 114 8
	movq	$0, -1064(%rbp)
	.loc 1 115 8
	movq	$0, -1056(%rbp)
	.loc 1 116 8
	movq	$0, -1048(%rbp)
	.loc 1 117 8
	movq	$0, -1040(%rbp)
	.loc 1 118 8
	movq	$0, -1032(%rbp)
	.loc 1 119 8
	movq	$0, -1024(%rbp)
	.loc 1 120 6
	movl	$0, -1160(%rbp)
	.loc 1 122 2
	leaq	int_handler(%rip), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	signal@PLT
	.loc 1 124 8
	jmp	.L5
.L27:
	.loc 1 126 3
	cmpl	$118, -1116(%rbp)
	ja	.L5
	movl	-1116(%rbp), %eax
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
	movq	-1200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	help
	.loc 1 131 11
	movl	$0, %eax
	jmp	.L96
.L7:
	.loc 1 133 4
	movl	$0, %eax
	call	about
	.loc 1 134 4
	jmp	.L5
.L17:
	.loc 1 136 27
	movq	optarg(%rip), %rax
	movq	%rax, -1096(%rbp)
	.loc 1 137 4
	jmp	.L5
.L13:
	.loc 1 139 26
	movq	optarg(%rip), %rax
	movq	%rax, -1088(%rbp)
	.loc 1 140 4
	jmp	.L5
.L11:
	.loc 1 142 27
	movq	optarg(%rip), %rax
	movq	%rax, -1080(%rbp)
	.loc 1 143 4
	jmp	.L5
.L16:
	.loc 1 145 30
	movq	optarg(%rip), %rax
	movq	%rax, -1072(%rbp)
	.loc 1 146 4
	jmp	.L5
.L15:
	.loc 1 148 27
	movq	optarg(%rip), %rax
	movq	%rax, -1032(%rbp)
	.loc 1 149 4
	jmp	.L5
.L10:
	.loc 1 151 23
	movq	optarg(%rip), %rax
	movq	%rax, -1064(%rbp)
	.loc 1 152 15
	movq	-1024(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 152 12 discriminator 1
	testl	%eax, %eax
	je	.L98
	.loc 1 152 57 discriminator 1
	movq	-1024(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 152 13 discriminator 1
	testl	%eax, %eax
	je	.L98
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
	movq	%rax, -1056(%rbp)
	.loc 1 157 4
	jmp	.L5
.L12:
	.loc 1 159 26
	movq	optarg(%rip), %rax
	movq	%rax, -1048(%rbp)
	.loc 1 160 4
	jmp	.L5
.L9:
	.loc 1 162 19
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1160(%rbp)
	.loc 1 163 4
	jmp	.L5
.L18:
	.loc 1 165 28
	movq	optarg(%rip), %rax
	movq	%rax, -1040(%rbp)
	.loc 1 166 4
	jmp	.L5
.L19:
	.loc 1 168 22
	movq	optarg(%rip), %rax
	movq	%rax, -1024(%rbp)
	.loc 1 169 15
	movq	-1024(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 169 12 discriminator 1
	testl	%eax, %eax
	je	.L99
	.loc 1 169 55 discriminator 1
	movq	-1024(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 169 52 discriminator 1
	testl	%eax, %eax
	je	.L99
	.loc 1 169 96 discriminator 2
	movq	-1024(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 169 13 discriminator 1
	testl	%eax, %eax
	je	.L99
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
	movl	$1, -1164(%rbp)
	.loc 1 175 4
	jmp	.L5
.L21:
	.loc 1 177 21
	movl	$1, -1164(%rbp)
	.loc 1 178 4
	jmp	.L5
.L98:
	.loc 1 154 4
	nop
	jmp	.L5
.L99:
	.loc 1 171 4
	nop
.L5:
	.loc 1 124 24
	leaq	-1168(%rbp), %rdx
	movq	-1200(%rbp), %rsi
	movl	-1188(%rbp), %eax
	movq	%rdx, %r8
	leaq	long_options.2(%rip), %rdx
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -1116(%rbp)
	.loc 1 125 34
	cmpl	$-1, -1116(%rbp)
	jne	.L27
	.loc 1 181 5
	cmpl	$0, -1164(%rbp)
	je	.L28
	.loc 1 182 3
	movq	-1200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	help
	.loc 1 183 3
	movl	$1, %edi
	call	exit@PLT
.L28:
	.loc 1 189 14
	movq	-1032(%rbp), %rax
	movq	%rax, -1016(%rbp)
	.loc 1 190 5
	cmpq	$0, -1016(%rbp)
	jne	.L29
	.loc 1 191 21
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -1016(%rbp)
	.loc 1 192 6
	cmpq	$0, -1016(%rbp)
	jne	.L29
	.loc 1 193 20
	leaq	.LC14(%rip), %rax
	movq	%rax, -1016(%rbp)
.L29:
	.loc 1 195 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 195 5
	testl	%eax, %eax
	je	.L30
	.loc 1 196 3
	movq	-1016(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L30:
	.loc 1 214 7
	movq	-1016(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1170(%rbp)
	.loc 1 215 5
	cmpb	$47, -1170(%rbp)
	je	.L31
	.loc 1 215 26 discriminator 1
	cmpb	$46, -1170(%rbp)
	je	.L31
.LBB2:
	.loc 1 216 22
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -1000(%rbp)
	.loc 1 217 6
	cmpq	$0, -1000(%rbp)
	jne	.L32
	.loc 1 218 9
	leaq	.LC17(%rip), %rax
	movq	%rax, -1000(%rbp)
.L32:
	.loc 1 219 27
	movq	-1000(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 1 219 42 discriminator 1
	movq	-1016(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 219 40 discriminator 2
	addq	%rbx, %rax
	.loc 1 219 20 discriminator 2
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -960(%rbp)
	.loc 1 220 3
	movq	-1000(%rbp), %rdx
	movq	-960(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 1 221 3
	movq	-1016(%rbp), %rdx
	movq	-960(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	.loc 1 222 19
	movq	-960(%rbp), %rax
	movq	%rax, -1008(%rbp)
.LBE2:
	.loc 1 215 50
	jmp	.L33
.L31:
	.loc 1 225 21
	movq	-1016(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, -1008(%rbp)
.L33:
	.loc 1 227 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 227 5
	testl	%eax, %eax
	je	.L34
	.loc 1 228 3
	movq	-1008(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L34:
	.loc 1 230 18
	movq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	config_load@PLT
	.loc 1 230 16 discriminator 1
	movq	%rax, config_struct(%rip)
	.loc 1 232 2
	movq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 236 5
	cmpq	$0, -1096(%rbp)
	je	.L35
	.loc 1 237 16
	movq	config_struct(%rip), %rax
	.loc 1 237 31
	movq	-1096(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L35:
	.loc 1 239 5
	cmpq	$0, -1088(%rbp)
	je	.L36
	.loc 1 240 16
	movq	config_struct(%rip), %rax
	.loc 1 240 29
	movq	-1088(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L36:
	.loc 1 242 5
	cmpq	$0, -1072(%rbp)
	je	.L37
	.loc 1 243 16
	movq	config_struct(%rip), %rax
	.loc 1 243 37
	movq	-1072(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L37:
	.loc 1 245 5
	cmpq	$0, -1064(%rbp)
	je	.L38
	.loc 1 246 32
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	.loc 1 246 16 discriminator 1
	movq	config_struct(%rip), %rax
	.loc 1 246 30 discriminator 1
	movl	%edx, 56(%rax)
.L38:
	.loc 1 248 5
	cmpq	$0, -1056(%rbp)
	je	.L39
	.loc 1 249 29
	movq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	.loc 1 249 16 discriminator 1
	movq	config_struct(%rip), %rax
	.loc 1 249 27 discriminator 1
	movl	%edx, 60(%rax)
.L39:
	.loc 1 251 5
	cmpq	$0, -1048(%rbp)
	je	.L40
	.loc 1 252 16
	movq	config_struct(%rip), %rax
	.loc 1 252 33
	movq	-1048(%rbp), %rdx
	movq	%rdx, (%rax)
.L40:
	.loc 1 254 5
	cmpl	$0, -1160(%rbp)
	je	.L41
	.loc 1 255 16
	movq	config_struct(%rip), %rax
	.loc 1 255 31
	movl	-1160(%rbp), %edx
	movl	%edx, 84(%rax)
.L41:
	.loc 1 257 5
	cmpq	$0, -1040(%rbp)
	je	.L42
	.loc 1 258 37
	movq	-1040(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	.loc 1 258 16 discriminator 1
	movq	config_struct(%rip), %rax
	.loc 1 258 35 discriminator 1
	movl	%edx, 116(%rax)
.L42:
	.loc 1 260 5
	cmpq	$0, -1024(%rbp)
	je	.L43
	.loc 1 261 31
	movq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	.loc 1 261 16 discriminator 1
	movq	config_struct(%rip), %rax
	.loc 1 261 29 discriminator 1
	movl	%edx, 68(%rax)
.L43:
	.loc 1 263 2
	movq	-1088(%rbp), %rdx
	movq	-1080(%rbp), %rax
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
	movl	-1160(%rbp), %eax
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
	movq	%rax, -952(%rbp)
	.loc 1 283 29
	movl	$0, %eax
	call	timeweightSlow_create@PLT
	movq	%rax, -944(%rbp)
	.loc 1 284 21
	movl	$3, %edi
	call	aweighting_create@PLT
	movq	%rax, -936(%rbp)
	.loc 1 285 21
	movl	$2, %edi
	call	cweighting_create@PLT
	movq	%rax, -928(%rbp)
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
	movq	%rax, -920(%rbp)
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
	movl	%eax, -1112(%rbp)
.LBB3:
	.loc 1 297 11
	movl	$0, -1156(%rbp)
	.loc 1 297 2
	jmp	.L46
.L47:
	.loc 1 298 33
	movl	-1156(%rbp), %eax
	movl	%eax, %edi
	call	third_octave_create@PLT
	movq	%rax, %rcx
	.loc 1 298 31 discriminator 1
	movl	-1156(%rbp), %eax
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
	movl	-1156(%rbp), %eax
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
	movl	-1112(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, %rcx
	.loc 1 300 29 discriminator 1
	movl	-1156(%rbp), %eax
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
	addl	$1, -1156(%rbp)
.L46:
	.loc 1 297 20 discriminator 1
	movl	-1156(%rbp), %eax
	cmpl	$29, %eax
	jbe	.L47
.LBE3:
	.loc 1 303 27
	movl	-1112(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -912(%rbp)
	.loc 1 304 27
	movl	-1112(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -904(%rbp)
	.loc 1 305 31
	movl	-1112(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -896(%rbp)
	.loc 1 306 31
	movl	-1112(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -888(%rbp)
	.loc 1 308 21
	movl	$0, %eax
	call	levels_create@PLT
	movq	%rax, -880(%rbp)
	.loc 1 309 21
	movl	$0, %eax
	call	levels_create@PLT
	movq	%rax, -872(%rbp)
	.loc 1 310 25
	movl	$0, %eax
	call	levels_create@PLT
	movq	%rax, -864(%rbp)
	.loc 1 311 25
	movl	$0, %eax
	call	levels_create@PLT
	movq	%rax, -856(%rbp)
	.loc 1 313 26
	movl	$0, %eax
	call	levels_create@PLT
	movq	%rax, -848(%rbp)
	.loc 1 315 47
	movq	config_struct(%rip), %rax
	movl	112(%rax), %eax
	.loc 1 315 85
	movq	config_struct(%rip), %rdx
	movl	72(%rdx), %edx
	.loc 1 315 104
	movl	%edx, %edx
	imulq	$274877907, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ebx
	shrl	$6, %ebx
	.loc 1 315 69
	movl	$0, %edx
	divl	%ebx
	.loc 1 315 6
	movl	%eax, -1108(%rbp)
	.loc 1 316 6
	movl	$0, -1152(%rbp)
	.loc 1 318 8
	movss	.LC20(%rip), %xmm0
	movss	%xmm0, -1148(%rbp)
	.loc 1 319 2
	movl	-1108(%rbp), %eax
	movq	%rsp, %rdx
	movq	%rdx, %r12
	.loc 1 319 8 discriminator 1
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -840(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L48:
	cmpq	%rdx, %rsp
	je	.L49
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L48
.L49:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L50
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L50:
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -832(%rbp)
	.loc 1 324 19
	movq	config_struct(%rip), %rax
	movl	116(%rax), %eax
	.loc 1 324 5
	testl	%eax, %eax
	je	.L51
.LBB4:
	.loc 1 327 12
	movl	$0, -1144(%rbp)
	.loc 1 328 49
	movq	config_struct(%rip), %rax
	movl	116(%rax), %eax
	.loc 1 328 73
	imull	$1000, %eax, %eax
	.loc 1 328 12
	addl	$2000, %eax
	movl	%eax, -1104(%rbp)
	.loc 1 329 9
	pxor	%xmm0, %xmm0
	movss	%xmm0, -1140(%rbp)
	.loc 1 330 12
	movl	$0, -1136(%rbp)
	.loc 1 331 56
	movq	config_struct(%rip), %rax
	.loc 1 331 3
	movl	116(%rax), %eax
	movl	%eax, %esi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 333 38
	movl	-1112(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -824(%rbp)
	.loc 1 335 9
	jmp	.L56
.L59:
.LBB5:
	.loc 1 336 67
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 336 25
	movl	%eax, %edx
	movq	-920(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	input_device_read@PLT
	movq	%rax, -816(%rbp)
	.loc 1 337 7
	cmpq	$0, -816(%rbp)
	je	.L100
	.loc 1 340 36
	movq	-824(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -808(%rbp)
	.loc 1 341 18
	movq	-824(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 341 18 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 341 35 is_stmt 1 discriminator 1
	cmpq	-816(%rbp), %rax
	jnb	.L55
	.loc 1 341 12 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$341, %edx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L55:
	.loc 1 343 4
	movq	-816(%rbp), %rax
	movl	%eax, %ecx
	movq	-808(%rbp), %rdx
	movq	-920(%rbp), %rsi
	movq	-936(%rbp), %rax
	movq	%rax, %rdi
	call	aweighting_filtering@PLT
	.loc 1 344 4
	movq	-816(%rbp), %rax
	movl	%eax, %edx
	movq	-808(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_block_square@PLT
	.loc 1 345 4
	movq	-816(%rbp), %rax
	movl	%eax, %ecx
	movq	-808(%rbp), %rdx
	movq	-808(%rbp), %rsi
	movq	-952(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_filtering@PLT
	.loc 1 346 4
	movq	-816(%rbp), %rax
	movl	%eax, %edx
	movq	-824(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 348 8
	movq	-824(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	movl	%eax, %edx
	.loc 1 348 55 discriminator 1
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 1 348 7 discriminator 1
	cmpl	%eax, %edx
	jb	.L56
	.loc 1 349 5
	movq	-824(%rbp), %rcx
	movq	-864(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 350 8
	cmpl	$1999, -1144(%rbp)
	ja	.L57
	.loc 1 351 10
	movl	verbose_flag.1(%rip), %eax
	.loc 1 351 9
	testl	%eax, %eax
	je	.L58
	.loc 1 352 7
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L58
.L57:
	.loc 1 355 33
	movq	-864(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 355 38
	movss	(%rax), %xmm0
	.loc 1 355 18
	movss	-1140(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -1140(%rbp)
	.loc 1 356 15
	addl	$1, -1136(%rbp)
	.loc 1 357 10
	movl	verbose_flag.1(%rip), %eax
	.loc 1 357 9
	testl	%eax, %eax
	je	.L58
	.loc 1 358 44
	movl	-1104(%rbp), %eax
	subl	-1144(%rbp), %eax
	.loc 1 358 7
	movl	%eax, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	movl	%eax, %esi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L58:
	.loc 1 360 34
	movq	-864(%rbp), %rax
	movl	$0, (%rax)
	.loc 1 361 30
	movq	config_struct(%rip), %rax
	movl	72(%rax), %eax
	.loc 1 361 14
	addl	%eax, -1144(%rbp)
.L56:
.LBE5:
	.loc 1 335 19
	movl	-1144(%rbp), %eax
	cmpl	-1104(%rbp), %eax
	jb	.L59
	jmp	.L54
.L100:
.LBB6:
	.loc 1 338 5
	nop
.L54:
.LBE6:
	.loc 1 364 16
	movq	config_struct(%rip), %rax
	.loc 1 364 35
	movl	$0, 116(%rax)
	.loc 1 365 51
	movq	config_struct(%rip), %rax
	movss	120(%rax), %xmm1
	.loc 1 366 16
	movl	-1136(%rbp), %eax
	testq	%rax, %rax
	js	.L60
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L61
.L60:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L61:
	movss	-1140(%rbp), %xmm2
	divss	%xmm0, %xmm2
	.loc 1 365 16
	movq	config_struct(%rip), %rax
	.loc 1 365 75
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	.loc 1 365 36
	movss	%xmm0, 124(%rax)
	.loc 1 368 3
	movq	-824(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 372 7
	movl	verbose_flag.1(%rip), %eax
	.loc 1 372 6
	testl	%eax, %eax
	je	.L51
	.loc 1 373 59
	movq	config_struct(%rip), %rax
	movss	120(%rax), %xmm0
	.loc 1 373 4
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 374 42
	movl	-1136(%rbp), %eax
	testq	%rax, %rax
	js	.L62
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L63
.L62:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L63:
	movss	-1140(%rbp), %xmm1
	divss	%xmm0, %xmm1
	.loc 1 374 4
	pxor	%xmm6, %xmm6
	cvtss2sd	%xmm1, %xmm6
	movq	%xmm6, %rax
	movq	%rax, %xmm0
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 375 53
	movq	config_struct(%rip), %rax
	movss	124(%rax), %xmm0
	.loc 1 375 4
	pxor	%xmm7, %xmm7
	cvtss2sd	%xmm0, %xmm7
	movq	%xmm7, %rax
	movq	%rax, %xmm0
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
.L51:
.LBE4:
	.loc 1 381 2
	movl	$0, %eax
	call	server_init@PLT
	.loc 1 383 19
	movq	config_struct(%rip), %rax
	movzbl	128(%rax), %eax
	.loc 1 383 5
	testb	%al, %al
	je	.L64
	.loc 1 384 3
	movl	$0, %eax
	call	mqtt_begin@PLT
.L64:
	.loc 1 386 6
	cmpq	$0, -1088(%rbp)
	sete	%al
	movb	%al, -1169(%rbp)
	.loc 1 388 2
	movzbl	-1169(%rbp), %eax
	movl	%eax, %edi
	call	output_open@PLT
	.loc 1 390 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 390 5
	testl	%eax, %eax
	je	.L65
	.loc 1 391 3
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L65:
	.loc 1 393 9
	movq	$0, -992(%rbp)
	.loc 1 394 9
	movq	$0, -984(%rbp)
	.loc 1 395 9
	movq	$0, -976(%rbp)
	.loc 1 396 9
	movq	$0, -968(%rbp)
	.loc 1 398 6
	movzbl	-1169(%rbp), %eax
	xorl	$1, %eax
	.loc 1 398 5
	testb	%al, %al
	je	.L66
	.loc 1 399 8
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	audit_create@PLT
	movq	%rax, -992(%rbp)
	.loc 1 400 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	audit_create@PLT
	movq	%rax, -984(%rbp)
	.loc 1 401 8
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	call	audit_create@PLT
	movq	%rax, -976(%rbp)
	.loc 1 402 8
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	audit_create@PLT
	movq	%rax, -968(%rbp)
.L66:
	.loc 1 405 5
	cmpb	$0, -1169(%rbp)
	je	.L67
	.loc 1 406 17
	movq	config_struct(%rip), %rax
	.loc 1 406 40
	movl	$1, 80(%rax)
.L67:
	.loc 1 409 2
	movl	$0, %eax
	call	lae_average_create@PLT
	.loc 1 411 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 411 5
	testl	%eax, %eax
	je	.L68
	.loc 1 412 3
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L68:
	.loc 1 414 11
	movl	$0, -1132(%rbp)
	.loc 1 415 15
	movl	-1160(%rbp), %eax
	imull	$1000, %eax, %eax
	movl	%eax, -1160(%rbp)
	.loc 1 417 2
	movl	$0, %eax
	call	record_start@PLT
	.loc 1 419 8
	jmp	.L69
.L89:
.LBB7:
	.loc 1 420 66
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 420 24
	movl	%eax, %edx
	movq	-920(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	input_device_read@PLT
	movq	%rax, -800(%rbp)
	.loc 1 421 6
	cmpq	$0, -800(%rbp)
	je	.L101
.LBB8:
	.loc 1 424 11
	movl	$0, -1128(%rbp)
	.loc 1 424 3
	jmp	.L72
.L74:
.LBB9:
	.loc 1 425 26
	movl	-1128(%rbp), %eax
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
	.loc 1 426 18
	movl	-1128(%rbp), %eax
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
	.loc 1 426 18 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 426 35 is_stmt 1 discriminator 1
	cmpq	-800(%rbp), %rax
	jnb	.L73
	.loc 1 426 12 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$426, %edx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L73:
	.loc 1 427 4
	movq	-800(%rbp), %rax
	movl	%eax, %ecx
	movl	-1128(%rbp), %eax
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
	movq	-920(%rbp), %rsi
	movq	%rax, %rdi
	call	third_octave_filtering@PLT
	.loc 1 428 4
	movq	-800(%rbp), %rax
	movl	%eax, %edx
	movq	-760(%rbp), %rcx
	movq	-760(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_block_square@PLT
	.loc 1 429 4
	movq	-800(%rbp), %rax
	movl	%eax, %ecx
	movq	-760(%rbp), %rdx
	movq	-760(%rbp), %rsi
	movq	-952(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_filtering@PLT
	.loc 1 430 4
	movq	-800(%rbp), %rax
	movl	%eax, %ecx
	movl	-1128(%rbp), %eax
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
	.loc 1 424 23 discriminator 2
	addl	$1, -1128(%rbp)
.L72:
	.loc 1 424 17 discriminator 1
	cmpl	$29, -1128(%rbp)
	jle	.L74
.LBE8:
	.loc 1 433 25
	movq	-912(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -792(%rbp)
	.loc 1 434 25
	movq	-904(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -784(%rbp)
	.loc 1 435 29
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -776(%rbp)
	.loc 1 436 29
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -768(%rbp)
	.loc 1 437 17
	movq	-912(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 437 17 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 437 34 is_stmt 1 discriminator 1
	cmpq	-800(%rbp), %rax
	jnb	.L75
	.loc 1 437 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$437, %edx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L75:
	.loc 1 438 17
	movq	-904(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 438 17 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 438 34 is_stmt 1 discriminator 1
	cmpq	-800(%rbp), %rax
	jnb	.L76
	.loc 1 438 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$438, %edx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L76:
	.loc 1 439 17
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 439 17 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 439 34 is_stmt 1 discriminator 1
	cmpq	-800(%rbp), %rax
	jnb	.L77
	.loc 1 439 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$439, %edx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L77:
	.loc 1 440 17
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 440 17 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 440 34 is_stmt 1 discriminator 1
	cmpq	-800(%rbp), %rax
	jnb	.L78
	.loc 1 440 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$440, %edx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L78:
	.loc 1 442 3
	movq	-800(%rbp), %rax
	movl	%eax, %ecx
	movq	-792(%rbp), %rdx
	movq	-920(%rbp), %rsi
	movq	-936(%rbp), %rax
	movq	%rax, %rdi
	call	aweighting_filtering@PLT
	.loc 1 443 3
	movq	-800(%rbp), %rax
	movl	%eax, %ecx
	movq	-784(%rbp), %rdx
	movq	-920(%rbp), %rsi
	movq	-928(%rbp), %rax
	movq	%rax, %rdi
	call	cweighting_filtering@PLT
	.loc 1 444 3
	movq	-800(%rbp), %rax
	movl	%eax, %edx
	movq	-912(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 445 3
	movq	-800(%rbp), %rax
	movl	%eax, %edx
	movq	-904(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 447 3
	movq	-800(%rbp), %rax
	movl	%eax, %edx
	movq	-776(%rbp), %rcx
	movq	-792(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_block_square@PLT
	.loc 1 448 3
	movq	-800(%rbp), %rax
	movl	%eax, %edx
	movq	-768(%rbp), %rcx
	movq	-792(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_block_square@PLT
	.loc 1 450 3
	movq	-800(%rbp), %rax
	movl	%eax, %ecx
	movq	-776(%rbp), %rdx
	movq	-776(%rbp), %rsi
	movq	-952(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_filtering@PLT
	.loc 1 451 3
	movq	-800(%rbp), %rax
	movl	%eax, %ecx
	movq	-768(%rbp), %rdx
	movq	-768(%rbp), %rsi
	movq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_filtering@PLT
	.loc 1 452 3
	movq	-800(%rbp), %rax
	movl	%eax, %edx
	movq	-896(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 453 3
	movq	-800(%rbp), %rax
	movl	%eax, %edx
	movq	-888(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 455 7
	movzbl	-1169(%rbp), %eax
	xorl	$1, %eax
	.loc 1 455 6
	testb	%al, %al
	je	.L79
	.loc 1 456 4
	movq	-800(%rbp), %rax
	movl	%eax, %edx
	movq	-920(%rbp), %rcx
	movq	-992(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	audit_append_samples@PLT
	.loc 1 457 4
	movq	-800(%rbp), %rax
	movl	%eax, %edx
	movq	-792(%rbp), %rcx
	movq	-984(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	audit_append_samples@PLT
	.loc 1 458 4
	movq	-800(%rbp), %rax
	movl	%eax, %edx
	movq	-792(%rbp), %rcx
	movq	-976(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	audit_append_samples@PLT
	.loc 1 459 4
	movq	-800(%rbp), %rax
	movl	%eax, %edx
	movq	-776(%rbp), %rcx
	movq	-968(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	audit_append_samples@PLT
.L79:
	.loc 1 462 7
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	movl	%eax, %edx
	.loc 1 462 48 discriminator 1
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 1 462 6 discriminator 1
	cmpl	%eax, %edx
	jb	.L80
.LBB10:
.LBB11:
	.loc 1 463 12
	movl	$0, -1124(%rbp)
	.loc 1 463 4
	jmp	.L81
.L82:
	.loc 1 464 5
	movq	config_struct(%rip), %rsi
	movl	-1124(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$720, %rax
	movq	(%rax), %rcx
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
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 463 24 discriminator 3
	addl	$1, -1124(%rbp)
.L81:
	.loc 1 463 18 discriminator 1
	cmpl	$29, -1124(%rbp)
	jle	.L82
.LBE11:
	.loc 1 466 4
	movq	config_struct(%rip), %rdx
	movq	-912(%rbp), %rcx
	movq	-880(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 467 4
	movq	config_struct(%rip), %rdx
	movq	-904(%rbp), %rcx
	movq	-872(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 468 4
	movq	config_struct(%rip), %rdx
	movq	-896(%rbp), %rcx
	movq	-864(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 469 4
	movq	config_struct(%rip), %rdx
	movq	-888(%rbp), %rcx
	movq	-856(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 471 48
	movq	-864(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 471 34
	movq	-848(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 472 75
	movq	-864(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 472 94
	movq	-864(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 472 111
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 472 81
	salq	$2, %rax
	addq	%rax, %rdx
	.loc 1 472 19
	movq	-848(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 472 39
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 472 56
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 472 25
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 1 472 81
	movss	(%rdx), %xmm0
	.loc 1 472 61
	movss	%xmm0, (%rax)
	.loc 1 473 77
	movq	-864(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 1 473 98
	movq	-864(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 473 115
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 473 85
	salq	$2, %rax
	addq	%rax, %rdx
	.loc 1 473 19
	movq	-848(%rbp), %rax
	movq	32(%rax), %rcx
	.loc 1 473 41
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 473 58
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 473 27
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 1 473 85
	movss	(%rdx), %xmm0
	.loc 1 473 63
	movss	%xmm0, (%rax)
	.loc 1 474 74
	movq	-864(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 474 92
	movq	-864(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 474 109
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 474 79
	salq	$2, %rax
	addq	%rax, %rdx
	.loc 1 474 19
	movq	-848(%rbp), %rax
	movq	40(%rax), %rcx
	.loc 1 474 38
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 474 55
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 474 24
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 1 474 79
	movss	(%rdx), %xmm0
	.loc 1 474 60
	movss	%xmm0, (%rax)
	.loc 1 475 77
	movq	-864(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 475 98
	movq	-864(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 475 115
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 475 85
	salq	$2, %rax
	addq	%rax, %rdx
	.loc 1 475 19
	movq	-848(%rbp), %rax
	movq	24(%rax), %rcx
	.loc 1 475 41
	movq	-848(%rbp), %rax
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
	.loc 1 476 73
	movq	-872(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 476 90
	movq	-872(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 476 107
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 476 81
	salq	$2, %rax
	addq	%rax, %rdx
	.loc 1 476 19
	movq	-848(%rbp), %rax
	movq	16(%rax), %rcx
	.loc 1 476 41
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 476 58
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 476 27
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 1 476 81
	movss	(%rdx), %xmm0
	.loc 1 476 63
	movss	%xmm0, (%rax)
	.loc 1 478 51
	movq	-856(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 478 69
	movq	-856(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 478 85
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 478 56
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 478 37
	movq	-832(%rbp), %rax
	movl	-1152(%rbp), %edx
	movslq	%edx, %rdx
	movss	%xmm0, (%rax,%rdx,4)
	.loc 1 480 6
	movl	-1152(%rbp), %eax
	cmpl	-1108(%rbp), %eax
	jl	.L83
	.loc 1 481 24
	movl	-1152(%rbp), %ecx
	movq	-832(%rbp), %rax
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_percentil@PLT
	movd	%xmm0, %eax
	movl	%eax, -1148(%rbp)
	.loc 1 482 21
	movl	$0, -1152(%rbp)
.L83:
	.loc 1 485 7
	movl	-1148(%rbp), %edx
	movq	-856(%rbp), %rax
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	event_check@PLT
	.loc 1 485 6 discriminator 1
	testl	%eax, %eax
	je	.L84
	.loc 1 486 5
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 487 5
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
.L84:
	.loc 1 490 37
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 490 54
	subl	$1, %eax
	.loc 1 490 8
	movl	%eax, -1100(%rbp)
	.loc 1 496 19
	movq	-848(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 496 27
	movl	-1100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 492 4
	movss	(%rax), %xmm5
	movss	%xmm5, -1192(%rbp)
	.loc 1 495 19
	movq	-848(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 495 27
	movl	-1100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 492 4
	movss	(%rax), %xmm6
	movss	%xmm6, -1204(%rbp)
	.loc 1 494 19
	movq	-848(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 494 24
	movl	-1100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 492 4
	movss	(%rax), %xmm7
	movss	%xmm7, -1208(%rbp)
	.loc 1 493 19
	movq	-848(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 493 27
	movl	-1100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 492 4
	movss	(%rax), %xmm1
	movss	%xmm1, -1212(%rbp)
	.loc 1 492 50
	movq	-848(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 492 56
	movl	-1100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 492 4
	movl	(%rax), %ebx
	.loc 1 492 26
	movl	$0, %edi
	call	time@PLT
	.loc 1 492 4 discriminator 1
	movss	-1192(%rbp), %xmm4
	movss	-1204(%rbp), %xmm3
	movss	-1208(%rbp), %xmm2
	movss	-1212(%rbp), %xmm1
	movd	%ebx, %xmm0
	movq	%rax, %rdi
	call	server_send@PLT
	.loc 1 498 21
	movq	config_struct(%rip), %rax
	movzbl	128(%rax), %eax
	.loc 1 498 7
	testb	%al, %al
	je	.L85
	.loc 1 499 46
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 499 63
	subl	$1, %eax
	.loc 1 499 5
	movl	%eax, %edx
	movq	-848(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mqtt_publish@PLT
.L85:
	.loc 1 500 8
	movl	verbose_flag.1(%rip), %eax
	.loc 1 500 7
	testl	%eax, %eax
	je	.L86
	.loc 1 506 19
	movq	-848(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 506 27
	movl	-1100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 501 5
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	.loc 1 505 19
	movq	-848(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 505 27
	movl	-1100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 501 5
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	.loc 1 504 19
	movq	-848(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 504 24
	movl	-1100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 501 5
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 1 503 19
	movq	-848(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 503 27
	movl	-1100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 501 5
	cvtss2sd	%xmm0, %xmm0
	.loc 1 502 19
	movq	-848(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 502 25
	movl	-1100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm4
	.loc 1 501 5
	cvtss2sd	%xmm4, %xmm4
	movq	%xmm4, %rax
	movapd	%xmm3, %xmm4
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$5, %eax
	call	printf@PLT
.L86:
	.loc 1 508 33
	movq	config_struct(%rip), %rax
	movl	72(%rax), %eax
	.loc 1 508 17
	addl	%eax, -1132(%rbp)
.L80:
.LBE10:
	.loc 1 512 20
	movq	-848(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 512 53
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	.loc 1 512 6
	cmpl	%eax, %edx
	jne	.L87
	.loc 1 513 4
	movzbl	-1169(%rbp), %edx
	leaq	-752(%rbp), %rcx
	movq	-848(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	output_record@PLT
	.loc 1 514 34
	movq	-848(%rbp), %rax
	movl	$0, (%rax)
.L87:
	.loc 1 517 6
	cmpb	$0, -1169(%rbp)
	je	.L69
	.loc 1 518 17
	movq	record_struct(%rip), %rax
	movq	944(%rax), %rcx
	.loc 1 518 48
	movq	config_struct(%rip), %rax
	movl	56(%rax), %edx
	.loc 1 518 77
	movq	config_struct(%rip), %rax
	movl	92(%rax), %eax
	.loc 1 518 62
	imull	%edx, %eax
	movl	%eax, %eax
	.loc 1 517 18 discriminator 1
	cmpq	%rax, %rcx
	jl	.L69
	.loc 1 520 4
	movl	$0, %eax
	call	record_stop@PLT
	.loc 1 521 8
	movl	$0, %eax
	call	record_start@PLT
	.loc 1 521 6 discriminator 1
	testl	%eax, %eax
	jne	.L69
	.loc 1 522 5
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	movl	$1, %esi
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 523 12
	movl	$1, %eax
.LBE7:
	.loc 1 523 12 is_stmt 0 discriminator 1
	movq	%r12, %rsp
	.loc 1 131 11 is_stmt 1 discriminator 1
	jmp	.L96
.L69:
	.loc 1 419 9
	movzbl	running(%rip), %eax
	.loc 1 419 17
	testb	%al, %al
	je	.L71
	.loc 1 419 17 is_stmt 0 discriminator 1
	cmpl	$0, -1160(%rbp)
	je	.L89
	.loc 1 419 55 is_stmt 1 discriminator 2
	movl	-1160(%rbp), %eax
	.loc 1 419 39 discriminator 2
	cmpl	%eax, -1132(%rbp)
	jb	.L89
	jmp	.L71
.L101:
.LBB12:
	.loc 1 422 4
	nop
.L71:
.LBE12:
	.loc 1 527 10
	movb	$0, running(%rip)
	.loc 1 528 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 528 5
	testl	%eax, %eax
	je	.L90
	.loc 1 529 3
	movl	-1132(%rbp), %eax
	movl	%eax, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	movl	%eax, %esi
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L90:
	.loc 1 531 2
	movzbl	-1169(%rbp), %edx
	leaq	-752(%rbp), %rcx
	movq	-848(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	output_record@PLT
	.loc 1 533 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 533 5
	testl	%eax, %eax
	je	.L91
	.loc 1 534 3
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L91:
	.loc 1 535 2
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdi
	call	config_save@PLT
	.loc 1 547 2
	movl	$0, %eax
	call	server_end@PLT
	.loc 1 548 19
	movq	config_struct(%rip), %rax
	movzbl	128(%rax), %eax
	.loc 1 548 5
	testb	%al, %al
	je	.L92
	.loc 1 549 3
	movl	$0, %eax
	call	mqtt_end@PLT
.L92:
	.loc 1 550 2
	movl	$0, %eax
	call	input_device_close@PLT
	.loc 1 551 2
	movl	$0, %eax
	call	output_close@PLT
.LBB13:
	.loc 1 553 10
	movl	$0, -1120(%rbp)
	.loc 1 553 2
	jmp	.L93
.L94:
	.loc 1 554 3
	movl	-1120(%rbp), %eax
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
	.loc 1 555 3
	movl	-1120(%rbp), %eax
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
	.loc 1 556 3
	movl	-1120(%rbp), %eax
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
	.loc 1 553 22 discriminator 3
	addl	$1, -1120(%rbp)
.L93:
	.loc 1 553 16 discriminator 1
	cmpl	$29, -1120(%rbp)
	jle	.L94
.LBE13:
	.loc 1 559 2
	movq	-848(%rbp), %rax
	movq	%rax, %rdi
	call	levels_destroy@PLT
	.loc 1 560 2
	movq	-872(%rbp), %rax
	movq	%rax, %rdi
	call	levels_destroy@PLT
	.loc 1 561 2
	movq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	levels_destroy@PLT
	.loc 1 562 2
	movq	-856(%rbp), %rax
	movq	%rax, %rdi
	call	levels_destroy@PLT
	.loc 1 563 2
	movq	-864(%rbp), %rax
	movq	%rax, %rdi
	call	levels_destroy@PLT
	.loc 1 564 2
	movq	-952(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_destroy@PLT
	.loc 1 565 2
	movq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_destroy@PLT
	.loc 1 566 2
	movq	-936(%rbp), %rax
	movq	%rax, %rdi
	call	aweighting_destroy@PLT
	.loc 1 567 2
	movq	-928(%rbp), %rax
	movq	%rax, %rdi
	call	cweighting_destroy@PLT
	.loc 1 568 2
	movl	$0, %eax
	call	lae_average_destroy@PLT
	.loc 1 569 2
	movq	config_struct(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	config_destroy@PLT
	.loc 1 570 2
	movq	-920(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 571 2
	movq	-904(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 572 2
	movq	-912(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 573 2
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 574 2
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 575 36
	movq	record_struct(%rip), %rax
	.loc 1 575 2
	movq	952(%rax), %rax
	movq	%rax, %rdi
	call	delete_files_storage@PLT
	.loc 1 576 36
	movq	record_struct(%rip), %rax
	.loc 1 576 2
	movq	960(%rax), %rax
	movq	%rax, %rdi
	call	delete_files_storage@PLT
	movq	%r12, %rsp
	movl	$0, %eax
.L96:
	.loc 1 577 1
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L97
	call	__stack_chk_fail@PLT
.L97:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE311:
	.size	main, .-main
	.section	.rodata
.LC47:
	.string	"verbose"
.LC48:
	.string	"help"
.LC49:
	.string	"version"
.LC50:
	.string	"device"
.LC51:
	.string	"input"
.LC52:
	.string	"output"
.LC53:
	.string	"output_format"
.LC54:
	.string	"sample_rate"
.LC55:
	.string	"channels"
.LC56:
	.string	"identification"
.LC57:
	.string	"duration"
.LC58:
	.string	"calibrate"
.LC59:
	.string	"config"
.LC60:
	.string	"block_size"
	.section	.data.rel.local,"aw"
	.align 32
	.type	long_options.2, @object
	.size	long_options.2, 480
long_options.2:
	.quad	.LC47
	.long	0
	.zero	4
	.quad	verbose_flag.1
	.long	1
	.zero	4
	.quad	.LC48
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC49
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC50
	.long	1
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC51
	.long	1
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC52
	.long	1
	.zero	4
	.quad	0
	.long	111
	.zero	4
	.quad	.LC53
	.long	1
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC54
	.long	1
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC55
	.long	1
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC56
	.long	1
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC57
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC58
	.long	2
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC59
	.long	1
	.zero	4
	.quad	0
	.long	103
	.zero	4
	.quad	.LC60
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
	.align 4
.LC20:
	.long	1109393408
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
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
	.file 28 "src/sbuffer.h"
	.file 29 "/usr/include/assert.h"
	.file 30 "/usr/include/stdlib.h"
	.file 31 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1c1a
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1e
	.long	.LASF368
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
	.uleb128 0x17
	.long	0xc8
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF17
	.uleb128 0x17
	.long	0xd2
	.uleb128 0x10
	.long	0xd2
	.long	0xee
	.uleb128 0x14
	.long	0x3a
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	.LASF56
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
	.long	.LASF369
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x18
	.long	.LASF48
	.uleb128 0x4
	.long	0x289
	.uleb128 0x4
	.long	0xee
	.uleb128 0x10
	.long	0xd2
	.long	0x2a8
	.uleb128 0x14
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
	.uleb128 0x10
	.long	0xd2
	.long	0x2d1
	.uleb128 0x14
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
	.uleb128 0x15
	.long	.LASF51
	.byte	0x6
	.byte	0x96
	.byte	0xe
	.long	0x2db
	.uleb128 0x15
	.long	.LASF52
	.byte	0x6
	.byte	0x97
	.byte	0xe
	.long	0x2db
	.uleb128 0x3
	.long	.LASF53
	.byte	0x7
	.byte	0xa
	.byte	0x12
	.long	0xbc
	.uleb128 0x15
	.long	.LASF54
	.byte	0x8
	.byte	0x24
	.byte	0xe
	.long	0xc8
	.uleb128 0x15
	.long	.LASF55
	.byte	0x8
	.byte	0x3b
	.byte	0xc
	.long	0x72
	.uleb128 0xe
	.long	.LASF57
	.byte	0x20
	.byte	0x9
	.byte	0x32
	.byte	0x8
	.long	0x363
	.uleb128 0x1
	.long	.LASF58
	.byte	0x9
	.byte	0x34
	.byte	0xf
	.long	0x2d1
	.byte	0
	.uleb128 0x1
	.long	.LASF59
	.byte	0x9
	.byte	0x37
	.byte	0x7
	.long	0x72
	.byte	0x8
	.uleb128 0x1
	.long	.LASF60
	.byte	0x9
	.byte	0x38
	.byte	0x8
	.long	0x368
	.byte	0x10
	.uleb128 0x6
	.string	"val"
	.byte	0x9
	.byte	0x39
	.byte	0x7
	.long	0x72
	.byte	0x18
	.byte	0
	.uleb128 0x17
	.long	0x321
	.uleb128 0x4
	.long	0x72
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF61
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.long	.LASF62
	.uleb128 0x3
	.long	.LASF63
	.byte	0xa
	.byte	0x34
	.byte	0xe
	.long	0xd2
	.uleb128 0x3
	.long	.LASF64
	.byte	0xa
	.byte	0x3d
	.byte	0x16
	.long	0x41
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.long	.LASF65
	.uleb128 0x17
	.long	0x393
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.long	.LASF66
	.uleb128 0x3
	.long	.LASF67
	.byte	0xb
	.byte	0x27
	.byte	0x18
	.long	0x3b2
	.uleb128 0xe
	.long	.LASF68
	.byte	0x10
	.byte	0xb
	.byte	0x2b
	.byte	0x8
	.long	0x3da
	.uleb128 0x1
	.long	.LASF69
	.byte	0xb
	.byte	0x2d
	.byte	0xa
	.long	0x3da
	.byte	0
	.uleb128 0x6
	.string	"len"
	.byte	0xb
	.byte	0x2e
	.byte	0x9
	.long	0x387
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x37b
	.uleb128 0x3
	.long	.LASF70
	.byte	0xc
	.byte	0x1b
	.byte	0x13
	.long	0x85
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF71
	.uleb128 0x3
	.long	.LASF72
	.byte	0xd
	.byte	0x48
	.byte	0x10
	.long	0x3fe
	.uleb128 0x4
	.long	0x403
	.uleb128 0x22
	.long	0x40e
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x4
	.long	0x3a6
	.uleb128 0x3
	.long	.LASF73
	.byte	0xe
	.byte	0x19
	.byte	0x14
	.long	0x66
	.uleb128 0x3
	.long	.LASF74
	.byte	0xe
	.byte	0x1a
	.byte	0x14
	.long	0x79
	.uleb128 0x3
	.long	.LASF75
	.byte	0xe
	.byte	0x1b
	.byte	0x14
	.long	0x98
	.uleb128 0xe
	.long	.LASF76
	.byte	0xb0
	.byte	0xf
	.byte	0x53
	.byte	0x8
	.long	0x5d8
	.uleb128 0x1
	.long	.LASF77
	.byte	0xf
	.byte	0x55
	.byte	0xe
	.long	0x2d1
	.byte	0
	.uleb128 0x1
	.long	.LASF78
	.byte	0xf
	.byte	0x56
	.byte	0xe
	.long	0x2d1
	.byte	0x8
	.uleb128 0x1
	.long	.LASF79
	.byte	0xf
	.byte	0x57
	.byte	0xe
	.long	0x2d1
	.byte	0x10
	.uleb128 0x1
	.long	.LASF80
	.byte	0xf
	.byte	0x58
	.byte	0xe
	.long	0x2d1
	.byte	0x18
	.uleb128 0x1
	.long	.LASF81
	.byte	0xf
	.byte	0x59
	.byte	0xe
	.long	0x2d1
	.byte	0x20
	.uleb128 0x1
	.long	.LASF82
	.byte	0xf
	.byte	0x5a
	.byte	0xe
	.long	0x2d1
	.byte	0x28
	.uleb128 0x1
	.long	.LASF83
	.byte	0xf
	.byte	0x5b
	.byte	0xe
	.long	0x2d1
	.byte	0x30
	.uleb128 0x1
	.long	.LASF84
	.byte	0xf
	.byte	0x5d
	.byte	0xb
	.long	0x41
	.byte	0x38
	.uleb128 0x1
	.long	.LASF85
	.byte	0xf
	.byte	0x5e
	.byte	0xb
	.long	0x41
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF86
	.byte	0xf
	.byte	0x5f
	.byte	0xb
	.long	0x41
	.byte	0x40
	.uleb128 0x1
	.long	.LASF87
	.byte	0xf
	.byte	0x60
	.byte	0xb
	.long	0x41
	.byte	0x44
	.uleb128 0x1
	.long	.LASF88
	.byte	0xf
	.byte	0x61
	.byte	0xb
	.long	0x41
	.byte	0x48
	.uleb128 0x1
	.long	.LASF89
	.byte	0xf
	.byte	0x62
	.byte	0xb
	.long	0x41
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF90
	.byte	0xf
	.byte	0x63
	.byte	0xb
	.long	0x41
	.byte	0x50
	.uleb128 0x1
	.long	.LASF91
	.byte	0xf
	.byte	0x64
	.byte	0xb
	.long	0x41
	.byte	0x54
	.uleb128 0x1
	.long	.LASF92
	.byte	0xf
	.byte	0x65
	.byte	0xb
	.long	0x41
	.byte	0x58
	.uleb128 0x1
	.long	.LASF93
	.byte	0xf
	.byte	0x66
	.byte	0xb
	.long	0x41
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF94
	.byte	0xf
	.byte	0x67
	.byte	0x8
	.long	0x5d8
	.byte	0x60
	.uleb128 0x1
	.long	.LASF95
	.byte	0xf
	.byte	0x68
	.byte	0xb
	.long	0x41
	.byte	0x64
	.uleb128 0x1
	.long	.LASF96
	.byte	0xf
	.byte	0x69
	.byte	0xb
	.long	0x41
	.byte	0x68
	.uleb128 0x1
	.long	.LASF97
	.byte	0xf
	.byte	0x6a
	.byte	0x8
	.long	0x5d8
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF98
	.byte	0xf
	.byte	0x6b
	.byte	0xb
	.long	0x41
	.byte	0x70
	.uleb128 0x1
	.long	.LASF99
	.byte	0xf
	.byte	0x6d
	.byte	0xb
	.long	0x41
	.byte	0x74
	.uleb128 0x1
	.long	.LASF100
	.byte	0xf
	.byte	0x6e
	.byte	0x8
	.long	0x393
	.byte	0x78
	.uleb128 0x1
	.long	.LASF101
	.byte	0xf
	.byte	0x6f
	.byte	0x8
	.long	0x393
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF102
	.byte	0xf
	.byte	0x71
	.byte	0x6
	.long	0x5d8
	.byte	0x80
	.uleb128 0x1
	.long	.LASF103
	.byte	0xf
	.byte	0x72
	.byte	0xe
	.long	0x2d1
	.byte	0x88
	.uleb128 0x1
	.long	.LASF104
	.byte	0xf
	.byte	0x73
	.byte	0xe
	.long	0x2d1
	.byte	0x90
	.uleb128 0x1
	.long	.LASF105
	.byte	0xf
	.byte	0x74
	.byte	0x6
	.long	0x72
	.byte	0x98
	.uleb128 0x1
	.long	.LASF106
	.byte	0xf
	.byte	0x75
	.byte	0xe
	.long	0x2d1
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF107
	.byte	0xf
	.byte	0x77
	.byte	0xe
	.long	0x2d1
	.byte	0xa8
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF108
	.uleb128 0x15
	.long	.LASF109
	.byte	0xf
	.byte	0x7f
	.byte	0x17
	.long	0x5eb
	.uleb128 0x4
	.long	0x437
	.uleb128 0xc
	.byte	0x40
	.byte	0x10
	.byte	0x32
	.long	0x66e
	.uleb128 0x1
	.long	.LASF110
	.byte	0x10
	.byte	0x33
	.byte	0xb
	.long	0x41
	.byte	0
	.uleb128 0x1
	.long	.LASF111
	.byte	0x10
	.byte	0x34
	.byte	0x9
	.long	0x66e
	.byte	0x8
	.uleb128 0x1
	.long	.LASF112
	.byte	0x10
	.byte	0x35
	.byte	0x9
	.long	0x66e
	.byte	0x10
	.uleb128 0x1
	.long	.LASF113
	.byte	0x10
	.byte	0x36
	.byte	0x9
	.long	0x66e
	.byte	0x18
	.uleb128 0x1
	.long	.LASF114
	.byte	0x10
	.byte	0x37
	.byte	0x9
	.long	0x66e
	.byte	0x20
	.uleb128 0x6
	.string	"LAE"
	.byte	0x10
	.byte	0x38
	.byte	0x9
	.long	0x66e
	.byte	0x28
	.uleb128 0x1
	.long	.LASF115
	.byte	0x10
	.byte	0x39
	.byte	0x9
	.long	0x39f
	.byte	0x30
	.uleb128 0x1
	.long	.LASF116
	.byte	0x10
	.byte	0x3a
	.byte	0xb
	.long	0x41
	.byte	0x38
	.uleb128 0x1
	.long	.LASF117
	.byte	0x10
	.byte	0x3b
	.byte	0x6
	.long	0x72
	.byte	0x3c
	.byte	0
	.uleb128 0x4
	.long	0x393
	.uleb128 0x3
	.long	.LASF118
	.byte	0x10
	.byte	0x3c
	.byte	0x3
	.long	0x5f0
	.uleb128 0xc
	.byte	0x8
	.byte	0x11
	.byte	0x24
	.long	0x6a2
	.uleb128 0x1
	.long	.LASF119
	.byte	0x11
	.byte	0x25
	.byte	0x8
	.long	0x393
	.byte	0
	.uleb128 0x1
	.long	.LASF120
	.byte	0x11
	.byte	0x26
	.byte	0x8
	.long	0x393
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF121
	.byte	0x11
	.byte	0x27
	.byte	0x3
	.long	0x67f
	.uleb128 0xc
	.byte	0x18
	.byte	0x11
	.byte	0x31
	.long	0x6da
	.uleb128 0x6
	.string	"u"
	.byte	0x11
	.byte	0x32
	.byte	0x9
	.long	0x66e
	.byte	0
	.uleb128 0x6
	.string	"N"
	.byte	0x11
	.byte	0x35
	.byte	0x6
	.long	0x72
	.byte	0x8
	.uleb128 0x1
	.long	.LASF122
	.byte	0x11
	.byte	0x36
	.byte	0xf
	.long	0x6da
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	0x39a
	.uleb128 0x3
	.long	.LASF123
	.byte	0x11
	.byte	0x37
	.byte	0x3
	.long	0x6ae
	.uleb128 0xc
	.byte	0x18
	.byte	0x11
	.byte	0x42
	.long	0x717
	.uleb128 0x6
	.string	"u"
	.byte	0x11
	.byte	0x43
	.byte	0x9
	.long	0x66e
	.byte	0
	.uleb128 0x6
	.string	"N"
	.byte	0x11
	.byte	0x46
	.byte	0x6
	.long	0x72
	.byte	0x8
	.uleb128 0x1
	.long	.LASF122
	.byte	0x11
	.byte	0x47
	.byte	0xf
	.long	0x6da
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF124
	.byte	0x11
	.byte	0x48
	.byte	0x3
	.long	0x6eb
	.uleb128 0xc
	.byte	0x18
	.byte	0x11
	.byte	0x4e
	.long	0x74f
	.uleb128 0x6
	.string	"u"
	.byte	0x11
	.byte	0x4f
	.byte	0xc
	.long	0x66e
	.byte	0
	.uleb128 0x6
	.string	"N"
	.byte	0x11
	.byte	0x50
	.byte	0x9
	.long	0x72
	.byte	0x8
	.uleb128 0x1
	.long	.LASF122
	.byte	0x11
	.byte	0x51
	.byte	0x12
	.long	0x6da
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF125
	.byte	0x11
	.byte	0x52
	.byte	0x3
	.long	0x723
	.uleb128 0xc
	.byte	0x18
	.byte	0x11
	.byte	0x54
	.long	0x78b
	.uleb128 0x1
	.long	.LASF126
	.byte	0x11
	.byte	0x55
	.byte	0x15
	.long	0x78b
	.byte	0
	.uleb128 0x1
	.long	.LASF127
	.byte	0x11
	.byte	0x56
	.byte	0xa
	.long	0x790
	.byte	0x8
	.uleb128 0x1
	.long	.LASF128
	.byte	0x11
	.byte	0x57
	.byte	0x12
	.long	0x79a
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	0x74f
	.uleb128 0x4
	.long	0x673
	.uleb128 0x18
	.long	.LASF129
	.uleb128 0x4
	.long	0x795
	.uleb128 0x3
	.long	.LASF130
	.byte	0x11
	.byte	0x58
	.byte	0x2
	.long	0x75b
	.uleb128 0x4
	.long	0xc8
	.uleb128 0xc
	.byte	0x8
	.byte	0x12
	.byte	0x1e
	.long	0x7d3
	.uleb128 0x1
	.long	.LASF131
	.byte	0x12
	.byte	0x1f
	.byte	0x7
	.long	0xde
	.byte	0
	.uleb128 0x1
	.long	.LASF132
	.byte	0x12
	.byte	0x20
	.byte	0xb
	.long	0x41f
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF133
	.byte	0x12
	.byte	0x21
	.byte	0x3
	.long	0x7b0
	.uleb128 0xc
	.byte	0xc
	.byte	0x12
	.byte	0x23
	.long	0x802
	.uleb128 0x1
	.long	.LASF134
	.byte	0x12
	.byte	0x24
	.byte	0xe
	.long	0x7d3
	.byte	0
	.uleb128 0x1
	.long	.LASF135
	.byte	0x12
	.byte	0x25
	.byte	0x7
	.long	0xde
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF136
	.byte	0x12
	.byte	0x26
	.byte	0x3
	.long	0x7df
	.uleb128 0xc
	.byte	0x18
	.byte	0x12
	.byte	0x28
	.long	0x872
	.uleb128 0x1
	.long	.LASF134
	.byte	0x12
	.byte	0x29
	.byte	0xe
	.long	0x7d3
	.byte	0
	.uleb128 0x1
	.long	.LASF137
	.byte	0x12
	.byte	0x2a
	.byte	0xb
	.long	0x413
	.byte	0x8
	.uleb128 0x1
	.long	.LASF138
	.byte	0x12
	.byte	0x2b
	.byte	0xb
	.long	0x413
	.byte	0xa
	.uleb128 0x1
	.long	.LASF139
	.byte	0x12
	.byte	0x2c
	.byte	0xb
	.long	0x41f
	.byte	0xc
	.uleb128 0x1
	.long	.LASF140
	.byte	0x12
	.byte	0x2d
	.byte	0xb
	.long	0x41f
	.byte	0x10
	.uleb128 0x1
	.long	.LASF141
	.byte	0x12
	.byte	0x2e
	.byte	0xb
	.long	0x413
	.byte	0x14
	.uleb128 0x1
	.long	.LASF142
	.byte	0x12
	.byte	0x2f
	.byte	0xb
	.long	0x413
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.long	.LASF143
	.byte	0x12
	.byte	0x30
	.byte	0x3
	.long	0x80e
	.uleb128 0xc
	.byte	0x8
	.byte	0x12
	.byte	0x32
	.long	0x894
	.uleb128 0x1
	.long	.LASF134
	.byte	0x12
	.byte	0x33
	.byte	0xe
	.long	0x7d3
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF144
	.byte	0x12
	.byte	0x34
	.byte	0x3
	.long	0x87e
	.uleb128 0xe
	.long	.LASF145
	.byte	0x50
	.byte	0x12
	.byte	0x36
	.byte	0x10
	.long	0x908
	.uleb128 0x6
	.string	"fd"
	.byte	0x12
	.byte	0x37
	.byte	0x8
	.long	0x2db
	.byte	0
	.uleb128 0x1
	.long	.LASF146
	.byte	0x12
	.byte	0x38
	.byte	0xc
	.long	0x802
	.byte	0x8
	.uleb128 0x1
	.long	.LASF147
	.byte	0x12
	.byte	0x39
	.byte	0xe
	.long	0x872
	.byte	0x14
	.uleb128 0x1
	.long	.LASF148
	.byte	0x12
	.byte	0x3a
	.byte	0xf
	.long	0x894
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF149
	.byte	0x12
	.byte	0x3b
	.byte	0x7
	.long	0x91
	.byte	0x38
	.uleb128 0x1
	.long	.LASF150
	.byte	0x12
	.byte	0x3c
	.byte	0xa
	.long	0x40e
	.byte	0x40
	.uleb128 0x1
	.long	.LASF151
	.byte	0x12
	.byte	0x3d
	.byte	0x9
	.long	0x2e
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.long	.LASF152
	.byte	0x12
	.byte	0x3e
	.byte	0x3
	.long	0x8a0
	.uleb128 0x4
	.long	0x908
	.uleb128 0xe
	.long	.LASF153
	.byte	0x10
	.byte	0x13
	.byte	0x32
	.byte	0x10
	.long	0x940
	.uleb128 0x6
	.string	"id"
	.byte	0x13
	.byte	0x33
	.byte	0x8
	.long	0xc8
	.byte	0
	.uleb128 0x1
	.long	.LASF145
	.byte	0x13
	.byte	0x34
	.byte	0x8
	.long	0x914
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF154
	.byte	0x13
	.byte	0x35
	.byte	0x3
	.long	0x919
	.uleb128 0x3
	.long	.LASF155
	.byte	0x14
	.byte	0x17
	.byte	0x11
	.long	0x3df
	.uleb128 0xc
	.byte	0x28
	.byte	0x15
	.byte	0x1f
	.long	0x9a2
	.uleb128 0x1
	.long	.LASF156
	.byte	0x15
	.byte	0x20
	.byte	0x8
	.long	0x91
	.byte	0
	.uleb128 0x1
	.long	.LASF157
	.byte	0x15
	.byte	0x21
	.byte	0x7
	.long	0x72
	.byte	0x8
	.uleb128 0x1
	.long	.LASF158
	.byte	0x15
	.byte	0x23
	.byte	0x12
	.long	0x9a2
	.byte	0x10
	.uleb128 0x6
	.string	"ptr"
	.byte	0x15
	.byte	0x24
	.byte	0x12
	.long	0x9a2
	.byte	0x18
	.uleb128 0x1
	.long	.LASF159
	.byte	0x15
	.byte	0x25
	.byte	0x8
	.long	0x91
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	0x4a
	.uleb128 0x3
	.long	.LASF160
	.byte	0x15
	.byte	0x26
	.byte	0x3
	.long	0x958
	.uleb128 0xc
	.byte	0x20
	.byte	0x15
	.byte	0x2a
	.long	0x9f0
	.uleb128 0x1
	.long	.LASF134
	.byte	0x15
	.byte	0x2b
	.byte	0x12
	.long	0x9a2
	.byte	0
	.uleb128 0x1
	.long	.LASF161
	.byte	0x15
	.byte	0x2c
	.byte	0x8
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF162
	.byte	0x15
	.byte	0x2d
	.byte	0x12
	.long	0x9a2
	.byte	0x10
	.uleb128 0x1
	.long	.LASF163
	.byte	0x15
	.byte	0x2e
	.byte	0x8
	.long	0x91
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.long	.LASF164
	.byte	0x15
	.byte	0x2f
	.byte	0x3
	.long	0x9b3
	.uleb128 0x1d
	.value	0x198
	.byte	0x15
	.byte	0x34
	.long	0xaf7
	.uleb128 0x1
	.long	.LASF165
	.byte	0x15
	.byte	0x35
	.byte	0x12
	.long	0x9a2
	.byte	0
	.uleb128 0x1
	.long	.LASF166
	.byte	0x15
	.byte	0x36
	.byte	0x8
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF167
	.byte	0x15
	.byte	0x37
	.byte	0x8
	.long	0x91
	.byte	0x10
	.uleb128 0x1
	.long	.LASF168
	.byte	0x15
	.byte	0x38
	.byte	0x8
	.long	0x91
	.byte	0x18
	.uleb128 0x1
	.long	.LASF169
	.byte	0x15
	.byte	0x3b
	.byte	0x8
	.long	0x368
	.byte	0x20
	.uleb128 0x1
	.long	.LASF170
	.byte	0x15
	.byte	0x3c
	.byte	0x10
	.long	0xaf7
	.byte	0x28
	.uleb128 0x1
	.long	.LASF171
	.byte	0x15
	.byte	0x3f
	.byte	0x8
	.long	0x91
	.byte	0x30
	.uleb128 0x1
	.long	.LASF172
	.byte	0x15
	.byte	0x40
	.byte	0x8
	.long	0x91
	.byte	0x38
	.uleb128 0x1
	.long	.LASF173
	.byte	0x15
	.byte	0x41
	.byte	0x8
	.long	0x91
	.byte	0x40
	.uleb128 0x1
	.long	.LASF174
	.byte	0x15
	.byte	0x42
	.byte	0x8
	.long	0x91
	.byte	0x48
	.uleb128 0x1
	.long	.LASF134
	.byte	0x15
	.byte	0x44
	.byte	0x11
	.long	0xafc
	.byte	0x50
	.uleb128 0xd
	.long	.LASF175
	.byte	0x15
	.byte	0x45
	.byte	0x7
	.long	0x72
	.value	0x16c
	.uleb128 0xd
	.long	.LASF176
	.byte	0x15
	.byte	0x47
	.byte	0x7
	.long	0x72
	.value	0x170
	.uleb128 0xd
	.long	.LASF177
	.byte	0x15
	.byte	0x49
	.byte	0x7
	.long	0x72
	.value	0x174
	.uleb128 0xd
	.long	.LASF178
	.byte	0x15
	.byte	0x4b
	.byte	0x8
	.long	0x91
	.value	0x178
	.uleb128 0xd
	.long	.LASF179
	.byte	0x15
	.byte	0x4c
	.byte	0x8
	.long	0x91
	.value	0x180
	.uleb128 0xd
	.long	.LASF180
	.byte	0x15
	.byte	0x4d
	.byte	0xf
	.long	0x94c
	.value	0x188
	.uleb128 0xd
	.long	.LASF181
	.byte	0x15
	.byte	0x52
	.byte	0xf
	.long	0x94c
	.value	0x190
	.byte	0
	.uleb128 0x4
	.long	0x94c
	.uleb128 0x10
	.long	0x4a
	.long	0xb0d
	.uleb128 0x23
	.long	0x3a
	.value	0x119
	.byte	0
	.uleb128 0x3
	.long	.LASF182
	.byte	0x15
	.byte	0x54
	.byte	0x3
	.long	0x9fc
	.uleb128 0xc
	.byte	0x30
	.byte	0x15
	.byte	0x59
	.long	0xb70
	.uleb128 0x1
	.long	.LASF183
	.byte	0x15
	.byte	0x5a
	.byte	0x12
	.long	0x9a2
	.byte	0
	.uleb128 0x1
	.long	.LASF184
	.byte	0x15
	.byte	0x5b
	.byte	0x8
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF177
	.byte	0x15
	.byte	0x5c
	.byte	0x8
	.long	0x91
	.byte	0x10
	.uleb128 0x1
	.long	.LASF176
	.byte	0x15
	.byte	0x5d
	.byte	0x8
	.long	0x91
	.byte	0x18
	.uleb128 0x1
	.long	.LASF181
	.byte	0x15
	.byte	0x5f
	.byte	0xf
	.long	0x94c
	.byte	0x20
	.uleb128 0x1
	.long	.LASF180
	.byte	0x15
	.byte	0x61
	.byte	0xf
	.long	0x94c
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.long	.LASF185
	.byte	0x15
	.byte	0x66
	.byte	0x3
	.long	0xb19
	.uleb128 0xe
	.long	.LASF186
	.byte	0x38
	.byte	0x16
	.byte	0x1b
	.byte	0x10
	.long	0xbf2
	.uleb128 0x1
	.long	.LASF187
	.byte	0x16
	.byte	0x1c
	.byte	0x7
	.long	0x72
	.byte	0
	.uleb128 0x1
	.long	.LASF85
	.byte	0x16
	.byte	0x1d
	.byte	0x7
	.long	0x72
	.byte	0x4
	.uleb128 0x1
	.long	.LASF188
	.byte	0x16
	.byte	0x1e
	.byte	0x8
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF189
	.byte	0x16
	.byte	0x2f
	.byte	0x8
	.long	0x91
	.byte	0x10
	.uleb128 0x1
	.long	.LASF190
	.byte	0x16
	.byte	0x30
	.byte	0x8
	.long	0x91
	.byte	0x18
	.uleb128 0x1
	.long	.LASF191
	.byte	0x16
	.byte	0x31
	.byte	0x8
	.long	0x91
	.byte	0x20
	.uleb128 0x1
	.long	.LASF192
	.byte	0x16
	.byte	0x32
	.byte	0x8
	.long	0x91
	.byte	0x28
	.uleb128 0x1
	.long	.LASF193
	.byte	0x16
	.byte	0x34
	.byte	0x9
	.long	0x48
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.long	.LASF186
	.byte	0x16
	.byte	0x35
	.byte	0x3
	.long	0xb7c
	.uleb128 0xe
	.long	.LASF194
	.byte	0x90
	.byte	0x16
	.byte	0x3a
	.byte	0x10
	.long	0xd0b
	.uleb128 0x1
	.long	.LASF195
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
	.long	0xd0b
	.byte	0x8
	.uleb128 0x6
	.string	"pcm"
	.byte	0x16
	.byte	0x3e
	.byte	0xb
	.long	0xd10
	.byte	0x10
	.uleb128 0x1
	.long	.LASF196
	.byte	0x16
	.byte	0x3f
	.byte	0xb
	.long	0xd10
	.byte	0x18
	.uleb128 0x1
	.long	.LASF197
	.byte	0x16
	.byte	0x40
	.byte	0x7
	.long	0x72
	.byte	0x20
	.uleb128 0x1
	.long	.LASF198
	.byte	0x16
	.byte	0x41
	.byte	0x7
	.long	0x72
	.byte	0x24
	.uleb128 0x1
	.long	.LASF199
	.byte	0x16
	.byte	0x42
	.byte	0x7
	.long	0x72
	.byte	0x28
	.uleb128 0x1
	.long	.LASF200
	.byte	0x16
	.byte	0x44
	.byte	0x7
	.long	0x72
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF201
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
	.long	.LASF202
	.byte	0x16
	.byte	0x4a
	.byte	0x8
	.long	0x91
	.byte	0x50
	.uleb128 0x1
	.long	.LASF181
	.byte	0x16
	.byte	0x4c
	.byte	0xf
	.long	0x94c
	.byte	0x58
	.uleb128 0x1
	.long	.LASF203
	.byte	0x16
	.byte	0x4d
	.byte	0xf
	.long	0x94c
	.byte	0x60
	.uleb128 0x1
	.long	.LASF204
	.byte	0x16
	.byte	0x4f
	.byte	0xf
	.long	0x94c
	.byte	0x68
	.uleb128 0x1
	.long	.LASF205
	.byte	0x16
	.byte	0x50
	.byte	0xf
	.long	0x94c
	.byte	0x70
	.uleb128 0x1
	.long	.LASF206
	.byte	0x16
	.byte	0x51
	.byte	0xf
	.long	0x94c
	.byte	0x78
	.uleb128 0x1
	.long	.LASF207
	.byte	0x16
	.byte	0x52
	.byte	0xf
	.long	0x94c
	.byte	0x80
	.uleb128 0x1
	.long	.LASF208
	.byte	0x16
	.byte	0x54
	.byte	0x9
	.long	0x48
	.byte	0x88
	.byte	0
	.uleb128 0x4
	.long	0xbf2
	.uleb128 0x4
	.long	0x66e
	.uleb128 0x3
	.long	.LASF194
	.byte	0x16
	.byte	0x55
	.byte	0x3
	.long	0xbfe
	.uleb128 0xe
	.long	.LASF209
	.byte	0xc0
	.byte	0x16
	.byte	0x57
	.byte	0x10
	.long	0xe3b
	.uleb128 0x6
	.string	"pcm"
	.byte	0x16
	.byte	0x59
	.byte	0xb
	.long	0xd10
	.byte	0
	.uleb128 0x6
	.string	"opb"
	.byte	0x16
	.byte	0x5a
	.byte	0x12
	.long	0x9a7
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
	.long	.LASF210
	.byte	0x16
	.byte	0x5f
	.byte	0x7
	.long	0x72
	.byte	0x48
	.uleb128 0x1
	.long	.LASF211
	.byte	0x16
	.byte	0x60
	.byte	0x7
	.long	0x72
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF201
	.byte	0x16
	.byte	0x62
	.byte	0x7
	.long	0x72
	.byte	0x50
	.uleb128 0x1
	.long	.LASF181
	.byte	0x16
	.byte	0x63
	.byte	0xf
	.long	0x94c
	.byte	0x58
	.uleb128 0x1
	.long	.LASF203
	.byte	0x16
	.byte	0x64
	.byte	0xf
	.long	0x94c
	.byte	0x60
	.uleb128 0x6
	.string	"vd"
	.byte	0x16
	.byte	0x65
	.byte	0x15
	.long	0xe3b
	.byte	0x68
	.uleb128 0x1
	.long	.LASF212
	.byte	0x16
	.byte	0x69
	.byte	0x9
	.long	0x48
	.byte	0x70
	.uleb128 0x1
	.long	.LASF213
	.byte	0x16
	.byte	0x6a
	.byte	0x8
	.long	0x91
	.byte	0x78
	.uleb128 0x1
	.long	.LASF214
	.byte	0x16
	.byte	0x6b
	.byte	0x8
	.long	0x91
	.byte	0x80
	.uleb128 0x1
	.long	.LASF215
	.byte	0x16
	.byte	0x6c
	.byte	0x8
	.long	0x91
	.byte	0x88
	.uleb128 0x1
	.long	.LASF216
	.byte	0x16
	.byte	0x6d
	.byte	0x17
	.long	0xe68
	.byte	0x90
	.uleb128 0x1
	.long	.LASF204
	.byte	0x16
	.byte	0x70
	.byte	0x8
	.long	0x91
	.byte	0x98
	.uleb128 0x1
	.long	.LASF205
	.byte	0x16
	.byte	0x71
	.byte	0x8
	.long	0x91
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF206
	.byte	0x16
	.byte	0x72
	.byte	0x8
	.long	0x91
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF207
	.byte	0x16
	.byte	0x73
	.byte	0x8
	.long	0x91
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF217
	.byte	0x16
	.byte	0x75
	.byte	0x9
	.long	0x48
	.byte	0xb8
	.byte	0
	.uleb128 0x4
	.long	0xd15
	.uleb128 0xe
	.long	.LASF218
	.byte	0x10
	.byte	0x16
	.byte	0x7e
	.byte	0x8
	.long	0xe68
	.uleb128 0x6
	.string	"ptr"
	.byte	0x16
	.byte	0x7f
	.byte	0x9
	.long	0x48
	.byte	0
	.uleb128 0x1
	.long	.LASF219
	.byte	0x16
	.byte	0x80
	.byte	0x17
	.long	0xe68
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0xe40
	.uleb128 0x3
	.long	.LASF209
	.byte	0x16
	.byte	0x77
	.byte	0x3
	.long	0xd21
	.uleb128 0xe
	.long	.LASF220
	.byte	0x20
	.byte	0x16
	.byte	0x8b
	.byte	0x10
	.long	0xebb
	.uleb128 0x1
	.long	.LASF221
	.byte	0x16
	.byte	0x8e
	.byte	0xa
	.long	0x7ab
	.byte	0
	.uleb128 0x1
	.long	.LASF222
	.byte	0x16
	.byte	0x8f
	.byte	0x8
	.long	0x368
	.byte	0x8
	.uleb128 0x1
	.long	.LASF223
	.byte	0x16
	.byte	0x90
	.byte	0x7
	.long	0x72
	.byte	0x10
	.uleb128 0x1
	.long	.LASF224
	.byte	0x16
	.byte	0x91
	.byte	0x9
	.long	0xc8
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.long	.LASF220
	.byte	0x16
	.byte	0x93
	.byte	0x3
	.long	0xe79
	.uleb128 0xc
	.byte	0x28
	.byte	0x17
	.byte	0x5
	.long	0xf2b
	.uleb128 0x1
	.long	.LASF159
	.byte	0x17
	.byte	0x6
	.byte	0x9
	.long	0x7ab
	.byte	0
	.uleb128 0x1
	.long	.LASF225
	.byte	0x17
	.byte	0x7
	.byte	0x8
	.long	0xc8
	.byte	0x8
	.uleb128 0x1
	.long	.LASF226
	.byte	0x17
	.byte	0x8
	.byte	0x8
	.long	0xc8
	.byte	0x10
	.uleb128 0x1
	.long	.LASF227
	.byte	0x17
	.byte	0x9
	.byte	0x6
	.long	0x72
	.byte	0x18
	.uleb128 0x1
	.long	.LASF228
	.byte	0x17
	.byte	0xa
	.byte	0x6
	.long	0x72
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF229
	.byte	0x17
	.byte	0xb
	.byte	0x6
	.long	0x72
	.byte	0x20
	.uleb128 0x1
	.long	.LASF230
	.byte	0x17
	.byte	0xc
	.byte	0x6
	.long	0x72
	.byte	0x24
	.byte	0
	.uleb128 0x3
	.long	.LASF231
	.byte	0x17
	.byte	0xd
	.byte	0x2
	.long	0xec7
	.uleb128 0x1d
	.value	0x3d8
	.byte	0x18
	.byte	0x13
	.long	0x101e
	.uleb128 0x1
	.long	.LASF232
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
	.long	0xb0d
	.byte	0x8
	.uleb128 0x11
	.string	"og"
	.byte	0x17
	.byte	0xc
	.long	0x9f0
	.value	0x1a0
	.uleb128 0x11
	.string	"op"
	.byte	0x19
	.byte	0xe
	.long	0xb70
	.value	0x1c0
	.uleb128 0x11
	.string	"vi"
	.byte	0x1b
	.byte	0xf
	.long	0xbf2
	.value	0x1f0
	.uleb128 0x11
	.string	"vc"
	.byte	0x1d
	.byte	0x12
	.long	0xebb
	.value	0x228
	.uleb128 0x11
	.string	"vd"
	.byte	0x1f
	.byte	0x14
	.long	0xd15
	.value	0x248
	.uleb128 0x11
	.string	"vb"
	.byte	0x20
	.byte	0x10
	.long	0xe6d
	.value	0x2d8
	.uleb128 0x11
	.string	"eos"
	.byte	0x22
	.byte	0x7
	.long	0x72
	.value	0x398
	.uleb128 0x11
	.string	"eoc"
	.byte	0x23
	.byte	0x7
	.long	0x72
	.value	0x39c
	.uleb128 0xd
	.long	.LASF158
	.byte	0x18
	.byte	0x24
	.byte	0xc
	.long	0xd10
	.value	0x3a0
	.uleb128 0xd
	.long	.LASF233
	.byte	0x18
	.byte	0x25
	.byte	0x8
	.long	0x91
	.value	0x3a8
	.uleb128 0xd
	.long	.LASF234
	.byte	0x18
	.byte	0x26
	.byte	0x8
	.long	0x91
	.value	0x3b0
	.uleb128 0xd
	.long	.LASF235
	.byte	0x18
	.byte	0x28
	.byte	0x12
	.long	0x101e
	.value	0x3b8
	.uleb128 0xd
	.long	.LASF236
	.byte	0x18
	.byte	0x29
	.byte	0x12
	.long	0x101e
	.value	0x3c0
	.uleb128 0xd
	.long	.LASF237
	.byte	0x18
	.byte	0x2b
	.byte	0xa
	.long	0x2fd
	.value	0x3c8
	.uleb128 0xd
	.long	.LASF238
	.byte	0x18
	.byte	0x2c
	.byte	0xa
	.long	0x2fd
	.value	0x3d0
	.byte	0
	.uleb128 0x4
	.long	0xf2b
	.uleb128 0x3
	.long	.LASF239
	.byte	0x18
	.byte	0x2d
	.byte	0x2
	.long	0xf37
	.uleb128 0x15
	.long	.LASF240
	.byte	0x18
	.byte	0x33
	.byte	0x16
	.long	0x103b
	.uleb128 0x4
	.long	0x1023
	.uleb128 0x24
	.long	.LASF241
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.long	0x5d8
	.uleb128 0x9
	.byte	0x3
	.quad	running
	.uleb128 0x9
	.long	.LASF244
	.byte	0x17
	.byte	0x18
	.long	0x1067
	.uleb128 0x2
	.long	0x101e
	.byte	0
	.uleb128 0xf
	.long	.LASF242
	.byte	0xf
	.byte	0x7c
	.long	0x1074
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.long	.LASF243
	.byte	0x10
	.byte	0x49
	.long	0x1081
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.long	.LASF245
	.byte	0x11
	.byte	0x4b
	.long	0x1092
	.uleb128 0x2
	.long	0x1092
	.byte	0
	.uleb128 0x4
	.long	0x717
	.uleb128 0x9
	.long	.LASF246
	.byte	0x11
	.byte	0x3a
	.long	0x10a8
	.uleb128 0x2
	.long	0x10a8
	.byte	0
	.uleb128 0x4
	.long	0x6df
	.uleb128 0x9
	.long	.LASF247
	.byte	0x11
	.byte	0x2b
	.long	0x10be
	.uleb128 0x2
	.long	0x10be
	.byte	0
	.uleb128 0x4
	.long	0x6a2
	.uleb128 0x9
	.long	.LASF248
	.byte	0x11
	.byte	0x5d
	.long	0x10d4
	.uleb128 0x2
	.long	0x78b
	.byte	0
	.uleb128 0x9
	.long	.LASF249
	.byte	0x10
	.byte	0x3f
	.long	0x10e5
	.uleb128 0x2
	.long	0x790
	.byte	0
	.uleb128 0xf
	.long	.LASF250
	.byte	0x13
	.byte	0x29
	.long	0x10f2
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.long	.LASF251
	.byte	0x13
	.byte	0x24
	.long	0x10ff
	.uleb128 0xa
	.byte	0
	.uleb128 0x13
	.long	.LASF252
	.byte	0x19
	.byte	0x18
	.byte	0x5
	.long	0x5d8
	.long	0x1111
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.long	.LASF253
	.byte	0x1a
	.byte	0x5
	.long	0x111e
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.long	.LASF254
	.byte	0xf
	.byte	0x7b
	.long	0x112f
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0xf
	.long	.LASF255
	.byte	0x18
	.byte	0x31
	.long	0x113c
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.long	.LASF256
	.byte	0x13
	.byte	0x2e
	.long	0x1157
	.uleb128 0x2
	.long	0x790
	.uleb128 0x2
	.long	0x1157
	.uleb128 0x2
	.long	0x5d8
	.byte	0
	.uleb128 0x4
	.long	0x79f
	.uleb128 0x7
	.long	.LASF258
	.byte	0x19
	.byte	0x17
	.byte	0x5
	.long	0x5d8
	.long	0x1177
	.uleb128 0x2
	.long	0x790
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x9
	.long	.LASF257
	.byte	0x1a
	.byte	0x7
	.long	0x11a1
	.uleb128 0x2
	.long	0x42b
	.uleb128 0x2
	.long	0x393
	.uleb128 0x2
	.long	0x393
	.uleb128 0x2
	.long	0x393
	.uleb128 0x2
	.long	0x393
	.uleb128 0x2
	.long	0x393
	.byte	0
	.uleb128 0x7
	.long	.LASF259
	.byte	0x1b
	.byte	0x4c
	.byte	0xf
	.long	0x2fd
	.long	0x11b7
	.uleb128 0x2
	.long	0x11b7
	.byte	0
	.uleb128 0x4
	.long	0x2fd
	.uleb128 0x7
	.long	.LASF260
	.byte	0x6
	.byte	0xec
	.byte	0xc
	.long	0x72
	.long	0x11d2
	.uleb128 0x2
	.long	0x2db
	.byte	0
	.uleb128 0x7
	.long	.LASF261
	.byte	0x10
	.byte	0x46
	.byte	0x5
	.long	0x72
	.long	0x11ed
	.uleb128 0x2
	.long	0x790
	.uleb128 0x2
	.long	0x393
	.byte	0
	.uleb128 0x7
	.long	.LASF262
	.byte	0x10
	.byte	0x45
	.byte	0x7
	.long	0x393
	.long	0x120d
	.uleb128 0x2
	.long	0x66e
	.uleb128 0x2
	.long	0x72
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x7
	.long	.LASF263
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.long	0x72
	.long	0x122d
	.uleb128 0x2
	.long	0x122d
	.uleb128 0x2
	.long	0x66e
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x4
	.long	0x940
	.uleb128 0x9
	.long	.LASF264
	.byte	0x11
	.byte	0x4c
	.long	0x1252
	.uleb128 0x2
	.long	0x1092
	.uleb128 0x2
	.long	0x66e
	.uleb128 0x2
	.long	0x66e
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x9
	.long	.LASF265
	.byte	0x11
	.byte	0x5f
	.long	0x1272
	.uleb128 0x2
	.long	0x78b
	.uleb128 0x2
	.long	0x66e
	.uleb128 0x2
	.long	0x66e
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x13
	.long	.LASF266
	.byte	0x18
	.byte	0x2f
	.byte	0x5
	.long	0x72
	.long	0x1284
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.long	.LASF267
	.byte	0x10
	.byte	0x48
	.long	0x1291
	.uleb128 0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF268
	.byte	0x13
	.byte	0x37
	.byte	0x8
	.long	0x122d
	.long	0x12a7
	.uleb128 0x2
	.long	0xc8
	.byte	0
	.uleb128 0x9
	.long	.LASF269
	.byte	0x13
	.byte	0x26
	.long	0x12b8
	.uleb128 0x2
	.long	0x5d8
	.byte	0
	.uleb128 0x13
	.long	.LASF270
	.byte	0x19
	.byte	0x16
	.byte	0x5
	.long	0x5d8
	.long	0x12ca
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.long	.LASF271
	.byte	0x1a
	.byte	0x4
	.long	0x12d7
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.long	.LASF272
	.byte	0x1c
	.byte	0x10
	.long	0x12e8
	.uleb128 0x2
	.long	0x79a
	.byte	0
	.uleb128 0x16
	.long	.LASF273
	.byte	0x6
	.value	0x2d4
	.byte	0xc
	.long	0x72
	.long	0x12ff
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x9
	.long	.LASF274
	.byte	0x10
	.byte	0x43
	.long	0x131a
	.uleb128 0x2
	.long	0x790
	.uleb128 0x2
	.long	0x79a
	.uleb128 0x2
	.long	0x5eb
	.byte	0
	.uleb128 0x7
	.long	.LASF275
	.byte	0x1c
	.byte	0x15
	.byte	0xa
	.long	0x41
	.long	0x1330
	.uleb128 0x2
	.long	0x79a
	.byte	0
	.uleb128 0x9
	.long	.LASF276
	.byte	0x1c
	.byte	0x38
	.long	0x1346
	.uleb128 0x2
	.long	0x79a
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x9
	.long	.LASF277
	.byte	0x11
	.byte	0x2f
	.long	0x1366
	.uleb128 0x2
	.long	0x10be
	.uleb128 0x2
	.long	0x66e
	.uleb128 0x2
	.long	0x66e
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x9
	.long	.LASF278
	.byte	0x10
	.byte	0x41
	.long	0x1381
	.uleb128 0x2
	.long	0x66e
	.uleb128 0x2
	.long	0x66e
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x9
	.long	.LASF279
	.byte	0x11
	.byte	0x3d
	.long	0x13a1
	.uleb128 0x2
	.long	0x10a8
	.uleb128 0x2
	.long	0x66e
	.uleb128 0x2
	.long	0x66e
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x25
	.long	.LASF280
	.byte	0x1d
	.byte	0x45
	.byte	0xd
	.long	0x13c2
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
	.long	.LASF281
	.byte	0x1c
	.byte	0x33
	.byte	0xa
	.long	0x41
	.long	0x13d8
	.uleb128 0x2
	.long	0x79a
	.byte	0
	.uleb128 0x7
	.long	.LASF282
	.byte	0x1c
	.byte	0x2e
	.byte	0x8
	.long	0x66e
	.long	0x13ee
	.uleb128 0x2
	.long	0x79a
	.byte	0
	.uleb128 0x7
	.long	.LASF283
	.byte	0x13
	.byte	0x23
	.byte	0x8
	.long	0x2e
	.long	0x1409
	.uleb128 0x2
	.long	0x66e
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x7
	.long	.LASF284
	.byte	0x1c
	.byte	0xb
	.byte	0x11
	.long	0x79a
	.long	0x141f
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x13
	.long	.LASF285
	.byte	0x10
	.byte	0x3e
	.byte	0x9
	.long	0x790
	.long	0x1431
	.uleb128 0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF286
	.byte	0x11
	.byte	0x5c
	.byte	0x14
	.long	0x78b
	.long	0x1447
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x7
	.long	.LASF287
	.byte	0x11
	.byte	0x4a
	.byte	0xa
	.long	0x1092
	.long	0x145d
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x7
	.long	.LASF288
	.byte	0x11
	.byte	0x39
	.byte	0xa
	.long	0x10a8
	.long	0x1473
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x13
	.long	.LASF289
	.byte	0x11
	.byte	0x2a
	.byte	0xd
	.long	0x10be
	.long	0x1485
	.uleb128 0xa
	.byte	0
	.uleb128 0x13
	.long	.LASF290
	.byte	0x11
	.byte	0x29
	.byte	0xd
	.long	0x10be
	.long	0x1497
	.uleb128 0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF291
	.byte	0x13
	.byte	0x22
	.byte	0x5
	.long	0x5d8
	.long	0x14ad
	.uleb128 0x2
	.long	0x5eb
	.byte	0
	.uleb128 0x13
	.long	.LASF292
	.byte	0x13
	.byte	0x2c
	.byte	0x7
	.long	0xc8
	.long	0x14bf
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.long	.LASF293
	.byte	0xf
	.byte	0x7d
	.long	0x14cc
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.long	.LASF294
	.byte	0x13
	.byte	0x2b
	.long	0x14e2
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x26
	.long	.LASF295
	.byte	0x1e
	.value	0x2af
	.byte	0xd
	.long	0x14f5
	.uleb128 0x2
	.long	0x48
	.byte	0
	.uleb128 0x7
	.long	.LASF296
	.byte	0xf
	.byte	0x7a
	.byte	0x10
	.long	0x5eb
	.long	0x150b
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x7
	.long	.LASF297
	.byte	0x1f
	.byte	0xbb
	.byte	0xe
	.long	0xc8
	.long	0x1521
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x7
	.long	.LASF298
	.byte	0x1f
	.byte	0x95
	.byte	0xe
	.long	0xc8
	.long	0x153c
	.uleb128 0x2
	.long	0xc8
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x7
	.long	.LASF299
	.byte	0x1f
	.byte	0x8d
	.byte	0xe
	.long	0xc8
	.long	0x1557
	.uleb128 0x2
	.long	0xc8
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x16
	.long	.LASF300
	.byte	0x1e
	.value	0x2a0
	.byte	0xe
	.long	0x48
	.long	0x156e
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x16
	.long	.LASF301
	.byte	0x1f
	.value	0x197
	.byte	0xf
	.long	0x2e
	.long	0x1585
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x16
	.long	.LASF302
	.byte	0x1e
	.value	0x305
	.byte	0xe
	.long	0xc8
	.long	0x159c
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x7
	.long	.LASF303
	.byte	0x9
	.byte	0x42
	.byte	0xc
	.long	0x72
	.long	0x15c6
	.uleb128 0x2
	.long	0x72
	.uleb128 0x2
	.long	0x15c6
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0x2
	.long	0x15cb
	.uleb128 0x2
	.long	0x368
	.byte	0
	.uleb128 0x4
	.long	0xcd
	.uleb128 0x4
	.long	0x363
	.uleb128 0x7
	.long	.LASF304
	.byte	0x1e
	.byte	0x69
	.byte	0xc
	.long	0x72
	.long	0x15e6
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x27
	.long	.LASF305
	.byte	0x1e
	.value	0x2f4
	.byte	0xd
	.long	0x15f9
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x16
	.long	.LASF306
	.byte	0x6
	.value	0x165
	.byte	0xc
	.long	0x72
	.long	0x1616
	.uleb128 0x2
	.long	0x2e0
	.uleb128 0x2
	.long	0x2d6
	.uleb128 0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF307
	.byte	0x1f
	.byte	0x9c
	.byte	0xc
	.long	0x72
	.long	0x1631
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x7
	.long	.LASF308
	.byte	0xd
	.byte	0x58
	.byte	0x17
	.long	0x3f2
	.long	0x164c
	.uleb128 0x2
	.long	0x72
	.uleb128 0x2
	.long	0x3f2
	.byte	0
	.uleb128 0x16
	.long	.LASF309
	.byte	0x6
	.value	0x16b
	.byte	0xc
	.long	0x72
	.long	0x1664
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0xa
	.byte	0
	.uleb128 0x28
	.long	.LASF370
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.long	0x72
	.quad	.LFB311
	.quad	.LFE311-.LFB311
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b64
	.uleb128 0x19
	.long	.LASF310
	.byte	0x56
	.byte	0xf
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1204
	.uleb128 0x19
	.long	.LASF311
	.byte	0x56
	.byte	0x1b
	.long	0x7ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1216
	.uleb128 0x8
	.long	.LASF312
	.byte	0x58
	.byte	0xd
	.long	0x72
	.uleb128 0x9
	.byte	0x3
	.quad	verbose_flag.1
	.uleb128 0x8
	.long	.LASF313
	.byte	0x59
	.byte	0x17
	.long	0x1b64
	.uleb128 0x9
	.byte	0x3
	.quad	long_options.2
	.uleb128 0x8
	.long	.LASF314
	.byte	0x6b
	.byte	0x6
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x8
	.long	.LASF315
	.byte	0x6b
	.byte	0x14
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1132
	.uleb128 0x8
	.long	.LASF316
	.byte	0x6c
	.byte	0x6
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1180
	.uleb128 0x8
	.long	.LASF317
	.byte	0x6e
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x8
	.long	.LASF318
	.byte	0x6f
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x8
	.long	.LASF319
	.byte	0x70
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x8
	.long	.LASF320
	.byte	0x71
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x8
	.long	.LASF321
	.byte	0x72
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x8
	.long	.LASF322
	.byte	0x73
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x8
	.long	.LASF323
	.byte	0x74
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x8
	.long	.LASF324
	.byte	0x75
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x8
	.long	.LASF325
	.byte	0x76
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x8
	.long	.LASF326
	.byte	0x77
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x8
	.long	.LASF91
	.byte	0x78
	.byte	0x6
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1176
	.uleb128 0x8
	.long	.LASF327
	.byte	0xbd
	.byte	0xe
	.long	0x2d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1032
	.uleb128 0x8
	.long	.LASF328
	.byte	0xd5
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1024
	.uleb128 0x8
	.long	.LASF329
	.byte	0xd6
	.byte	0x7
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1186
	.uleb128 0x5
	.long	.LASF330
	.value	0x11a
	.byte	0xe
	.long	0x10be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -968
	.uleb128 0x5
	.long	.LASF331
	.value	0x11b
	.byte	0xe
	.long	0x10be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -960
	.uleb128 0x5
	.long	.LASF332
	.value	0x11c
	.byte	0xb
	.long	0x10a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -952
	.uleb128 0x5
	.long	.LASF333
	.value	0x11d
	.byte	0xb
	.long	0x1092
	.uleb128 0x3
	.byte	0x91
	.sleb128 -944
	.uleb128 0x5
	.long	.LASF334
	.value	0x11f
	.byte	0x9
	.long	0x66e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -936
	.uleb128 0x5
	.long	.LASF335
	.value	0x122
	.byte	0xb
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1128
	.uleb128 0x5
	.long	.LASF336
	.value	0x126
	.byte	0x12
	.long	0x1b74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.uleb128 0x5
	.long	.LASF337
	.value	0x12f
	.byte	0x12
	.long	0x79a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -928
	.uleb128 0x5
	.long	.LASF338
	.value	0x130
	.byte	0x12
	.long	0x79a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -920
	.uleb128 0x5
	.long	.LASF339
	.value	0x131
	.byte	0x12
	.long	0x79a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -912
	.uleb128 0x5
	.long	.LASF340
	.value	0x132
	.byte	0x12
	.long	0x79a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -904
	.uleb128 0x5
	.long	.LASF341
	.value	0x134
	.byte	0xa
	.long	0x790
	.uleb128 0x3
	.byte	0x91
	.sleb128 -896
	.uleb128 0x5
	.long	.LASF342
	.value	0x135
	.byte	0xa
	.long	0x790
	.uleb128 0x3
	.byte	0x91
	.sleb128 -888
	.uleb128 0x5
	.long	.LASF343
	.value	0x136
	.byte	0xa
	.long	0x790
	.uleb128 0x3
	.byte	0x91
	.sleb128 -880
	.uleb128 0x5
	.long	.LASF344
	.value	0x137
	.byte	0xa
	.long	0x790
	.uleb128 0x3
	.byte	0x91
	.sleb128 -872
	.uleb128 0x5
	.long	.LASF345
	.value	0x139
	.byte	0xa
	.long	0x790
	.uleb128 0x3
	.byte	0x91
	.sleb128 -864
	.uleb128 0x5
	.long	.LASF346
	.value	0x13b
	.byte	0x6
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1124
	.uleb128 0x5
	.long	.LASF347
	.value	0x13c
	.byte	0x6
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1168
	.uleb128 0x5
	.long	.LASF348
	.value	0x13e
	.byte	0x8
	.long	0x393
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1164
	.uleb128 0x5
	.long	.LASF349
	.value	0x13f
	.byte	0x8
	.long	0x1b84
	.uleb128 0x4
	.byte	0x91
	.sleb128 -848
	.byte	0x6
	.uleb128 0x29
	.long	.LASF371
	.long	0x1ba8
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.0
	.uleb128 0x5
	.long	.LASF350
	.value	0x182
	.byte	0x6
	.long	0x5d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1185
	.uleb128 0x12
	.string	"wa"
	.value	0x189
	.byte	0x9
	.long	0x122d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1008
	.uleb128 0x12
	.string	"wb"
	.value	0x18a
	.byte	0x9
	.long	0x122d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1000
	.uleb128 0x12
	.string	"wc"
	.value	0x18b
	.byte	0x9
	.long	0x122d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -992
	.uleb128 0x12
	.string	"wd"
	.value	0x18c
	.byte	0x9
	.long	0x122d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -984
	.uleb128 0x5
	.long	.LASF238
	.value	0x19e
	.byte	0xb
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1148
	.uleb128 0x1a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x19b1
	.uleb128 0x8
	.long	.LASF351
	.byte	0xd8
	.byte	0xf
	.long	0x2d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.uleb128 0x8
	.long	.LASF352
	.byte	0xdb
	.byte	0x9
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -976
	.byte	0
	.uleb128 0x1a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x19d5
	.uleb128 0x12
	.string	"i"
	.value	0x129
	.byte	0xb
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1172
	.byte	0
	.uleb128 0x1a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1a61
	.uleb128 0x5
	.long	.LASF353
	.value	0x147
	.byte	0xc
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1160
	.uleb128 0x5
	.long	.LASF354
	.value	0x148
	.byte	0xc
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x5
	.long	.LASF355
	.value	0x149
	.byte	0x9
	.long	0x393
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1156
	.uleb128 0x5
	.long	.LASF356
	.value	0x14a
	.byte	0xc
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1152
	.uleb128 0x5
	.long	.LASF357
	.value	0x14d
	.byte	0x13
	.long	0x79a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -840
	.uleb128 0x2a
	.long	.LLRL0
	.uleb128 0x5
	.long	.LASF358
	.value	0x150
	.byte	0xb
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.uleb128 0x5
	.long	.LASF359
	.value	0x154
	.byte	0xb
	.long	0x66e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LLRL1
	.long	0x1b43
	.uleb128 0x5
	.long	.LASF358
	.value	0x1a4
	.byte	0xa
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x5
	.long	.LASF360
	.value	0x1b1
	.byte	0xa
	.long	0x66e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -808
	.uleb128 0x5
	.long	.LASF361
	.value	0x1b2
	.byte	0xa
	.long	0x66e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x5
	.long	.LASF362
	.value	0x1b3
	.byte	0xa
	.long	0x66e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x5
	.long	.LASF363
	.value	0x1b4
	.byte	0xa
	.long	0x66e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x1a
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x1b00
	.uleb128 0x12
	.string	"i"
	.value	0x1a8
	.byte	0xb
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1144
	.uleb128 0x1b
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x5
	.long	.LASF364
	.value	0x1a9
	.byte	0xb
	.long	0x66e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x5
	.long	.LASF365
	.value	0x1ea
	.byte	0x8
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1116
	.uleb128 0x1b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x12
	.string	"i"
	.value	0x1cf
	.byte	0xc
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1140
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x12
	.string	"i"
	.value	0x229
	.byte	0xa
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x321
	.long	0x1b74
	.uleb128 0x14
	.long	0x3a
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.long	0x79f
	.long	0x1b84
	.uleb128 0x14
	.long	0x3a
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.long	0x393
	.long	0x1b98
	.uleb128 0x2c
	.long	0x3a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -856
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.long	0xd9
	.long	0x1ba8
	.uleb128 0x14
	.long	0x3a
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.long	0x1b98
	.uleb128 0x2d
	.long	.LASF372
	.byte	0x1
	.byte	0x4f
	.byte	0xd
	.quad	.LFB310
	.quad	.LFE310-.LFB310
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.byte	0x3a
	.byte	0xd
	.quad	.LFB309
	.quad	.LFE309-.LFB309
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bf4
	.uleb128 0x19
	.long	.LASF366
	.byte	0x3a
	.byte	0x18
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF374
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.quad	.LFB308
	.quad	.LFE308-.LFB308
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF367
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x87
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
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
.LASF302:
	.string	"getenv"
.LASF225:
	.string	"dir_path"
.LASF117:
	.string	"direction"
.LASF252:
	.string	"mqtt_end"
.LASF89:
	.string	"segment_size"
.LASF356:
	.string	"average_n"
.LASF37:
	.string	"_shortbuf"
.LASF222:
	.string	"comment_lengths"
.LASF202:
	.string	"centerW"
.LASF204:
	.string	"glue_bits"
.LASF369:
	.string	"_IO_lock_t"
.LASF166:
	.string	"body_storage"
.LASF233:
	.string	"endfile_size"
.LASF232:
	.string	"output"
.LASF340:
	.string	"ring_aslow"
.LASF234:
	.string	"sample_count"
.LASF52:
	.string	"stderr"
.LASF243:
	.string	"lae_average_destroy"
.LASF26:
	.string	"_IO_buf_end"
.LASF14:
	.string	"__off_t"
.LASF266:
	.string	"record_start"
.LASF55:
	.string	"optopt"
.LASF308:
	.string	"signal"
.LASF346:
	.string	"percentil_segment_number"
.LASF260:
	.string	"fflush"
.LASF97:
	.string	"data_record_ok"
.LASF119:
	.string	"previous"
.LASF209:
	.string	"vorbis_block"
.LASF124:
	.string	"Cfilter"
.LASF24:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF152:
	.string	"Wave"
.LASF248:
	.string	"third_octave_destroy"
.LASF187:
	.string	"version"
.LASF349:
	.string	"percentil_array"
.LASF42:
	.string	"_freeres_list"
.LASF84:
	.string	"sample_rate"
.LASF18:
	.string	"_flags"
.LASF254:
	.string	"config_save"
.LASF374:
	.string	"int_handler"
.LASF198:
	.string	"pcm_current"
.LASF334:
	.string	"block_raw"
.LASF178:
	.string	"serialno"
.LASF357:
	.string	"ring_calibration"
.LASF64:
	.string	"guint"
.LASF290:
	.string	"timeweight_create"
.LASF99:
	.string	"calibration_time"
.LASF186:
	.string	"vorbis_info"
.LASF345:
	.string	"levels_return"
.LASF105:
	.string	"mqtt_qos"
.LASF188:
	.string	"rate"
.LASF313:
	.string	"long_options"
.LASF320:
	.string	"option_data_output_format"
.LASF246:
	.string	"aweighting_destroy"
.LASF230:
	.string	"update"
.LASF211:
	.string	"mode"
.LASF247:
	.string	"timeweight_destroy"
.LASF127:
	.string	"levels"
.LASF227:
	.string	"current_idx"
.LASF263:
	.string	"audit_append_samples"
.LASF90:
	.string	"levels_record_period"
.LASF132:
	.string	"ChunkSize"
.LASF137:
	.string	"AudioFormat"
.LASF303:
	.string	"getopt_long"
.LASF344:
	.string	"levels_aslow"
.LASF368:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF106:
	.string	"mqtt_device_credential"
.LASF129:
	.string	"sbuffer"
.LASF145:
	.string	"wave"
.LASF116:
	.string	"le_counter"
.LASF74:
	.string	"uint32_t"
.LASF299:
	.string	"strcpy"
.LASF159:
	.string	"storage"
.LASF51:
	.string	"stdout"
.LASF298:
	.string	"strcat"
.LASF29:
	.string	"_IO_save_end"
.LASF226:
	.string	"file_format"
.LASF142:
	.string	"BitsPerSample"
.LASF220:
	.string	"vorbis_comment"
.LASF332:
	.string	"afilter"
.LASF49:
	.string	"_IO_codecvt"
.LASF237:
	.string	"time_start"
.LASF205:
	.string	"time_bits"
.LASF165:
	.string	"body_data"
.LASF296:
	.string	"config_load"
.LASF146:
	.string	"riff_chunk"
.LASF292:
	.string	"output_get_data_filepath"
.LASF71:
	.string	"long long unsigned int"
.LASF208:
	.string	"backend_state"
.LASF281:
	.string	"sbuffer_write_size"
.LASF144:
	.string	"SubChunkData"
.LASF224:
	.string	"vendor"
.LASF362:
	.string	"block_ring_afast"
.LASF240:
	.string	"record_struct"
.LASF242:
	.string	"config_destroy"
.LASF319:
	.string	"option_output_filename"
.LASF253:
	.string	"server_end"
.LASF141:
	.string	"BlockAlign"
.LASF9:
	.string	"__uint16_t"
.LASF276:
	.string	"sbuffer_write_produces"
.LASF72:
	.string	"__sighandler_t"
.LASF28:
	.string	"_IO_backup_base"
.LASF181:
	.string	"granulepos"
.LASF39:
	.string	"_offset"
.LASF68:
	.string	"_GArray"
.LASF259:
	.string	"time"
.LASF174:
	.string	"lacing_returned"
.LASF326:
	.string	"option_block_size"
.LASF189:
	.string	"bitrate_upper"
.LASF83:
	.string	"data_output_format"
.LASF306:
	.string	"fprintf"
.LASF32:
	.string	"_fileno"
.LASF297:
	.string	"strdup"
.LASF353:
	.string	"milisecs"
.LASF265:
	.string	"third_octave_filtering"
.LASF317:
	.string	"option_device_filename"
.LASF291:
	.string	"input_device_open"
.LASF179:
	.string	"pageno"
.LASF96:
	.string	"data_file_duration"
.LASF70:
	.string	"int64_t"
.LASF67:
	.string	"GArray"
.LASF66:
	.string	"double"
.LASF284:
	.string	"sbuffer_create"
.LASF21:
	.string	"_IO_read_base"
.LASF108:
	.string	"_Bool"
.LASF192:
	.string	"bitrate_window"
.LASF310:
	.string	"argc"
.LASF156:
	.string	"endbyte"
.LASF122:
	.string	"coefs"
.LASF184:
	.string	"bytes"
.LASF215:
	.string	"totaluse"
.LASF295:
	.string	"free"
.LASF13:
	.string	"__uint64_t"
.LASF351:
	.string	"path"
.LASF121:
	.string	"Timeweight"
.LASF257:
	.string	"server_send"
.LASF214:
	.string	"localalloc"
.LASF80:
	.string	"output_path"
.LASF210:
	.string	"pcmend"
.LASF331:
	.string	"twslowfilter"
.LASF110:
	.string	"segment_number"
.LASF107:
	.string	"server_socket"
.LASF348:
	.string	"background_level"
.LASF352:
	.string	"pathname"
.LASF17:
	.string	"char"
.LASF274:
	.string	"process_segment_levels"
.LASF249:
	.string	"levels_destroy"
.LASF153:
	.string	"audit"
.LASF45:
	.string	"_mode"
.LASF73:
	.string	"uint16_t"
.LASF88:
	.string	"segment_duration"
.LASF360:
	.string	"block_ring_a"
.LASF361:
	.string	"block_ring_c"
.LASF79:
	.string	"input_file"
.LASF339:
	.string	"ring_afast"
.LASF22:
	.string	"_IO_write_base"
.LASF354:
	.string	"calibration_milisecs"
.LASF19:
	.string	"_IO_read_ptr"
.LASF164:
	.string	"ogg_page"
.LASF305:
	.string	"exit"
.LASF200:
	.string	"preextrapolate"
.LASF213:
	.string	"localtop"
.LASF341:
	.string	"levels_a"
.LASF342:
	.string	"levels_c"
.LASF358:
	.string	"lenght_read"
.LASF229:
	.string	"space"
.LASF180:
	.string	"packetno"
.LASF114:
	.string	"LAFmin"
.LASF53:
	.string	"time_t"
.LASF113:
	.string	"LAFmax"
.LASF203:
	.string	"sequence"
.LASF140:
	.string	"ByteRate"
.LASF197:
	.string	"pcm_storage"
.LASF154:
	.string	"Audit"
.LASF139:
	.string	"SampleRate"
.LASF206:
	.string	"floor_bits"
.LASF48:
	.string	"_IO_marker"
.LASF150:
	.string	"samples"
.LASF61:
	.string	"long long int"
.LASF149:
	.string	"file_offset"
.LASF309:
	.string	"printf"
.LASF264:
	.string	"cweighting_filtering"
.LASF372:
	.string	"about"
.LASF27:
	.string	"_IO_save_base"
.LASF134:
	.string	"header"
.LASF268:
	.string	"audit_create"
.LASF85:
	.string	"channels"
.LASF359:
	.string	"block_ring_calibration"
.LASF30:
	.string	"_markers"
.LASF337:
	.string	"ring_a"
.LASF212:
	.string	"localstore"
.LASF231:
	.string	"Files_Storage"
.LASF267:
	.string	"lae_average_create"
.LASF115:
	.string	"le_accumulator"
.LASF279:
	.string	"aweighting_filtering"
.LASF93:
	.string	"audio_file_duration"
.LASF191:
	.string	"bitrate_lower"
.LASF158:
	.string	"buffer"
.LASF228:
	.string	"size"
.LASF43:
	.string	"_freeres_buf"
.LASF283:
	.string	"input_device_read"
.LASF94:
	.string	"audio_record_ok"
.LASF286:
	.string	"third_octave_create"
.LASF327:
	.string	"config_filename"
.LASF82:
	.string	"audio_output_format"
.LASF182:
	.string	"ogg_stream_state"
.LASF170:
	.string	"granule_vals"
.LASF251:
	.string	"input_device_close"
.LASF44:
	.string	"__pad5"
.LASF336:
	.string	"third_octave_data"
.LASF321:
	.string	"option_sample_rate"
.LASF167:
	.string	"body_fill"
.LASF364:
	.string	"block_filter"
.LASF57:
	.string	"option"
.LASF36:
	.string	"_vtable_offset"
.LASF314:
	.string	"option_index"
.LASF324:
	.string	"option_calibration_time"
.LASF201:
	.string	"eofflag"
.LASF69:
	.string	"data"
.LASF54:
	.string	"optarg"
.LASF11:
	.string	"__int64_t"
.LASF278:
	.string	"process_block_square"
.LASF311:
	.string	"argv"
.LASF294:
	.string	"output_set_filename"
.LASF118:
	.string	"Levels"
.LASF62:
	.string	"long double"
.LASF315:
	.string	"option_char"
.LASF218:
	.string	"alloc_chain"
.LASF273:
	.string	"puts"
.LASF293:
	.string	"config_print"
.LASF163:
	.string	"body_len"
.LASF244:
	.string	"delete_files_storage"
.LASF370:
	.string	"main"
.LASF207:
	.string	"res_bits"
.LASF8:
	.string	"size_t"
.LASF161:
	.string	"header_len"
.LASF10:
	.string	"__uint32_t"
.LASF77:
	.string	"identification"
.LASF325:
	.string	"option_config_filename"
.LASF289:
	.string	"timeweightSlow_create"
.LASF168:
	.string	"body_returned"
.LASF196:
	.string	"pcmret"
.LASF76:
	.string	"config"
.LASF335:
	.string	"segment_buffer_size"
.LASF135:
	.string	"Format"
.LASF20:
	.string	"_IO_read_end"
.LASF285:
	.string	"levels_create"
.LASF328:
	.string	"config_pathname"
.LASF7:
	.string	"short int"
.LASF12:
	.string	"long int"
.LASF125:
	.string	"ThirdOctaveFilter"
.LASF236:
	.string	"created_data_files"
.LASF347:
	.string	"percentil_count"
.LASF86:
	.string	"bits_per_sample"
.LASF219:
	.string	"next"
.LASF173:
	.string	"lacing_packet"
.LASF81:
	.string	"output_filename"
.LASF126:
	.string	"filter"
.LASF221:
	.string	"user_comments"
.LASF50:
	.string	"_IO_wide_data"
.LASF130:
	.string	"ThirdOctaveData"
.LASF60:
	.string	"flag"
.LASF147:
	.string	"subchunk_fmt"
.LASF75:
	.string	"uint64_t"
.LASF288:
	.string	"aweighting_create"
.LASF329:
	.string	"first_letter"
.LASF87:
	.string	"block_size"
.LASF193:
	.string	"codec_setup"
.LASF100:
	.string	"calibration_reference"
.LASF136:
	.string	"RiffChunk"
.LASF350:
	.string	"continuous"
.LASF239:
	.string	"record_state"
.LASF245:
	.string	"cweighting_destroy"
.LASF338:
	.string	"ring_c"
.LASF261:
	.string	"event_check"
.LASF58:
	.string	"name"
.LASF270:
	.string	"mqtt_begin"
.LASF131:
	.string	"ChunkID"
.LASF25:
	.string	"_IO_buf_base"
.LASF301:
	.string	"strlen"
.LASF216:
	.string	"reap"
.LASF101:
	.string	"calibration_delta"
.LASF322:
	.string	"option_channels"
.LASF41:
	.string	"_wide_data"
.LASF38:
	.string	"_lock"
.LASF98:
	.string	"background_duration"
.LASF269:
	.string	"output_open"
.LASF2:
	.string	"long unsigned int"
.LASF175:
	.string	"header_fill"
.LASF34:
	.string	"_old_offset"
.LASF318:
	.string	"option_input_filename"
.LASF56:
	.string	"_IO_FILE"
.LASF367:
	.string	"unused"
.LASF120:
	.string	"alpha"
.LASF183:
	.string	"packet"
.LASF280:
	.string	"__assert_fail"
.LASF138:
	.string	"NumChannels"
.LASF258:
	.string	"mqtt_publish"
.LASF162:
	.string	"body"
.LASF312:
	.string	"verbose_flag"
.LASF355:
	.string	"average_sum"
.LASF373:
	.string	"help"
.LASF235:
	.string	"created_audio_files"
.LASF262:
	.string	"get_percentil"
.LASF4:
	.string	"unsigned char"
.LASF157:
	.string	"endbit"
.LASF185:
	.string	"ogg_packet"
.LASF160:
	.string	"oggpack_buffer"
.LASF343:
	.string	"levels_afast"
.LASF217:
	.string	"internal"
.LASF23:
	.string	"_IO_write_ptr"
.LASF92:
	.string	"audio_loop_recording"
.LASF277:
	.string	"timeweight_filtering"
.LASF104:
	.string	"mqtt_topic"
.LASF250:
	.string	"output_close"
.LASF363:
	.string	"block_ring_aslow"
.LASF195:
	.string	"analysisp"
.LASF171:
	.string	"lacing_storage"
.LASF109:
	.string	"config_struct"
.LASF271:
	.string	"server_init"
.LASF16:
	.string	"__time_t"
.LASF133:
	.string	"ChunkHeader"
.LASF78:
	.string	"input_device"
.LASF330:
	.string	"twfastfilter"
.LASF40:
	.string	"_codecvt"
.LASF103:
	.string	"mqtt_broker"
.LASF238:
	.string	"time_elapsed"
.LASF300:
	.string	"malloc"
.LASF102:
	.string	"mqtt_enable"
.LASF323:
	.string	"option_identification"
.LASF63:
	.string	"gchar"
.LASF255:
	.string	"record_stop"
.LASF316:
	.string	"error_in_options"
.LASF128:
	.string	"ring"
.LASF6:
	.string	"signed char"
.LASF143:
	.string	"SubChunkFmt"
.LASF272:
	.string	"sbuffer_destroy"
.LASF333:
	.string	"cfilter"
.LASF5:
	.string	"short unsigned int"
.LASF282:
	.string	"sbuffer_write_ptr"
.LASF366:
	.string	"prog_name"
.LASF287:
	.string	"cweighting_create"
.LASF155:
	.string	"ogg_int64_t"
.LASF172:
	.string	"lacing_fill"
.LASF304:
	.string	"atoi"
.LASF199:
	.string	"pcm_returned"
.LASF371:
	.string	"__PRETTY_FUNCTION__"
.LASF151:
	.string	"current"
.LASF111:
	.string	"LAeq"
.LASF91:
	.string	"run_duration"
.LASF256:
	.string	"output_record"
.LASF123:
	.string	"Afilter"
.LASF241:
	.string	"running"
.LASF148:
	.string	"subchunk_data"
.LASF31:
	.string	"_chain"
.LASF194:
	.string	"vorbis_dsp_state"
.LASF65:
	.string	"float"
.LASF47:
	.string	"FILE"
.LASF275:
	.string	"sbuffer_size"
.LASF33:
	.string	"_flags2"
.LASF59:
	.string	"has_arg"
.LASF223:
	.string	"comments"
.LASF35:
	.string	"_cur_column"
.LASF176:
	.string	"e_o_s"
.LASF177:
	.string	"b_o_s"
.LASF95:
	.string	"data_loop_recording"
.LASF190:
	.string	"bitrate_nominal"
.LASF112:
	.string	"LApeak"
.LASF15:
	.string	"__off64_t"
.LASF169:
	.string	"lacing_vals"
.LASF46:
	.string	"_unused2"
.LASF307:
	.string	"strcmp"
.LASF365:
	.string	"segment_index"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/main.c"
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
