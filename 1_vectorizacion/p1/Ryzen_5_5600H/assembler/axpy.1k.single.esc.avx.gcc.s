
axpy.1k.single.esc.avx.gcc:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 82 2f 00 00    	push   0x2f82(%rip)        # 3fa8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 84 2f 00 00    	jmp    *0x2f84(%rip)        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   %ax,%ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   %ax,%ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <_init+0x20>
    105e:	66 90                	xchg   %ax,%ax
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <_init+0x20>
    106e:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

0000000000001070 <__cxa_finalize@plt>:
    1070:	f3 0f 1e fa          	endbr64
    1074:	ff 25 7e 2f 00 00    	jmp    *0x2f7e(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    107a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001080 <__stack_chk_fail@plt>:
    1080:	f3 0f 1e fa          	endbr64
    1084:	ff 25 2e 2f 00 00    	jmp    *0x2f2e(%rip)        # 3fb8 <__stack_chk_fail@GLIBC_2.4>
    108a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001090 <gettimeofday@plt>:
    1090:	f3 0f 1e fa          	endbr64
    1094:	ff 25 26 2f 00 00    	jmp    *0x2f26(%rip)        # 3fc0 <gettimeofday@GLIBC_2.2.5>
    109a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010a0 <__printf_chk@plt>:
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	ff 25 1e 2f 00 00    	jmp    *0x2f1e(%rip)        # 3fc8 <__printf_chk@GLIBC_2.3.4>
    10aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010b0 <exit@plt>:
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	ff 25 16 2f 00 00    	jmp    *0x2f16(%rip)        # 3fd0 <exit@GLIBC_2.2.5>
    10ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010c0 <main>:
  return 0;
}
#endif

int main()
{
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	50                   	push   %rax
    10c5:	58                   	pop    %rax
}

