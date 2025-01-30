
axpy.1k.single.esc.avxfma.gcc:     file format elf64-x86-64


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
  40108a:	e8 31 02 00 00       	call   4012c0 <axpy>
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

00000000004010ac <.annobin_elf_init.c.startup>:
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004010b0 <set_fast_math>:
  4010b0:	f3 0f 1e fa          	endbr64
  4010b4:	0f ae 5c 24 fc       	stmxcsr -0x4(%rsp)
  4010b9:	81 4c 24 fc 40 80 00 	orl    $0x8040,-0x4(%rsp)
  4010c0:	00 
  4010c1:	0f ae 54 24 fc       	ldmxcsr -0x4(%rsp)
  4010c6:	c3                   	ret

00000000004010c7 <.annobin_elf_init.c.hot>:
  4010c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4010ce:	00 00 

00000000004010d0 <_start>:
  4010d0:	f3 0f 1e fa          	endbr64
  4010d4:	31 ed                	xor    %ebp,%ebp
  4010d6:	49 89 d1             	mov    %rdx,%r9
  4010d9:	5e                   	pop    %rsi
  4010da:	48 89 e2             	mov    %rsp,%rdx
  4010dd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4010e1:	50                   	push   %rax
  4010e2:	54                   	push   %rsp
  4010e3:	49 c7 c0 90 14 40 00 	mov    $0x401490,%r8
  4010ea:	48 c7 c1 20 14 40 00 	mov    $0x401420,%rcx
  4010f1:	48 c7 c7 70 10 40 00 	mov    $0x401070,%rdi
  4010f8:	ff 15 d2 2e 00 00    	call   *0x2ed2(%rip)        # 403fd0 <__libc_start_main@GLIBC_2.2.5>
  4010fe:	f4                   	hlt

00000000004010ff <.annobin_init.c>:
  4010ff:	90                   	nop

0000000000401100 <_dl_relocate_static_pie>:
  401100:	f3 0f 1e fa          	endbr64
  401104:	c3                   	ret

0000000000401105 <.annobin__dl_relocate_static_pie.end>:
  401105:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40110c:	00 00 00 
  40110f:	90                   	nop

0000000000401110 <deregister_tm_clones>:
  401110:	48 8d 3d 11 2f 00 00 	lea    0x2f11(%rip),%rdi        # 404028 <__TMC_END__>
  401117:	48 8d 05 0a 2f 00 00 	lea    0x2f0a(%rip),%rax        # 404028 <__TMC_END__>
  40111e:	48 39 f8             	cmp    %rdi,%rax
  401121:	74 15                	je     401138 <deregister_tm_clones+0x28>
  401123:	48 8b 05 9e 2e 00 00 	mov    0x2e9e(%rip),%rax        # 403fc8 <_ITM_deregisterTMCloneTable@Base>
  40112a:	48 85 c0             	test   %rax,%rax
  40112d:	74 09                	je     401138 <deregister_tm_clones+0x28>
  40112f:	ff e0                	jmp    *%rax
  401131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401138:	c3                   	ret
  401139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401140 <register_tm_clones>:
  401140:	48 8d 3d e1 2e 00 00 	lea    0x2ee1(%rip),%rdi        # 404028 <__TMC_END__>
  401147:	48 8d 35 da 2e 00 00 	lea    0x2eda(%rip),%rsi        # 404028 <__TMC_END__>
  40114e:	48 29 fe             	sub    %rdi,%rsi
  401151:	48 89 f0             	mov    %rsi,%rax
  401154:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401158:	48 c1 f8 03          	sar    $0x3,%rax
  40115c:	48 01 c6             	add    %rax,%rsi
  40115f:	48 d1 fe             	sar    %rsi
  401162:	74 14                	je     401178 <register_tm_clones+0x38>
  401164:	48 8b 05 75 2e 00 00 	mov    0x2e75(%rip),%rax        # 403fe0 <_ITM_registerTMCloneTable@Base>
  40116b:	48 85 c0             	test   %rax,%rax
  40116e:	74 08                	je     401178 <register_tm_clones+0x38>
  401170:	ff e0                	jmp    *%rax
  401172:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401178:	c3                   	ret
  401179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401180 <__do_global_dtors_aux>:
  401180:	f3 0f 1e fa          	endbr64
  401184:	80 3d b5 2e 00 00 00 	cmpb   $0x0,0x2eb5(%rip)        # 404040 <completed.0>
  40118b:	75 13                	jne    4011a0 <__do_global_dtors_aux+0x20>
  40118d:	55                   	push   %rbp
  40118e:	48 89 e5             	mov    %rsp,%rbp
  401191:	e8 7a ff ff ff       	call   401110 <deregister_tm_clones>
  401196:	c6 05 a3 2e 00 00 01 	movb   $0x1,0x2ea3(%rip)        # 404040 <completed.0>
  40119d:	5d                   	pop    %rbp
  40119e:	c3                   	ret
  40119f:	90                   	nop
  4011a0:	c3                   	ret
  4011a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4011a8:	00 00 00 00 
  4011ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011b0 <frame_dummy>:
  4011b0:	f3 0f 1e fa          	endbr64
  4011b4:	eb 8a                	jmp    401140 <register_tm_clones>

