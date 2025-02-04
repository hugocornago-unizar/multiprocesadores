
axpy.1k.single.vec.avx512.32loopalign.gcc:     file format elf64-x86-64


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
    10f2:	e8 c9 02 00 00       	call   13c0 <axpy>
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
    125f:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1266:	00 00 00 
    1269:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1270:	00 00 00 
    1273:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    127a:	00 00 00 
    127d:	0f 1f 00             	nopl   (%rax)

0000000000001280 <get_wall_time>:
{
    1280:	f3 0f 1e fa          	endbr64
    1284:	48 83 ec 28          	sub    $0x28,%rsp
    if (gettimeofday(&time,NULL)) {
    1288:	31 f6                	xor    %esi,%esi
    128a:	64 48 8b 3c 25 28 00 	mov    %fs:0x28,%rdi
    1291:	00 00 
    1293:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    1298:	48 89 e7             	mov    %rsp,%rdi
    129b:	e8 f0 fd ff ff       	call   1090 <gettimeofday@plt>
    12a0:	85 c0                	test   %eax,%eax
    12a2:	75 32                	jne    12d6 <get_wall_time+0x56>
    return (double)time.tv_sec + (double)time.tv_usec * .000001;
    12a4:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    12a8:	c4 e1 f3 2a 44 24 08 	vcvtsi2sdq 0x8(%rsp),%xmm1,%xmm0
    12af:	c5 fb 59 05 01 0e 00 	vmulsd 0xe01(%rip),%xmm0,%xmm0        # 20b8 <_IO_stdin_used+0xb8>
    12b6:	00 
    12b7:	c4 e1 f3 2a 0c 24    	vcvtsi2sdq (%rsp),%xmm1,%xmm1
    12bd:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
}
    12c1:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    12c6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    12cd:	00 00 
    12cf:	75 0d                	jne    12de <get_wall_time+0x5e>
    12d1:	48 83 c4 28          	add    $0x28,%rsp
    12d5:	c3                   	ret
        exit(-1); // return 0;
    12d6:	83 cf ff             	or     $0xffffffff,%edi
    12d9:	e8 d2 fd ff ff       	call   10b0 <exit@plt>
}
    12de:	e8 9d fd ff ff       	call   1080 <__stack_chk_fail@plt>
    12e3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    12ea:	00 00 00 00 
    12ee:	66 90                	xchg   %ax,%ax

