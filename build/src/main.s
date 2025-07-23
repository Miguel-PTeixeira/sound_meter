	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v03_1" "src/main.c"
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
	.string	"Sound meter v1.0 (Jul 22 2025)\nBased on MoSeMusic project by Guilherme Albano and David Meneses\nEzequiel Conde (ezeq@cc.isel.ipl.pt)"
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
	.string	"raw"
.LC31:
	.string	"a_weighted"
.LC32:
	.string	"a_squared"
.LC33:
	.string	"a_fast"
	.align 8
.LC34:
	.string	"LAeq, LAFmin, LAE, LAFmax, LApeak"
	.align 8
.LC35:
	.string	"lenght_read <= sbuffer_write_size(third_octave_data[i].ring)"
	.align 8
.LC36:
	.string	"lenght_read <= sbuffer_write_size(ring_c)"
	.align 8
.LC37:
	.string	"lenght_read <= sbuffer_write_size(ring_afast)"
	.align 8
.LC38:
	.string	"lenght_read <= sbuffer_write_size(ring_aslow)"
.LC39:
	.string	"\r%6.1f%6.1f%6.1f%6.1f%6.1f\n"
.LC40:
	.string	"\nTotal time: %d seconds\n"
	.align 8
.LC41:
	.string	"Saving configuration in ./sound_meter_config.json"
.LC42:
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
	subq	$1384, %rsp
	.cfi_offset 3, -24
	movl	%edi, -1364(%rbp)
	movq	%rsi, -1376(%rbp)
	.loc 1 87 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 108 6
	movl	$0, -1352(%rbp)
	.loc 1 110 8
	movq	$0, -1296(%rbp)
	.loc 1 111 8
	movq	$0, -1288(%rbp)
	.loc 1 112 8
	movq	$0, -1280(%rbp)
	.loc 1 113 8
	movq	$0, -1272(%rbp)
	.loc 1 114 8
	movq	$0, -1264(%rbp)
	.loc 1 115 8
	movq	$0, -1256(%rbp)
	.loc 1 116 8
	movq	$0, -1248(%rbp)
	.loc 1 117 8
	movq	$0, -1240(%rbp)
	.loc 1 118 8
	movq	$0, -1232(%rbp)
	.loc 1 119 8
	movq	$0, -1224(%rbp)
	.loc 1 120 6
	movl	$0, -1348(%rbp)
	.loc 1 122 2
	leaq	int_handler(%rip), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	signal@PLT
	.loc 1 124 8
	jmp	.L5