00000000004011b6 <dummy>:
  4011b6:	55                   	push   %rbp
  4011b7:	48 89 e5             	mov    %rsp,%rbp
  4011ba:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4011be:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4011c2:	f3 0f 11 45 ec       	movss  %xmm0,-0x14(%rbp)
  4011c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4011cc:	5d                   	pop    %rbp
  4011cd:	c3                   	ret
  4011ce:	66 90                	xchg   %ax,%ax

00000000004011d0 <get_wall_time>:
{
  4011d0:	48 83 ec 18          	sub    $0x18,%rsp
    if (gettimeofday(&time,NULL)) {
  4011d4:	31 f6                	xor    %esi,%esi
  4011d6:	48 89 e7             	mov    %rsp,%rdi
  4011d9:	e8 72 fe ff ff       	call   401050 <gettimeofday@plt>
  4011de:	85 c0                	test   %eax,%eax
  4011e0:	75 1f                	jne    401201 <get_wall_time+0x31>
    return (double)time.tv_sec + (double)time.tv_usec * .000001;
  4011e2:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  4011e6:	c4 e1 f3 2a 44 24 08 	vcvtsi2sdq 0x8(%rsp),%xmm1,%xmm0
  4011ed:	c4 e1 f3 2a 0c 24    	vcvtsi2sdq (%rsp),%xmm1,%xmm1
  4011f3:	c4 e2 f1 99 05 c4 0e 	vfmadd132sd 0xec4(%rip),%xmm1,%xmm0        # 4020c0 <__dso_handle+0xb8>
  4011fa:	00 00 
}
  4011fc:	48 83 c4 18          	add    $0x18,%rsp
  401200:	c3                   	ret
        exit(-1); // return 0;
  401201:	83 cf ff             	or     $0xffffffff,%edi
  401204:	e8 57 fe ff ff       	call   401060 <exit@plt>
  401209:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401210 <check>:
  for (unsigned int i = 0; i < LEN; i++)
  401210:	48 8d 87 00 10 00 00 	lea    0x1000(%rdi),%rax
    real sum = 0;
  401217:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  40121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
        sum += arr[i];
  401220:	c5 fa 58 07          	vaddss (%rdi),%xmm0,%xmm0
  for (unsigned int i = 0; i < LEN; i++)
  401224:	48 83 c7 08          	add    $0x8,%rdi
        sum += arr[i];
  401228:	c5 fa 58 47 fc       	vaddss -0x4(%rdi),%xmm0,%xmm0
  for (unsigned int i = 0; i < LEN; i++)
  40122d:	48 39 f8             	cmp    %rdi,%rax
  401230:	75 ee                	jne    401220 <check+0x10>
    printf("%f \n", sum);
  401232:	bf 10 20 40 00       	mov    $0x402010,%edi
  401237:	b8 01 00 00 00       	mov    $0x1,%eax
  40123c:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  401240:	e9 fb fd ff ff       	jmp    401040 <printf@plt>
  401245:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40124c:	00 00 00 00 

0000000000401250 <init>:
    for (unsigned int j = 0; j < LEN; j++)
  401250:	c5 fa 10 0d 80 0e 00 	vmovss 0xe80(%rip),%xmm1        # 4020d8 <__dso_handle+0xd0>
  401257:	00 
  401258:	c5 fa 10 05 7c 0e 00 	vmovss 0xe7c(%rip),%xmm0        # 4020dc <__dso_handle+0xd4>
  40125f:	00 
{
  401260:	31 c0                	xor    %eax,%eax
  401262:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
	    x[j] = 2.0;
  401268:	c5 fa 11 88 80 50 40 	vmovss %xmm1,0x405080(%rax)
  40126f:	00 
    for (unsigned int j = 0; j < LEN; j++)
  401270:	48 83 c0 04          	add    $0x4,%rax
	    y[j] = 0.5;
  401274:	c5 fa 11 80 7c 40 40 	vmovss %xmm0,0x40407c(%rax)
  40127b:	00 
    for (unsigned int j = 0; j < LEN; j++)
  40127c:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  401282:	75 e4                	jne    401268 <init+0x18>
}
  401284:	31 c0                	xor    %eax,%eax
  401286:	c3                   	ret
  401287:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40128e:	00 00 

0000000000401290 <results>:
    printf("%18s  %5.1f    %5.1f     ",
  401290:	c5 fb 59 15 38 0e 00 	vmulsd 0xe38(%rip),%xmm0,%xmm2        # 4020d0 <__dso_handle+0xc8>
  401297:	00 
{
  401298:	48 89 fe             	mov    %rdi,%rsi
    printf("%18s  %5.1f    %5.1f     ",
  40129b:	b8 02 00 00 00       	mov    $0x2,%eax
  4012a0:	bf 15 20 40 00       	mov    $0x402015,%edi
  4012a5:	c5 fb 59 0d 1b 0e 00 	vmulsd 0xe1b(%rip),%xmm0,%xmm1        # 4020c8 <__dso_handle+0xc0>
  4012ac:	00 
  4012ad:	c5 eb 10 c2          	vmovsd %xmm2,%xmm2,%xmm0
  4012b1:	e9 8a fd ff ff       	jmp    401040 <printf@plt>
  4012b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4012bd:	00 00 00 

00000000004012c0 <axpy>:
{
  4012c0:	53                   	push   %rbx
    init();
  4012c1:	31 c0                	xor    %eax,%eax
    start_t = get_wall_time();
  4012c3:	bb 00 00 f0 00       	mov    $0xf00000,%ebx
{
  4012c8:	48 83 ec 10          	sub    $0x10,%rsp
    init();
  4012cc:	e8 7f ff ff ff       	call   401250 <init>
    start_t = get_wall_time();
  4012d1:	31 c0                	xor    %eax,%eax
  4012d3:	e8 f8 fe ff ff       	call   4011d0 <get_wall_time>
  4012d8:	c5 fa 10 0d 00 0e 00 	vmovss 0xe00(%rip),%xmm1        # 4020e0 <__dso_handle+0xd8>
  4012df:	00 
  4012e0:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
    for (unsigned int nl = 0; nl < NTIMES; nl++)
  4012e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4012ed:	00 00 00 
{
  4012f0:	31 c0                	xor    %eax,%eax
  4012f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
            y[i] = alpha*x[i] + y[i];
  4012f8:	c5 fa 10 80 80 50 40 	vmovss 0x405080(%rax),%xmm0
  4012ff:	00 
        for (unsigned int i = 0; i < LEN; i++)
  401300:	48 83 c0 04          	add    $0x4,%rax
            y[i] = alpha*x[i] + y[i];
  401304:	c4 e2 71 a9 80 7c 40 	vfmadd213ss 0x40407c(%rax),%xmm1,%xmm0
  40130b:	40 00 
  40130d:	c5 fa 11 80 7c 40 40 	vmovss %xmm0,0x40407c(%rax)
  401314:	00 
        for (unsigned int i = 0; i < LEN; i++)
  401315:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  40131b:	75 db                	jne    4012f8 <axpy+0x38>
        dummy(x, y, alpha);
  40131d:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
  401321:	be 80 40 40 00       	mov    $0x404080,%esi
  401326:	bf 80 50 40 00       	mov    $0x405080,%edi
  40132b:	e8 86 fe ff ff       	call   4011b6 <dummy>
    for (unsigned int nl = 0; nl < NTIMES; nl++)
  401330:	83 eb 01             	sub    $0x1,%ebx
  401333:	c5 fa 10 0d a5 0d 00 	vmovss 0xda5(%rip),%xmm1        # 4020e0 <__dso_handle+0xd8>
  40133a:	00 
  40133b:	75 b3                	jne    4012f0 <axpy+0x30>
    end_t = get_wall_time();
  40133d:	31 c0                	xor    %eax,%eax
  40133f:	e8 8c fe ff ff       	call   4011d0 <get_wall_time>
    results(end_t - start_t, "axpy");
  401344:	c5 fb 5c 44 24 08    	vsubsd 0x8(%rsp),%xmm0,%xmm0
  40134a:	bf 2f 20 40 00       	mov    $0x40202f,%edi
  40134f:	e8 3c ff ff ff       	call   401290 <results>
    check(y);
  401354:	bf 80 40 40 00       	mov    $0x404080,%edi
  401359:	e8 b2 fe ff ff       	call   401210 <check>
}
  40135e:	48 83 c4 10          	add    $0x10,%rsp
  401362:	31 c0                	xor    %eax,%eax
  401364:	5b                   	pop    %rbx
  401365:	c3                   	ret
  401366:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40136d:	00 00 00 

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
  40137c:	e8 cf fe ff ff       	call   401250 <init>
    start_t = get_wall_time();
  401381:	31 c0                	xor    %eax,%eax
  401383:	e8 48 fe ff ff       	call   4011d0 <get_wall_time>
  401388:	c4 e2 79 18 0d 4f 0d 	vbroadcastss 0xd4f(%rip),%xmm1        # 4020e0 <__dso_handle+0xd8>
  40138f:	00 00 
  401391:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
    for (unsigned int nl = 0; nl < NTIMES; nl++)
  401397:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40139e:	00 00 
{
  4013a0:	31 c0                	xor    %eax,%eax
  4013a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
/* Perform the respective operation on the four SPFP values in A and B.  */

extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_add_ps (__m128 __A, __m128 __B)
{
  return (__m128) ((__v4sf)__A + (__v4sf)__B);
  4013a8:	c5 f8 28 80 80 50 40 	vmovaps 0x405080(%rax),%xmm0
  4013af:	00 
        for (unsigned int i = 0; i < LEN; i+= SSE_LEN)
  4013b0:	48 83 c0 10          	add    $0x10,%rax
  4013b4:	c4 e2 71 a8 80 70 40 	vfmadd213ps 0x404070(%rax),%xmm1,%xmm0
  4013bb:	40 00 

/* Store four SPFP values.  The address must be 16-byte aligned.  */
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_store_ps (float *__P, __m128 __A)
{
  *(__m128 *)__P = __A;
  4013bd:	c5 f8 29 80 70 40 40 	vmovaps %xmm0,0x404070(%rax)
  4013c4:	00 
  4013c5:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  4013cb:	75 db                	jne    4013a8 <axpy_intr_SSE+0x38>
        dummy(x, y, alpha);
  4013cd:	c5 fa 10 05 0b 0d 00 	vmovss 0xd0b(%rip),%xmm0        # 4020e0 <__dso_handle+0xd8>
  4013d4:	00 
  4013d5:	be 80 40 40 00       	mov    $0x404080,%esi
  4013da:	bf 80 50 40 00       	mov    $0x405080,%edi
  4013df:	e8 d2 fd ff ff       	call   4011b6 <dummy>
    for (unsigned int nl = 0; nl < NTIMES; nl++)
  4013e4:	83 eb 01             	sub    $0x1,%ebx
  4013e7:	c5 f8 28 0d f1 0c 00 	vmovaps 0xcf1(%rip),%xmm1        # 4020e0 <__dso_handle+0xd8>
  4013ee:	00 
  4013ef:	75 af                	jne    4013a0 <axpy_intr_SSE+0x30>
  end_t = get_wall_time();
  4013f1:	31 c0                	xor    %eax,%eax
  4013f3:	e8 d8 fd ff ff       	call   4011d0 <get_wall_time>
  results(end_t - start_t, "axpy_intr_SSE");
  4013f8:	c5 fb 5c 44 24 08    	vsubsd 0x8(%rsp),%xmm0,%xmm0
  4013fe:	bf 34 20 40 00       	mov    $0x402034,%edi
  401403:	e8 88 fe ff ff       	call   401290 <results>
  check(y);
  401408:	bf 80 40 40 00       	mov    $0x404080,%edi
  40140d:	e8 fe fd ff ff       	call   401210 <check>
}
  401412:	48 83 c4 10          	add    $0x10,%rsp
  401416:	31 c0                	xor    %eax,%eax
  401418:	5b                   	pop    %rbx
  401419:	c3                   	ret
  40141a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401420 <__libc_csu_init>:
  401420:	f3 0f 1e fa          	endbr64
  401424:	41 57                	push   %r15
  401426:	49 89 d7             	mov    %rdx,%r15
  401429:	41 56                	push   %r14
  40142b:	49 89 f6             	mov    %rsi,%r14
  40142e:	41 55                	push   %r13
  401430:	41 89 fd             	mov    %edi,%r13d
  401433:	41 54                	push   %r12
  401435:	4c 8d 25 a4 29 00 00 	lea    0x29a4(%rip),%r12        # 403de0 <__frame_dummy_init_array_entry>
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
