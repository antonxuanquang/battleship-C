	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"clear"
	.align 8
.LC1:
	.string	"*******************************"
	.align 8
.LC2:
	.string	"*                             *"
	.align 8
.LC3:
	.string	"* Welcome to battle ship game.*"
.LC4:
	.string	"\n"
	.text
	.globl	begin
	.type	begin, @function
begin:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC0, %edi
	call	system
	movl	$.LC1, %edi
	call	puts
	movl	$.LC2, %edi
	call	puts
	movl	$.LC3, %edi
	call	puts
	movl	$.LC2, %edi
	call	puts
	movl	$.LC1, %edi
	call	puts
	movl	$.LC4, %edi
	call	puts
	movl	$0, %eax
	call	clear_screen
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	begin, .-begin
	.globl	create_board
	.type	create_board, @function
create_board:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L3
.L6:
	movl	$0, -8(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movb	$46, (%rdx,%rax)
	addl	$1, -8(%rbp)
.L4:
	cmpl	$9, -8(%rbp)
	jle	.L5
	addl	$1, -4(%rbp)
.L3:
	cmpl	$9, -4(%rbp)
	jle	.L6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	create_board, .-create_board
	.globl	put_ship_on_board
	.type	put_ship_on_board, @function
put_ship_on_board:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, %eax
	movq	%rcx, -64(%rbp)
	movb	%al, -52(%rbp)
	movl	$65, -8(%rbp)
	movl	$48, -12(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	-8(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.L8
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L9
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L10
.L11:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-16(%rbp), %eax
	cltq
	movzbl	-52(%rbp), %edx
	movb	%dl, (%rcx,%rax)
	addl	$1, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L11
	jmp	.L7
.L9:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L13
.L14:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-16(%rbp), %eax
	cltq
	movzbl	-52(%rbp), %edx
	movb	%dl, (%rcx,%rax)
	addl	$1, -4(%rbp)
.L13:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L14
	jmp	.L7
.L8:
	movl	-16(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L15
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L16
.L17:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	movzbl	-52(%rbp), %edx
	movb	%dl, (%rcx,%rax)
	addl	$1, -4(%rbp)
.L16:
	movl	-4(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.L17
	jmp	.L7
.L15:
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L18
.L19:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	movzbl	-52(%rbp), %edx
	movb	%dl, (%rcx,%rax)
	addl	$1, -4(%rbp)
.L18:
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L19
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	put_ship_on_board, .-put_ship_on_board
	.globl	generate_possible_positions
	.type	generate_possible_positions, @function
generate_possible_positions:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movl	$2, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$65, %eax
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	-20(%rbp), %eax
	subl	-52(%rbp), %eax
	testl	%eax, %eax
	js	.L21
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L22
.L25:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	$46, %al
	je	.L23
	movl	$0, -8(%rbp)
	jmp	.L24
.L23:
	subl	$1, -4(%rbp)
.L22:
	movl	-20(%rbp), %eax
	subl	-52(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L25
.L24:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movl	-52(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, (%rdx)
	cmpl	$0, -8(%rbp)
	je	.L21
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
.L21:
	movl	$1, -8(%rbp)
	movl	-20(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	cmpl	$9, %eax
	jg	.L26
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L27
.L30:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	$46, %al
	je	.L28
	movl	$0, -8(%rbp)
	jmp	.L29
.L28:
	addl	$1, -4(%rbp)
.L27:
	movl	-20(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	cmpl	-4(%rbp), %eax
	jge	.L30
.L29:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, (%rdx)
	cmpl	$0, -8(%rbp)
	je	.L26
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
.L26:
	movl	$1, -8(%rbp)
	movl	-24(%rbp), %eax
	subl	-52(%rbp), %eax
	testl	%eax, %eax
	js	.L31
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L32
.L35:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	$46, %al
	je	.L33
	movl	$0, -8(%rbp)
	jmp	.L34
.L33:
	subl	$1, -4(%rbp)
.L32:
	movl	-24(%rbp), %eax
	subl	-52(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L35
.L34:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-48(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movl	%edx, %ecx
	movl	-52(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	cmpl	$0, -8(%rbp)
	je	.L31
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
.L31:
	movl	$1, -8(%rbp)
	movl	-24(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	cmpl	$9, %eax
	jg	.L36
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L37
.L40:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	$46, %al
	je	.L38
	movl	$0, -8(%rbp)
	jmp	.L39
.L38:
	addl	$1, -4(%rbp)
.L37:
	movl	-24(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	cmpl	-4(%rbp), %eax
	jge	.L40
.L39:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-48(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movl	%edx, %ecx
	movl	-52(%rbp), %edx
	addl	%ecx, %edx
	movb	%dl, (%rax)
	cmpl	$0, -8(%rbp)
	je	.L36
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
.L36:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	generate_possible_positions, .-generate_possible_positions
	.section	.rodata
	.align 8
.LC5:
	.string	"Can't put this ship on board, please try again!"
	.text
	.globl	get_end_coordinate
	.type	get_end_coordinate, @function
get_end_coordinate:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	shrq	%rax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L42
	movl	$.LC5, %edi
	call	puts
	jmp	.L41
.L42:
	cmpl	$0, -36(%rbp)
	je	.L44
	call	rand
	cltd
	idivl	-8(%rbp)
	movl	%edx, -4(%rbp)
	jmp	.L45
.L44:
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	prompt_for_end_possition
	movl	%eax, -4(%rbp)
.L45:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	addl	%eax, %eax
	cltq
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	get_end_coordinate, .-get_end_coordinate
	.section	.rodata
.LC6:
	.string	">0: Retry"
.LC7:
	.string	">%d: %s\n"
.LC8:
	.string	"Please input end position: "
.LC9:
	.string	"%s"
.LC10:
	.string	"%d"
	.text
	.globl	prompt_for_end_possition
	.type	prompt_for_end_possition, @function
prompt_for_end_possition:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	$2, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	movl	$.LC6, %edi
	call	puts
	movl	$0, -4(%rbp)
	jmp	.L47
.L48:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %esi
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L47:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L48
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
.L49:
	movl	$.LC8, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	js	.L49
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jg	.L49
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	prompt_for_end_possition, .-prompt_for_end_possition
	.section	.rodata
	.align 8
.LC11:
	.string	"You are creating an Aircraft Carrier\n"
	.align 8
.LC12:
	.string	"You are creating a Battleship\n"
.LC13:
	.string	"You are creating a Cruiser\n"
.LC14:
	.string	"You are creating a Submarine\n"
.LC15:
	.string	"You are creating a Destroyer\n"
	.align 8
.LC16:
	.string	"Please input a start coordinate: "
	.text
	.globl	create_ship
	.type	create_ship, @function
create_ship:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movb	$65, -48(%rbp)
	movb	$66, -47(%rbp)
	movb	$67, -46(%rbp)
	movb	$83, -45(%rbp)
	movb	$68, -44(%rbp)
	movl	$2, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	movl	$8, %edi
	call	malloc
	movq	%rax, -24(%rbp)
	movl	$2, %edi
	call	malloc
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L52
.L68:
	cmpl	$0, -60(%rbp)
	jne	.L53
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	show_board
.L53:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	movb	%al, -33(%rbp)
	movsbl	-33(%rbp), %eax
	subl	$65, %eax
	cmpl	$18, %eax
	ja	.L54
	movl	%eax, %eax
	movq	.L56(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L56:
	.quad	.L55
	.quad	.L57
	.quad	.L58
	.quad	.L59
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L60
	.text
.L55:
	movl	$5, -8(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L61
	movl	$.LC11, %edi
	call	puts
.L61:
	jmp	.L54
.L57:
	movl	$4, -8(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L62
	movl	$.LC12, %edi
	call	puts
.L62:
	jmp	.L54
.L58:
	movl	$3, -8(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L63
	movl	$.LC13, %edi
	call	puts
.L63:
	jmp	.L54
.L60:
	movl	$2, -8(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L64
	movl	$.LC14, %edi
	call	puts
.L64:
	jmp	.L54
.L59:
	movl	$2, -8(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L65
	movl	$.LC15, %edi
	call	puts
.L65:
	nop
.L54:
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	cmpl	$0, -60(%rbp)
	jne	.L66
	movl	$.LC16, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L66:
	movl	-60(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_coordinate
	movl	-8(%rbp), %eax
	leal	-1(%rax), %edi
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	generate_possible_positions
	movl	-60(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_end_coordinate
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L54
	movsbl	-33(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	put_ship_on_board
	cmpl	$0, -60(%rbp)
	jne	.L67
	movl	$0, %eax
	call	clear_screen
.L67:
	addl	$1, -4(%rbp)
.L52:
	cmpl	$4, -4(%rbp)
	jle	.L68
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	create_ship, .-create_ship
	.globl	get_coordinate
	.type	get_coordinate, @function
get_coordinate:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L70
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	generate_random_input
	jmp	.L69
.L70:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	prompt_for_coordinate
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	get_coordinate, .-get_coordinate
	.globl	prompt_for_coordinate
	.type	prompt_for_coordinate, @function
prompt_for_coordinate:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
.L73:
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_valid
	testl	%eax, %eax
	je	.L73
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	prompt_for_coordinate, .-prompt_for_coordinate
	.section	.rodata
.LC17:
	.string	"Invalid input!!!!"
	.align 8
.LC18:
	.string	"A valid cordinate consists of a capital character from A to J"
.LC19:
	.string	"and a number from 0 to 9"
.LC20:
	.string	"Example: B2, J3, G7"
	.text
	.globl	is_valid
	.type	is_valid, @function
is_valid:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$2, %rax
	jne	.L75
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$65, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L75
	cmpl	$9, -4(%rbp)
	jg	.L75
	cmpl	$0, -8(%rbp)
	js	.L75
	cmpl	$9, -8(%rbp)
	jg	.L75
	movl	$1, %eax
	jmp	.L76
.L75:
	movl	$.LC17, %edi
	call	puts
	movl	$.LC18, %edi
	call	puts
	movl	$.LC19, %edi
	call	puts
	movl	$.LC20, %edi
	call	puts
	movl	$0, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	is_valid, .-is_valid
	.globl	generate_random_input
	.type	generate_random_input, @function
generate_random_input:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	call	rand
	movl	%eax, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$65, %eax
	movb	%al, -16(%rbp)
	call	rand
	movl	%eax, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, -15(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	generate_random_input, .-generate_random_input
	.globl	shoot_a_board
	.type	shoot_a_board, @function
shoot_a_board:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	shoot_it
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L79
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	check_sink
	movl	%eax, -4(%rbp)
.L79:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	shoot_a_board, .-shoot_a_board
	.section	.rodata
.LC21:
	.string	" is a HIT"
	.align 8
.LC22:
	.string	", hmmmm...., it has already  been hit :("
.LC23:
	.string	" is a MISS"
	.text
	.globl	shoot_it
	.type	shoot_it, @function
shoot_it:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$65, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	upper_case
	testl	%eax, %eax
	je	.L82
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movb	%al, -10(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-10(%rbp), %eax
	addl	$32, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	movl	$.LC21, %edi
	call	puts
	movl	$1, %eax
	jmp	.L83
.L82:
	movsbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	lower_case
	testl	%eax, %eax
	je	.L84
	movl	$.LC22, %edi
	call	puts
	jmp	.L85
.L84:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movb	$111, (%rdx,%rax)
	movl	$.LC23, %edi
	call	puts
.L85:
	movl	$0, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	shoot_it, .-shoot_it
	.globl	check_sink
	.type	check_sink, @function
check_sink:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	leaq	-48(%rbp), %rax
	movl	$20, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movl	$0, -4(%rbp)
	jmp	.L87
.L91:
	movl	$0, -8(%rbp)
	jmp	.L88
.L90:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movb	%al, -9(%rbp)
	cmpb	$46, -9(%rbp)
	je	.L89
	cmpb	$88, -9(%rbp)
	je	.L89
	cmpb	$111, -9(%rbp)
	je	.L89
	movsbl	-9(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	jne	.L89
	movsbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	upper_case
	testl	%eax, %eax
	je	.L89
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	cltq
	movzbl	-9(%rbp), %edx
	movb	%dl, -48(%rbp,%rax)
	movl	-16(%rbp), %eax
	cltq
	movb	$0, -48(%rbp,%rax)
.L89:
	addl	$1, -8(%rbp)
.L88:
	cmpl	$9, -8(%rbp)
	jle	.L90
	addl	$1, -4(%rbp)
.L87:
	cmpl	$9, -4(%rbp)
	jle	.L91
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$4, %rax
	setbe	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	check_sink, .-check_sink
	.section	.rodata
.LC24:
	.string	"SHIP BOARDS"
.LC25:
	.string	"SHOT BOARDS"
	.text
	.globl	show_board
	.type	show_board, @function
show_board:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$.LC24, %edi
	call	puts
	movl	$65, -4(%rbp)
	jmp	.L94
.L95:
	movl	$9, %edi
	call	putchar
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	addl	$1, -4(%rbp)
.L94:
	cmpl	$74, -4(%rbp)
	jle	.L95
	movl	$10, %edi
	call	putchar
	movl	$0, -4(%rbp)
	jmp	.L96
.L99:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -8(%rbp)
	jmp	.L97
.L98:
	movl	$9, %edi
	call	putchar
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar
	addl	$1, -8(%rbp)
.L97:
	cmpl	$9, -8(%rbp)
	jle	.L98
	movl	$10, %edi
	call	putchar
	addl	$1, -4(%rbp)
.L96:
	cmpl	$9, -4(%rbp)
	jle	.L99
	movl	$10, %edi
	call	putchar
	movl	$10, %edi
	call	putchar
	movl	$.LC25, %edi
	call	puts
	movl	$65, -4(%rbp)
	jmp	.L100
.L101:
	movl	$9, %edi
	call	putchar
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	addl	$1, -4(%rbp)
.L100:
	cmpl	$74, -4(%rbp)
	jle	.L101
	movl	$10, %edi
	call	putchar
	movl	$0, -4(%rbp)
	jmp	.L102
.L108:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -8(%rbp)
	jmp	.L103
.L107:
	movl	$9, %edi
	call	putchar
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	upper_case
	testl	%eax, %eax
	je	.L104
	movl	$46, %edi
	call	putchar
	jmp	.L105
.L104:
	movsbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	lower_case
	testl	%eax, %eax
	je	.L106
	cmpb	$111, -9(%rbp)
	je	.L106
	movl	$88, %edi
	call	putchar
	jmp	.L105
.L106:
	movsbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	putchar
.L105:
	addl	$1, -8(%rbp)
.L103:
	cmpl	$9, -8(%rbp)
	jle	.L107
	movl	$10, %edi
	call	putchar
	addl	$1, -4(%rbp)
.L102:
	cmpl	$9, -4(%rbp)
	jle	.L108
	movl	$10, %edi
	call	putchar
	movl	$10, %edi
	call	putchar
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	show_board, .-show_board
	.section	.rodata
.LC26:
	.string	"Press [[ENTER]] to continue"
	.text
	.globl	clear_screen
	.type	clear_screen, @function
clear_screen:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC26, %edi
	call	puts
	call	getchar
	call	getchar
	movl	$.LC0, %edi
	call	system
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	clear_screen, .-clear_screen
	.globl	upper_case
	.type	upper_case, @function
upper_case:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movl	$25, -4(%rbp)
	cmpb	$64, -20(%rbp)
	jle	.L111
	movsbl	-20(%rbp), %eax
	subl	$65, %eax
	cmpl	-4(%rbp), %eax
	jg	.L111
	movl	$1, %eax
	jmp	.L112
.L111:
	movl	$0, %eax
.L112:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	upper_case, .-upper_case
	.globl	lower_case
	.type	lower_case, @function
lower_case:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movl	$25, -4(%rbp)
	cmpb	$96, -20(%rbp)
	jle	.L115
	movsbl	-20(%rbp), %eax
	subl	$97, %eax
	cmpl	-4(%rbp), %eax
	jg	.L115
	movl	$1, %eax
	jmp	.L116
.L115:
	movl	$0, %eax
.L116:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	lower_case, .-lower_case
	.section	.rodata
.LC27:
	.string	"Let's create some ships\n\n"
.LC28:
	.string	"The battle begin\n\n"
.LC29:
	.string	"Computer shoot you at: "
.LC30:
	.string	"You shoot at: "
.LC31:
	.string	"%s...\n\n%s"
.LC32:
	.string	"\n%s"
.LC33:
	.string	"Congratulations!!!! You won"
.LC34:
	.string	"Computer won"
.LC35:
	.string	"Your game board"
.LC36:
	.string	"Computer's game board"
	.text
	.globl	main
	.type	main, @function
main:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movl	$0, %eax
	call	begin
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$2, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	movl	$.LC27, %edi
	call	puts
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	create_board
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	create_board
	movl	-4(%rbp), %edx
	leaq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	create_ship
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %edx
	leaq	-240(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	create_ship
	movl	$.LC28, %edi
	call	puts
.L125:
	leaq	-240(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	show_board
	cmpl	$0, -4(%rbp)
	je	.L119
	movl	$.LC29, %edi
	movl	$0, %eax
	call	printf
	jmp	.L120
.L119:
	movl	$.LC30, %edi
	movl	$0, %eax
	call	printf
.L120:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	get_coordinate
	cmpl	$0, -4(%rbp)
	je	.L121
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC31, %edi
	movl	$0, %eax
	call	printf
	jmp	.L122
.L121:
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC32, %edi
	movl	$0, %eax
	call	printf
.L122:
	cmpl	$0, -4(%rbp)
	je	.L123
	leaq	-128(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	shoot_a_board
	movl	%eax, -8(%rbp)
	jmp	.L124
.L123:
	leaq	-240(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	shoot_a_board
	movl	%eax, -8(%rbp)
.L124:
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	$0, %eax
	call	clear_screen
	cmpl	$0, -8(%rbp)
	je	.L125
	cmpl	$0, -4(%rbp)
	je	.L126
	movl	$.LC33, %edi
	call	puts
	jmp	.L127
.L126:
	movl	$.LC34, %edi
	call	puts
.L127:
	movl	$.LC35, %edi
	call	puts
	leaq	-240(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	show_board
	movl	$.LC36, %edi
	call	puts
	leaq	-128(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	show_board
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