__fortify_function int
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
    10c6:	48 8d 35 8b 0f 00 00 	lea    0xf8b(%rip),%rsi        # 2058 <_IO_stdin_used+0x58>
    10cd:	bf 01 00 00 00       	mov    $0x1,%edi
    10d2:	31 c0                	xor    %eax,%eax
    10d4:	48 83 ec 08          	sub    $0x8,%rsp
    10d8:	e8 c3 ff ff ff       	call   10a0 <__printf_chk@plt>
    10dd:	48 8d 35 9c 0f 00 00 	lea    0xf9c(%rip),%rsi        # 2080 <_IO_stdin_used+0x80>
    10e4:	bf 01 00 00 00       	mov    $0x1,%edi
    10e9:	31 c0                	xor    %eax,%eax
    10eb:	e8 b0 ff ff ff       	call   10a0 <__printf_chk@plt>
  printf("                     Time    TPE\n");
  printf("              Loop    ns     ps/el     Checksum \n");
  axpy();
    10f0:	31 c0                	xor    %eax,%eax
    10f2:	e8 a9 02 00 00       	call   13a0 <axpy>
    10f7:	bf 01 00 00 00       	mov    $0x1,%edi
    10fc:	31 c0                	xor    %eax,%eax
    10fe:	b9 00 00 f0 00       	mov    $0xf00000,%ecx
    1103:	ba 00 04 00 00       	mov    $0x400,%edx
    1108:	48 8d 35 2f 0f 00 00 	lea    0xf2f(%rip),%rsi        # 203e <_IO_stdin_used+0x3e>
    110f:	e8 8c ff ff ff       	call   10a0 <__printf_chk@plt>
  // axpy_intr_SSE();
  // axpy_intr_AVX();
  printf("\nLEN: %u, NTIMES: %lu\n\n", LEN, NTIMES);
  exit(0);
    1114:	31 ff                	xor    %edi,%edi
    1116:	e8 95 ff ff ff       	call   10b0 <exit@plt>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <_start>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	31 ed                	xor    %ebp,%ebp
    1126:	49 89 d1             	mov    %rdx,%r9
    1129:	5e                   	pop    %rsi
    112a:	48 89 e2             	mov    %rsp,%rdx
    112d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1131:	50                   	push   %rax
    1132:	54                   	push   %rsp
    1133:	45 31 c0             	xor    %r8d,%r8d
    1136:	31 c9                	xor    %ecx,%ecx
    1138:	48 8d 3d 81 ff ff ff 	lea    -0x7f(%rip),%rdi        # 10c0 <main>
    113f:	ff 15 93 2e 00 00    	call   *0x2e93(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1145:	f4                   	hlt
    1146:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    114d:	00 00 00 
    1150:	48 8d 3d b9 2e 00 00 	lea    0x2eb9(%rip),%rdi        # 4010 <__TMC_END__>
    1157:	48 8d 05 b2 2e 00 00 	lea    0x2eb2(%rip),%rax        # 4010 <__TMC_END__>
    115e:	48 39 f8             	cmp    %rdi,%rax
    1161:	74 1d                	je     1180 <_start+0x60>
    1163:	48 8b 05 76 2e 00 00 	mov    0x2e76(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    116a:	48 85 c0             	test   %rax,%rax
    116d:	74 11                	je     1180 <_start+0x60>
    116f:	ff e0                	jmp    *%rax
    1171:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1178:	00 00 00 00 
    117c:	0f 1f 40 00          	nopl   0x0(%rax)
    1180:	c3                   	ret
    1181:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1188:	00 00 00 00 
    118c:	0f 1f 40 00          	nopl   0x0(%rax)
    1190:	48 8d 3d 79 2e 00 00 	lea    0x2e79(%rip),%rdi        # 4010 <__TMC_END__>
    1197:	48 8d 35 72 2e 00 00 	lea    0x2e72(%rip),%rsi        # 4010 <__TMC_END__>
    119e:	48 29 fe             	sub    %rdi,%rsi
    11a1:	48 89 f0             	mov    %rsi,%rax
    11a4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11a8:	48 c1 f8 03          	sar    $0x3,%rax
    11ac:	48 01 c6             	add    %rax,%rsi
    11af:	48 d1 fe             	sar    $1,%rsi
    11b2:	74 1c                	je     11d0 <_start+0xb0>
    11b4:	48 8b 05 35 2e 00 00 	mov    0x2e35(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    11bb:	48 85 c0             	test   %rax,%rax
    11be:	74 10                	je     11d0 <_start+0xb0>
    11c0:	ff e0                	jmp    *%rax
    11c2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    11c9:	00 00 00 00 
    11cd:	0f 1f 00             	nopl   (%rax)
    11d0:	c3                   	ret
    11d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    11d8:	00 00 00 00 
    11dc:	0f 1f 40 00          	nopl   0x0(%rax)
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	80 3d 55 2e 00 00 00 	cmpb   $0x0,0x2e55(%rip)        # 4040 <__bss_start>
    11eb:	75 33                	jne    1220 <_start+0x100>
    11ed:	48 83 3d 03 2e 00 00 	cmpq   $0x0,0x2e03(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11f4:	00 
    11f5:	55                   	push   %rbp
    11f6:	48 89 e5             	mov    %rsp,%rbp
    11f9:	74 0c                	je     1207 <_start+0xe7>
    11fb:	48 8b 3d 06 2e 00 00 	mov    0x2e06(%rip),%rdi        # 4008 <__dso_handle>
    1202:	e8 69 fe ff ff       	call   1070 <__cxa_finalize@plt>
    1207:	e8 44 ff ff ff       	call   1150 <_start+0x30>
    120c:	5d                   	pop    %rbp
    120d:	c6 05 2c 2e 00 00 01 	movb   $0x1,0x2e2c(%rip)        # 4040 <__bss_start>
    1214:	c3                   	ret
    1215:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    121c:	00 00 00 00 
    1220:	c3                   	ret
    1221:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1228:	00 00 00 00 
    122c:	0f 1f 40 00          	nopl   0x0(%rax)
    1230:	f3 0f 1e fa          	endbr64
    1234:	e9 57 ff ff ff       	jmp    1190 <_start+0x70>

0000000000001239 <dummy>:
    1239:	f3 0f 1e fa          	endbr64
    123d:	55                   	push   %rbp
    123e:	48 89 e5             	mov    %rsp,%rbp
    1241:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1245:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1249:	f3 0f 11 45 ec       	movss  %xmm0,-0x14(%rbp)
    124e:	b8 00 00 00 00       	mov    $0x0,%eax
    1253:	5d                   	pop    %rbp
    1254:	c3                   	ret
    1255:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    125c:	00 00 00 
    125f:	90                   	nop

0000000000001260 <get_wall_time>:
{
    1260:	f3 0f 1e fa          	endbr64
    1264:	48 83 ec 28          	sub    $0x28,%rsp
    if (gettimeofday(&time,NULL)) {
    1268:	31 f6                	xor    %esi,%esi
    126a:	64 48 8b 3c 25 28 00 	mov    %fs:0x28,%rdi
    1271:	00 00 
    1273:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    1278:	48 89 e7             	mov    %rsp,%rdi
    127b:	e8 10 fe ff ff       	call   1090 <gettimeofday@plt>
    1280:	85 c0                	test   %eax,%eax
    1282:	75 32                	jne    12b6 <get_wall_time+0x56>
    return (double)time.tv_sec + (double)time.tv_usec * .000001;
    1284:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    1288:	c4 e1 f3 2a 44 24 08 	vcvtsi2sdq 0x8(%rsp),%xmm1,%xmm0
    128f:	c5 fb 59 05 21 0e 00 	vmulsd 0xe21(%rip),%xmm0,%xmm0        # 20b8 <_IO_stdin_used+0xb8>
    1296:	00 
    1297:	c4 e1 f3 2a 0c 24    	vcvtsi2sdq (%rsp),%xmm1,%xmm1
    129d:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
}
    12a1:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    12a6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    12ad:	00 00 
    12af:	75 0d                	jne    12be <get_wall_time+0x5e>
    12b1:	48 83 c4 28          	add    $0x28,%rsp
    12b5:	c3                   	ret
        exit(-1); // return 0;
    12b6:	83 cf ff             	or     $0xffffffff,%edi
    12b9:	e8 f2 fd ff ff       	call   10b0 <exit@plt>
}
    12be:	e8 bd fd ff ff       	call   1080 <__stack_chk_fail@plt>
    12c3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    12ca:	00 00 00 00 
    12ce:	66 90                	xchg   %ax,%ax

00000000000012d0 <check>:
{
    12d0:	f3 0f 1e fa          	endbr64
  for (unsigned int i = 0; i < LEN; i++)
    12d4:	48 8d 87 00 10 00 00 	lea    0x1000(%rdi),%rax
    real sum = 0;
    12db:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    12df:	90                   	nop
        sum += arr[i];
    12e0:	c5 fa 58 07          	vaddss (%rdi),%xmm0,%xmm0
  for (unsigned int i = 0; i < LEN; i++)
    12e4:	48 83 c7 08          	add    $0x8,%rdi
        sum += arr[i];
    12e8:	c5 fa 58 47 fc       	vaddss -0x4(%rdi),%xmm0,%xmm0
  for (unsigned int i = 0; i < LEN; i++)
    12ed:	48 39 f8             	cmp    %rdi,%rax
    12f0:	75 ee                	jne    12e0 <check+0x10>
    12f2:	48 8d 35 13 0d 00 00 	lea    0xd13(%rip),%rsi        # 200c <_IO_stdin_used+0xc>
    12f9:	bf 01 00 00 00       	mov    $0x1,%edi
    12fe:	b8 01 00 00 00       	mov    $0x1,%eax
    printf("%f \n", sum);
    1303:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
    1307:	e9 94 fd ff ff       	jmp    10a0 <__printf_chk@plt>
    130c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001310 <init>:
{
    1310:	f3 0f 1e fa          	endbr64
    1314:	31 c0                	xor    %eax,%eax
    1316:	c5 fa 10 0d e6 0c 00 	vmovss 0xce6(%rip),%xmm1        # 2004 <_IO_stdin_used+0x4>
    131d:	00 
    131e:	c5 fa 10 05 e2 0c 00 	vmovss 0xce2(%rip),%xmm0        # 2008 <_IO_stdin_used+0x8>
    1325:	00 
    1326:	48 8d 0d 53 3d 00 00 	lea    0x3d53(%rip),%rcx        # 5080 <x>
    132d:	48 8d 15 4c 2d 00 00 	lea    0x2d4c(%rip),%rdx        # 4080 <y>
    1334:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    133b:	00 00 00 00 
    133f:	90                   	nop
	    x[j] = 2.0;
    1340:	c5 fa 11 0c 01       	vmovss %xmm1,(%rcx,%rax,1)
	    y[j] = 0.5;
    1345:	c5 fa 11 04 02       	vmovss %xmm0,(%rdx,%rax,1)
    for (unsigned int j = 0; j < LEN; j++)
    134a:	48 83 c0 04          	add    $0x4,%rax
    134e:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
    1354:	75 ea                	jne    1340 <init+0x30>
}
    1356:	31 c0                	xor    %eax,%eax
    1358:	c3                   	ret
    1359:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001360 <results>:
{
    1360:	f3 0f 1e fa          	endbr64
    1364:	48 89 fa             	mov    %rdi,%rdx
    printf("%18s  %5.1f    %5.1f     ",
    1367:	c5 fb 5e 15 59 0d 00 	vdivsd 0xd59(%rip),%xmm0,%xmm2        # 20c8 <_IO_stdin_used+0xc8>
    136e:	00 
    136f:	c5 fb 5e 0d 49 0d 00 	vdivsd 0xd49(%rip),%xmm0,%xmm1        # 20c0 <_IO_stdin_used+0xc0>
    1376:	00 
    1377:	c5 f9 28 c2          	vmovapd %xmm2,%xmm0
    137b:	48 8d 35 8f 0c 00 00 	lea    0xc8f(%rip),%rsi        # 2011 <_IO_stdin_used+0x11>
    1382:	bf 01 00 00 00       	mov    $0x1,%edi
    1387:	b8 02 00 00 00       	mov    $0x2,%eax
    138c:	e9 0f fd ff ff       	jmp    10a0 <__printf_chk@plt>
    1391:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1398:	00 00 00 00 
    139c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000013a0 <axpy>:
{
    13a0:	f3 0f 1e fa          	endbr64
    13a4:	41 55                	push   %r13
    init();
    13a6:	31 c0                	xor    %eax,%eax
{
    13a8:	41 54                	push   %r12
    13aa:	4c 8d 25 cf 3c 00 00 	lea    0x3ccf(%rip),%r12        # 5080 <x>
    13b1:	55                   	push   %rbp
    13b2:	4d 8d ac 24 00 10 00 	lea    0x1000(%r12),%r13
    13b9:	00 
    13ba:	48 8d 2d bf 2c 00 00 	lea    0x2cbf(%rip),%rbp        # 4080 <y>
    13c1:	53                   	push   %rbx
    start_t = get_wall_time();
    13c2:	bb 00 00 f0 00       	mov    $0xf00000,%ebx
{
    13c7:	48 83 ec 18          	sub    $0x18,%rsp
    init();
    13cb:	e8 40 ff ff ff       	call   1310 <init>
    start_t = get_wall_time();
    13d0:	31 c0                	xor    %eax,%eax
    13d2:	e8 89 fe ff ff       	call   1260 <get_wall_time>
    13d7:	c5 fa 10 0d f1 0c 00 	vmovss 0xcf1(%rip),%xmm1        # 20d0 <_IO_stdin_used+0xd0>
    13de:	00 
    13df:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
        for (unsigned int i = 0; i < LEN; i++)
    13e5:	48 8d 15 94 3c 00 00 	lea    0x3c94(%rip),%rdx        # 5080 <x>
    13ec:	48 8d 05 8d 2c 00 00 	lea    0x2c8d(%rip),%rax        # 4080 <y>
    13f3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    13fa:	00 00 00 00 
    13fe:	66 90                	xchg   %ax,%ax
            y[i] = alpha*x[i] + y[i];
    1400:	c5 f2 59 02          	vmulss (%rdx),%xmm1,%xmm0
        for (unsigned int i = 0; i < LEN; i++)
    1404:	48 83 c2 04          	add    $0x4,%rdx
    1408:	48 83 c0 04          	add    $0x4,%rax
            y[i] = alpha*x[i] + y[i];
    140c:	c5 fa 58 40 fc       	vaddss -0x4(%rax),%xmm0,%xmm0
    1411:	c5 fa 11 40 fc       	vmovss %xmm0,-0x4(%rax)
        for (unsigned int i = 0; i < LEN; i++)
    1416:	4c 39 ea             	cmp    %r13,%rdx
    1419:	75 e5                	jne    1400 <axpy+0x60>
        dummy(x, y, alpha);
    141b:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
    141f:	48 89 ee             	mov    %rbp,%rsi
    1422:	4c 89 e7             	mov    %r12,%rdi
    1425:	e8 0f fe ff ff       	call   1239 <dummy>
    for (unsigned int nl = 0; nl < NTIMES; nl++)
    142a:	83 eb 01             	sub    $0x1,%ebx
    142d:	c5 fa 10 0d 9b 0c 00 	vmovss 0xc9b(%rip),%xmm1        # 20d0 <_IO_stdin_used+0xd0>
    1434:	00 
    1435:	75 ae                	jne    13e5 <axpy+0x45>
    end_t = get_wall_time();
    1437:	31 c0                	xor    %eax,%eax
    1439:	e8 22 fe ff ff       	call   1260 <get_wall_time>
    results(end_t - start_t, "axpy");
    143e:	c5 fb 5c 44 24 08    	vsubsd 0x8(%rsp),%xmm0,%xmm0
    1444:	48 8d 3d e0 0b 00 00 	lea    0xbe0(%rip),%rdi        # 202b <_IO_stdin_used+0x2b>
    144b:	e8 10 ff ff ff       	call   1360 <results>
    check(y);
    1450:	48 89 ef             	mov    %rbp,%rdi
    1453:	e8 78 fe ff ff       	call   12d0 <check>
}
    1458:	48 83 c4 18          	add    $0x18,%rsp
    145c:	31 c0                	xor    %eax,%eax
    145e:	5b                   	pop    %rbx
    145f:	5d                   	pop    %rbp
    1460:	41 5c                	pop    %r12
    1462:	41 5d                	pop    %r13
    1464:	c3                   	ret
    1465:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    146c:	00 00 00 00 

0000000000001470 <axpy_intr_SSE>:
{
    1470:	f3 0f 1e fa          	endbr64
    1474:	41 55                	push   %r13
    init();
    1476:	31 c0                	xor    %eax,%eax
    1478:	4c 8d 2d 01 3c 00 00 	lea    0x3c01(%rip),%r13        # 5080 <x>
{
    147f:	41 54                	push   %r12
    1481:	4c 8d 25 f8 2b 00 00 	lea    0x2bf8(%rip),%r12        # 4080 <y>
    1488:	55                   	push   %rbp
    start_t = get_wall_time();
    1489:	bd 00 00 f0 00       	mov    $0xf00000,%ebp
{
    148e:	53                   	push   %rbx
    148f:	49 8d 9d 00 10 00 00 	lea    0x1000(%r13),%rbx
    1496:	48 83 ec 18          	sub    $0x18,%rsp
    init();
    149a:	e8 71 fe ff ff       	call   1310 <init>
    start_t = get_wall_time();
    149f:	31 c0                	xor    %eax,%eax
    14a1:	e8 ba fd ff ff       	call   1260 <get_wall_time>
    14a6:	c4 e2 79 18 0d 21 0c 	vbroadcastss 0xc21(%rip),%xmm1        # 20d0 <_IO_stdin_used+0xd0>
    14ad:	00 00 
    14af:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
        for (unsigned int i = 0; i < LEN; i+= SSE_LEN)
    14b5:	48 8d 15 c4 3b 00 00 	lea    0x3bc4(%rip),%rdx        # 5080 <x>
    14bc:	48 8d 05 bd 2b 00 00 	lea    0x2bbd(%rip),%rax        # 4080 <y>
    14c3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    14ca:	00 00 00 00 
    14ce:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    14d5:	00 00 00 00 
    14d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
}

extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mul_ps (__m128 __A, __m128 __B)
{
  return (__m128) ((__v4sf)__A * (__v4sf)__B);
    14e0:	c5 f0 59 02          	vmulps (%rdx),%xmm1,%xmm0
    14e4:	48 83 c2 10          	add    $0x10,%rdx
    14e8:	48 83 c0 10          	add    $0x10,%rax
  return (__m128) ((__v4sf)__A + (__v4sf)__B);
    14ec:	c5 f8 58 40 f0       	vaddps -0x10(%rax),%xmm0,%xmm0

/* Store four SPFP values.  The address must be 16-byte aligned.  */
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_store_ps (float *__P, __m128 __A)
{
  *(__m128 *)__P = __A;
    14f1:	c5 f8 29 40 f0       	vmovaps %xmm0,-0x10(%rax)
    14f6:	48 39 d3             	cmp    %rdx,%rbx
    14f9:	75 e5                	jne    14e0 <axpy_intr_SSE+0x70>
        dummy(x, y, alpha);
    14fb:	c5 fa 10 05 cd 0b 00 	vmovss 0xbcd(%rip),%xmm0        # 20d0 <_IO_stdin_used+0xd0>
    1502:	00 
    1503:	4c 89 e6             	mov    %r12,%rsi
    1506:	4c 89 ef             	mov    %r13,%rdi
    1509:	e8 2b fd ff ff       	call   1239 <dummy>
    for (unsigned int nl = 0; nl < NTIMES; nl++)
    150e:	83 ed 01             	sub    $0x1,%ebp
    1511:	c5 f8 28 0d b7 0b 00 	vmovaps 0xbb7(%rip),%xmm1        # 20d0 <_IO_stdin_used+0xd0>
    1518:	00 
    1519:	75 9a                	jne    14b5 <axpy_intr_SSE+0x45>
  end_t = get_wall_time();
    151b:	31 c0                	xor    %eax,%eax
    151d:	e8 3e fd ff ff       	call   1260 <get_wall_time>
  results(end_t - start_t, "axpy_intr_SSE");
    1522:	c5 fb 5c 44 24 08    	vsubsd 0x8(%rsp),%xmm0,%xmm0
    1528:	48 8d 3d 01 0b 00 00 	lea    0xb01(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    152f:	e8 2c fe ff ff       	call   1360 <results>
  check(y);
    1534:	4c 89 e7             	mov    %r12,%rdi
    1537:	e8 94 fd ff ff       	call   12d0 <check>
}
    153c:	48 83 c4 18          	add    $0x18,%rsp
    1540:	31 c0                	xor    %eax,%eax
    1542:	5b                   	pop    %rbx
    1543:	5d                   	pop    %rbp
    1544:	41 5c                	pop    %r12
    1546:	41 5d                	pop    %r13
    1548:	c3                   	ret

Disassembly of section .fini:

000000000000154c <_fini>:
    154c:	f3 0f 1e fa          	endbr64
    1550:	48 83 ec 08          	sub    $0x8,%rsp
    1554:	48 83 c4 08          	add    $0x8,%rsp
    1558:	c3                   	ret
