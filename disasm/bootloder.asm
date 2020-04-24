
bin/bootloder.bin:     file format binary


Disassembly of section .data:

00000000 <.data>:
       0:	fa                   	cli    
       1:	31 c0                	xor    %eax,%eax
       3:	8e c0                	mov    %eax,%es
       5:	8e d8                	mov    %eax,%ds
       7:	b8 03 00 cd 10       	mov    $0x10cd0003,%eax
       c:	b8 1f 02 b9 02       	mov    $0x2b9021f,%eax
      11:	00 ba 80 00 bb 00    	add    %bh,0xbb0080(%edx)
      17:	7e cd                	jle    0xffffffe6
      19:	13 b4 0f cd 10 66 bf 	adc    -0x4099ef33(%edi,%ecx,1),%esi
      20:	1a bc 00 00 66 0f b6 	sbb    -0x49f09a00(%eax,%eax,1),%bh
      27:	c8 67 66 89          	enter  $0x6667,$0x89
      2b:	0f 66 0f             	pcmpgtd (%edi),%mm1
      2e:	b6 cc                	mov    $0xcc,%dh
      30:	67 66 89 4f 04       	mov    %cx,0x4(%bx)
      35:	66 0f b6 cf          	movzbw %bh,%cx
      39:	67 66 89 4f 08       	mov    %cx,0x8(%bx)
      3e:	f3 66 a5             	rep movsw %ds:(%esi),%es:(%edi)
      41:	0f 01 16             	lgdtl  (%esi)
      44:	50                   	push   %eax
      45:	7c e4                	jl     0x2b
      47:	92                   	xchg   %eax,%edx
      48:	0c 02                	or     $0x2,%al
      4a:	e6 92                	out    %al,$0x92
      4c:	e9 b1 01 90 17       	jmp    0x17900202
      51:	00 58 7c             	add    %bl,0x7c(%eax)
      54:	00 00                	add    %al,(%eax)
      56:	90                   	nop
      57:	90                   	nop
      58:	03 00                	add    (%eax),%eax
      5a:	00 00                	add    %al,(%eax)
      5c:	58                   	pop    %eax
      5d:	7c 00                	jl     0x5f
      5f:	00 ff                	add    %bh,%bh
      61:	ff 00                	incl   (%eax)
      63:	00 00                	add    %al,(%eax)
      65:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
      6c:	00 92 cf 00 00 00    	add    %dl,0xcf(%edx)
	...
     1fe:	55                   	push   %ebp
     1ff:	aa                   	stos   %al,%es:(%edi)
     200:	66 b8 20 e8          	mov    $0xe820,%ax
     204:	00 00                	add    %al,(%eax)
     206:	66 31 db             	xor    %bx,%bx
     209:	66 bf 1a bc          	mov    $0xbc1a,%di
     20d:	00 00                	add    %al,(%eax)
     20f:	66 b9 14 00          	mov    $0x14,%cx
     213:	00 00                	add    %al,(%eax)
     215:	66 ba 50 41          	mov    $0x4150,%dx
     219:	4d                   	dec    %ebp
     21a:	53                   	push   %ebx
     21b:	cd 15                	int    $0x15
     21d:	0f 20 c0             	mov    %cr0,%eax
     220:	66 83 c8 01          	or     $0x1,%ax
     224:	0f 22 c0             	mov    %eax,%cr0
     227:	b8 10 00 8e d8       	mov    $0xd88e0010,%eax
     22c:	8e d0                	mov    %eax,%ss
     22e:	31 c0                	xor    %eax,%eax
     230:	8e c0                	mov    %eax,%es
     232:	8e e0                	mov    %eax,%fs
     234:	8e e8                	mov    %eax,%gs
     236:	66 bc 00 40          	mov    $0x4000,%sp
     23a:	62 00                	bound  %eax,(%eax)
     23c:	ea 41 7e 08 00 9c 89 	ljmp   $0x899c,$0x87e41
     243:	e5 8b                	in     $0x8b,%eax
     245:	45                   	inc    %ebp
     246:	00 81 34 24 00 00    	add    %al,0x2434(%ecx)
     24c:	20 00                	and    %al,(%eax)
     24e:	9d                   	popf   
     24f:	9c                   	pushf  
     250:	5b                   	pop    %ebx
     251:	39 d8                	cmp    %ebx,%eax
     253:	75 02                	jne    0x257
     255:	eb 2d                	jmp    0x284
     257:	66 b8 10 00          	mov    $0x10,%ax
     25b:	8e c0                	mov    %eax,%es
     25d:	b8 00 00 00 00       	mov    $0x0,%eax
     262:	0f a2                	cpuid  
     264:	b8 43 50 55 3a       	mov    $0x3a555043,%eax
     269:	26 a3 00 bc 00 00    	mov    %eax,%es:0xbc00
     26f:	26 89 1d 04 bc 00 00 	mov    %ebx,%es:0xbc04
     276:	26 89 15 08 bc 00 00 	mov    %edx,%es:0xbc08
     27d:	26 89 0d 0c bc 00 00 	mov    %ecx,%es:0xbc0c
     284:	bb 00 00 10 00       	mov    $0x100000,%ebx
     289:	89 da                	mov    %ebx,%edx
     28b:	b8 03 10 10 00       	mov    $0x101003,%eax
     290:	b9 00 04 00 00       	mov    $0x400,%ecx
     295:	89 03                	mov    %eax,(%ebx)
     297:	83 c3 04             	add    $0x4,%ebx
     29a:	05 00 10 00 00       	add    $0x1000,%eax
     29f:	e2 f4                	loop   0x295
     2a1:	b9 00 00 10 00       	mov    $0x100000,%ecx
     2a6:	b8 03 00 00 00       	mov    $0x3,%eax
     2ab:	89 03                	mov    %eax,(%ebx)
     2ad:	83 c3 04             	add    $0x4,%ebx
     2b0:	05 00 10 00 00       	add    $0x1000,%eax
     2b5:	e2 f4                	loop   0x2ab
     2b7:	89 d0                	mov    %edx,%eax
     2b9:	0f 22 d8             	mov    %eax,%cr3
     2bc:	0f 20 c0             	mov    %cr0,%eax
     2bf:	0d 00 00 00 80       	or     $0x80000000,%eax
     2c4:	0f 22 c0             	mov    %eax,%cr0
     2c7:	be 58 8a 00 00       	mov    $0x8a58,%esi
     2cc:	bf 00 00 00 00       	mov    $0x0,%edi
     2d1:	b9 00 02 00 00       	mov    $0x200,%ecx
     2d6:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
     2d8:	0f 01 1d 4e 8a 00 00 	lidtl  0x8a4e
     2df:	b8 ff 11 20 28       	mov    $0x282011ff,%eax
     2e4:	e6 21                	out    %al,$0x21
     2e6:	e6 a1                	out    %al,$0xa1
     2e8:	88 e0                	mov    %ah,%al
     2ea:	e6 20                	out    %al,$0x20
     2ec:	e6 a0                	out    %al,$0xa0
     2ee:	c1 e8 10             	shr    $0x10,%eax
     2f1:	e6 21                	out    %al,$0x21
     2f3:	88 e0                	mov    %ah,%al
     2f5:	e6 a1                	out    %al,$0xa1
     2f7:	b8 04 02 01 00       	mov    $0x10204,%eax
     2fc:	e6 21                	out    %al,$0x21
     2fe:	88 e0                	mov    %ah,%al
     300:	e6 a1                	out    %al,$0xa1
     302:	c1 e8 10             	shr    $0x10,%eax
     305:	e6 21                	out    %al,$0x21
     307:	e6 a1                	out    %al,$0xa1
     309:	b0 34                	mov    $0x34,%al
     30b:	e6 43                	out    %al,$0x43
     30d:	b8 9b 2e 00 00       	mov    $0x2e9b,%eax
     312:	e6 40                	out    %al,$0x40
     314:	88 e0                	mov    %ah,%al
     316:	e6 40                	out    %al,$0x40
     318:	b0 fc                	mov    $0xfc,%al
     31a:	e6 21                	out    %al,$0x21
     31c:	b0 ff                	mov    $0xff,%al
     31e:	e6 a1                	out    %al,$0xa1
     320:	fb                   	sti    
     321:	cd 80                	int    $0x80
     323:	fa                   	cli    
     324:	f4                   	hlt    
     325:	bb 14 bc 00 00       	mov    $0xbc14,%ebx
     32a:	89 df                	mov    %ebx,%edi
     32c:	ba 01 00 00 00       	mov    $0x1,%edx
     331:	b9 03 00 00 00       	mov    $0x3,%ecx
     336:	b0 00                	mov    $0x0,%al
     338:	b4 00                	mov    $0x0,%ah
     33a:	e6 70                	out    %al,$0x70
     33c:	e4 71                	in     $0x71,%al
     33e:	26 88 03             	mov    %al,%es:(%ebx)
     341:	43                   	inc    %ebx
     342:	80 c4 02             	add    $0x2,%ah
     345:	88 e0                	mov    %ah,%al
     347:	e2 f1                	loop   0x33a
     349:	b9 03 00 00 00       	mov    $0x3,%ecx
     34e:	b8 07 00 00 00       	mov    $0x7,%eax
     353:	88 c4                	mov    %al,%ah
     355:	e6 70                	out    %al,$0x70
     357:	e4 71                	in     $0x71,%al
     359:	26 88 03             	mov    %al,%es:(%ebx)
     35c:	43                   	inc    %ebx
     35d:	fe c4                	inc    %ah
     35f:	88 e0                	mov    %ah,%al
     361:	e2 f2                	loop   0x355
     363:	b9 21 00 00 00       	mov    $0x21,%ecx
     368:	bb 00 28 40 00       	mov    $0x402800,%ebx
     36d:	b8 03 00 60 00       	mov    $0x600003,%eax
     372:	89 03                	mov    %eax,(%ebx)
     374:	83 c3 04             	add    $0x4,%ebx
     377:	05 00 10 00 00       	add    $0x1000,%eax
     37c:	e2 f4                	loop   0x372
     37e:	e8 5d 1d 00 00       	call   0x20e0
     383:	83 f8 00             	cmp    $0x0,%eax
     386:	74 27                	je     0x3af
     388:	89 c2                	mov    %eax,%edx
     38a:	b9 20 00 00 00       	mov    $0x20,%ecx
     38f:	bb 10 28 40 00       	mov    $0x402810,%ebx
     394:	b8 03 40 60 00       	mov    $0x604003,%eax
     399:	89 03                	mov    %eax,(%ebx)
     39b:	83 c3 04             	add    $0x4,%ebx
     39e:	05 00 10 00 00       	add    $0x1000,%eax
     3a3:	e2 f4                	loop   0x399
     3a5:	bc 00 40 62 c0       	mov    $0xc0624000,%esp
     3aa:	ff d2                	call   *%edx
     3ac:	f4                   	hlt    
     3ad:	eb fd                	jmp    0x3ac
     3af:	66 b8 10 00          	mov    $0x10,%ax
     3b3:	bb c6 7f 00 00       	mov    $0x7fc6,%ebx
     3b8:	b9 12 00 00 00       	mov    $0x12,%ecx
     3bd:	b2 02                	mov    $0x2,%dl
     3bf:	e8 ff 00 00 00       	call   0x4c3
     3c4:	eb e6                	jmp    0x3ac
     3c6:	4e                   	dec    %esi
     3c7:	6f                   	outsl  %ds:(%esi),(%dx)
     3c8:	74 20                	je     0x3ea
     3ca:	6c                   	insb   (%dx),%es:(%edi)
     3cb:	6f                   	outsl  %ds:(%esi),(%dx)
     3cc:	61                   	popa   
     3cd:	64 20 6b 65          	and    %ch,%fs:0x65(%ebx)
     3d1:	72 6e                	jb     0x441
     3d3:	65 6c                	gs insb (%dx),%es:(%edi)
     3d5:	21 0d 0a 60 1e 66    	and    %ecx,0x661e600a
     3db:	b9 10 00 8e c1       	mov    $0xc18e0010,%ecx
     3e0:	8e d9                	mov    %ecx,%ds
     3e2:	e8 ef 00 00 00       	call   0x4d6
     3e7:	6b d9 02             	imul   $0x2,%ecx,%ebx
     3ea:	81 c3 00 80 0b 00    	add    $0xb8000,%ebx
     3f0:	3c 08                	cmp    $0x8,%al
     3f2:	74 02                	je     0x3f6
     3f4:	eb 1d                	jmp    0x413
     3f6:	83 f9 00             	cmp    $0x0,%ecx
     3f9:	0f 84 c1 00 00 00    	je     0x4c0
     3ff:	83 eb 02             	sub    $0x2,%ebx
     402:	26 66 c7 03 00 07    	movw   $0x700,%es:(%ebx)
     408:	49                   	dec    %ecx
     409:	e8 ed 00 00 00       	call   0x4fb
     40e:	e9 ad 00 00 00       	jmp    0x4c0
     413:	3c 09                	cmp    $0x9,%al
     415:	74 02                	je     0x419
     417:	eb 4e                	jmp    0x467
     419:	be d0 07 00 00       	mov    $0x7d0,%esi
     41e:	89 c8                	mov    %ecx,%eax
     420:	83 e0 07             	and    $0x7,%eax
     423:	83 f8 00             	cmp    $0x0,%eax
     426:	74 02                	je     0x42a
     428:	eb 03                	jmp    0x42d
     42a:	83 c0 08             	add    $0x8,%eax
     42d:	bf d0 07 00 00       	mov    $0x7d0,%edi
     432:	01 c7                	add    %eax,%edi
     434:	6b ff 02             	imul   $0x2,%edi,%edi
     437:	6b f6 02             	imul   $0x2,%esi,%esi
     43a:	b8 d0 07 00 00       	mov    $0x7d0,%eax
     43f:	29 c8                	sub    %ecx,%eax
     441:	d1 e8                	shr    %eax
     443:	51                   	push   %ecx
     444:	89 c1                	mov    %eax,%ecx
     446:	41                   	inc    %ecx
     447:	fd                   	std    
     448:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
     44a:	fc                   	cld    
     44b:	b9 04 00 00 00       	mov    $0x4,%ecx
     450:	26 c7 03 20 07 20 07 	movl   $0x7200720,%es:(%ebx)
     457:	83 c3 04             	add    $0x4,%ebx
     45a:	e2 f4                	loop   0x450
     45c:	59                   	pop    %ecx
     45d:	83 c1 08             	add    $0x8,%ecx
     460:	e8 96 00 00 00       	call   0x4fb
     465:	eb 59                	jmp    0x4c0
     467:	3c 0d                	cmp    $0xd,%al
     469:	74 02                	je     0x46d
     46b:	eb 14                	jmp    0x481
     46d:	66 89 c8             	mov    %cx,%ax
     470:	b3 50                	mov    $0x50,%bl
     472:	f6 f3                	div    %bl
     474:	0f b6 c4             	movzbl %ah,%eax
     477:	66 29 c1             	sub    %ax,%cx
     47a:	e8 7c 00 00 00       	call   0x4fb
     47f:	eb 3f                	jmp    0x4c0
     481:	3c 0a                	cmp    $0xa,%al
     483:	74 02                	je     0x487
     485:	eb 27                	jmp    0x4ae
     487:	81 f9 30 07 00 00    	cmp    $0x730,%ecx
     48d:	73 02                	jae    0x491
     48f:	eb 13                	jmp    0x4a4
     491:	be a0 00 00 00       	mov    $0xa0,%esi
     496:	bf 00 00 00 00       	mov    $0x0,%edi
     49b:	b9 c0 03 00 00       	mov    $0x3c0,%ecx
     4a0:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
     4a2:	eb 1c                	jmp    0x4c0
     4a4:	83 c1 50             	add    $0x50,%ecx
     4a7:	e8 4f 00 00 00       	call   0x4fb
     4ac:	eb 12                	jmp    0x4c0
     4ae:	3c 20                	cmp    $0x20,%al
     4b0:	7c 0e                	jl     0x4c0
     4b2:	3c 7e                	cmp    $0x7e,%al
     4b4:	77 0a                	ja     0x4c0
     4b6:	41                   	inc    %ecx
     4b7:	e8 3f 00 00 00       	call   0x4fb
     4bc:	26 66 89 03          	mov    %ax,%es:(%ebx)
     4c0:	1f                   	pop    %ds
     4c1:	61                   	popa   
     4c2:	c3                   	ret    
     4c3:	60                   	pusha  
     4c4:	1e                   	push   %ds
     4c5:	8e d8                	mov    %eax,%ds
     4c7:	88 d4                	mov    %dl,%ah
     4c9:	8a 03                	mov    (%ebx),%al
     4cb:	e8 08 ff ff ff       	call   0x3d8
     4d0:	43                   	inc    %ebx
     4d1:	e2 f6                	loop   0x4c9
     4d3:	1f                   	pop    %ds
     4d4:	61                   	popa   
     4d5:	c3                   	ret    
     4d6:	50                   	push   %eax
     4d7:	52                   	push   %edx
     4d8:	31 c9                	xor    %ecx,%ecx
     4da:	66 b8 0e 0f          	mov    $0xf0e,%ax
     4de:	66 ba d4 03          	mov    $0x3d4,%dx
     4e2:	ee                   	out    %al,(%dx)
     4e3:	66 ba d5 03          	mov    $0x3d5,%dx
     4e7:	ec                   	in     (%dx),%al
     4e8:	88 c5                	mov    %al,%ch
     4ea:	88 e0                	mov    %ah,%al
     4ec:	66 ba d4 03          	mov    $0x3d4,%dx
     4f0:	ee                   	out    %al,(%dx)
     4f1:	66 ba d5 03          	mov    $0x3d5,%dx
     4f5:	ec                   	in     (%dx),%al
     4f6:	88 c1                	mov    %al,%cl
     4f8:	5a                   	pop    %edx
     4f9:	58                   	pop    %eax
     4fa:	c3                   	ret    
     4fb:	50                   	push   %eax
     4fc:	52                   	push   %edx
     4fd:	66 b8 0e 0f          	mov    $0xf0e,%ax
     501:	66 ba d4 03          	mov    $0x3d4,%dx
     505:	ee                   	out    %al,(%dx)
     506:	66 ba d5 03          	mov    $0x3d5,%dx
     50a:	88 e8                	mov    %ch,%al
     50c:	ee                   	out    %al,(%dx)
     50d:	88 e0                	mov    %ah,%al
     50f:	66 ba d4 03          	mov    $0x3d4,%dx
     513:	ee                   	out    %al,(%dx)
     514:	66 ba d5 03          	mov    $0x3d5,%dx
     518:	88 c8                	mov    %cl,%al
     51a:	ee                   	out    %al,(%dx)
     51b:	5a                   	pop    %edx
     51c:	58                   	pop    %eax
     51d:	c3                   	ret    
     51e:	51                   	push   %ecx
     51f:	31 c0                	xor    %eax,%eax
     521:	b9 64 00 00 00       	mov    $0x64,%ecx
     526:	e4 64                	in     $0x64,%al
     528:	24 01                	and    $0x1,%al
     52a:	3c 00                	cmp    $0x0,%al
     52c:	75 04                	jne    0x532
     52e:	e2 f6                	loop   0x526
     530:	eb 0c                	jmp    0x53e
     532:	e4 60                	in     $0x60,%al
     534:	90                   	nop
     535:	90                   	nop
     536:	90                   	nop
     537:	90                   	nop
     538:	90                   	nop
     539:	90                   	nop
     53a:	90                   	nop
     53b:	90                   	nop
     53c:	90                   	nop
     53d:	90                   	nop
     53e:	59                   	pop    %ecx
     53f:	c3                   	ret    
     540:	51                   	push   %ecx
     541:	50                   	push   %eax
     542:	b9 08 00 00 00       	mov    $0x8,%ecx
     547:	c1 c3 04             	rol    $0x4,%ebx
     54a:	88 d8                	mov    %bl,%al
     54c:	24 0f                	and    $0xf,%al
     54e:	3c 09                	cmp    $0x9,%al
     550:	7f 09                	jg     0x55b
     552:	04 30                	add    $0x30,%al
     554:	e8 7f fe ff ff       	call   0x3d8
     559:	eb 07                	jmp    0x562
     55b:	04 37                	add    $0x37,%al
     55d:	e8 76 fe ff ff       	call   0x3d8
     562:	e2 e3                	loop   0x547
     564:	b0 0d                	mov    $0xd,%al
     566:	e8 6d fe ff ff       	call   0x3d8
     56b:	b0 0a                	mov    $0xa,%al
     56d:	e8 66 fe ff ff       	call   0x3d8
     572:	58                   	pop    %eax
     573:	59                   	pop    %ecx
     574:	c3                   	ret    
     575:	31 c9                	xor    %ecx,%ecx
     577:	e4 60                	in     $0x60,%al
     579:	b4 02                	mov    $0x2,%ah
     57b:	3c e0                	cmp    $0xe0,%al
     57d:	0f 84 a6 01 00 00    	je     0x729
     583:	3c 80                	cmp    $0x80,%al
     585:	7d 02                	jge    0x589
     587:	eb 05                	jmp    0x58e
     589:	66 b9 00 00          	mov    $0x0,%cx
     58d:	c3                   	ret    
     58e:	66 b9 02 01          	mov    $0x102,%cx
     592:	3c 02                	cmp    $0x2,%al
     594:	7d 02                	jge    0x598
     596:	eb 1a                	jmp    0x5b2
     598:	3c 0b                	cmp    $0xb,%al
     59a:	7e 02                	jle    0x59e
     59c:	eb 14                	jmp    0x5b2
     59e:	3c 0b                	cmp    $0xb,%al
     5a0:	74 04                	je     0x5a6
     5a2:	04 2f                	add    $0x2f,%al
     5a4:	eb 02                	jmp    0x5a8
     5a6:	b0 30                	mov    $0x30,%al
     5a8:	b9 01 00 00 00       	mov    $0x1,%ecx
     5ad:	e9 81 01 00 00       	jmp    0x733
     5b2:	3c 0e                	cmp    $0xe,%al
     5b4:	75 07                	jne    0x5bd
     5b6:	b0 08                	mov    $0x8,%al
     5b8:	e9 76 01 00 00       	jmp    0x733
     5bd:	3c 0f                	cmp    $0xf,%al
     5bf:	75 07                	jne    0x5c8
     5c1:	b0 09                	mov    $0x9,%al
     5c3:	e9 6b 01 00 00       	jmp    0x733
     5c8:	3c 10                	cmp    $0x10,%al
     5ca:	75 07                	jne    0x5d3
     5cc:	b0 71                	mov    $0x71,%al
     5ce:	e9 60 01 00 00       	jmp    0x733
     5d3:	3c 11                	cmp    $0x11,%al
     5d5:	75 07                	jne    0x5de
     5d7:	b0 77                	mov    $0x77,%al
     5d9:	e9 55 01 00 00       	jmp    0x733
     5de:	3c 12                	cmp    $0x12,%al
     5e0:	75 07                	jne    0x5e9
     5e2:	b0 65                	mov    $0x65,%al
     5e4:	e9 4a 01 00 00       	jmp    0x733
     5e9:	3c 13                	cmp    $0x13,%al
     5eb:	75 07                	jne    0x5f4
     5ed:	b0 72                	mov    $0x72,%al
     5ef:	e9 3f 01 00 00       	jmp    0x733
     5f4:	3c 14                	cmp    $0x14,%al
     5f6:	75 07                	jne    0x5ff
     5f8:	b0 74                	mov    $0x74,%al
     5fa:	e9 34 01 00 00       	jmp    0x733
     5ff:	3c 15                	cmp    $0x15,%al
     601:	75 07                	jne    0x60a
     603:	b0 79                	mov    $0x79,%al
     605:	e9 29 01 00 00       	jmp    0x733
     60a:	3c 16                	cmp    $0x16,%al
     60c:	75 07                	jne    0x615
     60e:	b0 75                	mov    $0x75,%al
     610:	e9 1e 01 00 00       	jmp    0x733
     615:	3c 17                	cmp    $0x17,%al
     617:	75 07                	jne    0x620
     619:	b0 69                	mov    $0x69,%al
     61b:	e9 13 01 00 00       	jmp    0x733
     620:	3c 18                	cmp    $0x18,%al
     622:	75 07                	jne    0x62b
     624:	b0 6f                	mov    $0x6f,%al
     626:	e9 08 01 00 00       	jmp    0x733
     62b:	3c 19                	cmp    $0x19,%al
     62d:	75 07                	jne    0x636
     62f:	b0 70                	mov    $0x70,%al
     631:	e9 fd 00 00 00       	jmp    0x733
     636:	3c 1a                	cmp    $0x1a,%al
     638:	75 07                	jne    0x641
     63a:	b0 5b                	mov    $0x5b,%al
     63c:	e9 f2 00 00 00       	jmp    0x733
     641:	3c 1b                	cmp    $0x1b,%al
     643:	75 07                	jne    0x64c
     645:	b0 5d                	mov    $0x5d,%al
     647:	e9 e7 00 00 00       	jmp    0x733
     64c:	3c 1c                	cmp    $0x1c,%al
     64e:	75 07                	jne    0x657
     650:	b0 0d                	mov    $0xd,%al
     652:	e9 dc 00 00 00       	jmp    0x733
     657:	3c 1e                	cmp    $0x1e,%al
     659:	75 07                	jne    0x662
     65b:	b0 61                	mov    $0x61,%al
     65d:	e9 d1 00 00 00       	jmp    0x733
     662:	3c 1f                	cmp    $0x1f,%al
     664:	75 07                	jne    0x66d
     666:	b0 73                	mov    $0x73,%al
     668:	e9 c6 00 00 00       	jmp    0x733
     66d:	3c 20                	cmp    $0x20,%al
     66f:	75 07                	jne    0x678
     671:	b0 64                	mov    $0x64,%al
     673:	e9 bb 00 00 00       	jmp    0x733
     678:	3c 21                	cmp    $0x21,%al
     67a:	75 07                	jne    0x683
     67c:	b0 66                	mov    $0x66,%al
     67e:	e9 b0 00 00 00       	jmp    0x733
     683:	3c 22                	cmp    $0x22,%al
     685:	75 07                	jne    0x68e
     687:	b0 67                	mov    $0x67,%al
     689:	e9 a5 00 00 00       	jmp    0x733
     68e:	3c 23                	cmp    $0x23,%al
     690:	75 07                	jne    0x699
     692:	b0 68                	mov    $0x68,%al
     694:	e9 9a 00 00 00       	jmp    0x733
     699:	3c 24                	cmp    $0x24,%al
     69b:	75 07                	jne    0x6a4
     69d:	b0 6a                	mov    $0x6a,%al
     69f:	e9 8f 00 00 00       	jmp    0x733
     6a4:	3c 25                	cmp    $0x25,%al
     6a6:	75 07                	jne    0x6af
     6a8:	b0 6b                	mov    $0x6b,%al
     6aa:	e9 84 00 00 00       	jmp    0x733
     6af:	3c 26                	cmp    $0x26,%al
     6b1:	75 04                	jne    0x6b7
     6b3:	b0 6c                	mov    $0x6c,%al
     6b5:	eb 7c                	jmp    0x733
     6b7:	3c 27                	cmp    $0x27,%al
     6b9:	75 04                	jne    0x6bf
     6bb:	b0 3b                	mov    $0x3b,%al
     6bd:	eb 74                	jmp    0x733
     6bf:	3c 28                	cmp    $0x28,%al
     6c1:	75 04                	jne    0x6c7
     6c3:	b0 27                	mov    $0x27,%al
     6c5:	eb 6c                	jmp    0x733
     6c7:	3c 29                	cmp    $0x29,%al
     6c9:	75 04                	jne    0x6cf
     6cb:	b0 60                	mov    $0x60,%al
     6cd:	eb 64                	jmp    0x733
     6cf:	3c 2b                	cmp    $0x2b,%al
     6d1:	75 04                	jne    0x6d7
     6d3:	b0 5c                	mov    $0x5c,%al
     6d5:	eb 5c                	jmp    0x733
     6d7:	3c 2c                	cmp    $0x2c,%al
     6d9:	75 04                	jne    0x6df
     6db:	b0 7a                	mov    $0x7a,%al
     6dd:	eb 54                	jmp    0x733
     6df:	3c 2d                	cmp    $0x2d,%al
     6e1:	75 04                	jne    0x6e7
     6e3:	b0 78                	mov    $0x78,%al
     6e5:	eb 4c                	jmp    0x733
     6e7:	3c 2e                	cmp    $0x2e,%al
     6e9:	75 04                	jne    0x6ef
     6eb:	b0 63                	mov    $0x63,%al
     6ed:	eb 44                	jmp    0x733
     6ef:	3c 2f                	cmp    $0x2f,%al
     6f1:	75 04                	jne    0x6f7
     6f3:	b0 76                	mov    $0x76,%al
     6f5:	eb 3c                	jmp    0x733
     6f7:	3c 30                	cmp    $0x30,%al
     6f9:	75 04                	jne    0x6ff
     6fb:	b0 62                	mov    $0x62,%al
     6fd:	eb 34                	jmp    0x733
     6ff:	3c 31                	cmp    $0x31,%al
     701:	75 04                	jne    0x707
     703:	b0 6e                	mov    $0x6e,%al
     705:	eb 2c                	jmp    0x733
     707:	3c 32                	cmp    $0x32,%al
     709:	75 04                	jne    0x70f
     70b:	b0 6d                	mov    $0x6d,%al
     70d:	eb 24                	jmp    0x733
     70f:	3c 33                	cmp    $0x33,%al
     711:	75 04                	jne    0x717
     713:	b0 2c                	mov    $0x2c,%al
     715:	eb 1c                	jmp    0x733
     717:	3c 34                	cmp    $0x34,%al
     719:	75 04                	jne    0x71f
     71b:	b0 2e                	mov    $0x2e,%al
     71d:	eb 14                	jmp    0x733
     71f:	3c 35                	cmp    $0x35,%al
     721:	75 04                	jne    0x727
     723:	b0 2f                	mov    $0x2f,%al
     725:	eb 0c                	jmp    0x733
     727:	eb 0c                	jmp    0x735
     729:	e8 f0 fd ff ff       	call   0x51e
     72e:	b4 e0                	mov    $0xe0,%ah
     730:	b1 00                	mov    $0x0,%cl
     732:	c3                   	ret    
     733:	b1 01                	mov    $0x1,%cl
     735:	c3                   	ret    
     736:	60                   	pusha  
     737:	66 ba f7 01          	mov    $0x1f7,%dx
     73b:	ec                   	in     (%dx),%al
     73c:	0c 02                	or     $0x2,%al
     73e:	ee                   	out    %al,(%dx)
     73f:	66 ba f2 01          	mov    $0x1f2,%dx
     743:	88 c8                	mov    %cl,%al
     745:	ee                   	out    %al,(%dx)
     746:	66 42                	inc    %dx
     748:	88 d8                	mov    %bl,%al
     74a:	ee                   	out    %al,(%dx)
     74b:	66 42                	inc    %dx
     74d:	88 f8                	mov    %bh,%al
     74f:	ee                   	out    %al,(%dx)
     750:	66 42                	inc    %dx
     752:	c1 eb 10             	shr    $0x10,%ebx
     755:	88 d8                	mov    %bl,%al
     757:	ee                   	out    %al,(%dx)
     758:	66 42                	inc    %dx
     75a:	80 e7 0f             	and    $0xf,%bh
     75d:	88 f8                	mov    %bh,%al
     75f:	0c e0                	or     $0xe0,%al
     761:	ee                   	out    %al,(%dx)
     762:	66 42                	inc    %dx
     764:	b0 20                	mov    $0x20,%al
     766:	ee                   	out    %al,(%dx)
     767:	ec                   	in     (%dx),%al
     768:	24 88                	and    $0x88,%al
     76a:	3c 08                	cmp    $0x8,%al
     76c:	75 f9                	jne    0x767
     76e:	66 ba f0 01          	mov    $0x1f0,%dx
     772:	81 e1 ff 00 00 00    	and    $0xff,%ecx
     778:	69 c9 00 01 00 00    	imul   $0x100,%ecx,%ecx
     77e:	66 ed                	in     (%dx),%ax
     780:	26 66 89 07          	mov    %ax,%es:(%edi)
     784:	83 c7 02             	add    $0x2,%edi
     787:	e2 f5                	loop   0x77e
     789:	61                   	popa   
     78a:	c3                   	ret    
     78b:	69 6e 74 20 31 20 69 	imul   $0x69203120,0x74(%esi),%ebp
     792:	6e                   	outsb  %ds:(%esi),(%dx)
     793:	74 20                	je     0x7b5
     795:	32 20                	xor    (%eax),%ah
     797:	69 6e 74 20 33 20 69 	imul   $0x69203320,0x74(%esi),%ebp
     79e:	6e                   	outsb  %ds:(%esi),(%dx)
     79f:	74 20                	je     0x7c1
     7a1:	34 20                	xor    $0x20,%al
     7a3:	69 6e 74 20 35 20 69 	imul   $0x69203520,0x74(%esi),%ebp
     7aa:	6e                   	outsb  %ds:(%esi),(%dx)
     7ab:	74 20                	je     0x7cd
     7ad:	36 20 69 6e          	and    %ch,%ss:0x6e(%ecx)
     7b1:	74 20                	je     0x7d3
     7b3:	37                   	aaa    
     7b4:	20 69 6e             	and    %ch,0x6e(%ecx)
     7b7:	74 20                	je     0x7d9
     7b9:	38 20                	cmp    %ah,(%eax)
     7bb:	69 6e 74 20 39 20 69 	imul   $0x69203920,0x74(%esi),%ebp
     7c2:	6e                   	outsb  %ds:(%esi),(%dx)
     7c3:	74 20                	je     0x7e5
     7c5:	31 30                	xor    %esi,(%eax)
     7c7:	69 6e 74 20 31 31 69 	imul   $0x69313120,0x74(%esi),%ebp
     7ce:	6e                   	outsb  %ds:(%esi),(%dx)
     7cf:	74 20                	je     0x7f1
     7d1:	31 32                	xor    %esi,(%edx)
     7d3:	69 6e 74 20 31 33 0d 	imul   $0xd333120,0x74(%esi),%ebp
     7da:	0a 69 6e             	or     0x6e(%ecx),%ch
     7dd:	74 20                	je     0x7ff
     7df:	31 34 0d 0a 69 6e 74 	xor    %esi,0x746e690a(,%ecx,1)
     7e6:	20 31                	and    %dh,(%ecx)
     7e8:	35 69 6e 74 20       	xor    $0x20746e69,%eax
     7ed:	31 36                	xor    %esi,(%esi)
     7ef:	69 6e 74 20 30 78 32 	imul   $0x32783020,0x74(%esi),%ebp
     7f6:	30 69 6e             	xor    %ch,0x6e(%ecx)
     7f9:	74 20                	je     0x81b
     7fb:	30 78 32             	xor    %bh,0x32(%eax)
     7fe:	31 69 6e             	xor    %ebp,0x6e(%ecx)
     801:	74 20                	je     0x823
     803:	30 78 32             	xor    %bh,0x32(%eax)
     806:	32 69 6e             	xor    0x6e(%ecx),%ch
     809:	74 20                	je     0x82b
     80b:	30 78 32             	xor    %bh,0x32(%eax)
     80e:	33 69 6e             	xor    0x6e(%ecx),%ebp
     811:	74 20                	je     0x833
     813:	30 78 32             	xor    %bh,0x32(%eax)
     816:	34 69                	xor    $0x69,%al
     818:	6e                   	outsb  %ds:(%esi),(%dx)
     819:	74 20                	je     0x83b
     81b:	30 78 32             	xor    %bh,0x32(%eax)
     81e:	35 69 6e 74 20       	xor    $0x20746e69,%eax
     823:	30 78 32             	xor    %bh,0x32(%eax)
     826:	36 69 6e 74 20 30 78 	imul   $0x32783020,%ss:0x74(%esi),%ebp
     82d:	32 
     82e:	37                   	aaa    
     82f:	69 6e 74 20 30 78 32 	imul   $0x32783020,0x74(%esi),%ebp
     836:	38 69 6e             	cmp    %ch,0x6e(%ecx)
     839:	74 20                	je     0x85b
     83b:	30 78 32             	xor    %bh,0x32(%eax)
     83e:	39 69 6e             	cmp    %ebp,0x6e(%ecx)
     841:	74 20                	je     0x863
     843:	30 78 32             	xor    %bh,0x32(%eax)
     846:	61                   	popa   
     847:	69 6e 74 20 30 78 32 	imul   $0x32783020,0x74(%esi),%ebp
     84e:	62 69 6e             	bound  %ebp,0x6e(%ecx)
     851:	74 20                	je     0x873
     853:	30 78 32             	xor    %bh,0x32(%eax)
     856:	63 69 6e             	arpl   %bp,0x6e(%ecx)
     859:	74 20                	je     0x87b
     85b:	30 78 32             	xor    %bh,0x32(%eax)
     85e:	64 69 6e 74 20 30 78 	imul   $0x32783020,%fs:0x74(%esi),%ebp
     865:	32 
     866:	65 69 6e 74 20 30 78 	imul   $0x32783020,%gs:0x74(%esi),%ebp
     86d:	32 
     86e:	66 68 65 61          	pushw  $0x6165
     872:	64 2e 61             	fs cs popa 
     875:	73 6d                	jae    0x8e4
     877:	20 73 79             	and    %dh,0x79(%ebx)
     87a:	73 63                	jae    0x8df
     87c:	61                   	popa   
     87d:	6c                   	insb   (%dx),%es:(%edi)
     87e:	6c                   	insb   (%dx),%es:(%edi)
     87f:	20 69 6e             	and    %ch,0x6e(%ecx)
     882:	74 65                	je     0x8e9
     884:	72 72                	jb     0x8f8
     886:	75 70                	jne    0x8f8
     888:	74 20                	je     0x8aa
     88a:	74 65                	je     0x8f1
     88c:	73 74                	jae    0x902
     88e:	2e 5c                	cs pop %esp
     890:	6e                   	outsb  %ds:(%esi),(%dx)
     891:	bb 00 00 00 00       	mov    $0x0,%ebx
     896:	ba 00 00 00 00       	mov    $0x0,%edx
     89b:	50                   	push   %eax
     89c:	8b 44 24 04          	mov    0x4(%esp),%eax
     8a0:	83 c0 02             	add    $0x2,%eax
     8a3:	89 44 24 04          	mov    %eax,0x4(%esp)
     8a7:	58                   	pop    %eax
     8a8:	cf                   	iret   
     8a9:	66 b8 10 00          	mov    $0x10,%ax
     8ad:	bb 8b 83 00 00       	mov    $0x838b,%ebx
     8b2:	b9 06 00 00 00       	mov    $0x6,%ecx
     8b7:	b2 02                	mov    $0x2,%dl
     8b9:	e8 05 fc ff ff       	call   0x4c3
     8be:	b0 20                	mov    $0x20,%al
     8c0:	e6 20                	out    %al,$0x20
     8c2:	e9 83 05 00 00       	jmp    0xe4a
     8c7:	cf                   	iret   
     8c8:	66 b8 10 00          	mov    $0x10,%ax
     8cc:	bb 8b 83 00 00       	mov    $0x838b,%ebx
     8d1:	b9 06 00 00 00       	mov    $0x6,%ecx
     8d6:	b2 02                	mov    $0x2,%dl
     8d8:	e8 e6 fb ff ff       	call   0x4c3
     8dd:	b0 20                	mov    $0x20,%al
     8df:	e6 20                	out    %al,$0x20
     8e1:	e9 64 05 00 00       	jmp    0xe4a
     8e6:	cf                   	iret   
     8e7:	66 b8 10 00          	mov    $0x10,%ax
     8eb:	bb 91 83 00 00       	mov    $0x8391,%ebx
     8f0:	b9 06 00 00 00       	mov    $0x6,%ecx
     8f5:	b2 02                	mov    $0x2,%dl
     8f7:	e8 c7 fb ff ff       	call   0x4c3
     8fc:	b0 20                	mov    $0x20,%al
     8fe:	e6 20                	out    %al,$0x20
     900:	e9 45 05 00 00       	jmp    0xe4a
     905:	cf                   	iret   
     906:	66 b8 10 00          	mov    $0x10,%ax
     90a:	bb 97 83 00 00       	mov    $0x8397,%ebx
     90f:	b9 06 00 00 00       	mov    $0x6,%ecx
     914:	b2 02                	mov    $0x2,%dl
     916:	e8 a8 fb ff ff       	call   0x4c3
     91b:	b0 20                	mov    $0x20,%al
     91d:	e6 20                	out    %al,$0x20
     91f:	e9 26 05 00 00       	jmp    0xe4a
     924:	cf                   	iret   
     925:	66 b8 10 00          	mov    $0x10,%ax
     929:	bb 9d 83 00 00       	mov    $0x839d,%ebx
     92e:	b9 06 00 00 00       	mov    $0x6,%ecx
     933:	b2 02                	mov    $0x2,%dl
     935:	e8 89 fb ff ff       	call   0x4c3
     93a:	b0 20                	mov    $0x20,%al
     93c:	e6 20                	out    %al,$0x20
     93e:	e9 07 05 00 00       	jmp    0xe4a
     943:	cf                   	iret   
     944:	66 b8 10 00          	mov    $0x10,%ax
     948:	bb a3 83 00 00       	mov    $0x83a3,%ebx
     94d:	b9 06 00 00 00       	mov    $0x6,%ecx
     952:	b2 02                	mov    $0x2,%dl
     954:	e8 6a fb ff ff       	call   0x4c3
     959:	b0 20                	mov    $0x20,%al
     95b:	e6 20                	out    %al,$0x20
     95d:	e9 e8 04 00 00       	jmp    0xe4a
     962:	cf                   	iret   
     963:	66 b8 10 00          	mov    $0x10,%ax
     967:	bb a9 83 00 00       	mov    $0x83a9,%ebx
     96c:	b9 06 00 00 00       	mov    $0x6,%ecx
     971:	b2 02                	mov    $0x2,%dl
     973:	e8 4b fb ff ff       	call   0x4c3
     978:	b0 20                	mov    $0x20,%al
     97a:	e6 20                	out    %al,$0x20
     97c:	e9 c9 04 00 00       	jmp    0xe4a
     981:	cf                   	iret   
     982:	66 b8 10 00          	mov    $0x10,%ax
     986:	bb af 83 00 00       	mov    $0x83af,%ebx
     98b:	b9 06 00 00 00       	mov    $0x6,%ecx
     990:	b2 02                	mov    $0x2,%dl
     992:	e8 2c fb ff ff       	call   0x4c3
     997:	b0 20                	mov    $0x20,%al
     999:	e6 20                	out    %al,$0x20
     99b:	e9 aa 04 00 00       	jmp    0xe4a
     9a0:	cf                   	iret   
     9a1:	66 b8 10 00          	mov    $0x10,%ax
     9a5:	bb b5 83 00 00       	mov    $0x83b5,%ebx
     9aa:	b9 06 00 00 00       	mov    $0x6,%ecx
     9af:	b2 02                	mov    $0x2,%dl
     9b1:	e8 0d fb ff ff       	call   0x4c3
     9b6:	b0 20                	mov    $0x20,%al
     9b8:	e6 20                	out    %al,$0x20
     9ba:	e9 8b 04 00 00       	jmp    0xe4a
     9bf:	cf                   	iret   
     9c0:	66 b8 10 00          	mov    $0x10,%ax
     9c4:	bb bb 83 00 00       	mov    $0x83bb,%ebx
     9c9:	b9 06 00 00 00       	mov    $0x6,%ecx
     9ce:	b2 02                	mov    $0x2,%dl
     9d0:	e8 ee fa ff ff       	call   0x4c3
     9d5:	b0 20                	mov    $0x20,%al
     9d7:	e6 20                	out    %al,$0x20
     9d9:	e9 6c 04 00 00       	jmp    0xe4a
     9de:	cf                   	iret   
     9df:	66 b8 10 00          	mov    $0x10,%ax
     9e3:	bb c1 83 00 00       	mov    $0x83c1,%ebx
     9e8:	b9 06 00 00 00       	mov    $0x6,%ecx
     9ed:	b2 02                	mov    $0x2,%dl
     9ef:	e8 cf fa ff ff       	call   0x4c3
     9f4:	b0 20                	mov    $0x20,%al
     9f6:	e6 20                	out    %al,$0x20
     9f8:	e9 4d 04 00 00       	jmp    0xe4a
     9fd:	cf                   	iret   
     9fe:	66 b8 10 00          	mov    $0x10,%ax
     a02:	bb c7 83 00 00       	mov    $0x83c7,%ebx
     a07:	b9 06 00 00 00       	mov    $0x6,%ecx
     a0c:	b2 02                	mov    $0x2,%dl
     a0e:	e8 b0 fa ff ff       	call   0x4c3
     a13:	b0 20                	mov    $0x20,%al
     a15:	e6 20                	out    %al,$0x20
     a17:	e9 2e 04 00 00       	jmp    0xe4a
     a1c:	cf                   	iret   
     a1d:	66 b8 10 00          	mov    $0x10,%ax
     a21:	bb cd 83 00 00       	mov    $0x83cd,%ebx
     a26:	b9 06 00 00 00       	mov    $0x6,%ecx
     a2b:	b2 02                	mov    $0x2,%dl
     a2d:	e8 91 fa ff ff       	call   0x4c3
     a32:	b0 20                	mov    $0x20,%al
     a34:	e6 20                	out    %al,$0x20
     a36:	e9 0f 04 00 00       	jmp    0xe4a
     a3b:	cf                   	iret   
     a3c:	66 b8 10 00          	mov    $0x10,%ax
     a40:	bb d3 83 00 00       	mov    $0x83d3,%ebx
     a45:	b9 08 00 00 00       	mov    $0x8,%ecx
     a4a:	b2 02                	mov    $0x2,%dl
     a4c:	e8 72 fa ff ff       	call   0x4c3
     a51:	b0 20                	mov    $0x20,%al
     a53:	e6 20                	out    %al,$0x20
     a55:	e9 f0 03 00 00       	jmp    0xe4a
     a5a:	cf                   	iret   
     a5b:	66 b8 10 00          	mov    $0x10,%ax
     a5f:	bb db 83 00 00       	mov    $0x83db,%ebx
     a64:	b9 08 00 00 00       	mov    $0x8,%ecx
     a69:	b2 02                	mov    $0x2,%dl
     a6b:	e8 53 fa ff ff       	call   0x4c3
     a70:	b0 20                	mov    $0x20,%al
     a72:	e6 20                	out    %al,$0x20
     a74:	e9 d1 03 00 00       	jmp    0xe4a
     a79:	cf                   	iret   
     a7a:	66 b8 10 00          	mov    $0x10,%ax
     a7e:	bb e3 83 00 00       	mov    $0x83e3,%ebx
     a83:	b9 06 00 00 00       	mov    $0x6,%ecx
     a88:	b2 02                	mov    $0x2,%dl
     a8a:	e8 34 fa ff ff       	call   0x4c3
     a8f:	b0 20                	mov    $0x20,%al
     a91:	e6 20                	out    %al,$0x20
     a93:	e9 b2 03 00 00       	jmp    0xe4a
     a98:	cf                   	iret   
     a99:	66 b8 10 00          	mov    $0x10,%ax
     a9d:	bb e9 83 00 00       	mov    $0x83e9,%ebx
     aa2:	b9 06 00 00 00       	mov    $0x6,%ecx
     aa7:	b2 02                	mov    $0x2,%dl
     aa9:	e8 15 fa ff ff       	call   0x4c3
     aae:	b0 20                	mov    $0x20,%al
     ab0:	e6 20                	out    %al,$0x20
     ab2:	e9 93 03 00 00       	jmp    0xe4a
     ab7:	cf                   	iret   
     ab8:	66 b8 10 00          	mov    $0x10,%ax
     abc:	bb ef 83 00 00       	mov    $0x83ef,%ebx
     ac1:	b9 08 00 00 00       	mov    $0x8,%ecx
     ac6:	b2 02                	mov    $0x2,%dl
     ac8:	e8 f6 f9 ff ff       	call   0x4c3
     acd:	b0 20                	mov    $0x20,%al
     acf:	e6 20                	out    %al,$0x20
     ad1:	cf                   	iret   
     ad2:	60                   	pusha  
     ad3:	61                   	popa   
     ad4:	cf                   	iret   
     ad5:	e4 60                	in     $0x60,%al
     ad7:	3c 0b                	cmp    $0xb,%al
     ad9:	7e 02                	jle    0xadd
     adb:	eb 12                	jmp    0xaef
     add:	3c 0b                	cmp    $0xb,%al
     adf:	74 07                	je     0xae8
     ae1:	04 2f                	add    $0x2f,%al
     ae3:	e9 88 01 00 00       	jmp    0xc70
     ae8:	b0 30                	mov    $0x30,%al
     aea:	e9 81 01 00 00       	jmp    0xc70
     aef:	3c 0e                	cmp    $0xe,%al
     af1:	75 07                	jne    0xafa
     af3:	b0 08                	mov    $0x8,%al
     af5:	e9 76 01 00 00       	jmp    0xc70
     afa:	3c 0f                	cmp    $0xf,%al
     afc:	75 07                	jne    0xb05
     afe:	b0 09                	mov    $0x9,%al
     b00:	e9 6b 01 00 00       	jmp    0xc70
     b05:	3c 10                	cmp    $0x10,%al
     b07:	75 07                	jne    0xb10
     b09:	b0 71                	mov    $0x71,%al
     b0b:	e9 60 01 00 00       	jmp    0xc70
     b10:	3c 11                	cmp    $0x11,%al
     b12:	75 07                	jne    0xb1b
     b14:	b0 77                	mov    $0x77,%al
     b16:	e9 55 01 00 00       	jmp    0xc70
     b1b:	3c 12                	cmp    $0x12,%al
     b1d:	75 07                	jne    0xb26
     b1f:	b0 65                	mov    $0x65,%al
     b21:	e9 4a 01 00 00       	jmp    0xc70
     b26:	3c 13                	cmp    $0x13,%al
     b28:	75 07                	jne    0xb31
     b2a:	b0 72                	mov    $0x72,%al
     b2c:	e9 3f 01 00 00       	jmp    0xc70
     b31:	3c 14                	cmp    $0x14,%al
     b33:	75 07                	jne    0xb3c
     b35:	b0 74                	mov    $0x74,%al
     b37:	e9 34 01 00 00       	jmp    0xc70
     b3c:	3c 15                	cmp    $0x15,%al
     b3e:	75 07                	jne    0xb47
     b40:	b0 7a                	mov    $0x7a,%al
     b42:	e9 29 01 00 00       	jmp    0xc70
     b47:	3c 16                	cmp    $0x16,%al
     b49:	75 07                	jne    0xb52
     b4b:	b0 75                	mov    $0x75,%al
     b4d:	e9 1e 01 00 00       	jmp    0xc70
     b52:	3c 17                	cmp    $0x17,%al
     b54:	75 07                	jne    0xb5d
     b56:	b0 69                	mov    $0x69,%al
     b58:	e9 13 01 00 00       	jmp    0xc70
     b5d:	3c 18                	cmp    $0x18,%al
     b5f:	75 07                	jne    0xb68
     b61:	b0 6f                	mov    $0x6f,%al
     b63:	e9 08 01 00 00       	jmp    0xc70
     b68:	3c 19                	cmp    $0x19,%al
     b6a:	75 07                	jne    0xb73
     b6c:	b0 70                	mov    $0x70,%al
     b6e:	e9 fd 00 00 00       	jmp    0xc70
     b73:	3c 1a                	cmp    $0x1a,%al
     b75:	75 07                	jne    0xb7e
     b77:	b0 5b                	mov    $0x5b,%al
     b79:	e9 f2 00 00 00       	jmp    0xc70
     b7e:	3c 1b                	cmp    $0x1b,%al
     b80:	75 07                	jne    0xb89
     b82:	b0 5d                	mov    $0x5d,%al
     b84:	e9 e7 00 00 00       	jmp    0xc70
     b89:	3c 1c                	cmp    $0x1c,%al
     b8b:	75 07                	jne    0xb94
     b8d:	b0 0d                	mov    $0xd,%al
     b8f:	e9 dc 00 00 00       	jmp    0xc70
     b94:	3c 1e                	cmp    $0x1e,%al
     b96:	75 07                	jne    0xb9f
     b98:	b0 61                	mov    $0x61,%al
     b9a:	e9 d1 00 00 00       	jmp    0xc70
     b9f:	3c 1f                	cmp    $0x1f,%al
     ba1:	75 07                	jne    0xbaa
     ba3:	b0 73                	mov    $0x73,%al
     ba5:	e9 c6 00 00 00       	jmp    0xc70
     baa:	3c 20                	cmp    $0x20,%al
     bac:	75 07                	jne    0xbb5
     bae:	b0 64                	mov    $0x64,%al
     bb0:	e9 bb 00 00 00       	jmp    0xc70
     bb5:	3c 21                	cmp    $0x21,%al
     bb7:	75 07                	jne    0xbc0
     bb9:	b0 66                	mov    $0x66,%al
     bbb:	e9 b0 00 00 00       	jmp    0xc70
     bc0:	3c 22                	cmp    $0x22,%al
     bc2:	75 07                	jne    0xbcb
     bc4:	b0 67                	mov    $0x67,%al
     bc6:	e9 a5 00 00 00       	jmp    0xc70
     bcb:	3c 23                	cmp    $0x23,%al
     bcd:	75 07                	jne    0xbd6
     bcf:	b0 68                	mov    $0x68,%al
     bd1:	e9 9a 00 00 00       	jmp    0xc70
     bd6:	3c 24                	cmp    $0x24,%al
     bd8:	75 07                	jne    0xbe1
     bda:	b0 6a                	mov    $0x6a,%al
     bdc:	e9 8f 00 00 00       	jmp    0xc70
     be1:	3c 25                	cmp    $0x25,%al
     be3:	75 07                	jne    0xbec
     be5:	b0 6b                	mov    $0x6b,%al
     be7:	e9 84 00 00 00       	jmp    0xc70
     bec:	3c 26                	cmp    $0x26,%al
     bee:	75 04                	jne    0xbf4
     bf0:	b0 6c                	mov    $0x6c,%al
     bf2:	eb 7c                	jmp    0xc70
     bf4:	3c 27                	cmp    $0x27,%al
     bf6:	75 04                	jne    0xbfc
     bf8:	b0 3b                	mov    $0x3b,%al
     bfa:	eb 74                	jmp    0xc70
     bfc:	3c 28                	cmp    $0x28,%al
     bfe:	75 04                	jne    0xc04
     c00:	b0 27                	mov    $0x27,%al
     c02:	eb 6c                	jmp    0xc70
     c04:	3c 29                	cmp    $0x29,%al
     c06:	75 04                	jne    0xc0c
     c08:	b0 60                	mov    $0x60,%al
     c0a:	eb 64                	jmp    0xc70
     c0c:	3c 2b                	cmp    $0x2b,%al
     c0e:	75 04                	jne    0xc14
     c10:	b0 5c                	mov    $0x5c,%al
     c12:	eb 5c                	jmp    0xc70
     c14:	3c 2c                	cmp    $0x2c,%al
     c16:	75 04                	jne    0xc1c
     c18:	b0 79                	mov    $0x79,%al
     c1a:	eb 54                	jmp    0xc70
     c1c:	3c 2d                	cmp    $0x2d,%al
     c1e:	75 04                	jne    0xc24
     c20:	b0 78                	mov    $0x78,%al
     c22:	eb 4c                	jmp    0xc70
     c24:	3c 2e                	cmp    $0x2e,%al
     c26:	75 04                	jne    0xc2c
     c28:	b0 63                	mov    $0x63,%al
     c2a:	eb 44                	jmp    0xc70
     c2c:	3c 2f                	cmp    $0x2f,%al
     c2e:	75 04                	jne    0xc34
     c30:	b0 76                	mov    $0x76,%al
     c32:	eb 3c                	jmp    0xc70
     c34:	3c 30                	cmp    $0x30,%al
     c36:	75 04                	jne    0xc3c
     c38:	b0 62                	mov    $0x62,%al
     c3a:	eb 34                	jmp    0xc70
     c3c:	3c 31                	cmp    $0x31,%al
     c3e:	75 04                	jne    0xc44
     c40:	b0 6e                	mov    $0x6e,%al
     c42:	eb 2c                	jmp    0xc70
     c44:	3c 32                	cmp    $0x32,%al
     c46:	75 04                	jne    0xc4c
     c48:	b0 6d                	mov    $0x6d,%al
     c4a:	eb 24                	jmp    0xc70
     c4c:	3c 33                	cmp    $0x33,%al
     c4e:	75 04                	jne    0xc54
     c50:	b0 2c                	mov    $0x2c,%al
     c52:	eb 1c                	jmp    0xc70
     c54:	3c 34                	cmp    $0x34,%al
     c56:	75 04                	jne    0xc5c
     c58:	b0 2e                	mov    $0x2e,%al
     c5a:	eb 14                	jmp    0xc70
     c5c:	3c 35                	cmp    $0x35,%al
     c5e:	75 04                	jne    0xc64
     c60:	b0 2f                	mov    $0x2f,%al
     c62:	eb 0c                	jmp    0xc70
     c64:	3c 39                	cmp    $0x39,%al
     c66:	75 04                	jne    0xc6c
     c68:	b0 20                	mov    $0x20,%al
     c6a:	eb 04                	jmp    0xc70
     c6c:	3c 35                	cmp    $0x35,%al
     c6e:	7e 00                	jle    0xc70
     c70:	b4 02                	mov    $0x2,%ah
     c72:	e8 61 f7 ff ff       	call   0x3d8
     c77:	b0 20                	mov    $0x20,%al
     c79:	e6 20                	out    %al,$0x20
     c7b:	61                   	popa   
     c7c:	cf                   	iret   
     c7d:	66 b8 10 00          	mov    $0x10,%ax
     c81:	bb ff 83 00 00       	mov    $0x83ff,%ebx
     c86:	b9 08 00 00 00       	mov    $0x8,%ecx
     c8b:	b2 02                	mov    $0x2,%dl
     c8d:	e8 31 f8 ff ff       	call   0x4c3
     c92:	b0 20                	mov    $0x20,%al
     c94:	e6 20                	out    %al,$0x20
     c96:	e9 af 01 00 00       	jmp    0xe4a
     c9b:	cf                   	iret   
     c9c:	66 b8 10 00          	mov    $0x10,%ax
     ca0:	bb 07 84 00 00       	mov    $0x8407,%ebx
     ca5:	b9 08 00 00 00       	mov    $0x8,%ecx
     caa:	b2 02                	mov    $0x2,%dl
     cac:	e8 12 f8 ff ff       	call   0x4c3
     cb1:	b0 20                	mov    $0x20,%al
     cb3:	e6 20                	out    %al,$0x20
     cb5:	e9 90 01 00 00       	jmp    0xe4a
     cba:	cf                   	iret   
     cbb:	66 b8 10 00          	mov    $0x10,%ax
     cbf:	bb 0f 84 00 00       	mov    $0x840f,%ebx
     cc4:	b9 08 00 00 00       	mov    $0x8,%ecx
     cc9:	b2 02                	mov    $0x2,%dl
     ccb:	e8 f3 f7 ff ff       	call   0x4c3
     cd0:	b0 20                	mov    $0x20,%al
     cd2:	e6 20                	out    %al,$0x20
     cd4:	e9 71 01 00 00       	jmp    0xe4a
     cd9:	cf                   	iret   
     cda:	66 b8 10 00          	mov    $0x10,%ax
     cde:	bb 17 84 00 00       	mov    $0x8417,%ebx
     ce3:	b9 08 00 00 00       	mov    $0x8,%ecx
     ce8:	b2 02                	mov    $0x2,%dl
     cea:	e8 d4 f7 ff ff       	call   0x4c3
     cef:	b0 20                	mov    $0x20,%al
     cf1:	e6 20                	out    %al,$0x20
     cf3:	e9 52 01 00 00       	jmp    0xe4a
     cf8:	cf                   	iret   
     cf9:	66 b8 10 00          	mov    $0x10,%ax
     cfd:	bb 1f 84 00 00       	mov    $0x841f,%ebx
     d02:	b9 08 00 00 00       	mov    $0x8,%ecx
     d07:	b2 02                	mov    $0x2,%dl
     d09:	e8 b5 f7 ff ff       	call   0x4c3
     d0e:	b0 20                	mov    $0x20,%al
     d10:	e6 20                	out    %al,$0x20
     d12:	e9 33 01 00 00       	jmp    0xe4a
     d17:	cf                   	iret   
     d18:	66 b8 10 00          	mov    $0x10,%ax
     d1c:	bb 27 84 00 00       	mov    $0x8427,%ebx
     d21:	b9 08 00 00 00       	mov    $0x8,%ecx
     d26:	b2 02                	mov    $0x2,%dl
     d28:	e8 96 f7 ff ff       	call   0x4c3
     d2d:	b0 20                	mov    $0x20,%al
     d2f:	e6 20                	out    %al,$0x20
     d31:	e9 14 01 00 00       	jmp    0xe4a
     d36:	cf                   	iret   
     d37:	66 b8 10 00          	mov    $0x10,%ax
     d3b:	bb 2f 84 00 00       	mov    $0x842f,%ebx
     d40:	b9 08 00 00 00       	mov    $0x8,%ecx
     d45:	b2 02                	mov    $0x2,%dl
     d47:	e8 77 f7 ff ff       	call   0x4c3
     d4c:	b0 20                	mov    $0x20,%al
     d4e:	e6 20                	out    %al,$0x20
     d50:	e9 f5 00 00 00       	jmp    0xe4a
     d55:	cf                   	iret   
     d56:	66 b8 10 00          	mov    $0x10,%ax
     d5a:	bb 37 84 00 00       	mov    $0x8437,%ebx
     d5f:	b9 08 00 00 00       	mov    $0x8,%ecx
     d64:	b2 02                	mov    $0x2,%dl
     d66:	e8 58 f7 ff ff       	call   0x4c3
     d6b:	b0 20                	mov    $0x20,%al
     d6d:	e6 20                	out    %al,$0x20
     d6f:	e9 d6 00 00 00       	jmp    0xe4a
     d74:	cf                   	iret   
     d75:	66 b8 10 00          	mov    $0x10,%ax
     d79:	bb 3f 84 00 00       	mov    $0x843f,%ebx
     d7e:	b9 08 00 00 00       	mov    $0x8,%ecx
     d83:	b2 02                	mov    $0x2,%dl
     d85:	e8 39 f7 ff ff       	call   0x4c3
     d8a:	b0 20                	mov    $0x20,%al
     d8c:	e6 20                	out    %al,$0x20
     d8e:	e9 b7 00 00 00       	jmp    0xe4a
     d93:	cf                   	iret   
     d94:	66 b8 10 00          	mov    $0x10,%ax
     d98:	bb 47 84 00 00       	mov    $0x8447,%ebx
     d9d:	b9 08 00 00 00       	mov    $0x8,%ecx
     da2:	b2 02                	mov    $0x2,%dl
     da4:	e8 1a f7 ff ff       	call   0x4c3
     da9:	b0 20                	mov    $0x20,%al
     dab:	e6 20                	out    %al,$0x20
     dad:	e9 98 00 00 00       	jmp    0xe4a
     db2:	cf                   	iret   
     db3:	66 b8 10 00          	mov    $0x10,%ax
     db7:	bb 4f 84 00 00       	mov    $0x844f,%ebx
     dbc:	b9 08 00 00 00       	mov    $0x8,%ecx
     dc1:	b2 02                	mov    $0x2,%dl
     dc3:	e8 fb f6 ff ff       	call   0x4c3
     dc8:	b0 20                	mov    $0x20,%al
     dca:	e6 20                	out    %al,$0x20
     dcc:	eb 7c                	jmp    0xe4a
     dce:	cf                   	iret   
     dcf:	66 b8 10 00          	mov    $0x10,%ax
     dd3:	bb 57 84 00 00       	mov    $0x8457,%ebx
     dd8:	b9 08 00 00 00       	mov    $0x8,%ecx
     ddd:	b2 02                	mov    $0x2,%dl
     ddf:	e8 df f6 ff ff       	call   0x4c3
     de4:	b0 20                	mov    $0x20,%al
     de6:	e6 20                	out    %al,$0x20
     de8:	eb 60                	jmp    0xe4a
     dea:	cf                   	iret   
     deb:	66 b8 10 00          	mov    $0x10,%ax
     def:	bb 5f 84 00 00       	mov    $0x845f,%ebx
     df4:	b9 08 00 00 00       	mov    $0x8,%ecx
     df9:	b2 02                	mov    $0x2,%dl
     dfb:	e8 c3 f6 ff ff       	call   0x4c3
     e00:	b0 20                	mov    $0x20,%al
     e02:	e6 20                	out    %al,$0x20
     e04:	eb 44                	jmp    0xe4a
     e06:	cf                   	iret   
     e07:	50                   	push   %eax
     e08:	53                   	push   %ebx
     e09:	51                   	push   %ecx
     e0a:	52                   	push   %edx
     e0b:	66 b8 10 00          	mov    $0x10,%ax
     e0f:	bb 67 84 00 00       	mov    $0x8467,%ebx
     e14:	b9 08 00 00 00       	mov    $0x8,%ecx
     e19:	b2 02                	mov    $0x2,%dl
     e1b:	e8 a3 f6 ff ff       	call   0x4c3
     e20:	b0 20                	mov    $0x20,%al
     e22:	e6 20                	out    %al,$0x20
     e24:	5a                   	pop    %edx
     e25:	59                   	pop    %ecx
     e26:	5b                   	pop    %ebx
     e27:	58                   	pop    %eax
     e28:	cf                   	iret   
     e29:	60                   	pusha  
     e2a:	66 b8 10 00          	mov    $0x10,%ax
     e2e:	bb 6f 84 00 00       	mov    $0x846f,%ebx
     e33:	b9 20 00 00 00       	mov    $0x20,%ecx
     e38:	b2 02                	mov    $0x2,%dl
     e3a:	e8 84 f6 ff ff       	call   0x4c3
     e3f:	b0 20                	mov    $0x20,%al
     e41:	e6 20                	out    %al,$0x20
     e43:	61                   	popa   
     e44:	e8 01 00 00 00       	call   0xe4a
     e49:	cf                   	iret   
     e4a:	f4                   	hlt    
     e4b:	eb fd                	jmp    0xe4a
     e4d:	c3                   	ret    
     e4e:	ff 07                	incl   (%edi)
     e50:	00 00                	add    %al,(%eax)
     e52:	00 00                	add    %al,(%eax)
     e54:	90                   	nop
     e55:	90                   	nop
     e56:	90                   	nop
     e57:	90                   	nop
     e58:	a9 84 08 00 00       	test   $0x884,%eax
     e5d:	8f 00                	popl   (%eax)
     e5f:	00 c8                	add    %cl,%al
     e61:	84 08                	test   %cl,(%eax)
     e63:	00 00                	add    %al,(%eax)
     e65:	8f 00                	popl   (%eax)
     e67:	00 e7                	add    %ah,%bh
     e69:	84 08                	test   %cl,(%eax)
     e6b:	00 00                	add    %al,(%eax)
     e6d:	8f 00                	popl   (%eax)
     e6f:	00 06                	add    %al,(%esi)
     e71:	85 08                	test   %ecx,(%eax)
     e73:	00 00                	add    %al,(%eax)
     e75:	8f 00                	popl   (%eax)
     e77:	00 25 85 08 00 00    	add    %ah,0x885
     e7d:	8f 00                	popl   (%eax)
     e7f:	00 44 85 08          	add    %al,0x8(%ebp,%eax,4)
     e83:	00 00                	add    %al,(%eax)
     e85:	8f 00                	popl   (%eax)
     e87:	00 63 85             	add    %ah,-0x7b(%ebx)
     e8a:	08 00                	or     %al,(%eax)
     e8c:	00 8f 00 00 82 85    	add    %cl,-0x7a7e0000(%edi)
     e92:	08 00                	or     %al,(%eax)
     e94:	00 8f 00 00 a1 85    	add    %cl,-0x7a5f0000(%edi)
     e9a:	08 00                	or     %al,(%eax)
     e9c:	00 8f 00 00 c0 85    	add    %cl,-0x7a400000(%edi)
     ea2:	08 00                	or     %al,(%eax)
     ea4:	00 8f 00 00 df 85    	add    %cl,-0x7a210000(%edi)
     eaa:	08 00                	or     %al,(%eax)
     eac:	00 8f 00 00 fe 85    	add    %cl,-0x7a020000(%edi)
     eb2:	08 00                	or     %al,(%eax)
     eb4:	00 8f 00 00 1d 86    	add    %cl,-0x79e30000(%edi)
     eba:	08 00                	or     %al,(%eax)
     ebc:	00 8f 00 00 3c 86    	add    %cl,-0x79c40000(%edi)
     ec2:	08 00                	or     %al,(%eax)
     ec4:	00 8f 00 00 5b 86    	add    %cl,-0x79a50000(%edi)
     eca:	08 00                	or     %al,(%eax)
     ecc:	00 8f 00 00 7a 86    	add    %cl,-0x79860000(%edi)
     ed2:	08 00                	or     %al,(%eax)
     ed4:	00 8f 00 00 99 86    	add    %cl,-0x79670000(%edi)
     eda:	08 00                	or     %al,(%eax)
     edc:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     ee2:	08 00                	or     %al,(%eax)
     ee4:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     eea:	08 00                	or     %al,(%eax)
     eec:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     ef2:	08 00                	or     %al,(%eax)
     ef4:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     efa:	08 00                	or     %al,(%eax)
     efc:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     f02:	08 00                	or     %al,(%eax)
     f04:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     f0a:	08 00                	or     %al,(%eax)
     f0c:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     f12:	08 00                	or     %al,(%eax)
     f14:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     f1a:	08 00                	or     %al,(%eax)
     f1c:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     f22:	08 00                	or     %al,(%eax)
     f24:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     f2a:	08 00                	or     %al,(%eax)
     f2c:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     f32:	08 00                	or     %al,(%eax)
     f34:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     f3a:	08 00                	or     %al,(%eax)
     f3c:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     f42:	08 00                	or     %al,(%eax)
     f44:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     f4a:	08 00                	or     %al,(%eax)
     f4c:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
     f52:	08 00                	or     %al,(%eax)
     f54:	00 8f 00 00 d1 86    	add    %cl,-0x792f0000(%edi)
     f5a:	08 00                	or     %al,(%eax)
     f5c:	00 8f 00 00 d2 86    	add    %cl,-0x792e0000(%edi)
     f62:	08 00                	or     %al,(%eax)
     f64:	00 8f 00 00 7d 88    	add    %cl,-0x77830000(%edi)
     f6a:	08 00                	or     %al,(%eax)
     f6c:	00 8f 00 00 9c 88    	add    %cl,-0x77640000(%edi)
     f72:	08 00                	or     %al,(%eax)
     f74:	00 8f 00 00 bb 88    	add    %cl,-0x77450000(%edi)
     f7a:	08 00                	or     %al,(%eax)
     f7c:	00 8f 00 00 da 88    	add    %cl,-0x77260000(%edi)
     f82:	08 00                	or     %al,(%eax)
     f84:	00 8f 00 00 f9 88    	add    %cl,-0x77070000(%edi)
     f8a:	08 00                	or     %al,(%eax)
     f8c:	00 8f 00 00 18 89    	add    %cl,-0x76e80000(%edi)
     f92:	08 00                	or     %al,(%eax)
     f94:	00 8f 00 00 37 89    	add    %cl,-0x76c90000(%edi)
     f9a:	08 00                	or     %al,(%eax)
     f9c:	00 8f 00 00 56 89    	add    %cl,-0x76aa0000(%edi)
     fa2:	08 00                	or     %al,(%eax)
     fa4:	00 8f 00 00 75 89    	add    %cl,-0x768b0000(%edi)
     faa:	08 00                	or     %al,(%eax)
     fac:	00 8f 00 00 94 89    	add    %cl,-0x766c0000(%edi)
     fb2:	08 00                	or     %al,(%eax)
     fb4:	00 8f 00 00 b3 89    	add    %cl,-0x764d0000(%edi)
     fba:	08 00                	or     %al,(%eax)
     fbc:	00 8f 00 00 cf 89    	add    %cl,-0x76310000(%edi)
     fc2:	08 00                	or     %al,(%eax)
     fc4:	00 8f 00 00 eb 89    	add    %cl,-0x76150000(%edi)
     fca:	08 00                	or     %al,(%eax)
     fcc:	00 8f 00 00 07 8a    	add    %cl,-0x75f90000(%edi)
     fd2:	08 00                	or     %al,(%eax)
     fd4:	00 8f 00 00 00 00    	add    %cl,0x0(%edi)
	...
    1116:	00 00                	add    %al,(%eax)
    1118:	29 8a 08 00 00 8f    	sub    %ecx,-0x70fffff8(%edx)
	...
    1ffe:	00 00                	add    %al,(%eax)
    2000:	ba f7 01 00 00       	mov    $0x1f7,%edx
    2005:	ec                   	in     (%dx),%al
    2006:	83 e0 c0             	and    $0xffffffc0,%eax
    2009:	3c 40                	cmp    $0x40,%al
    200b:	75 f8                	jne    0x2005
    200d:	c3                   	ret    
    200e:	66 90                	xchg   %ax,%ax
    2010:	57                   	push   %edi
    2011:	b9 f7 01 00 00       	mov    $0x1f7,%ecx
    2016:	53                   	push   %ebx
    2017:	8b 5c 24 10          	mov    0x10(%esp),%ebx
    201b:	90                   	nop
    201c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2020:	89 ca                	mov    %ecx,%edx
    2022:	ec                   	in     (%dx),%al
    2023:	83 e0 c0             	and    $0xffffffc0,%eax
    2026:	3c 40                	cmp    $0x40,%al
    2028:	75 f6                	jne    0x2020
    202a:	b8 01 00 00 00       	mov    $0x1,%eax
    202f:	ba f2 01 00 00       	mov    $0x1f2,%edx
    2034:	ee                   	out    %al,(%dx)
    2035:	ba f3 01 00 00       	mov    $0x1f3,%edx
    203a:	89 d8                	mov    %ebx,%eax
    203c:	ee                   	out    %al,(%dx)
    203d:	89 d8                	mov    %ebx,%eax
    203f:	ba f4 01 00 00       	mov    $0x1f4,%edx
    2044:	c1 e8 08             	shr    $0x8,%eax
    2047:	ee                   	out    %al,(%dx)
    2048:	0f be c3             	movsbl %bl,%eax
    204b:	ba f5 01 00 00       	mov    $0x1f5,%edx
    2050:	c1 f8 10             	sar    $0x10,%eax
    2053:	ee                   	out    %al,(%dx)
    2054:	89 d8                	mov    %ebx,%eax
    2056:	ba f6 01 00 00       	mov    $0x1f6,%edx
    205b:	c1 e8 18             	shr    $0x18,%eax
    205e:	83 c8 e0             	or     $0xffffffe0,%eax
    2061:	ee                   	out    %al,(%dx)
    2062:	b8 20 00 00 00       	mov    $0x20,%eax
    2067:	89 ca                	mov    %ecx,%edx
    2069:	ee                   	out    %al,(%dx)
    206a:	ba f7 01 00 00       	mov    $0x1f7,%edx
    206f:	90                   	nop
    2070:	ec                   	in     (%dx),%al
    2071:	83 e0 c0             	and    $0xffffffc0,%eax
    2074:	3c 40                	cmp    $0x40,%al
    2076:	75 f8                	jne    0x2070
    2078:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    207c:	b9 80 00 00 00       	mov    $0x80,%ecx
    2081:	ba f0 01 00 00       	mov    $0x1f0,%edx
    2086:	fc                   	cld    
    2087:	f3 6d                	rep insl (%dx),%es:(%edi)
    2089:	5b                   	pop    %ebx
    208a:	5f                   	pop    %edi
    208b:	c3                   	ret    
    208c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2090:	57                   	push   %edi
    2091:	56                   	push   %esi
    2092:	53                   	push   %ebx
    2093:	83 ec 08             	sub    $0x8,%esp
    2096:	8b 74 24 20          	mov    0x20(%esp),%esi
    209a:	8b 5c 24 18          	mov    0x18(%esp),%ebx
    209e:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
    20a2:	89 f0                	mov    %esi,%eax
    20a4:	c1 ee 09             	shr    $0x9,%esi
    20a7:	25 ff 01 00 00       	and    $0x1ff,%eax
    20ac:	01 df                	add    %ebx,%edi
    20ae:	83 c6 20             	add    $0x20,%esi
    20b1:	29 c3                	sub    %eax,%ebx
    20b3:	eb 15                	jmp    0x20ca
    20b5:	89 74 24 04          	mov    %esi,0x4(%esp)
    20b9:	83 c6 01             	add    $0x1,%esi
    20bc:	89 1c 24             	mov    %ebx,(%esp)
    20bf:	81 c3 00 02 00 00    	add    $0x200,%ebx
    20c5:	e8 46 ff ff ff       	call   0x2010
    20ca:	39 fb                	cmp    %edi,%ebx
    20cc:	72 e7                	jb     0x20b5
    20ce:	83 c4 08             	add    $0x8,%esp
    20d1:	5b                   	pop    %ebx
    20d2:	5e                   	pop    %esi
    20d3:	5f                   	pop    %edi
    20d4:	c3                   	ret    
    20d5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    20d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    20e0:	55                   	push   %ebp
    20e1:	57                   	push   %edi
    20e2:	56                   	push   %esi
    20e3:	53                   	push   %ebx
    20e4:	bb 20 00 00 00       	mov    $0x20,%ebx
    20e9:	83 ec 0c             	sub    $0xc,%esp
    20ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    20f0:	89 d8                	mov    %ebx,%eax
    20f2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    20f6:	83 c3 01             	add    $0x1,%ebx
    20f9:	c1 e0 09             	shl    $0x9,%eax
    20fc:	05 00 c0 57 00       	add    $0x57c000,%eax
    2101:	89 04 24             	mov    %eax,(%esp)
    2104:	e8 07 ff ff ff       	call   0x2010
    2109:	83 fb 28             	cmp    $0x28,%ebx
    210c:	75 e2                	jne    0x20f0
    210e:	31 c0                	xor    %eax,%eax
    2110:	81 3d 00 00 58 00 7f 	cmpl   $0x464c457f,0x580000
    2117:	45 4c 46 
    211a:	75 5c                	jne    0x2178
    211c:	a1 1c 00 58 00       	mov    0x58001c,%eax
    2121:	0f b7 35 2c 00 58 00 	movzwl 0x58002c,%esi
    2128:	31 ed                	xor    %ebp,%ebp
    212a:	8d 98 00 00 58 00    	lea    0x580000(%eax),%ebx
    2130:	c1 e6 05             	shl    $0x5,%esi
    2133:	01 de                	add    %ebx,%esi
    2135:	eb 38                	jmp    0x216f
    2137:	89 f6                	mov    %esi,%esi
    2139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    2140:	8b 43 04             	mov    0x4(%ebx),%eax
    2143:	8b 7b 0c             	mov    0xc(%ebx),%edi
    2146:	89 44 24 08          	mov    %eax,0x8(%esp)
    214a:	8b 43 10             	mov    0x10(%ebx),%eax
    214d:	89 3c 24             	mov    %edi,(%esp)
    2150:	89 44 24 04          	mov    %eax,0x4(%esp)
    2154:	e8 37 ff ff ff       	call   0x2090
    2159:	8b 4b 14             	mov    0x14(%ebx),%ecx
    215c:	8b 43 10             	mov    0x10(%ebx),%eax
    215f:	39 c1                	cmp    %eax,%ecx
    2161:	76 09                	jbe    0x216c
    2163:	01 c7                	add    %eax,%edi
    2165:	29 c1                	sub    %eax,%ecx
    2167:	89 e8                	mov    %ebp,%eax
    2169:	fc                   	cld    
    216a:	f3 aa                	rep stos %al,%es:(%edi)
    216c:	83 c3 20             	add    $0x20,%ebx
    216f:	39 f3                	cmp    %esi,%ebx
    2171:	72 cd                	jb     0x2140
    2173:	a1 18 00 58 00       	mov    0x580018,%eax
    2178:	83 c4 0c             	add    $0xc,%esp
    217b:	5b                   	pop    %ebx
    217c:	5e                   	pop    %esi
    217d:	5f                   	pop    %edi
    217e:	5d                   	pop    %ebp
    217f:	c3                   	ret    
    2180:	ff                   	(bad)  
    2181:	ff                   	(bad)  
    2182:	ff                   	(bad)  
    2183:	ff 00                	incl   (%eax)
    2185:	00 00                	add    %al,(%eax)
    2187:	00 ff                	add    %bh,%bh
    2189:	ff                   	(bad)  
    218a:	ff                   	(bad)  
    218b:	ff 00                	incl   (%eax)
	...
    23fd:	00 00                	add    %al,(%eax)
    23ff:	00 47 43             	add    %al,0x43(%edi)
    2402:	43                   	inc    %ebx
    2403:	3a 20                	cmp    (%eax),%ah
    2405:	28 69 36             	sub    %ch,0x36(%ecx)
    2408:	38 36                	cmp    %dh,(%esi)
    240a:	2d 77 69 6e 33       	sub    $0x336e6977,%eax
    240f:	32 2d 64 77 61 72    	xor    0x72617764,%ch
    2415:	66 2d 72 65          	sub    $0x6572,%ax
    2419:	76 30                	jbe    0x244b
    241b:	2c 20                	sub    $0x20,%al
    241d:	42                   	inc    %edx
    241e:	75 69                	jne    0x2489
    2420:	6c                   	insb   (%dx),%es:(%edi)
    2421:	74 20                	je     0x2443
    2423:	62 79 20             	bound  %edi,0x20(%ecx)
    2426:	4d                   	dec    %ebp
    2427:	69 6e 47 57 2d 57 36 	imul   $0x36572d57,0x47(%esi),%ebp
    242e:	34 20                	xor    $0x20,%al
    2430:	70 72                	jo     0x24a4
    2432:	6f                   	outsl  %ds:(%esi),(%dx)
    2433:	6a 65                	push   $0x65
    2435:	63 74 29 20          	arpl   %si,0x20(%ecx,%ebp,1)
    2439:	38 2e                	cmp    %ch,(%esi)
    243b:	31 2e                	xor    %ebp,(%esi)
    243d:	30 00                	xor    %al,(%eax)
	...
