	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/mnt/c/Users/uriel/OneDrive/\303\201rea de Trabalho/Introduction-embedded-systems-software-and-development-environments/assessments/m3" "main.c"
	.local	g1
	.comm	g1,4,4
	.globl	g2
	.section	.rodata
	.align 4
	.type	g2, @object
	.size	g2, 4
g2:
	.long	45
	.globl	g3
	.data
	.type	g3, @object
	.size	g3, 1
g3:
	.byte	12
	.globl	g4
	.bss
	.type	g4, @object
	.size	g4, 1
g4:
	.zero	1
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "main.c"
	.loc 1 33 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	.loc 1 36 16
	movl	$12, -28(%rbp)
	.loc 1 38 26
	movl	$45, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	.loc 1 38 16
	movl	%eax, %eax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	.loc 1 40 6
	cmpq	$0, -24(%rbp)
	jne	.L2
	.loc 1 42 12
	movl	$-1, %eax
	jmp	.L3
.L2:
	.loc 1 45 11
	movl	$0, %ebx
	.loc 1 45 3
	jmp	.L4
.L5:
	.loc 1 47 10 discriminator 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	func@PLT
	.loc 1 47 8 discriminator 3
	movl	%eax, g1(%rip)
	.loc 1 45 27 discriminator 3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.L4:
	.loc 1 45 19 discriminator 1
	movl	$45, %eax
	cmpl	%eax, %ebx
	jl	.L5
	.loc 1 50 10
	movl	$0, %eax
.L3:
	.loc 1 51 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.file 2 "misc.h"
	.file 3 "/usr/include/stdlib.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x151
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x5
	.long	.LASF13
	.byte	0xc
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	0x58
	.uleb128 0x8
	.long	0x58
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x9
	.byte	0x8
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.byte	0xd1
	.byte	0x17
	.long	0x43
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.string	"g1"
	.byte	0x1a
	.byte	0xc
	.long	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	g1
	.uleb128 0x3
	.string	"g2"
	.byte	0x1b
	.byte	0xb
	.long	0x5f
	.uleb128 0x9
	.byte	0x3
	.quad	g2
	.uleb128 0x3
	.string	"g3"
	.byte	0x1c
	.byte	0x6
	.long	0x72
	.uleb128 0x9
	.byte	0x3
	.quad	g3
	.uleb128 0x3
	.string	"g4"
	.byte	0x1d
	.byte	0x6
	.long	0x72
	.uleb128 0x9
	.byte	0x3
	.quad	g4
	.uleb128 0xb
	.long	.LASF11
	.byte	0x2
	.byte	0x23
	.byte	0x5
	.long	0x58
	.long	0xf2
	.uleb128 0x4
	.long	0xf2
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x58
	.uleb128 0xd
	.long	.LASF12
	.byte	0x3
	.value	0x21c
	.byte	0xe
	.long	0x70
	.long	0x10f
	.uleb128 0x4
	.long	0x79
	.byte	0
	.uleb128 0xe
	.long	.LASF15
	.byte	0x1
	.byte	0x20
	.byte	0x5
	.long	0x58
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.string	"l1"
	.byte	0x22
	.byte	0x10
	.long	0x58
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.string	"l2"
	.byte	0x23
	.byte	0x9
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"l3"
	.byte	0x24
	.byte	0x10
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
.LASF10:
	.string	"long long int"
.LASF14:
	.string	"size_t"
.LASF5:
	.string	"long unsigned int"
.LASF13:
	.string	"GNU C99 11.4.0 -mtune=generic -march=x86-64 -g -O0 -std=c99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF9:
	.string	"char"
.LASF2:
	.string	"unsigned char"
.LASF15:
	.string	"main"
.LASF8:
	.string	"long int"
.LASF3:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF11:
	.string	"func"
.LASF7:
	.string	"short int"
.LASF4:
	.string	"unsigned int"
.LASF12:
	.string	"malloc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/mnt/c/Users/uriel/OneDrive/\303\201rea de Trabalho/Introduction-embedded-systems-software-and-development-environments/assessments/m3"
.LASF0:
	.string	"main.c"
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