00000000000012f0 <check>:
{
    12f0:	f3 0f 1e fa          	endbr64
  for (unsigned int i = 0; i < LEN; i++)
    12f4:	48 8d 87 00 10 00 00 	lea    0x1000(%rdi),%rax
    real sum = 0;
    12fb:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    12ff:	90                   	nop
        sum += arr[i];
    1300:	c5 fa 58 07          	vaddss (%rdi),%xmm0,%xmm0
  for (unsigned int i = 0; i < LEN; i++)
    1304:	48 83 c7 08          	add    $0x8,%rdi
        sum += arr[i];
    1308:	c5 fa 58 47 fc       	vaddss -0x4(%rdi),%xmm0,%xmm0
  for (unsigned int i = 0; i < LEN; i++)
    130d:	48 39 f8             	cmp    %rdi,%rax
    1310:	75 ee                	jne    1300 <check+0x10>
    1312:	bf 01 00 00 00       	mov    $0x1,%edi
    1317:	48 8d 35 ee 0c 00 00 	lea    0xcee(%rip),%rsi        # 200c <_IO_stdin_used+0xc>
    131e:	b8 01 00 00 00       	mov    $0x1,%eax
    printf("%f \n", sum);
    1323:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
    1327:	e9 74 fd ff ff       	jmp    10a0 <__printf_chk@plt>
    132c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001330 <init>:
{
    1330:	f3 0f 1e fa          	endbr64
    1334:	31 c0                	xor    %eax,%eax
    1336:	48 8d 0d 43 3d 00 00 	lea    0x3d43(%rip),%rcx        # 5080 <x>
    133d:	c5 fa 10 0d bf 0c 00 	vmovss 0xcbf(%rip),%xmm1        # 2004 <_IO_stdin_used+0x4>
    1344:	00 
    1345:	c5 fa 10 05 bb 0c 00 	vmovss 0xcbb(%rip),%xmm0        # 2008 <_IO_stdin_used+0x8>
    134c:	00 
    134d:	48 8d 15 2c 2d 00 00 	lea    0x2d2c(%rip),%rdx        # 4080 <y>
    1354:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    135b:	00 00 00 00 
    135f:	90                   	nop
	    x[j] = 2.0;
    1360:	c5 fa 11 0c 01       	vmovss %xmm1,(%rcx,%rax,1)
	    y[j] = 0.5;
    1365:	c5 fa 11 04 02       	vmovss %xmm0,(%rdx,%rax,1)
    for (unsigned int j = 0; j < LEN; j++)
    136a:	48 83 c0 04          	add    $0x4,%rax
    136e:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
    1374:	75 ea                	jne    1360 <init+0x30>
}
    1376:	31 c0                	xor    %eax,%eax
    1378:	c3                   	ret
    1379:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001380 <results>:
{
    1380:	f3 0f 1e fa          	endbr64
    1384:	48 89 fa             	mov    %rdi,%rdx
    printf("%18s  %5.1f    %5.1f     ",
    1387:	c5 fb 5e 15 39 0d 00 	vdivsd 0xd39(%rip),%xmm0,%xmm2        # 20c8 <_IO_stdin_used+0xc8>
    138e:	00 
    138f:	c5 fb 5e 0d 29 0d 00 	vdivsd 0xd29(%rip),%xmm0,%xmm1        # 20c0 <_IO_stdin_used+0xc0>
    1396:	00 
    1397:	48 8d 35 73 0c 00 00 	lea    0xc73(%rip),%rsi        # 2011 <_IO_stdin_used+0x11>
    139e:	c5 f9 28 c2          	vmovapd %xmm2,%xmm0
    13a2:	bf 01 00 00 00       	mov    $0x1,%edi
    13a7:	b8 02 00 00 00       	mov    $0x2,%eax
    13ac:	e9 ef fc ff ff       	jmp    10a0 <__printf_chk@plt>
    13b1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    13b8:	00 00 00 00 
    13bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000013c0 <axpy>:
{
    13c0:	f3 0f 1e fa          	endbr64
    13c4:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    13c9:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    init();
    13cd:	31 c0                	xor    %eax,%eax
{
    13cf:	41 ff 72 f8          	push   -0x8(%r10)
    13d3:	55                   	push   %rbp
    13d4:	48 89 e5             	mov    %rsp,%rbp
    13d7:	41 56                	push   %r14
    13d9:	41 55                	push   %r13
    13db:	4c 8d 2d 9e 3c 00 00 	lea    0x3c9e(%rip),%r13        # 5080 <x>
    13e2:	41 54                	push   %r12
    13e4:	4c 8d 25 95 2c 00 00 	lea    0x2c95(%rip),%r12        # 4080 <y>
    13eb:	41 52                	push   %r10
    13ed:	4d 8d b4 24 00 10 00 	lea    0x1000(%r12),%r14
    13f4:	00 
    13f5:	53                   	push   %rbx
    start_t = get_wall_time();
    13f6:	bb 00 00 f0 00       	mov    $0xf00000,%ebx
{
    13fb:	48 83 ec 48          	sub    $0x48,%rsp
    init();
    13ff:	e8 2c ff ff ff       	call   1330 <init>
    start_t = get_wall_time();
    1404:	31 c0                	xor    %eax,%eax
    1406:	e8 75 fe ff ff       	call   1280 <get_wall_time>
    140b:	62 f2 7d 48 18 0d eb 	vbroadcastss 0xceb(%rip),%zmm1        # 2100 <_IO_stdin_used+0x100>
    1412:	0c 00 00 
    1415:	c5 fb 11 45 c8       	vmovsd %xmm0,-0x38(%rbp)
        for (unsigned int i = 0; i < LEN; i++)
    141a:	48 8d 05 5f 2c 00 00 	lea    0x2c5f(%rip),%rax        # 4080 <y>
    1421:	48 8d 15 58 3c 00 00 	lea    0x3c58(%rip),%rdx        # 5080 <x>
    1428:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    142f:	00 00 00 00 
    1433:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    143a:	00 00 00 00 
    143e:	66 90                	xchg   %ax,%ax
            y[i] = alpha*x[i] + y[i];
    1440:	62 f1 74 48 59 02    	vmulps (%rdx),%zmm1,%zmm0
    1446:	48 83 c0 40          	add    $0x40,%rax
    144a:	48 83 c2 40          	add    $0x40,%rdx
    144e:	62 f1 7c 48 58 40 ff 	vaddps -0x40(%rax),%zmm0,%zmm0
    1455:	62 f1 7c 48 29 40 ff 	vmovaps %zmm0,-0x40(%rax)
        for (unsigned int i = 0; i < LEN; i++)
    145c:	49 39 c6             	cmp    %rax,%r14
    145f:	75 df                	jne    1440 <axpy+0x80>
        dummy(x, y, alpha);
    1461:	c5 fa 10 05 97 0c 00 	vmovss 0xc97(%rip),%xmm0        # 2100 <_IO_stdin_used+0x100>
    1468:	00 
    1469:	4c 89 e6             	mov    %r12,%rsi
    146c:	4c 89 ef             	mov    %r13,%rdi
    146f:	c5 f8 77             	vzeroupper
    1472:	e8 c2 fd ff ff       	call   1239 <dummy>
    for (unsigned int nl = 0; nl < NTIMES; nl++)
    1477:	83 eb 01             	sub    $0x1,%ebx
    147a:	62 f1 7c 48 28 0d 7c 	vmovaps 0xc7c(%rip),%zmm1        # 2100 <_IO_stdin_used+0x100>
    1481:	0c 00 00 
    1484:	75 94                	jne    141a <axpy+0x5a>
    end_t = get_wall_time();
    1486:	31 c0                	xor    %eax,%eax
    1488:	c5 f8 77             	vzeroupper
    148b:	e8 f0 fd ff ff       	call   1280 <get_wall_time>
    results(end_t - start_t, "axpy");
    1490:	c5 fb 5c 45 c8       	vsubsd -0x38(%rbp),%xmm0,%xmm0
    1495:	48 8d 3d 8f 0b 00 00 	lea    0xb8f(%rip),%rdi        # 202b <_IO_stdin_used+0x2b>
    149c:	e8 df fe ff ff       	call   1380 <results>
    check(y);
    14a1:	4c 89 e7             	mov    %r12,%rdi
    14a4:	e8 47 fe ff ff       	call   12f0 <check>
}
    14a9:	48 83 c4 48          	add    $0x48,%rsp
    14ad:	31 c0                	xor    %eax,%eax
    14af:	5b                   	pop    %rbx
    14b0:	41 5a                	pop    %r10
    14b2:	41 5c                	pop    %r12
    14b4:	41 5d                	pop    %r13
    14b6:	41 5e                	pop    %r14
    14b8:	5d                   	pop    %rbp
    14b9:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
    14bd:	c3                   	ret
    14be:	66 90                	xchg   %ax,%ax

00000000000014c0 <axpy_intr_SSE>:
{
    14c0:	f3 0f 1e fa          	endbr64
    14c4:	41 55                	push   %r13
    init();
    14c6:	31 c0                	xor    %eax,%eax
    14c8:	4c 8d 2d b1 3b 00 00 	lea    0x3bb1(%rip),%r13        # 5080 <x>
{
    14cf:	41 54                	push   %r12
    14d1:	4c 8d 25 a8 2b 00 00 	lea    0x2ba8(%rip),%r12        # 4080 <y>
    14d8:	55                   	push   %rbp
    start_t = get_wall_time();
    14d9:	bd 00 00 f0 00       	mov    $0xf00000,%ebp
{
    14de:	53                   	push   %rbx
    14df:	49 8d 9d 00 10 00 00 	lea    0x1000(%r13),%rbx
    14e6:	48 83 ec 18          	sub    $0x18,%rsp
    init();
    14ea:	e8 41 fe ff ff       	call   1330 <init>
    start_t = get_wall_time();
    14ef:	31 c0                	xor    %eax,%eax
    14f1:	e8 8a fd ff ff       	call   1280 <get_wall_time>
    14f6:	c4 e2 79 18 0d 01 0c 	vbroadcastss 0xc01(%rip),%xmm1        # 2100 <_IO_stdin_used+0x100>
    14fd:	00 00 
    14ff:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
        for (unsigned int i = 0; i < LEN; i+= SSE_LEN)
    1505:	48 8d 15 74 3b 00 00 	lea    0x3b74(%rip),%rdx        # 5080 <x>
    150c:	48 8d 05 6d 2b 00 00 	lea    0x2b6d(%rip),%rax        # 4080 <y>
    1513:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    151a:	00 00 00 00 
    151e:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1525:	00 00 00 00 
    1529:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1530:	00 00 00 00 
    1534:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    153b:	00 00 00 00 
    153f:	90                   	nop
}

extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mul_ps (__m128 __A, __m128 __B)
{
  return (__m128) ((__v4sf)__A * (__v4sf)__B);
    1540:	c5 f0 59 02          	vmulps (%rdx),%xmm1,%xmm0
    1544:	48 83 c2 10          	add    $0x10,%rdx
    1548:	48 83 c0 10          	add    $0x10,%rax
  return (__m128) ((__v4sf)__A + (__v4sf)__B);
    154c:	c5 f8 58 40 f0       	vaddps -0x10(%rax),%xmm0,%xmm0

/* Store four SPFP values.  The address must be 16-byte aligned.  */
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_store_ps (float *__P, __m128 __A)
{
  *(__m128 *)__P = __A;
    1551:	c5 f8 29 40 f0       	vmovaps %xmm0,-0x10(%rax)
    1556:	48 39 da             	cmp    %rbx,%rdx
    1559:	75 e5                	jne    1540 <axpy_intr_SSE+0x80>
        dummy(x, y, alpha);
    155b:	c5 fa 10 05 9d 0b 00 	vmovss 0xb9d(%rip),%xmm0        # 2100 <_IO_stdin_used+0x100>
    1562:	00 
    1563:	4c 89 e6             	mov    %r12,%rsi
    1566:	4c 89 ef             	mov    %r13,%rdi
    1569:	e8 cb fc ff ff       	call   1239 <dummy>
    for (unsigned int nl = 0; nl < NTIMES; nl++)
    156e:	83 ed 01             	sub    $0x1,%ebp
    1571:	c5 f8 28 0d 87 0b 00 	vmovaps 0xb87(%rip),%xmm1        # 2100 <_IO_stdin_used+0x100>
    1578:	00 
    1579:	75 8a                	jne    1505 <axpy_intr_SSE+0x45>
  end_t = get_wall_time();
    157b:	31 c0                	xor    %eax,%eax
    157d:	e8 fe fc ff ff       	call   1280 <get_wall_time>
  results(end_t - start_t, "axpy_intr_SSE");
    1582:	c5 fb 5c 44 24 08    	vsubsd 0x8(%rsp),%xmm0,%xmm0
    1588:	48 8d 3d a1 0a 00 00 	lea    0xaa1(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    158f:	e8 ec fd ff ff       	call   1380 <results>
  check(y);
    1594:	4c 89 e7             	mov    %r12,%rdi
    1597:	e8 54 fd ff ff       	call   12f0 <check>
}
    159c:	48 83 c4 18          	add    $0x18,%rsp
    15a0:	31 c0                	xor    %eax,%eax
    15a2:	5b                   	pop    %rbx
    15a3:	5d                   	pop    %rbp
    15a4:	41 5c                	pop    %r12
    15a6:	41 5d                	pop    %r13
    15a8:	c3                   	ret

Disassembly of section .fini:

00000000000015ac <_fini>:
    15ac:	f3 0f 1e fa          	endbr64
    15b0:	48 83 ec 08          	sub    $0x8,%rsp
    15b4:	48 83 c4 08          	add    $0x8,%rsp
    15b8:	c3                   	ret
