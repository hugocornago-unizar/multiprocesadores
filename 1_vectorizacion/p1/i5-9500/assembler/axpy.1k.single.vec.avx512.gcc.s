
axpy.1k.single.vec.avx512.gcc:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 c9 2f 00 00 	mov    0x2fc9(%rip),%rax        # 403fd8 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <puts@plt-0x10>:
  401020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 403ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 403ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <puts@plt>:
  401030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 404000 <puts@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <printf@plt>:
  401040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 404008 <printf@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <gettimeofday@plt>:
  401050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 404010 <gettimeofday@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <exit@plt>:
  401060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 404018 <exit@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401070 <main>:
  return 0;
}
#endif

int main()
{
  401070:	48 83 ec 08          	sub    $0x8,%rsp
  printf("                     Time    TPE\n");
  401074:	bf 60 20 40 00       	mov    $0x402060,%edi
  401079:	e8 b2 ff ff ff       	call   401030 <puts@plt>
  printf("              Loop    ns     ps/el     Checksum \n");
  40107e:	bf 88 20 40 00       	mov    $0x402088,%edi
  401083:	e8 a8 ff ff ff       	call   401030 <puts@plt>
  axpy();
  401088:	31 c0                	xor    %eax,%eax
  40108a:	e8 11 02 00 00       	call   4012a0 <axpy>
  // axpy_intr_SSE();
  // axpy_intr_AVX();
  printf("\nLEN: %u, NTIMES: %lu\n\n", LEN, NTIMES);
  40108f:	bf 42 20 40 00       	mov    $0x402042,%edi
  401094:	ba 00 00 f0 00       	mov    $0xf00000,%edx
  401099:	31 c0                	xor    %eax,%eax
  40109b:	be 00 04 00 00       	mov    $0x400,%esi
  4010a0:	e8 9b ff ff ff       	call   401040 <printf@plt>
  exit(0);
  4010a5:	31 ff                	xor    %edi,%edi
  4010a7:	e8 b4 ff ff ff       	call   401060 <exit@plt>

00000000004010ac <.annobin_elf_init.c.hot>:
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004010b0 <_start>:
  4010b0:	f3 0f 1e fa          	endbr64
  4010b4:	31 ed                	xor    %ebp,%ebp
  4010b6:	49 89 d1             	mov    %rdx,%r9
  4010b9:	5e                   	pop    %rsi
  4010ba:	48 89 e2             	mov    %rsp,%rdx
  4010bd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4010c1:	50                   	push   %rax
  4010c2:	54                   	push   %rsp
  4010c3:	49 c7 c0 90 14 40 00 	mov    $0x401490,%r8
  4010ca:	48 c7 c1 20 14 40 00 	mov    $0x401420,%rcx
  4010d1:	48 c7 c7 70 10 40 00 	mov    $0x401070,%rdi
  4010d8:	ff 15 f2 2e 00 00    	call   *0x2ef2(%rip)        # 403fd0 <__libc_start_main@GLIBC_2.2.5>
  4010de:	f4                   	hlt

00000000004010df <.annobin_init.c>:
  4010df:	90                   	nop

00000000004010e0 <_dl_relocate_static_pie>:
  4010e0:	f3 0f 1e fa          	endbr64
  4010e4:	c3                   	ret

00000000004010e5 <.annobin__dl_relocate_static_pie.end>:
  4010e5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4010ec:	00 00 00 
  4010ef:	90                   	nop

00000000004010f0 <deregister_tm_clones>:
  4010f0:	48 8d 3d 31 2f 00 00 	lea    0x2f31(%rip),%rdi        # 404028 <__TMC_END__>
  4010f7:	48 8d 05 2a 2f 00 00 	lea    0x2f2a(%rip),%rax        # 404028 <__TMC_END__>
  4010fe:	48 39 f8             	cmp    %rdi,%rax
  401101:	74 15                	je     401118 <deregister_tm_clones+0x28>
  401103:	48 8b 05 be 2e 00 00 	mov    0x2ebe(%rip),%rax        # 403fc8 <_ITM_deregisterTMCloneTable@Base>
  40110a:	48 85 c0             	test   %rax,%rax
  40110d:	74 09                	je     401118 <deregister_tm_clones+0x28>
  40110f:	ff e0                	jmp    *%rax
  401111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401118:	c3                   	ret
  401119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401120 <register_tm_clones>:
  401120:	48 8d 3d 01 2f 00 00 	lea    0x2f01(%rip),%rdi        # 404028 <__TMC_END__>
  401127:	48 8d 35 fa 2e 00 00 	lea    0x2efa(%rip),%rsi        # 404028 <__TMC_END__>
  40112e:	48 29 fe             	sub    %rdi,%rsi
  401131:	48 89 f0             	mov    %rsi,%rax
  401134:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401138:	48 c1 f8 03          	sar    $0x3,%rax
  40113c:	48 01 c6             	add    %rax,%rsi
  40113f:	48 d1 fe             	sar    %rsi
  401142:	74 14                	je     401158 <register_tm_clones+0x38>
  401144:	48 8b 05 95 2e 00 00 	mov    0x2e95(%rip),%rax        # 403fe0 <_ITM_registerTMCloneTable@Base>
  40114b:	48 85 c0             	test   %rax,%rax
  40114e:	74 08                	je     401158 <register_tm_clones+0x38>
  401150:	ff e0                	jmp    *%rax
  401152:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401158:	c3                   	ret
  401159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401160 <__do_global_dtors_aux>:
  401160:	f3 0f 1e fa          	endbr64
  401164:	80 3d d5 2e 00 00 00 	cmpb   $0x0,0x2ed5(%rip)        # 404040 <completed.0>
  40116b:	75 13                	jne    401180 <__do_global_dtors_aux+0x20>
  40116d:	55                   	push   %rbp
  40116e:	48 89 e5             	mov    %rsp,%rbp
  401171:	e8 7a ff ff ff       	call   4010f0 <deregister_tm_clones>
  401176:	c6 05 c3 2e 00 00 01 	movb   $0x1,0x2ec3(%rip)        # 404040 <completed.0>
  40117d:	5d                   	pop    %rbp
  40117e:	c3                   	ret
  40117f:	90                   	nop
  401180:	c3                   	ret
  401181:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401188:	00 00 00 00 
  40118c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401190 <frame_dummy>:
  401190:	f3 0f 1e fa          	endbr64
  401194:	eb 8a                	jmp    401120 <register_tm_clones>

0000000000401196 <dummy>:
  401196:	55                   	push   %rbp
  401197:	48 89 e5             	mov    %rsp,%rbp
  40119a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40119e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4011a2:	f3 0f 11 45 ec       	movss  %xmm0,-0x14(%rbp)
  4011a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4011ac:	5d                   	pop    %rbp
  4011ad:	c3                   	ret
  4011ae:	66 90                	xchg   %ax,%ax

00000000004011b0 <get_wall_time>:
{
  4011b0:	48 83 ec 18          	sub    $0x18,%rsp
    if (gettimeofday(&time,NULL)) {
  4011b4:	31 f6                	xor    %esi,%esi
  4011b6:	48 89 e7             	mov    %rsp,%rdi
  4011b9:	e8 92 fe ff ff       	call   401050 <gettimeofday@plt>
  4011be:	85 c0                	test   %eax,%eax
  4011c0:	75 22                	jne    4011e4 <get_wall_time+0x34>
    return (double)time.tv_sec + (double)time.tv_usec * .000001;
  4011c2:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  4011c6:	c4 e1 f3 2a 44 24 08 	vcvtsi2sdq 0x8(%rsp),%xmm1,%xmm0
  4011cd:	c5 fb 59 05 eb 0e 00 	vmulsd 0xeeb(%rip),%xmm0,%xmm0        # 4020c0 <__dso_handle+0xb8>
  4011d4:	00 
  4011d5:	c4 e1 f3 2a 0c 24    	vcvtsi2sdq (%rsp),%xmm1,%xmm1
}
  4011db:	48 83 c4 18          	add    $0x18,%rsp
    return (double)time.tv_sec + (double)time.tv_usec * .000001;
  4011df:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
}
  4011e3:	c3                   	ret
        exit(-1); // return 0;
  4011e4:	83 cf ff             	or     $0xffffffff,%edi
  4011e7:	e8 74 fe ff ff       	call   401060 <exit@plt>
  4011ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011f0 <check>:
  for (unsigned int i = 0; i < LEN; i++)
  4011f0:	48 8d 87 00 10 00 00 	lea    0x1000(%rdi),%rax
    real sum = 0;
  4011f7:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  4011fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
        sum += arr[i];
  401200:	c5 fa 58 07          	vaddss (%rdi),%xmm0,%xmm0
  for (unsigned int i = 0; i < LEN; i++)
  401204:	48 83 c7 08          	add    $0x8,%rdi
        sum += arr[i];
  401208:	c5 fa 58 47 fc       	vaddss -0x4(%rdi),%xmm0,%xmm0
  for (unsigned int i = 0; i < LEN; i++)
  40120d:	48 39 f8             	cmp    %rdi,%rax
  401210:	75 ee                	jne    401200 <check+0x10>
    printf("%f \n", sum);
  401212:	bf 10 20 40 00       	mov    $0x402010,%edi
  401217:	b8 01 00 00 00       	mov    $0x1,%eax
  40121c:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  401220:	e9 1b fe ff ff       	jmp    401040 <printf@plt>
  401225:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40122c:	00 00 00 00 

0000000000401230 <init>:
    for (unsigned int j = 0; j < LEN; j++)
  401230:	c5 fa 10 0d a0 0e 00 	vmovss 0xea0(%rip),%xmm1        # 4020d8 <__dso_handle+0xd0>
  401237:	00 
{
  401238:	31 c0                	xor    %eax,%eax
  40123a:	c5 fa 10 05 9a 0e 00 	vmovss 0xe9a(%rip),%xmm0        # 4020dc <__dso_handle+0xd4>
  401241:	00 
  401242:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
	    x[j] = 2.0;
  401248:	c5 fa 11 88 80 50 40 	vmovss %xmm1,0x405080(%rax)
  40124f:	00 
    for (unsigned int j = 0; j < LEN; j++)
  401250:	48 83 c0 04          	add    $0x4,%rax
	    y[j] = 0.5;
  401254:	c5 fa 11 80 7c 40 40 	vmovss %xmm0,0x40407c(%rax)
  40125b:	00 
    for (unsigned int j = 0; j < LEN; j++)
  40125c:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  401262:	75 e4                	jne    401248 <init+0x18>
}
  401264:	31 c0                	xor    %eax,%eax
  401266:	c3                   	ret
  401267:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40126e:	00 00 

0000000000401270 <results>:
{
  401270:	48 89 fe             	mov    %rdi,%rsi
    printf("%18s  %5.1f    %5.1f     ",
  401273:	b8 02 00 00 00       	mov    $0x2,%eax
  401278:	bf 15 20 40 00       	mov    $0x402015,%edi
  40127d:	c5 fb 5e 15 4b 0e 00 	vdivsd 0xe4b(%rip),%xmm0,%xmm2        # 4020d0 <__dso_handle+0xc8>
  401284:	00 
  401285:	c5 fb 5e 0d 3b 0e 00 	vdivsd 0xe3b(%rip),%xmm0,%xmm1        # 4020c8 <__dso_handle+0xc0>
  40128c:	00 
  40128d:	c5 eb 10 c2          	vmovsd %xmm2,%xmm2,%xmm0
  401291:	e9 aa fd ff ff       	jmp    401040 <printf@plt>
  401296:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40129d:	00 00 00 

00000000004012a0 <axpy>:
{
  4012a0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  4012a5:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    init();
  4012a9:	31 c0                	xor    %eax,%eax
{
  4012ab:	41 ff 72 f8          	push   -0x8(%r10)
  4012af:	55                   	push   %rbp
  4012b0:	48 89 e5             	mov    %rsp,%rbp
  4012b3:	41 52                	push   %r10
  4012b5:	53                   	push   %rbx
    start_t = get_wall_time();
  4012b6:	bb 00 00 f0 00       	mov    $0xf00000,%ebx
{
  4012bb:	48 83 ec 60          	sub    $0x60,%rsp
    init();
  4012bf:	e8 6c ff ff ff       	call   401230 <init>
    start_t = get_wall_time();
  4012c4:	31 c0                	xor    %eax,%eax
  4012c6:	e8 e5 fe ff ff       	call   4011b0 <get_wall_time>
  4012cb:	62 f2 7d 48 18 0d 2b 	vbroadcastss 0xe2b(%rip),%zmm1        # 402100 <__dso_handle+0xf8>
  4012d2:	0e 00 00 
  4012d5:	c5 fb 11 45 c8       	vmovsd %xmm0,-0x38(%rbp)
    for (unsigned int nl = 0; nl < NTIMES; nl++)
  4012da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
{
  4012e0:	31 c0                	xor    %eax,%eax
  4012e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
            y[i] = alpha*x[i] + y[i];
  4012e8:	62 f1 74 48 59 80 80 	vmulps 0x405080(%rax),%zmm1,%zmm0
  4012ef:	50 40 00 
  4012f2:	48 83 c0 40          	add    $0x40,%rax
  4012f6:	62 f1 7c 48 58 80 40 	vaddps 0x404040(%rax),%zmm0,%zmm0
  4012fd:	40 40 00 
  401300:	62 f1 7c 48 29 80 40 	vmovaps %zmm0,0x404040(%rax)
  401307:	40 40 00 
        for (unsigned int i = 0; i < LEN; i++)
  40130a:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  401310:	75 d6                	jne    4012e8 <axpy+0x48>
        dummy(x, y, alpha);
  401312:	c5 fa 10 05 e6 0d 00 	vmovss 0xde6(%rip),%xmm0        # 402100 <__dso_handle+0xf8>
  401319:	00 
  40131a:	be 80 40 40 00       	mov    $0x404080,%esi
  40131f:	bf 80 50 40 00       	mov    $0x405080,%edi
  401324:	c5 f8 77             	vzeroupper
  401327:	e8 6a fe ff ff       	call   401196 <dummy>
    for (unsigned int nl = 0; nl < NTIMES; nl++)
  40132c:	83 eb 01             	sub    $0x1,%ebx
  40132f:	62 f1 7c 48 28 0d c7 	vmovaps 0xdc7(%rip),%zmm1        # 402100 <__dso_handle+0xf8>
  401336:	0d 00 00 
  401339:	75 a5                	jne    4012e0 <axpy+0x40>
    end_t = get_wall_time();
  40133b:	31 c0                	xor    %eax,%eax
  40133d:	c5 f8 77             	vzeroupper
  401340:	e8 6b fe ff ff       	call   4011b0 <get_wall_time>
    results(end_t - start_t, "axpy");
  401345:	c5 fb 5c 45 c8       	vsubsd -0x38(%rbp),%xmm0,%xmm0
  40134a:	bf 2f 20 40 00       	mov    $0x40202f,%edi
  40134f:	e8 1c ff ff ff       	call   401270 <results>
    check(y);
  401354:	bf 80 40 40 00       	mov    $0x404080,%edi
  401359:	e8 92 fe ff ff       	call   4011f0 <check>
}
  40135e:	48 83 c4 60          	add    $0x60,%rsp
  401362:	31 c0                	xor    %eax,%eax
  401364:	5b                   	pop    %rbx
  401365:	41 5a                	pop    %r10
  401367:	5d                   	pop    %rbp
  401368:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  40136c:	c3                   	ret
  40136d:	0f 1f 00             	nopl   (%rax)

0000000000401370 <axpy_intr_SSE>:
{
  401370:	53                   	push   %rbx
    init();
  401371:	31 c0                	xor    %eax,%eax
    start_t = get_wall_time();
  401373:	bb 00 00 f0 00       	mov    $0xf00000,%ebx
{
  401378:	48 83 ec 10          	sub    $0x10,%rsp
    init();
  40137c:	e8 af fe ff ff       	call   401230 <init>
    start_t = get_wall_time();
  401381:	31 c0                	xor    %eax,%eax
  401383:	e8 28 fe ff ff       	call   4011b0 <get_wall_time>
  401388:	c4 e2 79 18 0d 6f 0d 	vbroadcastss 0xd6f(%rip),%xmm1        # 402100 <__dso_handle+0xf8>
  40138f:	00 00 
  401391:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
    for (unsigned int nl = 0; nl < NTIMES; nl++)
  401397:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40139e:	00 00 
{
  4013a0:	31 c0                	xor    %eax,%eax
  4013a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
}

extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mul_ps (__m128 __A, __m128 __B)
{
  return (__m128) ((__v4sf)__A * (__v4sf)__B);
  4013a8:	c5 f0 59 80 80 50 40 	vmulps 0x405080(%rax),%xmm1,%xmm0
  4013af:	00 
        for (unsigned int i = 0; i < LEN; i+= SSE_LEN)
  4013b0:	48 83 c0 10          	add    $0x10,%rax
  return (__m128) ((__v4sf)__A + (__v4sf)__B);
  4013b4:	c5 f8 58 80 70 40 40 	vaddps 0x404070(%rax),%xmm0,%xmm0
  4013bb:	00 

/* Store four SPFP values.  The address must be 16-byte aligned.  */
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_store_ps (float *__P, __m128 __A)
{
  *(__m128 *)__P = __A;
  4013bc:	c5 f8 29 80 70 40 40 	vmovaps %xmm0,0x404070(%rax)
  4013c3:	00 
  4013c4:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  4013ca:	75 dc                	jne    4013a8 <axpy_intr_SSE+0x38>
        dummy(x, y, alpha);
  4013cc:	c5 fa 10 05 2c 0d 00 	vmovss 0xd2c(%rip),%xmm0        # 402100 <__dso_handle+0xf8>
  4013d3:	00 
  4013d4:	be 80 40 40 00       	mov    $0x404080,%esi
  4013d9:	bf 80 50 40 00       	mov    $0x405080,%edi
  4013de:	e8 b3 fd ff ff       	call   401196 <dummy>
    for (unsigned int nl = 0; nl < NTIMES; nl++)
  4013e3:	83 eb 01             	sub    $0x1,%ebx
  4013e6:	c5 f8 28 0d 12 0d 00 	vmovaps 0xd12(%rip),%xmm1        # 402100 <__dso_handle+0xf8>
  4013ed:	00 
  4013ee:	75 b0                	jne    4013a0 <axpy_intr_SSE+0x30>
  end_t = get_wall_time();
  4013f0:	31 c0                	xor    %eax,%eax
  4013f2:	e8 b9 fd ff ff       	call   4011b0 <get_wall_time>
  results(end_t - start_t, "axpy_intr_SSE");
  4013f7:	c5 fb 5c 44 24 08    	vsubsd 0x8(%rsp),%xmm0,%xmm0
  4013fd:	bf 34 20 40 00       	mov    $0x402034,%edi
  401402:	e8 69 fe ff ff       	call   401270 <results>
  check(y);
  401407:	bf 80 40 40 00       	mov    $0x404080,%edi
  40140c:	e8 df fd ff ff       	call   4011f0 <check>
}
  401411:	48 83 c4 10          	add    $0x10,%rsp
  401415:	31 c0                	xor    %eax,%eax
  401417:	5b                   	pop    %rbx
  401418:	c3                   	ret
  401419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401420 <__libc_csu_init>:
  401420:	f3 0f 1e fa          	endbr64
  401424:	41 57                	push   %r15
  401426:	49 89 d7             	mov    %rdx,%r15
  401429:	41 56                	push   %r14
  40142b:	49 89 f6             	mov    %rsi,%r14
  40142e:	41 55                	push   %r13
  401430:	41 89 fd             	mov    %edi,%r13d
  401433:	41 54                	push   %r12
  401435:	4c 8d 25 ac 29 00 00 	lea    0x29ac(%rip),%r12        # 403de8 <__frame_dummy_init_array_entry>
  40143c:	55                   	push   %rbp
  40143d:	48 8d 2d ac 29 00 00 	lea    0x29ac(%rip),%rbp        # 403df0 <__do_global_dtors_aux_fini_array_entry>
  401444:	53                   	push   %rbx
  401445:	4c 29 e5             	sub    %r12,%rbp
  401448:	48 83 ec 08          	sub    $0x8,%rsp
  40144c:	e8 af fb ff ff       	call   401000 <_init>
  401451:	48 c1 fd 03          	sar    $0x3,%rbp
  401455:	74 1f                	je     401476 <__libc_csu_init+0x56>
  401457:	31 db                	xor    %ebx,%ebx
  401459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401460:	4c 89 fa             	mov    %r15,%rdx
  401463:	4c 89 f6             	mov    %r14,%rsi
  401466:	44 89 ef             	mov    %r13d,%edi
  401469:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  40146d:	48 83 c3 01          	add    $0x1,%rbx
  401471:	48 39 dd             	cmp    %rbx,%rbp
  401474:	75 ea                	jne    401460 <__libc_csu_init+0x40>
  401476:	48 83 c4 08          	add    $0x8,%rsp
  40147a:	5b                   	pop    %rbx
  40147b:	5d                   	pop    %rbp
  40147c:	41 5c                	pop    %r12
  40147e:	41 5d                	pop    %r13
  401480:	41 5e                	pop    %r14
  401482:	41 5f                	pop    %r15
  401484:	c3                   	ret

0000000000401485 <.annobin___libc_csu_fini.start>:
  401485:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40148c:	00 00 00 00 

0000000000401490 <__libc_csu_fini>:
  401490:	f3 0f 1e fa          	endbr64
  401494:	c3                   	ret

Disassembly of section .fini:

0000000000401498 <_fini>:
  401498:	f3 0f 1e fa          	endbr64
  40149c:	48 83 ec 08          	sub    $0x8,%rsp
  4014a0:	48 83 c4 08          	add    $0x8,%rsp
  4014a4:	c3                   	ret