.L27:
	.loc 1 126 3
	cmpl	$118, -1312(%rbp)
	ja	.L5
	movl	-1312(%rbp), %eax
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
	movq	-1376(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	help
	.loc 1 131 11
	movl	$0, %eax
	jmp	.L24
.L7:
	.loc 1 133 4
	movl	$0, %eax
	call	about
	.loc 1 134 4
	jmp	.L5
.L17:
	.loc 1 136 27
	movq	optarg(%rip), %rax
	movq	%rax, -1296(%rbp)
	.loc 1 137 4
	jmp	.L5
.L13:
	.loc 1 139 26
	movq	optarg(%rip), %rax
	movq	%rax, -1288(%rbp)
	.loc 1 140 4
	jmp	.L5
.L11:
	.loc 1 142 27
	movq	optarg(%rip), %rax
	movq	%rax, -1280(%rbp)
	.loc 1 143 4
	jmp	.L5
.L16:
	.loc 1 145 30
	movq	optarg(%rip), %rax
	movq	%rax, -1272(%rbp)
	.loc 1 146 4
	jmp	.L5
.L15:
	.loc 1 148 27
	movq	optarg(%rip), %rax
	movq	%rax, -1232(%rbp)
	.loc 1 149 4
	jmp	.L5
.L10:
	.loc 1 151 23
	movq	optarg(%rip), %rax
	movq	%rax, -1264(%rbp)
	.loc 1 152 15
	movq	-1224(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 152 12 discriminator 1
	testl	%eax, %eax
	je	.L90
	.loc 1 152 57 discriminator 1
	movq	-1224(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 152 13 discriminator 1
	testl	%eax, %eax
	je	.L90
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
	movq	%rax, -1256(%rbp)
	.loc 1 157 4
	jmp	.L5
.L12:
	.loc 1 159 26
	movq	optarg(%rip), %rax
	movq	%rax, -1248(%rbp)
	.loc 1 160 4
	jmp	.L5
.L9:
	.loc 1 162 19
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1348(%rbp)
	.loc 1 163 4
	jmp	.L5
.L18:
	.loc 1 165 28
	movq	optarg(%rip), %rax
	movq	%rax, -1240(%rbp)
	.loc 1 166 4
	jmp	.L5
.L19:
	.loc 1 168 22
	movq	optarg(%rip), %rax
	movq	%rax, -1224(%rbp)
	.loc 1 169 15
	movq	-1224(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 169 12 discriminator 1
	testl	%eax, %eax
	je	.L91
	.loc 1 169 55 discriminator 1
	movq	-1224(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 169 52 discriminator 1
	testl	%eax, %eax
	je	.L91
	.loc 1 169 96 discriminator 2
	movq	-1224(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 169 13 discriminator 1
	testl	%eax, %eax
	je	.L91
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
	movl	$1, -1352(%rbp)
	.loc 1 175 4
	jmp	.L5
.L21:
	.loc 1 177 21
	movl	$1, -1352(%rbp)
	.loc 1 178 4
	jmp	.L5
.L90:
	.loc 1 154 4
	nop
	jmp	.L5
.L91:
	.loc 1 171 4
	nop
.L5:
	.loc 1 124 24
	leaq	-1356(%rbp), %rdx
	movq	-1376(%rbp), %rsi
	movl	-1364(%rbp), %eax
	movq	%rdx, %r8
	leaq	long_options.2(%rip), %rdx
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -1312(%rbp)
	.loc 1 125 34
	cmpl	$-1, -1312(%rbp)
	jne	.L27
	.loc 1 181 5
	cmpl	$0, -1352(%rbp)
	je	.L28
	.loc 1 182 3
	movq	-1376(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	help
	.loc 1 183 3
	movl	$1, %edi
	call	exit@PLT
.L28:
	.loc 1 189 14
	movq	-1232(%rbp), %rax
	movq	%rax, -1216(%rbp)
	.loc 1 190 5
	cmpq	$0, -1216(%rbp)
	jne	.L29
	.loc 1 191 21
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -1216(%rbp)
	.loc 1 192 6
	cmpq	$0, -1216(%rbp)
	jne	.L29
	.loc 1 193 20
	leaq	.LC14(%rip), %rax
	movq	%rax, -1216(%rbp)
.L29:
	.loc 1 195 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 195 5
	testl	%eax, %eax
	je	.L30
	.loc 1 196 3
	movq	-1216(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L30:
	.loc 1 214 7
	movq	-1216(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1358(%rbp)
	.loc 1 215 5
	cmpb	$47, -1358(%rbp)
	je	.L31
	.loc 1 215 26 discriminator 1
	cmpb	$46, -1358(%rbp)
	je	.L31
.LBB2:
	.loc 1 216 22
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -1200(%rbp)
	.loc 1 217 6
	cmpq	$0, -1200(%rbp)
	jne	.L32
	.loc 1 218 9
	leaq	.LC17(%rip), %rax
	movq	%rax, -1200(%rbp)
.L32:
	.loc 1 219 27
	movq	-1200(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 1 219 42 discriminator 1
	movq	-1216(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 219 40 discriminator 2
	addq	%rbx, %rax
	.loc 1 219 20 discriminator 2
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -1160(%rbp)
	.loc 1 220 3
	movq	-1200(%rbp), %rdx
	movq	-1160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 1 221 3
	movq	-1216(%rbp), %rdx
	movq	-1160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	.loc 1 222 19
	movq	-1160(%rbp), %rax
	movq	%rax, -1208(%rbp)
.LBE2:
	.loc 1 215 50
	jmp	.L33
.L31:
	.loc 1 225 21
	movq	-1216(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, -1208(%rbp)
.L33:
	.loc 1 227 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 227 5
	testl	%eax, %eax
	je	.L34
	.loc 1 228 3
	movq	-1208(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L34:
	.loc 1 230 18
	movq	-1208(%rbp), %rax
	movq	%rax, %rdi
	call	config_load@PLT
	.loc 1 230 16 discriminator 1
	movq	%rax, config_struct(%rip)
	.loc 1 232 2
	movq	-1208(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 236 5
	cmpq	$0, -1296(%rbp)
	je	.L35
	.loc 1 237 16
	movq	config_struct(%rip), %rax
	.loc 1 237 31
	movq	-1296(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L35:
	.loc 1 239 5
	cmpq	$0, -1288(%rbp)
	je	.L36
	.loc 1 240 16
	movq	config_struct(%rip), %rax
	.loc 1 240 29
	movq	-1288(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L36:
	.loc 1 242 5
	cmpq	$0, -1272(%rbp)
	je	.L37
	.loc 1 243 16
	movq	config_struct(%rip), %rax
	.loc 1 243 37
	movq	-1272(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L37:
	.loc 1 245 5
	cmpq	$0, -1264(%rbp)
	je	.L38
	.loc 1 246 32
	movq	-1264(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	.loc 1 246 16 discriminator 1
	movq	config_struct(%rip), %rax
	.loc 1 246 30 discriminator 1
	movl	%edx, 56(%rax)
.L38:
	.loc 1 248 5
	cmpq	$0, -1256(%rbp)
	je	.L39
	.loc 1 249 29
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	.loc 1 249 16 discriminator 1
	movq	config_struct(%rip), %rax
	.loc 1 249 27 discriminator 1
	movl	%edx, 60(%rax)
.L39:
	.loc 1 251 5
	cmpq	$0, -1248(%rbp)
	je	.L40
	.loc 1 252 16
	movq	config_struct(%rip), %rax
	.loc 1 252 33
	movq	-1248(%rbp), %rdx
	movq	%rdx, (%rax)
.L40:
	.loc 1 254 5
	cmpl	$0, -1348(%rbp)
	je	.L41
	.loc 1 255 16
	movq	config_struct(%rip), %rax
	.loc 1 255 31
	movl	-1348(%rbp), %edx
	movl	%edx, 84(%rax)
.L41:
	.loc 1 257 5
	cmpq	$0, -1240(%rbp)
	je	.L42
	.loc 1 258 37
	movq	-1240(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	.loc 1 258 16 discriminator 1
	movq	config_struct(%rip), %rax
	.loc 1 258 35 discriminator 1
	movl	%edx, 116(%rax)
.L42:
	.loc 1 260 5
	cmpq	$0, -1224(%rbp)
	je	.L43
	.loc 1 261 31
	movq	-1224(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	.loc 1 261 16 discriminator 1
	movq	config_struct(%rip), %rax
	.loc 1 261 29 discriminator 1
	movl	%edx, 68(%rax)
.L43:
	.loc 1 263 2
	movq	-1288(%rbp), %rdx
	movq	-1280(%rbp), %rax
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
	movl	-1348(%rbp), %eax
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
	movq	%rax, -1152(%rbp)
	.loc 1 283 29
	movl	$0, %eax
	call	timeweightSlow_create@PLT
	movq	%rax, -1144(%rbp)
	.loc 1 284 21
	movl	$3, %edi
	call	aweighting_create@PLT
	movq	%rax, -1136(%rbp)
	.loc 1 285 21
	movl	$2, %edi
	call	cweighting_create@PLT
	movq	%rax, -1128(%rbp)
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
	movq	%rax, -1120(%rbp)
	.loc 1 288 39
	movq	config_struct(%rip), %rax
	movl	60(%rax), %edx
	.loc 1 288 65
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 288 50
	imull	%edx, %eax
	movl	%eax, %eax
	.loc 1 288 19
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -1112(%rbp)
	.loc 1 289 45
	movq	config_struct(%rip), %rax
	movl	60(%rax), %edx
	.loc 1 289 71
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 289 56
	imull	%edx, %eax
	movl	%eax, %eax
	.loc 1 289 25
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -1104(%rbp)
	.loc 1 292 49
	movq	config_struct(%rip), %rax
	movl	76(%rax), %edx
	.loc 1 292 79
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 292 64
	addl	%edx, %eax
	.loc 1 292 92
	leal	-1(%rax), %ecx
	.loc 1 293 24
	movq	config_struct(%rip), %rax
	movl	68(%rax), %ebx
	.loc 1 293 9
	movl	%ecx, %eax
	movl	$0, %edx
	divl	%ebx
	.loc 1 293 38
	leal	1(%rax), %edx
	.loc 1 294 24
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 292 11
	imull	%edx, %eax
	movl	%eax, -1308(%rbp)
.LBB3:
	.loc 1 299 11
	movl	$0, -1344(%rbp)
	.loc 1 299 2
	jmp	.L46
.L47:
	.loc 1 300 34
	movl	$0, %eax
	call	timeweight_create@PLT
	.loc 1 300 32 discriminator 1
	movl	-1344(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	-16(%rdx), %rbx
	leaq	(%rbx,%rbp), %rdx
	subq	$976, %rdx
	movq	%rax, (%rdx)
	.loc 1 301 33
	movl	-1344(%rbp), %eax
	movl	%eax, %edi
	call	third_octave_create@PLT
	.loc 1 301 31 discriminator 1
	movl	-1344(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	-16(%rdx), %rbx
	leaq	(%rbx,%rbp), %rdx
	subq	$968, %rdx
	movq	%rax, (%rdx)
	.loc 1 302 33
	movl	$0, %eax
	call	levels_create@PLT
	.loc 1 302 31 discriminator 1
	movl	-1344(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	-16(%rdx), %rbx
	leaq	(%rbx,%rbp), %rdx
	subq	$960, %rdx
	movq	%rax, (%rdx)
	.loc 1 303 31
	movl	-1308(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	.loc 1 303 29 discriminator 1
	movl	-1344(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	-16(%rdx), %rbx
	leaq	(%rbx,%rbp), %rdx
	subq	$952, %rdx
	movq	%rax, (%rdx)
	.loc 1 299 81 discriminator 3
	addl	$1, -1344(%rbp)
.L46:
	.loc 1 299 20 discriminator 1
	movl	-1344(%rbp), %eax
	cmpl	$29, %eax
	jbe	.L47
.LBE3:
	.loc 1 306 27
	movl	-1308(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -1096(%rbp)
	.loc 1 307 27
	movl	-1308(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -1088(%rbp)
	.loc 1 308 31
	movl	-1308(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -1080(%rbp)
	.loc 1 309 31
	movl	-1308(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -1072(%rbp)
	.loc 1 311 26
	movl	$0, %eax
	call	levels_create@PLT
	movq	%rax, -1064(%rbp)
	.loc 1 316 19
	movq	config_struct(%rip), %rax
	movl	116(%rax), %eax
	.loc 1 316 5
	testl	%eax, %eax
	je	.L48
.LBB4:
	.loc 1 319 12
	movl	$0, -1340(%rbp)
	.loc 1 320 49
	movq	config_struct(%rip), %rax
	movl	116(%rax), %eax
	.loc 1 320 73
	imull	$1000, %eax, %eax
	.loc 1 320 12
	addl	$2000, %eax
	movl	%eax, -1304(%rbp)
	.loc 1 321 9
	pxor	%xmm0, %xmm0
	movss	%xmm0, -1336(%rbp)
	.loc 1 322 12
	movl	$0, -1332(%rbp)
	.loc 1 323 56
	movq	config_struct(%rip), %rax
	.loc 1 323 3
	movl	116(%rax), %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 325 38
	movl	-1308(%rbp), %eax
	movl	%eax, %edi
	call	sbuffer_create@PLT
	movq	%rax, -1056(%rbp)
	.loc 1 327 9
	jmp	.L53
.L56:
.LBB5:
	.loc 1 328 67
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 328 25
	movl	%eax, %edx
	movq	-1120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	input_device_read@PLT
	movq	%rax, -1048(%rbp)
	.loc 1 329 7
	cmpq	$0, -1048(%rbp)
	je	.L92
	.loc 1 332 36
	movq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -1040(%rbp)
	.loc 1 333 18
	movq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 333 18 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 333 35 is_stmt 1 discriminator 1
	cmpq	-1048(%rbp), %rax
	jnb	.L52
	.loc 1 333 12 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$333, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L52:
	.loc 1 335 4
	movq	-1048(%rbp), %rax
	movl	%eax, %ecx
	movq	-1040(%rbp), %rdx
	movq	-1120(%rbp), %rsi
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	call	aweighting_filtering@PLT
	.loc 1 336 4
	movq	-1048(%rbp), %rax
	movl	%eax, %edx
	movq	-1040(%rbp), %rcx
	movq	-1040(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_block_square@PLT
	.loc 1 337 4
	movq	-1048(%rbp), %rax
	movl	%eax, %ecx
	movq	-1040(%rbp), %rdx
	movq	-1040(%rbp), %rsi
	movq	-1152(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_filtering@PLT
	.loc 1 338 4
	movq	-1048(%rbp), %rax
	movl	%eax, %edx
	movq	-1056(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 340 8
	movq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	movl	%eax, %edx
	.loc 1 340 55 discriminator 1
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 1 340 7 discriminator 1
	cmpl	%eax, %edx
	jb	.L53
	.loc 1 341 5
	movq	-1056(%rbp), %rsi
	movq	-1064(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 342 8
	cmpl	$1999, -1340(%rbp)
	ja	.L54
	.loc 1 343 10
	movl	verbose_flag.1(%rip), %eax
	.loc 1 343 9
	testl	%eax, %eax
	je	.L55
	.loc 1 344 7
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L55
.L54:
	.loc 1 347 34
	movq	-1064(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 347 39
	movss	(%rax), %xmm0
	.loc 1 347 18
	movss	-1336(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -1336(%rbp)
	.loc 1 348 15
	addl	$1, -1332(%rbp)
	.loc 1 349 10
	movl	verbose_flag.1(%rip), %eax
	.loc 1 349 9
	testl	%eax, %eax
	je	.L55
	.loc 1 350 44
	movl	-1304(%rbp), %eax
	subl	-1340(%rbp), %eax
	.loc 1 350 7
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
	.loc 1 352 35
	movq	-1064(%rbp), %rax
	movl	$0, (%rax)
	.loc 1 353 30
	movq	config_struct(%rip), %rax
	movl	72(%rax), %eax
	.loc 1 353 14
	addl	%eax, -1340(%rbp)
.L53:
.LBE5:
	.loc 1 327 19
	movl	-1340(%rbp), %eax
	cmpl	-1304(%rbp), %eax
	jb	.L56
	jmp	.L51
.L92:
.LBB6:
	.loc 1 330 5
	nop
.L51:
.LBE6:
	.loc 1 356 16
	movq	config_struct(%rip), %rax
	.loc 1 356 35
	movl	$0, 116(%rax)
	.loc 1 357 51
	movq	config_struct(%rip), %rax
	movss	120(%rax), %xmm1
	.loc 1 358 16
	movl	-1332(%rbp), %eax
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
	movss	-1336(%rbp), %xmm2
	divss	%xmm0, %xmm2
	.loc 1 357 16
	movq	config_struct(%rip), %rax
	.loc 1 357 75
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	.loc 1 357 36
	movss	%xmm0, 124(%rax)
	.loc 1 360 3
	movq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 364 7
	movl	verbose_flag.1(%rip), %eax
	.loc 1 364 6
	testl	%eax, %eax
	je	.L48
	.loc 1 365 59
	movq	config_struct(%rip), %rax
	movss	120(%rax), %xmm0
	.loc 1 365 4
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 366 42
	movl	-1332(%rbp), %eax
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
	movss	-1336(%rbp), %xmm1
	divss	%xmm0, %xmm1
	.loc 1 366 4
	pxor	%xmm6, %xmm6
	cvtss2sd	%xmm1, %xmm6
	movq	%xmm6, %rax
	movq	%rax, %xmm0
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 367 53
	movq	config_struct(%rip), %rax
	movss	124(%rax), %xmm0
	.loc 1 367 4
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
	.loc 1 373 2
	movl	$0, %eax
	call	server_init@PLT
	.loc 1 375 19
	movq	config_struct(%rip), %rax
	movzbl	128(%rax), %eax
	.loc 1 375 5
	testb	%al, %al
	je	.L61
	.loc 1 376 3
	movl	$0, %eax
	call	mqtt_begin@PLT
.L61:
	.loc 1 378 6
	cmpq	$0, -1288(%rbp)
	sete	%al
	movb	%al, -1357(%rbp)
	.loc 1 380 2
	movzbl	-1357(%rbp), %eax
	movl	%eax, %edi
	call	output_open@PLT
	.loc 1 382 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 382 5
	testl	%eax, %eax
	je	.L62
	.loc 1 383 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L62:
	.loc 1 385 9
	movq	$0, -1192(%rbp)
	.loc 1 386 9
	movq	$0, -1184(%rbp)
	.loc 1 387 9
	movq	$0, -1176(%rbp)
	.loc 1 388 9
	movq	$0, -1168(%rbp)
	.loc 1 390 6
	movzbl	-1357(%rbp), %eax
	xorl	$1, %eax
	.loc 1 390 5
	testb	%al, %al
	je	.L63
	.loc 1 390 18 discriminator 1
	movl	verbose_flag.1(%rip), %eax
	testl	%eax, %eax
	je	.L63
	.loc 1 391 8
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	audit_create@PLT
	movq	%rax, -1192(%rbp)
	.loc 1 392 8
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	audit_create@PLT
	movq	%rax, -1184(%rbp)
	.loc 1 393 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	audit_create@PLT
	movq	%rax, -1176(%rbp)
	.loc 1 394 8
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	call	audit_create@PLT
	movq	%rax, -1168(%rbp)
.L63:
	.loc 1 397 5
	cmpb	$0, -1357(%rbp)
	je	.L64
	.loc 1 398 17
	movq	config_struct(%rip), %rax
	.loc 1 398 40
	movl	$1, 80(%rax)
.L64:
	.loc 1 401 2
	movl	$0, %eax
	call	lae_average_create@PLT
	.loc 1 403 11
	movl	$0, -1328(%rbp)
	.loc 1 404 15
	movl	-1348(%rbp), %eax
	imull	$1000, %eax, %eax
	movl	%eax, -1348(%rbp)
	.loc 1 406 2
	movl	$0, %eax
	call	record_start@PLT
	.loc 1 408 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 408 5
	testl	%eax, %eax
	je	.L66
	.loc 1 409 3
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 411 8
	jmp	.L66
.L82:
.LBB7:
	.loc 1 412 66
	movq	config_struct(%rip), %rax
	movl	68(%rax), %eax
	.loc 1 412 24
	movl	%eax, %edx
	movq	-1120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	input_device_read@PLT
	movq	%rax, -1032(%rbp)
	.loc 1 413 6
	cmpq	$0, -1032(%rbp)
	je	.L93
.LBB8:
	.loc 1 416 11
	movl	$0, -1324(%rbp)
	.loc 1 416 3
	jmp	.L69
.L71:
.LBB9:
	.loc 1 417 26
	movl	-1324(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$952, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -1000(%rbp)
	.loc 1 418 18
	movl	-1324(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$952, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 418 18 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 418 35 is_stmt 1 discriminator 1
	cmpq	-1032(%rbp), %rax
	jnb	.L70
	.loc 1 418 12 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$418, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L70:
	.loc 1 419 4
	movq	-1032(%rbp), %rax
	movl	%eax, %ecx
	movl	-1324(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$968, %rax
	movq	(%rax), %rax
	movq	-1000(%rbp), %rdx
	movq	-1120(%rbp), %rsi
	movq	%rax, %rdi
	call	third_octave_filtering@PLT
	.loc 1 420 4
	movq	-1032(%rbp), %rax
	movl	%eax, %edx
	movq	-1000(%rbp), %rcx
	movq	-1000(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_block_square@PLT
	.loc 1 421 4
	movq	-1032(%rbp), %rax
	movl	%eax, %ecx
	movl	-1324(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$976, %rax
	movq	(%rax), %rax
	movq	-1000(%rbp), %rdx
	movq	-1000(%rbp), %rsi
	movq	%rax, %rdi
	call	timeweight_filtering@PLT
	.loc 1 422 4
	movq	-1032(%rbp), %rax
	movl	%eax, %edx
	movl	-1324(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$952, %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
.LBE9:
	.loc 1 416 23 discriminator 2
	addl	$1, -1324(%rbp)
.L69:
	.loc 1 416 17 discriminator 1
	cmpl	$29, -1324(%rbp)
	jle	.L71
.LBE8:
	.loc 1 425 25
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -1024(%rbp)
	.loc 1 426 29
	movq	-1080(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -1016(%rbp)
	.loc 1 427 29
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_ptr@PLT
	movq	%rax, -1008(%rbp)
	.loc 1 428 17
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 428 17 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 428 34 is_stmt 1 discriminator 1
	cmpq	-1032(%rbp), %rax
	jnb	.L72
	.loc 1 428 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$428, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L72:
	.loc 1 429 17
	movq	-1080(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 429 17 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 429 34 is_stmt 1 discriminator 1
	cmpq	-1032(%rbp), %rax
	jnb	.L73
	.loc 1 429 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$429, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L73:
	.loc 1 430 17
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_write_size@PLT
	.loc 1 430 17 is_stmt 0 discriminator 1
	movl	%eax, %eax
	.loc 1 430 34 is_stmt 1 discriminator 1
	cmpq	-1032(%rbp), %rax
	jnb	.L74
	.loc 1 430 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$430, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L74:
	.loc 1 432 3
	movq	-1032(%rbp), %rax
	movl	%eax, %ecx
	movq	-1112(%rbp), %rdx
	movq	-1120(%rbp), %rsi
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	call	aweighting_filtering@PLT
	.loc 1 433 3
	movq	-1032(%rbp), %rax
	movl	%eax, %ecx
	movq	-1024(%rbp), %rdx
	movq	-1120(%rbp), %rsi
	movq	-1128(%rbp), %rax
	movq	%rax, %rdi
	call	cweighting_filtering@PLT
	.loc 1 434 3
	movq	-1032(%rbp), %rax
	movl	%eax, %edx
	movq	-1088(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 436 3
	movq	-1032(%rbp), %rax
	movl	%eax, %edx
	movq	-1104(%rbp), %rcx
	movq	-1112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_block_square@PLT
	.loc 1 438 3
	movq	-1032(%rbp), %rax
	movl	%eax, %ecx
	movq	-1016(%rbp), %rdx
	movq	-1104(%rbp), %rsi
	movq	-1152(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_filtering@PLT
	.loc 1 439 3
	movq	-1032(%rbp), %rax
	movl	%eax, %ecx
	movq	-1008(%rbp), %rdx
	movq	-1104(%rbp), %rsi
	movq	-1144(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_filtering@PLT
	.loc 1 440 3
	movq	-1032(%rbp), %rax
	movl	%eax, %edx
	movq	-1080(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 441 3
	movq	-1032(%rbp), %rax
	movl	%eax, %edx
	movq	-1072(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sbuffer_write_produces@PLT
	.loc 1 443 7
	movzbl	-1357(%rbp), %eax
	xorl	$1, %eax
	.loc 1 443 6
	testb	%al, %al
	je	.L75
	.loc 1 443 19 discriminator 1
	movl	verbose_flag.1(%rip), %eax
	testl	%eax, %eax
	je	.L75
	.loc 1 444 4
	movq	-1032(%rbp), %rax
	movl	%eax, %edx
	movq	-1120(%rbp), %rcx
	movq	-1192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	audit_append_samples@PLT
	.loc 1 445 4
	movq	-1032(%rbp), %rax
	movl	%eax, %edx
	movq	-1112(%rbp), %rcx
	movq	-1184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	audit_append_samples@PLT
	.loc 1 446 4
	movq	-1032(%rbp), %rax
	movl	%eax, %edx
	movq	-1104(%rbp), %rcx
	movq	-1176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	audit_append_samples@PLT
	.loc 1 447 4
	movq	-1032(%rbp), %rax
	movl	%eax, %edx
	movq	-1016(%rbp), %rcx
	movq	-1168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	audit_append_samples@PLT
.L75:
	.loc 1 449 7
	movq	-1080(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_size@PLT
	movl	%eax, %edx
	.loc 1 449 48 discriminator 1
	movq	config_struct(%rip), %rax
	movl	76(%rax), %eax
	.loc 1 449 6 discriminator 1
	cmpl	%eax, %edx
	jb	.L76
.LBB10:
.LBB11:
	.loc 1 450 12
	movl	$0, -1320(%rbp)
	.loc 1 450 4
	jmp	.L77
.L78:
	.loc 1 451 5
	movq	config_struct(%rip), %rdx
	movl	-1320(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$952, %rax
	movq	(%rax), %rsi
	movl	-1320(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$960, %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 450 24 discriminator 3
	addl	$1, -1320(%rbp)
.L77:
	.loc 1 450 18 discriminator 1
	cmpl	$29, -1320(%rbp)
	jle	.L78
.LBE11:
	.loc 1 453 4
	movq	config_struct(%rip), %rdx
	movq	-1088(%rbp), %rcx
	movq	-1064(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_segment_levelpeak@PLT
	.loc 1 454 4
	movq	config_struct(%rip), %rcx
	movq	-1072(%rbp), %rdx
	movq	-1080(%rbp), %rsi
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	process_segment_levels@PLT
	.loc 1 456 37
	movq	-1064(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 456 54
	subl	$1, %eax
	.loc 1 456 8
	movl	%eax, -1300(%rbp)
	.loc 1 462 19
	movq	-1064(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 462 27
	movl	-1300(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 458 4
	movss	(%rax), %xmm5
	movss	%xmm5, -1368(%rbp)
	.loc 1 461 19
	movq	-1064(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 461 27
	movl	-1300(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 458 4
	movss	(%rax), %xmm6
	movss	%xmm6, -1380(%rbp)
	.loc 1 460 19
	movq	-1064(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 460 24
	movl	-1300(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 458 4
	movss	(%rax), %xmm7
	movss	%xmm7, -1384(%rbp)
	.loc 1 459 19
	movq	-1064(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 459 27
	movl	-1300(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 458 4
	movss	(%rax), %xmm1
	movss	%xmm1, -1388(%rbp)
	.loc 1 458 50
	movq	-1064(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 458 56
	movl	-1300(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 1 458 4
	movl	(%rax), %ebx
	.loc 1 458 26
	movl	$0, %edi
	call	time@PLT
	.loc 1 458 4 discriminator 1
	movss	-1368(%rbp), %xmm4
	movss	-1380(%rbp), %xmm3
	movss	-1384(%rbp), %xmm2
	movss	-1388(%rbp), %xmm1
	movd	%ebx, %xmm0
	movq	%rax, %rdi
	call	server_send@PLT
	.loc 1 464 21
	movq	config_struct(%rip), %rax
	movzbl	128(%rax), %eax
	.loc 1 464 7
	testb	%al, %al
	je	.L79
	.loc 1 465 46
	movq	-1064(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 465 63
	subl	$1, %eax
	.loc 1 465 5
	movl	%eax, %edx
	movq	-1064(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mqtt_publish@PLT
.L79:
	.loc 1 466 8
	movl	verbose_flag.1(%rip), %eax
	.loc 1 466 7
	testl	%eax, %eax
	je	.L80
	.loc 1 472 19
	movq	-1064(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 472 27
	movl	-1300(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 467 5
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	.loc 1 471 19
	movq	-1064(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 471 27
	movl	-1300(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 467 5
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	.loc 1 470 19
	movq	-1064(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 470 24
	movl	-1300(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 467 5
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 1 469 19
	movq	-1064(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 469 27
	movl	-1300(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 467 5
	cvtss2sd	%xmm0, %xmm0
	.loc 1 468 19
	movq	-1064(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 468 25
	movl	-1300(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm4
	.loc 1 467 5
	cvtss2sd	%xmm4, %xmm4
	movq	%xmm4, %rax
	movapd	%xmm3, %xmm4
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdi
	movl	$5, %eax
	call	printf@PLT
.L80:
	.loc 1 474 33
	movq	config_struct(%rip), %rax
	movl	72(%rax), %eax
	.loc 1 474 17
	addl	%eax, -1328(%rbp)
.L76:
.LBE10:
	.loc 1 478 20
	movq	-1064(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 478 53
	movq	config_struct(%rip), %rax
	movl	80(%rax), %eax
	.loc 1 478 6
	cmpl	%eax, %edx
	jne	.L66
	.loc 1 479 4
	movzbl	-1357(%rbp), %edx
	leaq	-992(%rbp), %rcx
	movq	-1064(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	output_record@PLT
	.loc 1 480 34
	movq	-1064(%rbp), %rax
	movl	$0, (%rax)
.L66:
.LBE7:
	.loc 1 411 9
	movzbl	running(%rip), %eax
	.loc 1 411 17
	testb	%al, %al
	je	.L68
	.loc 1 411 17 is_stmt 0 discriminator 1
	cmpl	$0, -1348(%rbp)
	je	.L82
	.loc 1 411 55 is_stmt 1 discriminator 2
	movl	-1348(%rbp), %eax
	.loc 1 411 39 discriminator 2
	cmpl	%eax, -1328(%rbp)
	jb	.L82
	jmp	.L68
.L93:
.LBB12:
	.loc 1 414 4
	nop
.L68:
.LBE12:
	.loc 1 483 10
	movb	$0, running(%rip)
	.loc 1 484 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 484 5
	testl	%eax, %eax
	je	.L83
	.loc 1 485 3
	movl	-1328(%rbp), %eax
	movl	%eax, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	movl	%eax, %esi
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L83:
	.loc 1 487 2
	movzbl	-1357(%rbp), %edx
	leaq	-992(%rbp), %rcx
	movq	-1064(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	output_record@PLT
	.loc 1 489 6
	movl	verbose_flag.1(%rip), %eax
	.loc 1 489 5
	testl	%eax, %eax
	je	.L84
	.loc 1 490 3
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L84:
	.loc 1 491 2
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	call	config_save@PLT
	.loc 1 494 6
	movzbl	-1357(%rbp), %eax
	xorl	$1, %eax
	.loc 1 494 5
	testb	%al, %al
	je	.L85
	.loc 1 494 18 discriminator 1
	movl	verbose_flag.1(%rip), %eax
	testl	%eax, %eax
	je	.L85
	.loc 1 495 3
	movq	-1192(%rbp), %rax
	movq	%rax, %rdi
	call	audit_destroy@PLT
	.loc 1 496 3
	movq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	audit_destroy@PLT
	.loc 1 497 3
	movq	-1176(%rbp), %rax
	movq	%rax, %rdi
	call	audit_destroy@PLT
	.loc 1 498 3
	movq	-1168(%rbp), %rax
	movq	%rax, %rdi
	call	audit_destroy@PLT
.L85:
	.loc 1 500 2
	movl	$0, %eax
	call	server_end@PLT
	.loc 1 501 19
	movq	config_struct(%rip), %rax
	movzbl	128(%rax), %eax
	.loc 1 501 5
	testb	%al, %al
	je	.L86
	.loc 1 502 3
	movl	$0, %eax
	call	mqtt_end@PLT
.L86:
	.loc 1 503 2
	movl	$0, %eax
	call	input_device_close@PLT
	.loc 1 504 2
	movl	$0, %eax
	call	output_close@PLT
.LBB13:
	.loc 1 506 10
	movl	$0, -1316(%rbp)
	.loc 1 506 2
	jmp	.L87
.L88:
	.loc 1 507 3
	movl	-1316(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$960, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	levels_destroy@PLT
	.loc 1 508 3
	movl	-1316(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$968, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	third_octave_destroy@PLT
	.loc 1 509 3
	movl	-1316(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$952, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 506 22 discriminator 3
	addl	$1, -1316(%rbp)
.L87:
	.loc 1 506 16 discriminator 1
	cmpl	$29, -1316(%rbp)
	jle	.L88
.LBE13:
	.loc 1 512 2
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	levels_destroy@PLT
	.loc 1 513 2
	movq	-1152(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_destroy@PLT
	.loc 1 514 2
	movq	-1144(%rbp), %rax
	movq	%rax, %rdi
	call	timeweight_destroy@PLT
	.loc 1 515 2
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	call	aweighting_destroy@PLT
	.loc 1 516 2
	movq	-1128(%rbp), %rax
	movq	%rax, %rdi
	call	cweighting_destroy@PLT
	.loc 1 517 2
	movl	$0, %eax
	call	lae_average_destroy@PLT
	.loc 1 518 2
	movq	config_struct(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	config_destroy@PLT
	.loc 1 519 2
	movq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 520 2
	movq	-1112(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 521 2
	movq	-1120(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 522 2
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 523 2
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 524 2
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 525 2
	movq	-1080(%rbp), %rax
	movq	%rax, %rdi
	call	sbuffer_destroy@PLT
	.loc 1 526 36
	movq	record_struct(%rip), %rax
	.loc 1 526 2
	movq	944(%rax), %rax
	movq	%rax, %rdi
	call	delete_files_storage@PLT
	.loc 1 527 36
	movq	record_struct(%rip), %rax
	.loc 1 527 2
	movq	952(%rax), %rax
	movq	%rax, %rdi
	call	delete_files_storage@PLT
	movl	$0, %eax
.L24:
	.loc 1 528 1
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L89
	call	__stack_chk_fail@PLT
.L89:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE311:
	.size	main, .-main
	.section	.rodata
.LC43:
	.string	"verbose"
.LC44:
	.string	"help"
.LC45:
	.string	"version"
.LC46:
	.string	"device"
.LC47:
	.string	"input"
.LC48:
	.string	"output"
.LC49:
	.string	"output_format"
.LC50:
	.string	"sample_rate"
.LC51:
	.string	"channels"
.LC52:
	.string	"identification"
.LC53:
	.string	"duration"
.LC54:
	.string	"calibrate"
.LC55:
	.string	"config"
.LC56:
	.string	"block_size"
	.section	.data.rel.local,"aw"
	.align 32
	.type	long_options.2, @object
	.size	long_options.2, 480
long_options.2:
	.quad	.LC43
	.long	0
	.zero	4
	.quad	verbose_flag.1
	.long	1
	.zero	4
	.quad	.LC44
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC45
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC46
	.long	1
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC47
	.long	1
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC48
	.long	1
	.zero	4
	.quad	0
	.long	111
	.zero	4
	.quad	.LC49
	.long	1
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC50
	.long	1
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC51
	.long	1
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC52
	.long	1
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC53
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC54
	.long	2
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC55
	.long	1
	.zero	4
	.quad	0
	.long	103
	.zero	4
	.quad	.LC56
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
	.file 28 "src/sbuffer.h"
	.file 29 "/usr/include/assert.h"
	.file 30 "/usr/include/stdlib.h"
	.file 31 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1bc5
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1e
	.long	.LASF364
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
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1f
	.byte	0x8
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0xc
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
	.uleb128 0xc
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
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF17
	.uleb128 0x16
	.long	0xd2
	.uleb128 0xf
	.long	0xd2
	.long	0xee
	.uleb128 0x14
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
	.long	.LASF365
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x18
	.long	.LASF48
	.uleb128 0x4
	.long	0x289
	.uleb128 0x4
	.long	0xee
	.uleb128 0xf
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
	.uleb128 0xf
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
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF60
	.uleb128 0xc
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
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.long	.LASF64
	.uleb128 0x16
	.long	0x387
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.long	.LASF65
	.uleb128 0x3
	.long	.LASF66
	.byte	0xb
	.byte	0x27
	.byte	0x18
	.long	0x3a6
	.uleb128 0xe
	.long	.LASF67
	.byte	0x10
	.byte	0xb
	.byte	0x2b
	.byte	0x8
	.long	0x3ce
	.uleb128 0x1
	.long	.LASF68
	.byte	0xb
	.byte	0x2d
	.byte	0xa
	.long	0x3ce
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
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF70
	.uleb128 0x3
	.long	.LASF71
	.byte	0xd
	.byte	0x48
	.byte	0x10
	.long	0x3f2
	.uleb128 0x4
	.long	0x3f7
	.uleb128 0x22
	.long	0x402
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x4
	.long	0x39a
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
	.long	0x5cc
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
	.long	0x5cc
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
	.long	0x5cc
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
	.long	0x5cc
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
	.uleb128 0xc
	.byte	0x1
	.byte	0x2
	.long	.LASF107
	.uleb128 0x17
	.long	.LASF108
	.byte	0xf
	.byte	0x7f
	.byte	0x17
	.long	0x5df
	.uleb128 0x4
	.long	0x42b
	.uleb128 0xb
	.byte	0x4
	.byte	0x10
	.byte	0x33
	.long	0x607
	.uleb128 0x6
	.string	"pos"
	.byte	0x10
	.byte	0x34
	.byte	0xb
	.long	0x41
	.byte	0
	.uleb128 0x1
	.long	.LASF109
	.byte	0x10
	.byte	0x35
	.byte	0x8
	.long	0x607
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.long	0x387
	.long	0x616
	.uleb128 0x23
	.long	0x3a
	.byte	0
	.uleb128 0x3
	.long	.LASF110
	.byte	0x10
	.byte	0x36
	.byte	0x3
	.long	0x5e4
	.uleb128 0xb
	.byte	0x60
	.byte	0x10
	.byte	0x3b
	.long	0x6d4
	.uleb128 0x1
	.long	.LASF111
	.byte	0x10
	.byte	0x3c
	.byte	0xb
	.long	0x41
	.byte	0
	.uleb128 0x1
	.long	.LASF112
	.byte	0x10
	.byte	0x3d
	.byte	0x9
	.long	0x6d4
	.byte	0x8
	.uleb128 0x1
	.long	.LASF113
	.byte	0x10
	.byte	0x3e
	.byte	0x9
	.long	0x6d4
	.byte	0x10
	.uleb128 0x1
	.long	.LASF114
	.byte	0x10
	.byte	0x3f
	.byte	0x9
	.long	0x6d4
	.byte	0x18
	.uleb128 0x1
	.long	.LASF115
	.byte	0x10
	.byte	0x40
	.byte	0x9
	.long	0x6d4
	.byte	0x20
	.uleb128 0x6
	.string	"LAE"
	.byte	0x10
	.byte	0x41
	.byte	0x9
	.long	0x6d4
	.byte	0x28
	.uleb128 0x6
	.string	"LAS"
	.byte	0x10
	.byte	0x42
	.byte	0x9
	.long	0x6d4
	.byte	0x30
	.uleb128 0x1
	.long	.LASF116
	.byte	0x10
	.byte	0x43
	.byte	0x8
	.long	0x387
	.byte	0x38
	.uleb128 0x1
	.long	.LASF117
	.byte	0x10
	.byte	0x44
	.byte	0xd
	.long	0x6d9
	.byte	0x40
	.uleb128 0x1
	.long	.LASF118
	.byte	0x10
	.byte	0x45
	.byte	0x7
	.long	0x35c
	.byte	0x48
	.uleb128 0x1
	.long	.LASF119
	.byte	0x10
	.byte	0x46
	.byte	0x9
	.long	0x393
	.byte	0x50
	.uleb128 0x1
	.long	.LASF120
	.byte	0x10
	.byte	0x47
	.byte	0xb
	.long	0x41
	.byte	0x58
	.uleb128 0x1
	.long	.LASF121
	.byte	0x10
	.byte	0x48
	.byte	0x6
	.long	0x72
	.byte	0x5c
	.byte	0
	.uleb128 0x4
	.long	0x387
	.uleb128 0x4
	.long	0x616
	.uleb128 0x3
	.long	.LASF122
	.byte	0x10
	.byte	0x49
	.byte	0x3
	.long	0x622
	.uleb128 0xb
	.byte	0x8
	.byte	0x11
	.byte	0x24
	.long	0x70d
	.uleb128 0x1
	.long	.LASF123
	.byte	0x11
	.byte	0x25
	.byte	0x8
	.long	0x387
	.byte	0
	.uleb128 0x1
	.long	.LASF124
	.byte	0x11
	.byte	0x26
	.byte	0x8
	.long	0x387
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF125
	.byte	0x11
	.byte	0x27
	.byte	0x3
	.long	0x6ea
	.uleb128 0xb
	.byte	0x18
	.byte	0x11
	.byte	0x31
	.long	0x745
	.uleb128 0x6
	.string	"u"
	.byte	0x11
	.byte	0x32
	.byte	0x9
	.long	0x6d4
	.byte	0
	.uleb128 0x6
	.string	"N"
	.byte	0x11
	.byte	0x35
	.byte	0x6
	.long	0x72
	.byte	0x8
	.uleb128 0x1
	.long	.LASF126
	.byte	0x11
	.byte	0x36
	.byte	0xf
	.long	0x745
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	0x38e
	.uleb128 0x3
	.long	.LASF127
	.byte	0x11
	.byte	0x37
	.byte	0x3
	.long	0x719
	.uleb128 0xb
	.byte	0x18
	.byte	0x11
	.byte	0x42
	.long	0x782
	.uleb128 0x6
	.string	"u"
	.byte	0x11
	.byte	0x43
	.byte	0x9
	.long	0x6d4
	.byte	0
	.uleb128 0x6
	.string	"N"
	.byte	0x11
	.byte	0x46
	.byte	0x6
	.long	0x72
	.byte	0x8
	.uleb128 0x1
	.long	.LASF126
	.byte	0x11
	.byte	0x47
	.byte	0xf
	.long	0x745
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF128
	.byte	0x11
	.byte	0x48
	.byte	0x3
	.long	0x756
	.uleb128 0xb
	.byte	0x18
	.byte	0x11
	.byte	0x4e
	.long	0x7ba
	.uleb128 0x6
	.string	"u"
	.byte	0x11
	.byte	0x4f
	.byte	0xc
	.long	0x6d4
	.byte	0
	.uleb128 0x6
	.string	"N"
	.byte	0x11
	.byte	0x50
	.byte	0x9
	.long	0x72
	.byte	0x8
	.uleb128 0x1
	.long	.LASF126
	.byte	0x11
	.byte	0x51
	.byte	0x12
	.long	0x745
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF129
	.byte	0x11
	.byte	0x52
	.byte	0x3
	.long	0x78e
	.uleb128 0xb
	.byte	0x20
	.byte	0x11
	.byte	0x54
	.long	0x803
	.uleb128 0x1
	.long	.LASF130
	.byte	0x11
	.byte	0x55
	.byte	0xe
	.long	0x803
	.byte	0
	.uleb128 0x1
	.long	.LASF131
	.byte	0x11
	.byte	0x56
	.byte	0x15
	.long	0x808
	.byte	0x8
	.uleb128 0x1
	.long	.LASF132
	.byte	0x11
	.byte	0x57
	.byte	0xa
	.long	0x80d
	.byte	0x10
	.uleb128 0x1
	.long	.LASF133
	.byte	0x11
	.byte	0x58
	.byte	0x12
	.long	0x817
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	0x70d
	.uleb128 0x4
	.long	0x7ba
	.uleb128 0x4
	.long	0x6de
	.uleb128 0x18
	.long	.LASF134
	.uleb128 0x4
	.long	0x812
	.uleb128 0x3
	.long	.LASF135
	.byte	0x11
	.byte	0x59
	.byte	0x2
	.long	0x7c6
	.uleb128 0x4
	.long	0xc8
	.uleb128 0xb
	.byte	0x8
	.byte	0x12
	.byte	0x1e
	.long	0x850
	.uleb128 0x1
	.long	.LASF136
	.byte	0x12
	.byte	0x1f
	.byte	0x7
	.long	0xde
	.byte	0
	.uleb128 0x1
	.long	.LASF137
	.byte	0x12
	.byte	0x20
	.byte	0xb
	.long	0x413
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF138
	.byte	0x12
	.byte	0x21
	.byte	0x3
	.long	0x82d
	.uleb128 0xb
	.byte	0xc
	.byte	0x12
	.byte	0x23
	.long	0x87f
	.uleb128 0x1
	.long	.LASF139
	.byte	0x12
	.byte	0x24
	.byte	0xe
	.long	0x850
	.byte	0
	.uleb128 0x1
	.long	.LASF140
	.byte	0x12
	.byte	0x25
	.byte	0x7
	.long	0xde
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF141
	.byte	0x12
	.byte	0x26
	.byte	0x3
	.long	0x85c
	.uleb128 0xb
	.byte	0x18
	.byte	0x12
	.byte	0x28
	.long	0x8ef
	.uleb128 0x1
	.long	.LASF139
	.byte	0x12
	.byte	0x29
	.byte	0xe
	.long	0x850
	.byte	0
	.uleb128 0x1
	.long	.LASF142
	.byte	0x12
	.byte	0x2a
	.byte	0xb
	.long	0x407
	.byte	0x8
	.uleb128 0x1
	.long	.LASF143
	.byte	0x12
	.byte	0x2b
	.byte	0xb
	.long	0x407
	.byte	0xa
	.uleb128 0x1
	.long	.LASF144
	.byte	0x12
	.byte	0x2c
	.byte	0xb
	.long	0x413
	.byte	0xc
	.uleb128 0x1
	.long	.LASF145
	.byte	0x12
	.byte	0x2d
	.byte	0xb
	.long	0x413
	.byte	0x10
	.uleb128 0x1
	.long	.LASF146
	.byte	0x12
	.byte	0x2e
	.byte	0xb
	.long	0x407
	.byte	0x14
	.uleb128 0x1
	.long	.LASF147
	.byte	0x12
	.byte	0x2f
	.byte	0xb
	.long	0x407
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.long	.LASF148
	.byte	0x12
	.byte	0x30
	.byte	0x3
	.long	0x88b
	.uleb128 0xb
	.byte	0x8
	.byte	0x12
	.byte	0x32
	.long	0x911
	.uleb128 0x1
	.long	.LASF139
	.byte	0x12
	.byte	0x33
	.byte	0xe
	.long	0x850
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF149
	.byte	0x12
	.byte	0x34
	.byte	0x3
	.long	0x8fb
	.uleb128 0xe
	.long	.LASF150
	.byte	0x50
	.byte	0x12
	.byte	0x36
	.byte	0x10
	.long	0x985
	.uleb128 0x6
	.string	"fd"
	.byte	0x12
	.byte	0x37
	.byte	0x8
	.long	0x2db
	.byte	0
	.uleb128 0x1
	.long	.LASF151
	.byte	0x12
	.byte	0x38
	.byte	0xc
	.long	0x87f
	.byte	0x8
	.uleb128 0x1
	.long	.LASF152
	.byte	0x12
	.byte	0x39
	.byte	0xe
	.long	0x8ef
	.byte	0x14
	.uleb128 0x1
	.long	.LASF153
	.byte	0x12
	.byte	0x3a
	.byte	0xf
	.long	0x911
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF154
	.byte	0x12
	.byte	0x3b
	.byte	0x7
	.long	0x91
	.byte	0x38
	.uleb128 0x1
	.long	.LASF155
	.byte	0x12
	.byte	0x3c
	.byte	0xa
	.long	0x402
	.byte	0x40
	.uleb128 0x1
	.long	.LASF156
	.byte	0x12
	.byte	0x3d
	.byte	0x9
	.long	0x2e
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.long	.LASF157
	.byte	0x12
	.byte	0x3e
	.byte	0x3
	.long	0x91d
	.uleb128 0x4
	.long	0x985
	.uleb128 0xe
	.long	.LASF158
	.byte	0x10
	.byte	0x13
	.byte	0x32
	.byte	0x10
	.long	0x9bd
	.uleb128 0x6
	.string	"id"
	.byte	0x13
	.byte	0x33
	.byte	0x8
	.long	0xc8
	.byte	0
	.uleb128 0x1
	.long	.LASF150
	.byte	0x13
	.byte	0x34
	.byte	0x8
	.long	0x991
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF159
	.byte	0x13
	.byte	0x35
	.byte	0x3
	.long	0x996
	.uleb128 0x3
	.long	.LASF160
	.byte	0x14
	.byte	0x17
	.byte	0x11
	.long	0x3d3
	.uleb128 0xb
	.byte	0x28
	.byte	0x15
	.byte	0x1f
	.long	0xa1f
	.uleb128 0x1
	.long	.LASF161
	.byte	0x15
	.byte	0x20
	.byte	0x8
	.long	0x91
	.byte	0
	.uleb128 0x1
	.long	.LASF162
	.byte	0x15
	.byte	0x21
	.byte	0x7
	.long	0x72
	.byte	0x8
	.uleb128 0x1
	.long	.LASF163
	.byte	0x15
	.byte	0x23
	.byte	0x12
	.long	0xa1f
	.byte	0x10
	.uleb128 0x6
	.string	"ptr"
	.byte	0x15
	.byte	0x24
	.byte	0x12
	.long	0xa1f
	.byte	0x18
	.uleb128 0x1
	.long	.LASF164
	.byte	0x15
	.byte	0x25
	.byte	0x8
	.long	0x91
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	0x4a
	.uleb128 0x3
	.long	.LASF165
	.byte	0x15
	.byte	0x26
	.byte	0x3
	.long	0x9d5
	.uleb128 0xb
	.byte	0x20
	.byte	0x15
	.byte	0x2a
	.long	0xa6d
	.uleb128 0x1
	.long	.LASF139
	.byte	0x15
	.byte	0x2b
	.byte	0x12
	.long	0xa1f
	.byte	0
	.uleb128 0x1
	.long	.LASF166
	.byte	0x15
	.byte	0x2c
	.byte	0x8
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF167
	.byte	0x15
	.byte	0x2d
	.byte	0x12
	.long	0xa1f
	.byte	0x10
	.uleb128 0x1
	.long	.LASF168
	.byte	0x15
	.byte	0x2e
	.byte	0x8
	.long	0x91
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.long	.LASF169
	.byte	0x15
	.byte	0x2f
	.byte	0x3
	.long	0xa30
	.uleb128 0x1d
	.value	0x198
	.byte	0x15
	.byte	0x34
	.long	0xb74
	.uleb128 0x1
	.long	.LASF170
	.byte	0x15
	.byte	0x35
	.byte	0x12
	.long	0xa1f
	.byte	0
	.uleb128 0x1
	.long	.LASF171
	.byte	0x15
	.byte	0x36
	.byte	0x8
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF172
	.byte	0x15
	.byte	0x37
	.byte	0x8
	.long	0x91
	.byte	0x10
	.uleb128 0x1
	.long	.LASF173
	.byte	0x15
	.byte	0x38
	.byte	0x8
	.long	0x91
	.byte	0x18
	.uleb128 0x1
	.long	.LASF174
	.byte	0x15
	.byte	0x3b
	.byte	0x8
	.long	0x35c
	.byte	0x20
	.uleb128 0x1
	.long	.LASF175
	.byte	0x15
	.byte	0x3c
	.byte	0x10
	.long	0xb74
	.byte	0x28
	.uleb128 0x1
	.long	.LASF176
	.byte	0x15
	.byte	0x3f
	.byte	0x8
	.long	0x91
	.byte	0x30
	.uleb128 0x1
	.long	.LASF177
	.byte	0x15
	.byte	0x40
	.byte	0x8
	.long	0x91
	.byte	0x38
	.uleb128 0x1
	.long	.LASF178
	.byte	0x15
	.byte	0x41
	.byte	0x8
	.long	0x91
	.byte	0x40
	.uleb128 0x1
	.long	.LASF179
	.byte	0x15
	.byte	0x42
	.byte	0x8
	.long	0x91
	.byte	0x48
	.uleb128 0x1
	.long	.LASF139
	.byte	0x15
	.byte	0x44
	.byte	0x11
	.long	0xb79
	.byte	0x50
	.uleb128 0xd
	.long	.LASF180
	.byte	0x15
	.byte	0x45
	.byte	0x7
	.long	0x72
	.value	0x16c
	.uleb128 0xd
	.long	.LASF181
	.byte	0x15
	.byte	0x47
	.byte	0x7
	.long	0x72
	.value	0x170
	.uleb128 0xd
	.long	.LASF182
	.byte	0x15
	.byte	0x49
	.byte	0x7
	.long	0x72
	.value	0x174
	.uleb128 0xd
	.long	.LASF183
	.byte	0x15
	.byte	0x4b
	.byte	0x8
	.long	0x91
	.value	0x178
	.uleb128 0xd
	.long	.LASF184
	.byte	0x15
	.byte	0x4c
	.byte	0x8
	.long	0x91
	.value	0x180
	.uleb128 0xd
	.long	.LASF185
	.byte	0x15
	.byte	0x4d
	.byte	0xf
	.long	0x9c9
	.value	0x188
	.uleb128 0xd
	.long	.LASF186
	.byte	0x15
	.byte	0x52
	.byte	0xf
	.long	0x9c9
	.value	0x190
	.byte	0
	.uleb128 0x4
	.long	0x9c9
	.uleb128 0xf
	.long	0x4a
	.long	0xb8a
	.uleb128 0x24
	.long	0x3a
	.value	0x119
	.byte	0
	.uleb128 0x3
	.long	.LASF187
	.byte	0x15
	.byte	0x54
	.byte	0x3
	.long	0xa79
	.uleb128 0xb
	.byte	0x30
	.byte	0x15
	.byte	0x59
	.long	0xbed
	.uleb128 0x1
	.long	.LASF188
	.byte	0x15
	.byte	0x5a
	.byte	0x12
	.long	0xa1f
	.byte	0
	.uleb128 0x1
	.long	.LASF189
	.byte	0x15
	.byte	0x5b
	.byte	0x8
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF182
	.byte	0x15
	.byte	0x5c
	.byte	0x8
	.long	0x91
	.byte	0x10
	.uleb128 0x1
	.long	.LASF181
	.byte	0x15
	.byte	0x5d
	.byte	0x8
	.long	0x91
	.byte	0x18
	.uleb128 0x1
	.long	.LASF186
	.byte	0x15
	.byte	0x5f
	.byte	0xf
	.long	0x9c9
	.byte	0x20
	.uleb128 0x1
	.long	.LASF185
	.byte	0x15
	.byte	0x61
	.byte	0xf
	.long	0x9c9
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.long	.LASF190
	.byte	0x15
	.byte	0x66
	.byte	0x3
	.long	0xb96
	.uleb128 0xe
	.long	.LASF191
	.byte	0x38
	.byte	0x16
	.byte	0x1b
	.byte	0x10
	.long	0xc6f
	.uleb128 0x1
	.long	.LASF192
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
	.long	.LASF193
	.byte	0x16
	.byte	0x1e
	.byte	0x8
	.long	0x91
	.byte	0x8
	.uleb128 0x1
	.long	.LASF194
	.byte	0x16
	.byte	0x2f
	.byte	0x8
	.long	0x91
	.byte	0x10
	.uleb128 0x1
	.long	.LASF195
	.byte	0x16
	.byte	0x30
	.byte	0x8
	.long	0x91
	.byte	0x18
	.uleb128 0x1
	.long	.LASF196
	.byte	0x16
	.byte	0x31
	.byte	0x8
	.long	0x91
	.byte	0x20
	.uleb128 0x1
	.long	.LASF197
	.byte	0x16
	.byte	0x32
	.byte	0x8
	.long	0x91
	.byte	0x28
	.uleb128 0x1
	.long	.LASF198
	.byte	0x16
	.byte	0x34
	.byte	0x9
	.long	0x48
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.long	.LASF191
	.byte	0x16
	.byte	0x35
	.byte	0x3
	.long	0xbf9
	.uleb128 0xe
	.long	.LASF199
	.byte	0x90
	.byte	0x16
	.byte	0x3a
	.byte	0x10
	.long	0xd88
	.uleb128 0x1
	.long	.LASF200
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
	.long	0xd88
	.byte	0x8
	.uleb128 0x6
	.string	"pcm"
	.byte	0x16
	.byte	0x3e
	.byte	0xb
	.long	0xd8d
	.byte	0x10
	.uleb128 0x1
	.long	.LASF201
	.byte	0x16
	.byte	0x3f
	.byte	0xb
	.long	0xd8d
	.byte	0x18
	.uleb128 0x1
	.long	.LASF202
	.byte	0x16
	.byte	0x40
	.byte	0x7
	.long	0x72
	.byte	0x20
	.uleb128 0x1
	.long	.LASF203
	.byte	0x16
	.byte	0x41
	.byte	0x7
	.long	0x72
	.byte	0x24
	.uleb128 0x1
	.long	.LASF204
	.byte	0x16
	.byte	0x42
	.byte	0x7
	.long	0x72
	.byte	0x28
	.uleb128 0x1
	.long	.LASF205
	.byte	0x16
	.byte	0x44
	.byte	0x7
	.long	0x72
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF206
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
	.long	.LASF207
	.byte	0x16
	.byte	0x4a
	.byte	0x8
	.long	0x91
	.byte	0x50
	.uleb128 0x1
	.long	.LASF186
	.byte	0x16
	.byte	0x4c
	.byte	0xf
	.long	0x9c9
	.byte	0x58
	.uleb128 0x1
	.long	.LASF208
	.byte	0x16
	.byte	0x4d
	.byte	0xf
	.long	0x9c9
	.byte	0x60
	.uleb128 0x1
	.long	.LASF209
	.byte	0x16
	.byte	0x4f
	.byte	0xf
	.long	0x9c9
	.byte	0x68
	.uleb128 0x1
	.long	.LASF210
	.byte	0x16
	.byte	0x50
	.byte	0xf
	.long	0x9c9
	.byte	0x70
	.uleb128 0x1
	.long	.LASF211
	.byte	0x16
	.byte	0x51
	.byte	0xf
	.long	0x9c9
	.byte	0x78
	.uleb128 0x1
	.long	.LASF212
	.byte	0x16
	.byte	0x52
	.byte	0xf
	.long	0x9c9
	.byte	0x80
	.uleb128 0x1
	.long	.LASF213
	.byte	0x16
	.byte	0x54
	.byte	0x9
	.long	0x48
	.byte	0x88
	.byte	0
	.uleb128 0x4
	.long	0xc6f
	.uleb128 0x4
	.long	0x6d4
	.uleb128 0x3
	.long	.LASF199
	.byte	0x16
	.byte	0x55
	.byte	0x3
	.long	0xc7b
	.uleb128 0xe
	.long	.LASF214
	.byte	0xc0
	.byte	0x16
	.byte	0x57
	.byte	0x10
	.long	0xeb8
	.uleb128 0x6
	.string	"pcm"
	.byte	0x16
	.byte	0x59
	.byte	0xb
	.long	0xd8d
	.byte	0
	.uleb128 0x6
	.string	"opb"
	.byte	0x16
	.byte	0x5a
	.byte	0x12
	.long	0xa24
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
	.long	.LASF215
	.byte	0x16
	.byte	0x5f
	.byte	0x7
	.long	0x72
	.byte	0x48
	.uleb128 0x1
	.long	.LASF216
	.byte	0x16
	.byte	0x60
	.byte	0x7
	.long	0x72
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF206
	.byte	0x16
	.byte	0x62
	.byte	0x7
	.long	0x72
	.byte	0x50
	.uleb128 0x1
	.long	.LASF186
	.byte	0x16
	.byte	0x63
	.byte	0xf
	.long	0x9c9
	.byte	0x58
	.uleb128 0x1
	.long	.LASF208
	.byte	0x16
	.byte	0x64
	.byte	0xf
	.long	0x9c9
	.byte	0x60
	.uleb128 0x6
	.string	"vd"
	.byte	0x16
	.byte	0x65
	.byte	0x15
	.long	0xeb8
	.byte	0x68
	.uleb128 0x1
	.long	.LASF217
	.byte	0x16
	.byte	0x69
	.byte	0x9
	.long	0x48
	.byte	0x70
	.uleb128 0x1
	.long	.LASF218
	.byte	0x16
	.byte	0x6a
	.byte	0x8
	.long	0x91
	.byte	0x78
	.uleb128 0x1
	.long	.LASF219
	.byte	0x16
	.byte	0x6b
	.byte	0x8
	.long	0x91
	.byte	0x80
	.uleb128 0x1
	.long	.LASF220
	.byte	0x16
	.byte	0x6c
	.byte	0x8
	.long	0x91
	.byte	0x88
	.uleb128 0x1
	.long	.LASF221
	.byte	0x16
	.byte	0x6d
	.byte	0x17
	.long	0xee5
	.byte	0x90
	.uleb128 0x1
	.long	.LASF209
	.byte	0x16
	.byte	0x70
	.byte	0x8
	.long	0x91
	.byte	0x98
	.uleb128 0x1
	.long	.LASF210
	.byte	0x16
	.byte	0x71
	.byte	0x8
	.long	0x91
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF211
	.byte	0x16
	.byte	0x72
	.byte	0x8
	.long	0x91
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF212
	.byte	0x16
	.byte	0x73
	.byte	0x8
	.long	0x91
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF222
	.byte	0x16
	.byte	0x75
	.byte	0x9
	.long	0x48
	.byte	0xb8
	.byte	0
	.uleb128 0x4
	.long	0xd92
	.uleb128 0xe
	.long	.LASF223
	.byte	0x10
	.byte	0x16
	.byte	0x7e
	.byte	0x8
	.long	0xee5
	.uleb128 0x6
	.string	"ptr"
	.byte	0x16
	.byte	0x7f
	.byte	0x9
	.long	0x48
	.byte	0
	.uleb128 0x1
	.long	.LASF224
	.byte	0x16
	.byte	0x80
	.byte	0x17
	.long	0xee5
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0xebd
	.uleb128 0x3
	.long	.LASF214
	.byte	0x16
	.byte	0x77
	.byte	0x3
	.long	0xd9e
	.uleb128 0xe
	.long	.LASF225
	.byte	0x20
	.byte	0x16
	.byte	0x8b
	.byte	0x10
	.long	0xf38
	.uleb128 0x1
	.long	.LASF226
	.byte	0x16
	.byte	0x8e
	.byte	0xa
	.long	0x828
	.byte	0
	.uleb128 0x1
	.long	.LASF227
	.byte	0x16
	.byte	0x8f
	.byte	0x8
	.long	0x35c
	.byte	0x8
	.uleb128 0x1
	.long	.LASF228
	.byte	0x16
	.byte	0x90
	.byte	0x7
	.long	0x72
	.byte	0x10
	.uleb128 0x1
	.long	.LASF229
	.byte	0x16
	.byte	0x91
	.byte	0x9
	.long	0xc8
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.long	.LASF225
	.byte	0x16
	.byte	0x93
	.byte	0x3
	.long	0xef6
	.uleb128 0xb
	.byte	0x28
	.byte	0x17
	.byte	0xd
	.long	0xfa8
	.uleb128 0x1
	.long	.LASF164
	.byte	0x17
	.byte	0xe
	.byte	0x9
	.long	0x828
	.byte	0
	.uleb128 0x1
	.long	.LASF230
	.byte	0x17
	.byte	0xf
	.byte	0x8
	.long	0xc8
	.byte	0x8
	.uleb128 0x1
	.long	.LASF231
	.byte	0x17
	.byte	0x10
	.byte	0x8
	.long	0xc8
	.byte	0x10
	.uleb128 0x1
	.long	.LASF232
	.byte	0x17
	.byte	0x11
	.byte	0x6
	.long	0x72
	.byte	0x18
	.uleb128 0x1
	.long	.LASF233
	.byte	0x17
	.byte	0x12
	.byte	0x6
	.long	0x72
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF234
	.byte	0x17
	.byte	0x13
	.byte	0x6
	.long	0x72
	.byte	0x20
	.uleb128 0x1
	.long	.LASF235
	.byte	0x17
	.byte	0x14
	.byte	0x6
	.long	0x72
	.byte	0x24
	.byte	0
	.uleb128 0x3
	.long	.LASF236
	.byte	0x17
	.byte	0x15
	.byte	0x2
	.long	0xf44
	.uleb128 0x1d
	.value	0x3d0
	.byte	0x18
	.byte	0x13
	.long	0x1080
	.uleb128 0x1
	.long	.LASF237
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
	.long	0xb8a
	.byte	0x8
	.uleb128 0x12
	.string	"og"
	.byte	0x17
	.byte	0xc
	.long	0xa6d
	.value	0x1a0
	.uleb128 0x12
	.string	"op"
	.byte	0x19
	.byte	0xe
	.long	0xbed
	.value	0x1c0
	.uleb128 0x12
	.string	"vi"
	.byte	0x1b
	.byte	0xf
	.long	0xc6f
	.value	0x1f0
	.uleb128 0x12
	.string	"vc"
	.byte	0x1d
	.byte	0x12
	.long	0xf38
	.value	0x228
	.uleb128 0x12
	.string	"vd"
	.byte	0x1f
	.byte	0x14
	.long	0xd92
	.value	0x248
	.uleb128 0x12
	.string	"vb"
	.byte	0x20
	.byte	0x10
	.long	0xeea
	.value	0x2d8
	.uleb128 0x12
	.string	"eos"
	.byte	0x22
	.byte	0x7
	.long	0x72
	.value	0x398
	.uleb128 0xd
	.long	.LASF238
	.byte	0x18
	.byte	0x24
	.byte	0x8
	.long	0x91
	.value	0x3a0
	.uleb128 0xd
	.long	.LASF239
	.byte	0x18
	.byte	0x25
	.byte	0x8
	.long	0x91
	.value	0x3a8
	.uleb128 0xd
	.long	.LASF240
	.byte	0x18
	.byte	0x27
	.byte	0x12
	.long	0x1080
	.value	0x3b0
	.uleb128 0xd
	.long	.LASF241
	.byte	0x18
	.byte	0x28
	.byte	0x12
	.long	0x1080
	.value	0x3b8
	.uleb128 0xd
	.long	.LASF242
	.byte	0x18
	.byte	0x2a
	.byte	0xa
	.long	0x2f1
	.value	0x3c0
	.uleb128 0xd
	.long	.LASF243
	.byte	0x18
	.byte	0x2b
	.byte	0xc
	.long	0x41
	.value	0x3c8
	.byte	0
	.uleb128 0x4
	.long	0xfa8
	.uleb128 0x3
	.long	.LASF244
	.byte	0x18
	.byte	0x2c
	.byte	0x2
	.long	0xfb4
	.uleb128 0x17
	.long	.LASF245
	.byte	0x18
	.byte	0x32
	.byte	0x16
	.long	0x109d
	.uleb128 0x4
	.long	0x1085
	.uleb128 0x25
	.long	.LASF246
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.long	0x5cc
	.uleb128 0x9
	.byte	0x3
	.quad	running
	.uleb128 0x7
	.long	.LASF249
	.byte	0x17
	.byte	0x20
	.long	0x10c9
	.uleb128 0x2
	.long	0x1080
	.byte	0
	.uleb128 0x10
	.long	.LASF247
	.byte	0xf
	.byte	0x7c
	.long	0x10d6
	.uleb128 0xa
	.byte	0
	.uleb128 0x10
	.long	.LASF248
	.byte	0x10
	.byte	0x56
	.long	0x10e3
	.uleb128 0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF250
	.byte	0x11
	.byte	0x4b
	.long	0x10f4
	.uleb128 0x2
	.long	0x10f4
	.byte	0
	.uleb128 0x4
	.long	0x782
	.uleb128 0x7
	.long	.LASF251
	.byte	0x11
	.byte	0x3a
	.long	0x110a
	.uleb128 0x2
	.long	0x110a
	.byte	0
	.uleb128 0x4
	.long	0x74a
	.uleb128 0x7
	.long	.LASF252
	.byte	0x11
	.byte	0x2b
	.long	0x1120
	.uleb128 0x2
	.long	0x803
	.byte	0
	.uleb128 0x7
	.long	.LASF253
	.byte	0x11
	.byte	0x5e
	.long	0x1131
	.uleb128 0x2
	.long	0x808
	.byte	0
	.uleb128 0x7
	.long	.LASF254
	.byte	0x10
	.byte	0x4c
	.long	0x1142
	.uleb128 0x2
	.long	0x80d
	.byte	0
	.uleb128 0x10
	.long	.LASF255
	.byte	0x13
	.byte	0x29
	.long	0x114f
	.uleb128 0xa
	.byte	0
	.uleb128 0x10
	.long	.LASF256
	.byte	0x13
	.byte	0x24
	.long	0x115c
	.uleb128 0xa
	.byte	0
	.uleb128 0x13
	.long	.LASF257
	.byte	0x19
	.byte	0x18
	.byte	0x5
	.long	0x5cc
	.long	0x116e
	.uleb128 0xa
	.byte	0
	.uleb128 0x10
	.long	.LASF258
	.byte	0x1a
	.byte	0x5
	.long	0x117b
	.uleb128 0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF259
	.byte	0x13
	.byte	0x39
	.long	0x118c
	.uleb128 0x2
	.long	0x118c
	.byte	0
	.uleb128 0x4
	.long	0x9bd
	.uleb128 0x7
	.long	.LASF260
	.byte	0xf
	.byte	0x7b
	.long	0x11a2
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x7
	.long	.LASF261
	.byte	0x13
	.byte	0x2e
	.long	0x11bd
	.uleb128 0x2
	.long	0x80d
	.uleb128 0x2
	.long	0x11bd
	.uleb128 0x2
	.long	0x5cc
	.byte	0
	.uleb128 0x4
	.long	0x81c
	.uleb128 0x8
	.long	.LASF263
	.byte	0x19
	.byte	0x17
	.byte	0x5
	.long	0x5cc
	.long	0x11dd
	.uleb128 0x2
	.long	0x80d
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x7
	.long	.LASF262
	.byte	0x1a
	.byte	0x7
	.long	0x1207
	.uleb128 0x2
	.long	0x41f
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
	.uleb128 0x8
	.long	.LASF264
	.byte	0x1b
	.byte	0x4c
	.byte	0xf
	.long	0x2f1
	.long	0x121d
	.uleb128 0x2
	.long	0x121d
	.byte	0
	.uleb128 0x4
	.long	0x2f1
	.uleb128 0x7
	.long	.LASF265
	.byte	0x10
	.byte	0x4f
	.long	0x123d
	.uleb128 0x2
	.long	0x80d
	.uleb128 0x2
	.long	0x817
	.uleb128 0x2
	.long	0x5df
	.byte	0
	.uleb128 0x8
	.long	.LASF266
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.long	0x72
	.long	0x125d
	.uleb128 0x2
	.long	0x118c
	.uleb128 0x2
	.long	0x6d4
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x7
	.long	.LASF267
	.byte	0x11
	.byte	0x4c
	.long	0x127d
	.uleb128 0x2
	.long	0x10f4
	.uleb128 0x2
	.long	0x6d4
	.uleb128 0x2
	.long	0x6d4
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x7
	.long	.LASF268
	.byte	0x11
	.byte	0x60
	.long	0x129d
	.uleb128 0x2
	.long	0x808
	.uleb128 0x2
	.long	0x6d4
	.uleb128 0x2
	.long	0x6d4
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x13
	.long	.LASF269
	.byte	0x18
	.byte	0x2e
	.byte	0x5
	.long	0x72
	.long	0x12af
	.uleb128 0xa
	.byte	0
	.uleb128 0x10
	.long	.LASF270
	.byte	0x10
	.byte	0x55
	.long	0x12bc
	.uleb128 0xa
	.byte	0
	.uleb128 0x8
	.long	.LASF271
	.byte	0x13
	.byte	0x37
	.byte	0x8
	.long	0x118c
	.long	0x12d2
	.uleb128 0x2
	.long	0xc8
	.byte	0
	.uleb128 0x7
	.long	.LASF272
	.byte	0x13
	.byte	0x26
	.long	0x12e3
	.uleb128 0x2
	.long	0x5cc
	.byte	0
	.uleb128 0x13
	.long	.LASF273
	.byte	0x19
	.byte	0x16
	.byte	0x5
	.long	0x5cc
	.long	0x12f5
	.uleb128 0xa
	.byte	0
	.uleb128 0x10
	.long	.LASF274
	.byte	0x1a
	.byte	0x4
	.long	0x1302
	.uleb128 0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF275
	.byte	0x1c
	.byte	0x10
	.long	0x1313
	.uleb128 0x2
	.long	0x817
	.byte	0
	.uleb128 0x15
	.long	.LASF276
	.byte	0x7
	.value	0x2d4
	.byte	0xc
	.long	0x72
	.long	0x132a
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x7
	.long	.LASF277
	.byte	0x10
	.byte	0x50
	.long	0x134a
	.uleb128 0x2
	.long	0x80d
	.uleb128 0x2
	.long	0x817
	.uleb128 0x2
	.long	0x817
	.uleb128 0x2
	.long	0x5df
	.byte	0
	.uleb128 0x8
	.long	.LASF278
	.byte	0x1c
	.byte	0x15
	.byte	0xa
	.long	0x41
	.long	0x1360
	.uleb128 0x2
	.long	0x817
	.byte	0
	.uleb128 0x7
	.long	.LASF279
	.byte	0x1c
	.byte	0x38
	.long	0x1376
	.uleb128 0x2
	.long	0x817
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x7
	.long	.LASF280
	.byte	0x11
	.byte	0x2f
	.long	0x1396
	.uleb128 0x2
	.long	0x803
	.uleb128 0x2
	.long	0x6d4
	.uleb128 0x2
	.long	0x6d4
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x7
	.long	.LASF281
	.byte	0x10
	.byte	0x4e
	.long	0x13b1
	.uleb128 0x2
	.long	0x6d4
	.uleb128 0x2
	.long	0x6d4
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x7
	.long	.LASF282
	.byte	0x11
	.byte	0x3d
	.long	0x13d1
	.uleb128 0x2
	.long	0x110a
	.uleb128 0x2
	.long	0x6d4
	.uleb128 0x2
	.long	0x6d4
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x26
	.long	.LASF283
	.byte	0x1d
	.byte	0x45
	.byte	0xd
	.long	0x13f2
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0x2
	.long	0x41
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x8
	.long	.LASF284
	.byte	0x1c
	.byte	0x33
	.byte	0xa
	.long	0x41
	.long	0x1408
	.uleb128 0x2
	.long	0x817
	.byte	0
	.uleb128 0x8
	.long	.LASF285
	.byte	0x1c
	.byte	0x2e
	.byte	0x8
	.long	0x6d4
	.long	0x141e
	.uleb128 0x2
	.long	0x817
	.byte	0
	.uleb128 0x8
	.long	.LASF286
	.byte	0x13
	.byte	0x23
	.byte	0x8
	.long	0x2e
	.long	0x1439
	.uleb128 0x2
	.long	0x6d4
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x8
	.long	.LASF287
	.byte	0x1c
	.byte	0xb
	.byte	0x11
	.long	0x817
	.long	0x144f
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0x13
	.long	.LASF288
	.byte	0x10
	.byte	0x4b
	.byte	0x9
	.long	0x80d
	.long	0x1461
	.uleb128 0xa
	.byte	0
	.uleb128 0x8
	.long	.LASF289
	.byte	0x11
	.byte	0x5d
	.byte	0x14
	.long	0x808
	.long	0x1477
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x8
	.long	.LASF290
	.byte	0x11
	.byte	0x4a
	.byte	0xa
	.long	0x10f4
	.long	0x148d
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x8
	.long	.LASF291
	.byte	0x11
	.byte	0x39
	.byte	0xa
	.long	0x110a
	.long	0x14a3
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x13
	.long	.LASF292
	.byte	0x11
	.byte	0x2a
	.byte	0xd
	.long	0x803
	.long	0x14b5
	.uleb128 0xa
	.byte	0
	.uleb128 0x13
	.long	.LASF293
	.byte	0x11
	.byte	0x29
	.byte	0xd
	.long	0x803
	.long	0x14c7
	.uleb128 0xa
	.byte	0
	.uleb128 0x8
	.long	.LASF294
	.byte	0x13
	.byte	0x22
	.byte	0x5
	.long	0x5cc
	.long	0x14dd
	.uleb128 0x2
	.long	0x5df
	.byte	0
	.uleb128 0x13
	.long	.LASF295
	.byte	0x13
	.byte	0x2c
	.byte	0x7
	.long	0xc8
	.long	0x14ef
	.uleb128 0xa
	.byte	0
	.uleb128 0x10
	.long	.LASF296
	.byte	0xf
	.byte	0x7d
	.long	0x14fc
	.uleb128 0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF297
	.byte	0x13
	.byte	0x2b
	.long	0x1512
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x27
	.long	.LASF298
	.byte	0x1e
	.value	0x2af
	.byte	0xd
	.long	0x1525
	.uleb128 0x2
	.long	0x48
	.byte	0
	.uleb128 0x8
	.long	.LASF299
	.byte	0xf
	.byte	0x7a
	.byte	0x10
	.long	0x5df
	.long	0x153b
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x8
	.long	.LASF300
	.byte	0x1f
	.byte	0xbb
	.byte	0xe
	.long	0xc8
	.long	0x1551
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x8
	.long	.LASF301
	.byte	0x1f
	.byte	0x95
	.byte	0xe
	.long	0xc8
	.long	0x156c
	.uleb128 0x2
	.long	0xc8
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x8
	.long	.LASF302
	.byte	0x1f
	.byte	0x8d
	.byte	0xe
	.long	0xc8
	.long	0x1587
	.uleb128 0x2
	.long	0xc8
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x15
	.long	.LASF303
	.byte	0x1e
	.value	0x2a0
	.byte	0xe
	.long	0x48
	.long	0x159e
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x15
	.long	.LASF304
	.byte	0x1f
	.value	0x197
	.byte	0xf
	.long	0x2e
	.long	0x15b5
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x15
	.long	.LASF305
	.byte	0x1e
	.value	0x305
	.byte	0xe
	.long	0xc8
	.long	0x15cc
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x8
	.long	.LASF306
	.byte	0x9
	.byte	0x42
	.byte	0xc
	.long	0x72
	.long	0x15f6
	.uleb128 0x2
	.long	0x72
	.uleb128 0x2
	.long	0x15f6
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0x2
	.long	0x15fb
	.uleb128 0x2
	.long	0x35c
	.byte	0
	.uleb128 0x4
	.long	0xcd
	.uleb128 0x4
	.long	0x357
	.uleb128 0x8
	.long	.LASF307
	.byte	0x1e
	.byte	0x69
	.byte	0xc
	.long	0x72
	.long	0x1616
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x28
	.long	.LASF308
	.byte	0x1e
	.value	0x2f4
	.byte	0xd
	.long	0x1629
	.uleb128 0x2
	.long	0x72
	.byte	0
	.uleb128 0x15
	.long	.LASF309
	.byte	0x7
	.value	0x165
	.byte	0xc
	.long	0x72
	.long	0x1646
	.uleb128 0x2
	.long	0x2e0
	.uleb128 0x2
	.long	0x2d6
	.uleb128 0xa
	.byte	0
	.uleb128 0x8
	.long	.LASF310
	.byte	0x1f
	.byte	0x9c
	.byte	0xc
	.long	0x72
	.long	0x1661
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0x2
	.long	0x2d1
	.byte	0
	.uleb128 0x8
	.long	.LASF311
	.byte	0xd
	.byte	0x58
	.byte	0x17
	.long	0x3e6
	.long	0x167c
	.uleb128 0x2
	.long	0x72
	.uleb128 0x2
	.long	0x3e6
	.byte	0
	.uleb128 0x15
	.long	.LASF312
	.byte	0x7
	.value	0x16b
	.byte	0xc
	.long	0x72
	.long	0x1694
	.uleb128 0x2
	.long	0x2d1
	.uleb128 0xa
	.byte	0
	.uleb128 0x29
	.long	.LASF366
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.long	0x72
	.quad	.LFB311
	.quad	.LFE311-.LFB311
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b23
	.uleb128 0x19
	.long	.LASF313
	.byte	0x56
	.byte	0xf
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1380
	.uleb128 0x19
	.long	.LASF314
	.byte	0x56
	.byte	0x1b
	.long	0x828
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1392
	.uleb128 0x9
	.long	.LASF315
	.byte	0x58
	.byte	0xd
	.long	0x72
	.uleb128 0x9
	.byte	0x3
	.quad	verbose_flag.1
	.uleb128 0x9
	.long	.LASF316
	.byte	0x59
	.byte	0x17
	.long	0x1b23
	.uleb128 0x9
	.byte	0x3
	.quad	long_options.2
	.uleb128 0x9
	.long	.LASF317
	.byte	0x6b
	.byte	0x6
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1372
	.uleb128 0x9
	.long	.LASF318
	.byte	0x6b
	.byte	0x14
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1328
	.uleb128 0x9
	.long	.LASF319
	.byte	0x6c
	.byte	0x6
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1368
	.uleb128 0x9
	.long	.LASF320
	.byte	0x6e
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1312
	.uleb128 0x9
	.long	.LASF321
	.byte	0x6f
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1304
	.uleb128 0x9
	.long	.LASF322
	.byte	0x70
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.uleb128 0x9
	.long	.LASF323
	.byte	0x71
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1288
	.uleb128 0x9
	.long	.LASF324
	.byte	0x72
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1280
	.uleb128 0x9
	.long	.LASF325
	.byte	0x73
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1272
	.uleb128 0x9
	.long	.LASF326
	.byte	0x74
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1264
	.uleb128 0x9
	.long	.LASF327
	.byte	0x75
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1256
	.uleb128 0x9
	.long	.LASF328
	.byte	0x76
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1248
	.uleb128 0x9
	.long	.LASF329
	.byte	0x77
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1240
	.uleb128 0x9
	.long	.LASF90
	.byte	0x78
	.byte	0x6
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1364
	.uleb128 0x9
	.long	.LASF330
	.byte	0xbd
	.byte	0xe
	.long	0x2d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1232
	.uleb128 0x9
	.long	.LASF331
	.byte	0xd5
	.byte	0x8
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1224
	.uleb128 0x9
	.long	.LASF332
	.byte	0xd6
	.byte	0x7
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1374
	.uleb128 0x5
	.long	.LASF333
	.value	0x11a
	.byte	0xe
	.long	0x803
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1168
	.uleb128 0x5
	.long	.LASF334
	.value	0x11b
	.byte	0xe
	.long	0x803
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1160
	.uleb128 0x5
	.long	.LASF335
	.value	0x11c
	.byte	0xb
	.long	0x110a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1152
	.uleb128 0x5
	.long	.LASF336
	.value	0x11d
	.byte	0xb
	.long	0x10f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1144
	.uleb128 0x5
	.long	.LASF337
	.value	0x11f
	.byte	0x9
	.long	0x6d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.uleb128 0x5
	.long	.LASF338
	.value	0x120
	.byte	0x9
	.long	0x6d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1128
	.uleb128 0x5
	.long	.LASF339
	.value	0x121
	.byte	0x9
	.long	0x6d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x5
	.long	.LASF340
	.value	0x124
	.byte	0xb
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1324
	.uleb128 0x5
	.long	.LASF341
	.value	0x128
	.byte	0x12
	.long	0x1b33
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1008
	.uleb128 0x5
	.long	.LASF342
	.value	0x132
	.byte	0x12
	.long	0x817
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x5
	.long	.LASF343
	.value	0x133
	.byte	0x12
	.long	0x817
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x5
	.long	.LASF344
	.value	0x134
	.byte	0x12
	.long	0x817
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x5
	.long	.LASF345
	.value	0x135
	.byte	0x12
	.long	0x817
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x5
	.long	.LASF346
	.value	0x137
	.byte	0xa
	.long	0x80d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x2a
	.long	.LASF367
	.long	0x1b53
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.0
	.uleb128 0x5
	.long	.LASF347
	.value	0x17a
	.byte	0x6
	.long	0x5cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1373
	.uleb128 0x11
	.string	"wa"
	.value	0x181
	.byte	0x9
	.long	0x118c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1208
	.uleb128 0x11
	.string	"wb"
	.value	0x182
	.byte	0x9
	.long	0x118c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1200
	.uleb128 0x11
	.string	"wc"
	.value	0x183
	.byte	0x9
	.long	0x118c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1192
	.uleb128 0x11
	.string	"wd"
	.value	0x184
	.byte	0x9
	.long	0x118c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x5
	.long	.LASF243
	.value	0x193
	.byte	0xb
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1344
	.uleb128 0x1a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1980
	.uleb128 0x9
	.long	.LASF348
	.byte	0xd8
	.byte	0xf
	.long	0x2d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1216
	.uleb128 0x9
	.long	.LASF349
	.byte	0xdb
	.byte	0x9
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1176
	.byte	0
	.uleb128 0x1a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x19a4
	.uleb128 0x11
	.string	"i"
	.value	0x12b
	.byte	0xb
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1360
	.byte	0
	.uleb128 0x1a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1a30
	.uleb128 0x5
	.long	.LASF350
	.value	0x13f
	.byte	0xc
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1356
	.uleb128 0x5
	.long	.LASF351
	.value	0x140
	.byte	0xc
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1320
	.uleb128 0x5
	.long	.LASF352
	.value	0x141
	.byte	0x9
	.long	0x387
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1352
	.uleb128 0x5
	.long	.LASF353
	.value	0x142
	.byte	0xc
	.long	0x41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1348
	.uleb128 0x5
	.long	.LASF354
	.value	0x145
	.byte	0x13
	.long	0x817
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x2b
	.long	.LLRL0
	.uleb128 0x5
	.long	.LASF355
	.value	0x148
	.byte	0xb
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x5
	.long	.LASF356
	.value	0x14c
	.byte	0xb
	.long	0x6d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LLRL1
	.long	0x1b02
	.uleb128 0x5
	.long	.LASF355
	.value	0x19c
	.byte	0xa
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x5
	.long	.LASF357
	.value	0x1a9
	.byte	0xa
	.long	0x6d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x5
	.long	.LASF358
	.value	0x1aa
	.byte	0xa
	.long	0x6d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1032
	.uleb128 0x5
	.long	.LASF359
	.value	0x1ab
	.byte	0xa
	.long	0x6d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1024
	.uleb128 0x1a
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x1abf
	.uleb128 0x11
	.string	"i"
	.value	0x1a0
	.byte	0xb
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1340
	.uleb128 0x1b
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x5
	.long	.LASF360
	.value	0x1a1
	.byte	0xb
	.long	0x6d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x5
	.long	.LASF361
	.value	0x1c8
	.byte	0x8
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1316
	.uleb128 0x1b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x11
	.string	"i"
	.value	0x1c2
	.byte	0xc
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1336
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x11
	.string	"i"
	.value	0x1fa
	.byte	0xa
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1332
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x315
	.long	0x1b33
	.uleb128 0x14
	.long	0x3a
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.long	0x81c
	.long	0x1b43
	.uleb128 0x14
	.long	0x3a
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.long	0xd9
	.long	0x1b53
	.uleb128 0x14
	.long	0x3a
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.long	0x1b43
	.uleb128 0x2d
	.long	.LASF368
	.byte	0x1
	.byte	0x4f
	.byte	0xd
	.quad	.LFB310
	.quad	.LFE310-.LFB310
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF369
	.byte	0x1
	.byte	0x3a
	.byte	0xd
	.quad	.LFB309
	.quad	.LFE309-.LFB309
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b9f
	.uleb128 0x19
	.long	.LASF362
	.byte	0x3a
	.byte	0x18
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF370
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.quad	.LFB308
	.quad	.LFE308-.LFB308
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF363
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
.LASF305:
	.string	"getenv"
.LASF230:
	.string	"dir_path"
.LASF121:
	.string	"direction"
.LASF257:
	.string	"mqtt_end"
.LASF88:
	.string	"segment_size"
.LASF353:
	.string	"average_n"
.LASF37:
	.string	"_shortbuf"
.LASF227:
	.string	"comment_lengths"
.LASF207:
	.string	"centerW"
.LASF209:
	.string	"glue_bits"
.LASF365:
	.string	"_IO_lock_t"
.LASF171:
	.string	"body_storage"
.LASF238:
	.string	"endfile_size"
.LASF237:
	.string	"output"
.LASF345:
	.string	"ring_aslow"
.LASF239:
	.string	"sample_count"
.LASF52:
	.string	"stderr"
.LASF248:
	.string	"lae_average_destroy"
.LASF26:
	.string	"_IO_buf_end"
.LASF14:
	.string	"__off_t"
.LASF269:
	.string	"record_start"
.LASF54:
	.string	"optopt"
.LASF311:
	.string	"signal"
.LASF96:
	.string	"data_record_ok"
.LASF123:
	.string	"previous"
.LASF214:
	.string	"vorbis_block"
.LASF259:
	.string	"audit_destroy"
.LASF128:
	.string	"Cfilter"
.LASF24:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF157:
	.string	"Wave"
.LASF253:
	.string	"third_octave_destroy"
.LASF192:
	.string	"version"
.LASF42:
	.string	"_freeres_list"
.LASF83:
	.string	"sample_rate"
.LASF18:
	.string	"_flags"
.LASF260:
	.string	"config_save"
.LASF370:
	.string	"int_handler"
.LASF203:
	.string	"pcm_current"
.LASF337:
	.string	"block_raw"
.LASF183:
	.string	"serialno"
.LASF354:
	.string	"ring_calibration"
.LASF63:
	.string	"guint"
.LASF293:
	.string	"timeweight_create"
.LASF98:
	.string	"calibration_time"
.LASF191:
	.string	"vorbis_info"
.LASF346:
	.string	"levels_return"
.LASF104:
	.string	"mqtt_qos"
.LASF193:
	.string	"rate"
.LASF316:
	.string	"long_options"
.LASF323:
	.string	"option_data_output_format"
.LASF251:
	.string	"aweighting_destroy"
.LASF235:
	.string	"update"
.LASF216:
	.string	"mode"
.LASF252:
	.string	"timeweight_destroy"
.LASF132:
	.string	"levels"
.LASF232:
	.string	"current_idx"
.LASF266:
	.string	"audit_append_samples"
.LASF89:
	.string	"levels_record_period"
.LASF137:
	.string	"ChunkSize"
.LASF142:
	.string	"AudioFormat"
.LASF306:
	.string	"getopt_long"
.LASF364:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF105:
	.string	"mqtt_device_credential"
.LASF134:
	.string	"sbuffer"
.LASF150:
	.string	"wave"
.LASF120:
	.string	"le_counter"
.LASF73:
	.string	"uint32_t"
.LASF302:
	.string	"strcpy"
.LASF164:
	.string	"storage"
.LASF301:
	.string	"strcat"
.LASF29:
	.string	"_IO_save_end"
.LASF231:
	.string	"file_format"
.LASF265:
	.string	"process_segment_levelpeak"
.LASF225:
	.string	"vorbis_comment"
.LASF118:
	.string	"event"
.LASF49:
	.string	"_IO_codecvt"
.LASF242:
	.string	"time_start"
.LASF210:
	.string	"time_bits"
.LASF170:
	.string	"body_data"
.LASF299:
	.string	"config_load"
.LASF151:
	.string	"riff_chunk"
.LASF295:
	.string	"output_get_data_filepath"
.LASF70:
	.string	"long long unsigned int"
.LASF213:
	.string	"backend_state"
.LASF284:
	.string	"sbuffer_write_size"
.LASF149:
	.string	"SubChunkData"
.LASF229:
	.string	"vendor"
.LASF358:
	.string	"block_ring_afast"
.LASF245:
	.string	"record_struct"
.LASF247:
	.string	"config_destroy"
.LASF322:
	.string	"option_output_filename"
.LASF258:
	.string	"server_end"
.LASF9:
	.string	"__uint16_t"
.LASF279:
	.string	"sbuffer_write_produces"
.LASF71:
	.string	"__sighandler_t"
.LASF28:
	.string	"_IO_backup_base"
.LASF186:
	.string	"granulepos"
.LASF39:
	.string	"_offset"
.LASF67:
	.string	"_GArray"
.LASF264:
	.string	"time"
.LASF179:
	.string	"lacing_returned"
.LASF329:
	.string	"option_block_size"
.LASF194:
	.string	"bitrate_upper"
.LASF82:
	.string	"data_output_format"
.LASF309:
	.string	"fprintf"
.LASF32:
	.string	"_fileno"
.LASF300:
	.string	"strdup"
.LASF350:
	.string	"milisecs"
.LASF268:
	.string	"third_octave_filtering"
.LASF320:
	.string	"option_device_filename"
.LASF294:
	.string	"input_device_open"
.LASF184:
	.string	"pageno"
.LASF95:
	.string	"data_file_duration"
.LASF69:
	.string	"int64_t"
.LASF66:
	.string	"GArray"
.LASF65:
	.string	"double"
.LASF287:
	.string	"sbuffer_create"
.LASF21:
	.string	"_IO_read_base"
.LASF107:
	.string	"_Bool"
.LASF197:
	.string	"bitrate_window"
.LASF313:
	.string	"argc"
.LASF161:
	.string	"endbyte"
.LASF126:
	.string	"coefs"
.LASF189:
	.string	"bytes"
.LASF220:
	.string	"totaluse"
.LASF298:
	.string	"free"
.LASF13:
	.string	"__uint64_t"
.LASF348:
	.string	"path"
.LASF125:
	.string	"Timeweight"
.LASF262:
	.string	"server_send"
.LASF219:
	.string	"localalloc"
.LASF79:
	.string	"output_path"
.LASF215:
	.string	"pcmend"
.LASF334:
	.string	"twslowfilter"
.LASF111:
	.string	"segment_number"
.LASF110:
	.string	"Percentil"
.LASF106:
	.string	"server_socket"
.LASF286:
	.string	"input_device_read"
.LASF349:
	.string	"pathname"
.LASF17:
	.string	"char"
.LASF277:
	.string	"process_segment_levels"
.LASF254:
	.string	"levels_destroy"
.LASF158:
	.string	"audit"
.LASF45:
	.string	"_mode"
.LASF147:
	.string	"BitsPerSample"
.LASF87:
	.string	"segment_duration"
.LASF146:
	.string	"BlockAlign"
.LASF357:
	.string	"block_ring_c"
.LASF116:
	.string	"background_LAS"
.LASF78:
	.string	"input_file"
.LASF344:
	.string	"ring_afast"
.LASF22:
	.string	"_IO_write_base"
.LASF351:
	.string	"calibration_milisecs"
.LASF19:
	.string	"_IO_read_ptr"
.LASF169:
	.string	"ogg_page"
.LASF308:
	.string	"exit"
.LASF205:
	.string	"preextrapolate"
.LASF218:
	.string	"localtop"
.LASF355:
	.string	"lenght_read"
.LASF234:
	.string	"space"
.LASF185:
	.string	"packetno"
.LASF115:
	.string	"LAFmin"
.LASF51:
	.string	"time_t"
.LASF114:
	.string	"LAFmax"
.LASF208:
	.string	"sequence"
.LASF145:
	.string	"ByteRate"
.LASF202:
	.string	"pcm_storage"
.LASF159:
	.string	"Audit"
.LASF144:
	.string	"SampleRate"
.LASF211:
	.string	"floor_bits"
.LASF48:
	.string	"_IO_marker"
.LASF155:
	.string	"samples"
.LASF60:
	.string	"long long int"
.LASF154:
	.string	"file_offset"
.LASF312:
	.string	"printf"
.LASF267:
	.string	"cweighting_filtering"
.LASF368:
	.string	"about"
.LASF27:
	.string	"_IO_save_base"
.LASF139:
	.string	"header"
.LASF271:
	.string	"audit_create"
.LASF84:
	.string	"channels"
.LASF356:
	.string	"block_ring_calibration"
.LASF30:
	.string	"_markers"
.LASF342:
	.string	"ring_a"
.LASF217:
	.string	"localstore"
.LASF236:
	.string	"Files_Storage"
.LASF270:
	.string	"lae_average_create"
.LASF119:
	.string	"le_accumulator"
.LASF282:
	.string	"aweighting_filtering"
.LASF92:
	.string	"audio_file_duration"
.LASF196:
	.string	"bitrate_lower"
.LASF163:
	.string	"buffer"
.LASF130:
	.string	"Tfilter"
.LASF233:
	.string	"size"
.LASF43:
	.string	"_freeres_buf"
.LASF93:
	.string	"audio_record_ok"
.LASF289:
	.string	"third_octave_create"
.LASF330:
	.string	"config_filename"
.LASF81:
	.string	"audio_output_format"
.LASF187:
	.string	"ogg_stream_state"
.LASF175:
	.string	"granule_vals"
.LASF256:
	.string	"input_device_close"
.LASF44:
	.string	"__pad5"
.LASF341:
	.string	"third_octave_data"
.LASF324:
	.string	"option_sample_rate"
.LASF172:
	.string	"body_fill"
.LASF360:
	.string	"block_filter"
.LASF56:
	.string	"option"
.LASF36:
	.string	"_vtable_offset"
.LASF317:
	.string	"option_index"
.LASF327:
	.string	"option_calibration_time"
.LASF206:
	.string	"eofflag"
.LASF68:
	.string	"data"
.LASF109:
	.string	"array"
.LASF53:
	.string	"optarg"
.LASF11:
	.string	"__int64_t"
.LASF281:
	.string	"process_block_square"
.LASF314:
	.string	"argv"
.LASF297:
	.string	"output_set_filename"
.LASF122:
	.string	"Levels"
.LASF61:
	.string	"long double"
.LASF318:
	.string	"option_char"
.LASF223:
	.string	"alloc_chain"
.LASF276:
	.string	"puts"
.LASF296:
	.string	"config_print"
.LASF168:
	.string	"body_len"
.LASF249:
	.string	"delete_files_storage"
.LASF366:
	.string	"main"
.LASF212:
	.string	"res_bits"
.LASF8:
	.string	"size_t"
.LASF166:
	.string	"header_len"
.LASF10:
	.string	"__uint32_t"
.LASF76:
	.string	"identification"
.LASF328:
	.string	"option_config_filename"
.LASF292:
	.string	"timeweightSlow_create"
.LASF173:
	.string	"body_returned"
.LASF201:
	.string	"pcmret"
.LASF75:
	.string	"config"
.LASF340:
	.string	"segment_buffer_size"
.LASF140:
	.string	"Format"
.LASF20:
	.string	"_IO_read_end"
.LASF288:
	.string	"levels_create"
.LASF331:
	.string	"config_pathname"
.LASF7:
	.string	"short int"
.LASF12:
	.string	"long int"
.LASF129:
	.string	"ThirdOctaveFilter"
.LASF241:
	.string	"created_data_files"
.LASF85:
	.string	"bits_per_sample"
.LASF335:
	.string	"afilter"
.LASF224:
	.string	"next"
.LASF178:
	.string	"lacing_packet"
.LASF80:
	.string	"output_filename"
.LASF338:
	.string	"block_a"
.LASF131:
	.string	"filter"
.LASF226:
	.string	"user_comments"
.LASF50:
	.string	"_IO_wide_data"
.LASF135:
	.string	"ThirdOctaveData"
.LASF59:
	.string	"flag"
.LASF152:
	.string	"subchunk_fmt"
.LASF74:
	.string	"uint64_t"
.LASF291:
	.string	"aweighting_create"
.LASF332:
	.string	"first_letter"
.LASF86:
	.string	"block_size"
.LASF198:
	.string	"codec_setup"
.LASF99:
	.string	"calibration_reference"
.LASF141:
	.string	"RiffChunk"
.LASF347:
	.string	"continuous"
.LASF244:
	.string	"record_state"
.LASF250:
	.string	"cweighting_destroy"
.LASF343:
	.string	"ring_c"
.LASF57:
	.string	"name"
.LASF273:
	.string	"mqtt_begin"
.LASF136:
	.string	"ChunkID"
.LASF25:
	.string	"_IO_buf_base"
.LASF304:
	.string	"strlen"
.LASF221:
	.string	"reap"
.LASF339:
	.string	"block_squared"
.LASF100:
	.string	"calibration_delta"
.LASF325:
	.string	"option_channels"
.LASF41:
	.string	"_wide_data"
.LASF38:
	.string	"_lock"
.LASF97:
	.string	"background_duration"
.LASF272:
	.string	"output_open"
.LASF2:
	.string	"long unsigned int"
.LASF180:
	.string	"header_fill"
.LASF34:
	.string	"_old_offset"
.LASF321:
	.string	"option_input_filename"
.LASF55:
	.string	"_IO_FILE"
.LASF363:
	.string	"unused"
.LASF124:
	.string	"alpha"
.LASF188:
	.string	"packet"
.LASF283:
	.string	"__assert_fail"
.LASF143:
	.string	"NumChannels"
.LASF263:
	.string	"mqtt_publish"
.LASF167:
	.string	"body"
.LASF315:
	.string	"verbose_flag"
.LASF117:
	.string	"perc"
.LASF352:
	.string	"average_sum"
.LASF369:
	.string	"help"
.LASF240:
	.string	"created_audio_files"
.LASF72:
	.string	"uint16_t"
.LASF4:
	.string	"unsigned char"
.LASF162:
	.string	"endbit"
.LASF190:
	.string	"ogg_packet"
.LASF165:
	.string	"oggpack_buffer"
.LASF222:
	.string	"internal"
.LASF23:
	.string	"_IO_write_ptr"
.LASF91:
	.string	"audio_loop_recording"
.LASF280:
	.string	"timeweight_filtering"
.LASF103:
	.string	"mqtt_topic"
.LASF255:
	.string	"output_close"
.LASF359:
	.string	"block_ring_aslow"
.LASF200:
	.string	"analysisp"
.LASF176:
	.string	"lacing_storage"
.LASF108:
	.string	"config_struct"
.LASF274:
	.string	"server_init"
.LASF16:
	.string	"__time_t"
.LASF138:
	.string	"ChunkHeader"
.LASF77:
	.string	"input_device"
.LASF333:
	.string	"twfastfilter"
.LASF40:
	.string	"_codecvt"
.LASF102:
	.string	"mqtt_broker"
.LASF243:
	.string	"time_elapsed"
.LASF303:
	.string	"malloc"
.LASF101:
	.string	"mqtt_enable"
.LASF326:
	.string	"option_identification"
.LASF62:
	.string	"gchar"
.LASF319:
	.string	"error_in_options"
.LASF133:
	.string	"ring"
.LASF6:
	.string	"signed char"
.LASF148:
	.string	"SubChunkFmt"
.LASF275:
	.string	"sbuffer_destroy"
.LASF336:
	.string	"cfilter"
.LASF5:
	.string	"short unsigned int"
.LASF285:
	.string	"sbuffer_write_ptr"
.LASF362:
	.string	"prog_name"
.LASF290:
	.string	"cweighting_create"
.LASF160:
	.string	"ogg_int64_t"
.LASF177:
	.string	"lacing_fill"
.LASF307:
	.string	"atoi"
.LASF204:
	.string	"pcm_returned"
.LASF367:
	.string	"__PRETTY_FUNCTION__"
.LASF156:
	.string	"current"
.LASF112:
	.string	"LAeq"
.LASF90:
	.string	"run_duration"
.LASF261:
	.string	"output_record"
.LASF127:
	.string	"Afilter"
.LASF246:
	.string	"running"
.LASF153:
	.string	"subchunk_data"
.LASF31:
	.string	"_chain"
.LASF199:
	.string	"vorbis_dsp_state"
.LASF64:
	.string	"float"
.LASF47:
	.string	"FILE"
.LASF278:
	.string	"sbuffer_size"
.LASF33:
	.string	"_flags2"
.LASF58:
	.string	"has_arg"
.LASF228:
	.string	"comments"
.LASF35:
	.string	"_cur_column"
.LASF181:
	.string	"e_o_s"
.LASF182:
	.string	"b_o_s"
.LASF94:
	.string	"data_loop_recording"
.LASF195:
	.string	"bitrate_nominal"
.LASF113:
	.string	"LApeak"
.LASF15:
	.string	"__off64_t"
.LASF174:
	.string	"lacing_vals"
.LASF46:
	.string	"_unused2"
.LASF310:
	.string	"strcmp"
.LASF361:
	.string	"segment_index"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/main.c"
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
