
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400cc0 <_init>:
  400cc0:	48 83 ec 08          	sub    $0x8,%rsp
  400cc4:	48 8b 05 2d 33 20 00 	mov    0x20332d(%rip),%rax        # 603ff8 <__gmon_start__>
  400ccb:	48 85 c0             	test   %rax,%rax
  400cce:	74 05                	je     400cd5 <_init+0x15>
  400cd0:	e8 3b 02 00 00       	call   400f10 <__gmon_start__@plt>
  400cd5:	48 83 c4 08          	add    $0x8,%rsp
  400cd9:	c3                   	ret    

Disassembly of section .plt:

0000000000400ce0 <.plt>:
  400ce0:	ff 35 22 33 20 00    	push   0x203322(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400ce6:	ff 25 24 33 20 00    	jmp    *0x203324(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400cec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400cf0 <__printf_chk@plt>:
  400cf0:	ff 25 22 33 20 00    	jmp    *0x203322(%rip)        # 604018 <__printf_chk>
  400cf6:	68 00 00 00 00       	push   $0x0
  400cfb:	e9 e0 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d00 <strcasecmp@plt>:
  400d00:	ff 25 1a 33 20 00    	jmp    *0x20331a(%rip)        # 604020 <strcasecmp@GLIBC_2.2.5>
  400d06:	68 01 00 00 00       	push   $0x1
  400d0b:	e9 d0 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d10 <__errno_location@plt>:
  400d10:	ff 25 12 33 20 00    	jmp    *0x203312(%rip)        # 604028 <__errno_location@GLIBC_2.2.5>
  400d16:	68 02 00 00 00       	push   $0x2
  400d1b:	e9 c0 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d20 <srandom@plt>:
  400d20:	ff 25 0a 33 20 00    	jmp    *0x20330a(%rip)        # 604030 <srandom@GLIBC_2.2.5>
  400d26:	68 03 00 00 00       	push   $0x3
  400d2b:	e9 b0 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d30 <strncmp@plt>:
  400d30:	ff 25 02 33 20 00    	jmp    *0x203302(%rip)        # 604038 <strncmp@GLIBC_2.2.5>
  400d36:	68 04 00 00 00       	push   $0x4
  400d3b:	e9 a0 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d40 <strcpy@plt>:
  400d40:	ff 25 fa 32 20 00    	jmp    *0x2032fa(%rip)        # 604040 <strcpy@GLIBC_2.2.5>
  400d46:	68 05 00 00 00       	push   $0x5
  400d4b:	e9 90 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d50 <puts@plt>:
  400d50:	ff 25 f2 32 20 00    	jmp    *0x2032f2(%rip)        # 604048 <puts@GLIBC_2.2.5>
  400d56:	68 06 00 00 00       	push   $0x6
  400d5b:	e9 80 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d60 <write@plt>:
  400d60:	ff 25 ea 32 20 00    	jmp    *0x2032ea(%rip)        # 604050 <write@GLIBC_2.2.5>
  400d66:	68 07 00 00 00       	push   $0x7
  400d6b:	e9 70 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d70 <__stack_chk_fail@plt>:
  400d70:	ff 25 e2 32 20 00    	jmp    *0x2032e2(%rip)        # 604058 <__stack_chk_fail@GLIBC_2.4>
  400d76:	68 08 00 00 00       	push   $0x8
  400d7b:	e9 60 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d80 <mmap@plt>:
  400d80:	ff 25 da 32 20 00    	jmp    *0x2032da(%rip)        # 604060 <mmap@GLIBC_2.2.5>
  400d86:	68 09 00 00 00       	push   $0x9
  400d8b:	e9 50 ff ff ff       	jmp    400ce0 <.plt>

0000000000400d90 <memset@plt>:
  400d90:	ff 25 d2 32 20 00    	jmp    *0x2032d2(%rip)        # 604068 <memset@GLIBC_2.2.5>
  400d96:	68 0a 00 00 00       	push   $0xa
  400d9b:	e9 40 ff ff ff       	jmp    400ce0 <.plt>

0000000000400da0 <alarm@plt>:
  400da0:	ff 25 ca 32 20 00    	jmp    *0x2032ca(%rip)        # 604070 <alarm@GLIBC_2.2.5>
  400da6:	68 0b 00 00 00       	push   $0xb
  400dab:	e9 30 ff ff ff       	jmp    400ce0 <.plt>

0000000000400db0 <close@plt>:
  400db0:	ff 25 c2 32 20 00    	jmp    *0x2032c2(%rip)        # 604078 <close@GLIBC_2.2.5>
  400db6:	68 0c 00 00 00       	push   $0xc
  400dbb:	e9 20 ff ff ff       	jmp    400ce0 <.plt>

0000000000400dc0 <read@plt>:
  400dc0:	ff 25 ba 32 20 00    	jmp    *0x2032ba(%rip)        # 604080 <read@GLIBC_2.2.5>
  400dc6:	68 0d 00 00 00       	push   $0xd
  400dcb:	e9 10 ff ff ff       	jmp    400ce0 <.plt>

0000000000400dd0 <__libc_start_main@plt>:
  400dd0:	ff 25 b2 32 20 00    	jmp    *0x2032b2(%rip)        # 604088 <__libc_start_main@GLIBC_2.2.5>
  400dd6:	68 0e 00 00 00       	push   $0xe
  400ddb:	e9 00 ff ff ff       	jmp    400ce0 <.plt>

0000000000400de0 <signal@plt>:
  400de0:	ff 25 aa 32 20 00    	jmp    *0x2032aa(%rip)        # 604090 <signal@GLIBC_2.2.5>
  400de6:	68 0f 00 00 00       	push   $0xf
  400deb:	e9 f0 fe ff ff       	jmp    400ce0 <.plt>

0000000000400df0 <gethostbyname@plt>:
  400df0:	ff 25 a2 32 20 00    	jmp    *0x2032a2(%rip)        # 604098 <gethostbyname@GLIBC_2.2.5>
  400df6:	68 10 00 00 00       	push   $0x10
  400dfb:	e9 e0 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e00 <__memmove_chk@plt>:
  400e00:	ff 25 9a 32 20 00    	jmp    *0x20329a(%rip)        # 6040a0 <__memmove_chk@GLIBC_2.3.4>
  400e06:	68 11 00 00 00       	push   $0x11
  400e0b:	e9 d0 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e10 <strtol@plt>:
  400e10:	ff 25 92 32 20 00    	jmp    *0x203292(%rip)        # 6040a8 <strtol@GLIBC_2.2.5>
  400e16:	68 12 00 00 00       	push   $0x12
  400e1b:	e9 c0 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e20 <memcpy@plt>:
  400e20:	ff 25 8a 32 20 00    	jmp    *0x20328a(%rip)        # 6040b0 <memcpy@GLIBC_2.14>
  400e26:	68 13 00 00 00       	push   $0x13
  400e2b:	e9 b0 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e30 <__sprintf_chk@plt>:
  400e30:	ff 25 82 32 20 00    	jmp    *0x203282(%rip)        # 6040b8 <__sprintf_chk>
  400e36:	68 14 00 00 00       	push   $0x14
  400e3b:	e9 a0 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e40 <time@plt>:
  400e40:	ff 25 7a 32 20 00    	jmp    *0x20327a(%rip)        # 6040c0 <time@GLIBC_2.2.5>
  400e46:	68 15 00 00 00       	push   $0x15
  400e4b:	e9 90 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e50 <random@plt>:
  400e50:	ff 25 72 32 20 00    	jmp    *0x203272(%rip)        # 6040c8 <random@GLIBC_2.2.5>
  400e56:	68 16 00 00 00       	push   $0x16
  400e5b:	e9 80 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e60 <_IO_getc@plt>:
  400e60:	ff 25 6a 32 20 00    	jmp    *0x20326a(%rip)        # 6040d0 <_IO_getc@GLIBC_2.2.5>
  400e66:	68 17 00 00 00       	push   $0x17
  400e6b:	e9 70 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e70 <__isoc99_sscanf@plt>:
  400e70:	ff 25 62 32 20 00    	jmp    *0x203262(%rip)        # 6040d8 <__isoc99_sscanf@GLIBC_2.7>
  400e76:	68 18 00 00 00       	push   $0x18
  400e7b:	e9 60 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e80 <munmap@plt>:
  400e80:	ff 25 5a 32 20 00    	jmp    *0x20325a(%rip)        # 6040e0 <munmap@GLIBC_2.2.5>
  400e86:	68 19 00 00 00       	push   $0x19
  400e8b:	e9 50 fe ff ff       	jmp    400ce0 <.plt>

0000000000400e90 <fopen@plt>:
  400e90:	ff 25 52 32 20 00    	jmp    *0x203252(%rip)        # 6040e8 <fopen@GLIBC_2.2.5>
  400e96:	68 1a 00 00 00       	push   $0x1a
  400e9b:	e9 40 fe ff ff       	jmp    400ce0 <.plt>

0000000000400ea0 <getopt@plt>:
  400ea0:	ff 25 4a 32 20 00    	jmp    *0x20324a(%rip)        # 6040f0 <getopt@GLIBC_2.2.5>
  400ea6:	68 1b 00 00 00       	push   $0x1b
  400eab:	e9 30 fe ff ff       	jmp    400ce0 <.plt>

0000000000400eb0 <strtoul@plt>:
  400eb0:	ff 25 42 32 20 00    	jmp    *0x203242(%rip)        # 6040f8 <strtoul@GLIBC_2.2.5>
  400eb6:	68 1c 00 00 00       	push   $0x1c
  400ebb:	e9 20 fe ff ff       	jmp    400ce0 <.plt>

0000000000400ec0 <gethostname@plt>:
  400ec0:	ff 25 3a 32 20 00    	jmp    *0x20323a(%rip)        # 604100 <gethostname@GLIBC_2.2.5>
  400ec6:	68 1d 00 00 00       	push   $0x1d
  400ecb:	e9 10 fe ff ff       	jmp    400ce0 <.plt>

0000000000400ed0 <exit@plt>:
  400ed0:	ff 25 32 32 20 00    	jmp    *0x203232(%rip)        # 604108 <exit@GLIBC_2.2.5>
  400ed6:	68 1e 00 00 00       	push   $0x1e
  400edb:	e9 00 fe ff ff       	jmp    400ce0 <.plt>

0000000000400ee0 <connect@plt>:
  400ee0:	ff 25 2a 32 20 00    	jmp    *0x20322a(%rip)        # 604110 <connect@GLIBC_2.2.5>
  400ee6:	68 1f 00 00 00       	push   $0x1f
  400eeb:	e9 f0 fd ff ff       	jmp    400ce0 <.plt>

0000000000400ef0 <__fprintf_chk@plt>:
  400ef0:	ff 25 22 32 20 00    	jmp    *0x203222(%rip)        # 604118 <__fprintf_chk@GLIBC_2.3.4>
  400ef6:	68 20 00 00 00       	push   $0x20
  400efb:	e9 e0 fd ff ff       	jmp    400ce0 <.plt>

0000000000400f00 <socket@plt>:
  400f00:	ff 25 1a 32 20 00    	jmp    *0x20321a(%rip)        # 604120 <socket@GLIBC_2.2.5>
  400f06:	68 21 00 00 00       	push   $0x21
  400f0b:	e9 d0 fd ff ff       	jmp    400ce0 <.plt>

Disassembly of section .plt.got:

0000000000400f10 <__gmon_start__@plt>:
  400f10:	ff 25 e2 30 20 00    	jmp    *0x2030e2(%rip)        # 603ff8 <__gmon_start__>
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
  400f2f:	49 c7 c0 90 2e 40 00 	mov    $0x402e90,%r8
  400f36:	48 c7 c1 20 2e 40 00 	mov    $0x402e20,%rcx
  400f3d:	48 c7 c7 25 12 40 00 	mov    $0x401225,%rdi
  400f44:	e8 87 fe ff ff       	call   400dd0 <__libc_start_main@plt>
  400f49:	f4                   	hlt    
  400f4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f50 <deregister_tm_clones>:
  400f50:	b8 af 44 60 00       	mov    $0x6044af,%eax
  400f55:	55                   	push   %rbp
  400f56:	48 2d a8 44 60 00    	sub    $0x6044a8,%rax
  400f5c:	48 83 f8 0e          	cmp    $0xe,%rax
  400f60:	48 89 e5             	mov    %rsp,%rbp
  400f63:	76 1b                	jbe    400f80 <deregister_tm_clones+0x30>
  400f65:	b8 00 00 00 00       	mov    $0x0,%eax
  400f6a:	48 85 c0             	test   %rax,%rax
  400f6d:	74 11                	je     400f80 <deregister_tm_clones+0x30>
  400f6f:	5d                   	pop    %rbp
  400f70:	bf a8 44 60 00       	mov    $0x6044a8,%edi
  400f75:	ff e0                	jmp    *%rax
  400f77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400f7e:	00 00 
  400f80:	5d                   	pop    %rbp
  400f81:	c3                   	ret    
  400f82:	0f 1f 40 00          	nopl   0x0(%rax)
  400f86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400f8d:	00 00 00 

0000000000400f90 <register_tm_clones>:
  400f90:	be a8 44 60 00       	mov    $0x6044a8,%esi
  400f95:	55                   	push   %rbp
  400f96:	48 81 ee a8 44 60 00 	sub    $0x6044a8,%rsi
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
  400fbe:	bf a8 44 60 00       	mov    $0x6044a8,%edi
  400fc3:	ff e0                	jmp    *%rax
  400fc5:	0f 1f 00             	nopl   (%rax)
  400fc8:	5d                   	pop    %rbp
  400fc9:	c3                   	ret    
  400fca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400fd0 <__do_global_dtors_aux>:
  400fd0:	80 3d 11 35 20 00 00 	cmpb   $0x0,0x203511(%rip)        # 6044e8 <completed.7594>
  400fd7:	75 11                	jne    400fea <__do_global_dtors_aux+0x1a>
  400fd9:	55                   	push   %rbp
  400fda:	48 89 e5             	mov    %rsp,%rbp
  400fdd:	e8 6e ff ff ff       	call   400f50 <deregister_tm_clones>
  400fe2:	5d                   	pop    %rbp
  400fe3:	c6 05 fe 34 20 00 01 	movb   $0x1,0x2034fe(%rip)        # 6044e8 <completed.7594>
  400fea:	f3 c3                	repz ret 
  400fec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ff0 <frame_dummy>:
  400ff0:	bf 10 3e 60 00       	mov    $0x603e10,%edi
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
  40101d:	83 3d 08 35 20 00 00 	cmpl   $0x0,0x203508(%rip)        # 60452c <is_checker>
  401024:	74 3e                	je     401064 <usage+0x4e>
  401026:	be a8 2e 40 00       	mov    $0x402ea8,%esi
  40102b:	bf 01 00 00 00       	mov    $0x1,%edi
  401030:	b8 00 00 00 00       	mov    $0x0,%eax
  401035:	e8 b6 fc ff ff       	call   400cf0 <__printf_chk@plt>
  40103a:	bf e0 2e 40 00       	mov    $0x402ee0,%edi
  40103f:	e8 0c fd ff ff       	call   400d50 <puts@plt>
  401044:	bf 58 30 40 00       	mov    $0x403058,%edi
  401049:	e8 02 fd ff ff       	call   400d50 <puts@plt>
  40104e:	bf 08 2f 40 00       	mov    $0x402f08,%edi
  401053:	e8 f8 fc ff ff       	call   400d50 <puts@plt>
  401058:	bf 72 30 40 00       	mov    $0x403072,%edi
  40105d:	e8 ee fc ff ff       	call   400d50 <puts@plt>
  401062:	eb 32                	jmp    401096 <usage+0x80>
  401064:	be 8e 30 40 00       	mov    $0x40308e,%esi
  401069:	bf 01 00 00 00       	mov    $0x1,%edi
  40106e:	b8 00 00 00 00       	mov    $0x0,%eax
  401073:	e8 78 fc ff ff       	call   400cf0 <__printf_chk@plt>
  401078:	bf 30 2f 40 00       	mov    $0x402f30,%edi
  40107d:	e8 ce fc ff ff       	call   400d50 <puts@plt>
  401082:	bf 58 2f 40 00       	mov    $0x402f58,%edi
  401087:	e8 c4 fc ff ff       	call   400d50 <puts@plt>
  40108c:	bf ac 30 40 00       	mov    $0x4030ac,%edi
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
  4010be:	89 3d 58 34 20 00    	mov    %edi,0x203458(%rip)        # 60451c <check_level>
  4010c4:	8b 3d 9e 30 20 00    	mov    0x20309e(%rip),%edi        # 604168 <target_id>
  4010ca:	e8 31 1d 00 00       	call   402e00 <gencookie>
  4010cf:	89 05 53 34 20 00    	mov    %eax,0x203453(%rip)        # 604528 <cookie>
  4010d5:	89 c7                	mov    %eax,%edi
  4010d7:	e8 24 1d 00 00       	call   402e00 <gencookie>
  4010dc:	89 05 42 34 20 00    	mov    %eax,0x203442(%rip)        # 604524 <authkey>
  4010e2:	8b 05 80 30 20 00    	mov    0x203080(%rip),%eax        # 604168 <target_id>
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
  40112d:	48 89 05 6c 33 20 00 	mov    %rax,0x20336c(%rip)        # 6044a0 <buf_offset>
  401134:	c6 05 0d 40 20 00 63 	movb   $0x63,0x20400d(%rip)        # 605148 <target_prefix>
  40113b:	83 3d d6 33 20 00 00 	cmpl   $0x0,0x2033d6(%rip)        # 604518 <notify>
  401142:	0f 84 bb 00 00 00    	je     401203 <initialize_target+0x163>
  401148:	83 3d dd 33 20 00 00 	cmpl   $0x0,0x2033dd(%rip)        # 60452c <is_checker>
  40114f:	0f 85 ae 00 00 00    	jne    401203 <initialize_target+0x163>
  401155:	be 00 01 00 00       	mov    $0x100,%esi
  40115a:	48 89 e7             	mov    %rsp,%rdi
  40115d:	e8 5e fd ff ff       	call   400ec0 <gethostname@plt>
  401162:	85 c0                	test   %eax,%eax
  401164:	74 25                	je     40118b <initialize_target+0xeb>
  401166:	bf 88 2f 40 00       	mov    $0x402f88,%edi
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
  401193:	48 8b 3c c5 80 41 60 	mov    0x604180(,%rax,8),%rdi
  40119a:	00 
  40119b:	48 85 ff             	test   %rdi,%rdi
  40119e:	75 da                	jne    40117a <initialize_target+0xda>
  4011a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4011a5:	eb 05                	jmp    4011ac <initialize_target+0x10c>
  4011a7:	b8 01 00 00 00       	mov    $0x1,%eax
  4011ac:	85 c0                	test   %eax,%eax
  4011ae:	75 1c                	jne    4011cc <initialize_target+0x12c>
  4011b0:	48 89 e2             	mov    %rsp,%rdx
  4011b3:	be c0 2f 40 00       	mov    $0x402fc0,%esi
  4011b8:	bf 01 00 00 00       	mov    $0x1,%edi
  4011bd:	e8 2e fb ff ff       	call   400cf0 <__printf_chk@plt>
  4011c2:	bf 08 00 00 00       	mov    $0x8,%edi
  4011c7:	e8 04 fd ff ff       	call   400ed0 <exit@plt>
  4011cc:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4011d3:	00 
  4011d4:	e8 91 19 00 00       	call   402b6a <init_driver>
  4011d9:	85 c0                	test   %eax,%eax
  4011db:	79 26                	jns    401203 <initialize_target+0x163>
  4011dd:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  4011e4:	00 
  4011e5:	be 00 30 40 00       	mov    $0x403000,%esi
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
  401233:	be a5 1e 40 00       	mov    $0x401ea5,%esi
  401238:	bf 0b 00 00 00       	mov    $0xb,%edi
  40123d:	e8 9e fb ff ff       	call   400de0 <signal@plt>
  401242:	be 57 1e 40 00       	mov    $0x401e57,%esi
  401247:	bf 07 00 00 00       	mov    $0x7,%edi
  40124c:	e8 8f fb ff ff       	call   400de0 <signal@plt>
  401251:	be f3 1e 40 00       	mov    $0x401ef3,%esi
  401256:	bf 04 00 00 00       	mov    $0x4,%edi
  40125b:	e8 80 fb ff ff       	call   400de0 <signal@plt>
  401260:	83 3d c5 32 20 00 00 	cmpl   $0x0,0x2032c5(%rip)        # 60452c <is_checker>
  401267:	74 20                	je     401289 <main+0x64>
  401269:	be 41 1f 40 00       	mov    $0x401f41,%esi
  40126e:	bf 0e 00 00 00       	mov    $0xe,%edi
  401273:	e8 68 fb ff ff       	call   400de0 <signal@plt>
  401278:	bf 05 00 00 00       	mov    $0x5,%edi
  40127d:	e8 1e fb ff ff       	call   400da0 <alarm@plt>
  401282:	bd ca 30 40 00       	mov    $0x4030ca,%ebp
  401287:	eb 05                	jmp    40128e <main+0x69>
  401289:	bd c5 30 40 00       	mov    $0x4030c5,%ebp
  40128e:	48 8b 05 2b 32 20 00 	mov    0x20322b(%rip),%rax        # 6044c0 <stdin@GLIBC_2.2.5>
  401295:	48 89 05 74 32 20 00 	mov    %rax,0x203274(%rip)        # 604510 <infile>
  40129c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4012a2:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4012a8:	e9 c6 00 00 00       	jmp    401373 <main+0x14e>
  4012ad:	83 e8 61             	sub    $0x61,%eax
  4012b0:	3c 10                	cmp    $0x10,%al
  4012b2:	0f 87 9c 00 00 00    	ja     401354 <main+0x12f>
  4012b8:	0f b6 c0             	movzbl %al,%eax
  4012bb:	ff 24 c5 10 31 40 00 	jmp    *0x403110(,%rax,8)
  4012c2:	48 8b 3b             	mov    (%rbx),%rdi
  4012c5:	e8 4c fd ff ff       	call   401016 <usage>
  4012ca:	be 42 33 40 00       	mov    $0x403342,%esi
  4012cf:	48 8b 3d f2 31 20 00 	mov    0x2031f2(%rip),%rdi        # 6044c8 <optarg@GLIBC_2.2.5>
  4012d6:	e8 b5 fb ff ff       	call   400e90 <fopen@plt>
  4012db:	48 89 05 2e 32 20 00 	mov    %rax,0x20322e(%rip)        # 604510 <infile>
  4012e2:	48 85 c0             	test   %rax,%rax
  4012e5:	0f 85 88 00 00 00    	jne    401373 <main+0x14e>
  4012eb:	48 8b 0d d6 31 20 00 	mov    0x2031d6(%rip),%rcx        # 6044c8 <optarg@GLIBC_2.2.5>
  4012f2:	ba d2 30 40 00       	mov    $0x4030d2,%edx
  4012f7:	be 01 00 00 00       	mov    $0x1,%esi
  4012fc:	48 8b 3d dd 31 20 00 	mov    0x2031dd(%rip),%rdi        # 6044e0 <stderr@GLIBC_2.2.5>
  401303:	e8 e8 fb ff ff       	call   400ef0 <__fprintf_chk@plt>
  401308:	b8 01 00 00 00       	mov    $0x1,%eax
  40130d:	e9 ee 00 00 00       	jmp    401400 <main+0x1db>
  401312:	ba 10 00 00 00       	mov    $0x10,%edx
  401317:	be 00 00 00 00       	mov    $0x0,%esi
  40131c:	48 8b 3d a5 31 20 00 	mov    0x2031a5(%rip),%rdi        # 6044c8 <optarg@GLIBC_2.2.5>
  401323:	e8 88 fb ff ff       	call   400eb0 <strtoul@plt>
  401328:	41 89 c6             	mov    %eax,%r14d
  40132b:	eb 46                	jmp    401373 <main+0x14e>
  40132d:	ba 0a 00 00 00       	mov    $0xa,%edx
  401332:	be 00 00 00 00       	mov    $0x0,%esi
  401337:	48 8b 3d 8a 31 20 00 	mov    0x20318a(%rip),%rdi        # 6044c8 <optarg@GLIBC_2.2.5>
  40133e:	e8 cd fa ff ff       	call   400e10 <strtol@plt>
  401343:	41 89 c5             	mov    %eax,%r13d
  401346:	eb 2b                	jmp    401373 <main+0x14e>
  401348:	c7 05 c6 31 20 00 00 	movl   $0x0,0x2031c6(%rip)        # 604518 <notify>
  40134f:	00 00 00 
  401352:	eb 1f                	jmp    401373 <main+0x14e>
  401354:	0f be d2             	movsbl %dl,%edx
  401357:	be ef 30 40 00       	mov    $0x4030ef,%esi
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
  40138b:	c7 05 83 31 20 00 00 	movl   $0x0,0x203183(%rip)        # 604518 <notify>
  401392:	00 00 00 
  401395:	be 00 00 00 00       	mov    $0x0,%esi
  40139a:	44 89 ef             	mov    %r13d,%edi
  40139d:	e8 fe fc ff ff       	call   4010a0 <initialize_target>
  4013a2:	83 3d 83 31 20 00 00 	cmpl   $0x0,0x203183(%rip)        # 60452c <is_checker>
  4013a9:	74 2a                	je     4013d5 <main+0x1b0>
  4013ab:	44 3b 35 72 31 20 00 	cmp    0x203172(%rip),%r14d        # 604524 <authkey>
  4013b2:	74 21                	je     4013d5 <main+0x1b0>
  4013b4:	44 89 f2             	mov    %r14d,%edx
  4013b7:	be 28 30 40 00       	mov    $0x403028,%esi
  4013bc:	bf 01 00 00 00       	mov    $0x1,%edi
  4013c1:	b8 00 00 00 00       	mov    $0x0,%eax
  4013c6:	e8 25 f9 ff ff       	call   400cf0 <__printf_chk@plt>
  4013cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4013d0:	e8 23 08 00 00       	call   401bf8 <check_fail>
  4013d5:	8b 15 4d 31 20 00    	mov    0x20314d(%rip),%edx        # 604528 <cookie>
  4013db:	be 02 31 40 00       	mov    $0x403102,%esi
  4013e0:	bf 01 00 00 00       	mov    $0x1,%edi
  4013e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4013ea:	e8 01 f9 ff ff       	call   400cf0 <__printf_chk@plt>
  4013ef:	48 8b 3d aa 30 20 00 	mov    0x2030aa(%rip),%rdi        # 6044a0 <buf_offset>
  4013f6:	e8 46 0c 00 00       	call   402041 <stable_launch>
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
  4019aa:	e8 7e 02 00 00       	call   401c2d <Gets>
  4019af:	b8 01 00 00 00       	mov    $0x1,%eax
  4019b4:	48 83 c4 38          	add    $0x38,%rsp
  4019b8:	c3                   	ret    

00000000004019b9 <touch1>:
  4019b9:	48 83 ec 08          	sub    $0x8,%rsp
  4019bd:	c7 05 59 2b 20 00 01 	movl   $0x1,0x202b59(%rip)        # 604520 <vlevel>
  4019c4:	00 00 00 
  4019c7:	bf e6 31 40 00       	mov    $0x4031e6,%edi
  4019cc:	e8 7f f3 ff ff       	call   400d50 <puts@plt>
  4019d1:	bf 01 00 00 00       	mov    $0x1,%edi
  4019d6:	e8 92 03 00 00       	call   401d6d <validate>
  4019db:	bf 00 00 00 00       	mov    $0x0,%edi
  4019e0:	e8 eb f4 ff ff       	call   400ed0 <exit@plt>

00000000004019e5 <touch2>:
  4019e5:	48 83 ec 08          	sub    $0x8,%rsp
  4019e9:	89 fa                	mov    %edi,%edx
  4019eb:	c7 05 2b 2b 20 00 02 	movl   $0x2,0x202b2b(%rip)        # 604520 <vlevel>
  4019f2:	00 00 00 
  4019f5:	39 3d 2d 2b 20 00    	cmp    %edi,0x202b2d(%rip)        # 604528 <cookie>
  4019fb:	75 20                	jne    401a1d <touch2+0x38>
  4019fd:	be 08 32 40 00       	mov    $0x403208,%esi
  401a02:	bf 01 00 00 00       	mov    $0x1,%edi
  401a07:	b8 00 00 00 00       	mov    $0x0,%eax
  401a0c:	e8 df f2 ff ff       	call   400cf0 <__printf_chk@plt>
  401a11:	bf 02 00 00 00       	mov    $0x2,%edi
  401a16:	e8 52 03 00 00       	call   401d6d <validate>
  401a1b:	eb 1e                	jmp    401a3b <touch2+0x56>
  401a1d:	be 30 32 40 00       	mov    $0x403230,%esi
  401a22:	bf 01 00 00 00       	mov    $0x1,%edi
  401a27:	b8 00 00 00 00       	mov    $0x0,%eax
  401a2c:	e8 bf f2 ff ff       	call   400cf0 <__printf_chk@plt>
  401a31:	bf 02 00 00 00       	mov    $0x2,%edi
  401a36:	e8 f4 03 00 00       	call   401e2f <fail>
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
  401aa2:	b9 03 32 40 00       	mov    $0x403203,%ecx
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
  401afa:	c7 05 1c 2a 20 00 03 	movl   $0x3,0x202a1c(%rip)        # 604520 <vlevel>
  401b01:	00 00 00 
  401b04:	48 89 fe             	mov    %rdi,%rsi
  401b07:	8b 3d 1b 2a 20 00    	mov    0x202a1b(%rip),%edi        # 604528 <cookie>
  401b0d:	e8 33 ff ff ff       	call   401a45 <hexmatch>
  401b12:	85 c0                	test   %eax,%eax
  401b14:	74 23                	je     401b39 <touch3+0x43>
  401b16:	48 89 da             	mov    %rbx,%rdx
  401b19:	be 58 32 40 00       	mov    $0x403258,%esi
  401b1e:	bf 01 00 00 00       	mov    $0x1,%edi
  401b23:	b8 00 00 00 00       	mov    $0x0,%eax
  401b28:	e8 c3 f1 ff ff       	call   400cf0 <__printf_chk@plt>
  401b2d:	bf 03 00 00 00       	mov    $0x3,%edi
  401b32:	e8 36 02 00 00       	call   401d6d <validate>
  401b37:	eb 21                	jmp    401b5a <touch3+0x64>
  401b39:	48 89 da             	mov    %rbx,%rdx
  401b3c:	be 80 32 40 00       	mov    $0x403280,%esi
  401b41:	bf 01 00 00 00       	mov    $0x1,%edi
  401b46:	b8 00 00 00 00       	mov    $0x0,%eax
  401b4b:	e8 a0 f1 ff ff       	call   400cf0 <__printf_chk@plt>
  401b50:	bf 03 00 00 00       	mov    $0x3,%edi
  401b55:	e8 d5 02 00 00       	call   401e2f <fail>
  401b5a:	bf 00 00 00 00       	mov    $0x0,%edi
  401b5f:	e8 6c f3 ff ff       	call   400ed0 <exit@plt>

0000000000401b64 <test>:
  401b64:	48 83 ec 08          	sub    $0x8,%rsp
  401b68:	b8 00 00 00 00       	mov    $0x0,%eax
  401b6d:	e8 31 fe ff ff       	call   4019a3 <getbuf>
  401b72:	89 c2                	mov    %eax,%edx
  401b74:	be a8 32 40 00       	mov    $0x4032a8,%esi
  401b79:	bf 01 00 00 00       	mov    $0x1,%edi
  401b7e:	b8 00 00 00 00       	mov    $0x0,%eax
  401b83:	e8 68 f1 ff ff       	call   400cf0 <__printf_chk@plt>
  401b88:	48 83 c4 08          	add    $0x8,%rsp
  401b8c:	c3                   	ret    

0000000000401b8d <save_char>:
  401b8d:	8b 05 b1 35 20 00    	mov    0x2035b1(%rip),%eax        # 605144 <gets_cnt>
  401b93:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401b98:	7f 49                	jg     401be3 <save_char+0x56>
  401b9a:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401b9d:	89 f9                	mov    %edi,%ecx
  401b9f:	c0 e9 04             	shr    $0x4,%cl
  401ba2:	83 e1 0f             	and    $0xf,%ecx
  401ba5:	0f b6 b1 20 35 40 00 	movzbl 0x403520(%rcx),%esi
  401bac:	48 63 ca             	movslq %edx,%rcx
  401baf:	40 88 b1 40 45 60 00 	mov    %sil,0x604540(%rcx)
  401bb6:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401bb9:	83 e7 0f             	and    $0xf,%edi
  401bbc:	0f b6 b7 20 35 40 00 	movzbl 0x403520(%rdi),%esi
  401bc3:	48 63 c9             	movslq %ecx,%rcx
  401bc6:	40 88 b1 40 45 60 00 	mov    %sil,0x604540(%rcx)
  401bcd:	83 c2 02             	add    $0x2,%edx
  401bd0:	48 63 d2             	movslq %edx,%rdx
  401bd3:	c6 82 40 45 60 00 20 	movb   $0x20,0x604540(%rdx)
  401bda:	83 c0 01             	add    $0x1,%eax
  401bdd:	89 05 61 35 20 00    	mov    %eax,0x203561(%rip)        # 605144 <gets_cnt>
  401be3:	f3 c3                	repz ret 

0000000000401be5 <save_term>:
  401be5:	8b 05 59 35 20 00    	mov    0x203559(%rip),%eax        # 605144 <gets_cnt>
  401beb:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401bee:	48 98                	cltq   
  401bf0:	c6 80 40 45 60 00 00 	movb   $0x0,0x604540(%rax)
  401bf7:	c3                   	ret    

0000000000401bf8 <check_fail>:
  401bf8:	48 83 ec 08          	sub    $0x8,%rsp
  401bfc:	0f be 15 45 35 20 00 	movsbl 0x203545(%rip),%edx        # 605148 <target_prefix>
  401c03:	41 b8 40 45 60 00    	mov    $0x604540,%r8d
  401c09:	8b 0d 0d 29 20 00    	mov    0x20290d(%rip),%ecx        # 60451c <check_level>
  401c0f:	be cb 32 40 00       	mov    $0x4032cb,%esi
  401c14:	bf 01 00 00 00       	mov    $0x1,%edi
  401c19:	b8 00 00 00 00       	mov    $0x0,%eax
  401c1e:	e8 cd f0 ff ff       	call   400cf0 <__printf_chk@plt>
  401c23:	bf 01 00 00 00       	mov    $0x1,%edi
  401c28:	e8 a3 f2 ff ff       	call   400ed0 <exit@plt>

0000000000401c2d <Gets>:
  401c2d:	41 54                	push   %r12
  401c2f:	55                   	push   %rbp
  401c30:	53                   	push   %rbx
  401c31:	49 89 fc             	mov    %rdi,%r12
  401c34:	c7 05 06 35 20 00 00 	movl   $0x0,0x203506(%rip)        # 605144 <gets_cnt>
  401c3b:	00 00 00 
  401c3e:	48 89 fb             	mov    %rdi,%rbx
  401c41:	eb 11                	jmp    401c54 <Gets+0x27>
  401c43:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401c47:	88 03                	mov    %al,(%rbx)
  401c49:	0f b6 f8             	movzbl %al,%edi
  401c4c:	e8 3c ff ff ff       	call   401b8d <save_char>
  401c51:	48 89 eb             	mov    %rbp,%rbx
  401c54:	48 8b 3d b5 28 20 00 	mov    0x2028b5(%rip),%rdi        # 604510 <infile>
  401c5b:	e8 00 f2 ff ff       	call   400e60 <_IO_getc@plt>
  401c60:	83 f8 ff             	cmp    $0xffffffff,%eax
  401c63:	74 05                	je     401c6a <Gets+0x3d>
  401c65:	83 f8 0a             	cmp    $0xa,%eax
  401c68:	75 d9                	jne    401c43 <Gets+0x16>
  401c6a:	c6 03 00             	movb   $0x0,(%rbx)
  401c6d:	b8 00 00 00 00       	mov    $0x0,%eax
  401c72:	e8 6e ff ff ff       	call   401be5 <save_term>
  401c77:	4c 89 e0             	mov    %r12,%rax
  401c7a:	5b                   	pop    %rbx
  401c7b:	5d                   	pop    %rbp
  401c7c:	41 5c                	pop    %r12
  401c7e:	c3                   	ret    

0000000000401c7f <notify_server>:
  401c7f:	53                   	push   %rbx
  401c80:	48 81 ec 10 20 00 00 	sub    $0x2010,%rsp
  401c87:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c8e:	00 00 
  401c90:	48 89 84 24 08 20 00 	mov    %rax,0x2008(%rsp)
  401c97:	00 
  401c98:	31 c0                	xor    %eax,%eax
  401c9a:	83 3d 8b 28 20 00 00 	cmpl   $0x0,0x20288b(%rip)        # 60452c <is_checker>
  401ca1:	0f 85 a5 00 00 00    	jne    401d4c <notify_server+0xcd>
  401ca7:	89 fb                	mov    %edi,%ebx
  401ca9:	8b 05 95 34 20 00    	mov    0x203495(%rip),%eax        # 605144 <gets_cnt>
  401caf:	83 c0 64             	add    $0x64,%eax
  401cb2:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401cb7:	7e 1e                	jle    401cd7 <notify_server+0x58>
  401cb9:	be b0 33 40 00       	mov    $0x4033b0,%esi
  401cbe:	bf 01 00 00 00       	mov    $0x1,%edi
  401cc3:	b8 00 00 00 00       	mov    $0x0,%eax
  401cc8:	e8 23 f0 ff ff       	call   400cf0 <__printf_chk@plt>
  401ccd:	bf 01 00 00 00       	mov    $0x1,%edi
  401cd2:	e8 f9 f1 ff ff       	call   400ed0 <exit@plt>
  401cd7:	0f be 05 6a 34 20 00 	movsbl 0x20346a(%rip),%eax        # 605148 <target_prefix>
  401cde:	83 3d 33 28 20 00 00 	cmpl   $0x0,0x202833(%rip)        # 604518 <notify>
  401ce5:	74 08                	je     401cef <notify_server+0x70>
  401ce7:	8b 15 37 28 20 00    	mov    0x202837(%rip),%edx        # 604524 <authkey>
  401ced:	eb 05                	jmp    401cf4 <notify_server+0x75>
  401cef:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401cf4:	85 db                	test   %ebx,%ebx
  401cf6:	74 08                	je     401d00 <notify_server+0x81>
  401cf8:	41 b9 e1 32 40 00    	mov    $0x4032e1,%r9d
  401cfe:	eb 06                	jmp    401d06 <notify_server+0x87>
  401d00:	41 b9 e6 32 40 00    	mov    $0x4032e6,%r9d
  401d06:	68 40 45 60 00       	push   $0x604540
  401d0b:	56                   	push   %rsi
  401d0c:	50                   	push   %rax
  401d0d:	52                   	push   %rdx
  401d0e:	44 8b 05 53 24 20 00 	mov    0x202453(%rip),%r8d        # 604168 <target_id>
  401d15:	b9 eb 32 40 00       	mov    $0x4032eb,%ecx
  401d1a:	ba 00 20 00 00       	mov    $0x2000,%edx
  401d1f:	be 01 00 00 00       	mov    $0x1,%esi
  401d24:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401d29:	b8 00 00 00 00       	mov    $0x0,%eax
  401d2e:	e8 fd f0 ff ff       	call   400e30 <__sprintf_chk@plt>
  401d33:	48 83 c4 20          	add    $0x20,%rsp
  401d37:	85 db                	test   %ebx,%ebx
  401d39:	74 07                	je     401d42 <notify_server+0xc3>
  401d3b:	bf e1 32 40 00       	mov    $0x4032e1,%edi
  401d40:	eb 05                	jmp    401d47 <notify_server+0xc8>
  401d42:	bf e6 32 40 00       	mov    $0x4032e6,%edi
  401d47:	e8 04 f0 ff ff       	call   400d50 <puts@plt>
  401d4c:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  401d53:	00 
  401d54:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401d5b:	00 00 
  401d5d:	74 05                	je     401d64 <notify_server+0xe5>
  401d5f:	e8 0c f0 ff ff       	call   400d70 <__stack_chk_fail@plt>
  401d64:	48 81 c4 10 20 00 00 	add    $0x2010,%rsp
  401d6b:	5b                   	pop    %rbx
  401d6c:	c3                   	ret    

0000000000401d6d <validate>:
  401d6d:	53                   	push   %rbx
  401d6e:	89 fb                	mov    %edi,%ebx
  401d70:	83 3d b5 27 20 00 00 	cmpl   $0x0,0x2027b5(%rip)        # 60452c <is_checker>
  401d77:	74 6b                	je     401de4 <validate+0x77>
  401d79:	39 3d a1 27 20 00    	cmp    %edi,0x2027a1(%rip)        # 604520 <vlevel>
  401d7f:	74 14                	je     401d95 <validate+0x28>
  401d81:	bf 07 33 40 00       	mov    $0x403307,%edi
  401d86:	e8 c5 ef ff ff       	call   400d50 <puts@plt>
  401d8b:	b8 00 00 00 00       	mov    $0x0,%eax
  401d90:	e8 63 fe ff ff       	call   401bf8 <check_fail>
  401d95:	8b 15 81 27 20 00    	mov    0x202781(%rip),%edx        # 60451c <check_level>
  401d9b:	39 d7                	cmp    %edx,%edi
  401d9d:	74 20                	je     401dbf <validate+0x52>
  401d9f:	89 f9                	mov    %edi,%ecx
  401da1:	be e0 33 40 00       	mov    $0x4033e0,%esi
  401da6:	bf 01 00 00 00       	mov    $0x1,%edi
  401dab:	b8 00 00 00 00       	mov    $0x0,%eax
  401db0:	e8 3b ef ff ff       	call   400cf0 <__printf_chk@plt>
  401db5:	b8 00 00 00 00       	mov    $0x0,%eax
  401dba:	e8 39 fe ff ff       	call   401bf8 <check_fail>
  401dbf:	0f be 15 82 33 20 00 	movsbl 0x203382(%rip),%edx        # 605148 <target_prefix>
  401dc6:	41 b8 40 45 60 00    	mov    $0x604540,%r8d
  401dcc:	89 f9                	mov    %edi,%ecx
  401dce:	be 25 33 40 00       	mov    $0x403325,%esi
  401dd3:	bf 01 00 00 00       	mov    $0x1,%edi
  401dd8:	b8 00 00 00 00       	mov    $0x0,%eax
  401ddd:	e8 0e ef ff ff       	call   400cf0 <__printf_chk@plt>
  401de2:	eb 49                	jmp    401e2d <validate+0xc0>
  401de4:	3b 3d 36 27 20 00    	cmp    0x202736(%rip),%edi        # 604520 <vlevel>
  401dea:	74 18                	je     401e04 <validate+0x97>
  401dec:	bf 07 33 40 00       	mov    $0x403307,%edi
  401df1:	e8 5a ef ff ff       	call   400d50 <puts@plt>
  401df6:	89 de                	mov    %ebx,%esi
  401df8:	bf 00 00 00 00       	mov    $0x0,%edi
  401dfd:	e8 7d fe ff ff       	call   401c7f <notify_server>
  401e02:	eb 29                	jmp    401e2d <validate+0xc0>
  401e04:	0f be 0d 3d 33 20 00 	movsbl 0x20333d(%rip),%ecx        # 605148 <target_prefix>
  401e0b:	89 fa                	mov    %edi,%edx
  401e0d:	be 08 34 40 00       	mov    $0x403408,%esi
  401e12:	bf 01 00 00 00       	mov    $0x1,%edi
  401e17:	b8 00 00 00 00       	mov    $0x0,%eax
  401e1c:	e8 cf ee ff ff       	call   400cf0 <__printf_chk@plt>
  401e21:	89 de                	mov    %ebx,%esi
  401e23:	bf 01 00 00 00       	mov    $0x1,%edi
  401e28:	e8 52 fe ff ff       	call   401c7f <notify_server>
  401e2d:	5b                   	pop    %rbx
  401e2e:	c3                   	ret    

0000000000401e2f <fail>:
  401e2f:	48 83 ec 08          	sub    $0x8,%rsp
  401e33:	83 3d f2 26 20 00 00 	cmpl   $0x0,0x2026f2(%rip)        # 60452c <is_checker>
  401e3a:	74 0a                	je     401e46 <fail+0x17>
  401e3c:	b8 00 00 00 00       	mov    $0x0,%eax
  401e41:	e8 b2 fd ff ff       	call   401bf8 <check_fail>
  401e46:	89 fe                	mov    %edi,%esi
  401e48:	bf 00 00 00 00       	mov    $0x0,%edi
  401e4d:	e8 2d fe ff ff       	call   401c7f <notify_server>
  401e52:	48 83 c4 08          	add    $0x8,%rsp
  401e56:	c3                   	ret    

0000000000401e57 <bushandler>:
  401e57:	48 83 ec 08          	sub    $0x8,%rsp
  401e5b:	83 3d ca 26 20 00 00 	cmpl   $0x0,0x2026ca(%rip)        # 60452c <is_checker>
  401e62:	74 14                	je     401e78 <bushandler+0x21>
  401e64:	bf 3a 33 40 00       	mov    $0x40333a,%edi
  401e69:	e8 e2 ee ff ff       	call   400d50 <puts@plt>
  401e6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401e73:	e8 80 fd ff ff       	call   401bf8 <check_fail>
  401e78:	bf 40 34 40 00       	mov    $0x403440,%edi
  401e7d:	e8 ce ee ff ff       	call   400d50 <puts@plt>
  401e82:	bf 44 33 40 00       	mov    $0x403344,%edi
  401e87:	e8 c4 ee ff ff       	call   400d50 <puts@plt>
  401e8c:	be 00 00 00 00       	mov    $0x0,%esi
  401e91:	bf 00 00 00 00       	mov    $0x0,%edi
  401e96:	e8 e4 fd ff ff       	call   401c7f <notify_server>
  401e9b:	bf 01 00 00 00       	mov    $0x1,%edi
  401ea0:	e8 2b f0 ff ff       	call   400ed0 <exit@plt>

0000000000401ea5 <seghandler>:
  401ea5:	48 83 ec 08          	sub    $0x8,%rsp
  401ea9:	83 3d 7c 26 20 00 00 	cmpl   $0x0,0x20267c(%rip)        # 60452c <is_checker>
  401eb0:	74 14                	je     401ec6 <seghandler+0x21>
  401eb2:	bf 5a 33 40 00       	mov    $0x40335a,%edi
  401eb7:	e8 94 ee ff ff       	call   400d50 <puts@plt>
  401ebc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec1:	e8 32 fd ff ff       	call   401bf8 <check_fail>
  401ec6:	bf 60 34 40 00       	mov    $0x403460,%edi
  401ecb:	e8 80 ee ff ff       	call   400d50 <puts@plt>
  401ed0:	bf 44 33 40 00       	mov    $0x403344,%edi
  401ed5:	e8 76 ee ff ff       	call   400d50 <puts@plt>
  401eda:	be 00 00 00 00       	mov    $0x0,%esi
  401edf:	bf 00 00 00 00       	mov    $0x0,%edi
  401ee4:	e8 96 fd ff ff       	call   401c7f <notify_server>
  401ee9:	bf 01 00 00 00       	mov    $0x1,%edi
  401eee:	e8 dd ef ff ff       	call   400ed0 <exit@plt>

0000000000401ef3 <illegalhandler>:
  401ef3:	48 83 ec 08          	sub    $0x8,%rsp
  401ef7:	83 3d 2e 26 20 00 00 	cmpl   $0x0,0x20262e(%rip)        # 60452c <is_checker>
  401efe:	74 14                	je     401f14 <illegalhandler+0x21>
  401f00:	bf 6d 33 40 00       	mov    $0x40336d,%edi
  401f05:	e8 46 ee ff ff       	call   400d50 <puts@plt>
  401f0a:	b8 00 00 00 00       	mov    $0x0,%eax
  401f0f:	e8 e4 fc ff ff       	call   401bf8 <check_fail>
  401f14:	bf 88 34 40 00       	mov    $0x403488,%edi
  401f19:	e8 32 ee ff ff       	call   400d50 <puts@plt>
  401f1e:	bf 44 33 40 00       	mov    $0x403344,%edi
  401f23:	e8 28 ee ff ff       	call   400d50 <puts@plt>
  401f28:	be 00 00 00 00       	mov    $0x0,%esi
  401f2d:	bf 00 00 00 00       	mov    $0x0,%edi
  401f32:	e8 48 fd ff ff       	call   401c7f <notify_server>
  401f37:	bf 01 00 00 00       	mov    $0x1,%edi
  401f3c:	e8 8f ef ff ff       	call   400ed0 <exit@plt>

0000000000401f41 <sigalrmhandler>:
  401f41:	48 83 ec 08          	sub    $0x8,%rsp
  401f45:	83 3d e0 25 20 00 00 	cmpl   $0x0,0x2025e0(%rip)        # 60452c <is_checker>
  401f4c:	74 14                	je     401f62 <sigalrmhandler+0x21>
  401f4e:	bf 81 33 40 00       	mov    $0x403381,%edi
  401f53:	e8 f8 ed ff ff       	call   400d50 <puts@plt>
  401f58:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5d:	e8 96 fc ff ff       	call   401bf8 <check_fail>
  401f62:	ba 05 00 00 00       	mov    $0x5,%edx
  401f67:	be b8 34 40 00       	mov    $0x4034b8,%esi
  401f6c:	bf 01 00 00 00       	mov    $0x1,%edi
  401f71:	b8 00 00 00 00       	mov    $0x0,%eax
  401f76:	e8 75 ed ff ff       	call   400cf0 <__printf_chk@plt>
  401f7b:	be 00 00 00 00       	mov    $0x0,%esi
  401f80:	bf 00 00 00 00       	mov    $0x0,%edi
  401f85:	e8 f5 fc ff ff       	call   401c7f <notify_server>
  401f8a:	bf 01 00 00 00       	mov    $0x1,%edi
  401f8f:	e8 3c ef ff ff       	call   400ed0 <exit@plt>

0000000000401f94 <launch>:
  401f94:	55                   	push   %rbp
  401f95:	48 89 e5             	mov    %rsp,%rbp
  401f98:	48 83 ec 10          	sub    $0x10,%rsp
  401f9c:	48 89 fa             	mov    %rdi,%rdx
  401f9f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401fa6:	00 00 
  401fa8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401fac:	31 c0                	xor    %eax,%eax
  401fae:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401fb2:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401fb6:	48 29 c4             	sub    %rax,%rsp
  401fb9:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401fbe:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401fc2:	be f4 00 00 00       	mov    $0xf4,%esi
  401fc7:	e8 c4 ed ff ff       	call   400d90 <memset@plt>
  401fcc:	48 8b 05 ed 24 20 00 	mov    0x2024ed(%rip),%rax        # 6044c0 <stdin@GLIBC_2.2.5>
  401fd3:	48 39 05 36 25 20 00 	cmp    %rax,0x202536(%rip)        # 604510 <infile>
  401fda:	75 14                	jne    401ff0 <launch+0x5c>
  401fdc:	be 89 33 40 00       	mov    $0x403389,%esi
  401fe1:	bf 01 00 00 00       	mov    $0x1,%edi
  401fe6:	b8 00 00 00 00       	mov    $0x0,%eax
  401feb:	e8 00 ed ff ff       	call   400cf0 <__printf_chk@plt>
  401ff0:	c7 05 26 25 20 00 00 	movl   $0x0,0x202526(%rip)        # 604520 <vlevel>
  401ff7:	00 00 00 
  401ffa:	b8 00 00 00 00       	mov    $0x0,%eax
  401fff:	e8 60 fb ff ff       	call   401b64 <test>
  402004:	83 3d 21 25 20 00 00 	cmpl   $0x0,0x202521(%rip)        # 60452c <is_checker>
  40200b:	74 14                	je     402021 <launch+0x8d>
  40200d:	bf 96 33 40 00       	mov    $0x403396,%edi
  402012:	e8 39 ed ff ff       	call   400d50 <puts@plt>
  402017:	b8 00 00 00 00       	mov    $0x0,%eax
  40201c:	e8 d7 fb ff ff       	call   401bf8 <check_fail>
  402021:	bf a1 33 40 00       	mov    $0x4033a1,%edi
  402026:	e8 25 ed ff ff       	call   400d50 <puts@plt>
  40202b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40202f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402036:	00 00 
  402038:	74 05                	je     40203f <launch+0xab>
  40203a:	e8 31 ed ff ff       	call   400d70 <__stack_chk_fail@plt>
  40203f:	c9                   	leave  
  402040:	c3                   	ret    

0000000000402041 <stable_launch>:
  402041:	53                   	push   %rbx
  402042:	48 89 3d bf 24 20 00 	mov    %rdi,0x2024bf(%rip)        # 604508 <global_offset>
  402049:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40204f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402055:	b9 32 01 00 00       	mov    $0x132,%ecx
  40205a:	ba 07 00 00 00       	mov    $0x7,%edx
  40205f:	be 00 00 10 00       	mov    $0x100000,%esi
  402064:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402069:	e8 12 ed ff ff       	call   400d80 <mmap@plt>
  40206e:	48 89 c3             	mov    %rax,%rbx
  402071:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402077:	74 37                	je     4020b0 <stable_launch+0x6f>
  402079:	be 00 00 10 00       	mov    $0x100000,%esi
  40207e:	48 89 c7             	mov    %rax,%rdi
  402081:	e8 fa ed ff ff       	call   400e80 <munmap@plt>
  402086:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40208b:	ba f0 34 40 00       	mov    $0x4034f0,%edx
  402090:	be 01 00 00 00       	mov    $0x1,%esi
  402095:	48 8b 3d 44 24 20 00 	mov    0x202444(%rip),%rdi        # 6044e0 <stderr@GLIBC_2.2.5>
  40209c:	b8 00 00 00 00       	mov    $0x0,%eax
  4020a1:	e8 4a ee ff ff       	call   400ef0 <__fprintf_chk@plt>
  4020a6:	bf 01 00 00 00       	mov    $0x1,%edi
  4020ab:	e8 20 ee ff ff       	call   400ed0 <exit@plt>
  4020b0:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4020b7:	48 89 15 92 30 20 00 	mov    %rdx,0x203092(%rip)        # 605150 <stack_top>
  4020be:	48 89 e0             	mov    %rsp,%rax
  4020c1:	48 89 d4             	mov    %rdx,%rsp
  4020c4:	48 89 c2             	mov    %rax,%rdx
  4020c7:	48 89 15 32 24 20 00 	mov    %rdx,0x202432(%rip)        # 604500 <global_save_stack>
  4020ce:	48 8b 3d 33 24 20 00 	mov    0x202433(%rip),%rdi        # 604508 <global_offset>
  4020d5:	e8 ba fe ff ff       	call   401f94 <launch>
  4020da:	48 8b 05 1f 24 20 00 	mov    0x20241f(%rip),%rax        # 604500 <global_save_stack>
  4020e1:	48 89 c4             	mov    %rax,%rsp
  4020e4:	be 00 00 10 00       	mov    $0x100000,%esi
  4020e9:	48 89 df             	mov    %rbx,%rdi
  4020ec:	e8 8f ed ff ff       	call   400e80 <munmap@plt>
  4020f1:	5b                   	pop    %rbx
  4020f2:	c3                   	ret    

00000000004020f3 <rio_readinitb>:
  4020f3:	89 37                	mov    %esi,(%rdi)
  4020f5:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4020fc:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402100:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402104:	c3                   	ret    

0000000000402105 <sigalrm_handler>:
  402105:	48 83 ec 08          	sub    $0x8,%rsp
  402109:	b9 00 00 00 00       	mov    $0x0,%ecx
  40210e:	ba 30 35 40 00       	mov    $0x403530,%edx
  402113:	be 01 00 00 00       	mov    $0x1,%esi
  402118:	48 8b 3d c1 23 20 00 	mov    0x2023c1(%rip),%rdi        # 6044e0 <stderr@GLIBC_2.2.5>
  40211f:	b8 00 00 00 00       	mov    $0x0,%eax
  402124:	e8 c7 ed ff ff       	call   400ef0 <__fprintf_chk@plt>
  402129:	bf 01 00 00 00       	mov    $0x1,%edi
  40212e:	e8 9d ed ff ff       	call   400ed0 <exit@plt>

0000000000402133 <rio_writen>:
  402133:	41 55                	push   %r13
  402135:	41 54                	push   %r12
  402137:	55                   	push   %rbp
  402138:	53                   	push   %rbx
  402139:	48 83 ec 08          	sub    $0x8,%rsp
  40213d:	41 89 fc             	mov    %edi,%r12d
  402140:	48 89 f5             	mov    %rsi,%rbp
  402143:	49 89 d5             	mov    %rdx,%r13
  402146:	48 89 d3             	mov    %rdx,%rbx
  402149:	eb 28                	jmp    402173 <rio_writen+0x40>
  40214b:	48 89 da             	mov    %rbx,%rdx
  40214e:	48 89 ee             	mov    %rbp,%rsi
  402151:	44 89 e7             	mov    %r12d,%edi
  402154:	e8 07 ec ff ff       	call   400d60 <write@plt>
  402159:	48 85 c0             	test   %rax,%rax
  40215c:	7f 0f                	jg     40216d <rio_writen+0x3a>
  40215e:	e8 ad eb ff ff       	call   400d10 <__errno_location@plt>
  402163:	83 38 04             	cmpl   $0x4,(%rax)
  402166:	75 15                	jne    40217d <rio_writen+0x4a>
  402168:	b8 00 00 00 00       	mov    $0x0,%eax
  40216d:	48 29 c3             	sub    %rax,%rbx
  402170:	48 01 c5             	add    %rax,%rbp
  402173:	48 85 db             	test   %rbx,%rbx
  402176:	75 d3                	jne    40214b <rio_writen+0x18>
  402178:	4c 89 e8             	mov    %r13,%rax
  40217b:	eb 07                	jmp    402184 <rio_writen+0x51>
  40217d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402184:	48 83 c4 08          	add    $0x8,%rsp
  402188:	5b                   	pop    %rbx
  402189:	5d                   	pop    %rbp
  40218a:	41 5c                	pop    %r12
  40218c:	41 5d                	pop    %r13
  40218e:	c3                   	ret    

000000000040218f <rio_read>:
  40218f:	41 55                	push   %r13
  402191:	41 54                	push   %r12
  402193:	55                   	push   %rbp
  402194:	53                   	push   %rbx
  402195:	48 83 ec 08          	sub    $0x8,%rsp
  402199:	48 89 fb             	mov    %rdi,%rbx
  40219c:	49 89 f5             	mov    %rsi,%r13
  40219f:	49 89 d4             	mov    %rdx,%r12
  4021a2:	eb 2e                	jmp    4021d2 <rio_read+0x43>
  4021a4:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4021a8:	8b 3b                	mov    (%rbx),%edi
  4021aa:	ba 00 20 00 00       	mov    $0x2000,%edx
  4021af:	48 89 ee             	mov    %rbp,%rsi
  4021b2:	e8 09 ec ff ff       	call   400dc0 <read@plt>
  4021b7:	89 43 04             	mov    %eax,0x4(%rbx)
  4021ba:	85 c0                	test   %eax,%eax
  4021bc:	79 0c                	jns    4021ca <rio_read+0x3b>
  4021be:	e8 4d eb ff ff       	call   400d10 <__errno_location@plt>
  4021c3:	83 38 04             	cmpl   $0x4,(%rax)
  4021c6:	74 0a                	je     4021d2 <rio_read+0x43>
  4021c8:	eb 37                	jmp    402201 <rio_read+0x72>
  4021ca:	85 c0                	test   %eax,%eax
  4021cc:	74 3c                	je     40220a <rio_read+0x7b>
  4021ce:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4021d2:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4021d5:	85 ed                	test   %ebp,%ebp
  4021d7:	7e cb                	jle    4021a4 <rio_read+0x15>
  4021d9:	89 e8                	mov    %ebp,%eax
  4021db:	49 39 c4             	cmp    %rax,%r12
  4021de:	77 03                	ja     4021e3 <rio_read+0x54>
  4021e0:	44 89 e5             	mov    %r12d,%ebp
  4021e3:	4c 63 e5             	movslq %ebp,%r12
  4021e6:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4021ea:	4c 89 e2             	mov    %r12,%rdx
  4021ed:	4c 89 ef             	mov    %r13,%rdi
  4021f0:	e8 2b ec ff ff       	call   400e20 <memcpy@plt>
  4021f5:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4021f9:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4021fc:	4c 89 e0             	mov    %r12,%rax
  4021ff:	eb 0e                	jmp    40220f <rio_read+0x80>
  402201:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402208:	eb 05                	jmp    40220f <rio_read+0x80>
  40220a:	b8 00 00 00 00       	mov    $0x0,%eax
  40220f:	48 83 c4 08          	add    $0x8,%rsp
  402213:	5b                   	pop    %rbx
  402214:	5d                   	pop    %rbp
  402215:	41 5c                	pop    %r12
  402217:	41 5d                	pop    %r13
  402219:	c3                   	ret    

000000000040221a <rio_readlineb>:
  40221a:	41 55                	push   %r13
  40221c:	41 54                	push   %r12
  40221e:	55                   	push   %rbp
  40221f:	53                   	push   %rbx
  402220:	48 83 ec 18          	sub    $0x18,%rsp
  402224:	49 89 fd             	mov    %rdi,%r13
  402227:	48 89 f5             	mov    %rsi,%rbp
  40222a:	49 89 d4             	mov    %rdx,%r12
  40222d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402234:	00 00 
  402236:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40223b:	31 c0                	xor    %eax,%eax
  40223d:	bb 01 00 00 00       	mov    $0x1,%ebx
  402242:	eb 3f                	jmp    402283 <rio_readlineb+0x69>
  402244:	ba 01 00 00 00       	mov    $0x1,%edx
  402249:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  40224e:	4c 89 ef             	mov    %r13,%rdi
  402251:	e8 39 ff ff ff       	call   40218f <rio_read>
  402256:	83 f8 01             	cmp    $0x1,%eax
  402259:	75 15                	jne    402270 <rio_readlineb+0x56>
  40225b:	48 8d 45 01          	lea    0x1(%rbp),%rax
  40225f:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  402264:	88 55 00             	mov    %dl,0x0(%rbp)
  402267:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  40226c:	75 0e                	jne    40227c <rio_readlineb+0x62>
  40226e:	eb 1a                	jmp    40228a <rio_readlineb+0x70>
  402270:	85 c0                	test   %eax,%eax
  402272:	75 22                	jne    402296 <rio_readlineb+0x7c>
  402274:	48 83 fb 01          	cmp    $0x1,%rbx
  402278:	75 13                	jne    40228d <rio_readlineb+0x73>
  40227a:	eb 23                	jmp    40229f <rio_readlineb+0x85>
  40227c:	48 83 c3 01          	add    $0x1,%rbx
  402280:	48 89 c5             	mov    %rax,%rbp
  402283:	4c 39 e3             	cmp    %r12,%rbx
  402286:	72 bc                	jb     402244 <rio_readlineb+0x2a>
  402288:	eb 03                	jmp    40228d <rio_readlineb+0x73>
  40228a:	48 89 c5             	mov    %rax,%rbp
  40228d:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402291:	48 89 d8             	mov    %rbx,%rax
  402294:	eb 0e                	jmp    4022a4 <rio_readlineb+0x8a>
  402296:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40229d:	eb 05                	jmp    4022a4 <rio_readlineb+0x8a>
  40229f:	b8 00 00 00 00       	mov    $0x0,%eax
  4022a4:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  4022a9:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4022b0:	00 00 
  4022b2:	74 05                	je     4022b9 <rio_readlineb+0x9f>
  4022b4:	e8 b7 ea ff ff       	call   400d70 <__stack_chk_fail@plt>
  4022b9:	48 83 c4 18          	add    $0x18,%rsp
  4022bd:	5b                   	pop    %rbx
  4022be:	5d                   	pop    %rbp
  4022bf:	41 5c                	pop    %r12
  4022c1:	41 5d                	pop    %r13
  4022c3:	c3                   	ret    

00000000004022c4 <urlencode>:
  4022c4:	41 54                	push   %r12
  4022c6:	55                   	push   %rbp
  4022c7:	53                   	push   %rbx
  4022c8:	48 83 ec 10          	sub    $0x10,%rsp
  4022cc:	48 89 fb             	mov    %rdi,%rbx
  4022cf:	48 89 f5             	mov    %rsi,%rbp
  4022d2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022d9:	00 00 
  4022db:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4022e0:	31 c0                	xor    %eax,%eax
  4022e2:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4022e9:	f2 ae                	repnz scas %es:(%rdi),%al
  4022eb:	48 f7 d1             	not    %rcx
  4022ee:	8d 41 ff             	lea    -0x1(%rcx),%eax
  4022f1:	e9 aa 00 00 00       	jmp    4023a0 <urlencode+0xdc>
  4022f6:	44 0f b6 03          	movzbl (%rbx),%r8d
  4022fa:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4022fe:	0f 94 c2             	sete   %dl
  402301:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402305:	0f 94 c0             	sete   %al
  402308:	08 c2                	or     %al,%dl
  40230a:	75 24                	jne    402330 <urlencode+0x6c>
  40230c:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402310:	74 1e                	je     402330 <urlencode+0x6c>
  402312:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402316:	74 18                	je     402330 <urlencode+0x6c>
  402318:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  40231c:	3c 09                	cmp    $0x9,%al
  40231e:	76 10                	jbe    402330 <urlencode+0x6c>
  402320:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402324:	3c 19                	cmp    $0x19,%al
  402326:	76 08                	jbe    402330 <urlencode+0x6c>
  402328:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  40232c:	3c 19                	cmp    $0x19,%al
  40232e:	77 0a                	ja     40233a <urlencode+0x76>
  402330:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402334:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402338:	eb 5f                	jmp    402399 <urlencode+0xd5>
  40233a:	41 80 f8 20          	cmp    $0x20,%r8b
  40233e:	75 0a                	jne    40234a <urlencode+0x86>
  402340:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402344:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402348:	eb 4f                	jmp    402399 <urlencode+0xd5>
  40234a:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  40234e:	3c 5f                	cmp    $0x5f,%al
  402350:	0f 96 c2             	setbe  %dl
  402353:	41 80 f8 09          	cmp    $0x9,%r8b
  402357:	0f 94 c0             	sete   %al
  40235a:	08 c2                	or     %al,%dl
  40235c:	74 50                	je     4023ae <urlencode+0xea>
  40235e:	45 0f b6 c0          	movzbl %r8b,%r8d
  402362:	b9 c8 35 40 00       	mov    $0x4035c8,%ecx
  402367:	ba 08 00 00 00       	mov    $0x8,%edx
  40236c:	be 01 00 00 00       	mov    $0x1,%esi
  402371:	48 89 e7             	mov    %rsp,%rdi
  402374:	b8 00 00 00 00       	mov    $0x0,%eax
  402379:	e8 b2 ea ff ff       	call   400e30 <__sprintf_chk@plt>
  40237e:	0f b6 04 24          	movzbl (%rsp),%eax
  402382:	88 45 00             	mov    %al,0x0(%rbp)
  402385:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40238a:	88 45 01             	mov    %al,0x1(%rbp)
  40238d:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402392:	88 45 02             	mov    %al,0x2(%rbp)
  402395:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402399:	48 83 c3 01          	add    $0x1,%rbx
  40239d:	44 89 e0             	mov    %r12d,%eax
  4023a0:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4023a4:	85 c0                	test   %eax,%eax
  4023a6:	0f 85 4a ff ff ff    	jne    4022f6 <urlencode+0x32>
  4023ac:	eb 05                	jmp    4023b3 <urlencode+0xef>
  4023ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023b3:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  4023b8:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4023bf:	00 00 
  4023c1:	74 05                	je     4023c8 <urlencode+0x104>
  4023c3:	e8 a8 e9 ff ff       	call   400d70 <__stack_chk_fail@plt>
  4023c8:	48 83 c4 10          	add    $0x10,%rsp
  4023cc:	5b                   	pop    %rbx
  4023cd:	5d                   	pop    %rbp
  4023ce:	41 5c                	pop    %r12
  4023d0:	c3                   	ret    

00000000004023d1 <submitr>:
  4023d1:	41 57                	push   %r15
  4023d3:	41 56                	push   %r14
  4023d5:	41 55                	push   %r13
  4023d7:	41 54                	push   %r12
  4023d9:	55                   	push   %rbp
  4023da:	53                   	push   %rbx
  4023db:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  4023e2:	49 89 fc             	mov    %rdi,%r12
  4023e5:	89 74 24 04          	mov    %esi,0x4(%rsp)
  4023e9:	49 89 d7             	mov    %rdx,%r15
  4023ec:	49 89 ce             	mov    %rcx,%r14
  4023ef:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  4023f4:	4d 89 cd             	mov    %r9,%r13
  4023f7:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  4023fe:	00 
  4023ff:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402406:	00 00 
  402408:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  40240f:	00 
  402410:	31 c0                	xor    %eax,%eax
  402412:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  402419:	00 
  40241a:	ba 00 00 00 00       	mov    $0x0,%edx
  40241f:	be 01 00 00 00       	mov    $0x1,%esi
  402424:	bf 02 00 00 00       	mov    $0x2,%edi
  402429:	e8 d2 ea ff ff       	call   400f00 <socket@plt>
  40242e:	85 c0                	test   %eax,%eax
  402430:	79 4e                	jns    402480 <submitr+0xaf>
  402432:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402439:	3a 20 43 
  40243c:	48 89 03             	mov    %rax,(%rbx)
  40243f:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402446:	20 75 6e 
  402449:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40244d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402454:	74 6f 20 
  402457:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40245b:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402462:	65 20 73 
  402465:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402469:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402470:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  402476:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40247b:	e9 97 06 00 00       	jmp    402b17 <submitr+0x746>
  402480:	89 c5                	mov    %eax,%ebp
  402482:	4c 89 e7             	mov    %r12,%rdi
  402485:	e8 66 e9 ff ff       	call   400df0 <gethostbyname@plt>
  40248a:	48 85 c0             	test   %rax,%rax
  40248d:	75 67                	jne    4024f6 <submitr+0x125>
  40248f:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402496:	3a 20 44 
  402499:	48 89 03             	mov    %rax,(%rbx)
  40249c:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4024a3:	20 75 6e 
  4024a6:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4024aa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4024b1:	74 6f 20 
  4024b4:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024b8:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4024bf:	76 65 20 
  4024c2:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4024c6:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4024cd:	72 20 61 
  4024d0:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4024d4:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  4024db:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  4024e1:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  4024e5:	89 ef                	mov    %ebp,%edi
  4024e7:	e8 c4 e8 ff ff       	call   400db0 <close@plt>
  4024ec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024f1:	e9 21 06 00 00       	jmp    402b17 <submitr+0x746>
  4024f6:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  4024fd:	00 00 
  4024ff:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  402506:	00 00 
  402508:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  40250f:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402513:	48 8b 40 18          	mov    0x18(%rax),%rax
  402517:	48 8b 30             	mov    (%rax),%rsi
  40251a:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  40251f:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402524:	e8 d7 e8 ff ff       	call   400e00 <__memmove_chk@plt>
  402529:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  40252e:	66 c1 c8 08          	ror    $0x8,%ax
  402532:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  402537:	ba 10 00 00 00       	mov    $0x10,%edx
  40253c:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  402541:	89 ef                	mov    %ebp,%edi
  402543:	e8 98 e9 ff ff       	call   400ee0 <connect@plt>
  402548:	85 c0                	test   %eax,%eax
  40254a:	79 59                	jns    4025a5 <submitr+0x1d4>
  40254c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402553:	3a 20 55 
  402556:	48 89 03             	mov    %rax,(%rbx)
  402559:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402560:	20 74 6f 
  402563:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402567:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40256e:	65 63 74 
  402571:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402575:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40257c:	68 65 20 
  40257f:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402583:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  40258a:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402590:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402594:	89 ef                	mov    %ebp,%edi
  402596:	e8 15 e8 ff ff       	call   400db0 <close@plt>
  40259b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025a0:	e9 72 05 00 00       	jmp    402b17 <submitr+0x746>
  4025a5:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4025ac:	b8 00 00 00 00       	mov    $0x0,%eax
  4025b1:	48 89 f1             	mov    %rsi,%rcx
  4025b4:	4c 89 ef             	mov    %r13,%rdi
  4025b7:	f2 ae                	repnz scas %es:(%rdi),%al
  4025b9:	48 f7 d1             	not    %rcx
  4025bc:	48 89 ca             	mov    %rcx,%rdx
  4025bf:	48 89 f1             	mov    %rsi,%rcx
  4025c2:	4c 89 ff             	mov    %r15,%rdi
  4025c5:	f2 ae                	repnz scas %es:(%rdi),%al
  4025c7:	48 f7 d1             	not    %rcx
  4025ca:	49 89 c8             	mov    %rcx,%r8
  4025cd:	48 89 f1             	mov    %rsi,%rcx
  4025d0:	4c 89 f7             	mov    %r14,%rdi
  4025d3:	f2 ae                	repnz scas %es:(%rdi),%al
  4025d5:	48 f7 d1             	not    %rcx
  4025d8:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4025dd:	48 89 f1             	mov    %rsi,%rcx
  4025e0:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4025e5:	f2 ae                	repnz scas %es:(%rdi),%al
  4025e7:	48 89 c8             	mov    %rcx,%rax
  4025ea:	48 f7 d0             	not    %rax
  4025ed:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4025f2:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4025f7:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4025fe:	00 
  4025ff:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402605:	76 72                	jbe    402679 <submitr+0x2a8>
  402607:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40260e:	3a 20 52 
  402611:	48 89 03             	mov    %rax,(%rbx)
  402614:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40261b:	20 73 74 
  40261e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402622:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402629:	74 6f 6f 
  40262c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402630:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  402637:	65 2e 20 
  40263a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40263e:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402645:	61 73 65 
  402648:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40264c:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402653:	49 54 52 
  402656:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40265a:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402661:	55 46 00 
  402664:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402668:	89 ef                	mov    %ebp,%edi
  40266a:	e8 41 e7 ff ff       	call   400db0 <close@plt>
  40266f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402674:	e9 9e 04 00 00       	jmp    402b17 <submitr+0x746>
  402679:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  402680:	00 
  402681:	b9 00 04 00 00       	mov    $0x400,%ecx
  402686:	b8 00 00 00 00       	mov    $0x0,%eax
  40268b:	48 89 f7             	mov    %rsi,%rdi
  40268e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402691:	4c 89 ef             	mov    %r13,%rdi
  402694:	e8 2b fc ff ff       	call   4022c4 <urlencode>
  402699:	85 c0                	test   %eax,%eax
  40269b:	0f 89 8a 00 00 00    	jns    40272b <submitr+0x35a>
  4026a1:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4026a8:	3a 20 52 
  4026ab:	48 89 03             	mov    %rax,(%rbx)
  4026ae:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4026b5:	20 73 74 
  4026b8:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026bc:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4026c3:	63 6f 6e 
  4026c6:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026ca:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4026d1:	20 61 6e 
  4026d4:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026d8:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4026df:	67 61 6c 
  4026e2:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026e6:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4026ed:	6e 70 72 
  4026f0:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026f4:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4026fb:	6c 65 20 
  4026fe:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402702:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402709:	63 74 65 
  40270c:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402710:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402716:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  40271a:	89 ef                	mov    %ebp,%edi
  40271c:	e8 8f e6 ff ff       	call   400db0 <close@plt>
  402721:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402726:	e9 ec 03 00 00       	jmp    402b17 <submitr+0x746>
  40272b:	4c 8d ac 24 40 20 00 	lea    0x2040(%rsp),%r13
  402732:	00 
  402733:	41 54                	push   %r12
  402735:	48 8d 84 24 48 40 00 	lea    0x4048(%rsp),%rax
  40273c:	00 
  40273d:	50                   	push   %rax
  40273e:	4d 89 f9             	mov    %r15,%r9
  402741:	4d 89 f0             	mov    %r14,%r8
  402744:	b9 58 35 40 00       	mov    $0x403558,%ecx
  402749:	ba 00 20 00 00       	mov    $0x2000,%edx
  40274e:	be 01 00 00 00       	mov    $0x1,%esi
  402753:	4c 89 ef             	mov    %r13,%rdi
  402756:	b8 00 00 00 00       	mov    $0x0,%eax
  40275b:	e8 d0 e6 ff ff       	call   400e30 <__sprintf_chk@plt>
  402760:	b8 00 00 00 00       	mov    $0x0,%eax
  402765:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40276c:	4c 89 ef             	mov    %r13,%rdi
  40276f:	f2 ae                	repnz scas %es:(%rdi),%al
  402771:	48 f7 d1             	not    %rcx
  402774:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402778:	4c 89 ee             	mov    %r13,%rsi
  40277b:	89 ef                	mov    %ebp,%edi
  40277d:	e8 b1 f9 ff ff       	call   402133 <rio_writen>
  402782:	48 83 c4 10          	add    $0x10,%rsp
  402786:	48 85 c0             	test   %rax,%rax
  402789:	79 6e                	jns    4027f9 <submitr+0x428>
  40278b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402792:	3a 20 43 
  402795:	48 89 03             	mov    %rax,(%rbx)
  402798:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40279f:	20 75 6e 
  4027a2:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4027a6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4027ad:	74 6f 20 
  4027b0:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4027b4:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  4027bb:	20 74 6f 
  4027be:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4027c2:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4027c9:	72 65 73 
  4027cc:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4027d0:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  4027d7:	65 72 76 
  4027da:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4027de:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  4027e4:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  4027e8:	89 ef                	mov    %ebp,%edi
  4027ea:	e8 c1 e5 ff ff       	call   400db0 <close@plt>
  4027ef:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027f4:	e9 1e 03 00 00       	jmp    402b17 <submitr+0x746>
  4027f9:	89 ee                	mov    %ebp,%esi
  4027fb:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402800:	e8 ee f8 ff ff       	call   4020f3 <rio_readinitb>
  402805:	ba 00 20 00 00       	mov    $0x2000,%edx
  40280a:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402811:	00 
  402812:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402817:	e8 fe f9 ff ff       	call   40221a <rio_readlineb>
  40281c:	48 85 c0             	test   %rax,%rax
  40281f:	7f 7d                	jg     40289e <submitr+0x4cd>
  402821:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402828:	3a 20 43 
  40282b:	48 89 03             	mov    %rax,(%rbx)
  40282e:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402835:	20 75 6e 
  402838:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40283c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402843:	74 6f 20 
  402846:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40284a:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402851:	66 69 72 
  402854:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402858:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40285f:	61 64 65 
  402862:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402866:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  40286d:	6d 20 72 
  402870:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402874:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  40287b:	20 73 65 
  40287e:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402882:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  402889:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  40288d:	89 ef                	mov    %ebp,%edi
  40288f:	e8 1c e5 ff ff       	call   400db0 <close@plt>
  402894:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402899:	e9 79 02 00 00       	jmp    402b17 <submitr+0x746>
  40289e:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  4028a5:	00 
  4028a6:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  4028ab:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  4028b2:	00 
  4028b3:	be cf 35 40 00       	mov    $0x4035cf,%esi
  4028b8:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  4028bf:	00 
  4028c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4028c5:	e8 a6 e5 ff ff       	call   400e70 <__isoc99_sscanf@plt>
  4028ca:	e9 95 00 00 00       	jmp    402964 <submitr+0x593>
  4028cf:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028d4:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4028db:	00 
  4028dc:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4028e1:	e8 34 f9 ff ff       	call   40221a <rio_readlineb>
  4028e6:	48 85 c0             	test   %rax,%rax
  4028e9:	7f 79                	jg     402964 <submitr+0x593>
  4028eb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028f2:	3a 20 43 
  4028f5:	48 89 03             	mov    %rax,(%rbx)
  4028f8:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4028ff:	20 75 6e 
  402902:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402906:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40290d:	74 6f 20 
  402910:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402914:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  40291b:	68 65 61 
  40291e:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402922:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402929:	66 72 6f 
  40292c:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402930:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  402937:	20 72 65 
  40293a:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40293e:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402945:	73 65 72 
  402948:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40294c:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402953:	89 ef                	mov    %ebp,%edi
  402955:	e8 56 e4 ff ff       	call   400db0 <close@plt>
  40295a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40295f:	e9 b3 01 00 00       	jmp    402b17 <submitr+0x746>
  402964:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  40296b:	00 
  40296c:	b8 0d 00 00 00       	mov    $0xd,%eax
  402971:	29 d0                	sub    %edx,%eax
  402973:	75 1b                	jne    402990 <submitr+0x5bf>
  402975:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  40297c:	00 
  40297d:	b8 0a 00 00 00       	mov    $0xa,%eax
  402982:	29 d0                	sub    %edx,%eax
  402984:	75 0a                	jne    402990 <submitr+0x5bf>
  402986:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  40298d:	00 
  40298e:	f7 d8                	neg    %eax
  402990:	85 c0                	test   %eax,%eax
  402992:	0f 85 37 ff ff ff    	jne    4028cf <submitr+0x4fe>
  402998:	ba 00 20 00 00       	mov    $0x2000,%edx
  40299d:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4029a4:	00 
  4029a5:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4029aa:	e8 6b f8 ff ff       	call   40221a <rio_readlineb>
  4029af:	48 85 c0             	test   %rax,%rax
  4029b2:	0f 8f 83 00 00 00    	jg     402a3b <submitr+0x66a>
  4029b8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029bf:	3a 20 43 
  4029c2:	48 89 03             	mov    %rax,(%rbx)
  4029c5:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4029cc:	20 75 6e 
  4029cf:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4029d3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029da:	74 6f 20 
  4029dd:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4029e1:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  4029e8:	73 74 61 
  4029eb:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4029ef:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4029f6:	65 73 73 
  4029f9:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4029fd:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402a04:	72 6f 6d 
  402a07:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402a0b:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402a12:	6c 74 20 
  402a15:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402a19:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  402a20:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402a26:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402a2a:	89 ef                	mov    %ebp,%edi
  402a2c:	e8 7f e3 ff ff       	call   400db0 <close@plt>
  402a31:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a36:	e9 dc 00 00 00       	jmp    402b17 <submitr+0x746>
  402a3b:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402a40:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402a47:	74 37                	je     402a80 <submitr+0x6af>
  402a49:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402a50:	00 
  402a51:	b9 98 35 40 00       	mov    $0x403598,%ecx
  402a56:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402a5d:	be 01 00 00 00       	mov    $0x1,%esi
  402a62:	48 89 df             	mov    %rbx,%rdi
  402a65:	b8 00 00 00 00       	mov    $0x0,%eax
  402a6a:	e8 c1 e3 ff ff       	call   400e30 <__sprintf_chk@plt>
  402a6f:	89 ef                	mov    %ebp,%edi
  402a71:	e8 3a e3 ff ff       	call   400db0 <close@plt>
  402a76:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a7b:	e9 97 00 00 00       	jmp    402b17 <submitr+0x746>
  402a80:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402a87:	00 
  402a88:	48 89 df             	mov    %rbx,%rdi
  402a8b:	e8 b0 e2 ff ff       	call   400d40 <strcpy@plt>
  402a90:	89 ef                	mov    %ebp,%edi
  402a92:	e8 19 e3 ff ff       	call   400db0 <close@plt>
  402a97:	0f b6 03             	movzbl (%rbx),%eax
  402a9a:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402a9f:	29 c2                	sub    %eax,%edx
  402aa1:	75 22                	jne    402ac5 <submitr+0x6f4>
  402aa3:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402aa7:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402aac:	29 c8                	sub    %ecx,%eax
  402aae:	75 17                	jne    402ac7 <submitr+0x6f6>
  402ab0:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402ab4:	b8 0a 00 00 00       	mov    $0xa,%eax
  402ab9:	29 c8                	sub    %ecx,%eax
  402abb:	75 0a                	jne    402ac7 <submitr+0x6f6>
  402abd:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402ac1:	f7 d8                	neg    %eax
  402ac3:	eb 02                	jmp    402ac7 <submitr+0x6f6>
  402ac5:	89 d0                	mov    %edx,%eax
  402ac7:	85 c0                	test   %eax,%eax
  402ac9:	74 40                	je     402b0b <submitr+0x73a>
  402acb:	bf e0 35 40 00       	mov    $0x4035e0,%edi
  402ad0:	b9 05 00 00 00       	mov    $0x5,%ecx
  402ad5:	48 89 de             	mov    %rbx,%rsi
  402ad8:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402ada:	0f 97 c0             	seta   %al
  402add:	0f 92 c1             	setb   %cl
  402ae0:	29 c8                	sub    %ecx,%eax
  402ae2:	0f be c0             	movsbl %al,%eax
  402ae5:	85 c0                	test   %eax,%eax
  402ae7:	74 2e                	je     402b17 <submitr+0x746>
  402ae9:	85 d2                	test   %edx,%edx
  402aeb:	75 13                	jne    402b00 <submitr+0x72f>
  402aed:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402af1:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402af6:	29 c2                	sub    %eax,%edx
  402af8:	75 06                	jne    402b00 <submitr+0x72f>
  402afa:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402afe:	f7 da                	neg    %edx
  402b00:	85 d2                	test   %edx,%edx
  402b02:	75 0e                	jne    402b12 <submitr+0x741>
  402b04:	b8 00 00 00 00       	mov    $0x0,%eax
  402b09:	eb 0c                	jmp    402b17 <submitr+0x746>
  402b0b:	b8 00 00 00 00       	mov    $0x0,%eax
  402b10:	eb 05                	jmp    402b17 <submitr+0x746>
  402b12:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b17:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402b1e:	00 
  402b1f:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402b26:	00 00 
  402b28:	74 05                	je     402b2f <submitr+0x75e>
  402b2a:	e8 41 e2 ff ff       	call   400d70 <__stack_chk_fail@plt>
  402b2f:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402b36:	5b                   	pop    %rbx
  402b37:	5d                   	pop    %rbp
  402b38:	41 5c                	pop    %r12
  402b3a:	41 5d                	pop    %r13
  402b3c:	41 5e                	pop    %r14
  402b3e:	41 5f                	pop    %r15
  402b40:	c3                   	ret    

0000000000402b41 <init_timeout>:
  402b41:	85 ff                	test   %edi,%edi
  402b43:	74 23                	je     402b68 <init_timeout+0x27>
  402b45:	53                   	push   %rbx
  402b46:	89 fb                	mov    %edi,%ebx
  402b48:	85 ff                	test   %edi,%edi
  402b4a:	79 05                	jns    402b51 <init_timeout+0x10>
  402b4c:	bb 00 00 00 00       	mov    $0x0,%ebx
  402b51:	be 05 21 40 00       	mov    $0x402105,%esi
  402b56:	bf 0e 00 00 00       	mov    $0xe,%edi
  402b5b:	e8 80 e2 ff ff       	call   400de0 <signal@plt>
  402b60:	89 df                	mov    %ebx,%edi
  402b62:	e8 39 e2 ff ff       	call   400da0 <alarm@plt>
  402b67:	5b                   	pop    %rbx
  402b68:	f3 c3                	repz ret 

0000000000402b6a <init_driver>:
  402b6a:	55                   	push   %rbp
  402b6b:	53                   	push   %rbx
  402b6c:	48 83 ec 28          	sub    $0x28,%rsp
  402b70:	48 89 fd             	mov    %rdi,%rbp
  402b73:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b7a:	00 00 
  402b7c:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402b81:	31 c0                	xor    %eax,%eax
  402b83:	be 01 00 00 00       	mov    $0x1,%esi
  402b88:	bf 0d 00 00 00       	mov    $0xd,%edi
  402b8d:	e8 4e e2 ff ff       	call   400de0 <signal@plt>
  402b92:	be 01 00 00 00       	mov    $0x1,%esi
  402b97:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402b9c:	e8 3f e2 ff ff       	call   400de0 <signal@plt>
  402ba1:	be 01 00 00 00       	mov    $0x1,%esi
  402ba6:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402bab:	e8 30 e2 ff ff       	call   400de0 <signal@plt>
  402bb0:	ba 00 00 00 00       	mov    $0x0,%edx
  402bb5:	be 01 00 00 00       	mov    $0x1,%esi
  402bba:	bf 02 00 00 00       	mov    $0x2,%edi
  402bbf:	e8 3c e3 ff ff       	call   400f00 <socket@plt>
  402bc4:	85 c0                	test   %eax,%eax
  402bc6:	79 4f                	jns    402c17 <init_driver+0xad>
  402bc8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402bcf:	3a 20 43 
  402bd2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402bd6:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402bdd:	20 75 6e 
  402be0:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402be4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402beb:	74 6f 20 
  402bee:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402bf2:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402bf9:	65 20 73 
  402bfc:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402c00:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402c07:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402c0d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c12:	e9 2a 01 00 00       	jmp    402d41 <init_driver+0x1d7>
  402c17:	89 c3                	mov    %eax,%ebx
  402c19:	bf e5 35 40 00       	mov    $0x4035e5,%edi
  402c1e:	e8 cd e1 ff ff       	call   400df0 <gethostbyname@plt>
  402c23:	48 85 c0             	test   %rax,%rax
  402c26:	75 68                	jne    402c90 <init_driver+0x126>
  402c28:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402c2f:	3a 20 44 
  402c32:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c36:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402c3d:	20 75 6e 
  402c40:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402c44:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c4b:	74 6f 20 
  402c4e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c52:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402c59:	76 65 20 
  402c5c:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402c60:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402c67:	72 20 61 
  402c6a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c6e:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402c75:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402c7b:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402c7f:	89 df                	mov    %ebx,%edi
  402c81:	e8 2a e1 ff ff       	call   400db0 <close@plt>
  402c86:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c8b:	e9 b1 00 00 00       	jmp    402d41 <init_driver+0x1d7>
  402c90:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402c97:	00 
  402c98:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402c9f:	00 00 
  402ca1:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402ca7:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402cab:	48 8b 40 18          	mov    0x18(%rax),%rax
  402caf:	48 8b 30             	mov    (%rax),%rsi
  402cb2:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402cb7:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402cbc:	e8 3f e1 ff ff       	call   400e00 <__memmove_chk@plt>
  402cc1:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402cc8:	ba 10 00 00 00       	mov    $0x10,%edx
  402ccd:	48 89 e6             	mov    %rsp,%rsi
  402cd0:	89 df                	mov    %ebx,%edi
  402cd2:	e8 09 e2 ff ff       	call   400ee0 <connect@plt>
  402cd7:	85 c0                	test   %eax,%eax
  402cd9:	79 50                	jns    402d2b <init_driver+0x1c1>
  402cdb:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402ce2:	3a 20 55 
  402ce5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ce9:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402cf0:	20 74 6f 
  402cf3:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402cf7:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402cfe:	65 63 74 
  402d01:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d05:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402d0c:	65 72 76 
  402d0f:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402d13:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402d19:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402d1d:	89 df                	mov    %ebx,%edi
  402d1f:	e8 8c e0 ff ff       	call   400db0 <close@plt>
  402d24:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d29:	eb 16                	jmp    402d41 <init_driver+0x1d7>
  402d2b:	89 df                	mov    %ebx,%edi
  402d2d:	e8 7e e0 ff ff       	call   400db0 <close@plt>
  402d32:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402d38:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402d3c:	b8 00 00 00 00       	mov    $0x0,%eax
  402d41:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402d46:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402d4d:	00 00 
  402d4f:	74 05                	je     402d56 <init_driver+0x1ec>
  402d51:	e8 1a e0 ff ff       	call   400d70 <__stack_chk_fail@plt>
  402d56:	48 83 c4 28          	add    $0x28,%rsp
  402d5a:	5b                   	pop    %rbx
  402d5b:	5d                   	pop    %rbp
  402d5c:	c3                   	ret    

0000000000402d5d <driver_post>:
  402d5d:	53                   	push   %rbx
  402d5e:	4c 89 cb             	mov    %r9,%rbx
  402d61:	45 85 c0             	test   %r8d,%r8d
  402d64:	74 27                	je     402d8d <driver_post+0x30>
  402d66:	48 89 ca             	mov    %rcx,%rdx
  402d69:	be fd 35 40 00       	mov    $0x4035fd,%esi
  402d6e:	bf 01 00 00 00       	mov    $0x1,%edi
  402d73:	b8 00 00 00 00       	mov    $0x0,%eax
  402d78:	e8 73 df ff ff       	call   400cf0 <__printf_chk@plt>
  402d7d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402d82:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402d86:	b8 00 00 00 00       	mov    $0x0,%eax
  402d8b:	eb 3f                	jmp    402dcc <driver_post+0x6f>
  402d8d:	48 85 ff             	test   %rdi,%rdi
  402d90:	74 2c                	je     402dbe <driver_post+0x61>
  402d92:	80 3f 00             	cmpb   $0x0,(%rdi)
  402d95:	74 27                	je     402dbe <driver_post+0x61>
  402d97:	48 83 ec 08          	sub    $0x8,%rsp
  402d9b:	41 51                	push   %r9
  402d9d:	49 89 c9             	mov    %rcx,%r9
  402da0:	49 89 d0             	mov    %rdx,%r8
  402da3:	48 89 f9             	mov    %rdi,%rcx
  402da6:	48 89 f2             	mov    %rsi,%rdx
  402da9:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402dae:	bf e5 35 40 00       	mov    $0x4035e5,%edi
  402db3:	e8 19 f6 ff ff       	call   4023d1 <submitr>
  402db8:	48 83 c4 10          	add    $0x10,%rsp
  402dbc:	eb 0e                	jmp    402dcc <driver_post+0x6f>
  402dbe:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402dc3:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402dc7:	b8 00 00 00 00       	mov    $0x0,%eax
  402dcc:	5b                   	pop    %rbx
  402dcd:	c3                   	ret    

0000000000402dce <check>:
  402dce:	89 f8                	mov    %edi,%eax
  402dd0:	c1 e8 1c             	shr    $0x1c,%eax
  402dd3:	85 c0                	test   %eax,%eax
  402dd5:	74 1d                	je     402df4 <check+0x26>
  402dd7:	b9 00 00 00 00       	mov    $0x0,%ecx
  402ddc:	eb 0b                	jmp    402de9 <check+0x1b>
  402dde:	89 f8                	mov    %edi,%eax
  402de0:	d3 e8                	shr    %cl,%eax
  402de2:	3c 0a                	cmp    $0xa,%al
  402de4:	74 14                	je     402dfa <check+0x2c>
  402de6:	83 c1 08             	add    $0x8,%ecx
  402de9:	83 f9 1f             	cmp    $0x1f,%ecx
  402dec:	7e f0                	jle    402dde <check+0x10>
  402dee:	b8 01 00 00 00       	mov    $0x1,%eax
  402df3:	c3                   	ret    
  402df4:	b8 00 00 00 00       	mov    $0x0,%eax
  402df9:	c3                   	ret    
  402dfa:	b8 00 00 00 00       	mov    $0x0,%eax
  402dff:	c3                   	ret    

0000000000402e00 <gencookie>:
  402e00:	53                   	push   %rbx
  402e01:	83 c7 01             	add    $0x1,%edi
  402e04:	e8 17 df ff ff       	call   400d20 <srandom@plt>
  402e09:	e8 42 e0 ff ff       	call   400e50 <random@plt>
  402e0e:	89 c3                	mov    %eax,%ebx
  402e10:	89 c7                	mov    %eax,%edi
  402e12:	e8 b7 ff ff ff       	call   402dce <check>
  402e17:	85 c0                	test   %eax,%eax
  402e19:	74 ee                	je     402e09 <gencookie+0x9>
  402e1b:	89 d8                	mov    %ebx,%eax
  402e1d:	5b                   	pop    %rbx
  402e1e:	c3                   	ret    
  402e1f:	90                   	nop

0000000000402e20 <__libc_csu_init>:
  402e20:	41 57                	push   %r15
  402e22:	41 56                	push   %r14
  402e24:	41 89 ff             	mov    %edi,%r15d
  402e27:	41 55                	push   %r13
  402e29:	41 54                	push   %r12
  402e2b:	4c 8d 25 ce 0f 20 00 	lea    0x200fce(%rip),%r12        # 603e00 <__frame_dummy_init_array_entry>
  402e32:	55                   	push   %rbp
  402e33:	48 8d 2d ce 0f 20 00 	lea    0x200fce(%rip),%rbp        # 603e08 <__do_global_dtors_aux_fini_array_entry>
  402e3a:	53                   	push   %rbx
  402e3b:	49 89 f6             	mov    %rsi,%r14
  402e3e:	49 89 d5             	mov    %rdx,%r13
  402e41:	4c 29 e5             	sub    %r12,%rbp
  402e44:	48 83 ec 08          	sub    $0x8,%rsp
  402e48:	48 c1 fd 03          	sar    $0x3,%rbp
  402e4c:	e8 6f de ff ff       	call   400cc0 <_init>
  402e51:	48 85 ed             	test   %rbp,%rbp
  402e54:	74 20                	je     402e76 <__libc_csu_init+0x56>
  402e56:	31 db                	xor    %ebx,%ebx
  402e58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402e5f:	00 
  402e60:	4c 89 ea             	mov    %r13,%rdx
  402e63:	4c 89 f6             	mov    %r14,%rsi
  402e66:	44 89 ff             	mov    %r15d,%edi
  402e69:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  402e6d:	48 83 c3 01          	add    $0x1,%rbx
  402e71:	48 39 eb             	cmp    %rbp,%rbx
  402e74:	75 ea                	jne    402e60 <__libc_csu_init+0x40>
  402e76:	48 83 c4 08          	add    $0x8,%rsp
  402e7a:	5b                   	pop    %rbx
  402e7b:	5d                   	pop    %rbp
  402e7c:	41 5c                	pop    %r12
  402e7e:	41 5d                	pop    %r13
  402e80:	41 5e                	pop    %r14
  402e82:	41 5f                	pop    %r15
  402e84:	c3                   	ret    
  402e85:	90                   	nop
  402e86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402e8d:	00 00 00 

0000000000402e90 <__libc_csu_fini>:
  402e90:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000402e94 <_fini>:
  402e94:	48 83 ec 08          	sub    $0x8,%rsp
  402e98:	48 83 c4 08          	add    $0x8,%rsp
  402e9c:	c3                   	ret    
