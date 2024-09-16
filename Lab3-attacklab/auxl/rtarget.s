
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400cc0 <_init>:
  400cc0:	48 83 ec 08          	sub    $0x8,%rsp
  400cc4:	48 8b 05 2d 43 20 00 	mov    0x20432d(%rip),%rax        # 604ff8 <__gmon_start__>
  400ccb:	48 85 c0             	test   %rax,%rax
  400cce:	74 05                	je     400cd5 <_init+0x15>
  400cd0:	e8 3b 02 00 00       	call   400f10 <__gmon_start__@plt>
  400cd5:	48 83 c4 08          	add    $0x8,%rsp
  400cd9:	c3                   	ret    

Disassembly of section .plt:

0000000000400ce0 <.plt>:
  400ce0:	ff 35 22 43 20 00    	push   0x204322(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400ce6:	ff 25 24 43 20 00    	jmp    *0x204324(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400cec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400cf0 <__printf_chk@plt>:
  400cf0:	ff 25 22 43 20 00    	jmp    *0x204322(%rip)        # 605018 <__printf_chk>
  400cf6:	68 00 00 00 00       	push   $0x0
  400cfb:	e9 e0 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d00 <strcasecmp@plt>:
  400d00:	ff 25 1a 43 20 00    	jmp    *0x20431a(%rip)        # 605020 <strcasecmp@GLIBC_2.2.5>
  400d06:	68 01 00 00 00       	push   $0x1
  400d0b:	e9 d0 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d10 <__errno_location@plt>:
  400d10:	ff 25 12 43 20 00    	jmp    *0x204312(%rip)        # 605028 <__errno_location@GLIBC_2.2.5>
  400d16:	68 02 00 00 00       	push   $0x2
  400d1b:	e9 c0 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d20 <srandom@plt>:
  400d20:	ff 25 0a 43 20 00    	jmp    *0x20430a(%rip)        # 605030 <srandom@GLIBC_2.2.5>
  400d26:	68 03 00 00 00       	push   $0x3
  400d2b:	e9 b0 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d30 <strncmp@plt>:
  400d30:	ff 25 02 43 20 00    	jmp    *0x204302(%rip)        # 605038 <strncmp@GLIBC_2.2.5>
  400d36:	68 04 00 00 00       	push   $0x4
  400d3b:	e9 a0 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d40 <strcpy@plt>:
  400d40:	ff 25 fa 42 20 00    	jmp    *0x2042fa(%rip)        # 605040 <strcpy@GLIBC_2.2.5>
  400d46:	68 05 00 00 00       	push   $0x5
  400d4b:	e9 90 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d50 <puts@plt>:
  400d50:	ff 25 f2 42 20 00    	jmp    *0x2042f2(%rip)        # 605048 <puts@GLIBC_2.2.5>
  400d56:	68 06 00 00 00       	push   $0x6
  400d5b:	e9 80 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d60 <write@plt>:
  400d60:	ff 25 ea 42 20 00    	jmp    *0x2042ea(%rip)        # 605050 <write@GLIBC_2.2.5>
  400d66:	68 07 00 00 00       	push   $0x7
  400d6b:	e9 70 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d70 <__stack_chk_fail@plt>:
  400d70:	ff 25 e2 42 20 00    	jmp    *0x2042e2(%rip)        # 605058 <__stack_chk_fail@GLIBC_2.4>
  400d76:	68 08 00 00 00       	push   $0x8
  400d7b:	e9 60 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d80 <mmap@plt>:
  400d80:	ff 25 da 42 20 00    	jmp    *0x2042da(%rip)        # 605060 <mmap@GLIBC_2.2.5>
  400d86:	68 09 00 00 00       	push   $0x9
  400d8b:	e9 50 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d90 <memset@plt>:
  400d90:	ff 25 d2 42 20 00    	jmp    *0x2042d2(%rip)        # 605068 <memset@GLIBC_2.2.5>
  400d96:	68 0a 00 00 00       	push   $0xa
  400d9b:	e9 40 ff ff ff       	jmp    400ce0 <.plt>

0000000000400da0 <alarm@plt>:
  400da0:	ff 25 ca 42 20 00    	jmp    *0x2042ca(%rip)        # 605070 <alarm@GLIBC_2.2.5>
  400da6:	68 0b 00 00 00       	push   $0xb
  400dab:	e9 30 ff ff ff       	jmp    400ce0 <.plt>

0000000000400db0 <close@plt>:
  400db0:	ff 25 c2 42 20 00    	jmp    *0x2042c2(%rip)        # 605078 <close@GLIBC_2.2.5>
  400db6:	68 0c 00 00 00       	push   $0xc
  400dbb:	e9 20 ff ff ff       	jmp    400ce0 <.plt>

0000000000400dc0 <read@plt>:
  400dc0:	ff 25 ba 42 20 00    	jmp    *0x2042ba(%rip)        # 605080 <read@GLIBC_2.2.5>
  400dc6:	68 0d 00 00 00       	push   $0xd
  400dcb:	e9 10 ff ff ff       	jmp    400ce0 <.plt>

0000000000400dd0 <__libc_start_main@plt>:
  400dd0:	ff 25 b2 42 20 00    	jmp    *0x2042b2(%rip)        # 605088 <__libc_start_main@GLIBC_2.2.5>
  400dd6:	68 0e 00 00 00       	push   $0xe
  400ddb:	e9 00 ff ff ff       	jmp    400ce0 <.plt>

0000000000400de0 <signal@plt>:
  400de0:	ff 25 aa 42 20 00    	jmp    *0x2042aa(%rip)        # 605090 <signal@GLIBC_2.2.5>
  400de6:	68 0f 00 00 00       	push   $0xf
  400deb:	e9 f0 fe ff ff       	jmp    400ce0 <.plt>

0000000000400df0 <gethostbyname@plt>:
  400df0:	ff 25 a2 42 20 00    	jmp    *0x2042a2(%rip)        # 605098 <gethostbyname@GLIBC_2.2.5>
  400df6:	68 10 00 00 00       	push   $0x10
  400dfb:	e9 e0 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e00 <__memmove_chk@plt>:
  400e00:	ff 25 9a 42 20 00    	jmp    *0x20429a(%rip)        # 6050a0 <__memmove_chk@GLIBC_2.3.4>
  400e06:	68 11 00 00 00       	push   $0x11
  400e0b:	e9 d0 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e10 <strtol@plt>:
  400e10:	ff 25 92 42 20 00    	jmp    *0x204292(%rip)        # 6050a8 <strtol@GLIBC_2.2.5>
  400e16:	68 12 00 00 00       	push   $0x12
  400e1b:	e9 c0 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e20 <memcpy@plt>:
  400e20:	ff 25 8a 42 20 00    	jmp    *0x20428a(%rip)        # 6050b0 <memcpy@GLIBC_2.14>
  400e26:	68 13 00 00 00       	push   $0x13
  400e2b:	e9 b0 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e30 <__sprintf_chk@plt>:
  400e30:	ff 25 82 42 20 00    	jmp    *0x204282(%rip)        # 6050b8 <__sprintf_chk>
  400e36:	68 14 00 00 00       	push   $0x14
  400e3b:	e9 a0 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e40 <time@plt>:
  400e40:	ff 25 7a 42 20 00    	jmp    *0x20427a(%rip)        # 6050c0 <time@GLIBC_2.2.5>
  400e46:	68 15 00 00 00       	push   $0x15
  400e4b:	e9 90 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e50 <random@plt>:
  400e50:	ff 25 72 42 20 00    	jmp    *0x204272(%rip)        # 6050c8 <random@GLIBC_2.2.5>
  400e56:	68 16 00 00 00       	push   $0x16
  400e5b:	e9 80 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e60 <_IO_getc@plt>:
  400e60:	ff 25 6a 42 20 00    	jmp    *0x20426a(%rip)        # 6050d0 <_IO_getc@GLIBC_2.2.5>
  400e66:	68 17 00 00 00       	push   $0x17
  400e6b:	e9 70 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e70 <__isoc99_sscanf@plt>:
  400e70:	ff 25 62 42 20 00    	jmp    *0x204262(%rip)        # 6050d8 <__isoc99_sscanf@GLIBC_2.7>
  400e76:	68 18 00 00 00       	push   $0x18
  400e7b:	e9 60 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e80 <munmap@plt>:
  400e80:	ff 25 5a 42 20 00    	jmp    *0x20425a(%rip)        # 6050e0 <munmap@GLIBC_2.2.5>
  400e86:	68 19 00 00 00       	push   $0x19
  400e8b:	e9 50 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e90 <fopen@plt>:
  400e90:	ff 25 52 42 20 00    	jmp    *0x204252(%rip)        # 6050e8 <fopen@GLIBC_2.2.5>
  400e96:	68 1a 00 00 00       	push   $0x1a
  400e9b:	e9 40 fe ff ff       	jmp    400ce0 <.plt>

0000000000400ea0 <getopt@plt>:
  400ea0:	ff 25 4a 42 20 00    	jmp    *0x20424a(%rip)        # 6050f0 <getopt@GLIBC_2.2.5>
  400ea6:	68 1b 00 00 00       	push   $0x1b
  400eab:	e9 30 fe ff ff       	jmp    400ce0 <.plt>

0000000000400eb0 <strtoul@plt>:
  400eb0:	ff 25 42 42 20 00    	jmp    *0x204242(%rip)        # 6050f8 <strtoul@GLIBC_2.2.5>
  400eb6:	68 1c 00 00 00       	push   $0x1c
  400ebb:	e9 20 fe ff ff       	jmp    400ce0 <.plt>

0000000000400ec0 <gethostname@plt>:
  400ec0:	ff 25 3a 42 20 00    	jmp    *0x20423a(%rip)        # 605100 <gethostname@GLIBC_2.2.5>
  400ec6:	68 1d 00 00 00       	push   $0x1d
  400ecb:	e9 10 fe ff ff       	jmp    400ce0 <.plt>

0000000000400ed0 <exit@plt>:
  400ed0:	ff 25 32 42 20 00    	jmp    *0x204232(%rip)        # 605108 <exit@GLIBC_2.2.5>
  400ed6:	68 1e 00 00 00       	push   $0x1e
  400edb:	e9 00 fe ff ff       	jmp    400ce0 <.plt>

0000000000400ee0 <connect@plt>:
  400ee0:	ff 25 2a 42 20 00    	jmp    *0x20422a(%rip)        # 605110 <connect@GLIBC_2.2.5>
  400ee6:	68 1f 00 00 00       	push   $0x1f
  400eeb:	e9 f0 fd ff ff       	jmp    400ce0 <.plt>

0000000000400ef0 <__fprintf_chk@plt>:
  400ef0:	ff 25 22 42 20 00    	jmp    *0x204222(%rip)        # 605118 <__fprintf_chk@GLIBC_2.3.4>
  400ef6:	68 20 00 00 00       	push   $0x20
  400efb:	e9 e0 fd ff ff       	jmp    400ce0 <.plt>

0000000000400f00 <socket@plt>:
  400f00:	ff 25 1a 42 20 00    	jmp    *0x20421a(%rip)        # 605120 <socket@GLIBC_2.2.5>
  400f06:	68 21 00 00 00       	push   $0x21
  400f0b:	e9 d0 fd ff ff       	jmp    400ce0 <.plt>

Disassembly of section .plt.got:

0000000000400f10 <__gmon_start__@plt>:
  400f10:	ff 25 e2 40 20 00    	jmp    *0x2040e2(%rip)        # 604ff8 <__gmon_start__>
  400f16:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400f20 <_start>:
  400f20:	31 ed                	xor    %ebp,%ebp
  400f22:	49 89 d1             	mov    %rdx,%r9
  400f25:	5e                   	pop    %rsi
  400f26:	48 89 e2             	mov    %rsp,%rdx
  400f29:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400f2d:	50                   	push   %rax
  400f2e:	54                   	push   %rsp
  400f2f:	49 c7 c0 c0 2f 40 00 	mov    $0x402fc0,%r8
  400f36:	48 c7 c1 50 2f 40 00 	mov    $0x402f50,%rcx
  400f3d:	48 c7 c7 25 12 40 00 	mov    $0x401225,%rdi
  400f44:	e8 87 fe ff ff       	call   400dd0 <__libc_start_main@plt>
  400f49:	f4                   	hlt    
  400f4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f50 <deregister_tm_clones>:
  400f50:	b8 af 54 60 00       	mov    $0x6054af,%eax
  400f55:	55                   	push   %rbp
  400f56:	48 2d a8 54 60 00    	sub    $0x6054a8,%rax
  400f5c:	48 83 f8 0e          	cmp    $0xe,%rax
  400f60:	48 89 e5             	mov    %rsp,%rbp
  400f63:	76 1b                	jbe    400f80 <deregister_tm_clones+0x30>
  400f65:	b8 00 00 00 00       	mov    $0x0,%eax
  400f6a:	48 85 c0             	test   %rax,%rax
  400f6d:	74 11                	je     400f80 <deregister_tm_clones+0x30>
  400f6f:	5d                   	pop    %rbp
  400f70:	bf a8 54 60 00       	mov    $0x6054a8,%edi
  400f75:	ff e0                	jmp    *%rax
  400f77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400f7e:	00 00 
  400f80:	5d                   	pop    %rbp
  400f81:	c3                   	ret    
  400f82:	0f 1f 40 00          	nopl   0x0(%rax)
  400f86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400f8d:	00 00 00 

0000000000400f90 <register_tm_clones>:
  400f90:	be a8 54 60 00       	mov    $0x6054a8,%esi
  400f95:	55                   	push   %rbp
  400f96:	48 81 ee a8 54 60 00 	sub    $0x6054a8,%rsi
  400f9d:	48 c1 fe 03          	sar    $0x3,%rsi
  400fa1:	48 89 e5             	mov    %rsp,%rbp
  400fa4:	48 89 f0             	mov    %rsi,%rax
  400fa7:	48 c1 e8 3f          	shr    $0x3f,%rax
  400fab:	48 01 c6             	add    %rax,%rsi
  400fae:	48 d1 fe             	sar    %rsi
  400fb1:	74 15                	je     400fc8 <register_tm_clones+0x38>
  400fb3:	b8 00 00 00 00       	mov    $0x0,%eax
  400fb8:	48 85 c0             	test   %rax,%rax
  400fbb:	74 0b                	je     400fc8 <register_tm_clones+0x38>
  400fbd:	5d                   	pop    %rbp
  400fbe:	bf a8 54 60 00       	mov    $0x6054a8,%edi
  400fc3:	ff e0                	jmp    *%rax
  400fc5:	0f 1f 00             	nopl   (%rax)
  400fc8:	5d                   	pop    %rbp
  400fc9:	c3                   	ret    
  400fca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400fd0 <__do_global_dtors_aux>:
  400fd0:	80 3d 11 45 20 00 00 	cmpb   $0x0,0x204511(%rip)        # 6054e8 <completed.7594>
  400fd7:	75 11                	jne    400fea <__do_global_dtors_aux+0x1a>
  400fd9:	55                   	push   %rbp
  400fda:	48 89 e5             	mov    %rsp,%rbp
  400fdd:	e8 6e ff ff ff       	call   400f50 <deregister_tm_clones>
  400fe2:	5d                   	pop    %rbp
  400fe3:	c6 05 fe 44 20 00 01 	movb   $0x1,0x2044fe(%rip)        # 6054e8 <completed.7594>
  400fea:	f3 c3                	repz ret 
  400fec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ff0 <frame_dummy>:
  400ff0:	bf 10 4e 60 00       	mov    $0x604e10,%edi
  400ff5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400ff9:	75 05                	jne    401000 <frame_dummy+0x10>
  400ffb:	eb 93                	jmp    400f90 <register_tm_clones>
  400ffd:	0f 1f 00             	nopl   (%rax)
  401000:	b8 00 00 00 00       	mov    $0x0,%eax
  401005:	48 85 c0             	test   %rax,%rax
  401008:	74 f1                	je     400ffb <frame_dummy+0xb>
  40100a:	55                   	push   %rbp
  40100b:	48 89 e5             	mov    %rsp,%rbp
  40100e:	ff d0                	call   *%rax
  401010:	5d                   	pop    %rbp
  401011:	e9 7a ff ff ff       	jmp    400f90 <register_tm_clones>

0000000000401016 <usage>:
  401016:	48 83 ec 08          	sub    $0x8,%rsp
  40101a:	48 89 fa             	mov    %rdi,%rdx
  40101d:	83 3d 08 45 20 00 00 	cmpl   $0x0,0x204508(%rip)        # 60552c <is_checker>
  401024:	74 3e                	je     401064 <usage+0x4e>
  401026:	be d8 2f 40 00       	mov    $0x402fd8,%esi
  40102b:	bf 01 00 00 00       	mov    $0x1,%edi
  401030:	b8 00 00 00 00       	mov    $0x0,%eax
  401035:	e8 b6 fc ff ff       	call   400cf0 <__printf_chk@plt>
  40103a:	bf 10 30 40 00       	mov    $0x403010,%edi
  40103f:	e8 0c fd ff ff       	call   400d50 <puts@plt>
  401044:	bf 88 31 40 00       	mov    $0x403188,%edi
  401049:	e8 02 fd ff ff       	call   400d50 <puts@plt>
  40104e:	bf 38 30 40 00       	mov    $0x403038,%edi
  401053:	e8 f8 fc ff ff       	call   400d50 <puts@plt>
  401058:	bf a2 31 40 00       	mov    $0x4031a2,%edi
  40105d:	e8 ee fc ff ff       	call   400d50 <puts@plt>
  401062:	eb 32                	jmp    401096 <usage+0x80>
  401064:	be be 31 40 00       	mov    $0x4031be,%esi
  401069:	bf 01 00 00 00       	mov    $0x1,%edi
  40106e:	b8 00 00 00 00       	mov    $0x0,%eax
  401073:	e8 78 fc ff ff       	call   400cf0 <__printf_chk@plt>
  401078:	bf 60 30 40 00       	mov    $0x403060,%edi
  40107d:	e8 ce fc ff ff       	call   400d50 <puts@plt>
  401082:	bf 88 30 40 00       	mov    $0x403088,%edi
  401087:	e8 c4 fc ff ff       	call   400d50 <puts@plt>
  40108c:	bf dc 31 40 00       	mov    $0x4031dc,%edi
  401091:	e8 ba fc ff ff       	call   400d50 <puts@plt>
  401096:	bf 00 00 00 00       	mov    $0x0,%edi
  40109b:	e8 30 fe ff ff       	call   400ed0 <exit@plt>

00000000004010a0 <initialize_target>:
  4010a0:	55                   	push   %rbp
  4010a1:	53                   	push   %rbx
  4010a2:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  4010a9:	89 f5                	mov    %esi,%ebp
  4010ab:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4010b2:	00 00 
  4010b4:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  4010bb:	00 
  4010bc:	31 c0                	xor    %eax,%eax
  4010be:	89 3d 58 44 20 00    	mov    %edi,0x204458(%rip)        # 60551c <check_level>
  4010c4:	8b 3d 9e 40 20 00    	mov    0x20409e(%rip),%edi        # 605168 <target_id>
  4010ca:	e8 53 1e 00 00       	call   402f22 <gencookie>
  4010cf:	89 05 53 44 20 00    	mov    %eax,0x204453(%rip)        # 605528 <cookie>
  4010d5:	89 c7                	mov    %eax,%edi
  4010d7:	e8 46 1e 00 00       	call   402f22 <gencookie>
  4010dc:	89 05 42 44 20 00    	mov    %eax,0x204442(%rip)        # 605524 <authkey>
  4010e2:	8b 05 80 40 20 00    	mov    0x204080(%rip),%eax        # 605168 <target_id>
  4010e8:	8d 78 01             	lea    0x1(%rax),%edi
  4010eb:	e8 30 fc ff ff       	call   400d20 <srandom@plt>
  4010f0:	e8 5b fd ff ff       	call   400e50 <random@plt>
  4010f5:	89 c7                	mov    %eax,%edi
  4010f7:	e8 0d 03 00 00       	call   401409 <scramble>
  4010fc:	89 c3                	mov    %eax,%ebx
  4010fe:	85 ed                	test   %ebp,%ebp
  401100:	74 18                	je     40111a <initialize_target+0x7a>
  401102:	bf 00 00 00 00       	mov    $0x0,%edi
  401107:	e8 34 fd ff ff       	call   400e40 <time@plt>
  40110c:	89 c7                	mov    %eax,%edi
  40110e:	e8 0d fc ff ff       	call   400d20 <srandom@plt>
  401113:	e8 38 fd ff ff       	call   400e50 <random@plt>
  401118:	eb 05                	jmp    40111f <initialize_target+0x7f>
  40111a:	b8 00 00 00 00       	mov    $0x0,%eax
  40111f:	01 c3                	add    %eax,%ebx
  401121:	0f b7 db             	movzwl %bx,%ebx
  401124:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  40112b:	89 c0                	mov    %eax,%eax
  40112d:	48 89 05 6c 43 20 00 	mov    %rax,0x20436c(%rip)        # 6054a0 <buf_offset>
  401134:	c6 05 0d 50 20 00 72 	movb   $0x72,0x20500d(%rip)        # 606148 <target_prefix>
  40113b:	83 3d d6 43 20 00 00 	cmpl   $0x0,0x2043d6(%rip)        # 605518 <notify>
  401142:	0f 84 bb 00 00 00    	je     401203 <initialize_target+0x163>
  401148:	83 3d dd 43 20 00 00 	cmpl   $0x0,0x2043dd(%rip)        # 60552c <is_checker>
  40114f:	0f 85 ae 00 00 00    	jne    401203 <initialize_target+0x163>
  401155:	be 00 01 00 00       	mov    $0x100,%esi
  40115a:	48 89 e7             	mov    %rsp,%rdi
  40115d:	e8 5e fd ff ff       	call   400ec0 <gethostname@plt>
  401162:	85 c0                	test   %eax,%eax
  401164:	74 25                	je     40118b <initialize_target+0xeb>
  401166:	bf b8 30 40 00       	mov    $0x4030b8,%edi
  40116b:	e8 e0 fb ff ff       	call   400d50 <puts@plt>
  401170:	bf 08 00 00 00       	mov    $0x8,%edi
  401175:	e8 56 fd ff ff       	call   400ed0 <exit@plt>
  40117a:	48 89 e6             	mov    %rsp,%rsi
  40117d:	e8 7e fb ff ff       	call   400d00 <strcasecmp@plt>
  401182:	85 c0                	test   %eax,%eax
  401184:	74 21                	je     4011a7 <initialize_target+0x107>
  401186:	83 c3 01             	add    $0x1,%ebx
  401189:	eb 05                	jmp    401190 <initialize_target+0xf0>
  40118b:	bb 00 00 00 00       	mov    $0x0,%ebx
  401190:	48 63 c3             	movslq %ebx,%rax
  401193:	48 8b 3c c5 80 51 60 	mov    0x605180(,%rax,8),%rdi
  40119a:	00 
  40119b:	48 85 ff             	test   %rdi,%rdi
  40119e:	75 da                	jne    40117a <initialize_target+0xda>
  4011a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4011a5:	eb 05                	jmp    4011ac <initialize_target+0x10c>
  4011a7:	b8 01 00 00 00       	mov    $0x1,%eax
  4011ac:	85 c0                	test   %eax,%eax
  4011ae:	75 1c                	jne    4011cc <initialize_target+0x12c>
  4011b0:	48 89 e2             	mov    %rsp,%rdx
  4011b3:	be f0 30 40 00       	mov    $0x4030f0,%esi
  4011b8:	bf 01 00 00 00       	mov    $0x1,%edi
  4011bd:	e8 2e fb ff ff       	call   400cf0 <__printf_chk@plt>
  4011c2:	bf 08 00 00 00       	mov    $0x8,%edi
  4011c7:	e8 04 fd ff ff       	call   400ed0 <exit@plt>
  4011cc:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4011d3:	00 
  4011d4:	e8 b3 1a 00 00       	call   402c8c <init_driver>
  4011d9:	85 c0                	test   %eax,%eax
  4011db:	79 26                	jns    401203 <initialize_target+0x163>
  4011dd:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  4011e4:	00 
  4011e5:	be 30 31 40 00       	mov    $0x403130,%esi
  4011ea:	bf 01 00 00 00       	mov    $0x1,%edi
  4011ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4011f4:	e8 f7 fa ff ff       	call   400cf0 <__printf_chk@plt>
  4011f9:	bf 08 00 00 00       	mov    $0x8,%edi
  4011fe:	e8 cd fc ff ff       	call   400ed0 <exit@plt>
  401203:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  40120a:	00 
  40120b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401212:	00 00 
  401214:	74 05                	je     40121b <initialize_target+0x17b>
  401216:	e8 55 fb ff ff       	call   400d70 <__stack_chk_fail@plt>
  40121b:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  401222:	5b                   	pop    %rbx
  401223:	5d                   	pop    %rbp
  401224:	c3                   	ret    

0000000000401225 <main>:
  401225:	41 56                	push   %r14
  401227:	41 55                	push   %r13
  401229:	41 54                	push   %r12
  40122b:	55                   	push   %rbp
  40122c:	53                   	push   %rbx
  40122d:	41 89 fc             	mov    %edi,%r12d
  401230:	48 89 f3             	mov    %rsi,%rbx
  401233:	be c7 1f 40 00       	mov    $0x401fc7,%esi
  401238:	bf 0b 00 00 00       	mov    $0xb,%edi
  40123d:	e8 9e fb ff ff       	call   400de0 <signal@plt>
  401242:	be 79 1f 40 00       	mov    $0x401f79,%esi
  401247:	bf 07 00 00 00       	mov    $0x7,%edi
  40124c:	e8 8f fb ff ff       	call   400de0 <signal@plt>
  401251:	be 15 20 40 00       	mov    $0x402015,%esi
  401256:	bf 04 00 00 00       	mov    $0x4,%edi
  40125b:	e8 80 fb ff ff       	call   400de0 <signal@plt>
  401260:	83 3d c5 42 20 00 00 	cmpl   $0x0,0x2042c5(%rip)        # 60552c <is_checker>
  401267:	74 20                	je     401289 <main+0x64>
  401269:	be 63 20 40 00       	mov    $0x402063,%esi
  40126e:	bf 0e 00 00 00       	mov    $0xe,%edi
  401273:	e8 68 fb ff ff       	call   400de0 <signal@plt>
  401278:	bf 05 00 00 00       	mov    $0x5,%edi
  40127d:	e8 1e fb ff ff       	call   400da0 <alarm@plt>
  401282:	bd fa 31 40 00       	mov    $0x4031fa,%ebp
  401287:	eb 05                	jmp    40128e <main+0x69>
  401289:	bd f5 31 40 00       	mov    $0x4031f5,%ebp
  40128e:	48 8b 05 2b 42 20 00 	mov    0x20422b(%rip),%rax        # 6054c0 <stdin@GLIBC_2.2.5>
  401295:	48 89 05 74 42 20 00 	mov    %rax,0x204274(%rip)        # 605510 <infile>
  40129c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4012a2:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4012a8:	e9 c6 00 00 00       	jmp    401373 <main+0x14e>
  4012ad:	83 e8 61             	sub    $0x61,%eax
  4012b0:	3c 10                	cmp    $0x10,%al
  4012b2:	0f 87 9c 00 00 00    	ja     401354 <main+0x12f>
  4012b8:	0f b6 c0             	movzbl %al,%eax
  4012bb:	ff 24 c5 40 32 40 00 	jmp    *0x403240(,%rax,8)
  4012c2:	48 8b 3b             	mov    (%rbx),%rdi
  4012c5:	e8 4c fd ff ff       	call   401016 <usage>
  4012ca:	be 72 34 40 00       	mov    $0x403472,%esi
  4012cf:	48 8b 3d f2 41 20 00 	mov    0x2041f2(%rip),%rdi        # 6054c8 <optarg@GLIBC_2.2.5>
  4012d6:	e8 b5 fb ff ff       	call   400e90 <fopen@plt>
  4012db:	48 89 05 2e 42 20 00 	mov    %rax,0x20422e(%rip)        # 605510 <infile>
  4012e2:	48 85 c0             	test   %rax,%rax
  4012e5:	0f 85 88 00 00 00    	jne    401373 <main+0x14e>
  4012eb:	48 8b 0d d6 41 20 00 	mov    0x2041d6(%rip),%rcx        # 6054c8 <optarg@GLIBC_2.2.5>
  4012f2:	ba 02 32 40 00       	mov    $0x403202,%edx
  4012f7:	be 01 00 00 00       	mov    $0x1,%esi
  4012fc:	48 8b 3d dd 41 20 00 	mov    0x2041dd(%rip),%rdi        # 6054e0 <stderr@GLIBC_2.2.5>
  401303:	e8 e8 fb ff ff       	call   400ef0 <__fprintf_chk@plt>
  401308:	b8 01 00 00 00       	mov    $0x1,%eax
  40130d:	e9 ee 00 00 00       	jmp    401400 <main+0x1db>
  401312:	ba 10 00 00 00       	mov    $0x10,%edx
  401317:	be 00 00 00 00       	mov    $0x0,%esi
  40131c:	48 8b 3d a5 41 20 00 	mov    0x2041a5(%rip),%rdi        # 6054c8 <optarg@GLIBC_2.2.5>
  401323:	e8 88 fb ff ff       	call   400eb0 <strtoul@plt>
  401328:	41 89 c6             	mov    %eax,%r14d
  40132b:	eb 46                	jmp    401373 <main+0x14e>
  40132d:	ba 0a 00 00 00       	mov    $0xa,%edx
  401332:	be 00 00 00 00       	mov    $0x0,%esi
  401337:	48 8b 3d 8a 41 20 00 	mov    0x20418a(%rip),%rdi        # 6054c8 <optarg@GLIBC_2.2.5>
  40133e:	e8 cd fa ff ff       	call   400e10 <strtol@plt>
  401343:	41 89 c5             	mov    %eax,%r13d
  401346:	eb 2b                	jmp    401373 <main+0x14e>
  401348:	c7 05 c6 41 20 00 00 	movl   $0x0,0x2041c6(%rip)        # 605518 <notify>
  40134f:	00 00 00 
  401352:	eb 1f                	jmp    401373 <main+0x14e>
  401354:	0f be d2             	movsbl %dl,%edx
  401357:	be 1f 32 40 00       	mov    $0x40321f,%esi
  40135c:	bf 01 00 00 00       	mov    $0x1,%edi
  401361:	b8 00 00 00 00       	mov    $0x0,%eax
  401366:	e8 85 f9 ff ff       	call   400cf0 <__printf_chk@plt>
  40136b:	48 8b 3b             	mov    (%rbx),%rdi
  40136e:	e8 a3 fc ff ff       	call   401016 <usage>
  401373:	48 89 ea             	mov    %rbp,%rdx
  401376:	48 89 de             	mov    %rbx,%rsi
  401379:	44 89 e7             	mov    %r12d,%edi
  40137c:	e8 1f fb ff ff       	call   400ea0 <getopt@plt>
  401381:	89 c2                	mov    %eax,%edx
  401383:	3c ff                	cmp    $0xff,%al
  401385:	0f 85 22 ff ff ff    	jne    4012ad <main+0x88>
  40138b:	c7 05 83 41 20 00 00 	movl   $0x0,0x204183(%rip)        # 605518 <notify>
  401392:	00 00 00 
  401395:	be 01 00 00 00       	mov    $0x1,%esi
  40139a:	44 89 ef             	mov    %r13d,%edi
  40139d:	e8 fe fc ff ff       	call   4010a0 <initialize_target>
  4013a2:	83 3d 83 41 20 00 00 	cmpl   $0x0,0x204183(%rip)        # 60552c <is_checker>
  4013a9:	74 2a                	je     4013d5 <main+0x1b0>
  4013ab:	44 3b 35 72 41 20 00 	cmp    0x204172(%rip),%r14d        # 605524 <authkey>
  4013b2:	74 21                	je     4013d5 <main+0x1b0>
  4013b4:	44 89 f2             	mov    %r14d,%edx
  4013b7:	be 58 31 40 00       	mov    $0x403158,%esi
  4013bc:	bf 01 00 00 00       	mov    $0x1,%edi
  4013c1:	b8 00 00 00 00       	mov    $0x0,%eax
  4013c6:	e8 25 f9 ff ff       	call   400cf0 <__printf_chk@plt>
  4013cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4013d0:	e8 45 09 00 00       	call   401d1a <check_fail>
  4013d5:	8b 15 4d 41 20 00    	mov    0x20414d(%rip),%edx        # 605528 <cookie>
  4013db:	be 32 32 40 00       	mov    $0x403232,%esi
  4013e0:	bf 01 00 00 00       	mov    $0x1,%edi
  4013e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4013ea:	e8 01 f9 ff ff       	call   400cf0 <__printf_chk@plt>
  4013ef:	48 8b 3d aa 40 20 00 	mov    0x2040aa(%rip),%rdi        # 6054a0 <buf_offset>
  4013f6:	e8 bb 0c 00 00       	call   4020b6 <launch>
  4013fb:	b8 00 00 00 00       	mov    $0x0,%eax
  401400:	5b                   	pop    %rbx
  401401:	5d                   	pop    %rbp
  401402:	41 5c                	pop    %r12
  401404:	41 5d                	pop    %r13
  401406:	41 5e                	pop    %r14
  401408:	c3                   	ret    

0000000000401409 <scramble>:
  401409:	48 83 ec 38          	sub    $0x38,%rsp
  40140d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401414:	00 00 
  401416:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40141b:	31 c0                	xor    %eax,%eax
  40141d:	eb 10                	jmp    40142f <scramble+0x26>
  40141f:	69 d0 0f 56 00 00    	imul   $0x560f,%eax,%edx
  401425:	01 fa                	add    %edi,%edx
  401427:	89 c1                	mov    %eax,%ecx
  401429:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  40142c:	83 c0 01             	add    $0x1,%eax
  40142f:	83 f8 09             	cmp    $0x9,%eax
  401432:	76 eb                	jbe    40141f <scramble+0x16>
  401434:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401438:	69 c0 3a cd 00 00    	imul   $0xcd3a,%eax,%eax
  40143e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401442:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401446:	69 c0 60 c5 00 00    	imul   $0xc560,%eax,%eax
  40144c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401450:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401454:	69 c0 e3 65 00 00    	imul   $0x65e3,%eax,%eax
  40145a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40145e:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401462:	69 c0 f7 59 00 00    	imul   $0x59f7,%eax,%eax
  401468:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40146c:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401470:	69 c0 c8 10 00 00    	imul   $0x10c8,%eax,%eax
  401476:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40147a:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40147e:	69 c0 99 7d 00 00    	imul   $0x7d99,%eax,%eax
  401484:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401488:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40148c:	69 c0 44 f7 00 00    	imul   $0xf744,%eax,%eax
  401492:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401496:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40149a:	69 c0 66 03 00 00    	imul   $0x366,%eax,%eax
  4014a0:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4014a4:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4014a8:	69 c0 5e 47 00 00    	imul   $0x475e,%eax,%eax
  4014ae:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4014b2:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4014b6:	69 c0 bb 9a 00 00    	imul   $0x9abb,%eax,%eax
  4014bc:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4014c0:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4014c4:	69 c0 27 aa 00 00    	imul   $0xaa27,%eax,%eax
  4014ca:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4014ce:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4014d2:	69 c0 51 08 00 00    	imul   $0x851,%eax,%eax
  4014d8:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4014dc:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4014e0:	69 c0 ca 03 00 00    	imul   $0x3ca,%eax,%eax
  4014e6:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4014ea:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4014ee:	69 c0 53 1b 00 00    	imul   $0x1b53,%eax,%eax
  4014f4:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4014f8:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4014fc:	69 c0 7d d5 00 00    	imul   $0xd57d,%eax,%eax
  401502:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401506:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40150a:	69 c0 c2 f4 00 00    	imul   $0xf4c2,%eax,%eax
  401510:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401514:	8b 04 24             	mov    (%rsp),%eax
  401517:	69 c0 e5 fb 00 00    	imul   $0xfbe5,%eax,%eax
  40151d:	89 04 24             	mov    %eax,(%rsp)
  401520:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401524:	69 c0 07 29 00 00    	imul   $0x2907,%eax,%eax
  40152a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40152e:	8b 04 24             	mov    (%rsp),%eax
  401531:	69 c0 6c d8 00 00    	imul   $0xd86c,%eax,%eax
  401537:	89 04 24             	mov    %eax,(%rsp)
  40153a:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40153e:	69 c0 80 be 00 00    	imul   $0xbe80,%eax,%eax
  401544:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401548:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40154c:	69 c0 80 22 00 00    	imul   $0x2280,%eax,%eax
  401552:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401556:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40155a:	69 c0 56 28 00 00    	imul   $0x2856,%eax,%eax
  401560:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401564:	8b 04 24             	mov    (%rsp),%eax
  401567:	69 c0 a0 bc 00 00    	imul   $0xbca0,%eax,%eax
  40156d:	89 04 24             	mov    %eax,(%rsp)
  401570:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401574:	69 c0 4a 7c 00 00    	imul   $0x7c4a,%eax,%eax
  40157a:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40157e:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401582:	69 c0 2f 79 00 00    	imul   $0x792f,%eax,%eax
  401588:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40158c:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401590:	69 c0 ca b6 00 00    	imul   $0xb6ca,%eax,%eax
  401596:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40159a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40159e:	69 c0 8c 0a 00 00    	imul   $0xa8c,%eax,%eax
  4015a4:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015a8:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4015ac:	69 c0 c2 1d 00 00    	imul   $0x1dc2,%eax,%eax
  4015b2:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4015b6:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4015ba:	69 c0 c5 0d 00 00    	imul   $0xdc5,%eax,%eax
  4015c0:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4015c4:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4015c8:	69 c0 09 ad 00 00    	imul   $0xad09,%eax,%eax
  4015ce:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015d2:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4015d6:	69 c0 98 a5 00 00    	imul   $0xa598,%eax,%eax
  4015dc:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4015e0:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4015e4:	69 c0 fb 85 00 00    	imul   $0x85fb,%eax,%eax
  4015ea:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4015ee:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4015f2:	69 c0 ed 5b 00 00    	imul   $0x5bed,%eax,%eax
  4015f8:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4015fc:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401600:	69 c0 46 03 00 00    	imul   $0x346,%eax,%eax
  401606:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40160a:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40160e:	69 c0 00 32 00 00    	imul   $0x3200,%eax,%eax
  401614:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401618:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40161c:	69 c0 8f 1d 00 00    	imul   $0x1d8f,%eax,%eax
  401622:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401626:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40162a:	69 c0 df fd 00 00    	imul   $0xfddf,%eax,%eax
  401630:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401634:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401638:	69 c0 44 6e 00 00    	imul   $0x6e44,%eax,%eax
  40163e:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401642:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401646:	69 c0 a1 71 00 00    	imul   $0x71a1,%eax,%eax
  40164c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401650:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401654:	69 c0 7e be 00 00    	imul   $0xbe7e,%eax,%eax
  40165a:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40165e:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401662:	69 c0 95 01 00 00    	imul   $0x195,%eax,%eax
  401668:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40166c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401670:	69 c0 26 0e 00 00    	imul   $0xe26,%eax,%eax
  401676:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40167a:	8b 04 24             	mov    (%rsp),%eax
  40167d:	69 c0 63 34 00 00    	imul   $0x3463,%eax,%eax
  401683:	89 04 24             	mov    %eax,(%rsp)
  401686:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40168a:	69 c0 77 1a 00 00    	imul   $0x1a77,%eax,%eax
  401690:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401694:	8b 04 24             	mov    (%rsp),%eax
  401697:	69 c0 fd 64 00 00    	imul   $0x64fd,%eax,%eax
  40169d:	89 04 24             	mov    %eax,(%rsp)
  4016a0:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016a4:	69 c0 6c 25 00 00    	imul   $0x256c,%eax,%eax
  4016aa:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016ae:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4016b2:	69 c0 4b 69 00 00    	imul   $0x694b,%eax,%eax
  4016b8:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4016bc:	8b 04 24             	mov    (%rsp),%eax
  4016bf:	69 c0 12 ac 00 00    	imul   $0xac12,%eax,%eax
  4016c5:	89 04 24             	mov    %eax,(%rsp)
  4016c8:	8b 04 24             	mov    (%rsp),%eax
  4016cb:	69 c0 69 5a 00 00    	imul   $0x5a69,%eax,%eax
  4016d1:	89 04 24             	mov    %eax,(%rsp)
  4016d4:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016d8:	69 c0 92 f9 00 00    	imul   $0xf992,%eax,%eax
  4016de:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016e2:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016e6:	69 c0 1e 71 00 00    	imul   $0x711e,%eax,%eax
  4016ec:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4016f0:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016f4:	69 c0 ea e0 00 00    	imul   $0xe0ea,%eax,%eax
  4016fa:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016fe:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401702:	69 c0 06 5d 00 00    	imul   $0x5d06,%eax,%eax
  401708:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40170c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401710:	69 c0 7d 29 00 00    	imul   $0x297d,%eax,%eax
  401716:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40171a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40171e:	69 c0 bd 39 00 00    	imul   $0x39bd,%eax,%eax
  401724:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401728:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40172c:	69 c0 77 b9 00 00    	imul   $0xb977,%eax,%eax
  401732:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401736:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40173a:	69 c0 44 5d 00 00    	imul   $0x5d44,%eax,%eax
  401740:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401744:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401748:	69 c0 73 47 00 00    	imul   $0x4773,%eax,%eax
  40174e:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401752:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401756:	69 c0 85 f3 00 00    	imul   $0xf385,%eax,%eax
  40175c:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401760:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401764:	69 c0 d0 d3 00 00    	imul   $0xd3d0,%eax,%eax
  40176a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40176e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401772:	69 c0 6a 29 00 00    	imul   $0x296a,%eax,%eax
  401778:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40177c:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401780:	69 c0 17 63 00 00    	imul   $0x6317,%eax,%eax
  401786:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40178a:	8b 04 24             	mov    (%rsp),%eax
  40178d:	69 c0 a3 a4 00 00    	imul   $0xa4a3,%eax,%eax
  401793:	89 04 24             	mov    %eax,(%rsp)
  401796:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40179a:	69 c0 ee 57 00 00    	imul   $0x57ee,%eax,%eax
  4017a0:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017a4:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4017a8:	69 c0 82 be 00 00    	imul   $0xbe82,%eax,%eax
  4017ae:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017b2:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017b6:	69 c0 76 8b 00 00    	imul   $0x8b76,%eax,%eax
  4017bc:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017c0:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4017c4:	69 c0 a2 68 00 00    	imul   $0x68a2,%eax,%eax
  4017ca:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017ce:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4017d2:	69 c0 9e 9e 00 00    	imul   $0x9e9e,%eax,%eax
  4017d8:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017dc:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017e0:	69 c0 8e bb 00 00    	imul   $0xbb8e,%eax,%eax
  4017e6:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017ea:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017ee:	69 c0 50 94 00 00    	imul   $0x9450,%eax,%eax
  4017f4:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017f8:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017fc:	69 c0 17 b0 00 00    	imul   $0xb017,%eax,%eax
  401802:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401806:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40180a:	69 c0 9e 30 00 00    	imul   $0x309e,%eax,%eax
  401810:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401814:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401818:	69 c0 65 15 00 00    	imul   $0x1565,%eax,%eax
  40181e:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401822:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401826:	69 c0 02 9f 00 00    	imul   $0x9f02,%eax,%eax
  40182c:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401830:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401834:	69 c0 fc d9 00 00    	imul   $0xd9fc,%eax,%eax
  40183a:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40183e:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401842:	69 c0 6d 61 00 00    	imul   $0x616d,%eax,%eax
  401848:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40184c:	8b 04 24             	mov    (%rsp),%eax
  40184f:	69 c0 0f 6c 00 00    	imul   $0x6c0f,%eax,%eax
  401855:	89 04 24             	mov    %eax,(%rsp)
  401858:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40185c:	69 c0 1c 96 00 00    	imul   $0x961c,%eax,%eax
  401862:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401866:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40186a:	69 c0 ae d3 00 00    	imul   $0xd3ae,%eax,%eax
  401870:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401874:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401878:	69 c0 bf 0f 00 00    	imul   $0xfbf,%eax,%eax
  40187e:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401882:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401886:	69 c0 8b 3f 00 00    	imul   $0x3f8b,%eax,%eax
  40188c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401890:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401894:	69 c0 d2 c1 00 00    	imul   $0xc1d2,%eax,%eax
  40189a:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40189e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018a2:	69 c0 95 07 00 00    	imul   $0x795,%eax,%eax
  4018a8:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4018ac:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018b0:	69 c0 d5 6d 00 00    	imul   $0x6dd5,%eax,%eax
  4018b6:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4018ba:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018be:	69 c0 8c 28 00 00    	imul   $0x288c,%eax,%eax
  4018c4:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018c8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018cc:	69 c0 70 b8 00 00    	imul   $0xb870,%eax,%eax
  4018d2:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018d6:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4018da:	69 c0 ed 4f 00 00    	imul   $0x4fed,%eax,%eax
  4018e0:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4018e4:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4018e8:	69 c0 fe e5 00 00    	imul   $0xe5fe,%eax,%eax
  4018ee:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4018f2:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4018f6:	69 c0 20 61 00 00    	imul   $0x6120,%eax,%eax
  4018fc:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401900:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401904:	69 c0 3c 6e 00 00    	imul   $0x6e3c,%eax,%eax
  40190a:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40190e:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401912:	69 c0 d3 f7 00 00    	imul   $0xf7d3,%eax,%eax
  401918:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40191c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401920:	69 c0 84 3e 00 00    	imul   $0x3e84,%eax,%eax
  401926:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40192a:	8b 04 24             	mov    (%rsp),%eax
  40192d:	69 c0 2e 94 00 00    	imul   $0x942e,%eax,%eax
  401933:	89 04 24             	mov    %eax,(%rsp)
  401936:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40193a:	69 c0 96 74 00 00    	imul   $0x7496,%eax,%eax
  401940:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401944:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401948:	69 c0 ab c2 00 00    	imul   $0xc2ab,%eax,%eax
  40194e:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401952:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401956:	69 c0 0d fa 00 00    	imul   $0xfa0d,%eax,%eax
  40195c:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401960:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401964:	69 c0 8b 1f 00 00    	imul   $0x1f8b,%eax,%eax
  40196a:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40196e:	ba 00 00 00 00       	mov    $0x0,%edx
  401973:	b8 00 00 00 00       	mov    $0x0,%eax
  401978:	eb 0a                	jmp    401984 <scramble+0x57b>
  40197a:	89 d1                	mov    %edx,%ecx
  40197c:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  40197f:	01 c8                	add    %ecx,%eax
  401981:	83 c2 01             	add    $0x1,%edx
  401984:	83 fa 09             	cmp    $0x9,%edx
  401987:	76 f1                	jbe    40197a <scramble+0x571>
  401989:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  40198e:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401995:	00 00 
  401997:	74 05                	je     40199e <scramble+0x595>
  401999:	e8 d2 f3 ff ff       	call   400d70 <__stack_chk_fail@plt>
  40199e:	48 83 c4 38          	add    $0x38,%rsp
  4019a2:	c3                   	ret    

00000000004019a3 <getbuf>:
  4019a3:	48 83 ec 38          	sub    $0x38,%rsp
  4019a7:	48 89 e7             	mov    %rsp,%rdi
  4019aa:	e8 a0 03 00 00       	call   401d4f <Gets>
  4019af:	b8 01 00 00 00       	mov    $0x1,%eax
  4019b4:	48 83 c4 38          	add    $0x38,%rsp
  4019b8:	c3                   	ret    

00000000004019b9 <touch1>:
  4019b9:	48 83 ec 08          	sub    $0x8,%rsp
  4019bd:	c7 05 59 3b 20 00 01 	movl   $0x1,0x203b59(%rip)        # 605520 <vlevel>
  4019c4:	00 00 00 
  4019c7:	bf 16 33 40 00       	mov    $0x403316,%edi
  4019cc:	e8 7f f3 ff ff       	call   400d50 <puts@plt>
  4019d1:	bf 01 00 00 00       	mov    $0x1,%edi
  4019d6:	e8 b4 04 00 00       	call   401e8f <validate>
  4019db:	bf 00 00 00 00       	mov    $0x0,%edi
  4019e0:	e8 eb f4 ff ff       	call   400ed0 <exit@plt>

00000000004019e5 <touch2>:
  4019e5:	48 83 ec 08          	sub    $0x8,%rsp
  4019e9:	89 fa                	mov    %edi,%edx
  4019eb:	c7 05 2b 3b 20 00 02 	movl   $0x2,0x203b2b(%rip)        # 605520 <vlevel>
  4019f2:	00 00 00 
  4019f5:	39 3d 2d 3b 20 00    	cmp    %edi,0x203b2d(%rip)        # 605528 <cookie>
  4019fb:	75 20                	jne    401a1d <touch2+0x38>
  4019fd:	be 38 33 40 00       	mov    $0x403338,%esi
  401a02:	bf 01 00 00 00       	mov    $0x1,%edi
  401a07:	b8 00 00 00 00       	mov    $0x0,%eax
  401a0c:	e8 df f2 ff ff       	call   400cf0 <__printf_chk@plt>
  401a11:	bf 02 00 00 00       	mov    $0x2,%edi
  401a16:	e8 74 04 00 00       	call   401e8f <validate>
  401a1b:	eb 1e                	jmp    401a3b <touch2+0x56>
  401a1d:	be 60 33 40 00       	mov    $0x403360,%esi
  401a22:	bf 01 00 00 00       	mov    $0x1,%edi
  401a27:	b8 00 00 00 00       	mov    $0x0,%eax
  401a2c:	e8 bf f2 ff ff       	call   400cf0 <__printf_chk@plt>
  401a31:	bf 02 00 00 00       	mov    $0x2,%edi
  401a36:	e8 16 05 00 00       	call   401f51 <fail>
  401a3b:	bf 00 00 00 00       	mov    $0x0,%edi
  401a40:	e8 8b f4 ff ff       	call   400ed0 <exit@plt>

0000000000401a45 <hexmatch>:
  401a45:	41 54                	push   %r12
  401a47:	55                   	push   %rbp
  401a48:	53                   	push   %rbx
  401a49:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401a4d:	89 fd                	mov    %edi,%ebp
  401a4f:	48 89 f3             	mov    %rsi,%rbx
  401a52:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a59:	00 00 
  401a5b:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401a60:	31 c0                	xor    %eax,%eax
  401a62:	e8 e9 f3 ff ff       	call   400e50 <random@plt>
  401a67:	48 89 c1             	mov    %rax,%rcx
  401a6a:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401a71:	0a d7 a3 
  401a74:	48 f7 ea             	imul   %rdx
  401a77:	48 01 ca             	add    %rcx,%rdx
  401a7a:	48 c1 fa 06          	sar    $0x6,%rdx
  401a7e:	48 89 c8             	mov    %rcx,%rax
  401a81:	48 c1 f8 3f          	sar    $0x3f,%rax
  401a85:	48 29 c2             	sub    %rax,%rdx
  401a88:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401a8c:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401a90:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401a97:	00 
  401a98:	48 29 c1             	sub    %rax,%rcx
  401a9b:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401a9f:	41 89 e8             	mov    %ebp,%r8d
  401aa2:	b9 33 33 40 00       	mov    $0x403333,%ecx
  401aa7:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401aae:	be 01 00 00 00       	mov    $0x1,%esi
  401ab3:	4c 89 e7             	mov    %r12,%rdi
  401ab6:	b8 00 00 00 00       	mov    $0x0,%eax
  401abb:	e8 70 f3 ff ff       	call   400e30 <__sprintf_chk@plt>
  401ac0:	ba 09 00 00 00       	mov    $0x9,%edx
  401ac5:	4c 89 e6             	mov    %r12,%rsi
  401ac8:	48 89 df             	mov    %rbx,%rdi
  401acb:	e8 60 f2 ff ff       	call   400d30 <strncmp@plt>
  401ad0:	85 c0                	test   %eax,%eax
  401ad2:	0f 94 c0             	sete   %al
  401ad5:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401ada:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401ae1:	00 00 
  401ae3:	74 05                	je     401aea <hexmatch+0xa5>
  401ae5:	e8 86 f2 ff ff       	call   400d70 <__stack_chk_fail@plt>
  401aea:	0f b6 c0             	movzbl %al,%eax
  401aed:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401af1:	5b                   	pop    %rbx
  401af2:	5d                   	pop    %rbp
  401af3:	41 5c                	pop    %r12
  401af5:	c3                   	ret    

0000000000401af6 <touch3>:
  401af6:	53                   	push   %rbx
  401af7:	48 89 fb             	mov    %rdi,%rbx
  401afa:	c7 05 1c 3a 20 00 03 	movl   $0x3,0x203a1c(%rip)        # 605520 <vlevel>
  401b01:	00 00 00 
  401b04:	48 89 fe             	mov    %rdi,%rsi
  401b07:	8b 3d 1b 3a 20 00    	mov    0x203a1b(%rip),%edi        # 605528 <cookie>
  401b0d:	e8 33 ff ff ff       	call   401a45 <hexmatch>
  401b12:	85 c0                	test   %eax,%eax
  401b14:	74 23                	je     401b39 <touch3+0x43>
  401b16:	48 89 da             	mov    %rbx,%rdx
  401b19:	be 88 33 40 00       	mov    $0x403388,%esi
  401b1e:	bf 01 00 00 00       	mov    $0x1,%edi
  401b23:	b8 00 00 00 00       	mov    $0x0,%eax
  401b28:	e8 c3 f1 ff ff       	call   400cf0 <__printf_chk@plt>
  401b2d:	bf 03 00 00 00       	mov    $0x3,%edi
  401b32:	e8 58 03 00 00       	call   401e8f <validate>
  401b37:	eb 21                	jmp    401b5a <touch3+0x64>
  401b39:	48 89 da             	mov    %rbx,%rdx
  401b3c:	be b0 33 40 00       	mov    $0x4033b0,%esi
  401b41:	bf 01 00 00 00       	mov    $0x1,%edi
  401b46:	b8 00 00 00 00       	mov    $0x0,%eax
  401b4b:	e8 a0 f1 ff ff       	call   400cf0 <__printf_chk@plt>
  401b50:	bf 03 00 00 00       	mov    $0x3,%edi
  401b55:	e8 f7 03 00 00       	call   401f51 <fail>
  401b5a:	bf 00 00 00 00       	mov    $0x0,%edi
  401b5f:	e8 6c f3 ff ff       	call   400ed0 <exit@plt>

0000000000401b64 <test>:
  401b64:	48 83 ec 08          	sub    $0x8,%rsp
  401b68:	b8 00 00 00 00       	mov    $0x0,%eax
  401b6d:	e8 31 fe ff ff       	call   4019a3 <getbuf>
  401b72:	89 c2                	mov    %eax,%edx
  401b74:	be d8 33 40 00       	mov    $0x4033d8,%esi
  401b79:	bf 01 00 00 00       	mov    $0x1,%edi
  401b7e:	b8 00 00 00 00       	mov    $0x0,%eax
  401b83:	e8 68 f1 ff ff       	call   400cf0 <__printf_chk@plt>
  401b88:	48 83 c4 08          	add    $0x8,%rsp
  401b8c:	c3                   	ret    

0000000000401b8d <start_farm>:
  401b8d:	b8 01 00 00 00       	mov    $0x1,%eax
  401b92:	c3                   	ret    

0000000000401b93 <getval_240>:
  401b93:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  401b98:	c3                   	ret    

0000000000401b99 <setval_328>:
  401b99:	c7 07 48 89 c7 94    	movl   $0x94c78948,(%rdi)
  401b9f:	c3                   	ret    

0000000000401ba0 <getval_354>:
  401ba0:	b8 58 90 90 c3       	mov    $0xc3909058,%eax
  401ba5:	c3                   	ret    

0000000000401ba6 <getval_120>:
  401ba6:	b8 58 91 90 90       	mov    $0x90909158,%eax
  401bab:	c3                   	ret    

0000000000401bac <setval_348>:
  401bac:	c7 07 99 ee fd 58    	movl   $0x58fdee99,(%rdi)
  401bb2:	c3                   	ret    

0000000000401bb3 <addval_281>:
  401bb3:	8d 87 48 89 c7 c1    	lea    -0x3e3876b8(%rdi),%eax
  401bb9:	c3                   	ret    

0000000000401bba <addval_461>:
  401bba:	8d 87 48 89 c7 c3    	lea    -0x3c3876b8(%rdi),%eax
  401bc0:	c3                   	ret    

0000000000401bc1 <addval_452>:
  401bc1:	8d 87 d8 89 f7 50    	lea    0x50f789d8(%rdi),%eax
  401bc7:	c3                   	ret    

0000000000401bc8 <mid_farm>:
  401bc8:	b8 01 00 00 00       	mov    $0x1,%eax
  401bcd:	c3                   	ret    

0000000000401bce <add_xy>:
  401bce:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401bd2:	c3                   	ret    

0000000000401bd3 <getval_189>:
  401bd3:	b8 d1 09 c2 90       	mov    $0x90c209d1,%eax
  401bd8:	c3                   	ret    

0000000000401bd9 <addval_406>:
  401bd9:	8d 87 b9 89 c2 94    	lea    -0x6b3d7647(%rdi),%eax
  401bdf:	c3                   	ret    

0000000000401be0 <getval_154>:
  401be0:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
  401be5:	c3                   	ret    

0000000000401be6 <getval_339>:
  401be6:	b8 09 c2 90 90       	mov    $0x9090c209,%eax
  401beb:	c3                   	ret    

0000000000401bec <addval_209>:
  401bec:	8d 87 81 c2 20 db    	lea    -0x24df3d7f(%rdi),%eax
  401bf2:	c3                   	ret    

0000000000401bf3 <addval_174>:
  401bf3:	8d 87 48 99 e0 90    	lea    -0x6f1f66b8(%rdi),%eax
  401bf9:	c3                   	ret    

0000000000401bfa <getval_264>:
  401bfa:	b8 89 c2 00 db       	mov    $0xdb00c289,%eax
  401bff:	c3                   	ret    

0000000000401c00 <setval_218>:
  401c00:	c7 07 89 d1 60 c0    	movl   $0xc060d189,(%rdi)
  401c06:	c3                   	ret    

0000000000401c07 <addval_127>:
  401c07:	8d 87 09 d1 90 90    	lea    -0x6f6f2ef7(%rdi),%eax
  401c0d:	c3                   	ret    

0000000000401c0e <addval_229>:
  401c0e:	8d 87 48 89 e0 94    	lea    -0x6b1f76b8(%rdi),%eax
  401c14:	c3                   	ret    

0000000000401c15 <setval_212>:
  401c15:	c7 07 89 c2 00 d2    	movl   $0xd200c289,(%rdi)
  401c1b:	c3                   	ret    

0000000000401c1c <getval_382>:
  401c1c:	b8 09 ce 84 db       	mov    $0xdb84ce09,%eax
  401c21:	c3                   	ret    

0000000000401c22 <setval_145>:
  401c22:	c7 07 89 ce 90 c3    	movl   $0xc390ce89,(%rdi)
  401c28:	c3                   	ret    

0000000000401c29 <addval_177>:
  401c29:	8d 87 89 d1 c4 c0    	lea    -0x3f3b2e77(%rdi),%eax
  401c2f:	c3                   	ret    

0000000000401c30 <addval_442>:
  401c30:	8d 87 09 ce 38 db    	lea    -0x24c731f7(%rdi),%eax
  401c36:	c3                   	ret    

0000000000401c37 <getval_128>:
  401c37:	b8 6d 89 d1 c3       	mov    $0xc3d1896d,%eax
  401c3c:	c3                   	ret    

0000000000401c3d <getval_239>:
  401c3d:	b8 89 c2 38 d2       	mov    $0xd238c289,%eax
  401c42:	c3                   	ret    

0000000000401c43 <setval_430>:
  401c43:	c7 07 48 89 e0 c1    	movl   $0xc1e08948,(%rdi)
  401c49:	c3                   	ret    

0000000000401c4a <addval_390>:
  401c4a:	8d 87 89 d1 60 c9    	lea    -0x369f2e77(%rdi),%eax
  401c50:	c3                   	ret    

0000000000401c51 <addval_300>:
  401c51:	8d 87 89 d1 48 c0    	lea    -0x3fb72e77(%rdi),%eax
  401c57:	c3                   	ret    

0000000000401c58 <getval_116>:
  401c58:	b8 09 ce 20 d2       	mov    $0xd220ce09,%eax
  401c5d:	c3                   	ret    

0000000000401c5e <setval_302>:
  401c5e:	c7 07 48 89 e0 90    	movl   $0x90e08948,(%rdi)
  401c64:	c3                   	ret    

0000000000401c65 <setval_142>:
  401c65:	c7 07 e6 4b 89 ce    	movl   $0xce894be6,(%rdi)
  401c6b:	c3                   	ret    

0000000000401c6c <getval_164>:
  401c6c:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  401c71:	c3                   	ret    

0000000000401c72 <addval_119>:
  401c72:	8d 87 89 d1 90 90    	lea    -0x6f6f2e77(%rdi),%eax
  401c78:	c3                   	ret    

0000000000401c79 <setval_161>:
  401c79:	c7 07 97 68 89 e0    	movl   $0xe0896897,(%rdi)
  401c7f:	c3                   	ret    

0000000000401c80 <getval_235>:
  401c80:	b8 89 c2 08 db       	mov    $0xdb08c289,%eax
  401c85:	c3                   	ret    

0000000000401c86 <addval_478>:
  401c86:	8d 87 89 ce 30 c9    	lea    -0x36cf3177(%rdi),%eax
  401c8c:	c3                   	ret    

0000000000401c8d <setval_184>:
  401c8d:	c7 07 8b ce 90 c3    	movl   $0xc390ce8b,(%rdi)
  401c93:	c3                   	ret    

0000000000401c94 <addval_173>:
  401c94:	8d 87 6e 89 ce c7    	lea    -0x38317692(%rdi),%eax
  401c9a:	c3                   	ret    

0000000000401c9b <addval_199>:
  401c9b:	8d 87 99 d1 84 c9    	lea    -0x367b2e67(%rdi),%eax
  401ca1:	c3                   	ret    

0000000000401ca2 <setval_325>:
  401ca2:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  401ca8:	c3                   	ret    

0000000000401ca9 <end_farm>:
  401ca9:	b8 01 00 00 00       	mov    $0x1,%eax
  401cae:	c3                   	ret    

0000000000401caf <save_char>:
  401caf:	8b 05 8f 44 20 00    	mov    0x20448f(%rip),%eax        # 606144 <gets_cnt>
  401cb5:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401cba:	7f 49                	jg     401d05 <save_char+0x56>
  401cbc:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401cbf:	89 f9                	mov    %edi,%ecx
  401cc1:	c0 e9 04             	shr    $0x4,%cl
  401cc4:	83 e1 0f             	and    $0xf,%ecx
  401cc7:	0f b6 b1 50 36 40 00 	movzbl 0x403650(%rcx),%esi
  401cce:	48 63 ca             	movslq %edx,%rcx
  401cd1:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401cd8:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401cdb:	83 e7 0f             	and    $0xf,%edi
  401cde:	0f b6 b7 50 36 40 00 	movzbl 0x403650(%rdi),%esi
  401ce5:	48 63 c9             	movslq %ecx,%rcx
  401ce8:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401cef:	83 c2 02             	add    $0x2,%edx
  401cf2:	48 63 d2             	movslq %edx,%rdx
  401cf5:	c6 82 40 55 60 00 20 	movb   $0x20,0x605540(%rdx)
  401cfc:	83 c0 01             	add    $0x1,%eax
  401cff:	89 05 3f 44 20 00    	mov    %eax,0x20443f(%rip)        # 606144 <gets_cnt>
  401d05:	f3 c3                	repz ret 

0000000000401d07 <save_term>:
  401d07:	8b 05 37 44 20 00    	mov    0x204437(%rip),%eax        # 606144 <gets_cnt>
  401d0d:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401d10:	48 98                	cltq   
  401d12:	c6 80 40 55 60 00 00 	movb   $0x0,0x605540(%rax)
  401d19:	c3                   	ret    

0000000000401d1a <check_fail>:
  401d1a:	48 83 ec 08          	sub    $0x8,%rsp
  401d1e:	0f be 15 23 44 20 00 	movsbl 0x204423(%rip),%edx        # 606148 <target_prefix>
  401d25:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401d2b:	8b 0d eb 37 20 00    	mov    0x2037eb(%rip),%ecx        # 60551c <check_level>
  401d31:	be fb 33 40 00       	mov    $0x4033fb,%esi
  401d36:	bf 01 00 00 00       	mov    $0x1,%edi
  401d3b:	b8 00 00 00 00       	mov    $0x0,%eax
  401d40:	e8 ab ef ff ff       	call   400cf0 <__printf_chk@plt>
  401d45:	bf 01 00 00 00       	mov    $0x1,%edi
  401d4a:	e8 81 f1 ff ff       	call   400ed0 <exit@plt>

0000000000401d4f <Gets>:
  401d4f:	41 54                	push   %r12
  401d51:	55                   	push   %rbp
  401d52:	53                   	push   %rbx
  401d53:	49 89 fc             	mov    %rdi,%r12
  401d56:	c7 05 e4 43 20 00 00 	movl   $0x0,0x2043e4(%rip)        # 606144 <gets_cnt>
  401d5d:	00 00 00 
  401d60:	48 89 fb             	mov    %rdi,%rbx
  401d63:	eb 11                	jmp    401d76 <Gets+0x27>
  401d65:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401d69:	88 03                	mov    %al,(%rbx)
  401d6b:	0f b6 f8             	movzbl %al,%edi
  401d6e:	e8 3c ff ff ff       	call   401caf <save_char>
  401d73:	48 89 eb             	mov    %rbp,%rbx
  401d76:	48 8b 3d 93 37 20 00 	mov    0x203793(%rip),%rdi        # 605510 <infile>
  401d7d:	e8 de f0 ff ff       	call   400e60 <_IO_getc@plt>
  401d82:	83 f8 ff             	cmp    $0xffffffff,%eax
  401d85:	74 05                	je     401d8c <Gets+0x3d>
  401d87:	83 f8 0a             	cmp    $0xa,%eax
  401d8a:	75 d9                	jne    401d65 <Gets+0x16>
  401d8c:	c6 03 00             	movb   $0x0,(%rbx)
  401d8f:	b8 00 00 00 00       	mov    $0x0,%eax
  401d94:	e8 6e ff ff ff       	call   401d07 <save_term>
  401d99:	4c 89 e0             	mov    %r12,%rax
  401d9c:	5b                   	pop    %rbx
  401d9d:	5d                   	pop    %rbp
  401d9e:	41 5c                	pop    %r12
  401da0:	c3                   	ret    

0000000000401da1 <notify_server>:
  401da1:	53                   	push   %rbx
  401da2:	48 81 ec 10 20 00 00 	sub    $0x2010,%rsp
  401da9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401db0:	00 00 
  401db2:	48 89 84 24 08 20 00 	mov    %rax,0x2008(%rsp)
  401db9:	00 
  401dba:	31 c0                	xor    %eax,%eax
  401dbc:	83 3d 69 37 20 00 00 	cmpl   $0x0,0x203769(%rip)        # 60552c <is_checker>
  401dc3:	0f 85 a5 00 00 00    	jne    401e6e <notify_server+0xcd>
  401dc9:	89 fb                	mov    %edi,%ebx
  401dcb:	8b 05 73 43 20 00    	mov    0x204373(%rip),%eax        # 606144 <gets_cnt>
  401dd1:	83 c0 64             	add    $0x64,%eax
  401dd4:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401dd9:	7e 1e                	jle    401df9 <notify_server+0x58>
  401ddb:	be e0 34 40 00       	mov    $0x4034e0,%esi
  401de0:	bf 01 00 00 00       	mov    $0x1,%edi
  401de5:	b8 00 00 00 00       	mov    $0x0,%eax
  401dea:	e8 01 ef ff ff       	call   400cf0 <__printf_chk@plt>
  401def:	bf 01 00 00 00       	mov    $0x1,%edi
  401df4:	e8 d7 f0 ff ff       	call   400ed0 <exit@plt>
  401df9:	0f be 05 48 43 20 00 	movsbl 0x204348(%rip),%eax        # 606148 <target_prefix>
  401e00:	83 3d 11 37 20 00 00 	cmpl   $0x0,0x203711(%rip)        # 605518 <notify>
  401e07:	74 08                	je     401e11 <notify_server+0x70>
  401e09:	8b 15 15 37 20 00    	mov    0x203715(%rip),%edx        # 605524 <authkey>
  401e0f:	eb 05                	jmp    401e16 <notify_server+0x75>
  401e11:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401e16:	85 db                	test   %ebx,%ebx
  401e18:	74 08                	je     401e22 <notify_server+0x81>
  401e1a:	41 b9 11 34 40 00    	mov    $0x403411,%r9d
  401e20:	eb 06                	jmp    401e28 <notify_server+0x87>
  401e22:	41 b9 16 34 40 00    	mov    $0x403416,%r9d
  401e28:	68 40 55 60 00       	push   $0x605540
  401e2d:	56                   	push   %rsi
  401e2e:	50                   	push   %rax
  401e2f:	52                   	push   %rdx
  401e30:	44 8b 05 31 33 20 00 	mov    0x203331(%rip),%r8d        # 605168 <target_id>
  401e37:	b9 1b 34 40 00       	mov    $0x40341b,%ecx
  401e3c:	ba 00 20 00 00       	mov    $0x2000,%edx
  401e41:	be 01 00 00 00       	mov    $0x1,%esi
  401e46:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401e4b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e50:	e8 db ef ff ff       	call   400e30 <__sprintf_chk@plt>
  401e55:	48 83 c4 20          	add    $0x20,%rsp
  401e59:	85 db                	test   %ebx,%ebx
  401e5b:	74 07                	je     401e64 <notify_server+0xc3>
  401e5d:	bf 11 34 40 00       	mov    $0x403411,%edi
  401e62:	eb 05                	jmp    401e69 <notify_server+0xc8>
  401e64:	bf 16 34 40 00       	mov    $0x403416,%edi
  401e69:	e8 e2 ee ff ff       	call   400d50 <puts@plt>
  401e6e:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  401e75:	00 
  401e76:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401e7d:	00 00 
  401e7f:	74 05                	je     401e86 <notify_server+0xe5>
  401e81:	e8 ea ee ff ff       	call   400d70 <__stack_chk_fail@plt>
  401e86:	48 81 c4 10 20 00 00 	add    $0x2010,%rsp
  401e8d:	5b                   	pop    %rbx
  401e8e:	c3                   	ret    

0000000000401e8f <validate>:
  401e8f:	53                   	push   %rbx
  401e90:	89 fb                	mov    %edi,%ebx
  401e92:	83 3d 93 36 20 00 00 	cmpl   $0x0,0x203693(%rip)        # 60552c <is_checker>
  401e99:	74 6b                	je     401f06 <validate+0x77>
  401e9b:	39 3d 7f 36 20 00    	cmp    %edi,0x20367f(%rip)        # 605520 <vlevel>
  401ea1:	74 14                	je     401eb7 <validate+0x28>
  401ea3:	bf 37 34 40 00       	mov    $0x403437,%edi
  401ea8:	e8 a3 ee ff ff       	call   400d50 <puts@plt>
  401ead:	b8 00 00 00 00       	mov    $0x0,%eax
  401eb2:	e8 63 fe ff ff       	call   401d1a <check_fail>
  401eb7:	8b 15 5f 36 20 00    	mov    0x20365f(%rip),%edx        # 60551c <check_level>
  401ebd:	39 d7                	cmp    %edx,%edi
  401ebf:	74 20                	je     401ee1 <validate+0x52>
  401ec1:	89 f9                	mov    %edi,%ecx
  401ec3:	be 10 35 40 00       	mov    $0x403510,%esi
  401ec8:	bf 01 00 00 00       	mov    $0x1,%edi
  401ecd:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed2:	e8 19 ee ff ff       	call   400cf0 <__printf_chk@plt>
  401ed7:	b8 00 00 00 00       	mov    $0x0,%eax
  401edc:	e8 39 fe ff ff       	call   401d1a <check_fail>
  401ee1:	0f be 15 60 42 20 00 	movsbl 0x204260(%rip),%edx        # 606148 <target_prefix>
  401ee8:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401eee:	89 f9                	mov    %edi,%ecx
  401ef0:	be 55 34 40 00       	mov    $0x403455,%esi
  401ef5:	bf 01 00 00 00       	mov    $0x1,%edi
  401efa:	b8 00 00 00 00       	mov    $0x0,%eax
  401eff:	e8 ec ed ff ff       	call   400cf0 <__printf_chk@plt>
  401f04:	eb 49                	jmp    401f4f <validate+0xc0>
  401f06:	3b 3d 14 36 20 00    	cmp    0x203614(%rip),%edi        # 605520 <vlevel>
  401f0c:	74 18                	je     401f26 <validate+0x97>
  401f0e:	bf 37 34 40 00       	mov    $0x403437,%edi
  401f13:	e8 38 ee ff ff       	call   400d50 <puts@plt>
  401f18:	89 de                	mov    %ebx,%esi
  401f1a:	bf 00 00 00 00       	mov    $0x0,%edi
  401f1f:	e8 7d fe ff ff       	call   401da1 <notify_server>
  401f24:	eb 29                	jmp    401f4f <validate+0xc0>
  401f26:	0f be 0d 1b 42 20 00 	movsbl 0x20421b(%rip),%ecx        # 606148 <target_prefix>
  401f2d:	89 fa                	mov    %edi,%edx
  401f2f:	be 38 35 40 00       	mov    $0x403538,%esi
  401f34:	bf 01 00 00 00       	mov    $0x1,%edi
  401f39:	b8 00 00 00 00       	mov    $0x0,%eax
  401f3e:	e8 ad ed ff ff       	call   400cf0 <__printf_chk@plt>
  401f43:	89 de                	mov    %ebx,%esi
  401f45:	bf 01 00 00 00       	mov    $0x1,%edi
  401f4a:	e8 52 fe ff ff       	call   401da1 <notify_server>
  401f4f:	5b                   	pop    %rbx
  401f50:	c3                   	ret    

0000000000401f51 <fail>:
  401f51:	48 83 ec 08          	sub    $0x8,%rsp
  401f55:	83 3d d0 35 20 00 00 	cmpl   $0x0,0x2035d0(%rip)        # 60552c <is_checker>
  401f5c:	74 0a                	je     401f68 <fail+0x17>
  401f5e:	b8 00 00 00 00       	mov    $0x0,%eax
  401f63:	e8 b2 fd ff ff       	call   401d1a <check_fail>
  401f68:	89 fe                	mov    %edi,%esi
  401f6a:	bf 00 00 00 00       	mov    $0x0,%edi
  401f6f:	e8 2d fe ff ff       	call   401da1 <notify_server>
  401f74:	48 83 c4 08          	add    $0x8,%rsp
  401f78:	c3                   	ret    

0000000000401f79 <bushandler>:
  401f79:	48 83 ec 08          	sub    $0x8,%rsp
  401f7d:	83 3d a8 35 20 00 00 	cmpl   $0x0,0x2035a8(%rip)        # 60552c <is_checker>
  401f84:	74 14                	je     401f9a <bushandler+0x21>
  401f86:	bf 6a 34 40 00       	mov    $0x40346a,%edi
  401f8b:	e8 c0 ed ff ff       	call   400d50 <puts@plt>
  401f90:	b8 00 00 00 00       	mov    $0x0,%eax
  401f95:	e8 80 fd ff ff       	call   401d1a <check_fail>
  401f9a:	bf 70 35 40 00       	mov    $0x403570,%edi
  401f9f:	e8 ac ed ff ff       	call   400d50 <puts@plt>
  401fa4:	bf 74 34 40 00       	mov    $0x403474,%edi
  401fa9:	e8 a2 ed ff ff       	call   400d50 <puts@plt>
  401fae:	be 00 00 00 00       	mov    $0x0,%esi
  401fb3:	bf 00 00 00 00       	mov    $0x0,%edi
  401fb8:	e8 e4 fd ff ff       	call   401da1 <notify_server>
  401fbd:	bf 01 00 00 00       	mov    $0x1,%edi
  401fc2:	e8 09 ef ff ff       	call   400ed0 <exit@plt>

0000000000401fc7 <seghandler>:
  401fc7:	48 83 ec 08          	sub    $0x8,%rsp
  401fcb:	83 3d 5a 35 20 00 00 	cmpl   $0x0,0x20355a(%rip)        # 60552c <is_checker>
  401fd2:	74 14                	je     401fe8 <seghandler+0x21>
  401fd4:	bf 8a 34 40 00       	mov    $0x40348a,%edi
  401fd9:	e8 72 ed ff ff       	call   400d50 <puts@plt>
  401fde:	b8 00 00 00 00       	mov    $0x0,%eax
  401fe3:	e8 32 fd ff ff       	call   401d1a <check_fail>
  401fe8:	bf 90 35 40 00       	mov    $0x403590,%edi
  401fed:	e8 5e ed ff ff       	call   400d50 <puts@plt>
  401ff2:	bf 74 34 40 00       	mov    $0x403474,%edi
  401ff7:	e8 54 ed ff ff       	call   400d50 <puts@plt>
  401ffc:	be 00 00 00 00       	mov    $0x0,%esi
  402001:	bf 00 00 00 00       	mov    $0x0,%edi
  402006:	e8 96 fd ff ff       	call   401da1 <notify_server>
  40200b:	bf 01 00 00 00       	mov    $0x1,%edi
  402010:	e8 bb ee ff ff       	call   400ed0 <exit@plt>

0000000000402015 <illegalhandler>:
  402015:	48 83 ec 08          	sub    $0x8,%rsp
  402019:	83 3d 0c 35 20 00 00 	cmpl   $0x0,0x20350c(%rip)        # 60552c <is_checker>
  402020:	74 14                	je     402036 <illegalhandler+0x21>
  402022:	bf 9d 34 40 00       	mov    $0x40349d,%edi
  402027:	e8 24 ed ff ff       	call   400d50 <puts@plt>
  40202c:	b8 00 00 00 00       	mov    $0x0,%eax
  402031:	e8 e4 fc ff ff       	call   401d1a <check_fail>
  402036:	bf b8 35 40 00       	mov    $0x4035b8,%edi
  40203b:	e8 10 ed ff ff       	call   400d50 <puts@plt>
  402040:	bf 74 34 40 00       	mov    $0x403474,%edi
  402045:	e8 06 ed ff ff       	call   400d50 <puts@plt>
  40204a:	be 00 00 00 00       	mov    $0x0,%esi
  40204f:	bf 00 00 00 00       	mov    $0x0,%edi
  402054:	e8 48 fd ff ff       	call   401da1 <notify_server>
  402059:	bf 01 00 00 00       	mov    $0x1,%edi
  40205e:	e8 6d ee ff ff       	call   400ed0 <exit@plt>

0000000000402063 <sigalrmhandler>:
  402063:	48 83 ec 08          	sub    $0x8,%rsp
  402067:	83 3d be 34 20 00 00 	cmpl   $0x0,0x2034be(%rip)        # 60552c <is_checker>
  40206e:	74 14                	je     402084 <sigalrmhandler+0x21>
  402070:	bf b1 34 40 00       	mov    $0x4034b1,%edi
  402075:	e8 d6 ec ff ff       	call   400d50 <puts@plt>
  40207a:	b8 00 00 00 00       	mov    $0x0,%eax
  40207f:	e8 96 fc ff ff       	call   401d1a <check_fail>
  402084:	ba 05 00 00 00       	mov    $0x5,%edx
  402089:	be e8 35 40 00       	mov    $0x4035e8,%esi
  40208e:	bf 01 00 00 00       	mov    $0x1,%edi
  402093:	b8 00 00 00 00       	mov    $0x0,%eax
  402098:	e8 53 ec ff ff       	call   400cf0 <__printf_chk@plt>
  40209d:	be 00 00 00 00       	mov    $0x0,%esi
  4020a2:	bf 00 00 00 00       	mov    $0x0,%edi
  4020a7:	e8 f5 fc ff ff       	call   401da1 <notify_server>
  4020ac:	bf 01 00 00 00       	mov    $0x1,%edi
  4020b1:	e8 1a ee ff ff       	call   400ed0 <exit@plt>

00000000004020b6 <launch>:
  4020b6:	55                   	push   %rbp
  4020b7:	48 89 e5             	mov    %rsp,%rbp
  4020ba:	48 83 ec 10          	sub    $0x10,%rsp
  4020be:	48 89 fa             	mov    %rdi,%rdx
  4020c1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4020c8:	00 00 
  4020ca:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4020ce:	31 c0                	xor    %eax,%eax
  4020d0:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  4020d4:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4020d8:	48 29 c4             	sub    %rax,%rsp
  4020db:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4020e0:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4020e4:	be f4 00 00 00       	mov    $0xf4,%esi
  4020e9:	e8 a2 ec ff ff       	call   400d90 <memset@plt>
  4020ee:	48 8b 05 cb 33 20 00 	mov    0x2033cb(%rip),%rax        # 6054c0 <stdin@GLIBC_2.2.5>
  4020f5:	48 39 05 14 34 20 00 	cmp    %rax,0x203414(%rip)        # 605510 <infile>
  4020fc:	75 14                	jne    402112 <launch+0x5c>
  4020fe:	be b9 34 40 00       	mov    $0x4034b9,%esi
  402103:	bf 01 00 00 00       	mov    $0x1,%edi
  402108:	b8 00 00 00 00       	mov    $0x0,%eax
  40210d:	e8 de eb ff ff       	call   400cf0 <__printf_chk@plt>
  402112:	c7 05 04 34 20 00 00 	movl   $0x0,0x203404(%rip)        # 605520 <vlevel>
  402119:	00 00 00 
  40211c:	b8 00 00 00 00       	mov    $0x0,%eax
  402121:	e8 3e fa ff ff       	call   401b64 <test>
  402126:	83 3d ff 33 20 00 00 	cmpl   $0x0,0x2033ff(%rip)        # 60552c <is_checker>
  40212d:	74 14                	je     402143 <launch+0x8d>
  40212f:	bf c6 34 40 00       	mov    $0x4034c6,%edi
  402134:	e8 17 ec ff ff       	call   400d50 <puts@plt>
  402139:	b8 00 00 00 00       	mov    $0x0,%eax
  40213e:	e8 d7 fb ff ff       	call   401d1a <check_fail>
  402143:	bf d1 34 40 00       	mov    $0x4034d1,%edi
  402148:	e8 03 ec ff ff       	call   400d50 <puts@plt>
  40214d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402151:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402158:	00 00 
  40215a:	74 05                	je     402161 <launch+0xab>
  40215c:	e8 0f ec ff ff       	call   400d70 <__stack_chk_fail@plt>
  402161:	c9                   	leave  
  402162:	c3                   	ret    

0000000000402163 <stable_launch>:
  402163:	53                   	push   %rbx
  402164:	48 89 3d 9d 33 20 00 	mov    %rdi,0x20339d(%rip)        # 605508 <global_offset>
  40216b:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402171:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402177:	b9 32 01 00 00       	mov    $0x132,%ecx
  40217c:	ba 07 00 00 00       	mov    $0x7,%edx
  402181:	be 00 00 10 00       	mov    $0x100000,%esi
  402186:	bf 00 60 58 55       	mov    $0x55586000,%edi
  40218b:	e8 f0 eb ff ff       	call   400d80 <mmap@plt>
  402190:	48 89 c3             	mov    %rax,%rbx
  402193:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402199:	74 37                	je     4021d2 <stable_launch+0x6f>
  40219b:	be 00 00 10 00       	mov    $0x100000,%esi
  4021a0:	48 89 c7             	mov    %rax,%rdi
  4021a3:	e8 d8 ec ff ff       	call   400e80 <munmap@plt>
  4021a8:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4021ad:	ba 20 36 40 00       	mov    $0x403620,%edx
  4021b2:	be 01 00 00 00       	mov    $0x1,%esi
  4021b7:	48 8b 3d 22 33 20 00 	mov    0x203322(%rip),%rdi        # 6054e0 <stderr@GLIBC_2.2.5>
  4021be:	b8 00 00 00 00       	mov    $0x0,%eax
  4021c3:	e8 28 ed ff ff       	call   400ef0 <__fprintf_chk@plt>
  4021c8:	bf 01 00 00 00       	mov    $0x1,%edi
  4021cd:	e8 fe ec ff ff       	call   400ed0 <exit@plt>
  4021d2:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4021d9:	48 89 15 70 3f 20 00 	mov    %rdx,0x203f70(%rip)        # 606150 <stack_top>
  4021e0:	48 89 e0             	mov    %rsp,%rax
  4021e3:	48 89 d4             	mov    %rdx,%rsp
  4021e6:	48 89 c2             	mov    %rax,%rdx
  4021e9:	48 89 15 10 33 20 00 	mov    %rdx,0x203310(%rip)        # 605500 <global_save_stack>
  4021f0:	48 8b 3d 11 33 20 00 	mov    0x203311(%rip),%rdi        # 605508 <global_offset>
  4021f7:	e8 ba fe ff ff       	call   4020b6 <launch>
  4021fc:	48 8b 05 fd 32 20 00 	mov    0x2032fd(%rip),%rax        # 605500 <global_save_stack>
  402203:	48 89 c4             	mov    %rax,%rsp
  402206:	be 00 00 10 00       	mov    $0x100000,%esi
  40220b:	48 89 df             	mov    %rbx,%rdi
  40220e:	e8 6d ec ff ff       	call   400e80 <munmap@plt>
  402213:	5b                   	pop    %rbx
  402214:	c3                   	ret    

0000000000402215 <rio_readinitb>:
  402215:	89 37                	mov    %esi,(%rdi)
  402217:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40221e:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402222:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402226:	c3                   	ret    

0000000000402227 <sigalrm_handler>:
  402227:	48 83 ec 08          	sub    $0x8,%rsp
  40222b:	b9 00 00 00 00       	mov    $0x0,%ecx
  402230:	ba 60 36 40 00       	mov    $0x403660,%edx
  402235:	be 01 00 00 00       	mov    $0x1,%esi
  40223a:	48 8b 3d 9f 32 20 00 	mov    0x20329f(%rip),%rdi        # 6054e0 <stderr@GLIBC_2.2.5>
  402241:	b8 00 00 00 00       	mov    $0x0,%eax
  402246:	e8 a5 ec ff ff       	call   400ef0 <__fprintf_chk@plt>
  40224b:	bf 01 00 00 00       	mov    $0x1,%edi
  402250:	e8 7b ec ff ff       	call   400ed0 <exit@plt>

0000000000402255 <rio_writen>:
  402255:	41 55                	push   %r13
  402257:	41 54                	push   %r12
  402259:	55                   	push   %rbp
  40225a:	53                   	push   %rbx
  40225b:	48 83 ec 08          	sub    $0x8,%rsp
  40225f:	41 89 fc             	mov    %edi,%r12d
  402262:	48 89 f5             	mov    %rsi,%rbp
  402265:	49 89 d5             	mov    %rdx,%r13
  402268:	48 89 d3             	mov    %rdx,%rbx
  40226b:	eb 28                	jmp    402295 <rio_writen+0x40>
  40226d:	48 89 da             	mov    %rbx,%rdx
  402270:	48 89 ee             	mov    %rbp,%rsi
  402273:	44 89 e7             	mov    %r12d,%edi
  402276:	e8 e5 ea ff ff       	call   400d60 <write@plt>
  40227b:	48 85 c0             	test   %rax,%rax
  40227e:	7f 0f                	jg     40228f <rio_writen+0x3a>
  402280:	e8 8b ea ff ff       	call   400d10 <__errno_location@plt>
  402285:	83 38 04             	cmpl   $0x4,(%rax)
  402288:	75 15                	jne    40229f <rio_writen+0x4a>
  40228a:	b8 00 00 00 00       	mov    $0x0,%eax
  40228f:	48 29 c3             	sub    %rax,%rbx
  402292:	48 01 c5             	add    %rax,%rbp
  402295:	48 85 db             	test   %rbx,%rbx
  402298:	75 d3                	jne    40226d <rio_writen+0x18>
  40229a:	4c 89 e8             	mov    %r13,%rax
  40229d:	eb 07                	jmp    4022a6 <rio_writen+0x51>
  40229f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022a6:	48 83 c4 08          	add    $0x8,%rsp
  4022aa:	5b                   	pop    %rbx
  4022ab:	5d                   	pop    %rbp
  4022ac:	41 5c                	pop    %r12
  4022ae:	41 5d                	pop    %r13
  4022b0:	c3                   	ret    

00000000004022b1 <rio_read>:
  4022b1:	41 55                	push   %r13
  4022b3:	41 54                	push   %r12
  4022b5:	55                   	push   %rbp
  4022b6:	53                   	push   %rbx
  4022b7:	48 83 ec 08          	sub    $0x8,%rsp
  4022bb:	48 89 fb             	mov    %rdi,%rbx
  4022be:	49 89 f5             	mov    %rsi,%r13
  4022c1:	49 89 d4             	mov    %rdx,%r12
  4022c4:	eb 2e                	jmp    4022f4 <rio_read+0x43>
  4022c6:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4022ca:	8b 3b                	mov    (%rbx),%edi
  4022cc:	ba 00 20 00 00       	mov    $0x2000,%edx
  4022d1:	48 89 ee             	mov    %rbp,%rsi
  4022d4:	e8 e7 ea ff ff       	call   400dc0 <read@plt>
  4022d9:	89 43 04             	mov    %eax,0x4(%rbx)
  4022dc:	85 c0                	test   %eax,%eax
  4022de:	79 0c                	jns    4022ec <rio_read+0x3b>
  4022e0:	e8 2b ea ff ff       	call   400d10 <__errno_location@plt>
  4022e5:	83 38 04             	cmpl   $0x4,(%rax)
  4022e8:	74 0a                	je     4022f4 <rio_read+0x43>
  4022ea:	eb 37                	jmp    402323 <rio_read+0x72>
  4022ec:	85 c0                	test   %eax,%eax
  4022ee:	74 3c                	je     40232c <rio_read+0x7b>
  4022f0:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4022f4:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4022f7:	85 ed                	test   %ebp,%ebp
  4022f9:	7e cb                	jle    4022c6 <rio_read+0x15>
  4022fb:	89 e8                	mov    %ebp,%eax
  4022fd:	49 39 c4             	cmp    %rax,%r12
  402300:	77 03                	ja     402305 <rio_read+0x54>
  402302:	44 89 e5             	mov    %r12d,%ebp
  402305:	4c 63 e5             	movslq %ebp,%r12
  402308:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40230c:	4c 89 e2             	mov    %r12,%rdx
  40230f:	4c 89 ef             	mov    %r13,%rdi
  402312:	e8 09 eb ff ff       	call   400e20 <memcpy@plt>
  402317:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40231b:	29 6b 04             	sub    %ebp,0x4(%rbx)
  40231e:	4c 89 e0             	mov    %r12,%rax
  402321:	eb 0e                	jmp    402331 <rio_read+0x80>
  402323:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40232a:	eb 05                	jmp    402331 <rio_read+0x80>
  40232c:	b8 00 00 00 00       	mov    $0x0,%eax
  402331:	48 83 c4 08          	add    $0x8,%rsp
  402335:	5b                   	pop    %rbx
  402336:	5d                   	pop    %rbp
  402337:	41 5c                	pop    %r12
  402339:	41 5d                	pop    %r13
  40233b:	c3                   	ret    

000000000040233c <rio_readlineb>:
  40233c:	41 55                	push   %r13
  40233e:	41 54                	push   %r12
  402340:	55                   	push   %rbp
  402341:	53                   	push   %rbx
  402342:	48 83 ec 18          	sub    $0x18,%rsp
  402346:	49 89 fd             	mov    %rdi,%r13
  402349:	48 89 f5             	mov    %rsi,%rbp
  40234c:	49 89 d4             	mov    %rdx,%r12
  40234f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402356:	00 00 
  402358:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40235d:	31 c0                	xor    %eax,%eax
  40235f:	bb 01 00 00 00       	mov    $0x1,%ebx
  402364:	eb 3f                	jmp    4023a5 <rio_readlineb+0x69>
  402366:	ba 01 00 00 00       	mov    $0x1,%edx
  40236b:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402370:	4c 89 ef             	mov    %r13,%rdi
  402373:	e8 39 ff ff ff       	call   4022b1 <rio_read>
  402378:	83 f8 01             	cmp    $0x1,%eax
  40237b:	75 15                	jne    402392 <rio_readlineb+0x56>
  40237d:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402381:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  402386:	88 55 00             	mov    %dl,0x0(%rbp)
  402389:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  40238e:	75 0e                	jne    40239e <rio_readlineb+0x62>
  402390:	eb 1a                	jmp    4023ac <rio_readlineb+0x70>
  402392:	85 c0                	test   %eax,%eax
  402394:	75 22                	jne    4023b8 <rio_readlineb+0x7c>
  402396:	48 83 fb 01          	cmp    $0x1,%rbx
  40239a:	75 13                	jne    4023af <rio_readlineb+0x73>
  40239c:	eb 23                	jmp    4023c1 <rio_readlineb+0x85>
  40239e:	48 83 c3 01          	add    $0x1,%rbx
  4023a2:	48 89 c5             	mov    %rax,%rbp
  4023a5:	4c 39 e3             	cmp    %r12,%rbx
  4023a8:	72 bc                	jb     402366 <rio_readlineb+0x2a>
  4023aa:	eb 03                	jmp    4023af <rio_readlineb+0x73>
  4023ac:	48 89 c5             	mov    %rax,%rbp
  4023af:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4023b3:	48 89 d8             	mov    %rbx,%rax
  4023b6:	eb 0e                	jmp    4023c6 <rio_readlineb+0x8a>
  4023b8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4023bf:	eb 05                	jmp    4023c6 <rio_readlineb+0x8a>
  4023c1:	b8 00 00 00 00       	mov    $0x0,%eax
  4023c6:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  4023cb:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4023d2:	00 00 
  4023d4:	74 05                	je     4023db <rio_readlineb+0x9f>
  4023d6:	e8 95 e9 ff ff       	call   400d70 <__stack_chk_fail@plt>
  4023db:	48 83 c4 18          	add    $0x18,%rsp
  4023df:	5b                   	pop    %rbx
  4023e0:	5d                   	pop    %rbp
  4023e1:	41 5c                	pop    %r12
  4023e3:	41 5d                	pop    %r13
  4023e5:	c3                   	ret    

00000000004023e6 <urlencode>:
  4023e6:	41 54                	push   %r12
  4023e8:	55                   	push   %rbp
  4023e9:	53                   	push   %rbx
  4023ea:	48 83 ec 10          	sub    $0x10,%rsp
  4023ee:	48 89 fb             	mov    %rdi,%rbx
  4023f1:	48 89 f5             	mov    %rsi,%rbp
  4023f4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023fb:	00 00 
  4023fd:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402402:	31 c0                	xor    %eax,%eax
  402404:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40240b:	f2 ae                	repnz scas %es:(%rdi),%al
  40240d:	48 f7 d1             	not    %rcx
  402410:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402413:	e9 aa 00 00 00       	jmp    4024c2 <urlencode+0xdc>
  402418:	44 0f b6 03          	movzbl (%rbx),%r8d
  40241c:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402420:	0f 94 c2             	sete   %dl
  402423:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402427:	0f 94 c0             	sete   %al
  40242a:	08 c2                	or     %al,%dl
  40242c:	75 24                	jne    402452 <urlencode+0x6c>
  40242e:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402432:	74 1e                	je     402452 <urlencode+0x6c>
  402434:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402438:	74 18                	je     402452 <urlencode+0x6c>
  40243a:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  40243e:	3c 09                	cmp    $0x9,%al
  402440:	76 10                	jbe    402452 <urlencode+0x6c>
  402442:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402446:	3c 19                	cmp    $0x19,%al
  402448:	76 08                	jbe    402452 <urlencode+0x6c>
  40244a:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  40244e:	3c 19                	cmp    $0x19,%al
  402450:	77 0a                	ja     40245c <urlencode+0x76>
  402452:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402456:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40245a:	eb 5f                	jmp    4024bb <urlencode+0xd5>
  40245c:	41 80 f8 20          	cmp    $0x20,%r8b
  402460:	75 0a                	jne    40246c <urlencode+0x86>
  402462:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402466:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40246a:	eb 4f                	jmp    4024bb <urlencode+0xd5>
  40246c:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402470:	3c 5f                	cmp    $0x5f,%al
  402472:	0f 96 c2             	setbe  %dl
  402475:	41 80 f8 09          	cmp    $0x9,%r8b
  402479:	0f 94 c0             	sete   %al
  40247c:	08 c2                	or     %al,%dl
  40247e:	74 50                	je     4024d0 <urlencode+0xea>
  402480:	45 0f b6 c0          	movzbl %r8b,%r8d
  402484:	b9 f8 36 40 00       	mov    $0x4036f8,%ecx
  402489:	ba 08 00 00 00       	mov    $0x8,%edx
  40248e:	be 01 00 00 00       	mov    $0x1,%esi
  402493:	48 89 e7             	mov    %rsp,%rdi
  402496:	b8 00 00 00 00       	mov    $0x0,%eax
  40249b:	e8 90 e9 ff ff       	call   400e30 <__sprintf_chk@plt>
  4024a0:	0f b6 04 24          	movzbl (%rsp),%eax
  4024a4:	88 45 00             	mov    %al,0x0(%rbp)
  4024a7:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4024ac:	88 45 01             	mov    %al,0x1(%rbp)
  4024af:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  4024b4:	88 45 02             	mov    %al,0x2(%rbp)
  4024b7:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4024bb:	48 83 c3 01          	add    $0x1,%rbx
  4024bf:	44 89 e0             	mov    %r12d,%eax
  4024c2:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4024c6:	85 c0                	test   %eax,%eax
  4024c8:	0f 85 4a ff ff ff    	jne    402418 <urlencode+0x32>
  4024ce:	eb 05                	jmp    4024d5 <urlencode+0xef>
  4024d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024d5:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  4024da:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4024e1:	00 00 
  4024e3:	74 05                	je     4024ea <urlencode+0x104>
  4024e5:	e8 86 e8 ff ff       	call   400d70 <__stack_chk_fail@plt>
  4024ea:	48 83 c4 10          	add    $0x10,%rsp
  4024ee:	5b                   	pop    %rbx
  4024ef:	5d                   	pop    %rbp
  4024f0:	41 5c                	pop    %r12
  4024f2:	c3                   	ret    

00000000004024f3 <submitr>:
  4024f3:	41 57                	push   %r15
  4024f5:	41 56                	push   %r14
  4024f7:	41 55                	push   %r13
  4024f9:	41 54                	push   %r12
  4024fb:	55                   	push   %rbp
  4024fc:	53                   	push   %rbx
  4024fd:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  402504:	49 89 fc             	mov    %rdi,%r12
  402507:	89 74 24 04          	mov    %esi,0x4(%rsp)
  40250b:	49 89 d7             	mov    %rdx,%r15
  40250e:	49 89 ce             	mov    %rcx,%r14
  402511:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  402516:	4d 89 cd             	mov    %r9,%r13
  402519:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  402520:	00 
  402521:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402528:	00 00 
  40252a:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  402531:	00 
  402532:	31 c0                	xor    %eax,%eax
  402534:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  40253b:	00 
  40253c:	ba 00 00 00 00       	mov    $0x0,%edx
  402541:	be 01 00 00 00       	mov    $0x1,%esi
  402546:	bf 02 00 00 00       	mov    $0x2,%edi
  40254b:	e8 b0 e9 ff ff       	call   400f00 <socket@plt>
  402550:	85 c0                	test   %eax,%eax
  402552:	79 4e                	jns    4025a2 <submitr+0xaf>
  402554:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40255b:	3a 20 43 
  40255e:	48 89 03             	mov    %rax,(%rbx)
  402561:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402568:	20 75 6e 
  40256b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40256f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402576:	74 6f 20 
  402579:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40257d:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402584:	65 20 73 
  402587:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40258b:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402592:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  402598:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40259d:	e9 97 06 00 00       	jmp    402c39 <submitr+0x746>
  4025a2:	89 c5                	mov    %eax,%ebp
  4025a4:	4c 89 e7             	mov    %r12,%rdi
  4025a7:	e8 44 e8 ff ff       	call   400df0 <gethostbyname@plt>
  4025ac:	48 85 c0             	test   %rax,%rax
  4025af:	75 67                	jne    402618 <submitr+0x125>
  4025b1:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4025b8:	3a 20 44 
  4025bb:	48 89 03             	mov    %rax,(%rbx)
  4025be:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4025c5:	20 75 6e 
  4025c8:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025cc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4025d3:	74 6f 20 
  4025d6:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025da:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4025e1:	76 65 20 
  4025e4:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4025e8:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4025ef:	72 20 61 
  4025f2:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4025f6:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  4025fd:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  402603:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  402607:	89 ef                	mov    %ebp,%edi
  402609:	e8 a2 e7 ff ff       	call   400db0 <close@plt>
  40260e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402613:	e9 21 06 00 00       	jmp    402c39 <submitr+0x746>
  402618:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  40261f:	00 00 
  402621:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  402628:	00 00 
  40262a:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  402631:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402635:	48 8b 40 18          	mov    0x18(%rax),%rax
  402639:	48 8b 30             	mov    (%rax),%rsi
  40263c:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  402641:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402646:	e8 b5 e7 ff ff       	call   400e00 <__memmove_chk@plt>
  40264b:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  402650:	66 c1 c8 08          	ror    $0x8,%ax
  402654:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  402659:	ba 10 00 00 00       	mov    $0x10,%edx
  40265e:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  402663:	89 ef                	mov    %ebp,%edi
  402665:	e8 76 e8 ff ff       	call   400ee0 <connect@plt>
  40266a:	85 c0                	test   %eax,%eax
  40266c:	79 59                	jns    4026c7 <submitr+0x1d4>
  40266e:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402675:	3a 20 55 
  402678:	48 89 03             	mov    %rax,(%rbx)
  40267b:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402682:	20 74 6f 
  402685:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402689:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402690:	65 63 74 
  402693:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402697:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40269e:	68 65 20 
  4026a1:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026a5:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  4026ac:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  4026b2:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  4026b6:	89 ef                	mov    %ebp,%edi
  4026b8:	e8 f3 e6 ff ff       	call   400db0 <close@plt>
  4026bd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026c2:	e9 72 05 00 00       	jmp    402c39 <submitr+0x746>
  4026c7:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4026ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4026d3:	48 89 f1             	mov    %rsi,%rcx
  4026d6:	4c 89 ef             	mov    %r13,%rdi
  4026d9:	f2 ae                	repnz scas %es:(%rdi),%al
  4026db:	48 f7 d1             	not    %rcx
  4026de:	48 89 ca             	mov    %rcx,%rdx
  4026e1:	48 89 f1             	mov    %rsi,%rcx
  4026e4:	4c 89 ff             	mov    %r15,%rdi
  4026e7:	f2 ae                	repnz scas %es:(%rdi),%al
  4026e9:	48 f7 d1             	not    %rcx
  4026ec:	49 89 c8             	mov    %rcx,%r8
  4026ef:	48 89 f1             	mov    %rsi,%rcx
  4026f2:	4c 89 f7             	mov    %r14,%rdi
  4026f5:	f2 ae                	repnz scas %es:(%rdi),%al
  4026f7:	48 f7 d1             	not    %rcx
  4026fa:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4026ff:	48 89 f1             	mov    %rsi,%rcx
  402702:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402707:	f2 ae                	repnz scas %es:(%rdi),%al
  402709:	48 89 c8             	mov    %rcx,%rax
  40270c:	48 f7 d0             	not    %rax
  40270f:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402714:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402719:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402720:	00 
  402721:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402727:	76 72                	jbe    40279b <submitr+0x2a8>
  402729:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402730:	3a 20 52 
  402733:	48 89 03             	mov    %rax,(%rbx)
  402736:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40273d:	20 73 74 
  402740:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402744:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40274b:	74 6f 6f 
  40274e:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402752:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  402759:	65 2e 20 
  40275c:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402760:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402767:	61 73 65 
  40276a:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40276e:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402775:	49 54 52 
  402778:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40277c:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402783:	55 46 00 
  402786:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40278a:	89 ef                	mov    %ebp,%edi
  40278c:	e8 1f e6 ff ff       	call   400db0 <close@plt>
  402791:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402796:	e9 9e 04 00 00       	jmp    402c39 <submitr+0x746>
  40279b:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  4027a2:	00 
  4027a3:	b9 00 04 00 00       	mov    $0x400,%ecx
  4027a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4027ad:	48 89 f7             	mov    %rsi,%rdi
  4027b0:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4027b3:	4c 89 ef             	mov    %r13,%rdi
  4027b6:	e8 2b fc ff ff       	call   4023e6 <urlencode>
  4027bb:	85 c0                	test   %eax,%eax
  4027bd:	0f 89 8a 00 00 00    	jns    40284d <submitr+0x35a>
  4027c3:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4027ca:	3a 20 52 
  4027cd:	48 89 03             	mov    %rax,(%rbx)
  4027d0:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4027d7:	20 73 74 
  4027da:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4027de:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4027e5:	63 6f 6e 
  4027e8:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4027ec:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4027f3:	20 61 6e 
  4027f6:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4027fa:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402801:	67 61 6c 
  402804:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402808:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  40280f:	6e 70 72 
  402812:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402816:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40281d:	6c 65 20 
  402820:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402824:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  40282b:	63 74 65 
  40282e:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402832:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402838:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  40283c:	89 ef                	mov    %ebp,%edi
  40283e:	e8 6d e5 ff ff       	call   400db0 <close@plt>
  402843:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402848:	e9 ec 03 00 00       	jmp    402c39 <submitr+0x746>
  40284d:	4c 8d ac 24 40 20 00 	lea    0x2040(%rsp),%r13
  402854:	00 
  402855:	41 54                	push   %r12
  402857:	48 8d 84 24 48 40 00 	lea    0x4048(%rsp),%rax
  40285e:	00 
  40285f:	50                   	push   %rax
  402860:	4d 89 f9             	mov    %r15,%r9
  402863:	4d 89 f0             	mov    %r14,%r8
  402866:	b9 88 36 40 00       	mov    $0x403688,%ecx
  40286b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402870:	be 01 00 00 00       	mov    $0x1,%esi
  402875:	4c 89 ef             	mov    %r13,%rdi
  402878:	b8 00 00 00 00       	mov    $0x0,%eax
  40287d:	e8 ae e5 ff ff       	call   400e30 <__sprintf_chk@plt>
  402882:	b8 00 00 00 00       	mov    $0x0,%eax
  402887:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40288e:	4c 89 ef             	mov    %r13,%rdi
  402891:	f2 ae                	repnz scas %es:(%rdi),%al
  402893:	48 f7 d1             	not    %rcx
  402896:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  40289a:	4c 89 ee             	mov    %r13,%rsi
  40289d:	89 ef                	mov    %ebp,%edi
  40289f:	e8 b1 f9 ff ff       	call   402255 <rio_writen>
  4028a4:	48 83 c4 10          	add    $0x10,%rsp
  4028a8:	48 85 c0             	test   %rax,%rax
  4028ab:	79 6e                	jns    40291b <submitr+0x428>
  4028ad:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028b4:	3a 20 43 
  4028b7:	48 89 03             	mov    %rax,(%rbx)
  4028ba:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4028c1:	20 75 6e 
  4028c4:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4028c8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028cf:	74 6f 20 
  4028d2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4028d6:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  4028dd:	20 74 6f 
  4028e0:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4028e4:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4028eb:	72 65 73 
  4028ee:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4028f2:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  4028f9:	65 72 76 
  4028fc:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402900:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402906:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  40290a:	89 ef                	mov    %ebp,%edi
  40290c:	e8 9f e4 ff ff       	call   400db0 <close@plt>
  402911:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402916:	e9 1e 03 00 00       	jmp    402c39 <submitr+0x746>
  40291b:	89 ee                	mov    %ebp,%esi
  40291d:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402922:	e8 ee f8 ff ff       	call   402215 <rio_readinitb>
  402927:	ba 00 20 00 00       	mov    $0x2000,%edx
  40292c:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402933:	00 
  402934:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402939:	e8 fe f9 ff ff       	call   40233c <rio_readlineb>
  40293e:	48 85 c0             	test   %rax,%rax
  402941:	7f 7d                	jg     4029c0 <submitr+0x4cd>
  402943:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40294a:	3a 20 43 
  40294d:	48 89 03             	mov    %rax,(%rbx)
  402950:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402957:	20 75 6e 
  40295a:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40295e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402965:	74 6f 20 
  402968:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40296c:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402973:	66 69 72 
  402976:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40297a:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402981:	61 64 65 
  402984:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402988:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  40298f:	6d 20 72 
  402992:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402996:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  40299d:	20 73 65 
  4029a0:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4029a4:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  4029ab:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  4029af:	89 ef                	mov    %ebp,%edi
  4029b1:	e8 fa e3 ff ff       	call   400db0 <close@plt>
  4029b6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029bb:	e9 79 02 00 00       	jmp    402c39 <submitr+0x746>
  4029c0:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  4029c7:	00 
  4029c8:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  4029cd:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  4029d4:	00 
  4029d5:	be ff 36 40 00       	mov    $0x4036ff,%esi
  4029da:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  4029e1:	00 
  4029e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4029e7:	e8 84 e4 ff ff       	call   400e70 <__isoc99_sscanf@plt>
  4029ec:	e9 95 00 00 00       	jmp    402a86 <submitr+0x593>
  4029f1:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029f6:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4029fd:	00 
  4029fe:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402a03:	e8 34 f9 ff ff       	call   40233c <rio_readlineb>
  402a08:	48 85 c0             	test   %rax,%rax
  402a0b:	7f 79                	jg     402a86 <submitr+0x593>
  402a0d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a14:	3a 20 43 
  402a17:	48 89 03             	mov    %rax,(%rbx)
  402a1a:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402a21:	20 75 6e 
  402a24:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402a28:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a2f:	74 6f 20 
  402a32:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402a36:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402a3d:	68 65 61 
  402a40:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402a44:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402a4b:	66 72 6f 
  402a4e:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402a52:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  402a59:	20 72 65 
  402a5c:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402a60:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402a67:	73 65 72 
  402a6a:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402a6e:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402a75:	89 ef                	mov    %ebp,%edi
  402a77:	e8 34 e3 ff ff       	call   400db0 <close@plt>
  402a7c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a81:	e9 b3 01 00 00       	jmp    402c39 <submitr+0x746>
  402a86:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  402a8d:	00 
  402a8e:	b8 0d 00 00 00       	mov    $0xd,%eax
  402a93:	29 d0                	sub    %edx,%eax
  402a95:	75 1b                	jne    402ab2 <submitr+0x5bf>
  402a97:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  402a9e:	00 
  402a9f:	b8 0a 00 00 00       	mov    $0xa,%eax
  402aa4:	29 d0                	sub    %edx,%eax
  402aa6:	75 0a                	jne    402ab2 <submitr+0x5bf>
  402aa8:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  402aaf:	00 
  402ab0:	f7 d8                	neg    %eax
  402ab2:	85 c0                	test   %eax,%eax
  402ab4:	0f 85 37 ff ff ff    	jne    4029f1 <submitr+0x4fe>
  402aba:	ba 00 20 00 00       	mov    $0x2000,%edx
  402abf:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402ac6:	00 
  402ac7:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402acc:	e8 6b f8 ff ff       	call   40233c <rio_readlineb>
  402ad1:	48 85 c0             	test   %rax,%rax
  402ad4:	0f 8f 83 00 00 00    	jg     402b5d <submitr+0x66a>
  402ada:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ae1:	3a 20 43 
  402ae4:	48 89 03             	mov    %rax,(%rbx)
  402ae7:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402aee:	20 75 6e 
  402af1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402af5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402afc:	74 6f 20 
  402aff:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402b03:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402b0a:	73 74 61 
  402b0d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402b11:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402b18:	65 73 73 
  402b1b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402b1f:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402b26:	72 6f 6d 
  402b29:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402b2d:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402b34:	6c 74 20 
  402b37:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402b3b:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  402b42:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402b48:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402b4c:	89 ef                	mov    %ebp,%edi
  402b4e:	e8 5d e2 ff ff       	call   400db0 <close@plt>
  402b53:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b58:	e9 dc 00 00 00       	jmp    402c39 <submitr+0x746>
  402b5d:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402b62:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402b69:	74 37                	je     402ba2 <submitr+0x6af>
  402b6b:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402b72:	00 
  402b73:	b9 c8 36 40 00       	mov    $0x4036c8,%ecx
  402b78:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402b7f:	be 01 00 00 00       	mov    $0x1,%esi
  402b84:	48 89 df             	mov    %rbx,%rdi
  402b87:	b8 00 00 00 00       	mov    $0x0,%eax
  402b8c:	e8 9f e2 ff ff       	call   400e30 <__sprintf_chk@plt>
  402b91:	89 ef                	mov    %ebp,%edi
  402b93:	e8 18 e2 ff ff       	call   400db0 <close@plt>
  402b98:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b9d:	e9 97 00 00 00       	jmp    402c39 <submitr+0x746>
  402ba2:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402ba9:	00 
  402baa:	48 89 df             	mov    %rbx,%rdi
  402bad:	e8 8e e1 ff ff       	call   400d40 <strcpy@plt>
  402bb2:	89 ef                	mov    %ebp,%edi
  402bb4:	e8 f7 e1 ff ff       	call   400db0 <close@plt>
  402bb9:	0f b6 03             	movzbl (%rbx),%eax
  402bbc:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402bc1:	29 c2                	sub    %eax,%edx
  402bc3:	75 22                	jne    402be7 <submitr+0x6f4>
  402bc5:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402bc9:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402bce:	29 c8                	sub    %ecx,%eax
  402bd0:	75 17                	jne    402be9 <submitr+0x6f6>
  402bd2:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402bd6:	b8 0a 00 00 00       	mov    $0xa,%eax
  402bdb:	29 c8                	sub    %ecx,%eax
  402bdd:	75 0a                	jne    402be9 <submitr+0x6f6>
  402bdf:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402be3:	f7 d8                	neg    %eax
  402be5:	eb 02                	jmp    402be9 <submitr+0x6f6>
  402be7:	89 d0                	mov    %edx,%eax
  402be9:	85 c0                	test   %eax,%eax
  402beb:	74 40                	je     402c2d <submitr+0x73a>
  402bed:	bf 10 37 40 00       	mov    $0x403710,%edi
  402bf2:	b9 05 00 00 00       	mov    $0x5,%ecx
  402bf7:	48 89 de             	mov    %rbx,%rsi
  402bfa:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402bfc:	0f 97 c0             	seta   %al
  402bff:	0f 92 c1             	setb   %cl
  402c02:	29 c8                	sub    %ecx,%eax
  402c04:	0f be c0             	movsbl %al,%eax
  402c07:	85 c0                	test   %eax,%eax
  402c09:	74 2e                	je     402c39 <submitr+0x746>
  402c0b:	85 d2                	test   %edx,%edx
  402c0d:	75 13                	jne    402c22 <submitr+0x72f>
  402c0f:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402c13:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402c18:	29 c2                	sub    %eax,%edx
  402c1a:	75 06                	jne    402c22 <submitr+0x72f>
  402c1c:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402c20:	f7 da                	neg    %edx
  402c22:	85 d2                	test   %edx,%edx
  402c24:	75 0e                	jne    402c34 <submitr+0x741>
  402c26:	b8 00 00 00 00       	mov    $0x0,%eax
  402c2b:	eb 0c                	jmp    402c39 <submitr+0x746>
  402c2d:	b8 00 00 00 00       	mov    $0x0,%eax
  402c32:	eb 05                	jmp    402c39 <submitr+0x746>
  402c34:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c39:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402c40:	00 
  402c41:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402c48:	00 00 
  402c4a:	74 05                	je     402c51 <submitr+0x75e>
  402c4c:	e8 1f e1 ff ff       	call   400d70 <__stack_chk_fail@plt>
  402c51:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402c58:	5b                   	pop    %rbx
  402c59:	5d                   	pop    %rbp
  402c5a:	41 5c                	pop    %r12
  402c5c:	41 5d                	pop    %r13
  402c5e:	41 5e                	pop    %r14
  402c60:	41 5f                	pop    %r15
  402c62:	c3                   	ret    

0000000000402c63 <init_timeout>:
  402c63:	85 ff                	test   %edi,%edi
  402c65:	74 23                	je     402c8a <init_timeout+0x27>
  402c67:	53                   	push   %rbx
  402c68:	89 fb                	mov    %edi,%ebx
  402c6a:	85 ff                	test   %edi,%edi
  402c6c:	79 05                	jns    402c73 <init_timeout+0x10>
  402c6e:	bb 00 00 00 00       	mov    $0x0,%ebx
  402c73:	be 27 22 40 00       	mov    $0x402227,%esi
  402c78:	bf 0e 00 00 00       	mov    $0xe,%edi
  402c7d:	e8 5e e1 ff ff       	call   400de0 <signal@plt>
  402c82:	89 df                	mov    %ebx,%edi
  402c84:	e8 17 e1 ff ff       	call   400da0 <alarm@plt>
  402c89:	5b                   	pop    %rbx
  402c8a:	f3 c3                	repz ret 

0000000000402c8c <init_driver>:
  402c8c:	55                   	push   %rbp
  402c8d:	53                   	push   %rbx
  402c8e:	48 83 ec 28          	sub    $0x28,%rsp
  402c92:	48 89 fd             	mov    %rdi,%rbp
  402c95:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c9c:	00 00 
  402c9e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402ca3:	31 c0                	xor    %eax,%eax
  402ca5:	be 01 00 00 00       	mov    $0x1,%esi
  402caa:	bf 0d 00 00 00       	mov    $0xd,%edi
  402caf:	e8 2c e1 ff ff       	call   400de0 <signal@plt>
  402cb4:	be 01 00 00 00       	mov    $0x1,%esi
  402cb9:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402cbe:	e8 1d e1 ff ff       	call   400de0 <signal@plt>
  402cc3:	be 01 00 00 00       	mov    $0x1,%esi
  402cc8:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402ccd:	e8 0e e1 ff ff       	call   400de0 <signal@plt>
  402cd2:	ba 00 00 00 00       	mov    $0x0,%edx
  402cd7:	be 01 00 00 00       	mov    $0x1,%esi
  402cdc:	bf 02 00 00 00       	mov    $0x2,%edi
  402ce1:	e8 1a e2 ff ff       	call   400f00 <socket@plt>
  402ce6:	85 c0                	test   %eax,%eax
  402ce8:	79 4f                	jns    402d39 <init_driver+0xad>
  402cea:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402cf1:	3a 20 43 
  402cf4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402cf8:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402cff:	20 75 6e 
  402d02:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402d06:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d0d:	74 6f 20 
  402d10:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d14:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402d1b:	65 20 73 
  402d1e:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402d22:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402d29:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402d2f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d34:	e9 2a 01 00 00       	jmp    402e63 <init_driver+0x1d7>
  402d39:	89 c3                	mov    %eax,%ebx
  402d3b:	bf 15 37 40 00       	mov    $0x403715,%edi
  402d40:	e8 ab e0 ff ff       	call   400df0 <gethostbyname@plt>
  402d45:	48 85 c0             	test   %rax,%rax
  402d48:	75 68                	jne    402db2 <init_driver+0x126>
  402d4a:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402d51:	3a 20 44 
  402d54:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d58:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402d5f:	20 75 6e 
  402d62:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402d66:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d6d:	74 6f 20 
  402d70:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d74:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402d7b:	76 65 20 
  402d7e:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402d82:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402d89:	72 20 61 
  402d8c:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d90:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402d97:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402d9d:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402da1:	89 df                	mov    %ebx,%edi
  402da3:	e8 08 e0 ff ff       	call   400db0 <close@plt>
  402da8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dad:	e9 b1 00 00 00       	jmp    402e63 <init_driver+0x1d7>
  402db2:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402db9:	00 
  402dba:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402dc1:	00 00 
  402dc3:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402dc9:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402dcd:	48 8b 40 18          	mov    0x18(%rax),%rax
  402dd1:	48 8b 30             	mov    (%rax),%rsi
  402dd4:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402dd9:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402dde:	e8 1d e0 ff ff       	call   400e00 <__memmove_chk@plt>
  402de3:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402dea:	ba 10 00 00 00       	mov    $0x10,%edx
  402def:	48 89 e6             	mov    %rsp,%rsi
  402df2:	89 df                	mov    %ebx,%edi
  402df4:	e8 e7 e0 ff ff       	call   400ee0 <connect@plt>
  402df9:	85 c0                	test   %eax,%eax
  402dfb:	79 50                	jns    402e4d <init_driver+0x1c1>
  402dfd:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402e04:	3a 20 55 
  402e07:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402e0b:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402e12:	20 74 6f 
  402e15:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402e19:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402e20:	65 63 74 
  402e23:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402e27:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402e2e:	65 72 76 
  402e31:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402e35:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402e3b:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402e3f:	89 df                	mov    %ebx,%edi
  402e41:	e8 6a df ff ff       	call   400db0 <close@plt>
  402e46:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e4b:	eb 16                	jmp    402e63 <init_driver+0x1d7>
  402e4d:	89 df                	mov    %ebx,%edi
  402e4f:	e8 5c df ff ff       	call   400db0 <close@plt>
  402e54:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402e5a:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402e5e:	b8 00 00 00 00       	mov    $0x0,%eax
  402e63:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402e68:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402e6f:	00 00 
  402e71:	74 05                	je     402e78 <init_driver+0x1ec>
  402e73:	e8 f8 de ff ff       	call   400d70 <__stack_chk_fail@plt>
  402e78:	48 83 c4 28          	add    $0x28,%rsp
  402e7c:	5b                   	pop    %rbx
  402e7d:	5d                   	pop    %rbp
  402e7e:	c3                   	ret    

0000000000402e7f <driver_post>:
  402e7f:	53                   	push   %rbx
  402e80:	4c 89 cb             	mov    %r9,%rbx
  402e83:	45 85 c0             	test   %r8d,%r8d
  402e86:	74 27                	je     402eaf <driver_post+0x30>
  402e88:	48 89 ca             	mov    %rcx,%rdx
  402e8b:	be 2d 37 40 00       	mov    $0x40372d,%esi
  402e90:	bf 01 00 00 00       	mov    $0x1,%edi
  402e95:	b8 00 00 00 00       	mov    $0x0,%eax
  402e9a:	e8 51 de ff ff       	call   400cf0 <__printf_chk@plt>
  402e9f:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402ea4:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402ea8:	b8 00 00 00 00       	mov    $0x0,%eax
  402ead:	eb 3f                	jmp    402eee <driver_post+0x6f>
  402eaf:	48 85 ff             	test   %rdi,%rdi
  402eb2:	74 2c                	je     402ee0 <driver_post+0x61>
  402eb4:	80 3f 00             	cmpb   $0x0,(%rdi)
  402eb7:	74 27                	je     402ee0 <driver_post+0x61>
  402eb9:	48 83 ec 08          	sub    $0x8,%rsp
  402ebd:	41 51                	push   %r9
  402ebf:	49 89 c9             	mov    %rcx,%r9
  402ec2:	49 89 d0             	mov    %rdx,%r8
  402ec5:	48 89 f9             	mov    %rdi,%rcx
  402ec8:	48 89 f2             	mov    %rsi,%rdx
  402ecb:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402ed0:	bf 15 37 40 00       	mov    $0x403715,%edi
  402ed5:	e8 19 f6 ff ff       	call   4024f3 <submitr>
  402eda:	48 83 c4 10          	add    $0x10,%rsp
  402ede:	eb 0e                	jmp    402eee <driver_post+0x6f>
  402ee0:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402ee5:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402ee9:	b8 00 00 00 00       	mov    $0x0,%eax
  402eee:	5b                   	pop    %rbx
  402eef:	c3                   	ret    

0000000000402ef0 <check>:
  402ef0:	89 f8                	mov    %edi,%eax
  402ef2:	c1 e8 1c             	shr    $0x1c,%eax
  402ef5:	85 c0                	test   %eax,%eax
  402ef7:	74 1d                	je     402f16 <check+0x26>
  402ef9:	b9 00 00 00 00       	mov    $0x0,%ecx
  402efe:	eb 0b                	jmp    402f0b <check+0x1b>
  402f00:	89 f8                	mov    %edi,%eax
  402f02:	d3 e8                	shr    %cl,%eax
  402f04:	3c 0a                	cmp    $0xa,%al
  402f06:	74 14                	je     402f1c <check+0x2c>
  402f08:	83 c1 08             	add    $0x8,%ecx
  402f0b:	83 f9 1f             	cmp    $0x1f,%ecx
  402f0e:	7e f0                	jle    402f00 <check+0x10>
  402f10:	b8 01 00 00 00       	mov    $0x1,%eax
  402f15:	c3                   	ret    
  402f16:	b8 00 00 00 00       	mov    $0x0,%eax
  402f1b:	c3                   	ret    
  402f1c:	b8 00 00 00 00       	mov    $0x0,%eax
  402f21:	c3                   	ret    

0000000000402f22 <gencookie>:
  402f22:	53                   	push   %rbx
  402f23:	83 c7 01             	add    $0x1,%edi
  402f26:	e8 f5 dd ff ff       	call   400d20 <srandom@plt>
  402f2b:	e8 20 df ff ff       	call   400e50 <random@plt>
  402f30:	89 c3                	mov    %eax,%ebx
  402f32:	89 c7                	mov    %eax,%edi
  402f34:	e8 b7 ff ff ff       	call   402ef0 <check>
  402f39:	85 c0                	test   %eax,%eax
  402f3b:	74 ee                	je     402f2b <gencookie+0x9>
  402f3d:	89 d8                	mov    %ebx,%eax
  402f3f:	5b                   	pop    %rbx
  402f40:	c3                   	ret    
  402f41:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402f48:	00 00 00 
  402f4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402f50 <__libc_csu_init>:
  402f50:	41 57                	push   %r15
  402f52:	41 56                	push   %r14
  402f54:	41 89 ff             	mov    %edi,%r15d
  402f57:	41 55                	push   %r13
  402f59:	41 54                	push   %r12
  402f5b:	4c 8d 25 9e 1e 20 00 	lea    0x201e9e(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  402f62:	55                   	push   %rbp
  402f63:	48 8d 2d 9e 1e 20 00 	lea    0x201e9e(%rip),%rbp        # 604e08 <__do_global_dtors_aux_fini_array_entry>
  402f6a:	53                   	push   %rbx
  402f6b:	49 89 f6             	mov    %rsi,%r14
  402f6e:	49 89 d5             	mov    %rdx,%r13
  402f71:	4c 29 e5             	sub    %r12,%rbp
  402f74:	48 83 ec 08          	sub    $0x8,%rsp
  402f78:	48 c1 fd 03          	sar    $0x3,%rbp
  402f7c:	e8 3f dd ff ff       	call   400cc0 <_init>
  402f81:	48 85 ed             	test   %rbp,%rbp
  402f84:	74 20                	je     402fa6 <__libc_csu_init+0x56>
  402f86:	31 db                	xor    %ebx,%ebx
  402f88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402f8f:	00 
  402f90:	4c 89 ea             	mov    %r13,%rdx
  402f93:	4c 89 f6             	mov    %r14,%rsi
  402f96:	44 89 ff             	mov    %r15d,%edi
  402f99:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  402f9d:	48 83 c3 01          	add    $0x1,%rbx
  402fa1:	48 39 eb             	cmp    %rbp,%rbx
  402fa4:	75 ea                	jne    402f90 <__libc_csu_init+0x40>
  402fa6:	48 83 c4 08          	add    $0x8,%rsp
  402faa:	5b                   	pop    %rbx
  402fab:	5d                   	pop    %rbp
  402fac:	41 5c                	pop    %r12
  402fae:	41 5d                	pop    %r13
  402fb0:	41 5e                	pop    %r14
  402fb2:	41 5f                	pop    %r15
  402fb4:	c3                   	ret    
  402fb5:	90                   	nop
  402fb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402fbd:	00 00 00 

0000000000402fc0 <__libc_csu_fini>:
  402fc0:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000402fc4 <_fini>:
  402fc4:	48 83 ec 08          	sub    $0x8,%rsp
  402fc8:	48 83 c4 08          	add    $0x8,%rsp
  402fcc:	c3                   	ret    
