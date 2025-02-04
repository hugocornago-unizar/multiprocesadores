
axpy.1k.single.esc.avx512.gcc:     file format elf64-x86-64


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
    13c4:	41 55                	push   %r13
    init();
    13c6:	31 c0                	xor    %eax,%eax
{
    13c8:	41 54                	push   %r12
    13ca:	4c 8d 25 af 3c 00 00 	lea    0x3caf(%rip),%r12        # 5080 <x>
    13d1:	55                   	push   %rbp
    13d2:	4d 8d ac 24 00 10 00 	lea    0x1000(%r12),%r13
    13d9:	00 
    13da:	48 8d 2d 9f 2c 00 00 	lea    0x2c9f(%rip),%rbp        # 4080 <y>
    13e1:	53                   	push   %rbx
    start_t = get_wall_time();
    13e2:	bb 00 00 f0 00       	mov    $0xf00000,%ebx
{
    13e7:	48 83 ec 18          	sub    $0x18,%rsp
    init();
    13eb:	e8 40 ff ff ff       	call   1330 <init>
    start_t = get_wall_time();
    13f0:	31 c0                	xor    %eax,%eax
    13f2:	e8 89 fe ff ff       	call   1280 <get_wall_time>
    13f7:	c5 fa 10 0d d1 0c 00 	vmovss 0xcd1(%rip),%xmm1        # 20d0 <_IO_stdin_used+0xd0>
    13fe:	00 
    13ff:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
        for (unsigned int i = 0; i < LEN; i++)
    1405:	48 8d 15 74 3c 00 00 	lea    0x3c74(%rip),%rdx        # 5080 <x>
    140c:	48 8d 05 6d 2c 00 00 	lea    0x2c6d(%rip),%rax        # 4080 <y>
    1413:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    141a:	00 00 00 00 
    141e:	66 90                	xchg   %ax,%ax
            y[i] = alpha*x[i] + y[i];
    1420:	c5 f2 59 02          	vmulss (%rdx),%xmm1,%xmm0
        for (unsigned int i = 0; i < LEN; i++)
    1424:	48 83 c2 04          	add    $0x4,%rdx
    1428:	48 83 c0 04          	add    $0x4,%rax
            y[i] = alpha*x[i] + y[i];
    142c:	c5 fa 58 40 fc       	vaddss -0x4(%rax),%xmm0,%xmm0
    1431:	c5 fa 11 40 fc       	vmovss %xmm0,-0x4(%rax)
        for (unsigned int i = 0; i < LEN; i++)
    1436:	4c 39 ea             	cmp    %r13,%rdx
    1439:	75 e5                	jne    1420 <axpy+0x60>
        dummy(x, y, alpha);
    143b:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
    143f:	48 89 ee             	mov    %rbp,%rsi
    1442:	4c 89 e7             	mov    %r12,%rdi
    1445:	e8 ef fd ff ff       	call   1239 <dummy>
    for (unsigned int nl = 0; nl < NTIMES; nl++)
    144a:	83 eb 01             	sub    $0x1,%ebx
    144d:	c5 fa 10 0d 7b 0c 00 	vmovss 0xc7b(%rip),%xmm1        # 20d0 <_IO_stdin_used+0xd0>
    1454:	00 
    1455:	75 ae                	jne    1405 <axpy+0x45>
    end_t = get_wall_time();
    1457:	31 c0                	xor    %eax,%eax
    1459:	e8 22 fe ff ff       	call   1280 <get_wall_time>
    results(end_t - start_t, "axpy");
    145e:	c5 fb 5c 44 24 08    	vsubsd 0x8(%rsp),%xmm0,%xmm0
    1464:	48 8d 3d c0 0b 00 00 	lea    0xbc0(%rip),%rdi        # 202b <_IO_stdin_used+0x2b>
    146b:	e8 10 ff ff ff       	call   1380 <results>
    check(y);
    1470:	48 89 ef             	mov    %rbp,%rdi
    1473:	e8 78 fe ff ff       	call   12f0 <check>
}
    1478:	48 83 c4 18          	add    $0x18,%rsp
    147c:	31 c0                	xor    %eax,%eax
    147e:	5b                   	pop    %rbx
    147f:	5d                   	pop    %rbp
    1480:	41 5c                	pop    %r12
    1482:	41 5d                	pop    %r13
    1484:	c3                   	ret
    1485:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    148c:	00 00 00 00 

0000000000001490 <axpy_intr_SSE>:
{
    1490:	f3 0f 1e fa          	endbr64
    1494:	41 55                	push   %r13
    init();
    1496:	31 c0                	xor    %eax,%eax
    1498:	4c 8d 2d e1 3b 00 00 	lea    0x3be1(%rip),%r13        # 5080 <x>
{
    149f:	41 54                	push   %r12
    14a1:	4c 8d 25 d8 2b 00 00 	lea    0x2bd8(%rip),%r12        # 4080 <y>
    14a8:	55                   	push   %rbp
    start_t = get_wall_time();
    14a9:	bd 00 00 f0 00       	mov    $0xf00000,%ebp
{
    14ae:	53                   	push   %rbx
    14af:	49 8d 9d 00 10 00 00 	lea    0x1000(%r13),%rbx
    14b6:	48 83 ec 18          	sub    $0x18,%rsp
    init();
    14ba:	e8 71 fe ff ff       	call   1330 <init>
    start_t = get_wall_time();
    14bf:	31 c0                	xor    %eax,%eax
    14c1:	e8 ba fd ff ff       	call   1280 <get_wall_time>
    14c6:	c4 e2 79 18 0d 01 0c 	vbroadcastss 0xc01(%rip),%xmm1        # 20d0 <_IO_stdin_used+0xd0>
    14cd:	00 00 
    14cf:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
        for (unsigned int i = 0; i < LEN; i+= SSE_LEN)
    14d5:	48 8d 15 a4 3b 00 00 	lea    0x3ba4(%rip),%rdx        # 5080 <x>
    14dc:	48 8d 05 9d 2b 00 00 	lea    0x2b9d(%rip),%rax        # 4080 <y>
    14e3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    14ea:	00 00 00 00 
    14ee:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    14f5:	00 00 00 00 
    14f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
}

extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mul_ps (__m128 __A, __m128 __B)
{
  return (__m128) ((__v4sf)__A * (__v4sf)__B);
    1500:	c5 f0 59 02          	vmulps (%rdx),%xmm1,%xmm0
    1504:	48 83 c2 10          	add    $0x10,%rdx
    1508:	48 83 c0 10          	add    $0x10,%rax
  return (__m128) ((__v4sf)__A + (__v4sf)__B);
    150c:	c5 f8 58 40 f0       	vaddps -0x10(%rax),%xmm0,%xmm0

/* Store four SPFP values.  The address must be 16-byte aligned.  */
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_store_ps (float *__P, __m128 __A)
{
  *(__m128 *)__P = __A;
    1511:	c5 f8 29 40 f0       	vmovaps %xmm0,-0x10(%rax)
    1516:	48 39 d3             	cmp    %rdx,%rbx
    1519:	75 e5                	jne    1500 <axpy_intr_SSE+0x70>
        dummy(x, y, alpha);
    151b:	c5 fa 10 05 ad 0b 00 	vmovss 0xbad(%rip),%xmm0        # 20d0 <_IO_stdin_used+0xd0>
    1522:	00 
    1523:	4c 89 e6             	mov    %r12,%rsi
    1526:	4c 89 ef             	mov    %r13,%rdi
    1529:	e8 0b fd ff ff       	call   1239 <dummy>
    for (unsigned int nl = 0; nl < NTIMES; nl++)
    152e:	83 ed 01             	sub    $0x1,%ebp
    1531:	c5 f8 28 0d 97 0b 00 	vmovaps 0xb97(%rip),%xmm1        # 20d0 <_IO_stdin_used+0xd0>
    1538:	00 
    1539:	75 9a                	jne    14d5 <axpy_intr_SSE+0x45>
  end_t = get_wall_time();
    153b:	31 c0                	xor    %eax,%eax
    153d:	e8 3e fd ff ff       	call   1280 <get_wall_time>
  results(end_t - start_t, "axpy_intr_SSE");
    1542:	c5 fb 5c 44 24 08    	vsubsd 0x8(%rsp),%xmm0,%xmm0
    1548:	48 8d 3d e1 0a 00 00 	lea    0xae1(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    154f:	e8 2c fe ff ff       	call   1380 <results>
  check(y);
    1554:	4c 89 e7             	mov    %r12,%rdi
    1557:	e8 94 fd ff ff       	call   12f0 <check>
}
    155c:	48 83 c4 18          	add    $0x18,%rsp
    1560:	31 c0                	xor    %eax,%eax
    1562:	5b                   	pop    %rbx
    1563:	5d                   	pop    %rbp
    1564:	41 5c                	pop    %r12
    1566:	41 5d                	pop    %r13
    1568:	c3                   	ret

Disassembly of section .fini:

000000000000156c <_fini>:
    156c:	f3 0f 1e fa          	endbr64
    1570:	48 83 ec 08          	sub    $0x8,%rsp
    1574:	48 83 c4 08          	add    $0x8,%rsp
    1578:	c3                   	ret
