	.file	"misc.c"
	.text
.Ltext0:
	.file 0 "/mnt/c/Users/uriel/OneDrive/\303\201rea de Trabalho/Introduction-embedded-systems-software-and-development-environments/assessments/m3" "misc.c"
	.globl	g5
	.data
	.align 32
	.type	g5, @object
	.size	g5, 40
g5:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.section	.rodata
.LC0:
	.string	"Hello World!\n"
	.text
	.globl	func
	.type	func, @function
func:
.LFB0:
	.file 1 "misc.c"
	.loc 1 27 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 29 16
	movl	$0, -12(%rbp)
	.loc 1 30 19
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 32 5
	movl	f2.0(%rip), %eax
	addl	$1, %eax
	movl	%eax, f2.0(%rip)
	.loc 1 33 12
	movl	f2.0(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	g5(%rip), %rax
	addq	%rax, %rdx
	.loc 1 33 18
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 1 35 11
	movl	$0, -12(%rbp)
	.loc 1 35 3
	jmp	.L2
.L3:
	.loc 1 37 16 discriminator 3
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 1 37 12 discriminator 3
	movl	-12(%rbp), %edx
	leaq	0(,%rdx,4), %rcx
	leaq	g5(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	.loc 1 38 7 discriminator 3
	movl	f2.0(%rip), %eax
	addl	$1, %eax
	movl	%eax, f2.0(%rip)
	.loc 1 35 35 discriminator 3
	addl	$1, -12(%rbp)
.L2:
	.loc 1 35 19 discriminator 1
	cmpl	$5, -12(%rbp)
	jbe	.L3
	.loc 1 41 10
	movl	f2.0(%rip), %eax
	.loc 1 42 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func, .-func
	.local	f2.0
	.comm	f2.0,4,4
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xda
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x4
	.long	.LASF5
	.byte	0xc
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x5
	.long	0x45
	.long	0x3e
	.uleb128 0x6
	.long	0x3e
	.byte	0x9
	.byte	0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.string	"g5"
	.byte	0x1
	.byte	0x18
	.byte	0x5
	.long	0x2e
	.uleb128 0x9
	.byte	0x3
	.quad	g5
	.uleb128 0x9
	.long	.LASF6
	.byte	0x1
	.byte	0x1a
	.byte	0x5
	.long	0x45
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xc0
	.uleb128 0xa
	.string	"f1"
	.byte	0x1
	.byte	0x1a
	.byte	0x10
	.long	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"f2"
	.byte	0x1c
	.byte	0xe
	.long	0x45
	.uleb128 0x9
	.byte	0x3
	.quad	f2.0
	.uleb128 0x2
	.string	"f3"
	.byte	0x1d
	.byte	0x10
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"f4"
	.byte	0x1e
	.byte	0x13
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.long	0x45
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.long	0xd8
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0xb
	.long	0xd1
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
.LASF3:
	.string	"unsigned int"
.LASF6:
	.string	"func"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"GNU C99 11.4.0 -mtune=generic -march=x86-64 -g -O0 -std=c99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF4:
	.string	"char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"misc.c"
.LASF1:
	.string	"/mnt/c/Users/uriel/OneDrive/\303\201rea de Trabalho/Introduction-embedded-systems-software-and-development-environments/assessments/m3"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
