
main.out:     file format elf32-i386


Disassembly of section .text:

c0600000 <_initsys_info>:
c0600000:	55                   	push   %ebp
c0600001:	57                   	push   %edi
c0600002:	56                   	push   %esi
c0600003:	53                   	push   %ebx
c0600004:	83 ec 3c             	sub    $0x3c,%esp
c0600007:	0f b6 15 11 32 00 00 	movzbl 0x3211,%edx
c060000e:	88 15 c0 51 60 c0    	mov    %dl,0xc06051c0
c0600014:	0f b7 05 0f 32 00 00 	movzwl 0x320f,%eax
c060001b:	0f b6 d2             	movzbl %dl,%edx
c060001e:	66 a3 a0 51 60 c0    	mov    %ax,0xc06051a0
c0600024:	0f b7 c0             	movzwl %ax,%eax
c0600027:	0f b6 0d 19 32 00 00 	movzbl 0x3219,%ecx
c060002e:	a3 c4 51 60 c0       	mov    %eax,0xc06051c4
c0600033:	0f af c2             	imul   %edx,%eax
c0600036:	88 0d 88 51 60 c0    	mov    %cl,0xc0605188
c060003c:	a3 a4 51 60 c0       	mov    %eax,0xc06051a4
c0600041:	a1 24 32 00 00       	mov    0x3224,%eax
c0600046:	a3 b8 51 60 c0       	mov    %eax,0xc06051b8
c060004b:	e8 70 0d 00 00       	call   c0600dc0 <_TakeMemorySize>
c0600050:	c7 05 9c 51 60 c0 00 	movl   $0x1000,0xc060519c
c0600057:	10 00 00 
c060005a:	a3 c8 51 60 c0       	mov    %eax,0xc06051c8
c060005f:	a1 1a 30 00 00       	mov    0x301a,%eax
c0600064:	c7 05 a8 51 60 c0 50 	movl   $0x50,0xc06051a8
c060006b:	00 00 00 
c060006e:	a3 bc 51 60 c0       	mov    %eax,0xc06051bc
c0600073:	c7 05 84 51 60 c0 19 	movl   $0x19,0xc0605184
c060007a:	00 00 00 
c060007d:	c7 05 80 51 60 c0 00 	movl   $0xb8000,0xc0605180
c0600084:	80 0b 00 
c0600087:	c7 05 cc 51 60 c0 08 	movl   $0x8,0xc06051cc
c060008e:	00 00 00 
c0600091:	c7 05 8c 51 60 c0 d0 	movl   $0x7d0,0xc060518c
c0600098:	07 00 00 
c060009b:	0f b6 3d 14 30 00 00 	movzbl 0x3014,%edi
c06000a2:	0f b6 05 19 30 00 00 	movzbl 0x3019,%eax
c06000a9:	0f b6 35 15 30 00 00 	movzbl 0x3015,%esi
c06000b0:	0f b6 1d 16 30 00 00 	movzbl 0x3016,%ebx
c06000b7:	0f b6 0d 17 30 00 00 	movzbl 0x3017,%ecx
c06000be:	0f b6 15 18 30 00 00 	movzbl 0x3018,%edx
c06000c5:	88 44 24 2f          	mov    %al,0x2f(%esp)
c06000c9:	89 f8                	mov    %edi,%eax
c06000cb:	83 e7 0f             	and    $0xf,%edi
c06000ce:	c0 e8 04             	shr    $0x4,%al
c06000d1:	c7 04 24 00 30 60 c0 	movl   $0xc0603000,(%esp)
c06000d8:	0f b6 e8             	movzbl %al,%ebp
c06000db:	89 f0                	mov    %esi,%eax
c06000dd:	83 e6 0f             	and    $0xf,%esi
c06000e0:	8d 6c ad 00          	lea    0x0(%ebp,%ebp,4),%ebp
c06000e4:	c0 e8 04             	shr    $0x4,%al
c06000e7:	8d 3c 6f             	lea    (%edi,%ebp,2),%edi
c06000ea:	89 7c 24 18          	mov    %edi,0x18(%esp)
c06000ee:	0f b6 f8             	movzbl %al,%edi
c06000f1:	89 d8                	mov    %ebx,%eax
c06000f3:	83 e3 0f             	and    $0xf,%ebx
c06000f6:	8d 3c bf             	lea    (%edi,%edi,4),%edi
c06000f9:	c0 e8 04             	shr    $0x4,%al
c06000fc:	8d 34 7e             	lea    (%esi,%edi,2),%esi
c06000ff:	89 74 24 14          	mov    %esi,0x14(%esp)
c0600103:	0f b6 f0             	movzbl %al,%esi
c0600106:	0f b6 44 24 2f       	movzbl 0x2f(%esp),%eax
c060010b:	8d 34 b6             	lea    (%esi,%esi,4),%esi
c060010e:	8d 1c 73             	lea    (%ebx,%esi,2),%ebx
c0600111:	89 5c 24 10          	mov    %ebx,0x10(%esp)
c0600115:	89 cb                	mov    %ecx,%ebx
c0600117:	83 e1 0f             	and    $0xf,%ecx
c060011a:	c0 eb 04             	shr    $0x4,%bl
c060011d:	0f b6 db             	movzbl %bl,%ebx
c0600120:	8d 1c 9b             	lea    (%ebx,%ebx,4),%ebx
c0600123:	8d 0c 59             	lea    (%ecx,%ebx,2),%ecx
c0600126:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
c060012a:	89 d1                	mov    %edx,%ecx
c060012c:	83 e2 0f             	and    $0xf,%edx
c060012f:	c0 e9 04             	shr    $0x4,%cl
c0600132:	0f b6 c9             	movzbl %cl,%ecx
c0600135:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
c0600138:	8d 14 4a             	lea    (%edx,%ecx,2),%edx
c060013b:	89 54 24 08          	mov    %edx,0x8(%esp)
c060013f:	89 c2                	mov    %eax,%edx
c0600141:	83 e0 0f             	and    $0xf,%eax
c0600144:	c0 ea 04             	shr    $0x4,%dl
c0600147:	0f b6 d2             	movzbl %dl,%edx
c060014a:	8d 14 92             	lea    (%edx,%edx,4),%edx
c060014d:	8d 84 50 d0 07 00 00 	lea    0x7d0(%eax,%edx,2),%eax
c0600154:	89 44 24 04          	mov    %eax,0x4(%esp)
c0600158:	e8 03 13 00 00       	call   c0601460 <_sys_printk>
c060015d:	c7 05 90 51 60 c0 00 	movl   $0x0,0xc0605190
c0600164:	00 00 00 
c0600167:	c7 05 94 51 60 c0 00 	movl   $0x608000,0xc0605194
c060016e:	80 60 00 
c0600171:	c7 05 98 51 60 c0 00 	movl   $0x608000,0xc0605198
c0600178:	80 60 00 
c060017b:	83 c4 3c             	add    $0x3c,%esp
c060017e:	5b                   	pop    %ebx
c060017f:	5e                   	pop    %esi
c0600180:	5f                   	pop    %edi
c0600181:	5d                   	pop    %ebp
c0600182:	c3                   	ret    
c0600183:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0600189:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0600190 <_readseg>:
c0600190:	53                   	push   %ebx
c0600191:	83 ec 18             	sub    $0x18,%esp
c0600194:	8b 44 24 28          	mov    0x28(%esp),%eax
c0600198:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c060019f:	00 
c06001a0:	89 c2                	mov    %eax,%edx
c06001a2:	c1 e8 09             	shr    $0x9,%eax
c06001a5:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
c06001ab:	89 c1                	mov    %eax,%ecx
c06001ad:	89 d3                	mov    %edx,%ebx
c06001af:	03 5c 24 24          	add    0x24(%esp),%ebx
c06001b3:	8d 83 ff 01 00 00    	lea    0x1ff(%ebx),%eax
c06001b9:	0f 49 c3             	cmovns %ebx,%eax
c06001bc:	c1 f8 09             	sar    $0x9,%eax
c06001bf:	83 c0 01             	add    $0x1,%eax
c06001c2:	0f b6 c0             	movzbl %al,%eax
c06001c5:	89 44 24 08          	mov    %eax,0x8(%esp)
c06001c9:	8d 41 01             	lea    0x1(%ecx),%eax
c06001cc:	89 44 24 04          	mov    %eax,0x4(%esp)
c06001d0:	8b 44 24 20          	mov    0x20(%esp),%eax
c06001d4:	29 d0                	sub    %edx,%eax
c06001d6:	89 04 24             	mov    %eax,(%esp)
c06001d9:	e8 42 15 00 00       	call   c0601720 <_sys_readDisk>
c06001de:	83 c4 18             	add    $0x18,%esp
c06001e1:	5b                   	pop    %ebx
c06001e2:	c3                   	ret    
c06001e3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c06001e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c06001f0 <_fun>:
c06001f0:	83 ec 1c             	sub    $0x1c,%esp
c06001f3:	c7 04 24 25 30 60 c0 	movl   $0xc0603025,(%esp)
c06001fa:	e8 61 12 00 00       	call   c0601460 <_sys_printk>
c06001ff:	83 c4 1c             	add    $0x1c,%esp
c0600202:	c3                   	ret    
c0600203:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0600209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0600210 <_loadelf>:
c0600210:	c3                   	ret    
c0600211:	90                   	nop
c0600212:	90                   	nop
c0600213:	90                   	nop
c0600214:	90                   	nop
c0600215:	90                   	nop
c0600216:	90                   	nop
c0600217:	90                   	nop
c0600218:	90                   	nop
c0600219:	90                   	nop
c060021a:	90                   	nop
c060021b:	90                   	nop
c060021c:	90                   	nop
c060021d:	90                   	nop
c060021e:	90                   	nop
c060021f:	90                   	nop

c0600220 <__do_not_use_15>:
c0600220:	c3                   	ret    
c0600221:	eb 0d                	jmp    c0600230 <_div_error>
c0600223:	90                   	nop
c0600224:	90                   	nop
c0600225:	90                   	nop
c0600226:	90                   	nop
c0600227:	90                   	nop
c0600228:	90                   	nop
c0600229:	90                   	nop
c060022a:	90                   	nop
c060022b:	90                   	nop
c060022c:	90                   	nop
c060022d:	90                   	nop
c060022e:	90                   	nop
c060022f:	90                   	nop

c0600230 <_div_error>:
c0600230:	55                   	push   %ebp
c0600231:	89 e5                	mov    %esp,%ebp
c0600233:	51                   	push   %ecx
c0600234:	52                   	push   %edx
c0600235:	50                   	push   %eax
c0600236:	83 e4 f0             	and    $0xfffffff0,%esp
c0600239:	83 ec 10             	sub    $0x10,%esp
c060023c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0600243:	00 
c0600244:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060024b:	fc                   	cld    
c060024c:	e8 0f 12 00 00       	call   c0601460 <_sys_printk>
c0600251:	fa                   	cli    
c0600252:	f4                   	hlt    
c0600253:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600256:	58                   	pop    %eax
c0600257:	5a                   	pop    %edx
c0600258:	59                   	pop    %ecx
c0600259:	5d                   	pop    %ebp
c060025a:	83 c4 04             	add    $0x4,%esp
c060025d:	cf                   	iret   
c060025e:	66 90                	xchg   %ax,%ax

c0600260 <_debug_error>:
c0600260:	55                   	push   %ebp
c0600261:	89 e5                	mov    %esp,%ebp
c0600263:	51                   	push   %ecx
c0600264:	52                   	push   %edx
c0600265:	50                   	push   %eax
c0600266:	83 e4 f0             	and    $0xfffffff0,%esp
c0600269:	83 ec 10             	sub    $0x10,%esp
c060026c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0600273:	00 
c0600274:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060027b:	fc                   	cld    
c060027c:	e8 df 11 00 00       	call   c0601460 <_sys_printk>
c0600281:	fa                   	cli    
c0600282:	f4                   	hlt    
c0600283:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600286:	58                   	pop    %eax
c0600287:	5a                   	pop    %edx
c0600288:	59                   	pop    %ecx
c0600289:	5d                   	pop    %ebp
c060028a:	83 c4 04             	add    $0x4,%esp
c060028d:	cf                   	iret   
c060028e:	66 90                	xchg   %ax,%ax

c0600290 <_nmi_interrupt>:
c0600290:	55                   	push   %ebp
c0600291:	89 e5                	mov    %esp,%ebp
c0600293:	51                   	push   %ecx
c0600294:	52                   	push   %edx
c0600295:	50                   	push   %eax
c0600296:	83 e4 f0             	and    $0xfffffff0,%esp
c0600299:	83 ec 10             	sub    $0x10,%esp
c060029c:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
c06002a3:	00 
c06002a4:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c06002ab:	fc                   	cld    
c06002ac:	e8 af 11 00 00       	call   c0601460 <_sys_printk>
c06002b1:	fa                   	cli    
c06002b2:	f4                   	hlt    
c06002b3:	8d 65 f4             	lea    -0xc(%ebp),%esp
c06002b6:	58                   	pop    %eax
c06002b7:	5a                   	pop    %edx
c06002b8:	59                   	pop    %ecx
c06002b9:	5d                   	pop    %ebp
c06002ba:	83 c4 04             	add    $0x4,%esp
c06002bd:	cf                   	iret   
c06002be:	66 90                	xchg   %ax,%ax

c06002c0 <_breakpoint_int>:
c06002c0:	55                   	push   %ebp
c06002c1:	89 e5                	mov    %esp,%ebp
c06002c3:	51                   	push   %ecx
c06002c4:	52                   	push   %edx
c06002c5:	50                   	push   %eax
c06002c6:	83 e4 f0             	and    $0xfffffff0,%esp
c06002c9:	83 ec 10             	sub    $0x10,%esp
c06002cc:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
c06002d3:	00 
c06002d4:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c06002db:	fc                   	cld    
c06002dc:	e8 7f 11 00 00       	call   c0601460 <_sys_printk>
c06002e1:	fa                   	cli    
c06002e2:	f4                   	hlt    
c06002e3:	8d 65 f4             	lea    -0xc(%ebp),%esp
c06002e6:	58                   	pop    %eax
c06002e7:	5a                   	pop    %edx
c06002e8:	59                   	pop    %ecx
c06002e9:	5d                   	pop    %ebp
c06002ea:	83 c4 04             	add    $0x4,%esp
c06002ed:	cf                   	iret   
c06002ee:	66 90                	xchg   %ax,%ax

c06002f0 <_overflow>:
c06002f0:	55                   	push   %ebp
c06002f1:	89 e5                	mov    %esp,%ebp
c06002f3:	51                   	push   %ecx
c06002f4:	52                   	push   %edx
c06002f5:	50                   	push   %eax
c06002f6:	83 e4 f0             	and    $0xfffffff0,%esp
c06002f9:	83 ec 10             	sub    $0x10,%esp
c06002fc:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0600303:	00 
c0600304:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060030b:	fc                   	cld    
c060030c:	e8 4f 11 00 00       	call   c0601460 <_sys_printk>
c0600311:	fa                   	cli    
c0600312:	f4                   	hlt    
c0600313:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600316:	58                   	pop    %eax
c0600317:	5a                   	pop    %edx
c0600318:	59                   	pop    %ecx
c0600319:	5d                   	pop    %ebp
c060031a:	83 c4 04             	add    $0x4,%esp
c060031d:	cf                   	iret   
c060031e:	66 90                	xchg   %ax,%ax

c0600320 <_bound_range>:
c0600320:	55                   	push   %ebp
c0600321:	89 e5                	mov    %esp,%ebp
c0600323:	51                   	push   %ecx
c0600324:	52                   	push   %edx
c0600325:	50                   	push   %eax
c0600326:	83 e4 f0             	and    $0xfffffff0,%esp
c0600329:	83 ec 10             	sub    $0x10,%esp
c060032c:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
c0600333:	00 
c0600334:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060033b:	fc                   	cld    
c060033c:	e8 1f 11 00 00       	call   c0601460 <_sys_printk>
c0600341:	fa                   	cli    
c0600342:	f4                   	hlt    
c0600343:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600346:	58                   	pop    %eax
c0600347:	5a                   	pop    %edx
c0600348:	59                   	pop    %ecx
c0600349:	5d                   	pop    %ebp
c060034a:	83 c4 04             	add    $0x4,%esp
c060034d:	cf                   	iret   
c060034e:	66 90                	xchg   %ax,%ax

c0600350 <_undefined_opcode>:
c0600350:	55                   	push   %ebp
c0600351:	89 e5                	mov    %esp,%ebp
c0600353:	51                   	push   %ecx
c0600354:	52                   	push   %edx
c0600355:	50                   	push   %eax
c0600356:	83 e4 f0             	and    $0xfffffff0,%esp
c0600359:	83 ec 10             	sub    $0x10,%esp
c060035c:	c7 44 24 04 06 00 00 	movl   $0x6,0x4(%esp)
c0600363:	00 
c0600364:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060036b:	fc                   	cld    
c060036c:	e8 ef 10 00 00       	call   c0601460 <_sys_printk>
c0600371:	fa                   	cli    
c0600372:	f4                   	hlt    
c0600373:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600376:	58                   	pop    %eax
c0600377:	5a                   	pop    %edx
c0600378:	59                   	pop    %ecx
c0600379:	5d                   	pop    %ebp
c060037a:	83 c4 04             	add    $0x4,%esp
c060037d:	cf                   	iret   
c060037e:	66 90                	xchg   %ax,%ax

c0600380 <_no_math_cp>:
c0600380:	55                   	push   %ebp
c0600381:	89 e5                	mov    %esp,%ebp
c0600383:	51                   	push   %ecx
c0600384:	52                   	push   %edx
c0600385:	50                   	push   %eax
c0600386:	83 e4 f0             	and    $0xfffffff0,%esp
c0600389:	83 ec 10             	sub    $0x10,%esp
c060038c:	c7 44 24 04 07 00 00 	movl   $0x7,0x4(%esp)
c0600393:	00 
c0600394:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060039b:	fc                   	cld    
c060039c:	e8 bf 10 00 00       	call   c0601460 <_sys_printk>
c06003a1:	fa                   	cli    
c06003a2:	f4                   	hlt    
c06003a3:	8d 65 f4             	lea    -0xc(%ebp),%esp
c06003a6:	58                   	pop    %eax
c06003a7:	5a                   	pop    %edx
c06003a8:	59                   	pop    %ecx
c06003a9:	5d                   	pop    %ebp
c06003aa:	83 c4 04             	add    $0x4,%esp
c06003ad:	cf                   	iret   
c06003ae:	66 90                	xchg   %ax,%ax

c06003b0 <_double_fault>:
c06003b0:	55                   	push   %ebp
c06003b1:	89 e5                	mov    %esp,%ebp
c06003b3:	51                   	push   %ecx
c06003b4:	52                   	push   %edx
c06003b5:	50                   	push   %eax
c06003b6:	83 e4 f0             	and    $0xfffffff0,%esp
c06003b9:	83 ec 10             	sub    $0x10,%esp
c06003bc:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
c06003c3:	00 
c06003c4:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c06003cb:	fc                   	cld    
c06003cc:	e8 8f 10 00 00       	call   c0601460 <_sys_printk>
c06003d1:	fa                   	cli    
c06003d2:	f4                   	hlt    
c06003d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
c06003d6:	58                   	pop    %eax
c06003d7:	5a                   	pop    %edx
c06003d8:	59                   	pop    %ecx
c06003d9:	5d                   	pop    %ebp
c06003da:	83 c4 04             	add    $0x4,%esp
c06003dd:	cf                   	iret   
c06003de:	66 90                	xchg   %ax,%ax

c06003e0 <_coprocessor_seg_error>:
c06003e0:	55                   	push   %ebp
c06003e1:	89 e5                	mov    %esp,%ebp
c06003e3:	51                   	push   %ecx
c06003e4:	52                   	push   %edx
c06003e5:	50                   	push   %eax
c06003e6:	83 e4 f0             	and    $0xfffffff0,%esp
c06003e9:	83 ec 10             	sub    $0x10,%esp
c06003ec:	c7 44 24 04 09 00 00 	movl   $0x9,0x4(%esp)
c06003f3:	00 
c06003f4:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c06003fb:	fc                   	cld    
c06003fc:	e8 5f 10 00 00       	call   c0601460 <_sys_printk>
c0600401:	fa                   	cli    
c0600402:	f4                   	hlt    
c0600403:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600406:	58                   	pop    %eax
c0600407:	5a                   	pop    %edx
c0600408:	59                   	pop    %ecx
c0600409:	5d                   	pop    %ebp
c060040a:	83 c4 04             	add    $0x4,%esp
c060040d:	cf                   	iret   
c060040e:	66 90                	xchg   %ax,%ax

c0600410 <_invalid_tss>:
c0600410:	55                   	push   %ebp
c0600411:	89 e5                	mov    %esp,%ebp
c0600413:	51                   	push   %ecx
c0600414:	52                   	push   %edx
c0600415:	50                   	push   %eax
c0600416:	83 e4 f0             	and    $0xfffffff0,%esp
c0600419:	83 ec 10             	sub    $0x10,%esp
c060041c:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
c0600423:	00 
c0600424:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060042b:	fc                   	cld    
c060042c:	e8 2f 10 00 00       	call   c0601460 <_sys_printk>
c0600431:	fa                   	cli    
c0600432:	f4                   	hlt    
c0600433:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600436:	58                   	pop    %eax
c0600437:	5a                   	pop    %edx
c0600438:	59                   	pop    %ecx
c0600439:	5d                   	pop    %ebp
c060043a:	83 c4 04             	add    $0x4,%esp
c060043d:	cf                   	iret   
c060043e:	66 90                	xchg   %ax,%ax

c0600440 <_seg_not_present>:
c0600440:	55                   	push   %ebp
c0600441:	89 e5                	mov    %esp,%ebp
c0600443:	51                   	push   %ecx
c0600444:	52                   	push   %edx
c0600445:	50                   	push   %eax
c0600446:	83 e4 f0             	and    $0xfffffff0,%esp
c0600449:	83 ec 10             	sub    $0x10,%esp
c060044c:	c7 44 24 04 0b 00 00 	movl   $0xb,0x4(%esp)
c0600453:	00 
c0600454:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060045b:	fc                   	cld    
c060045c:	e8 ff 0f 00 00       	call   c0601460 <_sys_printk>
c0600461:	fa                   	cli    
c0600462:	f4                   	hlt    
c0600463:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600466:	58                   	pop    %eax
c0600467:	5a                   	pop    %edx
c0600468:	59                   	pop    %ecx
c0600469:	5d                   	pop    %ebp
c060046a:	83 c4 04             	add    $0x4,%esp
c060046d:	cf                   	iret   
c060046e:	66 90                	xchg   %ax,%ax

c0600470 <_stack_seg_error>:
c0600470:	55                   	push   %ebp
c0600471:	89 e5                	mov    %esp,%ebp
c0600473:	51                   	push   %ecx
c0600474:	52                   	push   %edx
c0600475:	50                   	push   %eax
c0600476:	83 e4 f0             	and    $0xfffffff0,%esp
c0600479:	83 ec 10             	sub    $0x10,%esp
c060047c:	c7 44 24 04 0c 00 00 	movl   $0xc,0x4(%esp)
c0600483:	00 
c0600484:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060048b:	fc                   	cld    
c060048c:	e8 cf 0f 00 00       	call   c0601460 <_sys_printk>
c0600491:	fa                   	cli    
c0600492:	f4                   	hlt    
c0600493:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600496:	58                   	pop    %eax
c0600497:	5a                   	pop    %edx
c0600498:	59                   	pop    %ecx
c0600499:	5d                   	pop    %ebp
c060049a:	83 c4 04             	add    $0x4,%esp
c060049d:	cf                   	iret   
c060049e:	66 90                	xchg   %ax,%ax

c06004a0 <_general_protection>:
c06004a0:	55                   	push   %ebp
c06004a1:	89 e5                	mov    %esp,%ebp
c06004a3:	51                   	push   %ecx
c06004a4:	52                   	push   %edx
c06004a5:	50                   	push   %eax
c06004a6:	83 e4 f0             	and    $0xfffffff0,%esp
c06004a9:	83 ec 10             	sub    $0x10,%esp
c06004ac:	c7 44 24 04 0d 00 00 	movl   $0xd,0x4(%esp)
c06004b3:	00 
c06004b4:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c06004bb:	fc                   	cld    
c06004bc:	e8 9f 0f 00 00       	call   c0601460 <_sys_printk>
c06004c1:	fa                   	cli    
c06004c2:	f4                   	hlt    
c06004c3:	8d 65 f4             	lea    -0xc(%ebp),%esp
c06004c6:	58                   	pop    %eax
c06004c7:	5a                   	pop    %edx
c06004c8:	59                   	pop    %ecx
c06004c9:	5d                   	pop    %ebp
c06004ca:	83 c4 04             	add    $0x4,%esp
c06004cd:	cf                   	iret   
c06004ce:	66 90                	xchg   %ax,%ax

c06004d0 <_page_fault>:
c06004d0:	55                   	push   %ebp
c06004d1:	89 e5                	mov    %esp,%ebp
c06004d3:	51                   	push   %ecx
c06004d4:	52                   	push   %edx
c06004d5:	50                   	push   %eax
c06004d6:	83 e4 f0             	and    $0xfffffff0,%esp
c06004d9:	83 ec 10             	sub    $0x10,%esp
c06004dc:	c7 44 24 04 0e 00 00 	movl   $0xe,0x4(%esp)
c06004e3:	00 
c06004e4:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c06004eb:	fc                   	cld    
c06004ec:	e8 6f 0f 00 00       	call   c0601460 <_sys_printk>
c06004f1:	fa                   	cli    
c06004f2:	f4                   	hlt    
c06004f3:	8d 65 f4             	lea    -0xc(%ebp),%esp
c06004f6:	58                   	pop    %eax
c06004f7:	5a                   	pop    %edx
c06004f8:	59                   	pop    %ecx
c06004f9:	5d                   	pop    %ebp
c06004fa:	83 c4 04             	add    $0x4,%esp
c06004fd:	cf                   	iret   
c06004fe:	66 90                	xchg   %ax,%ax

c0600500 <_math_fault>:
c0600500:	55                   	push   %ebp
c0600501:	89 e5                	mov    %esp,%ebp
c0600503:	51                   	push   %ecx
c0600504:	52                   	push   %edx
c0600505:	50                   	push   %eax
c0600506:	83 e4 f0             	and    $0xfffffff0,%esp
c0600509:	83 ec 10             	sub    $0x10,%esp
c060050c:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
c0600513:	00 
c0600514:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060051b:	fc                   	cld    
c060051c:	e8 3f 0f 00 00       	call   c0601460 <_sys_printk>
c0600521:	fa                   	cli    
c0600522:	f4                   	hlt    
c0600523:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600526:	58                   	pop    %eax
c0600527:	5a                   	pop    %edx
c0600528:	59                   	pop    %ecx
c0600529:	5d                   	pop    %ebp
c060052a:	83 c4 04             	add    $0x4,%esp
c060052d:	cf                   	iret   
c060052e:	66 90                	xchg   %ax,%ax

c0600530 <_align_check>:
c0600530:	55                   	push   %ebp
c0600531:	89 e5                	mov    %esp,%ebp
c0600533:	51                   	push   %ecx
c0600534:	52                   	push   %edx
c0600535:	50                   	push   %eax
c0600536:	83 e4 f0             	and    $0xfffffff0,%esp
c0600539:	83 ec 10             	sub    $0x10,%esp
c060053c:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
c0600543:	00 
c0600544:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060054b:	fc                   	cld    
c060054c:	e8 0f 0f 00 00       	call   c0601460 <_sys_printk>
c0600551:	fa                   	cli    
c0600552:	f4                   	hlt    
c0600553:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600556:	58                   	pop    %eax
c0600557:	5a                   	pop    %edx
c0600558:	59                   	pop    %ecx
c0600559:	5d                   	pop    %ebp
c060055a:	83 c4 04             	add    $0x4,%esp
c060055d:	cf                   	iret   
c060055e:	66 90                	xchg   %ax,%ax

c0600560 <_machine_check>:
c0600560:	55                   	push   %ebp
c0600561:	89 e5                	mov    %esp,%ebp
c0600563:	51                   	push   %ecx
c0600564:	52                   	push   %edx
c0600565:	50                   	push   %eax
c0600566:	83 e4 f0             	and    $0xfffffff0,%esp
c0600569:	83 ec 10             	sub    $0x10,%esp
c060056c:	c7 44 24 04 12 00 00 	movl   $0x12,0x4(%esp)
c0600573:	00 
c0600574:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060057b:	fc                   	cld    
c060057c:	e8 df 0e 00 00       	call   c0601460 <_sys_printk>
c0600581:	fa                   	cli    
c0600582:	f4                   	hlt    
c0600583:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600586:	58                   	pop    %eax
c0600587:	5a                   	pop    %edx
c0600588:	59                   	pop    %ecx
c0600589:	5d                   	pop    %ebp
c060058a:	83 c4 04             	add    $0x4,%esp
c060058d:	cf                   	iret   
c060058e:	66 90                	xchg   %ax,%ax

c0600590 <_streaming_simd_ext>:
c0600590:	55                   	push   %ebp
c0600591:	89 e5                	mov    %esp,%ebp
c0600593:	51                   	push   %ecx
c0600594:	52                   	push   %edx
c0600595:	50                   	push   %eax
c0600596:	83 e4 f0             	and    $0xfffffff0,%esp
c0600599:	83 ec 10             	sub    $0x10,%esp
c060059c:	c7 44 24 04 13 00 00 	movl   $0x13,0x4(%esp)
c06005a3:	00 
c06005a4:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c06005ab:	fc                   	cld    
c06005ac:	e8 af 0e 00 00       	call   c0601460 <_sys_printk>
c06005b1:	fa                   	cli    
c06005b2:	f4                   	hlt    
c06005b3:	8d 65 f4             	lea    -0xc(%ebp),%esp
c06005b6:	58                   	pop    %eax
c06005b7:	5a                   	pop    %edx
c06005b8:	59                   	pop    %ecx
c06005b9:	5d                   	pop    %ebp
c06005ba:	83 c4 04             	add    $0x4,%esp
c06005bd:	cf                   	iret   
c06005be:	66 90                	xchg   %ax,%ax

c06005c0 <_timer_int>:
c06005c0:	55                   	push   %ebp
c06005c1:	89 e5                	mov    %esp,%ebp
c06005c3:	51                   	push   %ecx
c06005c4:	52                   	push   %edx
c06005c5:	50                   	push   %eax
c06005c6:	83 e4 f0             	and    $0xfffffff0,%esp
c06005c9:	83 ec 10             	sub    $0x10,%esp
c06005cc:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c06005d3:	00 
c06005d4:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c06005db:	fc                   	cld    
c06005dc:	e8 7f 0e 00 00       	call   c0601460 <_sys_printk>
c06005e1:	fa                   	cli    
c06005e2:	f4                   	hlt    
c06005e3:	8d 65 f4             	lea    -0xc(%ebp),%esp
c06005e6:	58                   	pop    %eax
c06005e7:	5a                   	pop    %edx
c06005e8:	59                   	pop    %ecx
c06005e9:	5d                   	pop    %ebp
c06005ea:	cf                   	iret   
c06005eb:	90                   	nop
c06005ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c06005f0 <_key_int>:
c06005f0:	55                   	push   %ebp
c06005f1:	89 e5                	mov    %esp,%ebp
c06005f3:	51                   	push   %ecx
c06005f4:	52                   	push   %edx
c06005f5:	50                   	push   %eax
c06005f6:	83 e4 f0             	and    $0xfffffff0,%esp
c06005f9:	83 ec 10             	sub    $0x10,%esp
c06005fc:	c7 44 24 04 21 00 00 	movl   $0x21,0x4(%esp)
c0600603:	00 
c0600604:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060060b:	fc                   	cld    
c060060c:	e8 4f 0e 00 00       	call   c0601460 <_sys_printk>
c0600611:	fa                   	cli    
c0600612:	f4                   	hlt    
c0600613:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600616:	58                   	pop    %eax
c0600617:	5a                   	pop    %edx
c0600618:	59                   	pop    %ecx
c0600619:	5d                   	pop    %ebp
c060061a:	cf                   	iret   
c060061b:	90                   	nop
c060061c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0600620 <__irq9>:
c0600620:	55                   	push   %ebp
c0600621:	89 e5                	mov    %esp,%ebp
c0600623:	51                   	push   %ecx
c0600624:	52                   	push   %edx
c0600625:	50                   	push   %eax
c0600626:	83 e4 f0             	and    $0xfffffff0,%esp
c0600629:	83 ec 10             	sub    $0x10,%esp
c060062c:	c7 44 24 04 22 00 00 	movl   $0x22,0x4(%esp)
c0600633:	00 
c0600634:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060063b:	fc                   	cld    
c060063c:	e8 1f 0e 00 00       	call   c0601460 <_sys_printk>
c0600641:	fa                   	cli    
c0600642:	f4                   	hlt    
c0600643:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600646:	58                   	pop    %eax
c0600647:	5a                   	pop    %edx
c0600648:	59                   	pop    %ecx
c0600649:	5d                   	pop    %ebp
c060064a:	cf                   	iret   
c060064b:	90                   	nop
c060064c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0600650 <_com2_int>:
c0600650:	55                   	push   %ebp
c0600651:	89 e5                	mov    %esp,%ebp
c0600653:	51                   	push   %ecx
c0600654:	52                   	push   %edx
c0600655:	50                   	push   %eax
c0600656:	83 e4 f0             	and    $0xfffffff0,%esp
c0600659:	83 ec 10             	sub    $0x10,%esp
c060065c:	c7 44 24 04 23 00 00 	movl   $0x23,0x4(%esp)
c0600663:	00 
c0600664:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060066b:	fc                   	cld    
c060066c:	e8 ef 0d 00 00       	call   c0601460 <_sys_printk>
c0600671:	fa                   	cli    
c0600672:	f4                   	hlt    
c0600673:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600676:	58                   	pop    %eax
c0600677:	5a                   	pop    %edx
c0600678:	59                   	pop    %ecx
c0600679:	5d                   	pop    %ebp
c060067a:	cf                   	iret   
c060067b:	90                   	nop
c060067c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0600680 <_com1_int>:
c0600680:	55                   	push   %ebp
c0600681:	89 e5                	mov    %esp,%ebp
c0600683:	51                   	push   %ecx
c0600684:	52                   	push   %edx
c0600685:	50                   	push   %eax
c0600686:	83 e4 f0             	and    $0xfffffff0,%esp
c0600689:	83 ec 10             	sub    $0x10,%esp
c060068c:	c7 44 24 04 24 00 00 	movl   $0x24,0x4(%esp)
c0600693:	00 
c0600694:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060069b:	fc                   	cld    
c060069c:	e8 bf 0d 00 00       	call   c0601460 <_sys_printk>
c06006a1:	fa                   	cli    
c06006a2:	f4                   	hlt    
c06006a3:	8d 65 f4             	lea    -0xc(%ebp),%esp
c06006a6:	58                   	pop    %eax
c06006a7:	5a                   	pop    %edx
c06006a8:	59                   	pop    %ecx
c06006a9:	5d                   	pop    %ebp
c06006aa:	cf                   	iret   
c06006ab:	90                   	nop
c06006ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c06006b0 <_lptr2_int>:
c06006b0:	55                   	push   %ebp
c06006b1:	89 e5                	mov    %esp,%ebp
c06006b3:	51                   	push   %ecx
c06006b4:	52                   	push   %edx
c06006b5:	50                   	push   %eax
c06006b6:	83 e4 f0             	and    $0xfffffff0,%esp
c06006b9:	83 ec 10             	sub    $0x10,%esp
c06006bc:	c7 44 24 04 25 00 00 	movl   $0x25,0x4(%esp)
c06006c3:	00 
c06006c4:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c06006cb:	fc                   	cld    
c06006cc:	e8 8f 0d 00 00       	call   c0601460 <_sys_printk>
c06006d1:	fa                   	cli    
c06006d2:	f4                   	hlt    
c06006d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
c06006d6:	58                   	pop    %eax
c06006d7:	5a                   	pop    %edx
c06006d8:	59                   	pop    %ecx
c06006d9:	5d                   	pop    %ebp
c06006da:	cf                   	iret   
c06006db:	90                   	nop
c06006dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c06006e0 <_fdd_int>:
c06006e0:	55                   	push   %ebp
c06006e1:	89 e5                	mov    %esp,%ebp
c06006e3:	51                   	push   %ecx
c06006e4:	52                   	push   %edx
c06006e5:	50                   	push   %eax
c06006e6:	83 e4 f0             	and    $0xfffffff0,%esp
c06006e9:	83 ec 10             	sub    $0x10,%esp
c06006ec:	c7 44 24 04 26 00 00 	movl   $0x26,0x4(%esp)
c06006f3:	00 
c06006f4:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c06006fb:	fc                   	cld    
c06006fc:	e8 5f 0d 00 00       	call   c0601460 <_sys_printk>
c0600701:	fa                   	cli    
c0600702:	f4                   	hlt    
c0600703:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600706:	58                   	pop    %eax
c0600707:	5a                   	pop    %edx
c0600708:	59                   	pop    %ecx
c0600709:	5d                   	pop    %ebp
c060070a:	cf                   	iret   
c060070b:	90                   	nop
c060070c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0600710 <_lpt1_int>:
c0600710:	55                   	push   %ebp
c0600711:	89 e5                	mov    %esp,%ebp
c0600713:	51                   	push   %ecx
c0600714:	52                   	push   %edx
c0600715:	50                   	push   %eax
c0600716:	83 e4 f0             	and    $0xfffffff0,%esp
c0600719:	83 ec 10             	sub    $0x10,%esp
c060071c:	c7 44 24 04 27 00 00 	movl   $0x27,0x4(%esp)
c0600723:	00 
c0600724:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060072b:	fc                   	cld    
c060072c:	e8 2f 0d 00 00       	call   c0601460 <_sys_printk>
c0600731:	fa                   	cli    
c0600732:	f4                   	hlt    
c0600733:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600736:	58                   	pop    %eax
c0600737:	5a                   	pop    %edx
c0600738:	59                   	pop    %ecx
c0600739:	5d                   	pop    %ebp
c060073a:	cf                   	iret   
c060073b:	90                   	nop
c060073c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0600740 <_cmos_alert_int>:
c0600740:	55                   	push   %ebp
c0600741:	89 e5                	mov    %esp,%ebp
c0600743:	51                   	push   %ecx
c0600744:	52                   	push   %edx
c0600745:	50                   	push   %eax
c0600746:	83 e4 f0             	and    $0xfffffff0,%esp
c0600749:	83 ec 10             	sub    $0x10,%esp
c060074c:	c7 44 24 04 28 00 00 	movl   $0x28,0x4(%esp)
c0600753:	00 
c0600754:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060075b:	fc                   	cld    
c060075c:	e8 ff 0c 00 00       	call   c0601460 <_sys_printk>
c0600761:	fa                   	cli    
c0600762:	f4                   	hlt    
c0600763:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600766:	58                   	pop    %eax
c0600767:	5a                   	pop    %edx
c0600768:	59                   	pop    %ecx
c0600769:	5d                   	pop    %ebp
c060076a:	cf                   	iret   
c060076b:	90                   	nop
c060076c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0600770 <__irq2>:
c0600770:	55                   	push   %ebp
c0600771:	89 e5                	mov    %esp,%ebp
c0600773:	51                   	push   %ecx
c0600774:	52                   	push   %edx
c0600775:	50                   	push   %eax
c0600776:	83 e4 f0             	and    $0xfffffff0,%esp
c0600779:	83 ec 10             	sub    $0x10,%esp
c060077c:	c7 44 24 04 29 00 00 	movl   $0x29,0x4(%esp)
c0600783:	00 
c0600784:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060078b:	fc                   	cld    
c060078c:	e8 cf 0c 00 00       	call   c0601460 <_sys_printk>
c0600791:	fa                   	cli    
c0600792:	f4                   	hlt    
c0600793:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600796:	58                   	pop    %eax
c0600797:	5a                   	pop    %edx
c0600798:	59                   	pop    %ecx
c0600799:	5d                   	pop    %ebp
c060079a:	cf                   	iret   
c060079b:	90                   	nop
c060079c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c06007a0 <_reversed1_int>:
c06007a0:	55                   	push   %ebp
c06007a1:	89 e5                	mov    %esp,%ebp
c06007a3:	51                   	push   %ecx
c06007a4:	52                   	push   %edx
c06007a5:	50                   	push   %eax
c06007a6:	83 e4 f0             	and    $0xfffffff0,%esp
c06007a9:	83 ec 10             	sub    $0x10,%esp
c06007ac:	c7 44 24 04 2a 00 00 	movl   $0x2a,0x4(%esp)
c06007b3:	00 
c06007b4:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c06007bb:	fc                   	cld    
c06007bc:	e8 9f 0c 00 00       	call   c0601460 <_sys_printk>
c06007c1:	fa                   	cli    
c06007c2:	f4                   	hlt    
c06007c3:	8d 65 f4             	lea    -0xc(%ebp),%esp
c06007c6:	58                   	pop    %eax
c06007c7:	5a                   	pop    %edx
c06007c8:	59                   	pop    %ecx
c06007c9:	5d                   	pop    %ebp
c06007ca:	cf                   	iret   
c06007cb:	90                   	nop
c06007cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c06007d0 <_reversed2_int>:
c06007d0:	55                   	push   %ebp
c06007d1:	89 e5                	mov    %esp,%ebp
c06007d3:	51                   	push   %ecx
c06007d4:	52                   	push   %edx
c06007d5:	50                   	push   %eax
c06007d6:	83 e4 f0             	and    $0xfffffff0,%esp
c06007d9:	83 ec 10             	sub    $0x10,%esp
c06007dc:	c7 44 24 04 2b 00 00 	movl   $0x2b,0x4(%esp)
c06007e3:	00 
c06007e4:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c06007eb:	fc                   	cld    
c06007ec:	e8 6f 0c 00 00       	call   c0601460 <_sys_printk>
c06007f1:	fa                   	cli    
c06007f2:	f4                   	hlt    
c06007f3:	8d 65 f4             	lea    -0xc(%ebp),%esp
c06007f6:	58                   	pop    %eax
c06007f7:	5a                   	pop    %edx
c06007f8:	59                   	pop    %ecx
c06007f9:	5d                   	pop    %ebp
c06007fa:	cf                   	iret   
c06007fb:	90                   	nop
c06007fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0600800 <_ps_2_mouse_int>:
c0600800:	55                   	push   %ebp
c0600801:	89 e5                	mov    %esp,%ebp
c0600803:	51                   	push   %ecx
c0600804:	52                   	push   %edx
c0600805:	50                   	push   %eax
c0600806:	83 e4 f0             	and    $0xfffffff0,%esp
c0600809:	83 ec 10             	sub    $0x10,%esp
c060080c:	c7 44 24 04 2c 00 00 	movl   $0x2c,0x4(%esp)
c0600813:	00 
c0600814:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060081b:	fc                   	cld    
c060081c:	e8 3f 0c 00 00       	call   c0601460 <_sys_printk>
c0600821:	fa                   	cli    
c0600822:	f4                   	hlt    
c0600823:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600826:	58                   	pop    %eax
c0600827:	5a                   	pop    %edx
c0600828:	59                   	pop    %ecx
c0600829:	5d                   	pop    %ebp
c060082a:	cf                   	iret   
c060082b:	90                   	nop
c060082c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0600830 <_fpu_int>:
c0600830:	55                   	push   %ebp
c0600831:	89 e5                	mov    %esp,%ebp
c0600833:	51                   	push   %ecx
c0600834:	52                   	push   %edx
c0600835:	50                   	push   %eax
c0600836:	83 e4 f0             	and    $0xfffffff0,%esp
c0600839:	83 ec 10             	sub    $0x10,%esp
c060083c:	c7 44 24 04 2d 00 00 	movl   $0x2d,0x4(%esp)
c0600843:	00 
c0600844:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060084b:	fc                   	cld    
c060084c:	e8 0f 0c 00 00       	call   c0601460 <_sys_printk>
c0600851:	fa                   	cli    
c0600852:	f4                   	hlt    
c0600853:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600856:	58                   	pop    %eax
c0600857:	5a                   	pop    %edx
c0600858:	59                   	pop    %ecx
c0600859:	5d                   	pop    %ebp
c060085a:	cf                   	iret   
c060085b:	90                   	nop
c060085c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0600860 <_primary_ide_int>:
c0600860:	55                   	push   %ebp
c0600861:	89 e5                	mov    %esp,%ebp
c0600863:	51                   	push   %ecx
c0600864:	52                   	push   %edx
c0600865:	50                   	push   %eax
c0600866:	83 e4 f0             	and    $0xfffffff0,%esp
c0600869:	83 ec 10             	sub    $0x10,%esp
c060086c:	c7 44 24 04 2e 00 00 	movl   $0x2e,0x4(%esp)
c0600873:	00 
c0600874:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c060087b:	fc                   	cld    
c060087c:	e8 df 0b 00 00       	call   c0601460 <_sys_printk>
c0600881:	fa                   	cli    
c0600882:	f4                   	hlt    
c0600883:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0600886:	58                   	pop    %eax
c0600887:	5a                   	pop    %edx
c0600888:	59                   	pop    %ecx
c0600889:	5d                   	pop    %ebp
c060088a:	cf                   	iret   
c060088b:	90                   	nop
c060088c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0600890 <_seccondary_ide_int>:
c0600890:	55                   	push   %ebp
c0600891:	89 e5                	mov    %esp,%ebp
c0600893:	51                   	push   %ecx
c0600894:	52                   	push   %edx
c0600895:	50                   	push   %eax
c0600896:	83 e4 f0             	and    $0xfffffff0,%esp
c0600899:	83 ec 10             	sub    $0x10,%esp
c060089c:	c7 44 24 04 2f 00 00 	movl   $0x2f,0x4(%esp)
c06008a3:	00 
c06008a4:	c7 04 24 30 30 60 c0 	movl   $0xc0603030,(%esp)
c06008ab:	fc                   	cld    
c06008ac:	e8 af 0b 00 00       	call   c0601460 <_sys_printk>
c06008b1:	fa                   	cli    
c06008b2:	f4                   	hlt    
c06008b3:	8d 65 f4             	lea    -0xc(%ebp),%esp
c06008b6:	58                   	pop    %eax
c06008b7:	5a                   	pop    %edx
c06008b8:	59                   	pop    %ecx
c06008b9:	5d                   	pop    %ebp
c06008ba:	cf                   	iret   
c06008bb:	90                   	nop
c06008bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c06008c0 <_init_idt>:
c06008c0:	c7 05 02 20 00 00 08 	movl   $0x8f000008,0x2002
c06008c7:	00 00 8f 
c06008ca:	b8 30 02 60 c0       	mov    $0xc0600230,%eax
c06008cf:	66 a3 00 20 00 00    	mov    %ax,0x2000
c06008d5:	c1 e8 10             	shr    $0x10,%eax
c06008d8:	66 a3 06 20 00 00    	mov    %ax,0x2006
c06008de:	b8 60 02 60 c0       	mov    $0xc0600260,%eax
c06008e3:	66 a3 08 20 00 00    	mov    %ax,0x2008
c06008e9:	c1 e8 10             	shr    $0x10,%eax
c06008ec:	66 a3 0e 20 00 00    	mov    %ax,0x200e
c06008f2:	b8 90 02 60 c0       	mov    $0xc0600290,%eax
c06008f7:	66 a3 10 20 00 00    	mov    %ax,0x2010
c06008fd:	c1 e8 10             	shr    $0x10,%eax
c0600900:	66 a3 16 20 00 00    	mov    %ax,0x2016
c0600906:	b8 c0 02 60 c0       	mov    $0xc06002c0,%eax
c060090b:	66 a3 18 20 00 00    	mov    %ax,0x2018
c0600911:	c1 e8 10             	shr    $0x10,%eax
c0600914:	66 a3 1e 20 00 00    	mov    %ax,0x201e
c060091a:	b8 f0 02 60 c0       	mov    $0xc06002f0,%eax
c060091f:	66 a3 20 20 00 00    	mov    %ax,0x2020
c0600925:	c1 e8 10             	shr    $0x10,%eax
c0600928:	66 a3 26 20 00 00    	mov    %ax,0x2026
c060092e:	b8 20 03 60 c0       	mov    $0xc0600320,%eax
c0600933:	66 a3 28 20 00 00    	mov    %ax,0x2028
c0600939:	c1 e8 10             	shr    $0x10,%eax
c060093c:	66 a3 2e 20 00 00    	mov    %ax,0x202e
c0600942:	b8 50 03 60 c0       	mov    $0xc0600350,%eax
c0600947:	66 a3 30 20 00 00    	mov    %ax,0x2030
c060094d:	c1 e8 10             	shr    $0x10,%eax
c0600950:	66 a3 36 20 00 00    	mov    %ax,0x2036
c0600956:	b8 80 03 60 c0       	mov    $0xc0600380,%eax
c060095b:	66 a3 38 20 00 00    	mov    %ax,0x2038
c0600961:	c1 e8 10             	shr    $0x10,%eax
c0600964:	66 a3 3e 20 00 00    	mov    %ax,0x203e
c060096a:	b8 b0 03 60 c0       	mov    $0xc06003b0,%eax
c060096f:	66 a3 40 20 00 00    	mov    %ax,0x2040
c0600975:	c1 e8 10             	shr    $0x10,%eax
c0600978:	66 a3 46 20 00 00    	mov    %ax,0x2046
c060097e:	b8 e0 03 60 c0       	mov    $0xc06003e0,%eax
c0600983:	66 a3 48 20 00 00    	mov    %ax,0x2048
c0600989:	c1 e8 10             	shr    $0x10,%eax
c060098c:	66 a3 4e 20 00 00    	mov    %ax,0x204e
c0600992:	b8 10 04 60 c0       	mov    $0xc0600410,%eax
c0600997:	66 a3 50 20 00 00    	mov    %ax,0x2050
c060099d:	c1 e8 10             	shr    $0x10,%eax
c06009a0:	66 a3 56 20 00 00    	mov    %ax,0x2056
c06009a6:	b8 40 04 60 c0       	mov    $0xc0600440,%eax
c06009ab:	c7 05 0a 20 00 00 08 	movl   $0x8f000008,0x200a
c06009b2:	00 00 8f 
c06009b5:	c7 05 12 20 00 00 08 	movl   $0x8f000008,0x2012
c06009bc:	00 00 8f 
c06009bf:	c7 05 1a 20 00 00 08 	movl   $0x8f000008,0x201a
c06009c6:	00 00 8f 
c06009c9:	c7 05 22 20 00 00 08 	movl   $0x8f000008,0x2022
c06009d0:	00 00 8f 
c06009d3:	c7 05 2a 20 00 00 08 	movl   $0x8f000008,0x202a
c06009da:	00 00 8f 
c06009dd:	c7 05 32 20 00 00 08 	movl   $0x8f000008,0x2032
c06009e4:	00 00 8f 
c06009e7:	c7 05 3a 20 00 00 08 	movl   $0x8f000008,0x203a
c06009ee:	00 00 8f 
c06009f1:	c7 05 42 20 00 00 08 	movl   $0x8f000008,0x2042
c06009f8:	00 00 8f 
c06009fb:	c7 05 4a 20 00 00 08 	movl   $0x8f000008,0x204a
c0600a02:	00 00 8f 
c0600a05:	c7 05 52 20 00 00 08 	movl   $0x8f000008,0x2052
c0600a0c:	00 00 8f 
c0600a0f:	66 a3 58 20 00 00    	mov    %ax,0x2058
c0600a15:	c1 e8 10             	shr    $0x10,%eax
c0600a18:	66 a3 5e 20 00 00    	mov    %ax,0x205e
c0600a1e:	b8 70 04 60 c0       	mov    $0xc0600470,%eax
c0600a23:	66 a3 60 20 00 00    	mov    %ax,0x2060
c0600a29:	c1 e8 10             	shr    $0x10,%eax
c0600a2c:	66 a3 66 20 00 00    	mov    %ax,0x2066
c0600a32:	b8 a0 04 60 c0       	mov    $0xc06004a0,%eax
c0600a37:	66 a3 68 20 00 00    	mov    %ax,0x2068
c0600a3d:	c1 e8 10             	shr    $0x10,%eax
c0600a40:	66 a3 6e 20 00 00    	mov    %ax,0x206e
c0600a46:	b8 d0 04 60 c0       	mov    $0xc06004d0,%eax
c0600a4b:	66 a3 70 20 00 00    	mov    %ax,0x2070
c0600a51:	c1 e8 10             	shr    $0x10,%eax
c0600a54:	66 a3 76 20 00 00    	mov    %ax,0x2076
c0600a5a:	b8 20 02 60 c0       	mov    $0xc0600220,%eax
c0600a5f:	66 a3 78 20 00 00    	mov    %ax,0x2078
c0600a65:	c1 e8 10             	shr    $0x10,%eax
c0600a68:	66 a3 7e 20 00 00    	mov    %ax,0x207e
c0600a6e:	b8 00 05 60 c0       	mov    $0xc0600500,%eax
c0600a73:	66 a3 80 20 00 00    	mov    %ax,0x2080
c0600a79:	c1 e8 10             	shr    $0x10,%eax
c0600a7c:	66 a3 86 20 00 00    	mov    %ax,0x2086
c0600a82:	b8 30 05 60 c0       	mov    $0xc0600530,%eax
c0600a87:	66 a3 88 20 00 00    	mov    %ax,0x2088
c0600a8d:	c1 e8 10             	shr    $0x10,%eax
c0600a90:	66 a3 8e 20 00 00    	mov    %ax,0x208e
c0600a96:	b8 60 05 60 c0       	mov    $0xc0600560,%eax
c0600a9b:	66 a3 90 20 00 00    	mov    %ax,0x2090
c0600aa1:	c1 e8 10             	shr    $0x10,%eax
c0600aa4:	66 a3 96 20 00 00    	mov    %ax,0x2096
c0600aaa:	b8 90 05 60 c0       	mov    $0xc0600590,%eax
c0600aaf:	66 a3 98 20 00 00    	mov    %ax,0x2098
c0600ab5:	c1 e8 10             	shr    $0x10,%eax
c0600ab8:	66 a3 9e 20 00 00    	mov    %ax,0x209e
c0600abe:	b8 c0 05 60 c0       	mov    $0xc06005c0,%eax
c0600ac3:	66 a3 00 21 00 00    	mov    %ax,0x2100
c0600ac9:	c1 e8 10             	shr    $0x10,%eax
c0600acc:	66 a3 06 21 00 00    	mov    %ax,0x2106
c0600ad2:	b8 f0 05 60 c0       	mov    $0xc06005f0,%eax
c0600ad7:	66 a3 08 21 00 00    	mov    %ax,0x2108
c0600add:	c1 e8 10             	shr    $0x10,%eax
c0600ae0:	66 a3 0e 21 00 00    	mov    %ax,0x210e
c0600ae6:	b8 20 06 60 c0       	mov    $0xc0600620,%eax
c0600aeb:	c7 05 5a 20 00 00 08 	movl   $0x8f000008,0x205a
c0600af2:	00 00 8f 
c0600af5:	c7 05 62 20 00 00 08 	movl   $0x8f000008,0x2062
c0600afc:	00 00 8f 
c0600aff:	c7 05 6a 20 00 00 08 	movl   $0x8f000008,0x206a
c0600b06:	00 00 8f 
c0600b09:	c7 05 72 20 00 00 08 	movl   $0x8f000008,0x2072
c0600b10:	00 00 8f 
c0600b13:	c7 05 7a 20 00 00 08 	movl   $0x8f000008,0x207a
c0600b1a:	00 00 8f 
c0600b1d:	c7 05 82 20 00 00 08 	movl   $0x8f000008,0x2082
c0600b24:	00 00 8f 
c0600b27:	c7 05 8a 20 00 00 08 	movl   $0x8f000008,0x208a
c0600b2e:	00 00 8f 
c0600b31:	c7 05 92 20 00 00 08 	movl   $0x8f000008,0x2092
c0600b38:	00 00 8f 
c0600b3b:	c7 05 9a 20 00 00 08 	movl   $0x8f000008,0x209a
c0600b42:	00 00 8f 
c0600b45:	c7 05 02 21 00 00 08 	movl   $0x8f000008,0x2102
c0600b4c:	00 00 8f 
c0600b4f:	c7 05 0a 21 00 00 08 	movl   $0x8f000008,0x210a
c0600b56:	00 00 8f 
c0600b59:	66 a3 10 21 00 00    	mov    %ax,0x2110
c0600b5f:	c1 e8 10             	shr    $0x10,%eax
c0600b62:	66 a3 16 21 00 00    	mov    %ax,0x2116
c0600b68:	b8 50 06 60 c0       	mov    $0xc0600650,%eax
c0600b6d:	66 a3 18 21 00 00    	mov    %ax,0x2118
c0600b73:	c1 e8 10             	shr    $0x10,%eax
c0600b76:	66 a3 1e 21 00 00    	mov    %ax,0x211e
c0600b7c:	b8 80 06 60 c0       	mov    $0xc0600680,%eax
c0600b81:	66 a3 20 21 00 00    	mov    %ax,0x2120
c0600b87:	c1 e8 10             	shr    $0x10,%eax
c0600b8a:	66 a3 26 21 00 00    	mov    %ax,0x2126
c0600b90:	b8 b0 06 60 c0       	mov    $0xc06006b0,%eax
c0600b95:	66 a3 28 21 00 00    	mov    %ax,0x2128
c0600b9b:	c1 e8 10             	shr    $0x10,%eax
c0600b9e:	66 a3 2e 21 00 00    	mov    %ax,0x212e
c0600ba4:	b8 e0 06 60 c0       	mov    $0xc06006e0,%eax
c0600ba9:	66 a3 30 21 00 00    	mov    %ax,0x2130
c0600baf:	c1 e8 10             	shr    $0x10,%eax
c0600bb2:	66 a3 36 21 00 00    	mov    %ax,0x2136
c0600bb8:	b8 10 07 60 c0       	mov    $0xc0600710,%eax
c0600bbd:	66 a3 38 21 00 00    	mov    %ax,0x2138
c0600bc3:	c1 e8 10             	shr    $0x10,%eax
c0600bc6:	66 a3 3e 21 00 00    	mov    %ax,0x213e
c0600bcc:	b8 40 07 60 c0       	mov    $0xc0600740,%eax
c0600bd1:	66 a3 40 21 00 00    	mov    %ax,0x2140
c0600bd7:	c1 e8 10             	shr    $0x10,%eax
c0600bda:	66 a3 46 21 00 00    	mov    %ax,0x2146
c0600be0:	b8 70 07 60 c0       	mov    $0xc0600770,%eax
c0600be5:	66 a3 48 21 00 00    	mov    %ax,0x2148
c0600beb:	c1 e8 10             	shr    $0x10,%eax
c0600bee:	66 a3 4e 21 00 00    	mov    %ax,0x214e
c0600bf4:	b8 a0 07 60 c0       	mov    $0xc06007a0,%eax
c0600bf9:	66 a3 50 21 00 00    	mov    %ax,0x2150
c0600bff:	c1 e8 10             	shr    $0x10,%eax
c0600c02:	66 a3 56 21 00 00    	mov    %ax,0x2156
c0600c08:	b8 d0 07 60 c0       	mov    $0xc06007d0,%eax
c0600c0d:	66 a3 58 21 00 00    	mov    %ax,0x2158
c0600c13:	c1 e8 10             	shr    $0x10,%eax
c0600c16:	66 a3 5e 21 00 00    	mov    %ax,0x215e
c0600c1c:	b8 00 08 60 c0       	mov    $0xc0600800,%eax
c0600c21:	66 a3 60 21 00 00    	mov    %ax,0x2160
c0600c27:	c1 e8 10             	shr    $0x10,%eax
c0600c2a:	66 a3 66 21 00 00    	mov    %ax,0x2166
c0600c30:	b8 30 08 60 c0       	mov    $0xc0600830,%eax
c0600c35:	c7 05 12 21 00 00 08 	movl   $0x8f000008,0x2112
c0600c3c:	00 00 8f 
c0600c3f:	c7 05 1a 21 00 00 08 	movl   $0x8f000008,0x211a
c0600c46:	00 00 8f 
c0600c49:	c7 05 22 21 00 00 08 	movl   $0x8f000008,0x2122
c0600c50:	00 00 8f 
c0600c53:	c7 05 2a 21 00 00 08 	movl   $0x8f000008,0x212a
c0600c5a:	00 00 8f 
c0600c5d:	c7 05 32 21 00 00 08 	movl   $0x8f000008,0x2132
c0600c64:	00 00 8f 
c0600c67:	c7 05 3a 21 00 00 08 	movl   $0x8f000008,0x213a
c0600c6e:	00 00 8f 
c0600c71:	c7 05 42 21 00 00 08 	movl   $0x8f000008,0x2142
c0600c78:	00 00 8f 
c0600c7b:	c7 05 4a 21 00 00 08 	movl   $0x8f000008,0x214a
c0600c82:	00 00 8f 
c0600c85:	c7 05 52 21 00 00 08 	movl   $0x8f000008,0x2152
c0600c8c:	00 00 8f 
c0600c8f:	c7 05 5a 21 00 00 08 	movl   $0x8f000008,0x215a
c0600c96:	00 00 8f 
c0600c99:	c7 05 62 21 00 00 08 	movl   $0x8f000008,0x2162
c0600ca0:	00 00 8f 
c0600ca3:	66 a3 68 21 00 00    	mov    %ax,0x2168
c0600ca9:	c1 e8 10             	shr    $0x10,%eax
c0600cac:	66 a3 6e 21 00 00    	mov    %ax,0x216e
c0600cb2:	b8 60 08 60 c0       	mov    $0xc0600860,%eax
c0600cb7:	66 a3 70 21 00 00    	mov    %ax,0x2170
c0600cbd:	c1 e8 10             	shr    $0x10,%eax
c0600cc0:	66 a3 76 21 00 00    	mov    %ax,0x2176
c0600cc6:	b8 90 08 60 c0       	mov    $0xc0600890,%eax
c0600ccb:	66 a3 78 21 00 00    	mov    %ax,0x2178
c0600cd1:	c1 e8 10             	shr    $0x10,%eax
c0600cd4:	c7 05 6a 21 00 00 08 	movl   $0x8f000008,0x216a
c0600cdb:	00 00 8f 
c0600cde:	c7 05 72 21 00 00 08 	movl   $0x8f000008,0x2172
c0600ce5:	00 00 8f 
c0600ce8:	66 a3 7e 21 00 00    	mov    %ax,0x217e
c0600cee:	c7 05 7a 21 00 00 08 	movl   $0x8f000008,0x217a
c0600cf5:	00 00 8f 
c0600cf8:	c3                   	ret    
c0600cf9:	90                   	nop
c0600cfa:	90                   	nop
c0600cfb:	90                   	nop
c0600cfc:	90                   	nop
c0600cfd:	90                   	nop
c0600cfe:	90                   	nop
c0600cff:	90                   	nop

c0600d00 <__system>:
c0600d00:	83 ec 1c             	sub    $0x1c,%esp
c0600d03:	e8 f8 f2 ff ff       	call   c0600000 <_initsys_info>
c0600d08:	e8 a3 04 00 00       	call   c06011b0 <_init_mem>
c0600d0d:	e8 ae fb ff ff       	call   c06008c0 <_init_idt>
c0600d12:	c7 04 24 34 30 60 c0 	movl   $0xc0603034,(%esp)
c0600d19:	e8 42 07 00 00       	call   c0601460 <_sys_printk>
c0600d1e:	c7 04 24 3b 30 60 c0 	movl   $0xc060303b,(%esp)
c0600d25:	e8 36 07 00 00       	call   c0601460 <_sys_printk>
c0600d2a:	31 c0                	xor    %eax,%eax
c0600d2c:	83 c4 1c             	add    $0x1c,%esp
c0600d2f:	c3                   	ret    

c0600d30 <_pow>:
c0600d30:	dd 44 24 04          	fldl   0x4(%esp)
c0600d34:	dd 44 24 0c          	fldl   0xc(%esp)
c0600d38:	d9 c1                	fld    %st(1)
c0600d3a:	d9 c9                	fxch   %st(1)
c0600d3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0600d40:	d8 25 44 30 60 c0    	fsubs  0xc0603044
c0600d46:	d9 ee                	fldz   
c0600d48:	d9 c9                	fxch   %st(1)
c0600d4a:	db e9                	fucomi %st(1),%st
c0600d4c:	dd d9                	fstp   %st(1)
c0600d4e:	7a 06                	jp     c0600d56 <_pow+0x26>
c0600d50:	74 1e                	je     c0600d70 <_pow+0x40>
c0600d52:	d9 c9                	fxch   %st(1)
c0600d54:	eb 0a                	jmp    c0600d60 <_pow+0x30>
c0600d56:	d9 c9                	fxch   %st(1)
c0600d58:	90                   	nop
c0600d59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0600d60:	d8 ca                	fmul   %st(2),%st
c0600d62:	d9 c9                	fxch   %st(1)
c0600d64:	eb da                	jmp    c0600d40 <_pow+0x10>
c0600d66:	8d 76 00             	lea    0x0(%esi),%esi
c0600d69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0600d70:	dd d8                	fstp   %st(0)
c0600d72:	dd d9                	fstp   %st(1)
c0600d74:	c3                   	ret    
c0600d75:	90                   	nop
c0600d76:	90                   	nop
c0600d77:	90                   	nop
c0600d78:	90                   	nop
c0600d79:	90                   	nop
c0600d7a:	90                   	nop
c0600d7b:	90                   	nop
c0600d7c:	90                   	nop
c0600d7d:	90                   	nop
c0600d7e:	90                   	nop
c0600d7f:	90                   	nop

c0600d80 <__take_memory_size>:
c0600d80:	57                   	push   %edi
c0600d81:	b8 00 00 00 80       	mov    $0x80000000,%eax
c0600d86:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0600d8b:	56                   	push   %esi
c0600d8c:	53                   	push   %ebx
c0600d8d:	bb fc ff ff ff       	mov    $0xfffffffc,%ebx
c0600d92:	bf 55 aa 55 aa       	mov    $0xaa55aa55,%edi
c0600d97:	be aa 55 aa 55       	mov    $0x55aa55aa,%esi

c0600d9c <mem_loop>:
c0600d9c:	83 f8 00             	cmp    $0x0,%eax
c0600d9f:	74 18                	je     c0600db9 <take_mem_size_exit>
c0600da1:	8b 13                	mov    (%ebx),%edx
c0600da3:	89 3b                	mov    %edi,(%ebx)
c0600da5:	31 0b                	xor    %ecx,(%ebx)
c0600da7:	3b 33                	cmp    (%ebx),%esi
c0600da9:	74 06                	je     c0600db1 <mem_usable>
c0600dab:	29 c3                	sub    %eax,%ebx
c0600dad:	d1 e8                	shr    %eax
c0600daf:	eb eb                	jmp    c0600d9c <mem_loop>

c0600db1 <mem_usable>:
c0600db1:	89 13                	mov    %edx,(%ebx)
c0600db3:	01 c3                	add    %eax,%ebx
c0600db5:	d1 e8                	shr    %eax
c0600db7:	eb e3                	jmp    c0600d9c <mem_loop>

c0600db9 <take_mem_size_exit>:
c0600db9:	89 d8                	mov    %ebx,%eax
c0600dbb:	5b                   	pop    %ebx
c0600dbc:	5e                   	pop    %esi
c0600dbd:	5f                   	pop    %edi
c0600dbe:	c3                   	ret    
c0600dbf:	90                   	nop

c0600dc0 <_TakeMemorySize>:
c0600dc0:	53                   	push   %ebx
c0600dc1:	b8 55 aa 55 aa       	mov    $0xaa55aa55,%eax
c0600dc6:	bb fc ff ff ff       	mov    $0xfffffffc,%ebx
c0600dcb:	89 03                	mov    %eax,(%ebx)
c0600dcd:	83 33 ff             	xorl   $0xffffffff,(%ebx)
c0600dd0:	8b 03                	mov    (%ebx),%eax
c0600dd2:	3d aa 55 aa 55       	cmp    $0x55aa55aa,%eax
c0600dd7:	74 47                	je     c0600e20 <_TakeMemorySize+0x60>
c0600dd9:	9c                   	pushf  
c0600dda:	58                   	pop    %eax
c0600ddb:	0d 00 00 04 00       	or     $0x40000,%eax
c0600de0:	50                   	push   %eax
c0600de1:	9d                   	popf   
c0600de2:	9c                   	pushf  
c0600de3:	58                   	pop    %eax
c0600de4:	a9 00 00 04 00       	test   $0x40000,%eax
c0600de9:	74 1e                	je     c0600e09 <_TakeMemorySize+0x49>
c0600deb:	25 ff ff fb ff       	and    $0xfffbffff,%eax
c0600df0:	50                   	push   %eax
c0600df1:	9d                   	popf   
c0600df2:	0f 20 c0             	mov    %cr0,%eax
c0600df5:	89 c2                	mov    %eax,%edx
c0600df7:	0d 00 00 00 60       	or     $0x60000000,%eax
c0600dfc:	0f 22 c0             	mov    %eax,%cr0
c0600dff:	89 d0                	mov    %edx,%eax
c0600e01:	25 ff ff ff 9f       	and    $0x9fffffff,%eax
c0600e06:	0f 22 c0             	mov    %eax,%cr0
c0600e09:	e8 72 ff ff ff       	call   c0600d80 <__take_memory_size>
c0600e0e:	5b                   	pop    %ebx
c0600e0f:	c1 e8 0c             	shr    $0xc,%eax
c0600e12:	83 c0 01             	add    $0x1,%eax
c0600e15:	c3                   	ret    
c0600e16:	8d 76 00             	lea    0x0(%esi),%esi
c0600e19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0600e20:	b8 00 00 10 00       	mov    $0x100000,%eax
c0600e25:	5b                   	pop    %ebx
c0600e26:	c3                   	ret    
c0600e27:	89 f6                	mov    %esi,%esi
c0600e29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0600e30 <_init_memory>:
c0600e30:	c7 05 d4 51 60 c0 00 	movl   $0x608000,0xc06051d4
c0600e37:	80 60 00 
c0600e3a:	31 c0                	xor    %eax,%eax
c0600e3c:	c7 05 00 80 60 00 00 	movl   $0x608000,0x608000
c0600e43:	80 60 00 
c0600e46:	c7 05 04 80 60 00 00 	movl   $0x608000,0x608004
c0600e4d:	80 60 00 
c0600e50:	c7 05 f8 8f 60 00 00 	movl   $0x0,0x608ff8
c0600e57:	00 00 00 
c0600e5a:	c7 05 fc 8f 60 00 df 	movl   $0xdfdfdfdf,0x608ffc
c0600e61:	df df df 
c0600e64:	c3                   	ret    
c0600e65:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0600e69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0600e70 <_sys_palloc>:
c0600e70:	31 c0                	xor    %eax,%eax
c0600e72:	c3                   	ret    
c0600e73:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0600e79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0600e80 <_load_gdt>:
c0600e80:	83 ec 10             	sub    $0x10,%esp
c0600e83:	8b 44 24 18          	mov    0x18(%esp),%eax
c0600e87:	8d 04 c5 ff ff ff ff 	lea    -0x1(,%eax,8),%eax
c0600e8e:	66 89 44 24 0a       	mov    %ax,0xa(%esp)
c0600e93:	8b 44 24 14          	mov    0x14(%esp),%eax
c0600e97:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0600e9b:	0f 01 54 24 0a       	lgdtl  0xa(%esp)
c0600ea0:	83 c4 10             	add    $0x10,%esp
c0600ea3:	c3                   	ret    
c0600ea4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0600eaa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0600eb0 <_step_up_gdt>:
c0600eb0:	55                   	push   %ebp
c0600eb1:	57                   	push   %edi
c0600eb2:	56                   	push   %esi
c0600eb3:	53                   	push   %ebx
c0600eb4:	83 ec 24             	sub    $0x24,%esp
c0600eb7:	8b 74 24 48          	mov    0x48(%esp),%esi
c0600ebb:	8b 44 24 38          	mov    0x38(%esp),%eax
c0600ebf:	8b 4c 24 54          	mov    0x54(%esp),%ecx
c0600ec3:	8b 6c 24 58          	mov    0x58(%esp),%ebp
c0600ec7:	8b 5c 24 3c          	mov    0x3c(%esp),%ebx
c0600ecb:	8b 7c 24 44          	mov    0x44(%esp),%edi
c0600ecf:	89 34 24             	mov    %esi,(%esp)
c0600ed2:	8b 74 24 4c          	mov    0x4c(%esp),%esi
c0600ed6:	8b 54 24 40          	mov    0x40(%esp),%edx
c0600eda:	89 6c 24 0c          	mov    %ebp,0xc(%esp)
c0600ede:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0600ee2:	8b 6c 24 5c          	mov    0x5c(%esp),%ebp
c0600ee6:	83 e7 0f             	and    $0xf,%edi
c0600ee9:	89 74 24 04          	mov    %esi,0x4(%esp)
c0600eed:	0f b6 0c c5 06 00 00 	movzbl 0x6(,%eax,8),%ecx
c0600ef4:	00 
c0600ef5:	8b 74 24 50          	mov    0x50(%esp),%esi
c0600ef9:	66 89 1c c5 02 00 00 	mov    %bx,0x2(,%eax,8)
c0600f00:	00 
c0600f01:	c1 e5 07             	shl    $0x7,%ebp
c0600f04:	83 e1 e0             	and    $0xffffffe0,%ecx
c0600f07:	66 89 14 c5 00 00 00 	mov    %dx,0x0(,%eax,8)
c0600f0e:	00 
c0600f0f:	c1 ea 10             	shr    $0x10,%edx
c0600f12:	88 4c 24 13          	mov    %cl,0x13(%esp)
c0600f16:	89 d9                	mov    %ebx,%ecx
c0600f18:	c1 eb 18             	shr    $0x18,%ebx
c0600f1b:	83 e2 0f             	and    $0xf,%edx
c0600f1e:	c1 e9 10             	shr    $0x10,%ecx
c0600f21:	88 1c c5 07 00 00 00 	mov    %bl,0x7(,%eax,8)
c0600f28:	0f b6 5c 24 0c       	movzbl 0xc(%esp),%ebx
c0600f2d:	c1 e6 07             	shl    $0x7,%esi
c0600f30:	88 0c c5 04 00 00 00 	mov    %cl,0x4(,%eax,8)
c0600f37:	0f b6 4c 24 04       	movzbl 0x4(%esp),%ecx
c0600f3c:	0a 54 24 13          	or     0x13(%esp),%dl
c0600f40:	83 e3 01             	and    $0x1,%ebx
c0600f43:	83 e1 03             	and    $0x3,%ecx
c0600f46:	c1 e3 06             	shl    $0x6,%ebx
c0600f49:	c1 e1 05             	shl    $0x5,%ecx
c0600f4c:	09 cf                	or     %ecx,%edi
c0600f4e:	0f b6 4c 24 08       	movzbl 0x8(%esp),%ecx
c0600f53:	09 f7                	or     %esi,%edi
c0600f55:	83 e1 01             	and    $0x1,%ecx
c0600f58:	c1 e1 04             	shl    $0x4,%ecx
c0600f5b:	09 ca                	or     %ecx,%edx
c0600f5d:	0f b6 0c 24          	movzbl (%esp),%ecx
c0600f61:	83 e2 3f             	and    $0x3f,%edx
c0600f64:	09 da                	or     %ebx,%edx
c0600f66:	83 e1 01             	and    $0x1,%ecx
c0600f69:	09 ea                	or     %ebp,%edx
c0600f6b:	c1 e1 04             	shl    $0x4,%ecx
c0600f6e:	83 e2 df             	and    $0xffffffdf,%edx
c0600f71:	09 f9                	or     %edi,%ecx
c0600f73:	88 0c c5 05 00 00 00 	mov    %cl,0x5(,%eax,8)
c0600f7a:	88 14 c5 06 00 00 00 	mov    %dl,0x6(,%eax,8)
c0600f81:	83 c0 01             	add    $0x1,%eax
c0600f84:	8d 14 c5 ff ff ff ff 	lea    -0x1(,%eax,8),%edx
c0600f8b:	66 89 54 24 1e       	mov    %dx,0x1e(%esp)
c0600f90:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%esp)
c0600f97:	00 
c0600f98:	0f 01 54 24 1e       	lgdtl  0x1e(%esp)
c0600f9d:	83 c4 24             	add    $0x24,%esp
c0600fa0:	8d 04 c5 f8 ff ff ff 	lea    -0x8(,%eax,8),%eax
c0600fa7:	5b                   	pop    %ebx
c0600fa8:	5e                   	pop    %esi
c0600fa9:	5f                   	pop    %edi
c0600faa:	5d                   	pop    %ebp
c0600fab:	c3                   	ret    
c0600fac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0600fb0 <_init_paging>:
c0600fb0:	ba 00 00 10 00       	mov    $0x100000,%edx
c0600fb5:	53                   	push   %ebx
c0600fb6:	b8 03 00 10 00       	mov    $0x100003,%eax
c0600fbb:	b9 00 04 00 00       	mov    $0x400,%ecx
c0600fc0:	89 d3                	mov    %edx,%ebx

c0600fc2 <pagel1>:
c0600fc2:	89 03                	mov    %eax,(%ebx)
c0600fc4:	83 c3 04             	add    $0x4,%ebx
c0600fc7:	05 00 10 00 00       	add    $0x1000,%eax
c0600fcc:	e2 f4                	loop   c0600fc2 <pagel1>
c0600fce:	b8 03 00 00 00       	mov    $0x3,%eax
c0600fd3:	89 d1                	mov    %edx,%ecx

c0600fd5 <pagel2>:
c0600fd5:	89 03                	mov    %eax,(%ebx)
c0600fd7:	83 c3 04             	add    $0x4,%ebx
c0600fda:	05 00 10 00 00       	add    $0x1000,%eax
c0600fdf:	e2 f4                	loop   c0600fd5 <pagel2>
c0600fe1:	b8 00 00 10 00       	mov    $0x100000,%eax
c0600fe6:	5b                   	pop    %ebx
c0600fe7:	c3                   	ret    
c0600fe8:	90                   	nop
c0600fe9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0600ff0 <_addressMapping>:
c0600ff0:	55                   	push   %ebp
c0600ff1:	57                   	push   %edi
c0600ff2:	56                   	push   %esi
c0600ff3:	53                   	push   %ebx
c0600ff4:	31 db                	xor    %ebx,%ebx
c0600ff6:	83 ec 04             	sub    $0x4,%esp
c0600ff9:	0f b6 44 24 28       	movzbl 0x28(%esp),%eax
c0600ffe:	8b 54 24 1c          	mov    0x1c(%esp),%edx
c0601002:	0f b6 6c 24 24       	movzbl 0x24(%esp),%ebp
c0601007:	0f b6 7c 24 2c       	movzbl 0x2c(%esp),%edi
c060100c:	83 e0 01             	and    $0x1,%eax
c060100f:	8b 4c 24 18          	mov    0x18(%esp),%ecx
c0601013:	c1 ea 0c             	shr    $0xc,%edx
c0601016:	01 c0                	add    %eax,%eax
c0601018:	83 e5 01             	and    $0x1,%ebp
c060101b:	8d 14 95 00 10 10 00 	lea    0x101000(,%edx,4),%edx
c0601022:	83 e7 01             	and    $0x1,%edi
c0601025:	c1 e9 0c             	shr    $0xc,%ecx
c0601028:	88 44 24 03          	mov    %al,0x3(%esp)
c060102c:	eb 40                	jmp    c060106e <_addressMapping+0x7e>
c060102e:	66 90                	xchg   %ax,%ax
c0601030:	0f b6 02             	movzbl (%edx),%eax
c0601033:	8d 34 bd 00 00 00 00 	lea    0x0(,%edi,4),%esi
c060103a:	01 d9                	add    %ebx,%ecx
c060103c:	83 c3 01             	add    $0x1,%ebx
c060103f:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
c0601045:	83 e0 fc             	and    $0xfffffffc,%eax
c0601048:	09 e8                	or     %ebp,%eax
c060104a:	0a 44 24 03          	or     0x3(%esp),%al
c060104e:	83 e0 fb             	and    $0xfffffffb,%eax
c0601051:	09 f0                	or     %esi,%eax
c0601053:	89 ce                	mov    %ecx,%esi
c0601055:	88 02                	mov    %al,(%edx)
c0601057:	c1 e6 0c             	shl    $0xc,%esi
c060105a:	66 81 22 07 f0       	andw   $0xf007,(%edx)
c060105f:	8b 02                	mov    (%edx),%eax
c0601061:	83 c2 04             	add    $0x4,%edx
c0601064:	25 ff 0f 00 00       	and    $0xfff,%eax
c0601069:	09 f0                	or     %esi,%eax
c060106b:	89 42 fc             	mov    %eax,-0x4(%edx)
c060106e:	3b 5c 24 20          	cmp    0x20(%esp),%ebx
c0601072:	75 bc                	jne    c0601030 <_addressMapping+0x40>
c0601074:	83 c4 04             	add    $0x4,%esp
c0601077:	5b                   	pop    %ebx
c0601078:	5e                   	pop    %esi
c0601079:	5f                   	pop    %edi
c060107a:	5d                   	pop    %ebp
c060107b:	c3                   	ret    
c060107c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0601080 <___get_free_pages>:
c0601080:	56                   	push   %esi
c0601081:	31 d2                	xor    %edx,%edx
c0601083:	53                   	push   %ebx
c0601084:	83 ec 34             	sub    $0x34,%esp
c0601087:	8b 1d d0 51 60 c0    	mov    0xc06051d0,%ebx
c060108d:	8b 44 24 44          	mov    0x44(%esp),%eax
c0601091:	89 54 24 1c          	mov    %edx,0x1c(%esp)
c0601095:	89 44 24 18          	mov    %eax,0x18(%esp)
c0601099:	df 6c 24 18          	fildll 0x18(%esp)
c060109d:	dd 5c 24 08          	fstpl  0x8(%esp)
c06010a1:	d9 05 48 30 60 c0    	flds   0xc0603048
c06010a7:	dd 1c 24             	fstpl  (%esp)
c06010aa:	e8 81 fc ff ff       	call   c0600d30 <_pow>
c06010af:	d9 7c 24 26          	fnstcw 0x26(%esp)
c06010b3:	0f b7 44 24 26       	movzwl 0x26(%esp),%eax
c06010b8:	80 cc 0c             	or     $0xc,%ah
c06010bb:	66 89 44 24 24       	mov    %ax,0x24(%esp)
c06010c0:	d9 6c 24 24          	fldcw  0x24(%esp)
c06010c4:	db 5c 24 20          	fistpl 0x20(%esp)
c06010c8:	d9 6c 24 26          	fldcw  0x26(%esp)
c06010cc:	8b 54 24 20          	mov    0x20(%esp),%edx
c06010d0:	eb 0b                	jmp    c06010dd <___get_free_pages+0x5d>
c06010d2:	8b 43 08             	mov    0x8(%ebx),%eax
c06010d5:	39 d0                	cmp    %edx,%eax
c06010d7:	77 17                	ja     c06010f0 <___get_free_pages+0x70>
c06010d9:	74 35                	je     c0601110 <___get_free_pages+0x90>
c06010db:	8b 1b                	mov    (%ebx),%ebx
c06010dd:	85 db                	test   %ebx,%ebx
c06010df:	75 f1                	jne    c06010d2 <___get_free_pages+0x52>
c06010e1:	83 c4 34             	add    $0x34,%esp
c06010e4:	31 c0                	xor    %eax,%eax
c06010e6:	5b                   	pop    %ebx
c06010e7:	5e                   	pop    %esi
c06010e8:	c3                   	ret    
c06010e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c06010f0:	8b 0d 9c 51 60 c0    	mov    0xc060519c,%ecx
c06010f6:	8b 33                	mov    (%ebx),%esi
c06010f8:	29 d0                	sub    %edx,%eax
c06010fa:	0f af ca             	imul   %edx,%ecx
c06010fd:	01 d9                	add    %ebx,%ecx
c06010ff:	89 31                	mov    %esi,(%ecx)
c0601101:	89 41 08             	mov    %eax,0x8(%ecx)
c0601104:	89 d8                	mov    %ebx,%eax
c0601106:	83 c4 34             	add    $0x34,%esp
c0601109:	5b                   	pop    %ebx
c060110a:	5e                   	pop    %esi
c060110b:	c3                   	ret    
c060110c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0601110:	a1 d0 51 60 c0       	mov    0xc06051d0,%eax
c0601115:	8b 00                	mov    (%eax),%eax
c0601117:	a3 d0 51 60 c0       	mov    %eax,0xc06051d0
c060111c:	89 d8                	mov    %ebx,%eax
c060111e:	eb e6                	jmp    c0601106 <___get_free_pages+0x86>

c0601120 <___free_pages>:
c0601120:	57                   	push   %edi
c0601121:	31 d2                	xor    %edx,%edx
c0601123:	56                   	push   %esi
c0601124:	53                   	push   %ebx
c0601125:	83 ec 30             	sub    $0x30,%esp
c0601128:	8b 44 24 44          	mov    0x44(%esp),%eax
c060112c:	8b 5c 24 40          	mov    0x40(%esp),%ebx
c0601130:	89 54 24 14          	mov    %edx,0x14(%esp)
c0601134:	89 44 24 10          	mov    %eax,0x10(%esp)
c0601138:	df 6c 24 10          	fildll 0x10(%esp)
c060113c:	dd 5c 24 08          	fstpl  0x8(%esp)
c0601140:	d9 05 48 30 60 c0    	flds   0xc0603048
c0601146:	dd 1c 24             	fstpl  (%esp)
c0601149:	e8 e2 fb ff ff       	call   c0600d30 <_pow>
c060114e:	8b 0d d0 51 60 c0    	mov    0xc06051d0,%ecx
c0601154:	d9 7c 24 26          	fnstcw 0x26(%esp)
c0601158:	0f b7 44 24 26       	movzwl 0x26(%esp),%eax
c060115d:	80 cc 0c             	or     $0xc,%ah
c0601160:	66 89 44 24 24       	mov    %ax,0x24(%esp)
c0601165:	d9 6c 24 24          	fldcw  0x24(%esp)
c0601169:	df 7c 24 18          	fistpll 0x18(%esp)
c060116d:	d9 6c 24 26          	fldcw  0x26(%esp)
c0601171:	8b 74 24 18          	mov    0x18(%esp),%esi
c0601175:	85 c9                	test   %ecx,%ecx
c0601177:	74 17                	je     c0601190 <___free_pages+0x70>
c0601179:	8b 11                	mov    (%ecx),%edx
c060117b:	89 13                	mov    %edx,(%ebx)
c060117d:	89 19                	mov    %ebx,(%ecx)
c060117f:	89 73 08             	mov    %esi,0x8(%ebx)
c0601182:	83 c4 30             	add    $0x30,%esp
c0601185:	5b                   	pop    %ebx
c0601186:	5e                   	pop    %esi
c0601187:	5f                   	pop    %edi
c0601188:	c3                   	ret    
c0601189:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0601190:	89 73 08             	mov    %esi,0x8(%ebx)
c0601193:	89 1d d0 51 60 c0    	mov    %ebx,0xc06051d0
c0601199:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c060119f:	83 c4 30             	add    $0x30,%esp
c06011a2:	5b                   	pop    %ebx
c06011a3:	5e                   	pop    %esi
c06011a4:	5f                   	pop    %edi
c06011a5:	c3                   	ret    
c06011a6:	8d 76 00             	lea    0x0(%esi),%esi
c06011a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c06011b0 <_init_mem>:
c06011b0:	31 d2                	xor    %edx,%edx
c06011b2:	b8 00 00 70 00       	mov    $0x700000,%eax
c06011b7:	8b 0d c8 51 60 c0    	mov    0xc06051c8,%ecx
c06011bd:	c7 05 d0 51 60 c0 00 	movl   $0x700000,0xc06051d0
c06011c4:	00 70 00 
c06011c7:	f7 35 9c 51 60 c0    	divl   0xc060519c
c06011cd:	c7 05 00 00 70 00 00 	movl   $0x0,0x700000
c06011d4:	00 00 00 
c06011d7:	29 c1                	sub    %eax,%ecx
c06011d9:	b8 00 00 70 00       	mov    $0x700000,%eax
c06011de:	89 0d 08 00 70 00    	mov    %ecx,0x700008
c06011e4:	c3                   	ret    
c06011e5:	90                   	nop
c06011e6:	90                   	nop
c06011e7:	90                   	nop
c06011e8:	90                   	nop
c06011e9:	90                   	nop
c06011ea:	90                   	nop
c06011eb:	90                   	nop
c06011ec:	90                   	nop
c06011ed:	90                   	nop
c06011ee:	90                   	nop
c06011ef:	90                   	nop

c06011f0 <_memcpy>:
c06011f0:	55                   	push   %ebp
c06011f1:	57                   	push   %edi
c06011f2:	56                   	push   %esi
c06011f3:	53                   	push   %ebx
c06011f4:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
c06011f8:	8b 5c 24 18          	mov    0x18(%esp),%ebx
c06011fc:	8b 44 24 14          	mov    0x14(%esp),%eax
c0601200:	89 fd                	mov    %edi,%ebp
c0601202:	83 e5 fc             	and    $0xfffffffc,%ebp
c0601205:	89 c1                	mov    %eax,%ecx
c0601207:	89 da                	mov    %ebx,%edx
c0601209:	8d 34 2b             	lea    (%ebx,%ebp,1),%esi
c060120c:	eb 0d                	jmp    c060121b <_memcpy+0x2b>
c060120e:	66 90                	xchg   %ax,%ax
c0601210:	8b 02                	mov    (%edx),%eax
c0601212:	83 c1 04             	add    $0x4,%ecx
c0601215:	83 c2 04             	add    $0x4,%edx
c0601218:	89 41 fc             	mov    %eax,-0x4(%ecx)
c060121b:	39 f2                	cmp    %esi,%edx
c060121d:	75 f1                	jne    c0601210 <_memcpy+0x20>
c060121f:	8b 44 24 14          	mov    0x14(%esp),%eax
c0601223:	83 e7 03             	and    $0x3,%edi
c0601226:	01 fb                	add    %edi,%ebx
c0601228:	8d 0c 28             	lea    (%eax,%ebp,1),%ecx
c060122b:	01 dd                	add    %ebx,%ebp
c060122d:	eb 0d                	jmp    c060123c <_memcpy+0x4c>
c060122f:	90                   	nop
c0601230:	0f b6 1a             	movzbl (%edx),%ebx
c0601233:	83 c1 01             	add    $0x1,%ecx
c0601236:	83 c2 01             	add    $0x1,%edx
c0601239:	88 59 ff             	mov    %bl,-0x1(%ecx)
c060123c:	39 ea                	cmp    %ebp,%edx
c060123e:	75 f0                	jne    c0601230 <_memcpy+0x40>
c0601240:	5b                   	pop    %ebx
c0601241:	5e                   	pop    %esi
c0601242:	5f                   	pop    %edi
c0601243:	5d                   	pop    %ebp
c0601244:	c3                   	ret    
c0601245:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0601249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0601250 <_strlen>:
c0601250:	8b 54 24 04          	mov    0x4(%esp),%edx
c0601254:	31 c0                	xor    %eax,%eax
c0601256:	eb 0b                	jmp    c0601263 <_strlen+0x13>
c0601258:	90                   	nop
c0601259:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0601260:	83 c0 01             	add    $0x1,%eax
c0601263:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
c0601267:	75 f7                	jne    c0601260 <_strlen+0x10>
c0601269:	c3                   	ret    
c060126a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0601270 <_memset>:
c0601270:	57                   	push   %edi
c0601271:	56                   	push   %esi
c0601272:	53                   	push   %ebx
c0601273:	8b 74 24 18          	mov    0x18(%esp),%esi
c0601277:	8b 44 24 10          	mov    0x10(%esp),%eax
c060127b:	69 5c 24 14 01 01 01 	imul   $0x1010101,0x14(%esp),%ebx
c0601282:	01 
c0601283:	89 f7                	mov    %esi,%edi
c0601285:	83 e7 fc             	and    $0xfffffffc,%edi
c0601288:	89 c2                	mov    %eax,%edx
c060128a:	89 c1                	mov    %eax,%ecx
c060128c:	01 c7                	add    %eax,%edi
c060128e:	eb 05                	jmp    c0601295 <_memset+0x25>
c0601290:	89 19                	mov    %ebx,(%ecx)
c0601292:	83 c1 04             	add    $0x4,%ecx
c0601295:	39 f9                	cmp    %edi,%ecx
c0601297:	75 f7                	jne    c0601290 <_memset+0x20>
c0601299:	83 e6 03             	and    $0x3,%esi
c060129c:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c060129f:	eb 05                	jmp    c06012a6 <_memset+0x36>
c06012a1:	88 1a                	mov    %bl,(%edx)
c06012a3:	83 c2 01             	add    $0x1,%edx
c06012a6:	39 ca                	cmp    %ecx,%edx
c06012a8:	75 f7                	jne    c06012a1 <_memset+0x31>
c06012aa:	5b                   	pop    %ebx
c06012ab:	5e                   	pop    %esi
c06012ac:	5f                   	pop    %edi
c06012ad:	c3                   	ret    
c06012ae:	90                   	nop
c06012af:	90                   	nop

c06012b0 <_put_ctlch.part.0>:
c06012b0:	55                   	push   %ebp
c06012b1:	57                   	push   %edi
c06012b2:	89 c7                	mov    %eax,%edi
c06012b4:	56                   	push   %esi
c06012b5:	89 d6                	mov    %edx,%esi
c06012b7:	53                   	push   %ebx
c06012b8:	89 f5                	mov    %esi,%ebp
c06012ba:	83 ec 1c             	sub    $0x1c,%esp
c06012bd:	8b 44 24 30          	mov    0x30(%esp),%eax
c06012c1:	8d 58 ff             	lea    -0x1(%eax),%ebx
c06012c4:	89 d0                	mov    %edx,%eax
c06012c6:	99                   	cltd   
c06012c7:	0f af d9             	imul   %ecx,%ebx
c06012ca:	f7 f9                	idiv   %ecx
c06012cc:	29 d5                	sub    %edx,%ebp
c06012ce:	39 f3                	cmp    %esi,%ebx
c06012d0:	7c 0e                	jl     c06012e0 <_put_ctlch.part.0+0x30>
c06012d2:	83 c4 1c             	add    $0x1c,%esp
c06012d5:	01 cd                	add    %ecx,%ebp
c06012d7:	5b                   	pop    %ebx
c06012d8:	89 e8                	mov    %ebp,%eax
c06012da:	5e                   	pop    %esi
c06012db:	5f                   	pop    %edi
c06012dc:	5d                   	pop    %ebp
c06012dd:	c3                   	ret    
c06012de:	66 90                	xchg   %ax,%ax
c06012e0:	8d 04 4f             	lea    (%edi,%ecx,2),%eax
c06012e3:	01 db                	add    %ebx,%ebx
c06012e5:	89 3c 24             	mov    %edi,(%esp)
c06012e8:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c06012ec:	89 44 24 04          	mov    %eax,0x4(%esp)
c06012f0:	e8 fb fe ff ff       	call   c06011f0 <_memcpy>
c06012f5:	83 c4 1c             	add    $0x1c,%esp
c06012f8:	89 e8                	mov    %ebp,%eax
c06012fa:	5b                   	pop    %ebx
c06012fb:	5e                   	pop    %esi
c06012fc:	5f                   	pop    %edi
c06012fd:	5d                   	pop    %ebp
c06012fe:	c3                   	ret    
c06012ff:	90                   	nop

c0601300 <_get_cursor>:
c0601300:	ba d4 03 00 00       	mov    $0x3d4,%edx
c0601305:	57                   	push   %edi
c0601306:	b8 0e 0f 00 00       	mov    $0xf0e,%eax
c060130b:	56                   	push   %esi
c060130c:	89 d7                	mov    %edx,%edi
c060130e:	be d5 03 00 00       	mov    $0x3d5,%esi
c0601313:	ee                   	out    %al,(%dx)
c0601314:	89 f2                	mov    %esi,%edx
c0601316:	ec                   	in     (%dx),%al
c0601317:	88 c5                	mov    %al,%ch
c0601319:	88 e0                	mov    %ah,%al
c060131b:	89 fa                	mov    %edi,%edx
c060131d:	ee                   	out    %al,(%dx)
c060131e:	89 f2                	mov    %esi,%edx
c0601320:	ec                   	in     (%dx),%al
c0601321:	88 c1                	mov    %al,%cl
c0601323:	0f b7 c1             	movzwl %cx,%eax
c0601326:	5e                   	pop    %esi
c0601327:	5f                   	pop    %edi
c0601328:	c3                   	ret    
c0601329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0601330 <_put_cursor>:
c0601330:	ba d4 03 00 00       	mov    $0x3d4,%edx
c0601335:	57                   	push   %edi
c0601336:	b8 0e 0f 00 00       	mov    $0xf0e,%eax
c060133b:	56                   	push   %esi
c060133c:	89 d7                	mov    %edx,%edi
c060133e:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
c0601342:	be d5 03 00 00       	mov    $0x3d5,%esi
c0601347:	ee                   	out    %al,(%dx)
c0601348:	89 f2                	mov    %esi,%edx
c060134a:	88 e8                	mov    %ch,%al
c060134c:	ee                   	out    %al,(%dx)
c060134d:	88 e0                	mov    %ah,%al
c060134f:	89 fa                	mov    %edi,%edx
c0601351:	ee                   	out    %al,(%dx)
c0601352:	89 f2                	mov    %esi,%edx
c0601354:	88 c8                	mov    %cl,%al
c0601356:	ee                   	out    %al,(%dx)
c0601357:	5e                   	pop    %esi
c0601358:	5f                   	pop    %edi
c0601359:	c3                   	ret    
c060135a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0601360 <_sys_printstr>:
c0601360:	56                   	push   %esi
c0601361:	31 d2                	xor    %edx,%edx
c0601363:	53                   	push   %ebx
c0601364:	8b 44 24 14          	mov    0x14(%esp),%eax
c0601368:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
c060136c:	8b 74 24 10          	mov    0x10(%esp),%esi
c0601370:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
c0601373:	03 4c 24 18          	add    0x18(%esp),%ecx
c0601377:	eb 16                	jmp    c060138f <_sys_printstr+0x2f>
c0601379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0601380:	0f b6 04 13          	movzbl (%ebx,%edx,1),%eax
c0601384:	c6 44 51 01 02       	movb   $0x2,0x1(%ecx,%edx,2)
c0601389:	88 04 51             	mov    %al,(%ecx,%edx,2)
c060138c:	83 c2 01             	add    $0x1,%edx
c060138f:	39 f2                	cmp    %esi,%edx
c0601391:	7c ed                	jl     c0601380 <_sys_printstr+0x20>
c0601393:	ba 00 00 00 00       	mov    $0x0,%edx
c0601398:	85 f6                	test   %esi,%esi
c060139a:	5b                   	pop    %ebx
c060139b:	89 d0                	mov    %edx,%eax
c060139d:	0f 49 c6             	cmovns %esi,%eax
c06013a0:	5e                   	pop    %esi
c06013a1:	c3                   	ret    
c06013a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c06013a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c06013b0 <_put_ctlch>:
c06013b0:	53                   	push   %ebx
c06013b1:	83 7c 24 08 0a       	cmpl   $0xa,0x8(%esp)
c06013b6:	8b 44 24 0c          	mov    0xc(%esp),%eax
c06013ba:	8b 54 24 10          	mov    0x10(%esp),%edx
c06013be:	8b 4c 24 14          	mov    0x14(%esp),%ecx
c06013c2:	8b 5c 24 18          	mov    0x18(%esp),%ebx
c06013c6:	74 08                	je     c06013d0 <_put_ctlch+0x20>
c06013c8:	89 d0                	mov    %edx,%eax
c06013ca:	5b                   	pop    %ebx
c06013cb:	c3                   	ret    
c06013cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c06013d0:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c06013d4:	5b                   	pop    %ebx
c06013d5:	e9 d6 fe ff ff       	jmp    c06012b0 <_put_ctlch.part.0>
c06013da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c06013e0 <_cntc>:
c06013e0:	8b 54 24 04          	mov    0x4(%esp),%edx
c06013e4:	31 c0                	xor    %eax,%eax
c06013e6:	83 fa 0f             	cmp    $0xf,%edx
c06013e9:	77 0c                	ja     c06013f7 <_cntc+0x17>
c06013eb:	8d 4a 30             	lea    0x30(%edx),%ecx
c06013ee:	8d 42 61             	lea    0x61(%edx),%eax
c06013f1:	83 fa 09             	cmp    $0x9,%edx
c06013f4:	0f 46 c1             	cmovbe %ecx,%eax
c06013f7:	c3                   	ret    
c06013f8:	90                   	nop
c06013f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0601400 <_itoas>:
c0601400:	55                   	push   %ebp
c0601401:	57                   	push   %edi
c0601402:	56                   	push   %esi
c0601403:	53                   	push   %ebx
c0601404:	31 db                	xor    %ebx,%ebx
c0601406:	83 ec 20             	sub    $0x20,%esp
c0601409:	8b 44 24 34          	mov    0x34(%esp),%eax
c060140d:	8b 74 24 3c          	mov    0x3c(%esp),%esi
c0601411:	eb 02                	jmp    c0601415 <_itoas+0x15>
c0601413:	89 fb                	mov    %edi,%ebx
c0601415:	99                   	cltd   
c0601416:	8d 7b 01             	lea    0x1(%ebx),%edi
c0601419:	31 c9                	xor    %ecx,%ecx
c060141b:	f7 fe                	idiv   %esi
c060141d:	83 fa 0f             	cmp    $0xf,%edx
c0601420:	77 0c                	ja     c060142e <_itoas+0x2e>
c0601422:	8d 4a 30             	lea    0x30(%edx),%ecx
c0601425:	8d 6a 61             	lea    0x61(%edx),%ebp
c0601428:	83 fa 09             	cmp    $0x9,%edx
c060142b:	0f 47 cd             	cmova  %ebp,%ecx
c060142e:	88 4c 3c 0b          	mov    %cl,0xb(%esp,%edi,1)
c0601432:	85 c0                	test   %eax,%eax
c0601434:	7f dd                	jg     c0601413 <_itoas+0x13>
c0601436:	8b 44 24 38          	mov    0x38(%esp),%eax
c060143a:	8d 54 1c 0b          	lea    0xb(%esp,%ebx,1),%edx
c060143e:	8d 5c 03 01          	lea    0x1(%ebx,%eax,1),%ebx
c0601442:	eb 06                	jmp    c060144a <_itoas+0x4a>
c0601444:	0f b6 0a             	movzbl (%edx),%ecx
c0601447:	83 ea 01             	sub    $0x1,%edx
c060144a:	88 08                	mov    %cl,(%eax)
c060144c:	83 c0 01             	add    $0x1,%eax
c060144f:	39 d8                	cmp    %ebx,%eax
c0601451:	75 f1                	jne    c0601444 <_itoas+0x44>
c0601453:	83 c4 20             	add    $0x20,%esp
c0601456:	89 f8                	mov    %edi,%eax
c0601458:	5b                   	pop    %ebx
c0601459:	5e                   	pop    %esi
c060145a:	5f                   	pop    %edi
c060145b:	5d                   	pop    %ebp
c060145c:	c3                   	ret    
c060145d:	8d 76 00             	lea    0x0(%esi),%esi

c0601460 <_sys_printk>:
c0601460:	55                   	push   %ebp
c0601461:	b8 0e 0f 00 00       	mov    $0xf0e,%eax
c0601466:	57                   	push   %edi
c0601467:	bf d4 03 00 00       	mov    $0x3d4,%edi
c060146c:	56                   	push   %esi
c060146d:	89 fa                	mov    %edi,%edx
c060146f:	be d5 03 00 00       	mov    $0x3d5,%esi
c0601474:	53                   	push   %ebx
c0601475:	83 ec 4c             	sub    $0x4c,%esp
c0601478:	ee                   	out    %al,(%dx)
c0601479:	89 f2                	mov    %esi,%edx
c060147b:	ec                   	in     (%dx),%al
c060147c:	88 c5                	mov    %al,%ch
c060147e:	88 e0                	mov    %ah,%al
c0601480:	89 fa                	mov    %edi,%edx
c0601482:	ee                   	out    %al,(%dx)
c0601483:	89 f2                	mov    %esi,%edx
c0601485:	ec                   	in     (%dx),%al
c0601486:	88 c1                	mov    %al,%cl
c0601488:	a1 80 51 60 c0       	mov    0xc0605180,%eax
c060148d:	8b 7c 24 60          	mov    0x60(%esp),%edi
c0601491:	0f b7 e9             	movzwl %cx,%ebp
c0601494:	31 db                	xor    %ebx,%ebx
c0601496:	8d 74 24 2c          	lea    0x2c(%esp),%esi
c060149a:	89 44 24 10          	mov    %eax,0x10(%esp)
c060149e:	8d 44 24 64          	lea    0x64(%esp),%eax
c06014a2:	89 44 24 14          	mov    %eax,0x14(%esp)
c06014a6:	8d 76 00             	lea    0x0(%esi),%esi
c06014a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c06014b0:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
c06014b4:	3c 07                	cmp    $0x7,%al
c06014b6:	7e 29                	jle    c06014e1 <_sys_printk+0x81>
c06014b8:	8d 53 01             	lea    0x1(%ebx),%edx
c06014bb:	3c 25                	cmp    $0x25,%al
c06014bd:	74 51                	je     c0601510 <_sys_printk+0xb0>
c06014bf:	3c 1f                	cmp    $0x1f,%al
c06014c1:	0f 8e a9 00 00 00    	jle    c0601570 <_sys_printk+0x110>
c06014c7:	8b 4c 24 10          	mov    0x10(%esp),%ecx
c06014cb:	89 d3                	mov    %edx,%ebx
c06014cd:	8d 0c 69             	lea    (%ecx,%ebp,2),%ecx
c06014d0:	83 c5 01             	add    $0x1,%ebp
c06014d3:	88 01                	mov    %al,(%ecx)
c06014d5:	c6 41 01 02          	movb   $0x2,0x1(%ecx)
c06014d9:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
c06014dd:	3c 07                	cmp    $0x7,%al
c06014df:	7f d7                	jg     c06014b8 <_sys_printk+0x58>
c06014e1:	ba d4 03 00 00       	mov    $0x3d4,%edx
c06014e6:	b8 0e 0f 00 00       	mov    $0xf0e,%eax
c06014eb:	be d5 03 00 00       	mov    $0x3d5,%esi
c06014f0:	89 e9                	mov    %ebp,%ecx
c06014f2:	89 d7                	mov    %edx,%edi
c06014f4:	ee                   	out    %al,(%dx)
c06014f5:	89 f2                	mov    %esi,%edx
c06014f7:	88 e8                	mov    %ch,%al
c06014f9:	ee                   	out    %al,(%dx)
c06014fa:	88 e0                	mov    %ah,%al
c06014fc:	89 fa                	mov    %edi,%edx
c06014fe:	ee                   	out    %al,(%dx)
c06014ff:	89 f2                	mov    %esi,%edx
c0601501:	88 c8                	mov    %cl,%al
c0601503:	ee                   	out    %al,(%dx)
c0601504:	83 c4 4c             	add    $0x4c,%esp
c0601507:	89 d8                	mov    %ebx,%eax
c0601509:	5b                   	pop    %ebx
c060150a:	5e                   	pop    %esi
c060150b:	5f                   	pop    %edi
c060150c:	5d                   	pop    %ebp
c060150d:	c3                   	ret    
c060150e:	66 90                	xchg   %ax,%ax
c0601510:	0f b6 44 1f 01       	movzbl 0x1(%edi,%ebx,1),%eax
c0601515:	3c 64                	cmp    $0x64,%al
c0601517:	0f 84 83 00 00 00    	je     c06015a0 <_sys_printk+0x140>
c060151d:	7e 21                	jle    c0601540 <_sys_printk+0xe0>
c060151f:	3c 73                	cmp    $0x73,%al
c0601521:	0f 84 9e 01 00 00    	je     c06016c5 <_sys_printk+0x265>
c0601527:	3c 78                	cmp    $0x78,%al
c0601529:	0f 84 d1 00 00 00    	je     c0601600 <_sys_printk+0x1a0>
c060152f:	3c 6c                	cmp    $0x6c,%al
c0601531:	0f 84 19 01 00 00    	je     c0601650 <_sys_printk+0x1f0>
c0601537:	83 c3 02             	add    $0x2,%ebx
c060153a:	e9 71 ff ff ff       	jmp    c06014b0 <_sys_printk+0x50>
c060153f:	90                   	nop
c0601540:	3c 25                	cmp    $0x25,%al
c0601542:	0f 84 68 01 00 00    	je     c06016b0 <_sys_printk+0x250>
c0601548:	3c 63                	cmp    $0x63,%al
c060154a:	75 eb                	jne    c0601537 <_sys_printk+0xd7>
c060154c:	8b 4c 24 14          	mov    0x14(%esp),%ecx
c0601550:	8b 44 24 10          	mov    0x10(%esp),%eax
c0601554:	0f b6 11             	movzbl (%ecx),%edx
c0601557:	8d 04 68             	lea    (%eax,%ebp,2),%eax
c060155a:	83 c5 01             	add    $0x1,%ebp
c060155d:	c6 40 01 02          	movb   $0x2,0x1(%eax)
c0601561:	88 10                	mov    %dl,(%eax)
c0601563:	8d 41 04             	lea    0x4(%ecx),%eax
c0601566:	89 44 24 14          	mov    %eax,0x14(%esp)
c060156a:	eb cb                	jmp    c0601537 <_sys_printk+0xd7>
c060156c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0601570:	89 d3                	mov    %edx,%ebx
c0601572:	3c 0a                	cmp    $0xa,%al
c0601574:	0f 85 36 ff ff ff    	jne    c06014b0 <_sys_printk+0x50>
c060157a:	a1 84 51 60 c0       	mov    0xc0605184,%eax
c060157f:	8b 0d a8 51 60 c0    	mov    0xc06051a8,%ecx
c0601585:	89 ea                	mov    %ebp,%edx
c0601587:	89 04 24             	mov    %eax,(%esp)
c060158a:	8b 44 24 10          	mov    0x10(%esp),%eax
c060158e:	e8 1d fd ff ff       	call   c06012b0 <_put_ctlch.part.0>
c0601593:	89 c5                	mov    %eax,%ebp
c0601595:	e9 16 ff ff ff       	jmp    c06014b0 <_sys_printk+0x50>
c060159a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c06015a0:	8b 44 24 14          	mov    0x14(%esp),%eax
c06015a4:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c06015ab:	00 
c06015ac:	89 74 24 04          	mov    %esi,0x4(%esp)
c06015b0:	8d 48 04             	lea    0x4(%eax),%ecx
c06015b3:	8b 00                	mov    (%eax),%eax
c06015b5:	89 4c 24 14          	mov    %ecx,0x14(%esp)
c06015b9:	89 04 24             	mov    %eax,(%esp)
c06015bc:	e8 3f fe ff ff       	call   c0601400 <_itoas>
c06015c1:	8b 54 24 10          	mov    0x10(%esp),%edx
c06015c5:	89 5c 24 18          	mov    %ebx,0x18(%esp)
c06015c9:	8d 0c 6a             	lea    (%edx,%ebp,2),%ecx
c06015cc:	31 d2                	xor    %edx,%edx
c06015ce:	eb 11                	jmp    c06015e1 <_sys_printk+0x181>
c06015d0:	0f b6 1c 16          	movzbl (%esi,%edx,1),%ebx
c06015d4:	83 c1 02             	add    $0x2,%ecx
c06015d7:	c6 41 ff 02          	movb   $0x2,-0x1(%ecx)
c06015db:	83 c2 01             	add    $0x1,%edx
c06015de:	88 59 fe             	mov    %bl,-0x2(%ecx)
c06015e1:	39 d0                	cmp    %edx,%eax
c06015e3:	7f eb                	jg     c06015d0 <_sys_printk+0x170>
c06015e5:	85 c0                	test   %eax,%eax
c06015e7:	b9 00 00 00 00       	mov    $0x0,%ecx
c06015ec:	8b 5c 24 18          	mov    0x18(%esp),%ebx
c06015f0:	0f 48 c1             	cmovs  %ecx,%eax
c06015f3:	01 c5                	add    %eax,%ebp
c06015f5:	e9 3d ff ff ff       	jmp    c0601537 <_sys_printk+0xd7>
c06015fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0601600:	8b 44 24 14          	mov    0x14(%esp),%eax
c0601604:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
c060160b:	00 
c060160c:	89 74 24 04          	mov    %esi,0x4(%esp)
c0601610:	8d 50 04             	lea    0x4(%eax),%edx
c0601613:	8b 00                	mov    (%eax),%eax
c0601615:	89 54 24 14          	mov    %edx,0x14(%esp)
c0601619:	89 04 24             	mov    %eax,(%esp)
c060161c:	e8 df fd ff ff       	call   c0601400 <_itoas>
c0601621:	8b 4c 24 10          	mov    0x10(%esp),%ecx
c0601625:	31 d2                	xor    %edx,%edx
c0601627:	89 5c 24 18          	mov    %ebx,0x18(%esp)
c060162b:	8d 0c 69             	lea    (%ecx,%ebp,2),%ecx
c060162e:	eb 11                	jmp    c0601641 <_sys_printk+0x1e1>
c0601630:	0f b6 1c 16          	movzbl (%esi,%edx,1),%ebx
c0601634:	83 c1 02             	add    $0x2,%ecx
c0601637:	c6 41 ff 02          	movb   $0x2,-0x1(%ecx)
c060163b:	83 c2 01             	add    $0x1,%edx
c060163e:	88 59 fe             	mov    %bl,-0x2(%ecx)
c0601641:	39 d0                	cmp    %edx,%eax
c0601643:	7f eb                	jg     c0601630 <_sys_printk+0x1d0>
c0601645:	8b 5c 24 18          	mov    0x18(%esp),%ebx
c0601649:	01 c5                	add    %eax,%ebp
c060164b:	e9 e7 fe ff ff       	jmp    c0601537 <_sys_printk+0xd7>
c0601650:	8b 44 24 14          	mov    0x14(%esp),%eax
c0601654:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c060165b:	00 
c060165c:	89 74 24 04          	mov    %esi,0x4(%esp)
c0601660:	8d 50 04             	lea    0x4(%eax),%edx
c0601663:	8b 00                	mov    (%eax),%eax
c0601665:	89 54 24 14          	mov    %edx,0x14(%esp)
c0601669:	89 04 24             	mov    %eax,(%esp)
c060166c:	e8 8f fd ff ff       	call   c0601400 <_itoas>
c0601671:	8b 4c 24 10          	mov    0x10(%esp),%ecx
c0601675:	31 d2                	xor    %edx,%edx
c0601677:	89 5c 24 18          	mov    %ebx,0x18(%esp)
c060167b:	8d 0c 69             	lea    (%ecx,%ebp,2),%ecx
c060167e:	eb 11                	jmp    c0601691 <_sys_printk+0x231>
c0601680:	0f b6 1c 16          	movzbl (%esi,%edx,1),%ebx
c0601684:	83 c1 02             	add    $0x2,%ecx
c0601687:	c6 41 ff 02          	movb   $0x2,-0x1(%ecx)
c060168b:	83 c2 01             	add    $0x1,%edx
c060168e:	88 59 fe             	mov    %bl,-0x2(%ecx)
c0601691:	39 d0                	cmp    %edx,%eax
c0601693:	7f eb                	jg     c0601680 <_sys_printk+0x220>
c0601695:	85 c0                	test   %eax,%eax
c0601697:	ba 00 00 00 00       	mov    $0x0,%edx
c060169c:	8b 5c 24 18          	mov    0x18(%esp),%ebx
c06016a0:	0f 48 c2             	cmovs  %edx,%eax
c06016a3:	01 c5                	add    %eax,%ebp
c06016a5:	e9 8d fe ff ff       	jmp    c0601537 <_sys_printk+0xd7>
c06016aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c06016b0:	8b 44 24 10          	mov    0x10(%esp),%eax
c06016b4:	ba 25 02 00 00       	mov    $0x225,%edx
c06016b9:	66 89 14 68          	mov    %dx,(%eax,%ebp,2)
c06016bd:	83 c5 01             	add    $0x1,%ebp
c06016c0:	e9 72 fe ff ff       	jmp    c0601537 <_sys_printk+0xd7>
c06016c5:	8b 44 24 14          	mov    0x14(%esp),%eax
c06016c9:	8d 50 04             	lea    0x4(%eax),%edx
c06016cc:	8b 00                	mov    (%eax),%eax
c06016ce:	89 54 24 14          	mov    %edx,0x14(%esp)
c06016d2:	89 04 24             	mov    %eax,(%esp)
c06016d5:	89 44 24 18          	mov    %eax,0x18(%esp)
c06016d9:	e8 72 fb ff ff       	call   c0601250 <_strlen>
c06016de:	8b 4c 24 10          	mov    0x10(%esp),%ecx
c06016e2:	89 6c 24 1c          	mov    %ebp,0x1c(%esp)
c06016e6:	31 d2                	xor    %edx,%edx
c06016e8:	8d 0c 69             	lea    (%ecx,%ebp,2),%ecx
c06016eb:	8b 6c 24 18          	mov    0x18(%esp),%ebp
c06016ef:	89 5c 24 18          	mov    %ebx,0x18(%esp)
c06016f3:	eb 12                	jmp    c0601707 <_sys_printk+0x2a7>
c06016f5:	0f b6 5c 15 00       	movzbl 0x0(%ebp,%edx,1),%ebx
c06016fa:	83 c1 02             	add    $0x2,%ecx
c06016fd:	c6 41 ff 02          	movb   $0x2,-0x1(%ecx)
c0601701:	83 c2 01             	add    $0x1,%edx
c0601704:	88 59 fe             	mov    %bl,-0x2(%ecx)
c0601707:	39 d0                	cmp    %edx,%eax
c0601709:	7f ea                	jg     c06016f5 <_sys_printk+0x295>
c060170b:	8b 6c 24 1c          	mov    0x1c(%esp),%ebp
c060170f:	8b 5c 24 18          	mov    0x18(%esp),%ebx
c0601713:	01 c5                	add    %eax,%ebp
c0601715:	e9 1d fe ff ff       	jmp    c0601537 <_sys_printk+0xd7>
c060171a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0601720 <_sys_readDisk>:
c0601720:	55                   	push   %ebp
c0601721:	ba f7 01 00 00       	mov    $0x1f7,%edx
c0601726:	57                   	push   %edi
c0601727:	56                   	push   %esi
c0601728:	53                   	push   %ebx
c0601729:	0f b6 74 24 20       	movzbl 0x20(%esp),%esi
c060172e:	8b 6c 24 14          	mov    0x14(%esp),%ebp
c0601732:	0f b6 4c 24 1c       	movzbl 0x1c(%esp),%ecx
c0601737:	c1 e6 04             	shl    $0x4,%esi
c060173a:	8b 5c 24 18          	mov    0x18(%esp),%ebx
c060173e:	83 e6 10             	and    $0x10,%esi
c0601741:	89 ef                	mov    %ebp,%edi
c0601743:	81 ce e0 00 00 00    	or     $0xe0,%esi
c0601749:	ec                   	in     (%dx),%al
c060174a:	0c 02                	or     $0x2,%al
c060174c:	ee                   	out    %al,(%dx)
c060174d:	66 ba f2 01          	mov    $0x1f2,%dx
c0601751:	88 c8                	mov    %cl,%al
c0601753:	ee                   	out    %al,(%dx)
c0601754:	66 42                	inc    %dx
c0601756:	88 d8                	mov    %bl,%al
c0601758:	ee                   	out    %al,(%dx)
c0601759:	66 42                	inc    %dx
c060175b:	88 f8                	mov    %bh,%al
c060175d:	ee                   	out    %al,(%dx)
c060175e:	66 42                	inc    %dx
c0601760:	c1 eb 10             	shr    $0x10,%ebx
c0601763:	88 d8                	mov    %bl,%al
c0601765:	ee                   	out    %al,(%dx)
c0601766:	66 42                	inc    %dx
c0601768:	88 f8                	mov    %bh,%al
c060176a:	24 0f                	and    $0xf,%al
c060176c:	09 f0                	or     %esi,%eax
c060176e:	ee                   	out    %al,(%dx)
c060176f:	66 42                	inc    %dx
c0601771:	b0 20                	mov    $0x20,%al
c0601773:	ee                   	out    %al,(%dx)

c0601774 <rloop1f7>:
c0601774:	ec                   	in     (%dx),%al
c0601775:	88 c4                	mov    %al,%ah
c0601777:	24 01                	and    $0x1,%al
c0601779:	3c 01                	cmp    $0x1,%al
c060177b:	74 1a                	je     c0601797 <rerror>
c060177d:	80 e4 88             	and    $0x88,%ah
c0601780:	80 fc 08             	cmp    $0x8,%ah
c0601783:	75 ef                	jne    c0601774 <rloop1f7>
c0601785:	66 ba f0 01          	mov    $0x1f0,%dx
c0601789:	c1 e1 08             	shl    $0x8,%ecx

c060178c <rloopread>:
c060178c:	66 ed                	in     (%dx),%ax
c060178e:	66 89 07             	mov    %ax,(%edi)
c0601791:	47                   	inc    %edi
c0601792:	47                   	inc    %edi
c0601793:	e2 f7                	loop   c060178c <rloopread>
c0601795:	eb 0a                	jmp    c06017a1 <rexitread>

c0601797 <rerror>:
c0601797:	b9 df df df df       	mov    $0xdfdfdfdf,%ecx
c060179c:	66 ba f1 01          	mov    $0x1f1,%dx
c06017a0:	ec                   	in     (%dx),%al

c06017a1 <rexitread>:
c06017a1:	29 ef                	sub    %ebp,%edi
c06017a3:	81 f9 df df df df    	cmp    $0xdfdfdfdf,%ecx
c06017a9:	5b                   	pop    %ebx
c06017aa:	5e                   	pop    %esi
c06017ab:	0f 45 c7             	cmovne %edi,%eax
c06017ae:	5f                   	pop    %edi
c06017af:	5d                   	pop    %ebp
c06017b0:	c3                   	ret    
c06017b1:	eb 0d                	jmp    c06017c0 <_sys_writeDisk>
c06017b3:	90                   	nop
c06017b4:	90                   	nop
c06017b5:	90                   	nop
c06017b6:	90                   	nop
c06017b7:	90                   	nop
c06017b8:	90                   	nop
c06017b9:	90                   	nop
c06017ba:	90                   	nop
c06017bb:	90                   	nop
c06017bc:	90                   	nop
c06017bd:	90                   	nop
c06017be:	90                   	nop
c06017bf:	90                   	nop

c06017c0 <_sys_writeDisk>:
c06017c0:	55                   	push   %ebp
c06017c1:	ba f7 01 00 00       	mov    $0x1f7,%edx
c06017c6:	57                   	push   %edi
c06017c7:	56                   	push   %esi
c06017c8:	53                   	push   %ebx
c06017c9:	83 ec 04             	sub    $0x4,%esp
c06017cc:	8b 6c 24 1c          	mov    0x1c(%esp),%ebp
c06017d0:	8b 44 24 1c          	mov    0x1c(%esp),%eax
c06017d4:	0f b6 74 24 24       	movzbl 0x24(%esp),%esi
c06017d9:	8b 5c 24 20          	mov    0x20(%esp),%ebx
c06017dd:	c1 ed 09             	shr    $0x9,%ebp
c06017e0:	25 ff 01 00 00       	and    $0x1ff,%eax
c06017e5:	89 04 24             	mov    %eax,(%esp)
c06017e8:	0f 95 c0             	setne  %al
c06017eb:	c1 e6 04             	shl    $0x4,%esi
c06017ee:	0f b6 c0             	movzbl %al,%eax
c06017f1:	83 e6 10             	and    $0x10,%esi
c06017f4:	01 c5                	add    %eax,%ebp
c06017f6:	89 e9                	mov    %ebp,%ecx
c06017f8:	81 ce e0 00 00 00    	or     $0xe0,%esi
c06017fe:	ec                   	in     (%dx),%al
c06017ff:	0c 02                	or     $0x2,%al
c0601801:	ee                   	out    %al,(%dx)
c0601802:	66 ba f2 01          	mov    $0x1f2,%dx
c0601806:	88 c8                	mov    %cl,%al
c0601808:	ee                   	out    %al,(%dx)
c0601809:	66 42                	inc    %dx
c060180b:	88 d8                	mov    %bl,%al
c060180d:	ee                   	out    %al,(%dx)
c060180e:	66 42                	inc    %dx
c0601810:	88 f8                	mov    %bh,%al
c0601812:	ee                   	out    %al,(%dx)
c0601813:	66 42                	inc    %dx
c0601815:	c1 eb 10             	shr    $0x10,%ebx
c0601818:	88 d8                	mov    %bl,%al
c060181a:	ee                   	out    %al,(%dx)
c060181b:	66 42                	inc    %dx
c060181d:	88 f8                	mov    %bh,%al
c060181f:	24 0f                	and    $0xf,%al
c0601821:	09 f0                	or     %esi,%eax
c0601823:	ee                   	out    %al,(%dx)
c0601824:	66 42                	inc    %dx
c0601826:	b0 30                	mov    $0x30,%al
c0601828:	ee                   	out    %al,(%dx)

c0601829 <wloop1f7>:
c0601829:	ec                   	in     (%dx),%al
c060182a:	88 c4                	mov    %al,%ah
c060182c:	24 01                	and    $0x1,%al
c060182e:	3c 01                	cmp    $0x1,%al
c0601830:	74 0a                	je     c060183c <werror>
c0601832:	80 e4 88             	and    $0x88,%ah
c0601835:	80 fc 08             	cmp    $0x8,%ah
c0601838:	75 ef                	jne    c0601829 <wloop1f7>
c060183a:	eb 0a                	jmp    c0601846 <wexitwrite>

c060183c <werror>:
c060183c:	b9 df df df df       	mov    $0xdfdfdfdf,%ecx
c0601841:	66 ba f1 01          	mov    $0x1f1,%dx
c0601845:	ec                   	in     (%dx),%al

c0601846 <wexitwrite>:
c0601846:	81 f9 df df df df    	cmp    $0xdfdfdfdf,%ecx
c060184c:	74 3d                	je     c060188b <wloopw1+0x9>
c060184e:	ba f0 01 00 00       	mov    $0x1f0,%edx
c0601853:	8b 5c 24 1c          	mov    0x1c(%esp),%ebx
c0601857:	8b 7c 24 18          	mov    0x18(%esp),%edi
c060185b:	89 d9                	mov    %ebx,%ecx
c060185d:	d1 e9                	shr    %ecx

c060185f <wloopwrite>:
c060185f:	66 8b 07             	mov    (%edi),%ax
c0601862:	66 ef                	out    %ax,(%dx)
c0601864:	47                   	inc    %edi
c0601865:	47                   	inc    %edi
c0601866:	e2 f7                	loop   c060185f <wloopwrite>
c0601868:	f7 c3 01 00 00 00    	test   $0x1,%ebx
c060186e:	74 06                	je     c0601876 <wnoalign>
c0601870:	31 c0                	xor    %eax,%eax
c0601872:	8a 07                	mov    (%edi),%al
c0601874:	66 ef                	out    %ax,(%dx)

c0601876 <wnoalign>:
c0601876:	b9 00 02 00 00       	mov    $0x200,%ecx
c060187b:	2b 0c 24             	sub    (%esp),%ecx
c060187e:	d1 e9                	shr    %ecx
c0601880:	31 c0                	xor    %eax,%eax

c0601882 <wloopw1>:
c0601882:	66 ef                	out    %ax,(%dx)
c0601884:	e2 fc                	loop   c0601882 <wloopw1>
c0601886:	89 e8                	mov    %ebp,%eax
c0601888:	c1 e0 09             	shl    $0x9,%eax
c060188b:	83 c4 04             	add    $0x4,%esp
c060188e:	5b                   	pop    %ebx
c060188f:	5e                   	pop    %esi
c0601890:	5f                   	pop    %edi
c0601891:	5d                   	pop    %ebp
c0601892:	c3                   	ret    
c0601893:	90                   	nop
c0601894:	90                   	nop
c0601895:	90                   	nop
c0601896:	90                   	nop
c0601897:	90                   	nop
c0601898:	90                   	nop
c0601899:	90                   	nop
c060189a:	90                   	nop
c060189b:	90                   	nop
c060189c:	90                   	nop
c060189d:	90                   	nop
c060189e:	90                   	nop
c060189f:	90                   	nop

c06018a0 <_init_tss>:
c06018a0:	83 ec 3c             	sub    $0x3c,%esp
c06018a3:	c7 44 24 24 00 00 00 	movl   $0x0,0x24(%esp)
c06018aa:	00 
c06018ab:	c7 44 24 20 01 00 00 	movl   $0x1,0x20(%esp)
c06018b2:	00 
c06018b3:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
c06018ba:	00 
c06018bb:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%esp)
c06018c2:	00 
c06018c3:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
c06018ca:	00 
c06018cb:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
c06018d2:	00 
c06018d3:	c7 44 24 0c 09 00 00 	movl   $0x9,0xc(%esp)
c06018da:	00 
c06018db:	c7 44 24 08 68 00 00 	movl   $0x68,0x8(%esp)
c06018e2:	00 
c06018e3:	c7 44 24 04 20 50 60 	movl   $0xc0605020,0x4(%esp)
c06018ea:	c0 
c06018eb:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
c06018f2:	e8 b9 f5 ff ff       	call   c0600eb0 <_step_up_gdt>
c06018f7:	0f 00 d8             	ltr    %ax
c06018fa:	83 c4 3c             	add    $0x3c,%esp
c06018fd:	c3                   	ret    
c06018fe:	66 90                	xchg   %ax,%ax

c0601900 <_get_pid>:
c0601900:	8b 15 6c 51 60 c0    	mov    0xc060516c,%edx
c0601906:	a1 68 51 60 c0       	mov    0xc0605168,%eax
c060190b:	8d 4a 01             	lea    0x1(%edx),%ecx
c060190e:	83 c0 01             	add    $0x1,%eax
c0601911:	a3 68 51 60 c0       	mov    %eax,0xc0605168
c0601916:	89 0d 6c 51 60 c0    	mov    %ecx,0xc060516c
c060191c:	89 04 95 a0 50 60 c0 	mov    %eax,-0x3f9faf60(,%edx,4)
c0601923:	c3                   	ret    
c0601924:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c060192a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0601930 <_del_pid>:
c0601930:	c3                   	ret    
c0601931:	90                   	nop
c0601932:	90                   	nop
c0601933:	90                   	nop
c0601934:	90                   	nop
c0601935:	90                   	nop
c0601936:	90                   	nop
c0601937:	90                   	nop
c0601938:	90                   	nop
c0601939:	90                   	nop
c060193a:	90                   	nop
c060193b:	90                   	nop
c060193c:	90                   	nop
c060193d:	90                   	nop
c060193e:	90                   	nop
c060193f:	90                   	nop

c0601940 <__read_cmos_time>:
c0601940:	57                   	push   %edi
c0601941:	b9 03 00 00 00       	mov    $0x3,%ecx
c0601946:	ba 70 00 00 00       	mov    $0x70,%edx
c060194b:	8b 7c 24 08          	mov    0x8(%esp),%edi
c060194f:	31 c0                	xor    %eax,%eax

c0601951 <looptime1>:
c0601951:	ee                   	out    %al,(%dx)
c0601952:	66 42                	inc    %dx
c0601954:	ec                   	in     (%dx),%al
c0601955:	66 4a                	dec    %dx
c0601957:	88 07                	mov    %al,(%edi)
c0601959:	47                   	inc    %edi
c060195a:	fe c4                	inc    %ah
c060195c:	fe c4                	inc    %ah
c060195e:	88 e0                	mov    %ah,%al
c0601960:	e2 ef                	loop   c0601951 <looptime1>
c0601962:	b9 03 00 00 00       	mov    $0x3,%ecx
c0601967:	b8 07 00 00 00       	mov    $0x7,%eax
c060196c:	88 c4                	mov    %al,%ah

c060196e <looptime2>:
c060196e:	ee                   	out    %al,(%dx)
c060196f:	66 42                	inc    %dx
c0601971:	ec                   	in     (%dx),%al
c0601972:	66 4a                	dec    %dx
c0601974:	88 07                	mov    %al,(%edi)
c0601976:	47                   	inc    %edi
c0601977:	fe c4                	inc    %ah
c0601979:	88 e0                	mov    %ah,%al
c060197b:	e2 f1                	loop   c060196e <looptime2>
c060197d:	5f                   	pop    %edi
c060197e:	c3                   	ret    
c060197f:	90                   	nop

c0601980 <_time>:
c0601980:	55                   	push   %ebp
c0601981:	57                   	push   %edi
c0601982:	56                   	push   %esi
c0601983:	53                   	push   %ebx
c0601984:	83 ec 20             	sub    $0x20,%esp
c0601987:	8d 44 24 1a          	lea    0x1a(%esp),%eax
c060198b:	89 04 24             	mov    %eax,(%esp)
c060198e:	e8 ad ff ff ff       	call   c0601940 <__read_cmos_time>
c0601993:	0f b6 44 24 1a       	movzbl 0x1a(%esp),%eax
c0601998:	89 c2                	mov    %eax,%edx
c060199a:	83 e0 0f             	and    $0xf,%eax
c060199d:	c0 ea 04             	shr    $0x4,%dl
c06019a0:	0f b6 d2             	movzbl %dl,%edx
c06019a3:	8d 14 92             	lea    (%edx,%edx,4),%edx
c06019a6:	8d 04 50             	lea    (%eax,%edx,2),%eax
c06019a9:	89 44 24 04          	mov    %eax,0x4(%esp)
c06019ad:	0f b6 44 24 1b       	movzbl 0x1b(%esp),%eax
c06019b2:	89 c2                	mov    %eax,%edx
c06019b4:	83 e0 0f             	and    $0xf,%eax
c06019b7:	c0 ea 04             	shr    $0x4,%dl
c06019ba:	0f b6 d2             	movzbl %dl,%edx
c06019bd:	8d 14 92             	lea    (%edx,%edx,4),%edx
c06019c0:	8d 04 50             	lea    (%eax,%edx,2),%eax
c06019c3:	89 44 24 08          	mov    %eax,0x8(%esp)
c06019c7:	0f b6 44 24 1c       	movzbl 0x1c(%esp),%eax
c06019cc:	89 c2                	mov    %eax,%edx
c06019ce:	83 e0 0f             	and    $0xf,%eax
c06019d1:	c0 ea 04             	shr    $0x4,%dl
c06019d4:	0f b6 d2             	movzbl %dl,%edx
c06019d7:	8d 14 92             	lea    (%edx,%edx,4),%edx
c06019da:	8d 04 50             	lea    (%eax,%edx,2),%eax
c06019dd:	89 44 24 0c          	mov    %eax,0xc(%esp)
c06019e1:	0f b6 44 24 1d       	movzbl 0x1d(%esp),%eax
c06019e6:	89 c2                	mov    %eax,%edx
c06019e8:	83 e0 0f             	and    $0xf,%eax
c06019eb:	c0 ea 04             	shr    $0x4,%dl
c06019ee:	0f b6 d2             	movzbl %dl,%edx
c06019f1:	8d 14 92             	lea    (%edx,%edx,4),%edx
c06019f4:	8d 2c 50             	lea    (%eax,%edx,2),%ebp
c06019f7:	0f b6 44 24 1e       	movzbl 0x1e(%esp),%eax
c06019fc:	89 c2                	mov    %eax,%edx
c06019fe:	83 e0 0f             	and    $0xf,%eax
c0601a01:	c0 ea 04             	shr    $0x4,%dl
c0601a04:	0f b6 d2             	movzbl %dl,%edx
c0601a07:	8d 14 92             	lea    (%edx,%edx,4),%edx
c0601a0a:	8d 14 50             	lea    (%eax,%edx,2),%edx
c0601a0d:	0f b6 44 24 1f       	movzbl 0x1f(%esp),%eax
c0601a12:	8d 5a fe             	lea    -0x2(%edx),%ebx
c0601a15:	89 c1                	mov    %eax,%ecx
c0601a17:	83 e0 0f             	and    $0xf,%eax
c0601a1a:	c0 e9 04             	shr    $0x4,%cl
c0601a1d:	0f b6 c9             	movzbl %cl,%ecx
c0601a20:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
c0601a23:	8d 34 48             	lea    (%eax,%ecx,2),%esi
c0601a26:	03 35 8c 51 60 c0    	add    0xc060518c,%esi
c0601a2c:	85 db                	test   %ebx,%ebx
c0601a2e:	7f 06                	jg     c0601a36 <_time+0xb6>
c0601a30:	8d 5a 0a             	lea    0xa(%edx),%ebx
c0601a33:	83 ee 01             	sub    $0x1,%esi
c0601a36:	89 f0                	mov    %esi,%eax
c0601a38:	69 db 6f 01 00 00    	imul   $0x16f,%ebx,%ebx
c0601a3e:	bf 1f 85 eb 51       	mov    $0x51eb851f,%edi
c0601a43:	89 f1                	mov    %esi,%ecx
c0601a45:	f7 e7                	mul    %edi
c0601a47:	c1 e9 02             	shr    $0x2,%ecx
c0601a4a:	69 f6 6d 01 00 00    	imul   $0x16d,%esi,%esi
c0601a50:	89 d0                	mov    %edx,%eax
c0601a52:	89 d7                	mov    %edx,%edi
c0601a54:	ba ab aa aa aa       	mov    $0xaaaaaaab,%edx
c0601a59:	c1 e8 07             	shr    $0x7,%eax
c0601a5c:	c1 ef 05             	shr    $0x5,%edi
c0601a5f:	01 c1                	add    %eax,%ecx
c0601a61:	89 d8                	mov    %ebx,%eax
c0601a63:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
c0601a67:	f7 e2                	mul    %edx
c0601a69:	01 cd                	add    %ecx,%ebp
c0601a6b:	01 ee                	add    %ebp,%esi
c0601a6d:	c1 ea 03             	shr    $0x3,%edx
c0601a70:	01 f2                	add    %esi,%edx
c0601a72:	29 fa                	sub    %edi,%edx
c0601a74:	8d 04 52             	lea    (%edx,%edx,2),%eax
c0601a77:	8b 54 24 34          	mov    0x34(%esp),%edx
c0601a7b:	8d 04 c3             	lea    (%ebx,%eax,8),%eax
c0601a7e:	8b 5c 24 04          	mov    0x4(%esp),%ebx
c0601a82:	6b c0 3c             	imul   $0x3c,%eax,%eax
c0601a85:	03 44 24 08          	add    0x8(%esp),%eax
c0601a89:	6b c0 3c             	imul   $0x3c,%eax,%eax
c0601a8c:	8d 84 03 00 4f b1 86 	lea    -0x794eb100(%ebx,%eax,1),%eax
c0601a93:	85 d2                	test   %edx,%edx
c0601a95:	74 06                	je     c0601a9d <_time+0x11d>
c0601a97:	8b 7c 24 34          	mov    0x34(%esp),%edi
c0601a9b:	89 07                	mov    %eax,(%edi)
c0601a9d:	83 c4 20             	add    $0x20,%esp
c0601aa0:	5b                   	pop    %ebx
c0601aa1:	5e                   	pop    %esi
c0601aa2:	5f                   	pop    %edi
c0601aa3:	5d                   	pop    %ebp
c0601aa4:	c3                   	ret    
c0601aa5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0601aa9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0601ab0 <_localtime_r>:
c0601ab0:	57                   	push   %edi
c0601ab1:	56                   	push   %esi
c0601ab2:	53                   	push   %ebx
c0601ab3:	8b 5c 24 14          	mov    0x14(%esp),%ebx
c0601ab7:	8b 44 24 10          	mov    0x10(%esp),%eax
c0601abb:	85 db                	test   %ebx,%ebx
c0601abd:	0f 84 62 01 00 00    	je     c0601c25 <_localtime_r+0x175>
c0601ac3:	c7 03 ff ff ff ff    	movl   $0xffffffff,(%ebx)
c0601ac9:	c7 43 04 ff ff ff ff 	movl   $0xffffffff,0x4(%ebx)
c0601ad0:	c7 43 08 ff ff ff ff 	movl   $0xffffffff,0x8(%ebx)
c0601ad7:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%ebx)
c0601ade:	c7 43 10 ff ff ff ff 	movl   $0xffffffff,0x10(%ebx)
c0601ae5:	c7 43 14 ff ff ff ff 	movl   $0xffffffff,0x14(%ebx)
c0601aec:	c7 43 18 ff ff ff ff 	movl   $0xffffffff,0x18(%ebx)
c0601af3:	c7 43 1c ff ff ff ff 	movl   $0xffffffff,0x1c(%ebx)
c0601afa:	c7 43 20 ff ff ff ff 	movl   $0xffffffff,0x20(%ebx)
c0601b01:	85 c0                	test   %eax,%eax
c0601b03:	0f 84 1c 01 00 00    	je     c0601c25 <_localtime_r+0x175>
c0601b09:	8b 38                	mov    (%eax),%edi
c0601b0b:	ba 79 2d 03 11       	mov    $0x11032d79,%edx
c0601b10:	89 f8                	mov    %edi,%eax
c0601b12:	f7 e2                	mul    %edx
c0601b14:	89 f8                	mov    %edi,%eax
c0601b16:	89 d6                	mov    %edx,%esi
c0601b18:	c1 ea 17             	shr    $0x17,%edx
c0601b1b:	c1 ee 17             	shr    $0x17,%esi
c0601b1e:	c1 e2 02             	shl    $0x2,%edx
c0601b21:	69 f6 80 1f 86 07    	imul   $0x7861f80,%esi,%esi
c0601b27:	29 f0                	sub    %esi,%eax
c0601b29:	89 c6                	mov    %eax,%esi
c0601b2b:	3d 7f 33 e1 01       	cmp    $0x1e1337f,%eax
c0601b30:	0f 87 aa 00 00 00    	ja     c0601be0 <_localtime_r+0x130>
c0601b36:	83 c2 46             	add    $0x46,%edx
c0601b39:	89 53 14             	mov    %edx,0x14(%ebx)
c0601b3c:	ba 07 45 2e c2       	mov    $0xc22e4507,%edx
c0601b41:	f7 e2                	mul    %edx
c0601b43:	c1 ea 10             	shr    $0x10,%edx
c0601b46:	69 c2 80 51 01 00    	imul   $0x15180,%edx,%eax
c0601b4c:	89 53 1c             	mov    %edx,0x1c(%ebx)
c0601b4f:	29 c6                	sub    %eax,%esi
c0601b51:	b8 40 20 60 c0       	mov    $0xc0602040,%eax
c0601b56:	b9 01 00 00 00       	mov    $0x1,%ecx
c0601b5b:	eb 06                	jmp    c0601b63 <_localtime_r+0xb3>
c0601b5d:	8d 76 00             	lea    0x0(%esi),%esi
c0601b60:	83 c1 01             	add    $0x1,%ecx
c0601b63:	39 14 88             	cmp    %edx,(%eax,%ecx,4)
c0601b66:	7c f8                	jl     c0601b60 <_localtime_r+0xb0>
c0601b68:	83 e9 01             	sub    $0x1,%ecx
c0601b6b:	89 4b 10             	mov    %ecx,0x10(%ebx)
c0601b6e:	2b 14 88             	sub    (%eax,%ecx,4),%edx
c0601b71:	89 f8                	mov    %edi,%eax
c0601b73:	83 c2 01             	add    $0x1,%edx
c0601b76:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)
c0601b7d:	89 53 0c             	mov    %edx,0xc(%ebx)
c0601b80:	ba 07 45 2e c2       	mov    $0xc22e4507,%edx
c0601b85:	f7 e2                	mul    %edx
c0601b87:	89 d7                	mov    %edx,%edi
c0601b89:	ba 93 24 49 92       	mov    $0x92492493,%edx
c0601b8e:	c1 ef 10             	shr    $0x10,%edi
c0601b91:	83 c7 04             	add    $0x4,%edi
c0601b94:	89 f8                	mov    %edi,%eax
c0601b96:	f7 ea                	imul   %edx
c0601b98:	01 fa                	add    %edi,%edx
c0601b9a:	c1 fa 02             	sar    $0x2,%edx
c0601b9d:	8d 04 d5 00 00 00 00 	lea    0x0(,%edx,8),%eax
c0601ba4:	29 d0                	sub    %edx,%eax
c0601ba6:	ba c5 b3 a2 91       	mov    $0x91a2b3c5,%edx
c0601bab:	29 c7                	sub    %eax,%edi
c0601bad:	89 f0                	mov    %esi,%eax
c0601baf:	f7 e2                	mul    %edx
c0601bb1:	89 7b 18             	mov    %edi,0x18(%ebx)
c0601bb4:	c1 ea 0b             	shr    $0xb,%edx
c0601bb7:	89 53 08             	mov    %edx,0x8(%ebx)
c0601bba:	69 d2 10 0e 00 00    	imul   $0xe10,%edx,%edx
c0601bc0:	29 d6                	sub    %edx,%esi
c0601bc2:	ba 89 88 88 88       	mov    $0x88888889,%edx
c0601bc7:	89 f0                	mov    %esi,%eax
c0601bc9:	f7 e2                	mul    %edx
c0601bcb:	89 d8                	mov    %ebx,%eax
c0601bcd:	c1 ea 05             	shr    $0x5,%edx
c0601bd0:	89 53 04             	mov    %edx,0x4(%ebx)
c0601bd3:	6b d2 3c             	imul   $0x3c,%edx,%edx
c0601bd6:	29 d6                	sub    %edx,%esi
c0601bd8:	89 33                	mov    %esi,(%ebx)
c0601bda:	5b                   	pop    %ebx
c0601bdb:	5e                   	pop    %esi
c0601bdc:	5f                   	pop    %edi
c0601bdd:	c3                   	ret    
c0601bde:	66 90                	xchg   %ax,%ax
c0601be0:	8d 88 80 cc 1e fe    	lea    -0x1e13380(%eax),%ecx
c0601be6:	81 f9 7f 33 e1 01    	cmp    $0x1e1337f,%ecx
c0601bec:	76 42                	jbe    c0601c30 <_localtime_r+0x180>
c0601bee:	8d 88 00 99 3d fc    	lea    -0x3c26700(%eax),%ecx
c0601bf4:	81 f9 ff 84 e2 01    	cmp    $0x1e284ff,%ecx
c0601bfa:	77 64                	ja     c0601c60 <_localtime_r+0x1b0>
c0601bfc:	83 c2 48             	add    $0x48,%edx
c0601bff:	89 c8                	mov    %ecx,%eax
c0601c01:	89 ce                	mov    %ecx,%esi
c0601c03:	89 53 14             	mov    %edx,0x14(%ebx)
c0601c06:	ba 07 45 2e c2       	mov    $0xc22e4507,%edx
c0601c0b:	f7 e2                	mul    %edx
c0601c0d:	c1 ea 10             	shr    $0x10,%edx
c0601c10:	69 c2 80 51 01 00    	imul   $0x15180,%edx,%eax
c0601c16:	89 53 1c             	mov    %edx,0x1c(%ebx)
c0601c19:	29 c6                	sub    %eax,%esi
c0601c1b:	b8 00 20 60 c0       	mov    $0xc0602000,%eax
c0601c20:	e9 31 ff ff ff       	jmp    c0601b56 <_localtime_r+0xa6>
c0601c25:	5b                   	pop    %ebx
c0601c26:	31 c0                	xor    %eax,%eax
c0601c28:	5e                   	pop    %esi
c0601c29:	5f                   	pop    %edi
c0601c2a:	c3                   	ret    
c0601c2b:	90                   	nop
c0601c2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0601c30:	83 c2 47             	add    $0x47,%edx
c0601c33:	89 c8                	mov    %ecx,%eax
c0601c35:	89 ce                	mov    %ecx,%esi
c0601c37:	89 53 14             	mov    %edx,0x14(%ebx)
c0601c3a:	ba 07 45 2e c2       	mov    $0xc22e4507,%edx
c0601c3f:	f7 e2                	mul    %edx
c0601c41:	c1 ea 10             	shr    $0x10,%edx
c0601c44:	69 c2 80 51 01 00    	imul   $0x15180,%edx,%eax
c0601c4a:	89 53 1c             	mov    %edx,0x1c(%ebx)
c0601c4d:	29 c6                	sub    %eax,%esi
c0601c4f:	b8 40 20 60 c0       	mov    $0xc0602040,%eax
c0601c54:	e9 fd fe ff ff       	jmp    c0601b56 <_localtime_r+0xa6>
c0601c59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0601c60:	83 c2 49             	add    $0x49,%edx
c0601c63:	81 ee 00 ec a4 05    	sub    $0x5a4ec00,%esi
c0601c69:	89 53 14             	mov    %edx,0x14(%ebx)
c0601c6c:	89 f0                	mov    %esi,%eax
c0601c6e:	ba 07 45 2e c2       	mov    $0xc22e4507,%edx
c0601c73:	e9 c9 fe ff ff       	jmp    c0601b41 <_localtime_r+0x91>
c0601c78:	90                   	nop
c0601c79:	90                   	nop
c0601c7a:	90                   	nop
c0601c7b:	90                   	nop
c0601c7c:	90                   	nop
c0601c7d:	90                   	nop
c0601c7e:	90                   	nop
c0601c7f:	90                   	nop

c0601c80 <__CTOR_LIST__>:
c0601c80:	ff                   	(bad)  
c0601c81:	ff                   	(bad)  
c0601c82:	ff                   	(bad)  
c0601c83:	ff 00                	incl   (%eax)
c0601c85:	00 00                	add    %al,(%eax)
	...

c0601c88 <__DTOR_LIST__>:
c0601c88:	ff                   	(bad)  
c0601c89:	ff                   	(bad)  
c0601c8a:	ff                   	(bad)  
c0601c8b:	ff 00                	incl   (%eax)
c0601c8d:	00 00                	add    %al,(%eax)
	...

Disassembly of section .data:

c0602000 <__data_start__>:
c0602000:	00 00                	add    %al,(%eax)
c0602002:	00 00                	add    %al,(%eax)
c0602004:	1f                   	pop    %ds
c0602005:	00 00                	add    %al,(%eax)
c0602007:	00 3c 00             	add    %bh,(%eax,%eax,1)
c060200a:	00 00                	add    %al,(%eax)
c060200c:	5b                   	pop    %ebx
c060200d:	00 00                	add    %al,(%eax)
c060200f:	00 79 00             	add    %bh,0x0(%ecx)
c0602012:	00 00                	add    %al,(%eax)
c0602014:	98                   	cwtl   
c0602015:	00 00                	add    %al,(%eax)
c0602017:	00 b6 00 00 00 d5    	add    %dh,-0x2b000000(%esi)
c060201d:	00 00                	add    %al,(%eax)
c060201f:	00 f4                	add    %dh,%ah
c0602021:	00 00                	add    %al,(%eax)
c0602023:	00 12                	add    %dl,(%edx)
c0602025:	01 00                	add    %eax,(%eax)
c0602027:	00 31                	add    %dh,(%ecx)
c0602029:	01 00                	add    %eax,(%eax)
c060202b:	00 4f 01             	add    %cl,0x1(%edi)
c060202e:	00 00                	add    %al,(%eax)
c0602030:	6e                   	outsb  %ds:(%esi),(%dx)
c0602031:	01 00                	add    %eax,(%eax)
	...

c0602040 <__days>:
c0602040:	00 00                	add    %al,(%eax)
c0602042:	00 00                	add    %al,(%eax)
c0602044:	1f                   	pop    %ds
c0602045:	00 00                	add    %al,(%eax)
c0602047:	00 3b                	add    %bh,(%ebx)
c0602049:	00 00                	add    %al,(%eax)
c060204b:	00 5a 00             	add    %bl,0x0(%edx)
c060204e:	00 00                	add    %al,(%eax)
c0602050:	78 00                	js     c0602052 <__days+0x12>
c0602052:	00 00                	add    %al,(%eax)
c0602054:	97                   	xchg   %eax,%edi
c0602055:	00 00                	add    %al,(%eax)
c0602057:	00 b5 00 00 00 d4    	add    %dh,-0x2c000000(%ebp)
c060205d:	00 00                	add    %al,(%eax)
c060205f:	00 f3                	add    %dh,%bl
c0602061:	00 00                	add    %al,(%eax)
c0602063:	00 11                	add    %dl,(%ecx)
c0602065:	01 00                	add    %eax,(%eax)
c0602067:	00 30                	add    %dh,(%eax)
c0602069:	01 00                	add    %eax,(%eax)
c060206b:	00 4e 01             	add    %cl,0x1(%esi)
c060206e:	00 00                	add    %al,(%eax)
c0602070:	6d                   	insl   (%dx),%es:(%edi)
c0602071:	01 00                	add    %eax,(%eax)
	...

Disassembly of section .rdata:

c0603000 <.rdata>:
c0603000:	48                   	dec    %eax
c0603001:	65 6c                	gs insb (%dx),%es:(%edi)
c0603003:	6c                   	insb   (%dx),%es:(%edi)
c0603004:	6f                   	outsl  %ds:(%esi),(%dx)
c0603005:	7c 62                	jl     c0603069 <.rdata$zzz+0x1d>
c0603007:	6f                   	outsl  %ds:(%esi),(%dx)
c0603008:	6f                   	outsl  %ds:(%esi),(%dx)
c0603009:	74 20                	je     c060302b <.rdata+0x2b>
c060300b:	74 69                	je     c0603076 <.rdata$zzz+0x2a>
c060300d:	6d                   	insl   (%dx),%es:(%edi)
c060300e:	65 20 3a             	and    %bh,%gs:(%edx)
c0603011:	20 25 64 2f 25 64    	and    %ah,0x64252f64
c0603017:	2f                   	das    
c0603018:	25 64 20 25 64       	and    $0x64252064,%eax
c060301d:	3a 25 64 3a 25 64    	cmp    0x64253a64,%ah
c0603023:	0a 00                	or     (%eax),%al
c0603025:	74 65                	je     c060308c <.rdata$zzz>
c0603027:	73 74                	jae    c060309d <.rdata$zzz+0x11>
c0603029:	2c 74                	sub    $0x74,%al
c060302b:	73 73                	jae    c06030a0 <.rdata$zzz+0x14>
c060302d:	00 00                	add    %al,(%eax)
	...

c0603030 <.rdata>:
c0603030:	25 64 00 00        	and    $0x74000064,%eax

c0603034 <.rdata>:
c0603034:	74 65                	je     c060309b <.rdata$zzz+0xf>
c0603036:	73 74                	jae    c06030ac <.rdata$zzz+0x20>
c0603038:	31 0a                	xor    %ecx,(%edx)
c060303a:	00 74 65 73          	add    %dh,0x73(%ebp,%eiz,2)
c060303e:	74 32                	je     c0603072 <.rdata$zzz+0x26>
c0603040:	0a 00                	or     (%eax),%al
	...

c0603044 <.rdata>:
c0603044:	00 00                	add    %al,(%eax)
c0603046:	80 3f              	cmpb   $0x0,(%edi)

c0603048 <.rdata>:
c0603048:	00 00                	add    %al,(%eax)
c060304a:	00 40              	add    %al,0x47(%eax)

c060304c <.rdata$zzz>:
c060304c:	47                   	inc    %edi
c060304d:	43                   	inc    %ebx
c060304e:	43                   	inc    %ebx
c060304f:	3a 20                	cmp    (%eax),%ah
c0603051:	28 69 36             	sub    %ch,0x36(%ecx)
c0603054:	38 36                	cmp    %dh,(%esi)
c0603056:	2d 77 69 6e 33       	sub    $0x336e6977,%eax
c060305b:	32 2d 64 77 61 72    	xor    0x72617764,%ch
c0603061:	66 2d 72 65          	sub    $0x6572,%ax
c0603065:	76 30                	jbe    c0603097 <.rdata$zzz+0xb>
c0603067:	2c 20                	sub    $0x20,%al
c0603069:	42                   	inc    %edx
c060306a:	75 69                	jne    c06030d5 <.rdata$zzz+0x9>
c060306c:	6c                   	insb   (%dx),%es:(%edi)
c060306d:	74 20                	je     c060308f <.rdata$zzz+0x3>
c060306f:	62 79 20             	bound  %edi,0x20(%ecx)
c0603072:	4d                   	dec    %ebp
c0603073:	69 6e 47 57 2d 57 36 	imul   $0x36572d57,0x47(%esi),%ebp
c060307a:	34 20                	xor    $0x20,%al
c060307c:	70 72                	jo     c06030f0 <.rdata$zzz+0x24>
c060307e:	6f                   	outsl  %ds:(%esi),(%dx)
c060307f:	6a 65                	push   $0x65
c0603081:	63 74 29 20          	arpl   %si,0x20(%ecx,%ebp,1)
c0603085:	38 2e                	cmp    %ch,(%esi)
c0603087:	31 2e                	xor    %ebp,(%esi)
c0603089:	30 00                	xor    %al,(%eax)
	...

c060308c <.rdata$zzz>:
c060308c:	47                   	inc    %edi
c060308d:	43                   	inc    %ebx
c060308e:	43                   	inc    %ebx
c060308f:	3a 20                	cmp    (%eax),%ah
c0603091:	28 69 36             	sub    %ch,0x36(%ecx)
c0603094:	38 36                	cmp    %dh,(%esi)
c0603096:	2d 77 69 6e 33       	sub    $0x336e6977,%eax
c060309b:	32 2d 64 77 61 72    	xor    0x72617764,%ch
c06030a1:	66 2d 72 65          	sub    $0x6572,%ax
c06030a5:	76 30                	jbe    c06030d7 <.rdata$zzz+0xb>
c06030a7:	2c 20                	sub    $0x20,%al
c06030a9:	42                   	inc    %edx
c06030aa:	75 69                	jne    c0603115 <.rdata$zzz+0x9>
c06030ac:	6c                   	insb   (%dx),%es:(%edi)
c06030ad:	74 20                	je     c06030cf <.rdata$zzz+0x3>
c06030af:	62 79 20             	bound  %edi,0x20(%ecx)
c06030b2:	4d                   	dec    %ebp
c06030b3:	69 6e 47 57 2d 57 36 	imul   $0x36572d57,0x47(%esi),%ebp
c06030ba:	34 20                	xor    $0x20,%al
c06030bc:	70 72                	jo     c0603130 <.rdata$zzz+0x24>
c06030be:	6f                   	outsl  %ds:(%esi),(%dx)
c06030bf:	6a 65                	push   $0x65
c06030c1:	63 74 29 20          	arpl   %si,0x20(%ecx,%ebp,1)
c06030c5:	38 2e                	cmp    %ch,(%esi)
c06030c7:	31 2e                	xor    %ebp,(%esi)
c06030c9:	30 00                	xor    %al,(%eax)
	...

c06030cc <.rdata$zzz>:
c06030cc:	47                   	inc    %edi
c06030cd:	43                   	inc    %ebx
c06030ce:	43                   	inc    %ebx
c06030cf:	3a 20                	cmp    (%eax),%ah
c06030d1:	28 69 36             	sub    %ch,0x36(%ecx)
c06030d4:	38 36                	cmp    %dh,(%esi)
c06030d6:	2d 77 69 6e 33       	sub    $0x336e6977,%eax
c06030db:	32 2d 64 77 61 72    	xor    0x72617764,%ch
c06030e1:	66 2d 72 65          	sub    $0x6572,%ax
c06030e5:	76 30                	jbe    c0603117 <.rdata$zzz+0xb>
c06030e7:	2c 20                	sub    $0x20,%al
c06030e9:	42                   	inc    %edx
c06030ea:	75 69                	jne    c0603155 <.rdata$zzz+0x9>
c06030ec:	6c                   	insb   (%dx),%es:(%edi)
c06030ed:	74 20                	je     c060310f <.rdata$zzz+0x3>
c06030ef:	62 79 20             	bound  %edi,0x20(%ecx)
c06030f2:	4d                   	dec    %ebp
c06030f3:	69 6e 47 57 2d 57 36 	imul   $0x36572d57,0x47(%esi),%ebp
c06030fa:	34 20                	xor    $0x20,%al
c06030fc:	70 72                	jo     c0603170 <.rdata$zzz+0x24>
c06030fe:	6f                   	outsl  %ds:(%esi),(%dx)
c06030ff:	6a 65                	push   $0x65
c0603101:	63 74 29 20          	arpl   %si,0x20(%ecx,%ebp,1)
c0603105:	38 2e                	cmp    %ch,(%esi)
c0603107:	31 2e                	xor    %ebp,(%esi)
c0603109:	30 00                	xor    %al,(%eax)
	...

c060310c <.rdata$zzz>:
c060310c:	47                   	inc    %edi
c060310d:	43                   	inc    %ebx
c060310e:	43                   	inc    %ebx
c060310f:	3a 20                	cmp    (%eax),%ah
c0603111:	28 69 36             	sub    %ch,0x36(%ecx)
c0603114:	38 36                	cmp    %dh,(%esi)
c0603116:	2d 77 69 6e 33       	sub    $0x336e6977,%eax
c060311b:	32 2d 64 77 61 72    	xor    0x72617764,%ch
c0603121:	66 2d 72 65          	sub    $0x6572,%ax
c0603125:	76 30                	jbe    c0603157 <.rdata$zzz+0xb>
c0603127:	2c 20                	sub    $0x20,%al
c0603129:	42                   	inc    %edx
c060312a:	75 69                	jne    c0603195 <.rdata$zzz+0x9>
c060312c:	6c                   	insb   (%dx),%es:(%edi)
c060312d:	74 20                	je     c060314f <.rdata$zzz+0x3>
c060312f:	62 79 20             	bound  %edi,0x20(%ecx)
c0603132:	4d                   	dec    %ebp
c0603133:	69 6e 47 57 2d 57 36 	imul   $0x36572d57,0x47(%esi),%ebp
c060313a:	34 20                	xor    $0x20,%al
c060313c:	70 72                	jo     c06031b0 <.rdata$zzz+0x24>
c060313e:	6f                   	outsl  %ds:(%esi),(%dx)
c060313f:	6a 65                	push   $0x65
c0603141:	63 74 29 20          	arpl   %si,0x20(%ecx,%ebp,1)
c0603145:	38 2e                	cmp    %ch,(%esi)
c0603147:	31 2e                	xor    %ebp,(%esi)
c0603149:	30 00                	xor    %al,(%eax)
	...

c060314c <.rdata$zzz>:
c060314c:	47                   	inc    %edi
c060314d:	43                   	inc    %ebx
c060314e:	43                   	inc    %ebx
c060314f:	3a 20                	cmp    (%eax),%ah
c0603151:	28 69 36             	sub    %ch,0x36(%ecx)
c0603154:	38 36                	cmp    %dh,(%esi)
c0603156:	2d 77 69 6e 33       	sub    $0x336e6977,%eax
c060315b:	32 2d 64 77 61 72    	xor    0x72617764,%ch
c0603161:	66 2d 72 65          	sub    $0x6572,%ax
c0603165:	76 30                	jbe    c0603197 <.rdata$zzz+0xb>
c0603167:	2c 20                	sub    $0x20,%al
c0603169:	42                   	inc    %edx
c060316a:	75 69                	jne    c06031d5 <.rdata$zzz+0x9>
c060316c:	6c                   	insb   (%dx),%es:(%edi)
c060316d:	74 20                	je     c060318f <.rdata$zzz+0x3>
c060316f:	62 79 20             	bound  %edi,0x20(%ecx)
c0603172:	4d                   	dec    %ebp
c0603173:	69 6e 47 57 2d 57 36 	imul   $0x36572d57,0x47(%esi),%ebp
c060317a:	34 20                	xor    $0x20,%al
c060317c:	70 72                	jo     c06031f0 <.rdata$zzz+0x24>
c060317e:	6f                   	outsl  %ds:(%esi),(%dx)
c060317f:	6a 65                	push   $0x65
c0603181:	63 74 29 20          	arpl   %si,0x20(%ecx,%ebp,1)
c0603185:	38 2e                	cmp    %ch,(%esi)
c0603187:	31 2e                	xor    %ebp,(%esi)
c0603189:	30 00                	xor    %al,(%eax)
	...

c060318c <.rdata$zzz>:
c060318c:	47                   	inc    %edi
c060318d:	43                   	inc    %ebx
c060318e:	43                   	inc    %ebx
c060318f:	3a 20                	cmp    (%eax),%ah
c0603191:	28 69 36             	sub    %ch,0x36(%ecx)
c0603194:	38 36                	cmp    %dh,(%esi)
c0603196:	2d 77 69 6e 33       	sub    $0x336e6977,%eax
c060319b:	32 2d 64 77 61 72    	xor    0x72617764,%ch
c06031a1:	66 2d 72 65          	sub    $0x6572,%ax
c06031a5:	76 30                	jbe    c06031d7 <.rdata$zzz+0xb>
c06031a7:	2c 20                	sub    $0x20,%al
c06031a9:	42                   	inc    %edx
c06031aa:	75 69                	jne    c0603215 <.rdata$zzz+0x9>
c06031ac:	6c                   	insb   (%dx),%es:(%edi)
c06031ad:	74 20                	je     c06031cf <.rdata$zzz+0x3>
c06031af:	62 79 20             	bound  %edi,0x20(%ecx)
c06031b2:	4d                   	dec    %ebp
c06031b3:	69 6e 47 57 2d 57 36 	imul   $0x36572d57,0x47(%esi),%ebp
c06031ba:	34 20                	xor    $0x20,%al
c06031bc:	70 72                	jo     c0603230 <.rdata$zzz+0x24>
c06031be:	6f                   	outsl  %ds:(%esi),(%dx)
c06031bf:	6a 65                	push   $0x65
c06031c1:	63 74 29 20          	arpl   %si,0x20(%ecx,%ebp,1)
c06031c5:	38 2e                	cmp    %ch,(%esi)
c06031c7:	31 2e                	xor    %ebp,(%esi)
c06031c9:	30 00                	xor    %al,(%eax)
	...

c06031cc <.rdata$zzz>:
c06031cc:	47                   	inc    %edi
c06031cd:	43                   	inc    %ebx
c06031ce:	43                   	inc    %ebx
c06031cf:	3a 20                	cmp    (%eax),%ah
c06031d1:	28 69 36             	sub    %ch,0x36(%ecx)
c06031d4:	38 36                	cmp    %dh,(%esi)
c06031d6:	2d 77 69 6e 33       	sub    $0x336e6977,%eax
c06031db:	32 2d 64 77 61 72    	xor    0x72617764,%ch
c06031e1:	66 2d 72 65          	sub    $0x6572,%ax
c06031e5:	76 30                	jbe    c0603217 <.rdata$zzz+0xb>
c06031e7:	2c 20                	sub    $0x20,%al
c06031e9:	42                   	inc    %edx
c06031ea:	75 69                	jne    c0603255 <.rdata$zzz+0x9>
c06031ec:	6c                   	insb   (%dx),%es:(%edi)
c06031ed:	74 20                	je     c060320f <.rdata$zzz+0x3>
c06031ef:	62 79 20             	bound  %edi,0x20(%ecx)
c06031f2:	4d                   	dec    %ebp
c06031f3:	69 6e 47 57 2d 57 36 	imul   $0x36572d57,0x47(%esi),%ebp
c06031fa:	34 20                	xor    $0x20,%al
c06031fc:	70 72                	jo     c0603270 <.rdata$zzz+0x24>
c06031fe:	6f                   	outsl  %ds:(%esi),(%dx)
c06031ff:	6a 65                	push   $0x65
c0603201:	63 74 29 20          	arpl   %si,0x20(%ecx,%ebp,1)
c0603205:	38 2e                	cmp    %ch,(%esi)
c0603207:	31 2e                	xor    %ebp,(%esi)
c0603209:	30 00                	xor    %al,(%eax)
	...

c060320c <.rdata$zzz>:
c060320c:	47                   	inc    %edi
c060320d:	43                   	inc    %ebx
c060320e:	43                   	inc    %ebx
c060320f:	3a 20                	cmp    (%eax),%ah
c0603211:	28 69 36             	sub    %ch,0x36(%ecx)
c0603214:	38 36                	cmp    %dh,(%esi)
c0603216:	2d 77 69 6e 33       	sub    $0x336e6977,%eax
c060321b:	32 2d 64 77 61 72    	xor    0x72617764,%ch
c0603221:	66 2d 72 65          	sub    $0x6572,%ax
c0603225:	76 30                	jbe    c0603257 <.rdata$zzz+0xb>
c0603227:	2c 20                	sub    $0x20,%al
c0603229:	42                   	inc    %edx
c060322a:	75 69                	jne    c0603295 <.rdata$zzz+0x9>
c060322c:	6c                   	insb   (%dx),%es:(%edi)
c060322d:	74 20                	je     c060324f <.rdata$zzz+0x3>
c060322f:	62 79 20             	bound  %edi,0x20(%ecx)
c0603232:	4d                   	dec    %ebp
c0603233:	69 6e 47 57 2d 57 36 	imul   $0x36572d57,0x47(%esi),%ebp
c060323a:	34 20                	xor    $0x20,%al
c060323c:	70 72                	jo     c06032b0 <.rdata$zzz+0x24>
c060323e:	6f                   	outsl  %ds:(%esi),(%dx)
c060323f:	6a 65                	push   $0x65
c0603241:	63 74 29 20          	arpl   %si,0x20(%ecx,%ebp,1)
c0603245:	38 2e                	cmp    %ch,(%esi)
c0603247:	31 2e                	xor    %ebp,(%esi)
c0603249:	30 00                	xor    %al,(%eax)
	...

c060324c <.rdata$zzz>:
c060324c:	47                   	inc    %edi
c060324d:	43                   	inc    %ebx
c060324e:	43                   	inc    %ebx
c060324f:	3a 20                	cmp    (%eax),%ah
c0603251:	28 69 36             	sub    %ch,0x36(%ecx)
c0603254:	38 36                	cmp    %dh,(%esi)
c0603256:	2d 77 69 6e 33       	sub    $0x336e6977,%eax
c060325b:	32 2d 64 77 61 72    	xor    0x72617764,%ch
c0603261:	66 2d 72 65          	sub    $0x6572,%ax
c0603265:	76 30                	jbe    c0603297 <.rdata$zzz+0xb>
c0603267:	2c 20                	sub    $0x20,%al
c0603269:	42                   	inc    %edx
c060326a:	75 69                	jne    c06032d5 <.rdata$zzz+0x9>
c060326c:	6c                   	insb   (%dx),%es:(%edi)
c060326d:	74 20                	je     c060328f <.rdata$zzz+0x3>
c060326f:	62 79 20             	bound  %edi,0x20(%ecx)
c0603272:	4d                   	dec    %ebp
c0603273:	69 6e 47 57 2d 57 36 	imul   $0x36572d57,0x47(%esi),%ebp
c060327a:	34 20                	xor    $0x20,%al
c060327c:	70 72                	jo     c06032f0 <.rdata$zzz+0x24>
c060327e:	6f                   	outsl  %ds:(%esi),(%dx)
c060327f:	6a 65                	push   $0x65
c0603281:	63 74 29 20          	arpl   %si,0x20(%ecx,%ebp,1)
c0603285:	38 2e                	cmp    %ch,(%esi)
c0603287:	31 2e                	xor    %ebp,(%esi)
c0603289:	30 00                	xor    %al,(%eax)
	...

c060328c <.rdata$zzz>:
c060328c:	47                   	inc    %edi
c060328d:	43                   	inc    %ebx
c060328e:	43                   	inc    %ebx
c060328f:	3a 20                	cmp    (%eax),%ah
c0603291:	28 69 36             	sub    %ch,0x36(%ecx)
c0603294:	38 36                	cmp    %dh,(%esi)
c0603296:	2d 77 69 6e 33       	sub    $0x336e6977,%eax
c060329b:	32 2d 64 77 61 72    	xor    0x72617764,%ch
c06032a1:	66 2d 72 65          	sub    $0x6572,%ax
c06032a5:	76 30                	jbe    c06032d7 <.rdata$zzz+0xb>
c06032a7:	2c 20                	sub    $0x20,%al
c06032a9:	42                   	inc    %edx
c06032aa:	75 69                	jne    c0603315 <.rdata$zzz+0x9>
c06032ac:	6c                   	insb   (%dx),%es:(%edi)
c06032ad:	74 20                	je     c06032cf <.rdata$zzz+0x3>
c06032af:	62 79 20             	bound  %edi,0x20(%ecx)
c06032b2:	4d                   	dec    %ebp
c06032b3:	69 6e 47 57 2d 57 36 	imul   $0x36572d57,0x47(%esi),%ebp
c06032ba:	34 20                	xor    $0x20,%al
c06032bc:	70 72                	jo     c0603330 <.rdata$zzz+0x24>
c06032be:	6f                   	outsl  %ds:(%esi),(%dx)
c06032bf:	6a 65                	push   $0x65
c06032c1:	63 74 29 20          	arpl   %si,0x20(%ecx,%ebp,1)
c06032c5:	38 2e                	cmp    %ch,(%esi)
c06032c7:	31 2e                	xor    %ebp,(%esi)
c06032c9:	30 00                	xor    %al,(%eax)
	...

c06032cc <.rdata$zzz>:
c06032cc:	47                   	inc    %edi
c06032cd:	43                   	inc    %ebx
c06032ce:	43                   	inc    %ebx
c06032cf:	3a 20                	cmp    (%eax),%ah
c06032d1:	28 69 36             	sub    %ch,0x36(%ecx)
c06032d4:	38 36                	cmp    %dh,(%esi)
c06032d6:	2d 77 69 6e 33       	sub    $0x336e6977,%eax
c06032db:	32 2d 64 77 61 72    	xor    0x72617764,%ch
c06032e1:	66 2d 72 65          	sub    $0x6572,%ax
c06032e5:	76 30                	jbe    c0603317 <.rdata$zzz+0xb>
c06032e7:	2c 20                	sub    $0x20,%al
c06032e9:	42                   	inc    %edx
c06032ea:	75 69                	jne    c0603355 <__RUNTIME_PSEUDO_RELOC_LIST_END__+0x9>
c06032ec:	6c                   	insb   (%dx),%es:(%edi)
c06032ed:	74 20                	je     c060330f <.rdata$zzz+0x3>
c06032ef:	62 79 20             	bound  %edi,0x20(%ecx)
c06032f2:	4d                   	dec    %ebp
c06032f3:	69 6e 47 57 2d 57 36 	imul   $0x36572d57,0x47(%esi),%ebp
c06032fa:	34 20                	xor    $0x20,%al
c06032fc:	70 72                	jo     c0603370 <__RUNTIME_PSEUDO_RELOC_LIST_END__+0x24>
c06032fe:	6f                   	outsl  %ds:(%esi),(%dx)
c06032ff:	6a 65                	push   $0x65
c0603301:	63 74 29 20          	arpl   %si,0x20(%ecx,%ebp,1)
c0603305:	38 2e                	cmp    %ch,(%esi)
c0603307:	31 2e                	xor    %ebp,(%esi)
c0603309:	30 00                	xor    %al,(%eax)
	...

c060330c <.rdata$zzz>:
c060330c:	47                   	inc    %edi
c060330d:	43                   	inc    %ebx
c060330e:	43                   	inc    %ebx
c060330f:	3a 20                	cmp    (%eax),%ah
c0603311:	28 69 36             	sub    %ch,0x36(%ecx)
c0603314:	38 36                	cmp    %dh,(%esi)
c0603316:	2d 77 69 6e 33       	sub    $0x336e6977,%eax
c060331b:	32 2d 64 77 61 72    	xor    0x72617764,%ch
c0603321:	66 2d 72 65          	sub    $0x6572,%ax
c0603325:	76 30                	jbe    c0603357 <__RUNTIME_PSEUDO_RELOC_LIST_END__+0xb>
c0603327:	2c 20                	sub    $0x20,%al
c0603329:	42                   	inc    %edx
c060332a:	75 69                	jne    c0603395 <__RUNTIME_PSEUDO_RELOC_LIST_END__+0x49>
c060332c:	6c                   	insb   (%dx),%es:(%edi)
c060332d:	74 20                	je     c060334f <__RUNTIME_PSEUDO_RELOC_LIST_END__+0x3>
c060332f:	62 79 20             	bound  %edi,0x20(%ecx)
c0603332:	4d                   	dec    %ebp
c0603333:	69 6e 47 57 2d 57 36 	imul   $0x36572d57,0x47(%esi),%ebp
c060333a:	34 20                	xor    $0x20,%al
c060333c:	70 72                	jo     c06033b0 <__RUNTIME_PSEUDO_RELOC_LIST_END__+0x64>
c060333e:	6f                   	outsl  %ds:(%esi),(%dx)
c060333f:	6a 65                	push   $0x65
c0603341:	63 74 29 20          	arpl   %si,0x20(%ecx,%ebp,1)
c0603345:	38 2e                	cmp    %ch,(%esi)
c0603347:	31 2e                	xor    %ebp,(%esi)
c0603349:	30 00                	xor    %al,(%eax)
	...

Disassembly of section .eh_fram:

c0604000 <.eh_frame>:
c0604000:	14 00                	adc    $0x0,%al
c0604002:	00 00                	add    %al,(%eax)
c0604004:	00 00                	add    %al,(%eax)
c0604006:	00 00                	add    %al,(%eax)
c0604008:	01 7a 52             	add    %edi,0x52(%edx)
c060400b:	00 01                	add    %al,(%ecx)
c060400d:	7c 08                	jl     c0604017 <.eh_frame+0x17>
c060400f:	01 1b                	add    %ebx,(%ebx)
c0604011:	0c 04                	or     $0x4,%al
c0604013:	04 88                	add    $0x88,%al
c0604015:	01 00                	add    %eax,(%eax)
c0604017:	00 3c 00             	add    %bh,(%eax,%eax,1)
c060401a:	00 00                	add    %al,(%eax)
c060401c:	1c 00                	sbb    $0x0,%al
c060401e:	00 00                	add    %al,(%eax)
c0604020:	e0 bf                	loopne c0603fe1 <__RUNTIME_PSEUDO_RELOC_LIST_END__+0xc95>
c0604022:	ff                   	(bad)  
c0604023:	ff 83 01 00 00 00    	incl   0x1(%ebx)
c0604029:	41                   	inc    %ecx
c060402a:	0e                   	push   %cs
c060402b:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
c0604031:	87 03                	xchg   %eax,(%ebx)
c0604033:	41                   	inc    %ecx
c0604034:	0e                   	push   %cs
c0604035:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
c060403b:	83 05 43 0e 50 03 77 	addl   $0x77,0x3500e43
c0604042:	01 0e                	add    %ecx,(%esi)
c0604044:	14 41                	adc    $0x41,%al
c0604046:	c3                   	ret    
c0604047:	0e                   	push   %cs
c0604048:	10 41 c6             	adc    %al,-0x3a(%ecx)
c060404b:	0e                   	push   %cs
c060404c:	0c 41                	or     $0x41,%al
c060404e:	c7                   	(bad)  
c060404f:	0e                   	push   %cs
c0604050:	08 41 c5             	or     %al,-0x3b(%ecx)
c0604053:	0e                   	push   %cs
c0604054:	04 00                	add    $0x0,%al
c0604056:	00 00                	add    %al,(%eax)
c0604058:	20 00                	and    %al,(%eax)
c060405a:	00 00                	add    %al,(%eax)
c060405c:	5c                   	pop    %esp
c060405d:	00 00                	add    %al,(%eax)
c060405f:	00 30                	add    %dh,(%eax)
c0604061:	c1 ff ff             	sar    $0xff,%edi
c0604064:	53                   	push   %ebx
c0604065:	00 00                	add    %al,(%eax)
c0604067:	00 00                	add    %al,(%eax)
c0604069:	41                   	inc    %ecx
c060406a:	0e                   	push   %cs
c060406b:	08 83 02 43 0e 20    	or     %al,0x200e4302(%ebx)
c0604071:	02 4d 0e             	add    0xe(%ebp),%cl
c0604074:	08 41 c3             	or     %al,-0x3d(%ecx)
c0604077:	0e                   	push   %cs
c0604078:	04 00                	add    $0x0,%al
c060407a:	00 00                	add    %al,(%eax)
c060407c:	14 00                	adc    $0x0,%al
c060407e:	00 00                	add    %al,(%eax)
c0604080:	80 00 00             	addb   $0x0,(%eax)
c0604083:	00 6c c1 ff          	add    %ch,-0x1(%ecx,%eax,8)
c0604087:	ff 13                	call   *(%ebx)
c0604089:	00 00                	add    %al,(%eax)
c060408b:	00 00                	add    %al,(%eax)
c060408d:	43                   	inc    %ebx
c060408e:	0e                   	push   %cs
c060408f:	20 4f 0e             	and    %cl,0xe(%edi)
c0604092:	04 00                	add    $0x0,%al
c0604094:	10 00                	adc    %al,(%eax)
c0604096:	00 00                	add    %al,(%eax)
c0604098:	98                   	cwtl   
c0604099:	00 00                	add    %al,(%eax)
c060409b:	00 74 c1 ff          	add    %dh,-0x1(%ecx,%eax,8)
c060409f:	ff 01                	incl   (%ecx)
c06040a1:	00 00                	add    %al,(%eax)
c06040a3:	00 00                	add    %al,(%eax)
c06040a5:	00 00                	add    %al,(%eax)
	...

c06040a8 <.eh_frame>:
c06040a8:	14 00                	adc    $0x0,%al
c06040aa:	00 00                	add    %al,(%eax)
c06040ac:	00 00                	add    %al,(%eax)
c06040ae:	00 00                	add    %al,(%eax)
c06040b0:	01 7a 52             	add    %edi,0x52(%edx)
c06040b3:	00 01                	add    %al,(%ecx)
c06040b5:	7c 08                	jl     c06040bf <.eh_frame+0x17>
c06040b7:	01 1b                	add    %ebx,(%ebx)
c06040b9:	0c 04                	or     $0x4,%al
c06040bb:	04 88                	add    $0x88,%al
c06040bd:	01 00                	add    %eax,(%eax)
c06040bf:	00 10                	add    %dl,(%eax)
c06040c1:	00 00                	add    %al,(%eax)
c06040c3:	00 1c 00             	add    %bl,(%eax,%eax,1)
c06040c6:	00 00                	add    %al,(%eax)
c06040c8:	58                   	pop    %eax
c06040c9:	c1 ff ff             	sar    $0xff,%edi
c06040cc:	01 00                	add    %eax,(%eax)
c06040ce:	00 00                	add    %al,(%eax)
c06040d0:	00 00                	add    %al,(%eax)
c06040d2:	00 00                	add    %al,(%eax)
c06040d4:	14 00                	adc    $0x0,%al
c06040d6:	00 00                	add    %al,(%eax)
c06040d8:	00 00                	add    %al,(%eax)
c06040da:	00 00                	add    %al,(%eax)
c06040dc:	01 7a 52             	add    %edi,0x52(%edx)
c06040df:	00 01                	add    %al,(%ecx)
c06040e1:	7c 08                	jl     c06040eb <.eh_frame+0x43>
c06040e3:	01 1b                	add    %ebx,(%ebx)
c06040e5:	0c 04                	or     $0x4,%al
c06040e7:	04 88                	add    $0x88,%al
c06040e9:	01 0e                	add    %ecx,(%esi)
c06040eb:	08 2c 00             	or     %ch,(%eax,%eax,1)
c06040ee:	00 00                	add    %al,(%eax)
c06040f0:	1c 00                	sbb    $0x0,%al
c06040f2:	00 00                	add    %al,(%eax)
c06040f4:	3c c1                	cmp    $0xc1,%al
c06040f6:	ff                   	(bad)  
c06040f7:	ff 2e                	ljmp   *(%esi)
c06040f9:	00 00                	add    %al,(%eax)
c06040fb:	00 00                	add    %al,(%eax)
c06040fd:	41                   	inc    %ecx
c06040fe:	0e                   	push   %cs
c06040ff:	0c 85                	or     $0x85,%al
c0604101:	03 42 0d             	add    0xd(%edx),%eax
c0604104:	05 49 81 04 82       	add    $0x82048149,%eax
c0604109:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c060410e:	41                   	inc    %ecx
c060410f:	c2 41 c1             	ret    $0xc141
c0604112:	41                   	inc    %ecx
c0604113:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0604116:	08 43 0e             	or     %al,0xe(%ebx)
c0604119:	04 00                	add    $0x0,%al
c060411b:	00 2c 00             	add    %ch,(%eax,%eax,1)
c060411e:	00 00                	add    %al,(%eax)
c0604120:	4c                   	dec    %esp
c0604121:	00 00                	add    %al,(%eax)
c0604123:	00 3c c1             	add    %bh,(%ecx,%eax,8)
c0604126:	ff                   	(bad)  
c0604127:	ff 2e                	ljmp   *(%esi)
c0604129:	00 00                	add    %al,(%eax)
c060412b:	00 00                	add    %al,(%eax)
c060412d:	41                   	inc    %ecx
c060412e:	0e                   	push   %cs
c060412f:	0c 85                	or     $0x85,%al
c0604131:	03 42 0d             	add    0xd(%edx),%eax
c0604134:	05 49 81 04 82       	add    $0x82048149,%eax
c0604139:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c060413e:	41                   	inc    %ecx
c060413f:	c2 41 c1             	ret    $0xc141
c0604142:	41                   	inc    %ecx
c0604143:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0604146:	08 43 0e             	or     %al,0xe(%ebx)
c0604149:	04 00                	add    $0x0,%al
c060414b:	00 2c 00             	add    %ch,(%eax,%eax,1)
c060414e:	00 00                	add    %al,(%eax)
c0604150:	7c 00                	jl     c0604152 <.eh_frame+0xaa>
c0604152:	00 00                	add    %al,(%eax)
c0604154:	3c c1                	cmp    $0xc1,%al
c0604156:	ff                   	(bad)  
c0604157:	ff 2e                	ljmp   *(%esi)
c0604159:	00 00                	add    %al,(%eax)
c060415b:	00 00                	add    %al,(%eax)
c060415d:	41                   	inc    %ecx
c060415e:	0e                   	push   %cs
c060415f:	0c 85                	or     $0x85,%al
c0604161:	03 42 0d             	add    0xd(%edx),%eax
c0604164:	05 49 81 04 82       	add    $0x82048149,%eax
c0604169:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c060416e:	41                   	inc    %ecx
c060416f:	c2 41 c1             	ret    $0xc141
c0604172:	41                   	inc    %ecx
c0604173:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0604176:	08 43 0e             	or     %al,0xe(%ebx)
c0604179:	04 00                	add    $0x0,%al
c060417b:	00 2c 00             	add    %ch,(%eax,%eax,1)
c060417e:	00 00                	add    %al,(%eax)
c0604180:	ac                   	lods   %ds:(%esi),%al
c0604181:	00 00                	add    %al,(%eax)
c0604183:	00 3c c1             	add    %bh,(%ecx,%eax,8)
c0604186:	ff                   	(bad)  
c0604187:	ff 2e                	ljmp   *(%esi)
c0604189:	00 00                	add    %al,(%eax)
c060418b:	00 00                	add    %al,(%eax)
c060418d:	41                   	inc    %ecx
c060418e:	0e                   	push   %cs
c060418f:	0c 85                	or     $0x85,%al
c0604191:	03 42 0d             	add    0xd(%edx),%eax
c0604194:	05 49 81 04 82       	add    $0x82048149,%eax
c0604199:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c060419e:	41                   	inc    %ecx
c060419f:	c2 41 c1             	ret    $0xc141
c06041a2:	41                   	inc    %ecx
c06041a3:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c06041a6:	08 43 0e             	or     %al,0xe(%ebx)
c06041a9:	04 00                	add    $0x0,%al
c06041ab:	00 2c 00             	add    %ch,(%eax,%eax,1)
c06041ae:	00 00                	add    %al,(%eax)
c06041b0:	dc 00                	faddl  (%eax)
c06041b2:	00 00                	add    %al,(%eax)
c06041b4:	3c c1                	cmp    $0xc1,%al
c06041b6:	ff                   	(bad)  
c06041b7:	ff 2e                	ljmp   *(%esi)
c06041b9:	00 00                	add    %al,(%eax)
c06041bb:	00 00                	add    %al,(%eax)
c06041bd:	41                   	inc    %ecx
c06041be:	0e                   	push   %cs
c06041bf:	0c 85                	or     $0x85,%al
c06041c1:	03 42 0d             	add    0xd(%edx),%eax
c06041c4:	05 49 81 04 82       	add    $0x82048149,%eax
c06041c9:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c06041ce:	41                   	inc    %ecx
c06041cf:	c2 41 c1             	ret    $0xc141
c06041d2:	41                   	inc    %ecx
c06041d3:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c06041d6:	08 43 0e             	or     %al,0xe(%ebx)
c06041d9:	04 00                	add    $0x0,%al
c06041db:	00 2c 00             	add    %ch,(%eax,%eax,1)
c06041de:	00 00                	add    %al,(%eax)
c06041e0:	0c 01                	or     $0x1,%al
c06041e2:	00 00                	add    %al,(%eax)
c06041e4:	3c c1                	cmp    $0xc1,%al
c06041e6:	ff                   	(bad)  
c06041e7:	ff 2e                	ljmp   *(%esi)
c06041e9:	00 00                	add    %al,(%eax)
c06041eb:	00 00                	add    %al,(%eax)
c06041ed:	41                   	inc    %ecx
c06041ee:	0e                   	push   %cs
c06041ef:	0c 85                	or     $0x85,%al
c06041f1:	03 42 0d             	add    0xd(%edx),%eax
c06041f4:	05 49 81 04 82       	add    $0x82048149,%eax
c06041f9:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c06041fe:	41                   	inc    %ecx
c06041ff:	c2 41 c1             	ret    $0xc141
c0604202:	41                   	inc    %ecx
c0604203:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0604206:	08 43 0e             	or     %al,0xe(%ebx)
c0604209:	04 00                	add    $0x0,%al
c060420b:	00 2c 00             	add    %ch,(%eax,%eax,1)
c060420e:	00 00                	add    %al,(%eax)
c0604210:	3c 01                	cmp    $0x1,%al
c0604212:	00 00                	add    %al,(%eax)
c0604214:	3c c1                	cmp    $0xc1,%al
c0604216:	ff                   	(bad)  
c0604217:	ff 2e                	ljmp   *(%esi)
c0604219:	00 00                	add    %al,(%eax)
c060421b:	00 00                	add    %al,(%eax)
c060421d:	41                   	inc    %ecx
c060421e:	0e                   	push   %cs
c060421f:	0c 85                	or     $0x85,%al
c0604221:	03 42 0d             	add    0xd(%edx),%eax
c0604224:	05 49 81 04 82       	add    $0x82048149,%eax
c0604229:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c060422e:	41                   	inc    %ecx
c060422f:	c2 41 c1             	ret    $0xc141
c0604232:	41                   	inc    %ecx
c0604233:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0604236:	08 43 0e             	or     %al,0xe(%ebx)
c0604239:	04 00                	add    $0x0,%al
c060423b:	00 2c 00             	add    %ch,(%eax,%eax,1)
c060423e:	00 00                	add    %al,(%eax)
c0604240:	6c                   	insb   (%dx),%es:(%edi)
c0604241:	01 00                	add    %eax,(%eax)
c0604243:	00 3c c1             	add    %bh,(%ecx,%eax,8)
c0604246:	ff                   	(bad)  
c0604247:	ff 2e                	ljmp   *(%esi)
c0604249:	00 00                	add    %al,(%eax)
c060424b:	00 00                	add    %al,(%eax)
c060424d:	41                   	inc    %ecx
c060424e:	0e                   	push   %cs
c060424f:	0c 85                	or     $0x85,%al
c0604251:	03 42 0d             	add    0xd(%edx),%eax
c0604254:	05 49 81 04 82       	add    $0x82048149,%eax
c0604259:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c060425e:	41                   	inc    %ecx
c060425f:	c2 41 c1             	ret    $0xc141
c0604262:	41                   	inc    %ecx
c0604263:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0604266:	08 43 0e             	or     %al,0xe(%ebx)
c0604269:	04 00                	add    $0x0,%al
c060426b:	00 2c 00             	add    %ch,(%eax,%eax,1)
c060426e:	00 00                	add    %al,(%eax)
c0604270:	9c                   	pushf  
c0604271:	01 00                	add    %eax,(%eax)
c0604273:	00 3c c1             	add    %bh,(%ecx,%eax,8)
c0604276:	ff                   	(bad)  
c0604277:	ff 2e                	ljmp   *(%esi)
c0604279:	00 00                	add    %al,(%eax)
c060427b:	00 00                	add    %al,(%eax)
c060427d:	41                   	inc    %ecx
c060427e:	0e                   	push   %cs
c060427f:	0c 85                	or     $0x85,%al
c0604281:	03 42 0d             	add    0xd(%edx),%eax
c0604284:	05 49 81 04 82       	add    $0x82048149,%eax
c0604289:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c060428e:	41                   	inc    %ecx
c060428f:	c2 41 c1             	ret    $0xc141
c0604292:	41                   	inc    %ecx
c0604293:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0604296:	08 43 0e             	or     %al,0xe(%ebx)
c0604299:	04 00                	add    $0x0,%al
c060429b:	00 2c 00             	add    %ch,(%eax,%eax,1)
c060429e:	00 00                	add    %al,(%eax)
c06042a0:	cc                   	int3   
c06042a1:	01 00                	add    %eax,(%eax)
c06042a3:	00 3c c1             	add    %bh,(%ecx,%eax,8)
c06042a6:	ff                   	(bad)  
c06042a7:	ff 2e                	ljmp   *(%esi)
c06042a9:	00 00                	add    %al,(%eax)
c06042ab:	00 00                	add    %al,(%eax)
c06042ad:	41                   	inc    %ecx
c06042ae:	0e                   	push   %cs
c06042af:	0c 85                	or     $0x85,%al
c06042b1:	03 42 0d             	add    0xd(%edx),%eax
c06042b4:	05 49 81 04 82       	add    $0x82048149,%eax
c06042b9:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c06042be:	41                   	inc    %ecx
c06042bf:	c2 41 c1             	ret    $0xc141
c06042c2:	41                   	inc    %ecx
c06042c3:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c06042c6:	08 43 0e             	or     %al,0xe(%ebx)
c06042c9:	04 00                	add    $0x0,%al
c06042cb:	00 2c 00             	add    %ch,(%eax,%eax,1)
c06042ce:	00 00                	add    %al,(%eax)
c06042d0:	fc                   	cld    
c06042d1:	01 00                	add    %eax,(%eax)
c06042d3:	00 3c c1             	add    %bh,(%ecx,%eax,8)
c06042d6:	ff                   	(bad)  
c06042d7:	ff 2e                	ljmp   *(%esi)
c06042d9:	00 00                	add    %al,(%eax)
c06042db:	00 00                	add    %al,(%eax)
c06042dd:	41                   	inc    %ecx
c06042de:	0e                   	push   %cs
c06042df:	0c 85                	or     $0x85,%al
c06042e1:	03 42 0d             	add    0xd(%edx),%eax
c06042e4:	05 49 81 04 82       	add    $0x82048149,%eax
c06042e9:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c06042ee:	41                   	inc    %ecx
c06042ef:	c2 41 c1             	ret    $0xc141
c06042f2:	41                   	inc    %ecx
c06042f3:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c06042f6:	08 43 0e             	or     %al,0xe(%ebx)
c06042f9:	04 00                	add    $0x0,%al
c06042fb:	00 2c 00             	add    %ch,(%eax,%eax,1)
c06042fe:	00 00                	add    %al,(%eax)
c0604300:	2c 02                	sub    $0x2,%al
c0604302:	00 00                	add    %al,(%eax)
c0604304:	3c c1                	cmp    $0xc1,%al
c0604306:	ff                   	(bad)  
c0604307:	ff 2e                	ljmp   *(%esi)
c0604309:	00 00                	add    %al,(%eax)
c060430b:	00 00                	add    %al,(%eax)
c060430d:	41                   	inc    %ecx
c060430e:	0e                   	push   %cs
c060430f:	0c 85                	or     $0x85,%al
c0604311:	03 42 0d             	add    0xd(%edx),%eax
c0604314:	05 49 81 04 82       	add    $0x82048149,%eax
c0604319:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c060431e:	41                   	inc    %ecx
c060431f:	c2 41 c1             	ret    $0xc141
c0604322:	41                   	inc    %ecx
c0604323:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0604326:	08 43 0e             	or     %al,0xe(%ebx)
c0604329:	04 00                	add    $0x0,%al
c060432b:	00 2c 00             	add    %ch,(%eax,%eax,1)
c060432e:	00 00                	add    %al,(%eax)
c0604330:	5c                   	pop    %esp
c0604331:	02 00                	add    (%eax),%al
c0604333:	00 3c c1             	add    %bh,(%ecx,%eax,8)
c0604336:	ff                   	(bad)  
c0604337:	ff 2e                	ljmp   *(%esi)
c0604339:	00 00                	add    %al,(%eax)
c060433b:	00 00                	add    %al,(%eax)
c060433d:	41                   	inc    %ecx
c060433e:	0e                   	push   %cs
c060433f:	0c 85                	or     $0x85,%al
c0604341:	03 42 0d             	add    0xd(%edx),%eax
c0604344:	05 49 81 04 82       	add    $0x82048149,%eax
c0604349:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c060434e:	41                   	inc    %ecx
c060434f:	c2 41 c1             	ret    $0xc141
c0604352:	41                   	inc    %ecx
c0604353:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0604356:	08 43 0e             	or     %al,0xe(%ebx)
c0604359:	04 00                	add    $0x0,%al
c060435b:	00 2c 00             	add    %ch,(%eax,%eax,1)
c060435e:	00 00                	add    %al,(%eax)
c0604360:	8c 02                	mov    %es,(%edx)
c0604362:	00 00                	add    %al,(%eax)
c0604364:	3c c1                	cmp    $0xc1,%al
c0604366:	ff                   	(bad)  
c0604367:	ff 2e                	ljmp   *(%esi)
c0604369:	00 00                	add    %al,(%eax)
c060436b:	00 00                	add    %al,(%eax)
c060436d:	41                   	inc    %ecx
c060436e:	0e                   	push   %cs
c060436f:	0c 85                	or     $0x85,%al
c0604371:	03 42 0d             	add    0xd(%edx),%eax
c0604374:	05 49 81 04 82       	add    $0x82048149,%eax
c0604379:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c060437e:	41                   	inc    %ecx
c060437f:	c2 41 c1             	ret    $0xc141
c0604382:	41                   	inc    %ecx
c0604383:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0604386:	08 43 0e             	or     %al,0xe(%ebx)
c0604389:	04 00                	add    $0x0,%al
c060438b:	00 2c 00             	add    %ch,(%eax,%eax,1)
c060438e:	00 00                	add    %al,(%eax)
c0604390:	bc 02 00 00 3c       	mov    $0x3c000002,%esp
c0604395:	c1 ff ff             	sar    $0xff,%edi
c0604398:	2e 00 00             	add    %al,%cs:(%eax)
c060439b:	00 00                	add    %al,(%eax)
c060439d:	41                   	inc    %ecx
c060439e:	0e                   	push   %cs
c060439f:	0c 85                	or     $0x85,%al
c06043a1:	03 42 0d             	add    0xd(%edx),%eax
c06043a4:	05 49 81 04 82       	add    $0x82048149,%eax
c06043a9:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c06043ae:	41                   	inc    %ecx
c06043af:	c2 41 c1             	ret    $0xc141
c06043b2:	41                   	inc    %ecx
c06043b3:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c06043b6:	08 43 0e             	or     %al,0xe(%ebx)
c06043b9:	04 00                	add    $0x0,%al
c06043bb:	00 2c 00             	add    %ch,(%eax,%eax,1)
c06043be:	00 00                	add    %al,(%eax)
c06043c0:	ec                   	in     (%dx),%al
c06043c1:	02 00                	add    (%eax),%al
c06043c3:	00 3c c1             	add    %bh,(%ecx,%eax,8)
c06043c6:	ff                   	(bad)  
c06043c7:	ff 2e                	ljmp   *(%esi)
c06043c9:	00 00                	add    %al,(%eax)
c06043cb:	00 00                	add    %al,(%eax)
c06043cd:	41                   	inc    %ecx
c06043ce:	0e                   	push   %cs
c06043cf:	0c 85                	or     $0x85,%al
c06043d1:	03 42 0d             	add    0xd(%edx),%eax
c06043d4:	05 49 81 04 82       	add    $0x82048149,%eax
c06043d9:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c06043de:	41                   	inc    %ecx
c06043df:	c2 41 c1             	ret    $0xc141
c06043e2:	41                   	inc    %ecx
c06043e3:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c06043e6:	08 43 0e             	or     %al,0xe(%ebx)
c06043e9:	04 00                	add    $0x0,%al
c06043eb:	00 2c 00             	add    %ch,(%eax,%eax,1)
c06043ee:	00 00                	add    %al,(%eax)
c06043f0:	1c 03                	sbb    $0x3,%al
c06043f2:	00 00                	add    %al,(%eax)
c06043f4:	3c c1                	cmp    $0xc1,%al
c06043f6:	ff                   	(bad)  
c06043f7:	ff 2e                	ljmp   *(%esi)
c06043f9:	00 00                	add    %al,(%eax)
c06043fb:	00 00                	add    %al,(%eax)
c06043fd:	41                   	inc    %ecx
c06043fe:	0e                   	push   %cs
c06043ff:	0c 85                	or     $0x85,%al
c0604401:	03 42 0d             	add    0xd(%edx),%eax
c0604404:	05 49 81 04 82       	add    $0x82048149,%eax
c0604409:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c060440e:	41                   	inc    %ecx
c060440f:	c2 41 c1             	ret    $0xc141
c0604412:	41                   	inc    %ecx
c0604413:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0604416:	08 43 0e             	or     %al,0xe(%ebx)
c0604419:	04 00                	add    $0x0,%al
c060441b:	00 2c 00             	add    %ch,(%eax,%eax,1)
c060441e:	00 00                	add    %al,(%eax)
c0604420:	4c                   	dec    %esp
c0604421:	03 00                	add    (%eax),%eax
c0604423:	00 3c c1             	add    %bh,(%ecx,%eax,8)
c0604426:	ff                   	(bad)  
c0604427:	ff 2e                	ljmp   *(%esi)
c0604429:	00 00                	add    %al,(%eax)
c060442b:	00 00                	add    %al,(%eax)
c060442d:	41                   	inc    %ecx
c060442e:	0e                   	push   %cs
c060442f:	0c 85                	or     $0x85,%al
c0604431:	03 42 0d             	add    0xd(%edx),%eax
c0604434:	05 49 81 04 82       	add    $0x82048149,%eax
c0604439:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c060443e:	41                   	inc    %ecx
c060443f:	c2 41 c1             	ret    $0xc141
c0604442:	41                   	inc    %ecx
c0604443:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0604446:	08 43 0e             	or     %al,0xe(%ebx)
c0604449:	04 00                	add    $0x0,%al
c060444b:	00 2c 00             	add    %ch,(%eax,%eax,1)
c060444e:	00 00                	add    %al,(%eax)
c0604450:	7c 03                	jl     c0604455 <.eh_frame+0x3ad>
c0604452:	00 00                	add    %al,(%eax)
c0604454:	3c c1                	cmp    $0xc1,%al
c0604456:	ff                   	(bad)  
c0604457:	ff 2e                	ljmp   *(%esi)
c0604459:	00 00                	add    %al,(%eax)
c060445b:	00 00                	add    %al,(%eax)
c060445d:	41                   	inc    %ecx
c060445e:	0e                   	push   %cs
c060445f:	0c 85                	or     $0x85,%al
c0604461:	03 42 0d             	add    0xd(%edx),%eax
c0604464:	05 49 81 04 82       	add    $0x82048149,%eax
c0604469:	05 80 06 5b c0       	add    $0xc05b0680,%eax
c060446e:	41                   	inc    %ecx
c060446f:	c2 41 c1             	ret    $0xc141
c0604472:	41                   	inc    %ecx
c0604473:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0604476:	08 43 0e             	or     %al,0xe(%ebx)
c0604479:	04 00                	add    $0x0,%al
c060447b:	00 28                	add    %ch,(%eax)
c060447d:	00 00                	add    %al,(%eax)
c060447f:	00 d8                	add    %bl,%al
c0604481:	03 00                	add    (%eax),%eax
c0604483:	00 3c c1             	add    %bh,(%ecx,%eax,8)
c0604486:	ff                   	(bad)  
c0604487:	ff 2b                	ljmp   *(%ebx)
c0604489:	00 00                	add    %al,(%eax)
c060448b:	00 00                	add    %al,(%eax)
c060448d:	41                   	inc    %ecx
c060448e:	0e                   	push   %cs
c060448f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0604495:	49                   	dec    %ecx
c0604496:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c060449c:	5b                   	pop    %ebx
c060449d:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c06044a1:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c06044a5:	04 04                	add    $0x4,%al
c06044a7:	00 28                	add    %ch,(%eax)
c06044a9:	00 00                	add    %al,(%eax)
c06044ab:	00 04 04             	add    %al,(%esp,%eax,1)
c06044ae:	00 00                	add    %al,(%eax)
c06044b0:	40                   	inc    %eax
c06044b1:	c1 ff ff             	sar    $0xff,%edi
c06044b4:	2b 00                	sub    (%eax),%eax
c06044b6:	00 00                	add    %al,(%eax)
c06044b8:	00 41 0e             	add    %al,0xe(%ecx)
c06044bb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c06044c1:	49                   	dec    %ecx
c06044c2:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c06044c8:	5b                   	pop    %ebx
c06044c9:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c06044cd:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c06044d1:	04 04                	add    $0x4,%al
c06044d3:	00 28                	add    %ch,(%eax)
c06044d5:	00 00                	add    %al,(%eax)
c06044d7:	00 30                	add    %dh,(%eax)
c06044d9:	04 00                	add    $0x0,%al
c06044db:	00 44 c1 ff          	add    %al,-0x1(%ecx,%eax,8)
c06044df:	ff 2b                	ljmp   *(%ebx)
c06044e1:	00 00                	add    %al,(%eax)
c06044e3:	00 00                	add    %al,(%eax)
c06044e5:	41                   	inc    %ecx
c06044e6:	0e                   	push   %cs
c06044e7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c06044ed:	49                   	dec    %ecx
c06044ee:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c06044f4:	5b                   	pop    %ebx
c06044f5:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c06044f9:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c06044fd:	04 04                	add    $0x4,%al
c06044ff:	00 28                	add    %ch,(%eax)
c0604501:	00 00                	add    %al,(%eax)
c0604503:	00 5c 04 00          	add    %bl,0x0(%esp,%eax,1)
c0604507:	00 48 c1             	add    %cl,-0x3f(%eax)
c060450a:	ff                   	(bad)  
c060450b:	ff 2b                	ljmp   *(%ebx)
c060450d:	00 00                	add    %al,(%eax)
c060450f:	00 00                	add    %al,(%eax)
c0604511:	41                   	inc    %ecx
c0604512:	0e                   	push   %cs
c0604513:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0604519:	49                   	dec    %ecx
c060451a:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c0604520:	5b                   	pop    %ebx
c0604521:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c0604525:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c0604529:	04 04                	add    $0x4,%al
c060452b:	00 28                	add    %ch,(%eax)
c060452d:	00 00                	add    %al,(%eax)
c060452f:	00 88 04 00 00 4c    	add    %cl,0x4c000004(%eax)
c0604535:	c1 ff ff             	sar    $0xff,%edi
c0604538:	2b 00                	sub    (%eax),%eax
c060453a:	00 00                	add    %al,(%eax)
c060453c:	00 41 0e             	add    %al,0xe(%ecx)
c060453f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0604545:	49                   	dec    %ecx
c0604546:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c060454c:	5b                   	pop    %ebx
c060454d:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c0604551:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c0604555:	04 04                	add    $0x4,%al
c0604557:	00 28                	add    %ch,(%eax)
c0604559:	00 00                	add    %al,(%eax)
c060455b:	00 b4 04 00 00 50 c1 	add    %dh,-0x3eb00000(%esp,%eax,1)
c0604562:	ff                   	(bad)  
c0604563:	ff 2b                	ljmp   *(%ebx)
c0604565:	00 00                	add    %al,(%eax)
c0604567:	00 00                	add    %al,(%eax)
c0604569:	41                   	inc    %ecx
c060456a:	0e                   	push   %cs
c060456b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0604571:	49                   	dec    %ecx
c0604572:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c0604578:	5b                   	pop    %ebx
c0604579:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c060457d:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c0604581:	04 04                	add    $0x4,%al
c0604583:	00 28                	add    %ch,(%eax)
c0604585:	00 00                	add    %al,(%eax)
c0604587:	00 e0                	add    %ah,%al
c0604589:	04 00                	add    $0x0,%al
c060458b:	00 54 c1 ff          	add    %dl,-0x1(%ecx,%eax,8)
c060458f:	ff 2b                	ljmp   *(%ebx)
c0604591:	00 00                	add    %al,(%eax)
c0604593:	00 00                	add    %al,(%eax)
c0604595:	41                   	inc    %ecx
c0604596:	0e                   	push   %cs
c0604597:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c060459d:	49                   	dec    %ecx
c060459e:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c06045a4:	5b                   	pop    %ebx
c06045a5:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c06045a9:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c06045ad:	04 04                	add    $0x4,%al
c06045af:	00 28                	add    %ch,(%eax)
c06045b1:	00 00                	add    %al,(%eax)
c06045b3:	00 0c 05 00 00 58 c1 	add    %cl,-0x3ea80000(,%eax,1)
c06045ba:	ff                   	(bad)  
c06045bb:	ff 2b                	ljmp   *(%ebx)
c06045bd:	00 00                	add    %al,(%eax)
c06045bf:	00 00                	add    %al,(%eax)
c06045c1:	41                   	inc    %ecx
c06045c2:	0e                   	push   %cs
c06045c3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c06045c9:	49                   	dec    %ecx
c06045ca:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c06045d0:	5b                   	pop    %ebx
c06045d1:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c06045d5:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c06045d9:	04 04                	add    $0x4,%al
c06045db:	00 28                	add    %ch,(%eax)
c06045dd:	00 00                	add    %al,(%eax)
c06045df:	00 38                	add    %bh,(%eax)
c06045e1:	05 00 00 5c c1       	add    $0xc15c0000,%eax
c06045e6:	ff                   	(bad)  
c06045e7:	ff 2b                	ljmp   *(%ebx)
c06045e9:	00 00                	add    %al,(%eax)
c06045eb:	00 00                	add    %al,(%eax)
c06045ed:	41                   	inc    %ecx
c06045ee:	0e                   	push   %cs
c06045ef:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c06045f5:	49                   	dec    %ecx
c06045f6:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c06045fc:	5b                   	pop    %ebx
c06045fd:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c0604601:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c0604605:	04 04                	add    $0x4,%al
c0604607:	00 28                	add    %ch,(%eax)
c0604609:	00 00                	add    %al,(%eax)
c060460b:	00 64 05 00          	add    %ah,0x0(%ebp,%eax,1)
c060460f:	00 60 c1             	add    %ah,-0x3f(%eax)
c0604612:	ff                   	(bad)  
c0604613:	ff 2b                	ljmp   *(%ebx)
c0604615:	00 00                	add    %al,(%eax)
c0604617:	00 00                	add    %al,(%eax)
c0604619:	41                   	inc    %ecx
c060461a:	0e                   	push   %cs
c060461b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0604621:	49                   	dec    %ecx
c0604622:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c0604628:	5b                   	pop    %ebx
c0604629:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c060462d:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c0604631:	04 04                	add    $0x4,%al
c0604633:	00 28                	add    %ch,(%eax)
c0604635:	00 00                	add    %al,(%eax)
c0604637:	00 90 05 00 00 64    	add    %dl,0x64000005(%eax)
c060463d:	c1 ff ff             	sar    $0xff,%edi
c0604640:	2b 00                	sub    (%eax),%eax
c0604642:	00 00                	add    %al,(%eax)
c0604644:	00 41 0e             	add    %al,0xe(%ecx)
c0604647:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c060464d:	49                   	dec    %ecx
c060464e:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c0604654:	5b                   	pop    %ebx
c0604655:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c0604659:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c060465d:	04 04                	add    $0x4,%al
c060465f:	00 28                	add    %ch,(%eax)
c0604661:	00 00                	add    %al,(%eax)
c0604663:	00 bc 05 00 00 68 c1 	add    %bh,-0x3e980000(%ebp,%eax,1)
c060466a:	ff                   	(bad)  
c060466b:	ff 2b                	ljmp   *(%ebx)
c060466d:	00 00                	add    %al,(%eax)
c060466f:	00 00                	add    %al,(%eax)
c0604671:	41                   	inc    %ecx
c0604672:	0e                   	push   %cs
c0604673:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0604679:	49                   	dec    %ecx
c060467a:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c0604680:	5b                   	pop    %ebx
c0604681:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c0604685:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c0604689:	04 04                	add    $0x4,%al
c060468b:	00 28                	add    %ch,(%eax)
c060468d:	00 00                	add    %al,(%eax)
c060468f:	00 e8                	add    %ch,%al
c0604691:	05 00 00 6c c1       	add    $0xc16c0000,%eax
c0604696:	ff                   	(bad)  
c0604697:	ff 2b                	ljmp   *(%ebx)
c0604699:	00 00                	add    %al,(%eax)
c060469b:	00 00                	add    %al,(%eax)
c060469d:	41                   	inc    %ecx
c060469e:	0e                   	push   %cs
c060469f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c06046a5:	49                   	dec    %ecx
c06046a6:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c06046ac:	5b                   	pop    %ebx
c06046ad:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c06046b1:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c06046b5:	04 04                	add    $0x4,%al
c06046b7:	00 28                	add    %ch,(%eax)
c06046b9:	00 00                	add    %al,(%eax)
c06046bb:	00 14 06             	add    %dl,(%esi,%eax,1)
c06046be:	00 00                	add    %al,(%eax)
c06046c0:	70 c1                	jo     c0604683 <.eh_frame+0x5db>
c06046c2:	ff                   	(bad)  
c06046c3:	ff 2b                	ljmp   *(%ebx)
c06046c5:	00 00                	add    %al,(%eax)
c06046c7:	00 00                	add    %al,(%eax)
c06046c9:	41                   	inc    %ecx
c06046ca:	0e                   	push   %cs
c06046cb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c06046d1:	49                   	dec    %ecx
c06046d2:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c06046d8:	5b                   	pop    %ebx
c06046d9:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c06046dd:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c06046e1:	04 04                	add    $0x4,%al
c06046e3:	00 28                	add    %ch,(%eax)
c06046e5:	00 00                	add    %al,(%eax)
c06046e7:	00 40 06             	add    %al,0x6(%eax)
c06046ea:	00 00                	add    %al,(%eax)
c06046ec:	74 c1                	je     c06046af <.eh_frame+0x607>
c06046ee:	ff                   	(bad)  
c06046ef:	ff 2b                	ljmp   *(%ebx)
c06046f1:	00 00                	add    %al,(%eax)
c06046f3:	00 00                	add    %al,(%eax)
c06046f5:	41                   	inc    %ecx
c06046f6:	0e                   	push   %cs
c06046f7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c06046fd:	49                   	dec    %ecx
c06046fe:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c0604704:	5b                   	pop    %ebx
c0604705:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c0604709:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c060470d:	04 04                	add    $0x4,%al
c060470f:	00 28                	add    %ch,(%eax)
c0604711:	00 00                	add    %al,(%eax)
c0604713:	00 6c 06 00          	add    %ch,0x0(%esi,%eax,1)
c0604717:	00 78 c1             	add    %bh,-0x3f(%eax)
c060471a:	ff                   	(bad)  
c060471b:	ff 2b                	ljmp   *(%ebx)
c060471d:	00 00                	add    %al,(%eax)
c060471f:	00 00                	add    %al,(%eax)
c0604721:	41                   	inc    %ecx
c0604722:	0e                   	push   %cs
c0604723:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0604729:	49                   	dec    %ecx
c060472a:	81 03 82 04 80 05    	addl   $0x5800482,(%ebx)
c0604730:	5b                   	pop    %ebx
c0604731:	c0 41 c2 41          	rolb   $0x41,-0x3e(%ecx)
c0604735:	c1 41 c5 0c          	roll   $0xc,-0x3b(%ecx)
c0604739:	04 04                	add    $0x4,%al
c060473b:	00 10                	add    %dl,(%eax)
c060473d:	00 00                	add    %al,(%eax)
c060473f:	00 98 06 00 00 7c    	add    %bl,0x7c000006(%eax)
c0604745:	c1 ff ff             	sar    $0xff,%edi
c0604748:	39 04 00             	cmp    %eax,(%eax,%eax,1)
c060474b:	00 00                	add    %al,(%eax)
c060474d:	00 00                	add    %al,(%eax)
	...

c0604750 <.eh_frame>:
c0604750:	14 00                	adc    $0x0,%al
c0604752:	00 00                	add    %al,(%eax)
c0604754:	00 00                	add    %al,(%eax)
c0604756:	00 00                	add    %al,(%eax)
c0604758:	01 7a 52             	add    %edi,0x52(%edx)
c060475b:	00 01                	add    %al,(%ecx)
c060475d:	7c 08                	jl     c0604767 <.eh_frame+0x17>
c060475f:	01 1b                	add    %ebx,(%ebx)
c0604761:	0c 04                	or     $0x4,%al
c0604763:	04 88                	add    $0x88,%al
c0604765:	01 00                	add    %eax,(%eax)
c0604767:	00 14 00             	add    %dl,(%eax,%eax,1)
c060476a:	00 00                	add    %al,(%eax)
c060476c:	1c 00                	sbb    $0x0,%al
c060476e:	00 00                	add    %al,(%eax)
c0604770:	90                   	nop
c0604771:	c5 ff ff             	(bad)  
c0604774:	30 00                	xor    %al,(%eax)
c0604776:	00 00                	add    %al,(%eax)
c0604778:	00 43 0e             	add    %al,0xe(%ebx)
c060477b:	20 6c 0e 04          	and    %ch,0x4(%esi,%ecx,1)
	...

c0604780 <.eh_frame>:
c0604780:	14 00                	adc    $0x0,%al
c0604782:	00 00                	add    %al,(%eax)
c0604784:	00 00                	add    %al,(%eax)
c0604786:	00 00                	add    %al,(%eax)
c0604788:	01 7a 52             	add    %edi,0x52(%edx)
c060478b:	00 01                	add    %al,(%ecx)
c060478d:	7c 08                	jl     c0604797 <.eh_frame+0x17>
c060478f:	01 1b                	add    %ebx,(%ebx)
c0604791:	0c 04                	or     $0x4,%al
c0604793:	04 88                	add    $0x88,%al
c0604795:	01 00                	add    %eax,(%eax)
c0604797:	00 10                	add    %dl,(%eax)
c0604799:	00 00                	add    %al,(%eax)
c060479b:	00 1c 00             	add    %bl,(%eax,%eax,1)
c060479e:	00 00                	add    %al,(%eax)
c06047a0:	90                   	nop
c06047a1:	c5 ff ff             	(bad)  
c06047a4:	45                   	inc    %ebp
c06047a5:	00 00                	add    %al,(%eax)
c06047a7:	00 00                	add    %al,(%eax)
c06047a9:	00 00                	add    %al,(%eax)
	...

c06047ac <.eh_frame>:
c06047ac:	14 00                	adc    $0x0,%al
c06047ae:	00 00                	add    %al,(%eax)
c06047b0:	00 00                	add    %al,(%eax)
c06047b2:	00 00                	add    %al,(%eax)
c06047b4:	01 7a 52             	add    %edi,0x52(%edx)
c06047b7:	00 01                	add    %al,(%ecx)
c06047b9:	7c 08                	jl     c06047c3 <.eh_frame+0x17>
c06047bb:	01 1b                	add    %ebx,(%ebx)
c06047bd:	0c 04                	or     $0x4,%al
c06047bf:	04 88                	add    $0x88,%al
c06047c1:	01 00                	add    %eax,(%eax)
c06047c3:	00 28                	add    %ch,(%eax)
c06047c5:	00 00                	add    %al,(%eax)
c06047c7:	00 1c 00             	add    %bl,(%eax,%eax,1)
c06047ca:	00 00                	add    %al,(%eax)
c06047cc:	b4 c5                	mov    $0xc5,%ah
c06047ce:	ff                   	(bad)  
c06047cf:	ff                   	(bad)  
c06047d0:	3f                   	aas    
c06047d1:	00 00                	add    %al,(%eax)
c06047d3:	00 00                	add    %al,(%eax)
c06047d5:	41                   	inc    %ecx
c06047d6:	0e                   	push   %cs
c06047d7:	08 87 02 4b 0e 0c    	or     %al,0xc0e4b02(%edi)
c06047dd:	86 03                	xchg   %al,(%ebx)
c06047df:	41                   	inc    %ecx
c06047e0:	0e                   	push   %cs
c06047e1:	10 83 04 6f c3 0e    	adc    %al,0xec36f04(%ebx)
c06047e7:	0c 41                	or     $0x41,%al
c06047e9:	c6                   	(bad)  
c06047ea:	0e                   	push   %cs
c06047eb:	08 41 c7             	or     %al,-0x39(%ecx)
c06047ee:	0e                   	push   %cs
c06047ef:	04 20                	add    $0x20,%al
c06047f1:	00 00                	add    %al,(%eax)
c06047f3:	00 48 00             	add    %cl,0x0(%eax)
c06047f6:	00 00                	add    %al,(%eax)
c06047f8:	c8 c5 ff ff          	enter  $0xffc5,$0xff
c06047fc:	67 00 00             	add    %al,(%bx,%si)
c06047ff:	00 00                	add    %al,(%eax)
c0604801:	41                   	inc    %ecx
c0604802:	0e                   	push   %cs
c0604803:	08 83 02 02 4e 0a    	or     %al,0xa4e0202(%ebx)
c0604809:	c3                   	ret    
c060480a:	0e                   	push   %cs
c060480b:	04 51                	add    $0x51,%al
c060480d:	0b 46 c3             	or     -0x3d(%esi),%eax
c0604810:	0e                   	push   %cs
c0604811:	04 00                	add    $0x0,%al
c0604813:	00 10                	add    %dl,(%eax)
c0604815:	00 00                	add    %al,(%eax)
c0604817:	00 6c 00 00          	add    %ch,0x0(%eax,%eax,1)
c060481b:	00 14 c6             	add    %dl,(%esi,%eax,8)
c060481e:	ff                   	(bad)  
c060481f:	ff 35 00 00 00 00    	pushl  0x0
c0604825:	00 00                	add    %al,(%eax)
c0604827:	00 10                	add    %dl,(%eax)
c0604829:	00 00                	add    %al,(%eax)
c060482b:	00 80 00 00 00 40    	add    %al,0x40000000(%eax)
c0604831:	c6                   	(bad)  
c0604832:	ff                   	(bad)  
c0604833:	ff 03                	incl   (%ebx)
c0604835:	00 00                	add    %al,(%eax)
c0604837:	00 00                	add    %al,(%eax)
c0604839:	00 00                	add    %al,(%eax)
c060483b:	00 14 00             	add    %dl,(%eax,%eax,1)
c060483e:	00 00                	add    %al,(%eax)
c0604840:	94                   	xchg   %eax,%esp
c0604841:	00 00                	add    %al,(%eax)
c0604843:	00 3c c6             	add    %bh,(%esi,%eax,8)
c0604846:	ff                   	(bad)  
c0604847:	ff 24 00             	jmp    *(%eax,%eax,1)
c060484a:	00 00                	add    %al,(%eax)
c060484c:	00 43 0e             	add    %al,0xe(%ebx)
c060484f:	14 60                	adc    $0x60,%al
c0604851:	0e                   	push   %cs
c0604852:	04 00                	add    $0x0,%al
c0604854:	38 00                	cmp    %al,(%eax)
c0604856:	00 00                	add    %al,(%eax)
c0604858:	ac                   	lods   %ds:(%esi),%al
c0604859:	00 00                	add    %al,(%eax)
c060485b:	00 54 c6 ff          	add    %dl,-0x1(%esi,%eax,8)
c060485f:	ff                   	(bad)  
c0604860:	fc                   	cld    
c0604861:	00 00                	add    %al,(%eax)
c0604863:	00 00                	add    %al,(%eax)
c0604865:	41                   	inc    %ecx
c0604866:	0e                   	push   %cs
c0604867:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
c060486d:	87 03                	xchg   %eax,(%ebx)
c060486f:	41                   	inc    %ecx
c0604870:	0e                   	push   %cs
c0604871:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
c0604877:	83 05 43 0e 38 02 e9 	addl   $0xffffffe9,0x2380e43
c060487e:	0e                   	push   %cs
c060487f:	14 48                	adc    $0x48,%al
c0604881:	c3                   	ret    
c0604882:	0e                   	push   %cs
c0604883:	10 41 c6             	adc    %al,-0x3a(%ecx)
c0604886:	0e                   	push   %cs
c0604887:	0c 41                	or     $0x41,%al
c0604889:	c7                   	(bad)  
c060488a:	0e                   	push   %cs
c060488b:	08 41 c5             	or     %al,-0x3b(%ecx)
c060488e:	0e                   	push   %cs
c060488f:	04 18                	add    $0x18,%al
c0604891:	00 00                	add    %al,(%eax)
c0604893:	00 e8                	add    %ch,%al
c0604895:	00 00                	add    %al,(%eax)
c0604897:	00 18                	add    %bl,(%eax)
c0604899:	c7                   	(bad)  
c060489a:	ff                   	(bad)  
c060489b:	ff                   	(bad)  
c060489c:	38 00                	cmp    %al,(%eax)
c060489e:	00 00                	add    %al,(%eax)
c06048a0:	00 46 0e             	add    %al,0xe(%esi)
c06048a3:	08 83 02 71 c3 0e    	or     %al,0xec37102(%ebx)
c06048a9:	04 00                	add    $0x0,%al
c06048ab:	00 38                	add    %bh,(%eax)
c06048ad:	00 00                	add    %al,(%eax)
c06048af:	00 04 01             	add    %al,(%ecx,%eax,1)
c06048b2:	00 00                	add    %al,(%eax)
c06048b4:	3c c7                	cmp    $0xc7,%al
c06048b6:	ff                   	(bad)  
c06048b7:	ff 8c 00 00 00 00 41 	decl   0x41000000(%eax,%eax,1)
c06048be:	0e                   	push   %cs
c06048bf:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
c06048c5:	87 03                	xchg   %eax,(%ebx)
c06048c7:	41                   	inc    %ecx
c06048c8:	0e                   	push   %cs
c06048c9:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
c06048cf:	83 05 45 0e 18 02 7e 	addl   $0x7e,0x2180e45
c06048d6:	0e                   	push   %cs
c06048d7:	14 41                	adc    $0x41,%al
c06048d9:	c3                   	ret    
c06048da:	0e                   	push   %cs
c06048db:	10 41 c6             	adc    %al,-0x3a(%ecx)
c06048de:	0e                   	push   %cs
c06048df:	0c 41                	or     $0x41,%al
c06048e1:	c7                   	(bad)  
c06048e2:	0e                   	push   %cs
c06048e3:	08 41 c5             	or     %al,-0x3b(%ecx)
c06048e6:	0e                   	push   %cs
c06048e7:	04 38                	add    $0x38,%al
c06048e9:	00 00                	add    %al,(%eax)
c06048eb:	00 40 01             	add    %al,0x1(%eax)
c06048ee:	00 00                	add    %al,(%eax)
c06048f0:	90                   	nop
c06048f1:	c7                   	(bad)  
c06048f2:	ff                   	(bad)  
c06048f3:	ff a0 00 00 00 00    	jmp    *0x0(%eax)
c06048f9:	41                   	inc    %ecx
c06048fa:	0e                   	push   %cs
c06048fb:	08 86 02 43 0e 0c    	or     %al,0xc0e4302(%esi)
c0604901:	83 03 43             	addl   $0x43,(%ebx)
c0604904:	0e                   	push   %cs
c0604905:	40                   	inc    %eax
c0604906:	02 5d 0a             	add    0xa(%ebp),%bl
c0604909:	0e                   	push   %cs
c060490a:	0c 43                	or     $0x43,%al
c060490c:	c3                   	ret    
c060490d:	0e                   	push   %cs
c060490e:	08 41 c6             	or     %al,-0x3a(%ecx)
c0604911:	0e                   	push   %cs
c0604912:	04 48                	add    $0x48,%al
c0604914:	0b 59 0a             	or     0xa(%ecx),%ebx
c0604917:	0e                   	push   %cs
c0604918:	0c 41                	or     $0x41,%al
c060491a:	c3                   	ret    
c060491b:	0e                   	push   %cs
c060491c:	08 41 c6             	or     %al,-0x3a(%ecx)
c060491f:	0e                   	push   %cs
c0604920:	04 45                	add    $0x45,%al
c0604922:	0b 00                	or     (%eax),%eax
c0604924:	44                   	inc    %esp
c0604925:	00 00                	add    %al,(%eax)
c0604927:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c060492b:	00 f4                	add    %dh,%ah
c060492d:	c7                   	(bad)  
c060492e:	ff                   	(bad)  
c060492f:	ff 86 00 00 00 00    	incl   0x0(%esi)
c0604935:	41                   	inc    %ecx
c0604936:	0e                   	push   %cs
c0604937:	08 87 02 43 0e 0c    	or     %al,0xc0e4302(%edi)
c060493d:	86 03                	xchg   %al,(%ebx)
c060493f:	41                   	inc    %ecx
c0604940:	0e                   	push   %cs
c0604941:	10 83 04 43 0e 40    	adc    %al,0x400e4304(%ebx)
c0604947:	02 5d 0a             	add    0xa(%ebp),%bl
c060494a:	0e                   	push   %cs
c060494b:	10 41 c3             	adc    %al,-0x3d(%ecx)
c060494e:	0e                   	push   %cs
c060494f:	0c 41                	or     $0x41,%al
c0604951:	c6                   	(bad)  
c0604952:	0e                   	push   %cs
c0604953:	08 41 c7             	or     %al,-0x39(%ecx)
c0604956:	0e                   	push   %cs
c0604957:	04 48                	add    $0x48,%al
c0604959:	0b 52 0e             	or     0xe(%edx),%edx
c060495c:	10 41 c3             	adc    %al,-0x3d(%ecx)
c060495f:	0e                   	push   %cs
c0604960:	0c 41                	or     $0x41,%al
c0604962:	c6                   	(bad)  
c0604963:	0e                   	push   %cs
c0604964:	08 41 c7             	or     %al,-0x39(%ecx)
c0604967:	0e                   	push   %cs
c0604968:	04 00                	add    $0x0,%al
c060496a:	00 00                	add    %al,(%eax)
c060496c:	10 00                	adc    %al,(%eax)
c060496e:	00 00                	add    %al,(%eax)
c0604970:	c4 01                	les    (%ecx),%eax
c0604972:	00 00                	add    %al,(%eax)
c0604974:	3c c8                	cmp    $0xc8,%al
c0604976:	ff                   	(bad)  
c0604977:	ff 35 00 00 00 00    	pushl  0x0
c060497d:	00 00                	add    %al,(%eax)
	...

c0604980 <.eh_frame>:
c0604980:	14 00                	adc    $0x0,%al
c0604982:	00 00                	add    %al,(%eax)
c0604984:	00 00                	add    %al,(%eax)
c0604986:	00 00                	add    %al,(%eax)
c0604988:	01 7a 52             	add    %edi,0x52(%edx)
c060498b:	00 01                	add    %al,(%ecx)
c060498d:	7c 08                	jl     c0604997 <.eh_frame+0x17>
c060498f:	01 1b                	add    %ebx,(%ebx)
c0604991:	0c 04                	or     $0x4,%al
c0604993:	04 88                	add    $0x88,%al
c0604995:	01 00                	add    %eax,(%eax)
c0604997:	00 34 00             	add    %dh,(%eax,%eax,1)
c060499a:	00 00                	add    %al,(%eax)
c060499c:	1c 00                	sbb    $0x0,%al
c060499e:	00 00                	add    %al,(%eax)
c06049a0:	50                   	push   %eax
c06049a1:	c8 ff ff 55          	enter  $0xffff,$0x55
c06049a5:	00 00                	add    %al,(%eax)
c06049a7:	00 00                	add    %al,(%eax)
c06049a9:	41                   	inc    %ecx
c06049aa:	0e                   	push   %cs
c06049ab:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
c06049b1:	87 03                	xchg   %eax,(%ebx)
c06049b3:	41                   	inc    %ecx
c06049b4:	0e                   	push   %cs
c06049b5:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
c06049bb:	83 05 02 4d c3 0e 10 	addl   $0x10,0xec34d02
c06049c2:	41                   	inc    %ecx
c06049c3:	c6                   	(bad)  
c06049c4:	0e                   	push   %cs
c06049c5:	0c 41                	or     $0x41,%al
c06049c7:	c7                   	(bad)  
c06049c8:	0e                   	push   %cs
c06049c9:	08 41 c5             	or     %al,-0x3b(%ecx)
c06049cc:	0e                   	push   %cs
c06049cd:	04 00                	add    $0x0,%al
c06049cf:	00 10                	add    %dl,(%eax)
c06049d1:	00 00                	add    %al,(%eax)
c06049d3:	00 54 00 00          	add    %dl,0x0(%eax,%eax,1)
c06049d7:	00 78 c8             	add    %bh,-0x38(%eax)
c06049da:	ff                   	(bad)  
c06049db:	ff 1a                	lcall  *(%edx)
c06049dd:	00 00                	add    %al,(%eax)
c06049df:	00 00                	add    %al,(%eax)
c06049e1:	00 00                	add    %al,(%eax)
c06049e3:	00 28                	add    %ch,(%eax)
c06049e5:	00 00                	add    %al,(%eax)
c06049e7:	00 68 00             	add    %ch,0x0(%eax)
c06049ea:	00 00                	add    %al,(%eax)
c06049ec:	84 c8                	test   %cl,%al
c06049ee:	ff                   	(bad)  
c06049ef:	ff                   	(bad)  
c06049f0:	3e 00 00             	add    %al,%ds:(%eax)
c06049f3:	00 00                	add    %al,(%eax)
c06049f5:	41                   	inc    %ecx
c06049f6:	0e                   	push   %cs
c06049f7:	08 87 02 41 0e 0c    	or     %al,0xc0e4102(%edi)
c06049fd:	86 03                	xchg   %al,(%ebx)
c06049ff:	41                   	inc    %ecx
c0604a00:	0e                   	push   %cs
c0604a01:	10 83 04 78 c3 0e    	adc    %al,0xec37804(%ebx)
c0604a07:	0c 41                	or     $0x41,%al
c0604a09:	c6                   	(bad)  
c0604a0a:	0e                   	push   %cs
c0604a0b:	08 41 c7             	or     %al,-0x39(%ecx)
c0604a0e:	0e                   	push   %cs
c0604a0f:	04                 	add    $0x14,%al

c0604a10 <.eh_frame>:
c0604a10:	14 00                	adc    $0x0,%al
c0604a12:	00 00                	add    %al,(%eax)
c0604a14:	00 00                	add    %al,(%eax)
c0604a16:	00 00                	add    %al,(%eax)
c0604a18:	01 7a 52             	add    %edi,0x52(%edx)
c0604a1b:	00 01                	add    %al,(%ecx)
c0604a1d:	7c 08                	jl     c0604a27 <.eh_frame+0x17>
c0604a1f:	01 1b                	add    %ebx,(%ebx)
c0604a21:	0c 04                	or     $0x4,%al
c0604a23:	04 88                	add    $0x88,%al
c0604a25:	01 00                	add    %eax,(%eax)
c0604a27:	00 50 00             	add    %dl,0x0(%eax)
c0604a2a:	00 00                	add    %al,(%eax)
c0604a2c:	1c 00                	sbb    $0x0,%al
c0604a2e:	00 00                	add    %al,(%eax)
c0604a30:	80 c8 ff             	or     $0xff,%al
c0604a33:	ff 4f 00             	decl   0x0(%edi)
c0604a36:	00 00                	add    %al,(%eax)
c0604a38:	00 41 0e             	add    %al,0xe(%ecx)
c0604a3b:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
c0604a41:	87 03                	xchg   %eax,(%ebx)
c0604a43:	43                   	inc    %ebx
c0604a44:	0e                   	push   %cs
c0604a45:	10 86 04 43 0e 14    	adc    %al,0x140e4304(%esi)
c0604a4b:	83 05 45 0e 30 58 0a 	addl   $0xa,0x58300e45
c0604a52:	0e                   	push   %cs
c0604a53:	14 43                	adc    $0x43,%al
c0604a55:	c3                   	ret    
c0604a56:	0e                   	push   %cs
c0604a57:	10 43 c6             	adc    %al,-0x3a(%ebx)
c0604a5a:	0e                   	push   %cs
c0604a5b:	0c 41                	or     $0x41,%al
c0604a5d:	c7                   	(bad)  
c0604a5e:	0e                   	push   %cs
c0604a5f:	08 41 c5             	or     %al,-0x3b(%ecx)
c0604a62:	0e                   	push   %cs
c0604a63:	04 43                	add    $0x43,%al
c0604a65:	0b 58 0e             	or     0xe(%eax),%ebx
c0604a68:	14 43                	adc    $0x43,%al
c0604a6a:	c3                   	ret    
c0604a6b:	0e                   	push   %cs
c0604a6c:	10 41 c6             	adc    %al,-0x3a(%ecx)
c0604a6f:	0e                   	push   %cs
c0604a70:	0c 41                	or     $0x41,%al
c0604a72:	c7                   	(bad)  
c0604a73:	0e                   	push   %cs
c0604a74:	08 41 c5             	or     %al,-0x3b(%ecx)
c0604a77:	0e                   	push   %cs
c0604a78:	04 00                	add    $0x0,%al
c0604a7a:	00 00                	add    %al,(%eax)
c0604a7c:	20 00                	and    %al,(%eax)
c0604a7e:	00 00                	add    %al,(%eax)
c0604a80:	70 00                	jo     c0604a82 <.eh_frame+0x72>
c0604a82:	00 00                	add    %al,(%eax)
c0604a84:	7c c8                	jl     c0604a4e <.eh_frame+0x3e>
c0604a86:	ff                   	(bad)  
c0604a87:	ff 29                	ljmp   *(%ecx)
c0604a89:	00 00                	add    %al,(%eax)
c0604a8b:	00 00                	add    %al,(%eax)
c0604a8d:	46                   	inc    %esi
c0604a8e:	0e                   	push   %cs
c0604a8f:	08 87 02 46 0e 0c    	or     %al,0xc0e4602(%edi)
c0604a95:	86 03                	xchg   %al,(%ebx)
c0604a97:	5b                   	pop    %ebx
c0604a98:	c6                   	(bad)  
c0604a99:	0e                   	push   %cs
c0604a9a:	08 41 c7             	or     %al,-0x39(%ecx)
c0604a9d:	0e                   	push   %cs
c0604a9e:	04 00                	add    $0x0,%al
c0604aa0:	20 00                	and    %al,(%eax)
c0604aa2:	00 00                	add    %al,(%eax)
c0604aa4:	94                   	xchg   %eax,%esp
c0604aa5:	00 00                	add    %al,(%eax)
c0604aa7:	00 88 c8 ff ff 2a    	add    %cl,0x2affffc8(%eax)
c0604aad:	00 00                	add    %al,(%eax)
c0604aaf:	00 00                	add    %al,(%eax)
c0604ab1:	46                   	inc    %esi
c0604ab2:	0e                   	push   %cs
c0604ab3:	08 87 02 46 0e 0c    	or     %al,0xc0e4602(%edi)
c0604ab9:	86 03                	xchg   %al,(%ebx)
c0604abb:	5c                   	pop    %esp
c0604abc:	c6                   	(bad)  
c0604abd:	0e                   	push   %cs
c0604abe:	08 41 c7             	or     %al,-0x39(%ecx)
c0604ac1:	0e                   	push   %cs
c0604ac2:	04 00                	add    $0x0,%al
c0604ac4:	20 00                	and    %al,(%eax)
c0604ac6:	00 00                	add    %al,(%eax)
c0604ac8:	b8 00 00 00 94       	mov    $0x94000000,%eax
c0604acd:	c8 ff ff 42          	enter  $0xffff,$0x42
c0604ad1:	00 00                	add    %al,(%eax)
c0604ad3:	00 00                	add    %al,(%eax)
c0604ad5:	41                   	inc    %ecx
c0604ad6:	0e                   	push   %cs
c0604ad7:	08 86 02 43 0e 0c    	or     %al,0xc0e4302(%esi)
c0604add:	83 03 77             	addl   $0x77,(%ebx)
c0604ae0:	c3                   	ret    
c0604ae1:	0e                   	push   %cs
c0604ae2:	08 46 c6             	or     %al,-0x3a(%esi)
c0604ae5:	0e                   	push   %cs
c0604ae6:	04 00                	add    $0x0,%al
c0604ae8:	20 00                	and    %al,(%eax)
c0604aea:	00 00                	add    %al,(%eax)
c0604aec:	dc 00                	faddl  (%eax)
c0604aee:	00 00                	add    %al,(%eax)
c0604af0:	c0 c8 ff             	ror    $0xff,%al
c0604af3:	ff 2a                	ljmp   *(%edx)
c0604af5:	00 00                	add    %al,(%eax)
c0604af7:	00 00                	add    %al,(%eax)
c0604af9:	41                   	inc    %ecx
c0604afa:	0e                   	push   %cs
c0604afb:	08 83 02 5a 0a c3    	or     %al,-0x3cf5a5fe(%ebx)
c0604b01:	0e                   	push   %cs
c0604b02:	04 45                	add    $0x45,%al
c0604b04:	0b 45 c3             	or     -0x3d(%ebp),%eax
c0604b07:	0e                   	push   %cs
c0604b08:	04 00                	add    $0x0,%al
c0604b0a:	00 00                	add    %al,(%eax)
c0604b0c:	10 00                	adc    %al,(%eax)
c0604b0e:	00 00                	add    %al,(%eax)
c0604b10:	00 01                	add    %al,(%ecx)
c0604b12:	00 00                	add    %al,(%eax)
c0604b14:	cc                   	int3   
c0604b15:	c8 ff ff 18          	enter  $0xffff,$0x18
c0604b19:	00 00                	add    %al,(%eax)
c0604b1b:	00 00                	add    %al,(%eax)
c0604b1d:	00 00                	add    %al,(%eax)
c0604b1f:	00 38                	add    %bh,(%eax)
c0604b21:	00 00                	add    %al,(%eax)
c0604b23:	00 14 01             	add    %dl,(%ecx,%eax,1)
c0604b26:	00 00                	add    %al,(%eax)
c0604b28:	d8 c8                	fmul   %st(0),%st
c0604b2a:	ff                   	(bad)  
c0604b2b:	ff 5d 00             	lcall  *0x0(%ebp)
c0604b2e:	00 00                	add    %al,(%eax)
c0604b30:	00 41 0e             	add    %al,0xe(%ecx)
c0604b33:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
c0604b39:	87 03                	xchg   %eax,(%ebx)
c0604b3b:	41                   	inc    %ecx
c0604b3c:	0e                   	push   %cs
c0604b3d:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
c0604b43:	83 05 45 0e 34 02 4d 	addl   $0x4d,0x2340e45
c0604b4a:	0e                   	push   %cs
c0604b4b:	14 43                	adc    $0x43,%al
c0604b4d:	c3                   	ret    
c0604b4e:	0e                   	push   %cs
c0604b4f:	10 41 c6             	adc    %al,-0x3a(%ecx)
c0604b52:	0e                   	push   %cs
c0604b53:	0c 41                	or     $0x41,%al
c0604b55:	c7                   	(bad)  
c0604b56:	0e                   	push   %cs
c0604b57:	08 41 c5             	or     %al,-0x3b(%ecx)
c0604b5a:	0e                   	push   %cs
c0604b5b:	04 3c                	add    $0x3c,%al
c0604b5d:	00 00                	add    %al,(%eax)
c0604b5f:	00 50 01             	add    %dl,0x1(%eax)
c0604b62:	00 00                	add    %al,(%eax)
c0604b64:	fc                   	cld    
c0604b65:	c8 ff ff ba          	enter  $0xffff,$0xba
c0604b69:	02 00                	add    (%eax),%al
c0604b6b:	00 00                	add    %al,(%eax)
c0604b6d:	41                   	inc    %ecx
c0604b6e:	0e                   	push   %cs
c0604b6f:	08 85 02 46 0e 0c    	or     %al,0xc0e4602(%ebp)
c0604b75:	87 03                	xchg   %eax,(%ebx)
c0604b77:	46                   	inc    %esi
c0604b78:	0e                   	push   %cs
c0604b79:	10 86 04 48 0e 14    	adc    %al,0x140e4804(%esi)
c0604b7f:	83 05 43 0e 60 02 8f 	addl   $0xffffff8f,0x2600e43
c0604b86:	0a 0e                	or     (%esi),%cl
c0604b88:	14 43                	adc    $0x43,%al
c0604b8a:	c3                   	ret    
c0604b8b:	0e                   	push   %cs
c0604b8c:	10 41 c6             	adc    %al,-0x3a(%ecx)
c0604b8f:	0e                   	push   %cs
c0604b90:	0c 41                	or     $0x41,%al
c0604b92:	c7                   	(bad)  
c0604b93:	0e                   	push   %cs
c0604b94:	08 41 c5             	or     %al,-0x3b(%ecx)
c0604b97:	0e                   	push   %cs
c0604b98:	04 43                	add    $0x43,%al
c0604b9a:	0b 00                	or     (%eax),%eax
c0604b9c:	34 00                	xor    $0x0,%al
c0604b9e:	00 00                	add    %al,(%eax)
c0604ba0:	90                   	nop
c0604ba1:	01 00                	add    %eax,(%eax)
c0604ba3:	00 7c cb ff          	add    %bh,-0x1(%ebx,%ecx,8)
c0604ba7:	ff 91 00 00 00 00    	call   *0x0(%ecx)
c0604bad:	41                   	inc    %ecx
c0604bae:	0e                   	push   %cs
c0604baf:	08 85 02 46 0e 0c    	or     %al,0xc0e4602(%ebp)
c0604bb5:	87 03                	xchg   %eax,(%ebx)
c0604bb7:	41                   	inc    %ecx
c0604bb8:	0e                   	push   %cs
c0604bb9:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
c0604bbf:	83 05 02 81 c3 0e 10 	addl   $0x10,0xec38102
c0604bc6:	41                   	inc    %ecx
c0604bc7:	c6                   	(bad)  
c0604bc8:	0e                   	push   %cs
c0604bc9:	0c 44                	or     $0x44,%al
c0604bcb:	c7                   	(bad)  
c0604bcc:	0e                   	push   %cs
c0604bcd:	08 41 c5             	or     %al,-0x3b(%ecx)
c0604bd0:	0e                   	push   %cs
c0604bd1:	04 00                	add    $0x0,%al
c0604bd3:	00 38                	add    %bh,(%eax)
c0604bd5:	00 00                	add    %al,(%eax)
c0604bd7:	00 c8                	add    %cl,%al
c0604bd9:	01 00                	add    %eax,(%eax)
c0604bdb:	00 e4                	add    %ah,%ah
c0604bdd:	cb                   	lret   
c0604bde:	ff                   	(bad)  
c0604bdf:	ff d3                	call   *%ebx
c0604be1:	00 00                	add    %al,(%eax)
c0604be3:	00 00                	add    %al,(%eax)
c0604be5:	41                   	inc    %ecx
c0604be6:	0e                   	push   %cs
c0604be7:	08 85 02 46 0e 0c    	or     %al,0xc0e4602(%ebp)
c0604bed:	87 03                	xchg   %eax,(%ebx)
c0604bef:	41                   	inc    %ecx
c0604bf0:	0e                   	push   %cs
c0604bf1:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
c0604bf7:	83 05 43 0e 18 02 c2 	addl   $0xffffffc2,0x2180e43
c0604bfe:	0e                   	push   %cs
c0604bff:	14 41                	adc    $0x41,%al
c0604c01:	c3                   	ret    
c0604c02:	0e                   	push   %cs
c0604c03:	10 41 c6             	adc    %al,-0x3a(%ecx)
c0604c06:	0e                   	push   %cs
c0604c07:	0c 41                	or     $0x41,%al
c0604c09:	c7                   	(bad)  
c0604c0a:	0e                   	push   %cs
c0604c0b:	08 41 c5             	or     %al,-0x3b(%ecx)
c0604c0e:	0e                   	push   %cs
c0604c0f:	04                 	add    $0x14,%al

c0604c10 <.eh_frame>:
c0604c10:	14 00                	adc    $0x0,%al
c0604c12:	00 00                	add    %al,(%eax)
c0604c14:	00 00                	add    %al,(%eax)
c0604c16:	00 00                	add    %al,(%eax)
c0604c18:	01 7a 52             	add    %edi,0x52(%edx)
c0604c1b:	00 01                	add    %al,(%ecx)
c0604c1d:	7c 08                	jl     c0604c27 <.eh_frame+0x17>
c0604c1f:	01 1b                	add    %ebx,(%ebx)
c0604c21:	0c 04                	or     $0x4,%al
c0604c23:	04 88                	add    $0x88,%al
c0604c25:	01 00                	add    %eax,(%eax)
c0604c27:	00 14 00             	add    %dl,(%eax,%eax,1)
c0604c2a:	00 00                	add    %al,(%eax)
c0604c2c:	1c 00                	sbb    $0x0,%al
c0604c2e:	00 00                	add    %al,(%eax)
c0604c30:	70 cc                	jo     c0604bfe <.eh_frame+0x1ee>
c0604c32:	ff                   	(bad)  
c0604c33:	ff 5e 00             	lcall  *0x0(%esi)
c0604c36:	00 00                	add    %al,(%eax)
c0604c38:	00 43 0e             	add    %al,0xe(%ebx)
c0604c3b:	40                   	inc    %eax
c0604c3c:	02 5a 0e             	add    0xe(%edx),%bl
c0604c3f:	04 10                	add    $0x10,%al
c0604c41:	00 00                	add    %al,(%eax)
c0604c43:	00 34 00             	add    %dh,(%eax,%eax,1)
c0604c46:	00 00                	add    %al,(%eax)
c0604c48:	b8 cc ff ff 24       	mov    $0x24ffffcc,%eax
c0604c4d:	00 00                	add    %al,(%eax)
c0604c4f:	00 00                	add    %al,(%eax)
c0604c51:	00 00                	add    %al,(%eax)
c0604c53:	00 10                	add    %dl,(%eax)
c0604c55:	00 00                	add    %al,(%eax)
c0604c57:	00 48 00             	add    %cl,0x0(%eax)
c0604c5a:	00 00                	add    %al,(%eax)
c0604c5c:	d4 cc                	aam    $0xcc
c0604c5e:	ff                   	(bad)  
c0604c5f:	ff 01                	incl   (%ecx)
c0604c61:	00 00                	add    %al,(%eax)
c0604c63:	00 00                	add    %al,(%eax)
c0604c65:	00 00                	add    %al,(%eax)
	...

c0604c68 <.eh_frame>:
c0604c68:	14 00                	adc    $0x0,%al
c0604c6a:	00 00                	add    %al,(%eax)
c0604c6c:	00 00                	add    %al,(%eax)
c0604c6e:	00 00                	add    %al,(%eax)
c0604c70:	01 7a 52             	add    %edi,0x52(%edx)
c0604c73:	00 01                	add    %al,(%ecx)
c0604c75:	7c 08                	jl     c0604c7f <.eh_frame+0x17>
c0604c77:	01 1b                	add    %ebx,(%ebx)
c0604c79:	0c 04                	or     $0x4,%al
c0604c7b:	04 88                	add    $0x88,%al
c0604c7d:	01 00                	add    %eax,(%eax)
c0604c7f:	00 18                	add    %bl,(%eax)
c0604c81:	00 00                	add    %al,(%eax)
c0604c83:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0604c86:	00 00                	add    %al,(%eax)
c0604c88:	b8 cc ff ff 3f       	mov    $0x3fffffcc,%eax
c0604c8d:	00 00                	add    %al,(%eax)
c0604c8f:	00 00                	add    %al,(%eax)
c0604c91:	41                   	inc    %ecx
c0604c92:	0e                   	push   %cs
c0604c93:	08 87 02 7d c7 0e    	or     %al,0xec77d02(%edi)
c0604c99:	04 00                	add    $0x0,%al
c0604c9b:	00 3c 00             	add    %bh,(%eax,%eax,1)
c0604c9e:	00 00                	add    %al,(%eax)
c0604ca0:	38 00                	cmp    %al,(%eax)
c0604ca2:	00 00                	add    %al,(%eax)
c0604ca4:	dc cc                	fmul   %st,%st(4)
c0604ca6:	ff                   	(bad)  
c0604ca7:	ff 25 01 00 00 00    	jmp    *0x1
c0604cad:	41                   	inc    %ecx
c0604cae:	0e                   	push   %cs
c0604caf:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
c0604cb5:	87 03                	xchg   %eax,(%ebx)
c0604cb7:	41                   	inc    %ecx
c0604cb8:	0e                   	push   %cs
c0604cb9:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
c0604cbf:	83 05 43 0e 34 03 19 	addl   $0x19,0x3340e43
c0604cc6:	01 0e                	add    %ecx,(%esi)
c0604cc8:	14 41                	adc    $0x41,%al
c0604cca:	c3                   	ret    
c0604ccb:	0e                   	push   %cs
c0604ccc:	10 41 c6             	adc    %al,-0x3a(%ecx)
c0604ccf:	0e                   	push   %cs
c0604cd0:	0c 41                	or     $0x41,%al
c0604cd2:	c7                   	(bad)  
c0604cd3:	0e                   	push   %cs
c0604cd4:	08 41 c5             	or     %al,-0x3b(%ecx)
c0604cd7:	0e                   	push   %cs
c0604cd8:	04 00                	add    $0x0,%al
c0604cda:	00 00                	add    %al,(%eax)
c0604cdc:	40                   	inc    %eax
c0604cdd:	00 00                	add    %al,(%eax)
c0604cdf:	00 78 00             	add    %bh,0x0(%eax)
c0604ce2:	00 00                	add    %al,(%eax)
c0604ce4:	cc                   	int3   
c0604ce5:	cd ff                	int    $0xff
c0604ce7:	ff c8                	dec    %eax
c0604ce9:	01 00                	add    %eax,(%eax)
c0604ceb:	00 00                	add    %al,(%eax)
c0604ced:	41                   	inc    %ecx
c0604cee:	0e                   	push   %cs
c0604cef:	08 87 02 41 0e 0c    	or     %al,0xc0e4102(%edi)
c0604cf5:	86 03                	xchg   %al,(%ebx)
c0604cf7:	41                   	inc    %ecx
c0604cf8:	0e                   	push   %cs
c0604cf9:	10 83 04 03 28 01    	adc    %al,0x1280304(%ebx)
c0604cff:	0a c3                	or     %bl,%al
c0604d01:	0e                   	push   %cs
c0604d02:	0c 41                	or     $0x41,%al
c0604d04:	c6                   	(bad)  
c0604d05:	0e                   	push   %cs
c0604d06:	08 41 c7             	or     %al,-0x39(%ecx)
c0604d09:	0e                   	push   %cs
c0604d0a:	04 43                	add    $0x43,%al
c0604d0c:	0b 02                	or     (%edx),%eax
c0604d0e:	46                   	inc    %esi
c0604d0f:	0a c3                	or     %bl,%al
c0604d11:	0e                   	push   %cs
c0604d12:	0c 43                	or     $0x43,%al
c0604d14:	c6                   	(bad)  
c0604d15:	0e                   	push   %cs
c0604d16:	08 41 c7             	or     %al,-0x39(%ecx)
c0604d19:	0e                   	push   %cs
c0604d1a:	04 46                	add    $0x46,%al
c0604d1c:	0b 00                	or     (%eax),%eax
	...

Disassembly of section .bss:

c0605000 <__bss_start__>:
c0605000:	00 00                	add    %al,(%eax)
	...

c0605004 <.bss>:
	...

c0605020 <_tss>:
	...

c06050a0 <_pids>:
	...

c0605168 <_p.1854>:
c0605168:	00 00                	add    %al,(%eax)
	...

c060516c <_i.1853>:
	...

c0605180 <__DISPLAY_TEXT_ADDR>:
c0605180:	00 00                	add    %al,(%eax)
	...

c0605184 <__DISPLAY_TEXT_HEIGHT>:
c0605184:	00 00                	add    %al,(%eax)
	...

c0605188 <__DISK_MEDIA>:
c0605188:	00 00                	add    %al,(%eax)
	...

c060518c <__TIME_BASE_CENTURY_YEAR>:
c060518c:	00 00                	add    %al,(%eax)
	...

c0605190 <__KERNEL_INFO>:
	...

c060519c <__MEMORY_PAGE_SIZE>:
c060519c:	00 00                	add    %al,(%eax)
	...

c06051a0 <__DISK_BYTEPERSEC>:
c06051a0:	00 00                	add    %al,(%eax)
	...

c06051a4 <__DISK_FILESYSTEM_BLOCK>:
c06051a4:	00 00                	add    %al,(%eax)
	...

c06051a8 <__DISPLAY_TEXT_WIDTH>:
c06051a8:	00 00                	add    %al,(%eax)
	...

c06051ac <__INT>:
	...

c06051b8 <__DISK_TO_BLOCK>:
c06051b8:	00 00                	add    %al,(%eax)
	...

c06051bc <__DISPLAY_MDOE>:
c06051bc:	00 00                	add    %al,(%eax)
	...

c06051c0 <__DISK_UNIT>:
c06051c0:	00 00                	add    %al,(%eax)
	...

c06051c4 <__DISK_RW_UNIT>:
c06051c4:	00 00                	add    %al,(%eax)
	...

c06051c8 <__MEMORY_SIZE>:
c06051c8:	00 00                	add    %al,(%eax)
	...

c06051cc <__TIME_LOCAL_TIME_ZONE>:
c06051cc:	00 00                	add    %al,(%eax)
	...

c06051d0 <__MEM_LIST_FIRST_NODE>:
c06051d0:	00 00                	add    %al,(%eax)
	...

c06051d4 <__MEM_LINK_LIST>:
c06051d4:	00 00                	add    %al,(%eax)
	...

Disassembly of section .idata:

c0606000 <__IAT_end__-0x14>:
	...

Disassembly of section .stab:

c0607000 <.stab>:
c0607000:	01 00                	add    %eax,(%eax)
c0607002:	00 00                	add    %al,(%eax)
c0607004:	00 00                	add    %al,(%eax)
c0607006:	29 05 a3 2a 00 00    	sub    %eax,0x2aa3
c060700c:	01 00                	add    %eax,(%eax)
c060700e:	00 00                	add    %al,(%eax)
c0607010:	64 00 02             	add    %al,%fs:(%edx)
c0607013:	00 00                	add    %al,(%eax)
c0607015:	00 60 c0             	add    %ah,-0x40(%eax)
c0607018:	08 00                	or     %al,(%eax)
c060701a:	00 00                	add    %al,(%eax)
c060701c:	3c 00                	cmp    $0x0,%al
c060701e:	00 00                	add    %al,(%eax)
c0607020:	00 00                	add    %al,(%eax)
c0607022:	00 00                	add    %al,(%eax)
c0607024:	17                   	pop    %ss
c0607025:	00 00                	add    %al,(%eax)
c0607027:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060702d:	00 00                	add    %al,(%eax)
c060702f:	00 41 00             	add    %al,0x0(%ecx)
c0607032:	00 00                	add    %al,(%eax)
c0607034:	80 00 00             	addb   $0x0,(%eax)
c0607037:	00 00                	add    %al,(%eax)
c0607039:	00 00                	add    %al,(%eax)
c060703b:	00 5b 00             	add    %bl,0x0(%ebx)
c060703e:	00 00                	add    %al,(%eax)
c0607040:	80 00 00             	addb   $0x0,(%eax)
c0607043:	00 00                	add    %al,(%eax)
c0607045:	00 00                	add    %al,(%eax)
c0607047:	00 8a 00 00 00 80    	add    %cl,-0x80000000(%edx)
c060704d:	00 00                	add    %al,(%eax)
c060704f:	00 00                	add    %al,(%eax)
c0607051:	00 00                	add    %al,(%eax)
c0607053:	00 b3 00 00 00 80    	add    %dh,-0x80000000(%ebx)
c0607059:	00 00                	add    %al,(%eax)
c060705b:	00 00                	add    %al,(%eax)
c060705d:	00 00                	add    %al,(%eax)
c060705f:	00 e1                	add    %ah,%cl
c0607061:	00 00                	add    %al,(%eax)
c0607063:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607069:	00 00                	add    %al,(%eax)
c060706b:	00 fe                	add    %bh,%dh
c060706d:	00 00                	add    %al,(%eax)
c060706f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607075:	00 00                	add    %al,(%eax)
c0607077:	00 24 01             	add    %ah,(%ecx,%eax,1)
c060707a:	00 00                	add    %al,(%eax)
c060707c:	80 00 00             	addb   $0x0,(%eax)
c060707f:	00 00                	add    %al,(%eax)
c0607081:	00 00                	add    %al,(%eax)
c0607083:	00 6a 01             	add    %ch,0x1(%edx)
c0607086:	00 00                	add    %al,(%eax)
c0607088:	80 00 00             	addb   $0x0,(%eax)
c060708b:	00 00                	add    %al,(%eax)
c060708d:	00 00                	add    %al,(%eax)
c060708f:	00 95 01 00 00 80    	add    %dl,-0x7fffffff(%ebp)
c0607095:	00 00                	add    %al,(%eax)
c0607097:	00 00                	add    %al,(%eax)
c0607099:	00 00                	add    %al,(%eax)
c060709b:	00 bd 01 00 00 80    	add    %bh,-0x7fffffff(%ebp)
c06070a1:	00 00                	add    %al,(%eax)
c06070a3:	00 00                	add    %al,(%eax)
c06070a5:	00 00                	add    %al,(%eax)
c06070a7:	00 e9                	add    %ch,%cl
c06070a9:	01 00                	add    %eax,(%eax)
c06070ab:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06070b1:	00 00                	add    %al,(%eax)
c06070b3:	00 0f                	add    %cl,(%edi)
c06070b5:	02 00                	add    (%eax),%al
c06070b7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06070bd:	00 00                	add    %al,(%eax)
c06070bf:	00 34 02             	add    %dh,(%edx,%eax,1)
c06070c2:	00 00                	add    %al,(%eax)
c06070c4:	80 00 00             	addb   $0x0,(%eax)
c06070c7:	00 00                	add    %al,(%eax)
c06070c9:	00 00                	add    %al,(%eax)
c06070cb:	00 4e 02             	add    %cl,0x2(%esi)
c06070ce:	00 00                	add    %al,(%eax)
c06070d0:	80 00 00             	addb   $0x0,(%eax)
c06070d3:	00 00                	add    %al,(%eax)
c06070d5:	00 00                	add    %al,(%eax)
c06070d7:	00 69 02             	add    %ch,0x2(%ecx)
c06070da:	00 00                	add    %al,(%eax)
c06070dc:	80 00 00             	addb   $0x0,(%eax)
c06070df:	00 00                	add    %al,(%eax)
c06070e1:	00 00                	add    %al,(%eax)
c06070e3:	00 8a 02 00 00 80    	add    %cl,-0x7ffffffe(%edx)
c06070e9:	00 00                	add    %al,(%eax)
c06070eb:	00 00                	add    %al,(%eax)
c06070ed:	00 00                	add    %al,(%eax)
c06070ef:	00 a7 02 00 00 80    	add    %ah,-0x7ffffffe(%edi)
c06070f5:	00 00                	add    %al,(%eax)
c06070f7:	00 00                	add    %al,(%eax)
c06070f9:	00 00                	add    %al,(%eax)
c06070fb:	00 c4                	add    %al,%ah
c06070fd:	02 00                	add    (%eax),%al
c06070ff:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607105:	00 00                	add    %al,(%eax)
c0607107:	00 e3                	add    %ah,%bl
c0607109:	02 00                	add    (%eax),%al
c060710b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607111:	00 00                	add    %al,(%eax)
c0607113:	00 01                	add    %al,(%ecx)
c0607115:	03 00                	add    (%eax),%eax
c0607117:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060711d:	00 00                	add    %al,(%eax)
c060711f:	00 20                	add    %ah,(%eax)
c0607121:	03 00                	add    (%eax),%eax
c0607123:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607129:	00 00                	add    %al,(%eax)
c060712b:	00 3f                	add    %bh,(%edi)
c060712d:	03 00                	add    (%eax),%eax
c060712f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607135:	00 00                	add    %al,(%eax)
c0607137:	00 5e 03             	add    %bl,0x3(%esi)
c060713a:	00 00                	add    %al,(%eax)
c060713c:	80 00 00             	addb   $0x0,(%eax)
c060713f:	00 00                	add    %al,(%eax)
c0607141:	00 00                	add    %al,(%eax)
c0607143:	00 7f 03             	add    %bh,0x3(%edi)
c0607146:	00 00                	add    %al,(%eax)
c0607148:	80 00 00             	addb   $0x0,(%eax)
c060714b:	00 00                	add    %al,(%eax)
c060714d:	00 00                	add    %al,(%eax)
c060714f:	00 93 03 00 00 82    	add    %dl,-0x7dfffffd(%ebx)
c0607155:	00 00                	add    %al,(%eax)
c0607157:	00 4c 18 00          	add    %cl,0x0(%eax,%ebx,1)
c060715b:	00 a5 03 00 00 82    	add    %ah,-0x7dfffffd(%ebp)
c0607161:	00 00                	add    %al,(%eax)
c0607163:	00 26                	add    %ah,(%esi)
c0607165:	59                   	pop    %ecx
c0607166:	01 00                	add    %eax,(%eax)
c0607168:	b8 03 00 00 80       	mov    $0x80000003,%eax
c060716d:	00 00                	add    %al,(%eax)
c060716f:	00 00                	add    %al,(%eax)
c0607171:	00 00                	add    %al,(%eax)
c0607173:	00 cb                	add    %cl,%bl
c0607175:	03 00                	add    (%eax),%eax
c0607177:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060717d:	00 00                	add    %al,(%eax)
c060717f:	00 df                	add    %bl,%bh
c0607181:	03 00                	add    (%eax),%eax
c0607183:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607189:	00 00                	add    %al,(%eax)
c060718b:	00 f4                	add    %dh,%ah
c060718d:	03 00                	add    (%eax),%eax
c060718f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607195:	00 00                	add    %al,(%eax)
c0607197:	00 08                	add    %cl,(%eax)
c0607199:	04 00                	add    $0x0,%al
c060719b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06071a1:	00 00                	add    %al,(%eax)
c06071a3:	00 1c 04             	add    %bl,(%esp,%eax,1)
c06071a6:	00 00                	add    %al,(%eax)
c06071a8:	80 00 00             	addb   $0x0,(%eax)
c06071ab:	00 00                	add    %al,(%eax)
c06071ad:	00 00                	add    %al,(%eax)
c06071af:	00 2e                	add    %ch,(%esi)
c06071b1:	04 00                	add    $0x0,%al
c06071b3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06071b9:	00 00                	add    %al,(%eax)
c06071bb:	00 41 04             	add    %al,0x4(%ecx)
c06071be:	00 00                	add    %al,(%eax)
c06071c0:	80 00 00             	addb   $0x0,(%eax)
c06071c3:	00 00                	add    %al,(%eax)
c06071c5:	00 00                	add    %al,(%eax)
c06071c7:	00 55 04             	add    %dl,0x4(%ebp)
c06071ca:	00 00                	add    %al,(%eax)
c06071cc:	80 00 00             	addb   $0x0,(%eax)
c06071cf:	00 00                	add    %al,(%eax)
c06071d1:	00 00                	add    %al,(%eax)
c06071d3:	00 68 04             	add    %ch,0x4(%eax)
c06071d6:	00 00                	add    %al,(%eax)
c06071d8:	80 00 00             	addb   $0x0,(%eax)
c06071db:	00 00                	add    %al,(%eax)
c06071dd:	00 00                	add    %al,(%eax)
c06071df:	00 f6                	add    %dh,%dh
c06071e1:	04 00                	add    $0x0,%al
c06071e3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06071e9:	00 00                	add    %al,(%eax)
c06071eb:	00 0a                	add    %cl,(%edx)
c06071ed:	05 00 00 80 00       	add    $0x800000,%eax
c06071f2:	00 00                	add    %al,(%eax)
c06071f4:	00 00                	add    %al,(%eax)
c06071f6:	00 00                	add    %al,(%eax)
c06071f8:	57                   	push   %edi
c06071f9:	08 00                	or     %al,(%eax)
c06071fb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607201:	00 00                	add    %al,(%eax)
c0607203:	00 71 08             	add    %dh,0x8(%ecx)
c0607206:	00 00                	add    %al,(%eax)
c0607208:	80 00 00             	addb   $0x0,(%eax)
c060720b:	00 00                	add    %al,(%eax)
c060720d:	00 00                	add    %al,(%eax)
c060720f:	00 58 09             	add    %bl,0x9(%eax)
c0607212:	00 00                	add    %al,(%eax)
c0607214:	80 00 00             	addb   $0x0,(%eax)
	...
c060721f:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c0607225:	00 00                	add    %al,(%eax)
c0607227:	00 72 09             	add    %dh,0x9(%edx)
c060722a:	00 00                	add    %al,(%eax)
c060722c:	80 00 00             	addb   $0x0,(%eax)
c060722f:	00 00                	add    %al,(%eax)
c0607231:	00 00                	add    %al,(%eax)
c0607233:	00 bc 09 00 00 80 00 	add    %bh,0x800000(%ecx,%ecx,1)
	...
c0607242:	00 00                	add    %al,(%eax)
c0607244:	a2 00 00 00 00       	mov    %al,0x0
c0607249:	00 00                	add    %al,(%eax)
c060724b:	00 d3                	add    %dl,%bl
c060724d:	09 00                	or     %eax,(%eax)
c060724f:	00 82 00 00 00 e6    	add    %al,-0x1a000000(%edx)
c0607255:	4c                   	dec    %esp
c0607256:	01 00                	add    %eax,(%eax)
c0607258:	eb 09                	jmp    c0607263 <.stab+0x263>
c060725a:	00 00                	add    %al,(%eax)
c060725c:	82 00 00             	addb   $0x0,(%eax)
c060725f:	00 11                	add    %dl,(%ecx)
c0607261:	52                   	push   %edx
c0607262:	00 00                	add    %al,(%eax)
c0607264:	fd                   	std    
c0607265:	09 00                	or     %eax,(%eax)
c0607267:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060726d:	00 00                	add    %al,(%eax)
c060726f:	00 11                	add    %dl,(%ecx)
c0607271:	0a 00                	or     (%eax),%al
c0607273:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607279:	00 00                	add    %al,(%eax)
c060727b:	00 d6                	add    %dl,%dh
c060727d:	0a 00                	or     (%eax),%al
c060727f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607285:	00 00                	add    %al,(%eax)
c0607287:	00 00                	add    %al,(%eax)
c0607289:	00 00                	add    %al,(%eax)
c060728b:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c0607291:	00 00                	add    %al,(%eax)
c0607293:	00 4c 0b 00          	add    %cl,0x0(%ebx,%ecx,1)
c0607297:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060729d:	00 00                	add    %al,(%eax)
c060729f:	00 20                	add    %ah,(%eax)
c06072a1:	0c 00                	or     $0x0,%al
c06072a3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06072a9:	00 00                	add    %al,(%eax)
c06072ab:	00 31                	add    %dh,(%ecx)
c06072ad:	0c 00                	or     $0x0,%al
c06072af:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06072b5:	00 00                	add    %al,(%eax)
c06072b7:	00 4a 0c             	add    %cl,0xc(%edx)
c06072ba:	00 00                	add    %al,(%eax)
c06072bc:	80 00 00             	addb   $0x0,(%eax)
c06072bf:	00 00                	add    %al,(%eax)
c06072c1:	00 00                	add    %al,(%eax)
c06072c3:	00 79 0f             	add    %bh,0xf(%ecx)
c06072c6:	00 00                	add    %al,(%eax)
c06072c8:	80 00 00             	addb   $0x0,(%eax)
c06072cb:	00 00                	add    %al,(%eax)
c06072cd:	00 00                	add    %al,(%eax)
c06072cf:	00 91 0f 00 00 80    	add    %dl,-0x7ffffff1(%ecx)
c06072d5:	00 00                	add    %al,(%eax)
c06072d7:	00 00                	add    %al,(%eax)
c06072d9:	00 00                	add    %al,(%eax)
c06072db:	00 b2 0f 00 00 80    	add    %dh,-0x7ffffff1(%edx)
	...
c06072e9:	00 00                	add    %al,(%eax)
c06072eb:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c06072f1:	00 00                	add    %al,(%eax)
c06072f3:	00 9f 10 00 00 82    	add    %bl,-0x7dfffff0(%edi)
c06072f9:	00 00                	add    %al,(%eax)
c06072fb:	00 2b                	add    %ch,(%ebx)
c06072fd:	1d 00 00 b2 10       	sbb    $0x10b20000,%eax
c0607302:	00 00                	add    %al,(%eax)
c0607304:	80 00 00             	addb   $0x0,(%eax)
	...
c060730f:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c0607315:	00 00                	add    %al,(%eax)
c0607317:	00 2e                	add    %ch,(%esi)
c0607319:	11 00                	adc    %eax,(%eax)
c060731b:	00 82 00 00 00 90    	add    %al,-0x70000000(%edx)
c0607321:	c7 00 00 42 11 00    	movl   $0x114200,(%eax)
c0607327:	00 82 00 00 00 5a    	add    %al,0x5a000000(%edx)
c060732d:	04 00                	add    $0x0,%al
c060732f:	00 53 11             	add    %dl,0x11(%ebx)
c0607332:	00 00                	add    %al,(%eax)
c0607334:	80 00 00             	addb   $0x0,(%eax)
	...
c060733f:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c0607345:	00 00                	add    %al,(%eax)
c0607347:	00 66 11             	add    %ah,0x11(%esi)
c060734a:	00 00                	add    %al,(%eax)
c060734c:	80 00 00             	addb   $0x0,(%eax)
c060734f:	00 00                	add    %al,(%eax)
c0607351:	00 00                	add    %al,(%eax)
c0607353:	00 f5                	add    %dh,%ch
c0607355:	11 00                	adc    %eax,(%eax)
c0607357:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060735d:	00 00                	add    %al,(%eax)
c060735f:	00 0b                	add    %cl,(%ebx)
c0607361:	12 00                	adc    (%eax),%al
c0607363:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607369:	00 00                	add    %al,(%eax)
c060736b:	00 f4                	add    %dh,%ah
c060736d:	12 00                	adc    (%eax),%al
c060736f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607375:	00 00                	add    %al,(%eax)
c0607377:	00 0a                	add    %cl,(%edx)
c0607379:	13 00                	adc    (%eax),%eax
c060737b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607381:	00 00                	add    %al,(%eax)
c0607383:	00 69 13             	add    %ch,0x13(%ecx)
c0607386:	00 00                	add    %al,(%eax)
c0607388:	80 00 00             	addb   $0x0,(%eax)
c060738b:	00 00                	add    %al,(%eax)
c060738d:	00 00                	add    %al,(%eax)
c060738f:	00 b1 13 00 00 80    	add    %dh,-0x7fffffed(%ecx)
c0607395:	00 00                	add    %al,(%eax)
c0607397:	00 00                	add    %al,(%eax)
c0607399:	00 00                	add    %al,(%eax)
c060739b:	00 4e 14             	add    %cl,0x14(%esi)
c060739e:	00 00                	add    %al,(%eax)
c06073a0:	80 00 00             	addb   $0x0,(%eax)
c06073a3:	00 00                	add    %al,(%eax)
c06073a5:	00 00                	add    %al,(%eax)
c06073a7:	00 a5 14 00 00 80    	add    %ah,-0x7fffffec(%ebp)
	...
c06073b5:	00 00                	add    %al,(%eax)
c06073b7:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c06073bd:	00 00                	add    %al,(%eax)
c06073bf:	00 c2                	add    %al,%dl
c06073c1:	14 00                	adc    $0x0,%al
c06073c3:	00 82 00 00 00 64    	add    %al,0x64000000(%edx)
c06073c9:	f5                   	cmc    
c06073ca:	01 00                	add    %eax,(%eax)
c06073cc:	d5 14                	aad    $0x14
c06073ce:	00 00                	add    %al,(%eax)
c06073d0:	80 00 00             	addb   $0x0,(%eax)
c06073d3:	00 00                	add    %al,(%eax)
c06073d5:	00 00                	add    %al,(%eax)
c06073d7:	00 ea                	add    %ch,%dl
c06073d9:	14 00                	adc    $0x0,%al
c06073db:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06073e1:	00 00                	add    %al,(%eax)
c06073e3:	00 ff                	add    %bh,%bh
c06073e5:	14 00                	adc    $0x0,%al
c06073e7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06073ed:	00 00                	add    %al,(%eax)
c06073ef:	00 16                	add    %dl,(%esi)
c06073f1:	15 00 00 80 00       	adc    $0x800000,%eax
c06073f6:	00 00                	add    %al,(%eax)
c06073f8:	00 00                	add    %al,(%eax)
c06073fa:	00 00                	add    %al,(%eax)
c06073fc:	2c 15                	sub    $0x15,%al
c06073fe:	00 00                	add    %al,(%eax)
c0607400:	80 00 00             	addb   $0x0,(%eax)
c0607403:	00 00                	add    %al,(%eax)
c0607405:	00 00                	add    %al,(%eax)
c0607407:	00 42 15             	add    %al,0x15(%edx)
c060740a:	00 00                	add    %al,(%eax)
c060740c:	80 00 00             	addb   $0x0,(%eax)
c060740f:	00 00                	add    %al,(%eax)
c0607411:	00 00                	add    %al,(%eax)
c0607413:	00 5a 15             	add    %bl,0x15(%edx)
c0607416:	00 00                	add    %al,(%eax)
c0607418:	80 00 00             	addb   $0x0,(%eax)
c060741b:	00 00                	add    %al,(%eax)
c060741d:	00 00                	add    %al,(%eax)
c060741f:	00 72 15             	add    %dh,0x15(%edx)
c0607422:	00 00                	add    %al,(%eax)
c0607424:	80 00 00             	addb   $0x0,(%eax)
c0607427:	00 00                	add    %al,(%eax)
c0607429:	00 00                	add    %al,(%eax)
c060742b:	00 8a 15 00 00 80    	add    %cl,-0x7fffffeb(%edx)
c0607431:	00 00                	add    %al,(%eax)
c0607433:	00 00                	add    %al,(%eax)
c0607435:	00 00                	add    %al,(%eax)
c0607437:	00 a3 15 00 00 80    	add    %ah,-0x7fffffeb(%ebx)
c060743d:	00 00                	add    %al,(%eax)
c060743f:	00 00                	add    %al,(%eax)
c0607441:	00 00                	add    %al,(%eax)
c0607443:	00 bc 15 00 00 80 00 	add    %bh,0x800000(%ebp,%edx,1)
c060744a:	00 00                	add    %al,(%eax)
c060744c:	00 00                	add    %al,(%eax)
c060744e:	00 00                	add    %al,(%eax)
c0607450:	d6                   	(bad)  
c0607451:	15 00 00 80 00       	adc    $0x800000,%eax
c0607456:	00 00                	add    %al,(%eax)
c0607458:	00 00                	add    %al,(%eax)
c060745a:	00 00                	add    %al,(%eax)
c060745c:	f0 15 00 00 80 00    	lock adc $0x800000,%eax
c0607462:	00 00                	add    %al,(%eax)
c0607464:	00 00                	add    %al,(%eax)
c0607466:	00 00                	add    %al,(%eax)
c0607468:	0b 16                	or     (%esi),%edx
c060746a:	00 00                	add    %al,(%eax)
c060746c:	80 00 00             	addb   $0x0,(%eax)
c060746f:	00 00                	add    %al,(%eax)
c0607471:	00 00                	add    %al,(%eax)
c0607473:	00 25 16 00 00 80    	add    %ah,0x80000016
c0607479:	00 00                	add    %al,(%eax)
c060747b:	00 00                	add    %al,(%eax)
c060747d:	00 00                	add    %al,(%eax)
c060747f:	00 40 16             	add    %al,0x16(%eax)
c0607482:	00 00                	add    %al,(%eax)
c0607484:	80 00 00             	addb   $0x0,(%eax)
c0607487:	00 00                	add    %al,(%eax)
c0607489:	00 00                	add    %al,(%eax)
c060748b:	00 59 16             	add    %bl,0x16(%ecx)
c060748e:	00 00                	add    %al,(%eax)
c0607490:	80 00 00             	addb   $0x0,(%eax)
c0607493:	00 00                	add    %al,(%eax)
c0607495:	00 00                	add    %al,(%eax)
c0607497:	00 72 16             	add    %dh,0x16(%edx)
c060749a:	00 00                	add    %al,(%eax)
c060749c:	80 00 00             	addb   $0x0,(%eax)
c060749f:	00 00                	add    %al,(%eax)
c06074a1:	00 00                	add    %al,(%eax)
c06074a3:	00 8a 16 00 00 80    	add    %cl,-0x7fffffea(%edx)
c06074a9:	00 00                	add    %al,(%eax)
c06074ab:	00 00                	add    %al,(%eax)
c06074ad:	00 00                	add    %al,(%eax)
c06074af:	00 a2 16 00 00 80    	add    %ah,-0x7fffffea(%edx)
c06074b5:	00 00                	add    %al,(%eax)
c06074b7:	00 00                	add    %al,(%eax)
c06074b9:	00 00                	add    %al,(%eax)
c06074bb:	00 be 16 00 00 80    	add    %bh,-0x7fffffea(%esi)
c06074c1:	00 00                	add    %al,(%eax)
c06074c3:	00 00                	add    %al,(%eax)
c06074c5:	00 00                	add    %al,(%eax)
c06074c7:	00 da                	add    %bl,%dl
c06074c9:	16                   	push   %ss
c06074ca:	00 00                	add    %al,(%eax)
c06074cc:	80 00 00             	addb   $0x0,(%eax)
c06074cf:	00 00                	add    %al,(%eax)
c06074d1:	00 00                	add    %al,(%eax)
c06074d3:	00 f5                	add    %dh,%ch
c06074d5:	16                   	push   %ss
c06074d6:	00 00                	add    %al,(%eax)
c06074d8:	80 00 00             	addb   $0x0,(%eax)
c06074db:	00 00                	add    %al,(%eax)
c06074dd:	00 00                	add    %al,(%eax)
c06074df:	00 10                	add    %dl,(%eax)
c06074e1:	17                   	pop    %ss
c06074e2:	00 00                	add    %al,(%eax)
c06074e4:	80 00 00             	addb   $0x0,(%eax)
c06074e7:	00 00                	add    %al,(%eax)
c06074e9:	00 00                	add    %al,(%eax)
c06074eb:	00 8f 18 00 00 80    	add    %cl,-0x7fffffe8(%edi)
c06074f1:	00 00                	add    %al,(%eax)
c06074f3:	00 00                	add    %al,(%eax)
c06074f5:	00 00                	add    %al,(%eax)
c06074f7:	00 88 19 00 00 80    	add    %cl,-0x7fffffe7(%eax)
c06074fd:	00 00                	add    %al,(%eax)
c06074ff:	00 00                	add    %al,(%eax)
c0607501:	00 00                	add    %al,(%eax)
c0607503:	00 df                	add    %bl,%bh
c0607505:	1a 00                	sbb    (%eax),%al
c0607507:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060750d:	00 00                	add    %al,(%eax)
c060750f:	00 7a 1b             	add    %bh,0x1b(%edx)
c0607512:	00 00                	add    %al,(%eax)
c0607514:	80 00 00             	addb   $0x0,(%eax)
c0607517:	00 00                	add    %al,(%eax)
c0607519:	00 00                	add    %al,(%eax)
c060751b:	00 bf 1b 00 00 80    	add    %bh,-0x7fffffe5(%edi)
	...
c0607529:	00 00                	add    %al,(%eax)
c060752b:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c0607531:	00 00                	add    %al,(%eax)
c0607533:	00 85 1c 00 00 20    	add    %al,0x2000001c(%ebp)
c0607539:	00 00                	add    %al,(%eax)
c060753b:	00 00                	add    %al,(%eax)
c060753d:	00 00                	add    %al,(%eax)
c060753f:	00 91 1c 00 00 20    	add    %dl,0x2000001c(%ecx)
c0607545:	00 00                	add    %al,(%eax)
c0607547:	00 00                	add    %al,(%eax)
c0607549:	00 00                	add    %al,(%eax)
c060754b:	00 a3 1c 00 00 20    	add    %ah,0x2000001c(%ebx)
c0607551:	00 00                	add    %al,(%eax)
c0607553:	00 00                	add    %al,(%eax)
c0607555:	00 00                	add    %al,(%eax)
c0607557:	00 bc 1c 00 00 20 00 	add    %bh,0x200000(%esp,%ebx,1)
c060755e:	00 00                	add    %al,(%eax)
c0607560:	00 00                	add    %al,(%eax)
c0607562:	00 00                	add    %al,(%eax)
c0607564:	cf                   	iret   
c0607565:	1c 00                	sbb    $0x0,%al
c0607567:	00 20                	add    %ah,(%eax)
c0607569:	00 00                	add    %al,(%eax)
c060756b:	00 00                	add    %al,(%eax)
c060756d:	00 00                	add    %al,(%eax)
c060756f:	00 e4                	add    %ah,%ah
c0607571:	1c 00                	sbb    $0x0,%al
c0607573:	00 20                	add    %ah,(%eax)
c0607575:	00 00                	add    %al,(%eax)
c0607577:	00 00                	add    %al,(%eax)
c0607579:	00 00                	add    %al,(%eax)
c060757b:	00 02                	add    %al,(%edx)
c060757d:	1d 00 00 20 00       	sbb    $0x200000,%eax
c0607582:	00 00                	add    %al,(%eax)
c0607584:	00 00                	add    %al,(%eax)
c0607586:	00 00                	add    %al,(%eax)
c0607588:	18 1d 00 00 20 00    	sbb    %bl,0x200000
c060758e:	00 00                	add    %al,(%eax)
c0607590:	00 00                	add    %al,(%eax)
c0607592:	00 00                	add    %al,(%eax)
c0607594:	2c 1d                	sub    $0x1d,%al
c0607596:	00 00                	add    %al,(%eax)
c0607598:	20 00                	and    %al,(%eax)
c060759a:	00 00                	add    %al,(%eax)
c060759c:	00 00                	add    %al,(%eax)
c060759e:	00 00                	add    %al,(%eax)
c06075a0:	45                   	inc    %ebp
c06075a1:	1d 00 00 20 00       	sbb    $0x200000,%eax
c06075a6:	00 00                	add    %al,(%eax)
c06075a8:	00 00                	add    %al,(%eax)
c06075aa:	00 00                	add    %al,(%eax)
c06075ac:	5a                   	pop    %edx
c06075ad:	1d 00 00 20 00       	sbb    $0x200000,%eax
c06075b2:	00 00                	add    %al,(%eax)
c06075b4:	00 00                	add    %al,(%eax)
c06075b6:	00 00                	add    %al,(%eax)
c06075b8:	75 1d                	jne    c06075d7 <.stab+0x5d7>
c06075ba:	00 00                	add    %al,(%eax)
c06075bc:	20 00                	and    %al,(%eax)
c06075be:	00 00                	add    %al,(%eax)
c06075c0:	00 00                	add    %al,(%eax)
c06075c2:	00 00                	add    %al,(%eax)
c06075c4:	91                   	xchg   %eax,%ecx
c06075c5:	1d 00 00 20 00       	sbb    $0x200000,%eax
c06075ca:	00 00                	add    %al,(%eax)
c06075cc:	00 00                	add    %al,(%eax)
c06075ce:	00 00                	add    %al,(%eax)
c06075d0:	ab                   	stos   %eax,%es:(%edi)
c06075d1:	1d 00 00 20 00       	sbb    $0x200000,%eax
c06075d6:	00 00                	add    %al,(%eax)
c06075d8:	00 00                	add    %al,(%eax)
c06075da:	00 00                	add    %al,(%eax)
c06075dc:	bf 1d 00 00 20       	mov    $0x2000001d,%edi
c06075e1:	00 00                	add    %al,(%eax)
c06075e3:	00 00                	add    %al,(%eax)
c06075e5:	00 00                	add    %al,(%eax)
c06075e7:	00 dc                	add    %bl,%ah
c06075e9:	1d 00 00 20 00       	sbb    $0x200000,%eax
c06075ee:	00 00                	add    %al,(%eax)
c06075f0:	00 00                	add    %al,(%eax)
c06075f2:	00 00                	add    %al,(%eax)
c06075f4:	fb                   	sti    
c06075f5:	1d 00 00 24 00       	sbb    $0x240000,%eax
c06075fa:	00 00                	add    %al,(%eax)
c06075fc:	00 00                	add    %al,(%eax)
c06075fe:	60                   	pusha  
c06075ff:	c0 00 00             	rolb   $0x0,(%eax)
c0607602:	00 00                	add    %al,(%eax)
c0607604:	44                   	inc    %esp
c0607605:	00 2c 00             	add    %ch,(%eax,%eax,1)
	...
c0607610:	44                   	inc    %esp
c0607611:	00 31                	add    %dh,(%ecx)
c0607613:	00 07                	add    %al,(%edi)
c0607615:	00 00                	add    %al,(%eax)
c0607617:	00 00                	add    %al,(%eax)
c0607619:	00 00                	add    %al,(%eax)
c060761b:	00 44 00 31          	add    %al,0x31(%eax,%eax,1)
c060761f:	00 0e                	add    %cl,(%esi)
c0607621:	00 00                	add    %al,(%eax)
c0607623:	00 00                	add    %al,(%eax)
c0607625:	00 00                	add    %al,(%eax)
c0607627:	00 44 00 32          	add    %al,0x32(%eax,%eax,1)
c060762b:	00 14 00             	add    %dl,(%eax,%eax,1)
c060762e:	00 00                	add    %al,(%eax)
c0607630:	00 00                	add    %al,(%eax)
c0607632:	00 00                	add    %al,(%eax)
c0607634:	44                   	inc    %esp
c0607635:	00 35 00 1b 00 00    	add    %dh,0x1b00
c060763b:	00 00                	add    %al,(%eax)
c060763d:	00 00                	add    %al,(%eax)
c060763f:	00 44 00 32          	add    %al,0x32(%eax,%eax,1)
c0607643:	00 1e                	add    %bl,(%esi)
c0607645:	00 00                	add    %al,(%eax)
c0607647:	00 00                	add    %al,(%eax)
c0607649:	00 00                	add    %al,(%eax)
c060764b:	00 44 00 34          	add    %al,0x34(%eax,%eax,1)
c060764f:	00 24 00             	add    %ah,(%eax,%eax,1)
c0607652:	00 00                	add    %al,(%eax)
c0607654:	00 00                	add    %al,(%eax)
c0607656:	00 00                	add    %al,(%eax)
c0607658:	44                   	inc    %esp
c0607659:	00 33                	add    %dh,(%ebx)
c060765b:	00 27                	add    %ah,(%edi)
c060765d:	00 00                	add    %al,(%eax)
c060765f:	00 00                	add    %al,(%eax)
c0607661:	00 00                	add    %al,(%eax)
c0607663:	00 44 00 34          	add    %al,0x34(%eax,%eax,1)
c0607667:	00 2e                	add    %ch,(%esi)
c0607669:	00 00                	add    %al,(%eax)
c060766b:	00 00                	add    %al,(%eax)
c060766d:	00 00                	add    %al,(%eax)
c060766f:	00 44 00 35          	add    %al,0x35(%eax,%eax,1)
c0607673:	00 33                	add    %dh,(%ebx)
c0607675:	00 00                	add    %al,(%eax)
c0607677:	00 00                	add    %al,(%eax)
c0607679:	00 00                	add    %al,(%eax)
c060767b:	00 44 00 33          	add    %al,0x33(%eax,%eax,1)
c060767f:	00 36                	add    %dh,(%esi)
c0607681:	00 00                	add    %al,(%eax)
c0607683:	00 00                	add    %al,(%eax)
c0607685:	00 00                	add    %al,(%eax)
c0607687:	00 44 00 35          	add    %al,0x35(%eax,%eax,1)
c060768b:	00 3c 00             	add    %bh,(%eax,%eax,1)
c060768e:	00 00                	add    %al,(%eax)
c0607690:	00 00                	add    %al,(%eax)
c0607692:	00 00                	add    %al,(%eax)
c0607694:	44                   	inc    %esp
c0607695:	00 36                	add    %dh,(%esi)
c0607697:	00 41 00             	add    %al,0x0(%ecx)
c060769a:	00 00                	add    %al,(%eax)
c060769c:	00 00                	add    %al,(%eax)
c060769e:	00 00                	add    %al,(%eax)
c06076a0:	44                   	inc    %esp
c06076a1:	00 38                	add    %bh,(%eax)
c06076a3:	00 4b 00             	add    %cl,0x0(%ebx)
c06076a6:	00 00                	add    %al,(%eax)
c06076a8:	00 00                	add    %al,(%eax)
c06076aa:	00 00                	add    %al,(%eax)
c06076ac:	44                   	inc    %esp
c06076ad:	00 39                	add    %bh,(%ecx)
c06076af:	00 50 00             	add    %dl,0x0(%eax)
c06076b2:	00 00                	add    %al,(%eax)
c06076b4:	00 00                	add    %al,(%eax)
c06076b6:	00 00                	add    %al,(%eax)
c06076b8:	44                   	inc    %esp
c06076b9:	00 38                	add    %bh,(%eax)
c06076bb:	00 5a 00             	add    %bl,0x0(%edx)
c06076be:	00 00                	add    %al,(%eax)
c06076c0:	00 00                	add    %al,(%eax)
c06076c2:	00 00                	add    %al,(%eax)
c06076c4:	44                   	inc    %esp
c06076c5:	00 3b                	add    %bh,(%ebx)
c06076c7:	00 5f 00             	add    %bl,0x0(%edi)
c06076ca:	00 00                	add    %al,(%eax)
c06076cc:	00 00                	add    %al,(%eax)
c06076ce:	00 00                	add    %al,(%eax)
c06076d0:	44                   	inc    %esp
c06076d1:	00 3e                	add    %bh,(%esi)
c06076d3:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c06076d7:	00 00                	add    %al,(%eax)
c06076d9:	00 00                	add    %al,(%eax)
c06076db:	00 44 00 3b          	add    %al,0x3b(%eax,%eax,1)
c06076df:	00 6e 00             	add    %ch,0x0(%esi)
c06076e2:	00 00                	add    %al,(%eax)
c06076e4:	00 00                	add    %al,(%eax)
c06076e6:	00 00                	add    %al,(%eax)
c06076e8:	44                   	inc    %esp
c06076e9:	00 3f                	add    %bh,(%edi)
c06076eb:	00 73 00             	add    %dh,0x0(%ebx)
c06076ee:	00 00                	add    %al,(%eax)
c06076f0:	00 00                	add    %al,(%eax)
c06076f2:	00 00                	add    %al,(%eax)
c06076f4:	44                   	inc    %esp
c06076f5:	00 40 00             	add    %al,0x0(%eax)
c06076f8:	7d 00                	jge    c06076fa <.stab+0x6fa>
c06076fa:	00 00                	add    %al,(%eax)
c06076fc:	00 00                	add    %al,(%eax)
c06076fe:	00 00                	add    %al,(%eax)
c0607700:	44                   	inc    %esp
c0607701:	00 49 00             	add    %cl,0x0(%ecx)
c0607704:	87 00                	xchg   %eax,(%eax)
c0607706:	00 00                	add    %al,(%eax)
c0607708:	00 00                	add    %al,(%eax)
c060770a:	00 00                	add    %al,(%eax)
c060770c:	44                   	inc    %esp
c060770d:	00 4a 00             	add    %cl,0x0(%edx)
c0607710:	91                   	xchg   %eax,%ecx
c0607711:	00 00                	add    %al,(%eax)
c0607713:	00 00                	add    %al,(%eax)
c0607715:	00 00                	add    %al,(%eax)
c0607717:	00 44 00 53          	add    %al,0x53(%eax,%eax,1)
c060771b:	00 9b 00 00 00 00    	add    %bl,0x0(%ebx)
c0607721:	00 00                	add    %al,(%eax)
c0607723:	00 44 00 4e          	add    %al,0x4e(%eax,%eax,1)
c0607727:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c060772d:	00 00                	add    %al,(%eax)
c060772f:	00 44 00 52          	add    %al,0x52(%eax,%eax,1)
c0607733:	00 a9 00 00 00 00    	add    %ch,0x0(%ecx)
c0607739:	00 00                	add    %al,(%eax)
c060773b:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c060773f:	00 b0 00 00 00 00    	add    %dh,0x0(%eax)
c0607745:	00 00                	add    %al,(%eax)
c0607747:	00 44 00 50          	add    %al,0x50(%eax,%eax,1)
c060774b:	00 b7 00 00 00 00    	add    %dh,0x0(%edi)
c0607751:	00 00                	add    %al,(%eax)
c0607753:	00 44 00 4f          	add    %al,0x4f(%eax,%eax,1)
c0607757:	00 be 00 00 00 00    	add    %bh,0x0(%esi)
c060775d:	00 00                	add    %al,(%eax)
c060775f:	00 44 00 4e          	add    %al,0x4e(%eax,%eax,1)
c0607763:	00 c5                	add    %al,%ch
c0607765:	00 00                	add    %al,(%eax)
c0607767:	00 00                	add    %al,(%eax)
c0607769:	00 00                	add    %al,(%eax)
c060776b:	00 44 00 53          	add    %al,0x53(%eax,%eax,1)
c060776f:	00 c9                	add    %cl,%cl
c0607771:	00 00                	add    %al,(%eax)
c0607773:	00 00                	add    %al,(%eax)
c0607775:	00 00                	add    %al,(%eax)
c0607777:	00 44 00 4d          	add    %al,0x4d(%eax,%eax,1)
c060777b:	00 d1                	add    %dl,%cl
c060777d:	00 00                	add    %al,(%eax)
c060777f:	00 00                	add    %al,(%eax)
c0607781:	00 00                	add    %al,(%eax)
c0607783:	00 44 00 53          	add    %al,0x53(%eax,%eax,1)
c0607787:	00 d8                	add    %bl,%al
c0607789:	00 00                	add    %al,(%eax)
c060778b:	00 00                	add    %al,(%eax)
c060778d:	00 00                	add    %al,(%eax)
c060778f:	00 44 00 52          	add    %al,0x52(%eax,%eax,1)
c0607793:	00 db                	add    %bl,%bl
c0607795:	00 00                	add    %al,(%eax)
c0607797:	00 00                	add    %al,(%eax)
c0607799:	00 00                	add    %al,(%eax)
c060779b:	00 44 00 53          	add    %al,0x53(%eax,%eax,1)
c060779f:	00 e0                	add    %ah,%al
c06077a1:	00 00                	add    %al,(%eax)
c06077a3:	00 00                	add    %al,(%eax)
c06077a5:	00 00                	add    %al,(%eax)
c06077a7:	00 44 00 52          	add    %al,0x52(%eax,%eax,1)
c06077ab:	00 e4                	add    %ah,%ah
c06077ad:	00 00                	add    %al,(%eax)
c06077af:	00 00                	add    %al,(%eax)
c06077b1:	00 00                	add    %al,(%eax)
c06077b3:	00 44 00 4d          	add    %al,0x4d(%eax,%eax,1)
c06077b7:	00 e7                	add    %ah,%bh
c06077b9:	00 00                	add    %al,(%eax)
c06077bb:	00 00                	add    %al,(%eax)
c06077bd:	00 00                	add    %al,(%eax)
c06077bf:	00 44 00 52          	add    %al,0x52(%eax,%eax,1)
c06077c3:	00 ee                	add    %ch,%dh
c06077c5:	00 00                	add    %al,(%eax)
c06077c7:	00 00                	add    %al,(%eax)
c06077c9:	00 00                	add    %al,(%eax)
c06077cb:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c06077cf:	00 f1                	add    %dh,%cl
c06077d1:	00 00                	add    %al,(%eax)
c06077d3:	00 00                	add    %al,(%eax)
c06077d5:	00 00                	add    %al,(%eax)
c06077d7:	00 44 00 52          	add    %al,0x52(%eax,%eax,1)
c06077db:	00 f6                	add    %dh,%dh
c06077dd:	00 00                	add    %al,(%eax)
c06077df:	00 00                	add    %al,(%eax)
c06077e1:	00 00                	add    %al,(%eax)
c06077e3:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c06077e7:	00 f9                	add    %bh,%cl
c06077e9:	00 00                	add    %al,(%eax)
c06077eb:	00 00                	add    %al,(%eax)
c06077ed:	00 00                	add    %al,(%eax)
c06077ef:	00 44 00 4d          	add    %al,0x4d(%eax,%eax,1)
c06077f3:	00 fc                	add    %bh,%ah
c06077f5:	00 00                	add    %al,(%eax)
c06077f7:	00 00                	add    %al,(%eax)
c06077f9:	00 00                	add    %al,(%eax)
c06077fb:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c06077ff:	00 03                	add    %al,(%ebx)
c0607801:	01 00                	add    %eax,(%eax)
c0607803:	00 00                	add    %al,(%eax)
c0607805:	00 00                	add    %al,(%eax)
c0607807:	00 44 00 4e          	add    %al,0x4e(%eax,%eax,1)
c060780b:	00 06                	add    %al,(%esi)
c060780d:	01 00                	add    %eax,(%eax)
c060780f:	00 00                	add    %al,(%eax)
c0607811:	00 00                	add    %al,(%eax)
c0607813:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c0607817:	00 0b                	add    %cl,(%ebx)
c0607819:	01 00                	add    %eax,(%eax)
c060781b:	00 00                	add    %al,(%eax)
c060781d:	00 00                	add    %al,(%eax)
c060781f:	00 44 00 4d          	add    %al,0x4d(%eax,%eax,1)
c0607823:	00 0e                	add    %cl,(%esi)
c0607825:	01 00                	add    %eax,(%eax)
c0607827:	00 00                	add    %al,(%eax)
c0607829:	00 00                	add    %al,(%eax)
c060782b:	00 44 00 50          	add    %al,0x50(%eax,%eax,1)
c060782f:	00 15 01 00 00 00    	add    %dl,0x1
c0607835:	00 00                	add    %al,(%eax)
c0607837:	00 44 00 4d          	add    %al,0x4d(%eax,%eax,1)
c060783b:	00 23                	add    %ah,(%ebx)
c060783d:	01 00                	add    %eax,(%eax)
c060783f:	00 00                	add    %al,(%eax)
c0607841:	00 00                	add    %al,(%eax)
c0607843:	00 44 00 4f          	add    %al,0x4f(%eax,%eax,1)
c0607847:	00 2a                	add    %ch,(%edx)
c0607849:	01 00                	add    %eax,(%eax)
c060784b:	00 00                	add    %al,(%eax)
c060784d:	00 00                	add    %al,(%eax)
c060784f:	00 44 00 4d          	add    %al,0x4d(%eax,%eax,1)
c0607853:	00 38                	add    %bh,(%eax)
c0607855:	01 00                	add    %eax,(%eax)
c0607857:	00 00                	add    %al,(%eax)
c0607859:	00 00                	add    %al,(%eax)
c060785b:	00 44 00 4e          	add    %al,0x4e(%eax,%eax,1)
c060785f:	00 3f                	add    %bh,(%edi)
c0607861:	01 00                	add    %eax,(%eax)
c0607863:	00 00                	add    %al,(%eax)
c0607865:	00 00                	add    %al,(%eax)
c0607867:	00 44 00 4d          	add    %al,0x4d(%eax,%eax,1)
c060786b:	00 4d 01             	add    %cl,0x1(%ebp)
c060786e:	00 00                	add    %al,(%eax)
c0607870:	00 00                	add    %al,(%eax)
c0607872:	00 00                	add    %al,(%eax)
c0607874:	44                   	inc    %esp
c0607875:	00 56 00             	add    %dl,0x0(%esi)
c0607878:	5d                   	pop    %ebp
c0607879:	01 00                	add    %eax,(%eax)
c060787b:	00 00                	add    %al,(%eax)
c060787d:	00 00                	add    %al,(%eax)
c060787f:	00 44 00 57          	add    %al,0x57(%eax,%eax,1)
c0607883:	00 67 01             	add    %ah,0x1(%edi)
c0607886:	00 00                	add    %al,(%eax)
c0607888:	00 00                	add    %al,(%eax)
c060788a:	00 00                	add    %al,(%eax)
c060788c:	44                   	inc    %esp
c060788d:	00 58 00             	add    %bl,0x0(%eax)
c0607890:	71 01                	jno    c0607893 <.stab+0x893>
c0607892:	00 00                	add    %al,(%eax)
c0607894:	00 00                	add    %al,(%eax)
c0607896:	00 00                	add    %al,(%eax)
c0607898:	44                   	inc    %esp
c0607899:	00 96 00 7b 01 00    	add    %dl,0x17b00(%esi)
c060789f:	00 10                	add    %dl,(%eax)
c06078a1:	1e                   	push   %ds
c06078a2:	00 00                	add    %al,(%eax)
c06078a4:	24 00                	and    $0x0,%al
c06078a6:	00 00                	add    %al,(%eax)
c06078a8:	90                   	nop
c06078a9:	01 60 c0             	add    %esp,-0x40(%eax)
c06078ac:	20 1e                	and    %bl,(%esi)
c06078ae:	00 00                	add    %al,(%eax)
c06078b0:	a0 00 00 00 20       	mov    0x20000000,%al
c06078b5:	00 00                	add    %al,(%eax)
c06078b7:	00 32                	add    %dh,(%edx)
c06078b9:	1e                   	push   %ds
c06078ba:	00 00                	add    %al,(%eax)
c06078bc:	a0 00 00 00 24       	mov    0x24000000,%al
c06078c1:	00 00                	add    %al,(%eax)
c06078c3:	00 3f                	add    %bh,(%edi)
c06078c5:	1e                   	push   %ds
c06078c6:	00 00                	add    %al,(%eax)
c06078c8:	a0 00 00 00 28       	mov    0x28000000,%al
c06078cd:	00 00                	add    %al,(%eax)
c06078cf:	00 00                	add    %al,(%eax)
c06078d1:	00 00                	add    %al,(%eax)
c06078d3:	00 44 00 9a          	add    %al,-0x66(%eax,%eax,1)
	...
c06078df:	00 44 00 9a          	add    %al,-0x66(%eax,%eax,1)
c06078e3:	00 04 00             	add    %al,(%eax,%eax,1)
c06078e6:	00 00                	add    %al,(%eax)
c06078e8:	00 00                	add    %al,(%eax)
c06078ea:	00 00                	add    %al,(%eax)
c06078ec:	44                   	inc    %esp
c06078ed:	00 9f 00 08 00 00    	add    %bl,0x800(%edi)
c06078f3:	00 00                	add    %al,(%eax)
c06078f5:	00 00                	add    %al,(%eax)
c06078f7:	00 44 00 9d          	add    %al,-0x63(%eax,%eax,1)
c06078fb:	00 10                	add    %dl,(%eax)
c06078fd:	00 00                	add    %al,(%eax)
c06078ff:	00 00                	add    %al,(%eax)
c0607901:	00 00                	add    %al,(%eax)
c0607903:	00 44 00 9e          	add    %al,-0x62(%eax,%eax,1)
c0607907:	00 12                	add    %dl,(%edx)
c0607909:	00 00                	add    %al,(%eax)
c060790b:	00 00                	add    %al,(%eax)
c060790d:	00 00                	add    %al,(%eax)
c060790f:	00 44 00 9d          	add    %al,-0x63(%eax,%eax,1)
c0607913:	00 15 00 00 00 00    	add    %dl,0x0
c0607919:	00 00                	add    %al,(%eax)
c060791b:	00 44 00 9e          	add    %al,-0x62(%eax,%eax,1)
c060791f:	00 1b                	add    %bl,(%ebx)
c0607921:	00 00                	add    %al,(%eax)
c0607923:	00 00                	add    %al,(%eax)
c0607925:	00 00                	add    %al,(%eax)
c0607927:	00 44 00 9f          	add    %al,-0x61(%eax,%eax,1)
c060792b:	00 1d 00 00 00 00    	add    %bl,0x0
c0607931:	00 00                	add    %al,(%eax)
c0607933:	00 44 00 9f          	add    %al,-0x61(%eax,%eax,1)
c0607937:	00 23                	add    %ah,(%ebx)
c0607939:	00 00                	add    %al,(%eax)
c060793b:	00 00                	add    %al,(%eax)
c060793d:	00 00                	add    %al,(%eax)
c060793f:	00 44 00 9f          	add    %al,-0x61(%eax,%eax,1)
c0607943:	00 2f                	add    %ch,(%edi)
c0607945:	00 00                	add    %al,(%eax)
c0607947:	00 00                	add    %al,(%eax)
c0607949:	00 00                	add    %al,(%eax)
c060794b:	00 44 00 9f          	add    %al,-0x61(%eax,%eax,1)
c060794f:	00 32                	add    %dh,(%edx)
c0607951:	00 00                	add    %al,(%eax)
c0607953:	00 00                	add    %al,(%eax)
c0607955:	00 00                	add    %al,(%eax)
c0607957:	00 44 00 9e          	add    %al,-0x62(%eax,%eax,1)
c060795b:	00 39                	add    %bh,(%ecx)
c060795d:	00 00                	add    %al,(%eax)
c060795f:	00 00                	add    %al,(%eax)
c0607961:	00 00                	add    %al,(%eax)
c0607963:	00 44 00 9f          	add    %al,-0x61(%eax,%eax,1)
c0607967:	00 3c 00             	add    %bh,(%eax,%eax,1)
c060796a:	00 00                	add    %al,(%eax)
c060796c:	00 00                	add    %al,(%eax)
c060796e:	00 00                	add    %al,(%eax)
c0607970:	44                   	inc    %esp
c0607971:	00 9d 00 40 00 00    	add    %bl,0x4000(%ebp)
c0607977:	00 00                	add    %al,(%eax)
c0607979:	00 00                	add    %al,(%eax)
c060797b:	00 44 00 9f          	add    %al,-0x61(%eax,%eax,1)
c060797f:	00 46 00             	add    %al,0x0(%esi)
c0607982:	00 00                	add    %al,(%eax)
c0607984:	00 00                	add    %al,(%eax)
c0607986:	00 00                	add    %al,(%eax)
c0607988:	44                   	inc    %esp
c0607989:	00 a0 00 4e 00 00    	add    %ah,0x4e00(%eax)
c060798f:	00 4d 1e             	add    %cl,0x1e(%ebp)
c0607992:	00 00                	add    %al,(%eax)
c0607994:	40                   	inc    %eax
c0607995:	00 00                	add    %al,(%eax)
c0607997:	00 00                	add    %al,(%eax)
c0607999:	00 00                	add    %al,(%eax)
c060799b:	00 5b 1e             	add    %bl,0x1e(%ebx)
c060799e:	00 00                	add    %al,(%eax)
c06079a0:	24 00                	and    $0x0,%al
c06079a2:	00 00                	add    %al,(%eax)
c06079a4:	f0 01 60 c0          	lock add %esp,-0x40(%eax)
c06079a8:	00 00                	add    %al,(%eax)
c06079aa:	00 00                	add    %al,(%eax)
c06079ac:	44                   	inc    %esp
c06079ad:	00 a3 00 00 00 00    	add    %ah,0x0(%ebx)
c06079b3:	00 00                	add    %al,(%eax)
c06079b5:	00 00                	add    %al,(%eax)
c06079b7:	00 44 00 a4          	add    %al,-0x5c(%eax,%eax,1)
c06079bb:	00 03                	add    %al,(%ebx)
c06079bd:	00 00                	add    %al,(%eax)
c06079bf:	00 00                	add    %al,(%eax)
c06079c1:	00 00                	add    %al,(%eax)
c06079c3:	00 44 00 a6          	add    %al,-0x5a(%eax,%eax,1)
c06079c7:	00 0f                	add    %cl,(%edi)
c06079c9:	00 00                	add    %al,(%eax)
c06079cb:	00 67 1e             	add    %ah,0x1e(%edi)
c06079ce:	00 00                	add    %al,(%eax)
c06079d0:	24 00                	and    $0x0,%al
c06079d2:	00 00                	add    %al,(%eax)
c06079d4:	10 02                	adc    %al,(%edx)
c06079d6:	60                   	pusha  
c06079d7:	c0 77 1e 00          	shlb   $0x0,0x1e(%edi)
c06079db:	00 a0 00 00 00 04    	add    %ah,0x4000000(%eax)
c06079e1:	00 00                	add    %al,(%eax)
c06079e3:	00 00                	add    %al,(%eax)
c06079e5:	00 00                	add    %al,(%eax)
c06079e7:	00 44 00 be          	add    %al,-0x42(%eax,%eax,1)
	...
c06079f3:	00 44 00 c5          	add    %al,-0x3b(%eax,%eax,1)
	...
c06079ff:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c0607a03:	00 11                	add    %dl,(%ecx)
c0607a05:	02 60 c0             	add    -0x40(%eax),%ah

c0607a08 <.stab>:
c0607a08:	8f                   	(bad)  
c0607a09:	1e                   	push   %ds
c0607a0a:	00 00                	add    %al,(%eax)
c0607a0c:	64 00 02             	add    %al,%fs:(%edx)
c0607a0f:	00 00                	add    %al,(%eax)
c0607a11:	0d 60 c0 08 00       	or     $0x8c060,%eax
c0607a16:	00 00                	add    %al,(%eax)
c0607a18:	3c 00                	cmp    $0x0,%al
c0607a1a:	00 00                	add    %al,(%eax)
c0607a1c:	00 00                	add    %al,(%eax)
c0607a1e:	00 00                	add    %al,(%eax)
c0607a20:	17                   	pop    %ss
c0607a21:	00 00                	add    %al,(%eax)
c0607a23:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607a29:	00 00                	add    %al,(%eax)
c0607a2b:	00 41 00             	add    %al,0x0(%ecx)
c0607a2e:	00 00                	add    %al,(%eax)
c0607a30:	80 00 00             	addb   $0x0,(%eax)
c0607a33:	00 00                	add    %al,(%eax)
c0607a35:	00 00                	add    %al,(%eax)
c0607a37:	00 5b 00             	add    %bl,0x0(%ebx)
c0607a3a:	00 00                	add    %al,(%eax)
c0607a3c:	80 00 00             	addb   $0x0,(%eax)
c0607a3f:	00 00                	add    %al,(%eax)
c0607a41:	00 00                	add    %al,(%eax)
c0607a43:	00 8a 00 00 00 80    	add    %cl,-0x80000000(%edx)
c0607a49:	00 00                	add    %al,(%eax)
c0607a4b:	00 00                	add    %al,(%eax)
c0607a4d:	00 00                	add    %al,(%eax)
c0607a4f:	00 b3 00 00 00 80    	add    %dh,-0x80000000(%ebx)
c0607a55:	00 00                	add    %al,(%eax)
c0607a57:	00 00                	add    %al,(%eax)
c0607a59:	00 00                	add    %al,(%eax)
c0607a5b:	00 e1                	add    %ah,%cl
c0607a5d:	00 00                	add    %al,(%eax)
c0607a5f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607a65:	00 00                	add    %al,(%eax)
c0607a67:	00 fe                	add    %bh,%dh
c0607a69:	00 00                	add    %al,(%eax)
c0607a6b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607a71:	00 00                	add    %al,(%eax)
c0607a73:	00 24 01             	add    %ah,(%ecx,%eax,1)
c0607a76:	00 00                	add    %al,(%eax)
c0607a78:	80 00 00             	addb   $0x0,(%eax)
c0607a7b:	00 00                	add    %al,(%eax)
c0607a7d:	00 00                	add    %al,(%eax)
c0607a7f:	00 6a 01             	add    %ch,0x1(%edx)
c0607a82:	00 00                	add    %al,(%eax)
c0607a84:	80 00 00             	addb   $0x0,(%eax)
c0607a87:	00 00                	add    %al,(%eax)
c0607a89:	00 00                	add    %al,(%eax)
c0607a8b:	00 95 01 00 00 80    	add    %dl,-0x7fffffff(%ebp)
c0607a91:	00 00                	add    %al,(%eax)
c0607a93:	00 00                	add    %al,(%eax)
c0607a95:	00 00                	add    %al,(%eax)
c0607a97:	00 bd 01 00 00 80    	add    %bh,-0x7fffffff(%ebp)
c0607a9d:	00 00                	add    %al,(%eax)
c0607a9f:	00 00                	add    %al,(%eax)
c0607aa1:	00 00                	add    %al,(%eax)
c0607aa3:	00 e9                	add    %ch,%cl
c0607aa5:	01 00                	add    %eax,(%eax)
c0607aa7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607aad:	00 00                	add    %al,(%eax)
c0607aaf:	00 0f                	add    %cl,(%edi)
c0607ab1:	02 00                	add    (%eax),%al
c0607ab3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607ab9:	00 00                	add    %al,(%eax)
c0607abb:	00 34 02             	add    %dh,(%edx,%eax,1)
c0607abe:	00 00                	add    %al,(%eax)
c0607ac0:	80 00 00             	addb   $0x0,(%eax)
c0607ac3:	00 00                	add    %al,(%eax)
c0607ac5:	00 00                	add    %al,(%eax)
c0607ac7:	00 4e 02             	add    %cl,0x2(%esi)
c0607aca:	00 00                	add    %al,(%eax)
c0607acc:	80 00 00             	addb   $0x0,(%eax)
c0607acf:	00 00                	add    %al,(%eax)
c0607ad1:	00 00                	add    %al,(%eax)
c0607ad3:	00 69 02             	add    %ch,0x2(%ecx)
c0607ad6:	00 00                	add    %al,(%eax)
c0607ad8:	80 00 00             	addb   $0x0,(%eax)
c0607adb:	00 00                	add    %al,(%eax)
c0607add:	00 00                	add    %al,(%eax)
c0607adf:	00 8a 02 00 00 80    	add    %cl,-0x7ffffffe(%edx)
c0607ae5:	00 00                	add    %al,(%eax)
c0607ae7:	00 00                	add    %al,(%eax)
c0607ae9:	00 00                	add    %al,(%eax)
c0607aeb:	00 a7 02 00 00 80    	add    %ah,-0x7ffffffe(%edi)
c0607af1:	00 00                	add    %al,(%eax)
c0607af3:	00 00                	add    %al,(%eax)
c0607af5:	00 00                	add    %al,(%eax)
c0607af7:	00 c4                	add    %al,%ah
c0607af9:	02 00                	add    (%eax),%al
c0607afb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607b01:	00 00                	add    %al,(%eax)
c0607b03:	00 e3                	add    %ah,%bl
c0607b05:	02 00                	add    (%eax),%al
c0607b07:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607b0d:	00 00                	add    %al,(%eax)
c0607b0f:	00 01                	add    %al,(%ecx)
c0607b11:	03 00                	add    (%eax),%eax
c0607b13:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607b19:	00 00                	add    %al,(%eax)
c0607b1b:	00 20                	add    %ah,(%eax)
c0607b1d:	03 00                	add    (%eax),%eax
c0607b1f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607b25:	00 00                	add    %al,(%eax)
c0607b27:	00 3f                	add    %bh,(%edi)
c0607b29:	03 00                	add    (%eax),%eax
c0607b2b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607b31:	00 00                	add    %al,(%eax)
c0607b33:	00 5e 03             	add    %bl,0x3(%esi)
c0607b36:	00 00                	add    %al,(%eax)
c0607b38:	80 00 00             	addb   $0x0,(%eax)
c0607b3b:	00 00                	add    %al,(%eax)
c0607b3d:	00 00                	add    %al,(%eax)
c0607b3f:	00 7f 03             	add    %bh,0x3(%edi)
c0607b42:	00 00                	add    %al,(%eax)
c0607b44:	80 00 00             	addb   $0x0,(%eax)
c0607b47:	00 00                	add    %al,(%eax)
c0607b49:	00 00                	add    %al,(%eax)
c0607b4b:	00 93 03 00 00 c2    	add    %dl,-0x3dfffffd(%ebx)
c0607b51:	00 00                	add    %al,(%eax)
c0607b53:	00 4c 18 00          	add    %cl,0x0(%eax,%ebx,1)
c0607b57:	00 a5 03 00 00 c2    	add    %ah,-0x3dfffffd(%ebp)
c0607b5d:	00 00                	add    %al,(%eax)
c0607b5f:	00 26                	add    %ah,(%esi)
c0607b61:	59                   	pop    %ecx
c0607b62:	01 00                	add    %eax,(%eax)
c0607b64:	2e 11 00             	adc    %eax,%cs:(%eax)
c0607b67:	00 c2                	add    %al,%dl
c0607b69:	00 00                	add    %al,(%eax)
c0607b6b:	00 90 c7 00 00 42    	add    %dl,0x420000c7(%eax)
c0607b71:	11 00                	adc    %eax,(%eax)
c0607b73:	00 c2                	add    %al,%dl
c0607b75:	00 00                	add    %al,(%eax)
c0607b77:	00 5a 04             	add    %bl,0x4(%edx)
c0607b7a:	00 00                	add    %al,(%eax)
c0607b7c:	96                   	xchg   %eax,%esi
c0607b7d:	1e                   	push   %ds
c0607b7e:	00 00                	add    %al,(%eax)
c0607b80:	82 00 00             	addb   $0x0,(%eax)
c0607b83:	00 4b 4d             	add    %cl,0x4d(%ebx)
c0607b86:	00 00                	add    %al,(%eax)
c0607b88:	9f                   	lahf   
c0607b89:	10 00                	adc    %al,(%eax)
c0607b8b:	00 c2                	add    %al,%dl
c0607b8d:	00 00                	add    %al,(%eax)
c0607b8f:	00 2b                	add    %ch,(%ebx)
c0607b91:	1d 00 00 a7 1e       	sbb    $0x1ea70000,%eax
c0607b96:	00 00                	add    %al,(%eax)
c0607b98:	80 00 00             	addb   $0x0,(%eax)
c0607b9b:	00 00                	add    %al,(%eax)
c0607b9d:	00 00                	add    %al,(%eax)
c0607b9f:	00 bc 1e 00 00 80 00 	add    %bh,0x800000(%esi,%ebx,1)
c0607ba6:	00 00                	add    %al,(%eax)
c0607ba8:	00 00                	add    %al,(%eax)
c0607baa:	00 00                	add    %al,(%eax)
c0607bac:	09 1f                	or     %ebx,(%edi)
c0607bae:	00 00                	add    %al,(%eax)
c0607bb0:	80 00 00             	addb   $0x0,(%eax)
c0607bb3:	00 00                	add    %al,(%eax)
c0607bb5:	00 00                	add    %al,(%eax)
c0607bb7:	00 bd 1f 00 00 80    	add    %bh,-0x7fffffe1(%ebp)
	...
c0607bc5:	00 00                	add    %al,(%eax)
c0607bc7:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c0607bcd:	00 00                	add    %al,(%eax)
c0607bcf:	00 85 1c 00 00 20    	add    %al,0x2000001c(%ebp)
c0607bd5:	00 00                	add    %al,(%eax)
c0607bd7:	00 00                	add    %al,(%eax)
c0607bd9:	00 00                	add    %al,(%eax)
c0607bdb:	00 d4                	add    %dl,%ah
c0607bdd:	1f                   	pop    %ds
c0607bde:	00 00                	add    %al,(%eax)
c0607be0:	26 00 00             	add    %al,%es:(%eax)
c0607be3:	00 00                	add    %al,(%eax)
c0607be5:	50                   	push   %eax
c0607be6:	60                   	pusha  
c0607be7:	c0 e2 1f             	shl    $0x1f,%dl
c0607bea:	00 00                	add    %al,(%eax)
c0607bec:	24 00                	and    $0x0,%al
c0607bee:	00 00                	add    %al,(%eax)
c0607bf0:	00 0d 60 c0 00 00    	add    %cl,0xc060
c0607bf6:	00 00                	add    %al,(%eax)
c0607bf8:	44                   	inc    %esp
c0607bf9:	00 06                	add    %al,(%esi)
	...
c0607c03:	00 44 00 07          	add    %al,0x7(%eax,%eax,1)
c0607c07:	00 03                	add    %al,(%ebx)
c0607c09:	00 00                	add    %al,(%eax)
c0607c0b:	00 00                	add    %al,(%eax)
c0607c0d:	00 00                	add    %al,(%eax)
c0607c0f:	00 44 00 08          	add    %al,0x8(%eax,%eax,1)
c0607c13:	00 08                	add    %cl,(%eax)
c0607c15:	00 00                	add    %al,(%eax)
c0607c17:	00 00                	add    %al,(%eax)
c0607c19:	00 00                	add    %al,(%eax)
c0607c1b:	00 44 00 09          	add    %al,0x9(%eax,%eax,1)
c0607c1f:	00 0d 00 00 00 00    	add    %cl,0x0
c0607c25:	00 00                	add    %al,(%eax)
c0607c27:	00 44 00 0c          	add    %al,0xc(%eax,%eax,1)
c0607c2b:	00 12                	add    %dl,(%edx)
c0607c2d:	00 00                	add    %al,(%eax)
c0607c2f:	00 00                	add    %al,(%eax)
c0607c31:	00 00                	add    %al,(%eax)
c0607c33:	00 44 00 0d          	add    %al,0xd(%eax,%eax,1)
c0607c37:	00 1e                	add    %bl,(%esi)
c0607c39:	00 00                	add    %al,(%eax)
c0607c3b:	00 00                	add    %al,(%eax)
c0607c3d:	00 00                	add    %al,(%eax)
c0607c3f:	00 44 00 0f          	add    %al,0xf(%eax,%eax,1)
c0607c43:	00 2a                	add    %ch,(%edx)
c0607c45:	00 00                	add    %al,(%eax)
c0607c47:	00 00                	add    %al,(%eax)
c0607c49:	00 00                	add    %al,(%eax)
c0607c4b:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c0607c4f:	00 30                	add    %dh,(%eax)
c0607c51:	0d 60 c0         	or     $0x1ff1c060,%eax

c0607c54 <.stab>:
c0607c54:	f1                   	icebp  
c0607c55:	1f                   	pop    %ds
c0607c56:	00 00                	add    %al,(%eax)
c0607c58:	64 00 02             	add    %al,%fs:(%edx)
c0607c5b:	00 30                	add    %dh,(%eax)
c0607c5d:	0d 60 c0 08 00       	or     $0x8c060,%eax
c0607c62:	00 00                	add    %al,(%eax)
c0607c64:	3c 00                	cmp    $0x0,%al
c0607c66:	00 00                	add    %al,(%eax)
c0607c68:	00 00                	add    %al,(%eax)
c0607c6a:	00 00                	add    %al,(%eax)
c0607c6c:	17                   	pop    %ss
c0607c6d:	00 00                	add    %al,(%eax)
c0607c6f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607c75:	00 00                	add    %al,(%eax)
c0607c77:	00 41 00             	add    %al,0x0(%ecx)
c0607c7a:	00 00                	add    %al,(%eax)
c0607c7c:	80 00 00             	addb   $0x0,(%eax)
c0607c7f:	00 00                	add    %al,(%eax)
c0607c81:	00 00                	add    %al,(%eax)
c0607c83:	00 5b 00             	add    %bl,0x0(%ebx)
c0607c86:	00 00                	add    %al,(%eax)
c0607c88:	80 00 00             	addb   $0x0,(%eax)
c0607c8b:	00 00                	add    %al,(%eax)
c0607c8d:	00 00                	add    %al,(%eax)
c0607c8f:	00 8a 00 00 00 80    	add    %cl,-0x80000000(%edx)
c0607c95:	00 00                	add    %al,(%eax)
c0607c97:	00 00                	add    %al,(%eax)
c0607c99:	00 00                	add    %al,(%eax)
c0607c9b:	00 b3 00 00 00 80    	add    %dh,-0x80000000(%ebx)
c0607ca1:	00 00                	add    %al,(%eax)
c0607ca3:	00 00                	add    %al,(%eax)
c0607ca5:	00 00                	add    %al,(%eax)
c0607ca7:	00 e1                	add    %ah,%cl
c0607ca9:	00 00                	add    %al,(%eax)
c0607cab:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607cb1:	00 00                	add    %al,(%eax)
c0607cb3:	00 fe                	add    %bh,%dh
c0607cb5:	00 00                	add    %al,(%eax)
c0607cb7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607cbd:	00 00                	add    %al,(%eax)
c0607cbf:	00 24 01             	add    %ah,(%ecx,%eax,1)
c0607cc2:	00 00                	add    %al,(%eax)
c0607cc4:	80 00 00             	addb   $0x0,(%eax)
c0607cc7:	00 00                	add    %al,(%eax)
c0607cc9:	00 00                	add    %al,(%eax)
c0607ccb:	00 6a 01             	add    %ch,0x1(%edx)
c0607cce:	00 00                	add    %al,(%eax)
c0607cd0:	80 00 00             	addb   $0x0,(%eax)
c0607cd3:	00 00                	add    %al,(%eax)
c0607cd5:	00 00                	add    %al,(%eax)
c0607cd7:	00 95 01 00 00 80    	add    %dl,-0x7fffffff(%ebp)
c0607cdd:	00 00                	add    %al,(%eax)
c0607cdf:	00 00                	add    %al,(%eax)
c0607ce1:	00 00                	add    %al,(%eax)
c0607ce3:	00 bd 01 00 00 80    	add    %bh,-0x7fffffff(%ebp)
c0607ce9:	00 00                	add    %al,(%eax)
c0607ceb:	00 00                	add    %al,(%eax)
c0607ced:	00 00                	add    %al,(%eax)
c0607cef:	00 e9                	add    %ch,%cl
c0607cf1:	01 00                	add    %eax,(%eax)
c0607cf3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607cf9:	00 00                	add    %al,(%eax)
c0607cfb:	00 0f                	add    %cl,(%edi)
c0607cfd:	02 00                	add    (%eax),%al
c0607cff:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607d05:	00 00                	add    %al,(%eax)
c0607d07:	00 34 02             	add    %dh,(%edx,%eax,1)
c0607d0a:	00 00                	add    %al,(%eax)
c0607d0c:	80 00 00             	addb   $0x0,(%eax)
c0607d0f:	00 00                	add    %al,(%eax)
c0607d11:	00 00                	add    %al,(%eax)
c0607d13:	00 4e 02             	add    %cl,0x2(%esi)
c0607d16:	00 00                	add    %al,(%eax)
c0607d18:	80 00 00             	addb   $0x0,(%eax)
c0607d1b:	00 00                	add    %al,(%eax)
c0607d1d:	00 00                	add    %al,(%eax)
c0607d1f:	00 69 02             	add    %ch,0x2(%ecx)
c0607d22:	00 00                	add    %al,(%eax)
c0607d24:	80 00 00             	addb   $0x0,(%eax)
c0607d27:	00 00                	add    %al,(%eax)
c0607d29:	00 00                	add    %al,(%eax)
c0607d2b:	00 8a 02 00 00 80    	add    %cl,-0x7ffffffe(%edx)
c0607d31:	00 00                	add    %al,(%eax)
c0607d33:	00 00                	add    %al,(%eax)
c0607d35:	00 00                	add    %al,(%eax)
c0607d37:	00 a7 02 00 00 80    	add    %ah,-0x7ffffffe(%edi)
c0607d3d:	00 00                	add    %al,(%eax)
c0607d3f:	00 00                	add    %al,(%eax)
c0607d41:	00 00                	add    %al,(%eax)
c0607d43:	00 c4                	add    %al,%ah
c0607d45:	02 00                	add    (%eax),%al
c0607d47:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607d4d:	00 00                	add    %al,(%eax)
c0607d4f:	00 e3                	add    %ah,%bl
c0607d51:	02 00                	add    (%eax),%al
c0607d53:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607d59:	00 00                	add    %al,(%eax)
c0607d5b:	00 01                	add    %al,(%ecx)
c0607d5d:	03 00                	add    (%eax),%eax
c0607d5f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607d65:	00 00                	add    %al,(%eax)
c0607d67:	00 20                	add    %ah,(%eax)
c0607d69:	03 00                	add    (%eax),%eax
c0607d6b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607d71:	00 00                	add    %al,(%eax)
c0607d73:	00 3f                	add    %bh,(%edi)
c0607d75:	03 00                	add    (%eax),%eax
c0607d77:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607d7d:	00 00                	add    %al,(%eax)
c0607d7f:	00 5e 03             	add    %bl,0x3(%esi)
c0607d82:	00 00                	add    %al,(%eax)
c0607d84:	80 00 00             	addb   $0x0,(%eax)
c0607d87:	00 00                	add    %al,(%eax)
c0607d89:	00 00                	add    %al,(%eax)
c0607d8b:	00 7f 03             	add    %bh,0x3(%edi)
c0607d8e:	00 00                	add    %al,(%eax)
c0607d90:	80 00 00             	addb   $0x0,(%eax)
c0607d93:	00 00                	add    %al,(%eax)
c0607d95:	00 00                	add    %al,(%eax)
c0607d97:	00 f8                	add    %bh,%al
c0607d99:	1f                   	pop    %ds
c0607d9a:	00 00                	add    %al,(%eax)
c0607d9c:	24 00                	and    $0x0,%al
c0607d9e:	00 00                	add    %al,(%eax)
c0607da0:	30 0d 60 c0 04 20    	xor    %cl,0x2004c060
c0607da6:	00 00                	add    %al,(%eax)
c0607da8:	a0 00 00 00 04       	mov    0x4000000,%al
c0607dad:	00 00                	add    %al,(%eax)
c0607daf:	00 0e                	add    %cl,(%esi)
c0607db1:	20 00                	and    %al,(%eax)
c0607db3:	00 a0 00 00 00 0c    	add    %ah,0xc000000(%eax)
c0607db9:	00 00                	add    %al,(%eax)
c0607dbb:	00 00                	add    %al,(%eax)
c0607dbd:	00 00                	add    %al,(%eax)
c0607dbf:	00 44 00 03          	add    %al,0x3(%eax,%eax,1)
	...
c0607dcb:	00 44 00 03          	add    %al,0x3(%eax,%eax,1)
	...
c0607dd7:	00 44 00 04          	add    %al,0x4(%eax,%eax,1)
c0607ddb:	00 08                	add    %cl,(%eax)
c0607ddd:	00 00                	add    %al,(%eax)
c0607ddf:	00 00                	add    %al,(%eax)
c0607de1:	00 00                	add    %al,(%eax)
c0607de3:	00 44 00 05          	add    %al,0x5(%eax,%eax,1)
c0607de7:	00 10                	add    %dl,(%eax)
c0607de9:	00 00                	add    %al,(%eax)
c0607deb:	00 00                	add    %al,(%eax)
c0607ded:	00 00                	add    %al,(%eax)
c0607def:	00 44 00 06          	add    %al,0x6(%eax,%eax,1)
c0607df3:	00 30                	add    %dh,(%eax)
c0607df5:	00 00                	add    %al,(%eax)
c0607df7:	00 00                	add    %al,(%eax)
c0607df9:	00 00                	add    %al,(%eax)
c0607dfb:	00 44 00 09          	add    %al,0x9(%eax,%eax,1)
c0607dff:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
c0607e03:	00 18                	add    %bl,(%eax)
c0607e05:	20 00                	and    %al,(%eax)
c0607e07:	00 40 00             	add    %al,0x0(%eax)
c0607e0a:	00 00                	add    %al,(%eax)
c0607e0c:	0c 00                	or     $0x0,%al
c0607e0e:	00 00                	add    %al,(%eax)
c0607e10:	22 20                	and    (%eax),%ah
c0607e12:	00 00                	add    %al,(%eax)
c0607e14:	40                   	inc    %eax
c0607e15:	00 00                	add    %al,(%eax)
c0607e17:	00 0f                	add    %cl,(%edi)
c0607e19:	00 00                	add    %al,(%eax)
c0607e1b:	00 2c 20             	add    %ch,(%eax,%eiz,1)
c0607e1e:	00 00                	add    %al,(%eax)
c0607e20:	40                   	inc    %eax
c0607e21:	00 00                	add    %al,(%eax)
c0607e23:	00 0d 00 00 00 00    	add    %cl,0x0
c0607e29:	00 00                	add    %al,(%eax)
c0607e2b:	00 c0                	add    %al,%al
	...
c0607e35:	00 00                	add    %al,(%eax)
c0607e37:	00 e0                	add    %ah,%al
c0607e39:	00 00                	add    %al,(%eax)
c0607e3b:	00 45 00             	add    %al,0x0(%ebp)
c0607e3e:	00 00                	add    %al,(%eax)
c0607e40:	00 00                	add    %al,(%eax)
c0607e42:	00 00                	add    %al,(%eax)
c0607e44:	64 00 00             	add    %al,%fs:(%eax)
c0607e47:	00 75 0d             	add    %dh,0xd(%ebp)
c0607e4a:	60                   	pusha  
c0607e4b:	c0               	shlb   $0x20,(%esi)

c0607e4c <.stab>:
c0607e4c:	36 20 00             	and    %al,%ss:(%eax)
c0607e4f:	00 64 00 02          	add    %ah,0x2(%eax,%eax,1)
c0607e53:	00 80 0d 60 c0 08    	add    %al,0x8c0600d(%eax)
c0607e59:	00 00                	add    %al,(%eax)
c0607e5b:	00 3c 00             	add    %bh,(%eax,%eax,1)
c0607e5e:	00 00                	add    %al,(%eax)
c0607e60:	00 00                	add    %al,(%eax)
c0607e62:	00 00                	add    %al,(%eax)
c0607e64:	17                   	pop    %ss
c0607e65:	00 00                	add    %al,(%eax)
c0607e67:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607e6d:	00 00                	add    %al,(%eax)
c0607e6f:	00 41 00             	add    %al,0x0(%ecx)
c0607e72:	00 00                	add    %al,(%eax)
c0607e74:	80 00 00             	addb   $0x0,(%eax)
c0607e77:	00 00                	add    %al,(%eax)
c0607e79:	00 00                	add    %al,(%eax)
c0607e7b:	00 5b 00             	add    %bl,0x0(%ebx)
c0607e7e:	00 00                	add    %al,(%eax)
c0607e80:	80 00 00             	addb   $0x0,(%eax)
c0607e83:	00 00                	add    %al,(%eax)
c0607e85:	00 00                	add    %al,(%eax)
c0607e87:	00 8a 00 00 00 80    	add    %cl,-0x80000000(%edx)
c0607e8d:	00 00                	add    %al,(%eax)
c0607e8f:	00 00                	add    %al,(%eax)
c0607e91:	00 00                	add    %al,(%eax)
c0607e93:	00 b3 00 00 00 80    	add    %dh,-0x80000000(%ebx)
c0607e99:	00 00                	add    %al,(%eax)
c0607e9b:	00 00                	add    %al,(%eax)
c0607e9d:	00 00                	add    %al,(%eax)
c0607e9f:	00 e1                	add    %ah,%cl
c0607ea1:	00 00                	add    %al,(%eax)
c0607ea3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607ea9:	00 00                	add    %al,(%eax)
c0607eab:	00 fe                	add    %bh,%dh
c0607ead:	00 00                	add    %al,(%eax)
c0607eaf:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607eb5:	00 00                	add    %al,(%eax)
c0607eb7:	00 24 01             	add    %ah,(%ecx,%eax,1)
c0607eba:	00 00                	add    %al,(%eax)
c0607ebc:	80 00 00             	addb   $0x0,(%eax)
c0607ebf:	00 00                	add    %al,(%eax)
c0607ec1:	00 00                	add    %al,(%eax)
c0607ec3:	00 6a 01             	add    %ch,0x1(%edx)
c0607ec6:	00 00                	add    %al,(%eax)
c0607ec8:	80 00 00             	addb   $0x0,(%eax)
c0607ecb:	00 00                	add    %al,(%eax)
c0607ecd:	00 00                	add    %al,(%eax)
c0607ecf:	00 95 01 00 00 80    	add    %dl,-0x7fffffff(%ebp)
c0607ed5:	00 00                	add    %al,(%eax)
c0607ed7:	00 00                	add    %al,(%eax)
c0607ed9:	00 00                	add    %al,(%eax)
c0607edb:	00 bd 01 00 00 80    	add    %bh,-0x7fffffff(%ebp)
c0607ee1:	00 00                	add    %al,(%eax)
c0607ee3:	00 00                	add    %al,(%eax)
c0607ee5:	00 00                	add    %al,(%eax)
c0607ee7:	00 e9                	add    %ch,%cl
c0607ee9:	01 00                	add    %eax,(%eax)
c0607eeb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607ef1:	00 00                	add    %al,(%eax)
c0607ef3:	00 0f                	add    %cl,(%edi)
c0607ef5:	02 00                	add    (%eax),%al
c0607ef7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607efd:	00 00                	add    %al,(%eax)
c0607eff:	00 34 02             	add    %dh,(%edx,%eax,1)
c0607f02:	00 00                	add    %al,(%eax)
c0607f04:	80 00 00             	addb   $0x0,(%eax)
c0607f07:	00 00                	add    %al,(%eax)
c0607f09:	00 00                	add    %al,(%eax)
c0607f0b:	00 4e 02             	add    %cl,0x2(%esi)
c0607f0e:	00 00                	add    %al,(%eax)
c0607f10:	80 00 00             	addb   $0x0,(%eax)
c0607f13:	00 00                	add    %al,(%eax)
c0607f15:	00 00                	add    %al,(%eax)
c0607f17:	00 69 02             	add    %ch,0x2(%ecx)
c0607f1a:	00 00                	add    %al,(%eax)
c0607f1c:	80 00 00             	addb   $0x0,(%eax)
c0607f1f:	00 00                	add    %al,(%eax)
c0607f21:	00 00                	add    %al,(%eax)
c0607f23:	00 8a 02 00 00 80    	add    %cl,-0x7ffffffe(%edx)
c0607f29:	00 00                	add    %al,(%eax)
c0607f2b:	00 00                	add    %al,(%eax)
c0607f2d:	00 00                	add    %al,(%eax)
c0607f2f:	00 a7 02 00 00 80    	add    %ah,-0x7ffffffe(%edi)
c0607f35:	00 00                	add    %al,(%eax)
c0607f37:	00 00                	add    %al,(%eax)
c0607f39:	00 00                	add    %al,(%eax)
c0607f3b:	00 c4                	add    %al,%ah
c0607f3d:	02 00                	add    (%eax),%al
c0607f3f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607f45:	00 00                	add    %al,(%eax)
c0607f47:	00 e3                	add    %ah,%bl
c0607f49:	02 00                	add    (%eax),%al
c0607f4b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607f51:	00 00                	add    %al,(%eax)
c0607f53:	00 01                	add    %al,(%ecx)
c0607f55:	03 00                	add    (%eax),%eax
c0607f57:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607f5d:	00 00                	add    %al,(%eax)
c0607f5f:	00 20                	add    %ah,(%eax)
c0607f61:	03 00                	add    (%eax),%eax
c0607f63:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607f69:	00 00                	add    %al,(%eax)
c0607f6b:	00 3f                	add    %bh,(%edi)
c0607f6d:	03 00                	add    (%eax),%eax
c0607f6f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0607f75:	00 00                	add    %al,(%eax)
c0607f77:	00 5e 03             	add    %bl,0x3(%esi)
c0607f7a:	00 00                	add    %al,(%eax)
c0607f7c:	80 00 00             	addb   $0x0,(%eax)
c0607f7f:	00 00                	add    %al,(%eax)
c0607f81:	00 00                	add    %al,(%eax)
c0607f83:	00 7f 03             	add    %bh,0x3(%edi)
c0607f86:	00 00                	add    %al,(%eax)
c0607f88:	80 00 00             	addb   $0x0,(%eax)
c0607f8b:	00 00                	add    %al,(%eax)
c0607f8d:	00 00                	add    %al,(%eax)
c0607f8f:	00 2e                	add    %ch,(%esi)
c0607f91:	11 00                	adc    %eax,(%eax)
c0607f93:	00 c2                	add    %al,%dl
c0607f95:	00 00                	add    %al,(%eax)
c0607f97:	00 90 c7 00 00 a5    	add    %dl,-0x5affff39(%eax)
c0607f9d:	03 00                	add    (%eax),%eax
c0607f9f:	00 c2                	add    %al,%dl
c0607fa1:	00 00                	add    %al,(%eax)
c0607fa3:	00 26                	add    %ah,(%esi)
c0607fa5:	59                   	pop    %ecx
c0607fa6:	01 00                	add    %eax,(%eax)
c0607fa8:	93                   	xchg   %eax,%ebx
c0607fa9:	03 00                	add    (%eax),%eax
c0607fab:	00 c2                	add    %al,%dl
c0607fad:	00 00                	add    %al,(%eax)
c0607faf:	00 4c 18 00          	add    %cl,0x0(%eax,%ebx,1)
c0607fb3:	00 42 11             	add    %al,0x11(%edx)
c0607fb6:	00 00                	add    %al,(%eax)
c0607fb8:	c2 00 00             	ret    $0x0
c0607fbb:	00 5a 04             	add    %bl,0x4(%edx)
c0607fbe:	00 00                	add    %al,(%eax)
c0607fc0:	9f                   	lahf   
c0607fc1:	10 00                	adc    %al,(%eax)
c0607fc3:	00 c2                	add    %al,%dl
c0607fc5:	00 00                	add    %al,(%eax)
c0607fc7:	00 2b                	add    %ch,(%ebx)
c0607fc9:	1d 00 00 3f 20       	sbb    $0x203f0000,%eax
c0607fce:	00 00                	add    %al,(%eax)
c0607fd0:	80 00 00             	addb   $0x0,(%eax)
c0607fd3:	00 00                	add    %al,(%eax)
c0607fd5:	00 00                	add    %al,(%eax)
c0607fd7:	00 76 20             	add    %dh,0x20(%esi)
c0607fda:	00 00                	add    %al,(%eax)
c0607fdc:	20 00                	and    %al,(%eax)
c0607fde:	00 00                	add    %al,(%eax)
c0607fe0:	00 00                	add    %al,(%eax)
c0607fe2:	00 00                	add    %al,(%eax)
c0607fe4:	82 20 00             	andb   $0x0,(%eax)
c0607fe7:	00 24 00             	add    %ah,(%eax,%eax,1)
c0607fea:	00 00                	add    %al,(%eax)
c0607fec:	80 0d 60 c0 00 00 00 	orb    $0x0,0xc060
c0607ff3:	00 44 00 06          	add    %al,0x6(%eax,%eax,1)
	...
c0607fff:	00 44 00 08          	add    %al,0x8(%eax,%eax,1)
c0608003:	00 01                	add    %al,(%ecx)
c0608005:	00 00                	add    %al,(%eax)
c0608007:	00 00                	add    %al,(%eax)
c0608009:	00 00                	add    %al,(%eax)
c060800b:	00 44 00 06          	add    %al,0x6(%eax,%eax,1)
c060800f:	00 0b                	add    %cl,(%ebx)
c0608011:	00 00                	add    %al,(%eax)
c0608013:	00 00                	add    %al,(%eax)
c0608015:	00 00                	add    %al,(%eax)
c0608017:	00 44 00 08          	add    %al,0x8(%eax,%eax,1)
c060801b:	00 0d 00 00 00 00    	add    %cl,0x0
c0608021:	00 00                	add    %al,(%eax)
c0608023:	00 44 00 1f          	add    %al,0x1f(%eax,%eax,1)
c0608027:	00 3b                	add    %bh,(%ebx)
c0608029:	00 00                	add    %al,(%eax)
c060802b:	00 9b 20 00 00 24    	add    %bl,0x24000020(%ebx)
c0608031:	00 00                	add    %al,(%eax)
c0608033:	00 c0                	add    %al,%al
c0608035:	0d 60 c0 00 00       	or     $0xc060,%eax
c060803a:	00 00                	add    %al,(%eax)
c060803c:	44                   	inc    %esp
c060803d:	00 23                	add    %ah,(%ebx)
	...
c0608047:	00 44 00 26          	add    %al,0x26(%eax,%eax,1)
c060804b:	00 01                	add    %al,(%ecx)
c060804d:	00 00                	add    %al,(%eax)
c060804f:	00 00                	add    %al,(%eax)
c0608051:	00 00                	add    %al,(%eax)
c0608053:	00 44 00 2a          	add    %al,0x2a(%eax,%eax,1)
c0608057:	00 12                	add    %dl,(%edx)
c0608059:	00 00                	add    %al,(%eax)
c060805b:	00 b1 20 00 00 84    	add    %dh,-0x7bffffe0(%ecx)
c0608061:	00 00                	add    %al,(%eax)
c0608063:	00 d9                	add    %bl,%cl
c0608065:	0d 60 c0 00 00       	or     $0xc060,%eax
c060806a:	00 00                	add    %al,(%eax)
c060806c:	44                   	inc    %esp
c060806d:	00 63 00             	add    %ah,0x0(%ebx)
c0608070:	19 00                	sbb    %eax,(%eax)
c0608072:	00 00                	add    %al,(%eax)
c0608074:	36 20 00             	and    %al,%ss:(%eax)
c0608077:	00 84 00 00 00 db 0d 	add    %al,0xddb0000(%eax,%eax,1)
c060807e:	60                   	pusha  
c060807f:	c0 00 00             	rolb   $0x0,(%eax)
c0608082:	00 00                	add    %al,(%eax)
c0608084:	44                   	inc    %esp
c0608085:	00 2e                	add    %ch,(%esi)
c0608087:	00 1b                	add    %bl,(%ebx)
c0608089:	00 00                	add    %al,(%eax)
c060808b:	00 b1 20 00 00 84    	add    %dh,-0x7bffffe0(%ecx)
c0608091:	00 00                	add    %al,(%eax)
c0608093:	00 e0                	add    %ah,%al
c0608095:	0d 60 c0 00 00       	or     $0xc060,%eax
c060809a:	00 00                	add    %al,(%eax)
c060809c:	44                   	inc    %esp
c060809d:	00 6b 00             	add    %ch,0x0(%ebx)
c06080a0:	20 00                	and    %al,(%eax)
c06080a2:	00 00                	add    %al,(%eax)
c06080a4:	00 00                	add    %al,(%eax)
c06080a6:	00 00                	add    %al,(%eax)
c06080a8:	44                   	inc    %esp
c06080a9:	00 63 00             	add    %ah,0x0(%ebx)
c06080ac:	22 00                	and    (%eax),%al
c06080ae:	00 00                	add    %al,(%eax)
c06080b0:	36 20 00             	and    %al,%ss:(%eax)
c06080b3:	00 84 00 00 00 e4 0d 	add    %al,0xde40000(%eax,%eax,1)
c06080ba:	60                   	pusha  
c06080bb:	c0 00 00             	rolb   $0x0,(%eax)
c06080be:	00 00                	add    %al,(%eax)
c06080c0:	44                   	inc    %esp
c06080c1:	00 31                	add    %dh,(%ecx)
c06080c3:	00 24 00             	add    %ah,(%eax,%eax,1)
c06080c6:	00 00                	add    %al,(%eax)
c06080c8:	00 00                	add    %al,(%eax)
c06080ca:	00 00                	add    %al,(%eax)
c06080cc:	44                   	inc    %esp
c06080cd:	00 33                	add    %dh,(%ebx)
c06080cf:	00 2b                	add    %ch,(%ebx)
c06080d1:	00 00                	add    %al,(%eax)
c06080d3:	00 b1 20 00 00 84    	add    %dh,-0x7bffffe0(%ecx)
c06080d9:	00 00                	add    %al,(%eax)
c06080db:	00 f0                	add    %dh,%al
c06080dd:	0d 60 c0 00 00       	or     $0xc060,%eax
c06080e2:	00 00                	add    %al,(%eax)
c06080e4:	44                   	inc    %esp
c06080e5:	00 6b 00             	add    %ch,0x0(%ebx)
c06080e8:	30 00                	xor    %al,(%eax)
c06080ea:	00 00                	add    %al,(%eax)
c06080ec:	00 00                	add    %al,(%eax)
c06080ee:	00 00                	add    %al,(%eax)
c06080f0:	44                   	inc    %esp
c06080f1:	00 73 00             	add    %dh,0x0(%ebx)
c06080f4:	32 00                	xor    (%eax),%al
c06080f6:	00 00                	add    %al,(%eax)
c06080f8:	36 20 00             	and    %al,%ss:(%eax)
c06080fb:	00 84 00 00 00 f7 0d 	add    %al,0xdf70000(%eax,%eax,1)
c0608102:	60                   	pusha  
c0608103:	c0 00 00             	rolb   $0x0,(%eax)
c0608106:	00 00                	add    %al,(%eax)
c0608108:	44                   	inc    %esp
c0608109:	00 37                	add    %dh,(%edi)
c060810b:	00 37                	add    %dh,(%edi)
c060810d:	00 00                	add    %al,(%eax)
c060810f:	00 b1 20 00 00 84    	add    %dh,-0x7bffffe0(%ecx)
c0608115:	00 00                	add    %al,(%eax)
c0608117:	00 fc                	add    %bh,%ah
c0608119:	0d 60 c0 00 00       	or     $0xc060,%eax
c060811e:	00 00                	add    %al,(%eax)
c0608120:	44                   	inc    %esp
c0608121:	00 79 00             	add    %bh,0x0(%ecx)
c0608124:	3c 00                	cmp    $0x0,%al
c0608126:	00 00                	add    %al,(%eax)
c0608128:	36 20 00             	and    %al,%ss:(%eax)
c060812b:	00 84 00 00 00 09 0e 	add    %al,0xe090000(%eax,%eax,1)
c0608132:	60                   	pusha  
c0608133:	c0 00 00             	rolb   $0x0,(%eax)
c0608136:	00 00                	add    %al,(%eax)
c0608138:	44                   	inc    %esp
c0608139:	00 3f                	add    %bh,(%edi)
c060813b:	00 49 00             	add    %cl,0x0(%ecx)
c060813e:	00 00                	add    %al,(%eax)
c0608140:	00 00                	add    %al,(%eax)
c0608142:	00 00                	add    %al,(%eax)
c0608144:	44                   	inc    %esp
c0608145:	00 41 00             	add    %al,0x0(%ecx)
c0608148:	4e                   	dec    %esi
c0608149:	00 00                	add    %al,(%eax)
c060814b:	00 00                	add    %al,(%eax)
c060814d:	00 00                	add    %al,(%eax)
c060814f:	00 44 00 40          	add    %al,0x40(%eax,%eax,1)
c0608153:	00 4f 00             	add    %cl,0x0(%edi)
c0608156:	00 00                	add    %al,(%eax)
c0608158:	00 00                	add    %al,(%eax)
c060815a:	00 00                	add    %al,(%eax)
c060815c:	44                   	inc    %esp
c060815d:	00 40 00             	add    %al,0x0(%eax)
c0608160:	52                   	push   %edx
c0608161:	00 00                	add    %al,(%eax)
c0608163:	00 00                	add    %al,(%eax)
c0608165:	00 00                	add    %al,(%eax)
c0608167:	00 44 00 41          	add    %al,0x41(%eax,%eax,1)
c060816b:	00 55 00             	add    %dl,0x0(%ebp)
c060816e:	00 00                	add    %al,(%eax)
c0608170:	00 00                	add    %al,(%eax)
c0608172:	00 00                	add    %al,(%eax)
c0608174:	44                   	inc    %esp
c0608175:	00 2a                	add    %ch,(%edx)
c0608177:	00 60 00             	add    %ah,0x0(%eax)
c060817a:	00 00                	add    %al,(%eax)
c060817c:	00 00                	add    %al,(%eax)
c060817e:	00 00                	add    %al,(%eax)
c0608180:	44                   	inc    %esp
c0608181:	00 41 00             	add    %al,0x0(%ecx)
c0608184:	65 00 00             	add    %al,%gs:(%eax)
c0608187:	00 c3                	add    %al,%bl
c0608189:	20 00                	and    %al,(%eax)
c060818b:	00 20                	add    %ah,(%eax)
c060818d:	00 00                	add    %al,(%eax)
c060818f:	00 00                	add    %al,(%eax)
c0608191:	00 00                	add    %al,(%eax)
c0608193:	00 e1                	add    %ah,%cl
c0608195:	20 00                	and    %al,(%eax)
c0608197:	00 24 00             	add    %ah,(%eax,%eax,1)
c060819a:	00 00                	add    %al,(%eax)
c060819c:	30 0e                	xor    %cl,(%esi)
c060819e:	60                   	pusha  
c060819f:	c0 00 00             	rolb   $0x0,(%eax)
c06081a2:	00 00                	add    %al,(%eax)
c06081a4:	44                   	inc    %esp
c06081a5:	00 48 00             	add    %cl,0x0(%eax)
	...
c06081b0:	44                   	inc    %esp
c06081b1:	00 4a 00             	add    %cl,0x0(%edx)
	...
c06081bc:	44                   	inc    %esp
c06081bd:	00 51 00             	add    %dl,0x0(%ecx)
c06081c0:	0a 00                	or     (%eax),%al
c06081c2:	00 00                	add    %al,(%eax)
c06081c4:	00 00                	add    %al,(%eax)
c06081c6:	00 00                	add    %al,(%eax)
c06081c8:	44                   	inc    %esp
c06081c9:	00 4b 00             	add    %cl,0x0(%ebx)
c06081cc:	0c 00                	or     $0x0,%al
c06081ce:	00 00                	add    %al,(%eax)
c06081d0:	00 00                	add    %al,(%eax)
c06081d2:	00 00                	add    %al,(%eax)
c06081d4:	44                   	inc    %esp
c06081d5:	00 4c 00 16          	add    %cl,0x16(%eax,%eax,1)
c06081d9:	00 00                	add    %al,(%eax)
c06081db:	00 00                	add    %al,(%eax)
c06081dd:	00 00                	add    %al,(%eax)
c06081df:	00 44 00 4d          	add    %al,0x4d(%eax,%eax,1)
c06081e3:	00 20                	add    %ah,(%eax)
c06081e5:	00 00                	add    %al,(%eax)
c06081e7:	00 00                	add    %al,(%eax)
c06081e9:	00 00                	add    %al,(%eax)
c06081eb:	00 44 00 4e          	add    %al,0x4e(%eax,%eax,1)
c06081ef:	00 2a                	add    %ch,(%edx)
c06081f1:	00 00                	add    %al,(%eax)
c06081f3:	00 00                	add    %al,(%eax)
c06081f5:	00 00                	add    %al,(%eax)
c06081f7:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c06081fb:	00 34 00             	add    %dh,(%eax,%eax,1)
c06081fe:	00 00                	add    %al,(%eax)
c0608200:	f4                   	hlt    
c0608201:	20 00                	and    %al,(%eax)
c0608203:	00 24 00             	add    %ah,(%eax,%eax,1)
c0608206:	00 00                	add    %al,(%eax)
c0608208:	70 0e                	jo     c0608218 <.stab+0x3cc>
c060820a:	60                   	pusha  
c060820b:	c0 0f 21             	rorb   $0x21,(%edi)
c060820e:	00 00                	add    %al,(%eax)
c0608210:	a0 00 00 00 04       	mov    0x4000000,%al
c0608215:	00 00                	add    %al,(%eax)
c0608217:	00 00                	add    %al,(%eax)
c0608219:	00 00                	add    %al,(%eax)
c060821b:	00 44 00 54          	add    %al,0x54(%eax,%eax,1)
	...
c0608227:	00 44 00 5f          	add    %al,0x5f(%eax,%eax,1)
c060822b:	00 00                	add    %al,(%eax)
c060822d:	00 00                	add    %al,(%eax)
c060822f:	00 18                	add    %bl,(%eax)
c0608231:	21 00                	and    %eax,(%eax)
c0608233:	00 24 00             	add    %ah,(%eax,%eax,1)
c0608236:	00 00                	add    %al,(%eax)
c0608238:	80 0e 60             	orb    $0x60,(%esi)
c060823b:	c0 29 21             	shrb   $0x21,(%ecx)
c060823e:	00 00                	add    %al,(%eax)
c0608240:	a0 00 00 00 14       	mov    0x14000000,%al
c0608245:	00 00                	add    %al,(%eax)
c0608247:	00 35 21 00 00 a0    	add    %dh,0xa0000021
c060824d:	00 00                	add    %al,(%eax)
c060824f:	00 18                	add    %bl,(%eax)
c0608251:	00 00                	add    %al,(%eax)
c0608253:	00 00                	add    %al,(%eax)
c0608255:	00 00                	add    %al,(%eax)
c0608257:	00 44 00 69          	add    %al,0x69(%eax,%eax,1)
	...
c0608263:	00 44 00 6a          	add    %al,0x6a(%eax,%eax,1)
c0608267:	00 03                	add    %al,(%ebx)
c0608269:	00 00                	add    %al,(%eax)
c060826b:	00 00                	add    %al,(%eax)
c060826d:	00 00                	add    %al,(%eax)
c060826f:	00 44 00 6a          	add    %al,0x6a(%eax,%eax,1)
c0608273:	00 13                	add    %dl,(%ebx)
c0608275:	00 00                	add    %al,(%eax)
c0608277:	00 00                	add    %al,(%eax)
c0608279:	00 00                	add    %al,(%eax)
c060827b:	00 44 00 6b          	add    %al,0x6b(%eax,%eax,1)
c060827f:	00 1b                	add    %bl,(%ebx)
c0608281:	00 00                	add    %al,(%eax)
c0608283:	00 00                	add    %al,(%eax)
c0608285:	00 00                	add    %al,(%eax)
c0608287:	00 44 00 6d          	add    %al,0x6d(%eax,%eax,1)
c060828b:	00 20                	add    %ah,(%eax)
c060828d:	00 00                	add    %al,(%eax)
c060828f:	00 3e                	add    %bh,(%esi)
c0608291:	21 00                	and    %eax,(%eax)
c0608293:	00 80 00 00 00 0a    	add    %al,0xa000000(%eax)
c0608299:	00 00                	add    %al,(%eax)
c060829b:	00 47 21             	add    %al,0x21(%edi)
c060829e:	00 00                	add    %al,(%eax)
c06082a0:	40                   	inc    %eax
c06082a1:	00 00                	add    %al,(%eax)
c06082a3:	00 00                	add    %al,(%eax)
c06082a5:	00 00                	add    %al,(%eax)
c06082a7:	00 53 21             	add    %dl,0x21(%ebx)
c06082aa:	00 00                	add    %al,(%eax)
c06082ac:	40                   	inc    %eax
	...
c06082b5:	00 00                	add    %al,(%eax)
c06082b7:	00 c0                	add    %al,%al
	...
c06082c1:	00 00                	add    %al,(%eax)
c06082c3:	00 e0                	add    %ah,%al
c06082c5:	00 00                	add    %al,(%eax)
c06082c7:	00 24 00             	add    %ah,(%eax,%eax,1)
c06082ca:	00 00                	add    %al,(%eax)
c06082cc:	5c                   	pop    %esp
c06082cd:	21 00                	and    %eax,(%eax)
c06082cf:	00 24 00             	add    %ah,(%eax,%eax,1)
c06082d2:	00 00                	add    %al,(%eax)
c06082d4:	b0 0e                	mov    $0xe,%al
c06082d6:	60                   	pusha  
c06082d7:	c0 70 21 00          	shlb   $0x0,0x21(%eax)
c06082db:	00 a0 00 00 00 14    	add    %ah,0x14000000(%eax)
c06082e1:	00 00                	add    %al,(%eax)
c06082e3:	00 79 21             	add    %bh,0x21(%ecx)
c06082e6:	00 00                	add    %al,(%eax)
c06082e8:	a0 00 00 00 18       	mov    0x18000000,%al
c06082ed:	00 00                	add    %al,(%eax)
c06082ef:	00 85 21 00 00 a0    	add    %al,-0x5fffffdf(%ebp)
c06082f5:	00 00                	add    %al,(%eax)
c06082f7:	00 1c 00             	add    %bl,(%eax,%eax,1)
c06082fa:	00 00                	add    %al,(%eax)
c06082fc:	92                   	xchg   %eax,%edx
c06082fd:	21 00                	and    %eax,(%eax)
c06082ff:	00 a0 00 00 00 20    	add    %ah,0x20000000(%eax)
c0608305:	00 00                	add    %al,(%eax)
c0608307:	00 9e 21 00 00 a0    	add    %bl,-0x5fffffdf(%esi)
c060830d:	00 00                	add    %al,(%eax)
c060830f:	00 24 00             	add    %ah,(%eax,%eax,1)
c0608312:	00 00                	add    %al,(%eax)
c0608314:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
c0608315:	21 00                	and    %eax,(%eax)
c0608317:	00 a0 00 00 00 28    	add    %ah,0x28000000(%eax)
c060831d:	00 00                	add    %al,(%eax)
c060831f:	00 b2 21 00 00 a0    	add    %dh,-0x5fffffdf(%edx)
c0608325:	00 00                	add    %al,(%eax)
c0608327:	00 2c 00             	add    %ch,(%eax,%eax,1)
c060832a:	00 00                	add    %al,(%eax)
c060832c:	bb 21 00 00 a0       	mov    $0xa0000021,%ebx
c0608331:	00 00                	add    %al,(%eax)
c0608333:	00 30                	add    %dh,(%eax)
c0608335:	00 00                	add    %al,(%eax)
c0608337:	00 c6                	add    %al,%dh
c0608339:	21 00                	and    %eax,(%eax)
c060833b:	00 a0 00 00 00 34    	add    %ah,0x34000000(%eax)
c0608341:	00 00                	add    %al,(%eax)
c0608343:	00 d1                	add    %dl,%cl
c0608345:	21 00                	and    %eax,(%eax)
c0608347:	00 a0 00 00 00 38    	add    %ah,0x38000000(%eax)
c060834d:	00 00                	add    %al,(%eax)
c060834f:	00 00                	add    %al,(%eax)
c0608351:	00 00                	add    %al,(%eax)
c0608353:	00 44 00 79          	add    %al,0x79(%eax,%eax,1)
	...
c060835f:	00 44 00 79          	add    %al,0x79(%eax,%eax,1)
c0608363:	00 07                	add    %al,(%edi)
c0608365:	00 00                	add    %al,(%eax)
c0608367:	00 00                	add    %al,(%eax)
c0608369:	00 00                	add    %al,(%eax)
c060836b:	00 44 00 81          	add    %al,-0x7f(%eax,%eax,1)
c060836f:	00 36                	add    %dh,(%esi)
c0608371:	00 00                	add    %al,(%eax)
c0608373:	00 00                	add    %al,(%eax)
c0608375:	00 00                	add    %al,(%eax)
c0608377:	00 44 00 79          	add    %al,0x79(%eax,%eax,1)
c060837b:	00 39                	add    %bh,(%ecx)
c060837d:	00 00                	add    %al,(%eax)
c060837f:	00 00                	add    %al,(%eax)
c0608381:	00 00                	add    %al,(%eax)
c0608383:	00 44 00 7d          	add    %al,0x7d(%eax,%eax,1)
c0608387:	00 3d 00 00 00 00    	add    %bh,0x0
c060838d:	00 00                	add    %al,(%eax)
c060838f:	00 44 00 79          	add    %al,0x79(%eax,%eax,1)
c0608393:	00 45 00             	add    %al,0x0(%ebp)
c0608396:	00 00                	add    %al,(%eax)
c0608398:	00 00                	add    %al,(%eax)
c060839a:	00 00                	add    %al,(%eax)
c060839c:	44                   	inc    %esp
c060839d:	00 7e 00             	add    %bh,0x0(%esi)
c06083a0:	49                   	dec    %ecx
c06083a1:	00 00                	add    %al,(%eax)
c06083a3:	00 00                	add    %al,(%eax)
c06083a5:	00 00                	add    %al,(%eax)
c06083a7:	00 44 00 86          	add    %al,-0x7a(%eax,%eax,1)
c06083ab:	00 51 00             	add    %dl,0x0(%ecx)
c06083ae:	00 00                	add    %al,(%eax)
c06083b0:	00 00                	add    %al,(%eax)
c06083b2:	00 00                	add    %al,(%eax)
c06083b4:	44                   	inc    %esp
c06083b5:	00 7d 00             	add    %bh,0x0(%ebp)
c06083b8:	54                   	push   %esp
c06083b9:	00 00                	add    %al,(%eax)
c06083bb:	00 00                	add    %al,(%eax)
c06083bd:	00 00                	add    %al,(%eax)
c06083bf:	00 44 00 7c          	add    %al,0x7c(%eax,%eax,1)
c06083c3:	00 57 00             	add    %dl,0x0(%edi)
c06083c6:	00 00                	add    %al,(%eax)
c06083c8:	00 00                	add    %al,(%eax)
c06083ca:	00 00                	add    %al,(%eax)
c06083cc:	44                   	inc    %esp
c06083cd:	00 7d 00             	add    %bh,0x0(%ebp)
c06083d0:	5f                   	pop    %edi
c06083d1:	00 00                	add    %al,(%eax)
c06083d3:	00 00                	add    %al,(%eax)
c06083d5:	00 00                	add    %al,(%eax)
c06083d7:	00 44 00 7d          	add    %al,0x7d(%eax,%eax,1)
c06083db:	00 62 00             	add    %ah,0x0(%edx)
c06083de:	00 00                	add    %al,(%eax)
c06083e0:	00 00                	add    %al,(%eax)
c06083e2:	00 00                	add    %al,(%eax)
c06083e4:	44                   	inc    %esp
c06083e5:	00 7f 00             	add    %bh,0x0(%edi)
c06083e8:	66 00 00             	data16 add %al,(%eax)
c06083eb:	00 00                	add    %al,(%eax)
c06083ed:	00 00                	add    %al,(%eax)
c06083ef:	00 44 00 80          	add    %al,-0x80(%eax,%eax,1)
c06083f3:	00 68 00             	add    %ch,0x0(%eax)
c06083f6:	00 00                	add    %al,(%eax)
c06083f8:	00 00                	add    %al,(%eax)
c06083fa:	00 00                	add    %al,(%eax)
c06083fc:	44                   	inc    %esp
c06083fd:	00 7d 00             	add    %bh,0x0(%ebp)
c0608400:	6b 00 00             	imul   $0x0,(%eax),%eax
c0608403:	00 00                	add    %al,(%eax)
c0608405:	00 00                	add    %al,(%eax)
c0608407:	00 44 00 7f          	add    %al,0x7f(%eax,%eax,1)
c060840b:	00 6e 00             	add    %ch,0x0(%esi)
c060840e:	00 00                	add    %al,(%eax)
c0608410:	00 00                	add    %al,(%eax)
c0608412:	00 00                	add    %al,(%eax)
c0608414:	44                   	inc    %esp
c0608415:	00 80 00 71 00 00    	add    %al,0x7100(%eax)
c060841b:	00 00                	add    %al,(%eax)
c060841d:	00 00                	add    %al,(%eax)
c060841f:	00 44 00 85          	add    %al,-0x7b(%eax,%eax,1)
c0608423:	00 78 00             	add    %bh,0x0(%eax)
c0608426:	00 00                	add    %al,(%eax)
c0608428:	00 00                	add    %al,(%eax)
c060842a:	00 00                	add    %al,(%eax)
c060842c:	44                   	inc    %esp
c060842d:	00 83 00 7d 00 00    	add    %al,0x7d00(%ebx)
c0608433:	00 00                	add    %al,(%eax)
c0608435:	00 00                	add    %al,(%eax)
c0608437:	00 44 00 7f          	add    %al,0x7f(%eax,%eax,1)
c060843b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608441:	00 00                	add    %al,(%eax)
c0608443:	00 44 00 82          	add    %al,-0x7e(%eax,%eax,1)
c0608447:	00 87 00 00 00 00    	add    %al,0x0(%edi)
c060844d:	00 00                	add    %al,(%eax)
c060844f:	00 44 00 84          	add    %al,-0x7c(%eax,%eax,1)
c0608453:	00 8c 00 00 00 00 00 	add    %cl,0x0(%eax,%eax,1)
c060845a:	00 00                	add    %al,(%eax)
c060845c:	44                   	inc    %esp
c060845d:	00 85 00 90 00 00    	add    %al,0x9000(%ebp)
c0608463:	00 00                	add    %al,(%eax)
c0608465:	00 00                	add    %al,(%eax)
c0608467:	00 44 00 82          	add    %al,-0x7e(%eax,%eax,1)
c060846b:	00 93 00 00 00 00    	add    %dl,0x0(%ebx)
c0608471:	00 00                	add    %al,(%eax)
c0608473:	00 44 00 85          	add    %al,-0x7b(%eax,%eax,1)
c0608477:	00 96 00 00 00 00    	add    %dl,0x0(%esi)
c060847d:	00 00                	add    %al,(%eax)
c060847f:	00 44 00 82          	add    %al,-0x7e(%eax,%eax,1)
c0608483:	00 99 00 00 00 00    	add    %bl,0x0(%ecx)
c0608489:	00 00                	add    %al,(%eax)
c060848b:	00 44 00 83          	add    %al,-0x7d(%eax,%eax,1)
c060848f:	00 9c 00 00 00 00 00 	add    %bl,0x0(%eax,%eax,1)
c0608496:	00 00                	add    %al,(%eax)
c0608498:	44                   	inc    %esp
c0608499:	00 84 00 9e 00 00 00 	add    %al,0x9e(%eax,%eax,1)
c06084a0:	00 00                	add    %al,(%eax)
c06084a2:	00 00                	add    %al,(%eax)
c06084a4:	44                   	inc    %esp
c06084a5:	00 87 00 a3 00 00    	add    %al,0xa300(%edi)
c06084ab:	00 00                	add    %al,(%eax)
c06084ad:	00 00                	add    %al,(%eax)
c06084af:	00 44 00 84          	add    %al,-0x7c(%eax,%eax,1)
c06084b3:	00 a5 00 00 00 00    	add    %ah,0x0(%ebp)
c06084b9:	00 00                	add    %al,(%eax)
c06084bb:	00 44 00 87          	add    %al,-0x79(%eax,%eax,1)
c06084bf:	00 ad 00 00 00 00    	add    %ch,0x0(%ebp)
c06084c5:	00 00                	add    %al,(%eax)
c06084c7:	00 44 00 85          	add    %al,-0x7b(%eax,%eax,1)
c06084cb:	00 b1 00 00 00 00    	add    %dh,0x0(%ecx)
c06084d1:	00 00                	add    %al,(%eax)
c06084d3:	00 44 00 86          	add    %al,-0x7a(%eax,%eax,1)
c06084d7:	00 b4 00 00 00 00 00 	add    %dh,0x0(%eax,%eax,1)
c06084de:	00 00                	add    %al,(%eax)
c06084e0:	44                   	inc    %esp
c06084e1:	00 87 00 b6 00 00    	add    %al,0xb600(%edi)
c06084e7:	00 00                	add    %al,(%eax)
c06084e9:	00 00                	add    %al,(%eax)
c06084eb:	00 44 00 86          	add    %al,-0x7a(%eax,%eax,1)
c06084ef:	00 b9 00 00 00 00    	add    %bh,0x0(%ecx)
c06084f5:	00 00                	add    %al,(%eax)
c06084f7:	00 44 00 87          	add    %al,-0x79(%eax,%eax,1)
c06084fb:	00 bb 00 00 00 00    	add    %bh,0x0(%ebx)
c0608501:	00 00                	add    %al,(%eax)
c0608503:	00 44 00 88          	add    %al,-0x78(%eax,%eax,1)
c0608507:	00 be 00 00 00 00    	add    %bh,0x0(%esi)
c060850d:	00 00                	add    %al,(%eax)
c060850f:	00 44 00 87          	add    %al,-0x79(%eax,%eax,1)
c0608513:	00 c1                	add    %al,%cl
c0608515:	00 00                	add    %al,(%eax)
c0608517:	00 00                	add    %al,(%eax)
c0608519:	00 00                	add    %al,(%eax)
c060851b:	00 44 00 88          	add    %al,-0x78(%eax,%eax,1)
c060851f:	00 ca                	add    %cl,%dl
c0608521:	00 00                	add    %al,(%eax)
c0608523:	00 00                	add    %al,(%eax)
c0608525:	00 00                	add    %al,(%eax)
c0608527:	00 44 00 89          	add    %al,-0x77(%eax,%eax,1)
c060852b:	00 d1                	add    %dl,%cl
c060852d:	00 00                	add    %al,(%eax)
c060852f:	00 00                	add    %al,(%eax)
c0608531:	00 00                	add    %al,(%eax)
c0608533:	00 44 00 6a          	add    %al,0x6a(%eax,%eax,1)
c0608537:	00 d4                	add    %dl,%ah
c0608539:	00 00                	add    %al,(%eax)
c060853b:	00 00                	add    %al,(%eax)
c060853d:	00 00                	add    %al,(%eax)
c060853f:	00 44 00 6a          	add    %al,0x6a(%eax,%eax,1)
c0608543:	00 e0                	add    %ah,%al
c0608545:	00 00                	add    %al,(%eax)
c0608547:	00 00                	add    %al,(%eax)
c0608549:	00 00                	add    %al,(%eax)
c060854b:	00 44 00 6b          	add    %al,0x6b(%eax,%eax,1)
c060854f:	00 e8                	add    %ch,%al
c0608551:	00 00                	add    %al,(%eax)
c0608553:	00 00                	add    %al,(%eax)
c0608555:	00 00                	add    %al,(%eax)
c0608557:	00 44 00 8c          	add    %al,-0x74(%eax,%eax,1)
c060855b:	00 ed                	add    %ch,%ch
c060855d:	00 00                	add    %al,(%eax)
c060855f:	00 00                	add    %al,(%eax)
c0608561:	00 00                	add    %al,(%eax)
c0608563:	00 44 00 8b          	add    %al,-0x75(%eax,%eax,1)
c0608567:	00 f0                	add    %dh,%al
c0608569:	00 00                	add    %al,(%eax)
c060856b:	00 00                	add    %al,(%eax)
c060856d:	00 00                	add    %al,(%eax)
c060856f:	00 44 00 8c          	add    %al,-0x74(%eax,%eax,1)
c0608573:	00 f7                	add    %dh,%bh
c0608575:	00 00                	add    %al,(%eax)
c0608577:	00 da                	add    %bl,%dl
c0608579:	21 00                	and    %eax,(%eax)
c060857b:	00 40 00             	add    %al,0x0(%eax)
c060857e:	00 00                	add    %al,(%eax)
c0608580:	00 00                	add    %al,(%eax)
c0608582:	00 00                	add    %al,(%eax)
c0608584:	e3 21                	jecxz  c06085a7 <.stab+0x75b>
c0608586:	00 00                	add    %al,(%eax)
c0608588:	40                   	inc    %eax
c0608589:	00 00                	add    %al,(%eax)
c060858b:	00 03                	add    %al,(%ebx)
c060858d:	00 00                	add    %al,(%eax)
c060858f:	00 ef                	add    %ch,%bh
c0608591:	21 00                	and    %eax,(%eax)
c0608593:	00 40 00             	add    %al,0x0(%eax)
c0608596:	00 00                	add    %al,(%eax)
c0608598:	02 00                	add    (%eax),%al
c060859a:	00 00                	add    %al,(%eax)
c060859c:	3e 21 00             	and    %eax,%ds:(%eax)
c060859f:	00 80 00 00 00 0a    	add    %al,0xa000000(%eax)
c06085a5:	00 00                	add    %al,(%eax)
c06085a7:	00 00                	add    %al,(%eax)
c06085a9:	00 00                	add    %al,(%eax)
c06085ab:	00 c0                	add    %al,%al
c06085ad:	00 00                	add    %al,(%eax)
c06085af:	00 d4                	add    %dl,%ah
c06085b1:	00 00                	add    %al,(%eax)
c06085b3:	00 00                	add    %al,(%eax)
c06085b5:	00 00                	add    %al,(%eax)
c06085b7:	00 e0                	add    %ah,%al
c06085b9:	00 00                	add    %al,(%eax)
c06085bb:	00 ed                	add    %ch,%ch
c06085bd:	00 00                	add    %al,(%eax)
c06085bf:	00 fc                	add    %bh,%ah
c06085c1:	21 00                	and    %eax,(%eax)
c06085c3:	00 24 00             	add    %ah,(%eax,%eax,1)
c06085c6:	00 00                	add    %al,(%eax)
c06085c8:	b0 0f                	mov    $0xf,%al
c06085ca:	60                   	pusha  
c06085cb:	c0 00 00             	rolb   $0x0,(%eax)
c06085ce:	00 00                	add    %al,(%eax)
c06085d0:	44                   	inc    %esp
c06085d1:	00 96 00 00 00 00    	add    %dl,0x0(%esi)
c06085d7:	00 00                	add    %al,(%eax)
c06085d9:	00 00                	add    %al,(%eax)
c06085db:	00 44 00 a6          	add    %al,-0x5a(%eax,%eax,1)
	...
c06085e7:	00 44 00 96          	add    %al,-0x6a(%eax,%eax,1)
c06085eb:	00 05 00 00 00 00    	add    %al,0x0
c06085f1:	00 00                	add    %al,(%eax)
c06085f3:	00 44 00 a6          	add    %al,-0x5a(%eax,%eax,1)
c06085f7:	00 06                	add    %al,(%esi)
c06085f9:	00 00                	add    %al,(%eax)
c06085fb:	00 00                	add    %al,(%eax)
c06085fd:	00 00                	add    %al,(%eax)
c06085ff:	00 44 00 ae          	add    %al,-0x52(%eax,%eax,1)
c0608603:	00 1e                	add    %bl,(%esi)
c0608605:	00 00                	add    %al,(%eax)
c0608607:	00 00                	add    %al,(%eax)
c0608609:	00 00                	add    %al,(%eax)
c060860b:	00 44 00 b7          	add    %al,-0x49(%eax,%eax,1)
c060860f:	00 31                	add    %dh,(%ecx)
c0608611:	00 00                	add    %al,(%eax)
c0608613:	00 10                	add    %dl,(%eax)
c0608615:	22 00                	and    (%eax),%al
c0608617:	00 24 00             	add    %ah,(%eax,%eax,1)
c060861a:	00 00                	add    %al,(%eax)
c060861c:	f0 0f 60 c0          	lock punpcklbw %mm0,%mm0
c0608620:	27                   	daa    
c0608621:	22 00                	and    (%eax),%al
c0608623:	00 a0 00 00 00 04    	add    %ah,0x4000000(%eax)
c0608629:	00 00                	add    %al,(%eax)
c060862b:	00 32                	add    %dh,(%edx)
c060862d:	22 00                	and    (%eax),%al
c060862f:	00 a0 00 00 00 08    	add    %ah,0x8000000(%eax)
c0608635:	00 00                	add    %al,(%eax)
c0608637:	00 3d 22 00 00 a0    	add    %bh,0xa0000022
c060863d:	00 00                	add    %al,(%eax)
c060863f:	00 0c 00             	add    %cl,(%eax,%eax,1)
c0608642:	00 00                	add    %al,(%eax)
c0608644:	49                   	dec    %ecx
c0608645:	22 00                	and    (%eax),%al
c0608647:	00 a0 00 00 00 10    	add    %ah,0x10000000(%eax)
c060864d:	00 00                	add    %al,(%eax)
c060864f:	00 52 22             	add    %dl,0x22(%edx)
c0608652:	00 00                	add    %al,(%eax)
c0608654:	a0 00 00 00 14       	mov    0x14000000,%al
c0608659:	00 00                	add    %al,(%eax)
c060865b:	00 5c 22 00          	add    %bl,0x0(%edx,%eiz,1)
c060865f:	00 a0 00 00 00 18    	add    %ah,0x18000000(%eax)
c0608665:	00 00                	add    %al,(%eax)
c0608667:	00 00                	add    %al,(%eax)
c0608669:	00 00                	add    %al,(%eax)
c060866b:	00 44 00 bd          	add    %al,-0x43(%eax,%eax,1)
	...
c0608677:	00 44 00 c3          	add    %al,-0x3d(%eax,%eax,1)
c060867b:	00 04 00             	add    %al,(%eax,%eax,1)
c060867e:	00 00                	add    %al,(%eax)
c0608680:	00 00                	add    %al,(%eax)
c0608682:	00 00                	add    %al,(%eax)
c0608684:	44                   	inc    %esp
c0608685:	00 bd 00 06 00 00    	add    %bh,0x600(%ebp)
c060868b:	00 00                	add    %al,(%eax)
c060868d:	00 00                	add    %al,(%eax)
c060868f:	00 44 00 c0          	add    %al,-0x40(%eax,%eax,1)
c0608693:	00 09                	add    %cl,(%ecx)
c0608695:	00 00                	add    %al,(%eax)
c0608697:	00 00                	add    %al,(%eax)
c0608699:	00 00                	add    %al,(%eax)
c060869b:	00 44 00 c1          	add    %al,-0x3f(%eax,%eax,1)
c060869f:	00 0e                	add    %cl,(%esi)
c06086a1:	00 00                	add    %al,(%eax)
c06086a3:	00 00                	add    %al,(%eax)
c06086a5:	00 00                	add    %al,(%eax)
c06086a7:	00 44 00 c0          	add    %al,-0x40(%eax,%eax,1)
c06086ab:	00 12                	add    %dl,(%edx)
c06086ad:	00 00                	add    %al,(%eax)
c06086af:	00 00                	add    %al,(%eax)
c06086b1:	00 00                	add    %al,(%eax)
c06086b3:	00 44 00 c0          	add    %al,-0x40(%eax,%eax,1)
c06086b7:	00 1f                	add    %bl,(%edi)
c06086b9:	00 00                	add    %al,(%eax)
c06086bb:	00 00                	add    %al,(%eax)
c06086bd:	00 00                	add    %al,(%eax)
c06086bf:	00 44 00 c1          	add    %al,-0x3f(%eax,%eax,1)
c06086c3:	00 23                	add    %ah,(%ebx)
c06086c5:	00 00                	add    %al,(%eax)
c06086c7:	00 00                	add    %al,(%eax)
c06086c9:	00 00                	add    %al,(%eax)
c06086cb:	00 44 00 c5          	add    %al,-0x3b(%eax,%eax,1)
c06086cf:	00 26                	add    %ah,(%esi)
c06086d1:	00 00                	add    %al,(%eax)
c06086d3:	00 00                	add    %al,(%eax)
c06086d5:	00 00                	add    %al,(%eax)
c06086d7:	00 44 00 c0          	add    %al,-0x40(%eax,%eax,1)
c06086db:	00 28                	add    %ch,(%eax)
c06086dd:	00 00                	add    %al,(%eax)
c06086df:	00 00                	add    %al,(%eax)
c06086e1:	00 00                	add    %al,(%eax)
c06086e3:	00 44 00 c0          	add    %al,-0x40(%eax,%eax,1)
c06086e7:	00 35 00 00 00 00    	add    %dh,0x0
c06086ed:	00 00                	add    %al,(%eax)
c06086ef:	00 44 00 c5          	add    %al,-0x3b(%eax,%eax,1)
c06086f3:	00 38                	add    %bh,(%eax)
c06086f5:	00 00                	add    %al,(%eax)
c06086f7:	00 00                	add    %al,(%eax)
c06086f9:	00 00                	add    %al,(%eax)
c06086fb:	00 44 00 c3          	add    %al,-0x3d(%eax,%eax,1)
c06086ff:	00 3c 00             	add    %bh,(%eax,%eax,1)
c0608702:	00 00                	add    %al,(%eax)
c0608704:	00 00                	add    %al,(%eax)
c0608706:	00 00                	add    %al,(%eax)
c0608708:	44                   	inc    %esp
c0608709:	00 c5                	add    %al,%ch
c060870b:	00 40 00             	add    %al,0x0(%eax)
c060870e:	00 00                	add    %al,(%eax)
c0608710:	00 00                	add    %al,(%eax)
c0608712:	00 00                	add    %al,(%eax)
c0608714:	44                   	inc    %esp
c0608715:	00 c4                	add    %al,%ah
c0608717:	00 4a 00             	add    %cl,0x0(%edx)
c060871a:	00 00                	add    %al,(%eax)
c060871c:	00 00                	add    %al,(%eax)
c060871e:	00 00                	add    %al,(%eax)
c0608720:	44                   	inc    %esp
c0608721:	00 c3                	add    %al,%bl
c0608723:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
c0608727:	00 00                	add    %al,(%eax)
c0608729:	00 00                	add    %al,(%eax)
c060872b:	00 44 00 c4          	add    %al,-0x3c(%eax,%eax,1)
c060872f:	00 4f 00             	add    %cl,0x0(%edi)
c0608732:	00 00                	add    %al,(%eax)
c0608734:	00 00                	add    %al,(%eax)
c0608736:	00 00                	add    %al,(%eax)
c0608738:	44                   	inc    %esp
c0608739:	00 c5                	add    %al,%ch
c060873b:	00 55 00             	add    %dl,0x0(%ebp)
c060873e:	00 00                	add    %al,(%eax)
c0608740:	00 00                	add    %al,(%eax)
c0608742:	00 00                	add    %al,(%eax)
c0608744:	44                   	inc    %esp
c0608745:	00 c3                	add    %al,%bl
c0608747:	00 7e 00             	add    %bh,0x0(%esi)
c060874a:	00 00                	add    %al,(%eax)
c060874c:	00 00                	add    %al,(%eax)
c060874e:	00 00                	add    %al,(%eax)
c0608750:	44                   	inc    %esp
c0608751:	00 c8                	add    %cl,%al
c0608753:	00 84 00 00 00 66 22 	add    %al,0x22660000(%eax,%eax,1)
c060875a:	00 00                	add    %al,(%eax)
c060875c:	40                   	inc    %eax
c060875d:	00 00                	add    %al,(%eax)
c060875f:	00 03                	add    %al,(%ebx)
c0608761:	00 00                	add    %al,(%eax)
c0608763:	00 00                	add    %al,(%eax)
c0608765:	00 00                	add    %al,(%eax)
c0608767:	00 c0                	add    %al,%al
	...
c0608771:	00 00                	add    %al,(%eax)
c0608773:	00 e0                	add    %ah,%al
c0608775:	00 00                	add    %al,(%eax)
c0608777:	00 8c 00 00 00 6f 22 	add    %cl,0x226f0000(%eax,%eax,1)
c060877e:	00 00                	add    %al,(%eax)
c0608780:	20 00                	and    %al,(%eax)
c0608782:	00 00                	add    %al,(%eax)
c0608784:	00 00                	add    %al,(%eax)
c0608786:	00 00                	add    %al,(%eax)
c0608788:	94                   	xchg   %eax,%esp
c0608789:	22 00                	and    (%eax),%al
c060878b:	00 24 00             	add    %ah,(%eax,%eax,1)
c060878e:	00 00                	add    %al,(%eax)
c0608790:	80 10 60             	adcb   $0x60,(%eax)
c0608793:	c0 ac 22 00 00 a0 00 	shrb   $0x0,0xa00000(%edx,%eiz,1)
c060879a:	00 
c060879b:	00 30                	add    %dh,(%eax)
c060879d:	00 00                	add    %al,(%eax)
c060879f:	00 bc 22 00 00 a0 00 	add    %bh,0xa00000(%edx,%eiz,1)
c06087a6:	00 00                	add    %al,(%eax)
c06087a8:	34 00                	xor    $0x0,%al
c06087aa:	00 00                	add    %al,(%eax)
c06087ac:	00 00                	add    %al,(%eax)
c06087ae:	00 00                	add    %al,(%eax)
c06087b0:	44                   	inc    %esp
c06087b1:	00 cf                	add    %cl,%bh
	...
c06087bb:	00 44 00 d2          	add    %al,-0x2e(%eax,%eax,1)
c06087bf:	00 01                	add    %al,(%ecx)
c06087c1:	00 00                	add    %al,(%eax)
c06087c3:	00 00                	add    %al,(%eax)
c06087c5:	00 00                	add    %al,(%eax)
c06087c7:	00 44 00 cf          	add    %al,-0x31(%eax,%eax,1)
c06087cb:	00 03                	add    %al,(%ebx)
c06087cd:	00 00                	add    %al,(%eax)
c06087cf:	00 00                	add    %al,(%eax)
c06087d1:	00 00                	add    %al,(%eax)
c06087d3:	00 44 00 d1          	add    %al,-0x2f(%eax,%eax,1)
c06087d7:	00 07                	add    %al,(%edi)
c06087d9:	00 00                	add    %al,(%eax)
c06087db:	00 00                	add    %al,(%eax)
c06087dd:	00 00                	add    %al,(%eax)
c06087df:	00 44 00 d2          	add    %al,-0x2e(%eax,%eax,1)
c06087e3:	00 0d 00 00 00 00    	add    %cl,0x0
c06087e9:	00 00                	add    %al,(%eax)
c06087eb:	00 44 00 d2          	add    %al,-0x2e(%eax,%eax,1)
c06087ef:	00 2f                	add    %ch,(%edi)
c06087f1:	00 00                	add    %al,(%eax)
c06087f3:	00 00                	add    %al,(%eax)
c06087f5:	00 00                	add    %al,(%eax)
c06087f7:	00 44 00 d4          	add    %al,-0x2c(%eax,%eax,1)
c06087fb:	00 50 00             	add    %dl,0x0(%eax)
c06087fe:	00 00                	add    %al,(%eax)
c0608800:	00 00                	add    %al,(%eax)
c0608802:	00 00                	add    %al,(%eax)
c0608804:	44                   	inc    %esp
c0608805:	00 d5                	add    %dl,%ch
c0608807:	00 52 00             	add    %dl,0x0(%edx)
c060880a:	00 00                	add    %al,(%eax)
c060880c:	00 00                	add    %al,(%eax)
c060880e:	00 00                	add    %al,(%eax)
c0608810:	44                   	inc    %esp
c0608811:	00 d5                	add    %dl,%ch
c0608813:	00 55 00             	add    %dl,0x0(%ebp)
c0608816:	00 00                	add    %al,(%eax)
c0608818:	00 00                	add    %al,(%eax)
c060881a:	00 00                	add    %al,(%eax)
c060881c:	44                   	inc    %esp
c060881d:	00 dc                	add    %bl,%ah
c060881f:	00 59 00             	add    %bl,0x0(%ecx)
c0608822:	00 00                	add    %al,(%eax)
c0608824:	00 00                	add    %al,(%eax)
c0608826:	00 00                	add    %al,(%eax)
c0608828:	44                   	inc    %esp
c0608829:	00 e4                	add    %ah,%ah
c060882b:	00 5b 00             	add    %bl,0x0(%ebx)
c060882e:	00 00                	add    %al,(%eax)
c0608830:	00 00                	add    %al,(%eax)
c0608832:	00 00                	add    %al,(%eax)
c0608834:	44                   	inc    %esp
c0608835:	00 d4                	add    %dl,%ah
c0608837:	00 5d 00             	add    %bl,0x0(%ebp)
c060883a:	00 00                	add    %al,(%eax)
c060883c:	00 00                	add    %al,(%eax)
c060883e:	00 00                	add    %al,(%eax)
c0608840:	44                   	inc    %esp
c0608841:	00 e7                	add    %ah,%bh
c0608843:	00 61 00             	add    %ah,0x0(%ecx)
c0608846:	00 00                	add    %al,(%eax)
c0608848:	00 00                	add    %al,(%eax)
c060884a:	00 00                	add    %al,(%eax)
c060884c:	44                   	inc    %esp
c060884d:	00 e6                	add    %ah,%dh
c060884f:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c0608853:	00 00                	add    %al,(%eax)
c0608855:	00 00                	add    %al,(%eax)
c0608857:	00 44 00 e7          	add    %al,-0x19(%eax,%eax,1)
c060885b:	00 66 00             	add    %ah,0x0(%esi)
c060885e:	00 00                	add    %al,(%eax)
c0608860:	00 00                	add    %al,(%eax)
c0608862:	00 00                	add    %al,(%eax)
c0608864:	44                   	inc    %esp
c0608865:	00 d6                	add    %dl,%dh
c0608867:	00 70 00             	add    %dh,0x0(%eax)
c060886a:	00 00                	add    %al,(%eax)
c060886c:	00 00                	add    %al,(%eax)
c060886e:	00 00                	add    %al,(%eax)
c0608870:	44                   	inc    %esp
c0608871:	00 d7                	add    %dl,%bh
c0608873:	00 76 00             	add    %dh,0x0(%esi)
c0608876:	00 00                	add    %al,(%eax)
c0608878:	00 00                	add    %al,(%eax)
c060887a:	00 00                	add    %al,(%eax)
c060887c:	44                   	inc    %esp
c060887d:	00 d9                	add    %bl,%cl
c060887f:	00 78 00             	add    %bh,0x0(%eax)
c0608882:	00 00                	add    %al,(%eax)
c0608884:	00 00                	add    %al,(%eax)
c0608886:	00 00                	add    %al,(%eax)
c0608888:	44                   	inc    %esp
c0608889:	00 d6                	add    %dl,%dh
c060888b:	00 7a 00             	add    %bh,0x0(%edx)
c060888e:	00 00                	add    %al,(%eax)
c0608890:	00 00                	add    %al,(%eax)
c0608892:	00 00                	add    %al,(%eax)
c0608894:	44                   	inc    %esp
c0608895:	00 d6                	add    %dl,%dh
c0608897:	00 7d 00             	add    %bh,0x0(%ebp)
c060889a:	00 00                	add    %al,(%eax)
c060889c:	00 00                	add    %al,(%eax)
c060889e:	00 00                	add    %al,(%eax)
c06088a0:	44                   	inc    %esp
c06088a1:	00 d7                	add    %dl,%bh
c06088a3:	00 7f 00             	add    %bh,0x0(%edi)
c06088a6:	00 00                	add    %al,(%eax)
c06088a8:	00 00                	add    %al,(%eax)
c06088aa:	00 00                	add    %al,(%eax)
c06088ac:	44                   	inc    %esp
c06088ad:	00 d9                	add    %bl,%cl
c06088af:	00 81 00 00 00 00    	add    %al,0x0(%ecx)
c06088b5:	00 00                	add    %al,(%eax)
c06088b7:	00 44 00 e2          	add    %al,-0x1e(%eax,%eax,1)
c06088bb:	00 84 00 00 00 00 00 	add    %al,0x0(%eax,%eax,1)
c06088c2:	00 00                	add    %al,(%eax)
c06088c4:	44                   	inc    %esp
c06088c5:	00 e7                	add    %ah,%bh
c06088c7:	00 86 00 00 00 00    	add    %al,0x0(%esi)
c06088cd:	00 00                	add    %al,(%eax)
c06088cf:	00 44 00 de          	add    %al,-0x22(%eax,%eax,1)
c06088d3:	00 90 00 00 00 00    	add    %dl,0x0(%eax)
c06088d9:	00 00                	add    %al,(%eax)
c06088db:	00 44 00 de          	add    %al,-0x22(%eax,%eax,1)
c06088df:	00 95 00 00 00 00    	add    %dl,0x0(%ebp)
c06088e5:	00 00                	add    %al,(%eax)
c06088e7:	00 44 00 e2          	add    %al,-0x1e(%eax,%eax,1)
c06088eb:	00 9c 00 00 00 c9 22 	add    %bl,0x22c90000(%eax,%eax,1)
c06088f2:	00 00                	add    %al,(%eax)
c06088f4:	40                   	inc    %eax
c06088f5:	00 00                	add    %al,(%eax)
c06088f7:	00 03                	add    %al,(%ebx)
c06088f9:	00 00                	add    %al,(%eax)
c06088fb:	00 d3                	add    %dl,%bl
c06088fd:	22 00                	and    (%eax),%al
c06088ff:	00 40 00             	add    %al,0x0(%eax)
c0608902:	00 00                	add    %al,(%eax)
c0608904:	02 00                	add    (%eax),%al
c0608906:	00 00                	add    %al,(%eax)
c0608908:	00 00                	add    %al,(%eax)
c060890a:	00 00                	add    %al,(%eax)
c060890c:	c0 00 00             	rolb   $0x0,(%eax)
c060890f:	00 00                	add    %al,(%eax)
c0608911:	00 00                	add    %al,(%eax)
c0608913:	00 dc                	add    %bl,%ah
c0608915:	22 00                	and    (%eax),%al
c0608917:	00 40 00             	add    %al,0x0(%eax)
c060891a:	00 00                	add    %al,(%eax)
c060891c:	01 00                	add    %eax,(%eax)
c060891e:	00 00                	add    %al,(%eax)
c0608920:	00 00                	add    %al,(%eax)
c0608922:	00 00                	add    %al,(%eax)
c0608924:	c0 00 00             	rolb   $0x0,(%eax)
c0608927:	00 70 00             	add    %dh,0x0(%eax)
c060892a:	00 00                	add    %al,(%eax)
c060892c:	00 00                	add    %al,(%eax)
c060892e:	00 00                	add    %al,(%eax)
c0608930:	e0 00                	loopne c0608932 <.stab+0xae6>
c0608932:	00 00                	add    %al,(%eax)
c0608934:	84 00                	test   %al,(%eax)
c0608936:	00 00                	add    %al,(%eax)
c0608938:	00 00                	add    %al,(%eax)
c060893a:	00 00                	add    %al,(%eax)
c060893c:	e0 00                	loopne c060893e <.stab+0xaf2>
c060893e:	00 00                	add    %al,(%eax)
c0608940:	a0 00 00 00 e6       	mov    0xe6000000,%al
c0608945:	22 00                	and    (%eax),%al
c0608947:	00 24 00             	add    %ah,(%eax,%eax,1)
c060894a:	00 00                	add    %al,(%eax)
c060894c:	20 11                	and    %dl,(%ecx)
c060894e:	60                   	pusha  
c060894f:	c0 fb 22             	sar    $0x22,%bl
c0608952:	00 00                	add    %al,(%eax)
c0608954:	a0 00 00 00 40       	mov    0x40000000,%al
c0608959:	00 00                	add    %al,(%eax)
c060895b:	00 bc 22 00 00 a0 00 	add    %bh,0xa00000(%edx,%eiz,1)
c0608962:	00 00                	add    %al,(%eax)
c0608964:	44                   	inc    %esp
c0608965:	00 00                	add    %al,(%eax)
c0608967:	00 00                	add    %al,(%eax)
c0608969:	00 00                	add    %al,(%eax)
c060896b:	00 44 00 eb          	add    %al,-0x15(%eax,%eax,1)
	...
c0608977:	00 44 00 ed          	add    %al,-0x13(%eax,%eax,1)
c060897b:	00 01                	add    %al,(%ecx)
c060897d:	00 00                	add    %al,(%eax)
c060897f:	00 00                	add    %al,(%eax)
c0608981:	00 00                	add    %al,(%eax)
c0608983:	00 44 00 eb          	add    %al,-0x15(%eax,%eax,1)
c0608987:	00 03                	add    %al,(%ebx)
c0608989:	00 00                	add    %al,(%eax)
c060898b:	00 00                	add    %al,(%eax)
c060898d:	00 00                	add    %al,(%eax)
c060898f:	00 44 00 ed          	add    %al,-0x13(%eax,%eax,1)
c0608993:	00 08                	add    %cl,(%eax)
c0608995:	00 00                	add    %al,(%eax)
c0608997:	00 00                	add    %al,(%eax)
c0608999:	00 00                	add    %al,(%eax)
c060899b:	00 44 00 eb          	add    %al,-0x15(%eax,%eax,1)
c060899f:	00 0c 00             	add    %cl,(%eax,%eax,1)
c06089a2:	00 00                	add    %al,(%eax)
c06089a4:	00 00                	add    %al,(%eax)
c06089a6:	00 00                	add    %al,(%eax)
c06089a8:	44                   	inc    %esp
c06089a9:	00 ed                	add    %ch,%ch
c06089ab:	00 10                	add    %dl,(%eax)
c06089ad:	00 00                	add    %al,(%eax)
c06089af:	00 00                	add    %al,(%eax)
c06089b1:	00 00                	add    %al,(%eax)
c06089b3:	00 44 00 ee          	add    %al,-0x12(%eax,%eax,1)
c06089b7:	00 2e                	add    %ch,(%esi)
c06089b9:	00 00                	add    %al,(%eax)
c06089bb:	00 00                	add    %al,(%eax)
c06089bd:	00 00                	add    %al,(%eax)
c06089bf:	00 44 00 ed          	add    %al,-0x13(%eax,%eax,1)
c06089c3:	00 34 00             	add    %dh,(%eax,%eax,1)
c06089c6:	00 00                	add    %al,(%eax)
c06089c8:	00 00                	add    %al,(%eax)
c06089ca:	00 00                	add    %al,(%eax)
c06089cc:	44                   	inc    %esp
c06089cd:	00 ee                	add    %ch,%dh
c06089cf:	00 55 00             	add    %dl,0x0(%ebp)
c06089d2:	00 00                	add    %al,(%eax)
c06089d4:	00 00                	add    %al,(%eax)
c06089d6:	00 00                	add    %al,(%eax)
c06089d8:	44                   	inc    %esp
c06089d9:	00 f4                	add    %dh,%ah
c06089db:	00 59 00             	add    %bl,0x0(%ecx)
c06089de:	00 00                	add    %al,(%eax)
c06089e0:	00 00                	add    %al,(%eax)
c06089e2:	00 00                	add    %al,(%eax)
c06089e4:	44                   	inc    %esp
c06089e5:	00 f4                	add    %dh,%ah
c06089e7:	00 5b 00             	add    %bl,0x0(%ebx)
c06089ea:	00 00                	add    %al,(%eax)
c06089ec:	00 00                	add    %al,(%eax)
c06089ee:	00 00                	add    %al,(%eax)
c06089f0:	44                   	inc    %esp
c06089f1:	00 f5                	add    %dh,%ch
c06089f3:	00 5d 00             	add    %bl,0x0(%ebp)
c06089f6:	00 00                	add    %al,(%eax)
c06089f8:	00 00                	add    %al,(%eax)
c06089fa:	00 00                	add    %al,(%eax)
c06089fc:	44                   	inc    %esp
c06089fd:	00 f6                	add    %dh,%dh
c06089ff:	00 5f 00             	add    %bl,0x0(%edi)
c0608a02:	00 00                	add    %al,(%eax)
c0608a04:	00 00                	add    %al,(%eax)
c0608a06:	00 00                	add    %al,(%eax)
c0608a08:	44                   	inc    %esp
c0608a09:	00 f9                	add    %bh,%cl
c0608a0b:	00 62 00             	add    %ah,0x0(%edx)
c0608a0e:	00 00                	add    %al,(%eax)
c0608a10:	00 00                	add    %al,(%eax)
c0608a12:	00 00                	add    %al,(%eax)
c0608a14:	44                   	inc    %esp
c0608a15:	00 f0                	add    %dh,%al
c0608a17:	00 70 00             	add    %dh,0x0(%eax)
c0608a1a:	00 00                	add    %al,(%eax)
c0608a1c:	00 00                	add    %al,(%eax)
c0608a1e:	00 00                	add    %al,(%eax)
c0608a20:	44                   	inc    %esp
c0608a21:	00 ef                	add    %ch,%bh
c0608a23:	00 73 00             	add    %dh,0x0(%ebx)
c0608a26:	00 00                	add    %al,(%eax)
c0608a28:	00 00                	add    %al,(%eax)
c0608a2a:	00 00                	add    %al,(%eax)
c0608a2c:	44                   	inc    %esp
c0608a2d:	00 f1                	add    %dh,%cl
c0608a2f:	00 79 00             	add    %bh,0x0(%ecx)
c0608a32:	00 00                	add    %al,(%eax)
c0608a34:	00 00                	add    %al,(%eax)
c0608a36:	00 00                	add    %al,(%eax)
c0608a38:	44                   	inc    %esp
c0608a39:	00 f9                	add    %bh,%cl
c0608a3b:	00 7f 00             	add    %bh,0x0(%edi)
c0608a3e:	00 00                	add    %al,(%eax)
c0608a40:	07                   	pop    %es
c0608a41:	23 00                	and    (%eax),%eax
c0608a43:	00 40 00             	add    %al,0x0(%eax)
c0608a46:	00 00                	add    %al,(%eax)
c0608a48:	03 00                	add    (%eax),%eax
c0608a4a:	00 00                	add    %al,(%eax)
c0608a4c:	13 23                	adc    (%ebx),%esp
c0608a4e:	00 00                	add    %al,(%eax)
c0608a50:	24 00                	and    $0x0,%al
c0608a52:	00 00                	add    %al,(%eax)
c0608a54:	b0 11                	mov    $0x11,%al
c0608a56:	60                   	pusha  
c0608a57:	c0 00 00             	rolb   $0x0,(%eax)
c0608a5a:	00 00                	add    %al,(%eax)
c0608a5c:	44                   	inc    %esp
c0608a5d:	00 00                	add    %al,(%eax)
c0608a5f:	01 00                	add    %eax,(%eax)
c0608a61:	00 00                	add    %al,(%eax)
c0608a63:	00 00                	add    %al,(%eax)
c0608a65:	00 00                	add    %al,(%eax)
c0608a67:	00 44 00 02          	add    %al,0x2(%eax,%eax,1)
c0608a6b:	01 00                	add    %eax,(%eax)
c0608a6d:	00 00                	add    %al,(%eax)
c0608a6f:	00 00                	add    %al,(%eax)
c0608a71:	00 00                	add    %al,(%eax)
c0608a73:	00 44 00 02          	add    %al,0x2(%eax,%eax,1)
c0608a77:	01 02                	add    %eax,(%edx)
c0608a79:	00 00                	add    %al,(%eax)
c0608a7b:	00 00                	add    %al,(%eax)
c0608a7d:	00 00                	add    %al,(%eax)
c0608a7f:	00 44 00 02          	add    %al,0x2(%eax,%eax,1)
c0608a83:	01 07                	add    %eax,(%edi)
c0608a85:	00 00                	add    %al,(%eax)
c0608a87:	00 00                	add    %al,(%eax)
c0608a89:	00 00                	add    %al,(%eax)
c0608a8b:	00 44 00 01          	add    %al,0x1(%eax,%eax,1)
c0608a8f:	01 0d 00 00 00 00    	add    %ecx,0x0
c0608a95:	00 00                	add    %al,(%eax)
c0608a97:	00 44 00 02          	add    %al,0x2(%eax,%eax,1)
c0608a9b:	01 17                	add    %edx,(%edi)
c0608a9d:	00 00                	add    %al,(%eax)
c0608a9f:	00 00                	add    %al,(%eax)
c0608aa1:	00 00                	add    %al,(%eax)
c0608aa3:	00 44 00 03          	add    %al,0x3(%eax,%eax,1)
c0608aa7:	01 1d 00 00 00 00    	add    %ebx,0x0
c0608aad:	00 00                	add    %al,(%eax)
c0608aaf:	00 44 00 02          	add    %al,0x2(%eax,%eax,1)
c0608ab3:	01 27                	add    %esp,(%edi)
c0608ab5:	00 00                	add    %al,(%eax)
c0608ab7:	00 00                	add    %al,(%eax)
c0608ab9:	00 00                	add    %al,(%eax)
c0608abb:	00 44 00 06          	add    %al,0x6(%eax,%eax,1)
c0608abf:	01 29                	add    %ebp,(%ecx)
c0608ac1:	00 00                	add    %al,(%eax)
c0608ac3:	00 00                	add    %al,(%eax)
c0608ac5:	00 00                	add    %al,(%eax)
c0608ac7:	00 44 00 02          	add    %al,0x2(%eax,%eax,1)
c0608acb:	01 2e                	add    %ebp,(%esi)
c0608acd:	00 00                	add    %al,(%eax)
c0608acf:	00 00                	add    %al,(%eax)
c0608ad1:	00 00                	add    %al,(%eax)
c0608ad3:	00 44 00 06          	add    %al,0x6(%eax,%eax,1)
c0608ad7:	01 34 00             	add    %esi,(%eax,%eax,1)
c0608ada:	00 00                	add    %al,(%eax)
c0608adc:	00 00                	add    %al,(%eax)
c0608ade:	00 00                	add    %al,(%eax)
c0608ae0:	64 00 00             	add    %al,%fs:(%eax)
c0608ae3:	00 e5                	add    %ah,%ch
c0608ae5:	11 60 c0             	adc    %esp,-0x40(%eax)

c0608ae8 <.stab>:
c0608ae8:	2b 23                	sub    (%ebx),%esp
c0608aea:	00 00                	add    %al,(%eax)
c0608aec:	64 00 02             	add    %al,%fs:(%edx)
c0608aef:	00 f0                	add    %dh,%al
c0608af1:	11 60 c0             	adc    %esp,-0x40(%eax)
c0608af4:	08 00                	or     %al,(%eax)
c0608af6:	00 00                	add    %al,(%eax)
c0608af8:	3c 00                	cmp    $0x0,%al
c0608afa:	00 00                	add    %al,(%eax)
c0608afc:	00 00                	add    %al,(%eax)
c0608afe:	00 00                	add    %al,(%eax)
c0608b00:	17                   	pop    %ss
c0608b01:	00 00                	add    %al,(%eax)
c0608b03:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608b09:	00 00                	add    %al,(%eax)
c0608b0b:	00 41 00             	add    %al,0x0(%ecx)
c0608b0e:	00 00                	add    %al,(%eax)
c0608b10:	80 00 00             	addb   $0x0,(%eax)
c0608b13:	00 00                	add    %al,(%eax)
c0608b15:	00 00                	add    %al,(%eax)
c0608b17:	00 5b 00             	add    %bl,0x0(%ebx)
c0608b1a:	00 00                	add    %al,(%eax)
c0608b1c:	80 00 00             	addb   $0x0,(%eax)
c0608b1f:	00 00                	add    %al,(%eax)
c0608b21:	00 00                	add    %al,(%eax)
c0608b23:	00 8a 00 00 00 80    	add    %cl,-0x80000000(%edx)
c0608b29:	00 00                	add    %al,(%eax)
c0608b2b:	00 00                	add    %al,(%eax)
c0608b2d:	00 00                	add    %al,(%eax)
c0608b2f:	00 b3 00 00 00 80    	add    %dh,-0x80000000(%ebx)
c0608b35:	00 00                	add    %al,(%eax)
c0608b37:	00 00                	add    %al,(%eax)
c0608b39:	00 00                	add    %al,(%eax)
c0608b3b:	00 e1                	add    %ah,%cl
c0608b3d:	00 00                	add    %al,(%eax)
c0608b3f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608b45:	00 00                	add    %al,(%eax)
c0608b47:	00 fe                	add    %bh,%dh
c0608b49:	00 00                	add    %al,(%eax)
c0608b4b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608b51:	00 00                	add    %al,(%eax)
c0608b53:	00 24 01             	add    %ah,(%ecx,%eax,1)
c0608b56:	00 00                	add    %al,(%eax)
c0608b58:	80 00 00             	addb   $0x0,(%eax)
c0608b5b:	00 00                	add    %al,(%eax)
c0608b5d:	00 00                	add    %al,(%eax)
c0608b5f:	00 6a 01             	add    %ch,0x1(%edx)
c0608b62:	00 00                	add    %al,(%eax)
c0608b64:	80 00 00             	addb   $0x0,(%eax)
c0608b67:	00 00                	add    %al,(%eax)
c0608b69:	00 00                	add    %al,(%eax)
c0608b6b:	00 95 01 00 00 80    	add    %dl,-0x7fffffff(%ebp)
c0608b71:	00 00                	add    %al,(%eax)
c0608b73:	00 00                	add    %al,(%eax)
c0608b75:	00 00                	add    %al,(%eax)
c0608b77:	00 bd 01 00 00 80    	add    %bh,-0x7fffffff(%ebp)
c0608b7d:	00 00                	add    %al,(%eax)
c0608b7f:	00 00                	add    %al,(%eax)
c0608b81:	00 00                	add    %al,(%eax)
c0608b83:	00 e9                	add    %ch,%cl
c0608b85:	01 00                	add    %eax,(%eax)
c0608b87:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608b8d:	00 00                	add    %al,(%eax)
c0608b8f:	00 0f                	add    %cl,(%edi)
c0608b91:	02 00                	add    (%eax),%al
c0608b93:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608b99:	00 00                	add    %al,(%eax)
c0608b9b:	00 34 02             	add    %dh,(%edx,%eax,1)
c0608b9e:	00 00                	add    %al,(%eax)
c0608ba0:	80 00 00             	addb   $0x0,(%eax)
c0608ba3:	00 00                	add    %al,(%eax)
c0608ba5:	00 00                	add    %al,(%eax)
c0608ba7:	00 4e 02             	add    %cl,0x2(%esi)
c0608baa:	00 00                	add    %al,(%eax)
c0608bac:	80 00 00             	addb   $0x0,(%eax)
c0608baf:	00 00                	add    %al,(%eax)
c0608bb1:	00 00                	add    %al,(%eax)
c0608bb3:	00 69 02             	add    %ch,0x2(%ecx)
c0608bb6:	00 00                	add    %al,(%eax)
c0608bb8:	80 00 00             	addb   $0x0,(%eax)
c0608bbb:	00 00                	add    %al,(%eax)
c0608bbd:	00 00                	add    %al,(%eax)
c0608bbf:	00 8a 02 00 00 80    	add    %cl,-0x7ffffffe(%edx)
c0608bc5:	00 00                	add    %al,(%eax)
c0608bc7:	00 00                	add    %al,(%eax)
c0608bc9:	00 00                	add    %al,(%eax)
c0608bcb:	00 a7 02 00 00 80    	add    %ah,-0x7ffffffe(%edi)
c0608bd1:	00 00                	add    %al,(%eax)
c0608bd3:	00 00                	add    %al,(%eax)
c0608bd5:	00 00                	add    %al,(%eax)
c0608bd7:	00 c4                	add    %al,%ah
c0608bd9:	02 00                	add    (%eax),%al
c0608bdb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608be1:	00 00                	add    %al,(%eax)
c0608be3:	00 e3                	add    %ah,%bl
c0608be5:	02 00                	add    (%eax),%al
c0608be7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608bed:	00 00                	add    %al,(%eax)
c0608bef:	00 01                	add    %al,(%ecx)
c0608bf1:	03 00                	add    (%eax),%eax
c0608bf3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608bf9:	00 00                	add    %al,(%eax)
c0608bfb:	00 20                	add    %ah,(%eax)
c0608bfd:	03 00                	add    (%eax),%eax
c0608bff:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608c05:	00 00                	add    %al,(%eax)
c0608c07:	00 3f                	add    %bh,(%edi)
c0608c09:	03 00                	add    (%eax),%eax
c0608c0b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608c11:	00 00                	add    %al,(%eax)
c0608c13:	00 5e 03             	add    %bl,0x3(%esi)
c0608c16:	00 00                	add    %al,(%eax)
c0608c18:	80 00 00             	addb   $0x0,(%eax)
c0608c1b:	00 00                	add    %al,(%eax)
c0608c1d:	00 00                	add    %al,(%eax)
c0608c1f:	00 7f 03             	add    %bh,0x3(%edi)
c0608c22:	00 00                	add    %al,(%eax)
c0608c24:	80 00 00             	addb   $0x0,(%eax)
	...
c0608c2f:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c0608c33:	00 f0                	add    %dh,%al
c0608c35:	11 60 c0             	adc    %esp,-0x40(%eax)

c0608c38 <.stab>:
c0608c38:	31 23                	xor    %esp,(%ebx)
c0608c3a:	00 00                	add    %al,(%eax)
c0608c3c:	64 00 02             	add    %al,%fs:(%edx)
c0608c3f:	00 f0                	add    %dh,%al
c0608c41:	11 60 c0             	adc    %esp,-0x40(%eax)
c0608c44:	08 00                	or     %al,(%eax)
c0608c46:	00 00                	add    %al,(%eax)
c0608c48:	3c 00                	cmp    $0x0,%al
c0608c4a:	00 00                	add    %al,(%eax)
c0608c4c:	00 00                	add    %al,(%eax)
c0608c4e:	00 00                	add    %al,(%eax)
c0608c50:	17                   	pop    %ss
c0608c51:	00 00                	add    %al,(%eax)
c0608c53:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608c59:	00 00                	add    %al,(%eax)
c0608c5b:	00 41 00             	add    %al,0x0(%ecx)
c0608c5e:	00 00                	add    %al,(%eax)
c0608c60:	80 00 00             	addb   $0x0,(%eax)
c0608c63:	00 00                	add    %al,(%eax)
c0608c65:	00 00                	add    %al,(%eax)
c0608c67:	00 5b 00             	add    %bl,0x0(%ebx)
c0608c6a:	00 00                	add    %al,(%eax)
c0608c6c:	80 00 00             	addb   $0x0,(%eax)
c0608c6f:	00 00                	add    %al,(%eax)
c0608c71:	00 00                	add    %al,(%eax)
c0608c73:	00 8a 00 00 00 80    	add    %cl,-0x80000000(%edx)
c0608c79:	00 00                	add    %al,(%eax)
c0608c7b:	00 00                	add    %al,(%eax)
c0608c7d:	00 00                	add    %al,(%eax)
c0608c7f:	00 b3 00 00 00 80    	add    %dh,-0x80000000(%ebx)
c0608c85:	00 00                	add    %al,(%eax)
c0608c87:	00 00                	add    %al,(%eax)
c0608c89:	00 00                	add    %al,(%eax)
c0608c8b:	00 e1                	add    %ah,%cl
c0608c8d:	00 00                	add    %al,(%eax)
c0608c8f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608c95:	00 00                	add    %al,(%eax)
c0608c97:	00 fe                	add    %bh,%dh
c0608c99:	00 00                	add    %al,(%eax)
c0608c9b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608ca1:	00 00                	add    %al,(%eax)
c0608ca3:	00 24 01             	add    %ah,(%ecx,%eax,1)
c0608ca6:	00 00                	add    %al,(%eax)
c0608ca8:	80 00 00             	addb   $0x0,(%eax)
c0608cab:	00 00                	add    %al,(%eax)
c0608cad:	00 00                	add    %al,(%eax)
c0608caf:	00 6a 01             	add    %ch,0x1(%edx)
c0608cb2:	00 00                	add    %al,(%eax)
c0608cb4:	80 00 00             	addb   $0x0,(%eax)
c0608cb7:	00 00                	add    %al,(%eax)
c0608cb9:	00 00                	add    %al,(%eax)
c0608cbb:	00 95 01 00 00 80    	add    %dl,-0x7fffffff(%ebp)
c0608cc1:	00 00                	add    %al,(%eax)
c0608cc3:	00 00                	add    %al,(%eax)
c0608cc5:	00 00                	add    %al,(%eax)
c0608cc7:	00 bd 01 00 00 80    	add    %bh,-0x7fffffff(%ebp)
c0608ccd:	00 00                	add    %al,(%eax)
c0608ccf:	00 00                	add    %al,(%eax)
c0608cd1:	00 00                	add    %al,(%eax)
c0608cd3:	00 e9                	add    %ch,%cl
c0608cd5:	01 00                	add    %eax,(%eax)
c0608cd7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608cdd:	00 00                	add    %al,(%eax)
c0608cdf:	00 0f                	add    %cl,(%edi)
c0608ce1:	02 00                	add    (%eax),%al
c0608ce3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608ce9:	00 00                	add    %al,(%eax)
c0608ceb:	00 34 02             	add    %dh,(%edx,%eax,1)
c0608cee:	00 00                	add    %al,(%eax)
c0608cf0:	80 00 00             	addb   $0x0,(%eax)
c0608cf3:	00 00                	add    %al,(%eax)
c0608cf5:	00 00                	add    %al,(%eax)
c0608cf7:	00 4e 02             	add    %cl,0x2(%esi)
c0608cfa:	00 00                	add    %al,(%eax)
c0608cfc:	80 00 00             	addb   $0x0,(%eax)
c0608cff:	00 00                	add    %al,(%eax)
c0608d01:	00 00                	add    %al,(%eax)
c0608d03:	00 69 02             	add    %ch,0x2(%ecx)
c0608d06:	00 00                	add    %al,(%eax)
c0608d08:	80 00 00             	addb   $0x0,(%eax)
c0608d0b:	00 00                	add    %al,(%eax)
c0608d0d:	00 00                	add    %al,(%eax)
c0608d0f:	00 8a 02 00 00 80    	add    %cl,-0x7ffffffe(%edx)
c0608d15:	00 00                	add    %al,(%eax)
c0608d17:	00 00                	add    %al,(%eax)
c0608d19:	00 00                	add    %al,(%eax)
c0608d1b:	00 a7 02 00 00 80    	add    %ah,-0x7ffffffe(%edi)
c0608d21:	00 00                	add    %al,(%eax)
c0608d23:	00 00                	add    %al,(%eax)
c0608d25:	00 00                	add    %al,(%eax)
c0608d27:	00 c4                	add    %al,%ah
c0608d29:	02 00                	add    (%eax),%al
c0608d2b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608d31:	00 00                	add    %al,(%eax)
c0608d33:	00 e3                	add    %ah,%bl
c0608d35:	02 00                	add    (%eax),%al
c0608d37:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608d3d:	00 00                	add    %al,(%eax)
c0608d3f:	00 01                	add    %al,(%ecx)
c0608d41:	03 00                	add    (%eax),%eax
c0608d43:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608d49:	00 00                	add    %al,(%eax)
c0608d4b:	00 20                	add    %ah,(%eax)
c0608d4d:	03 00                	add    (%eax),%eax
c0608d4f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608d55:	00 00                	add    %al,(%eax)
c0608d57:	00 3f                	add    %bh,(%edi)
c0608d59:	03 00                	add    (%eax),%eax
c0608d5b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608d61:	00 00                	add    %al,(%eax)
c0608d63:	00 5e 03             	add    %bl,0x3(%esi)
c0608d66:	00 00                	add    %al,(%eax)
c0608d68:	80 00 00             	addb   $0x0,(%eax)
c0608d6b:	00 00                	add    %al,(%eax)
c0608d6d:	00 00                	add    %al,(%eax)
c0608d6f:	00 7f 03             	add    %bh,0x3(%edi)
c0608d72:	00 00                	add    %al,(%eax)
c0608d74:	80 00 00             	addb   $0x0,(%eax)
c0608d77:	00 00                	add    %al,(%eax)
c0608d79:	00 00                	add    %al,(%eax)
c0608d7b:	00 37                	add    %dh,(%edi)
c0608d7d:	23 00                	and    (%eax),%eax
c0608d7f:	00 82 00 00 00 bc    	add    %al,-0x44000000(%edx)
c0608d85:	76 00                	jbe    c0608d87 <.stab+0x14f>
c0608d87:	00 49 23             	add    %cl,0x23(%ecx)
c0608d8a:	00 00                	add    %al,(%eax)
c0608d8c:	80 00 00             	addb   $0x0,(%eax)
c0608d8f:	00 00                	add    %al,(%eax)
c0608d91:	00 00                	add    %al,(%eax)
c0608d93:	00 19                	add    %bl,(%ecx)
c0608d95:	25 00 00 80 00       	and    $0x800000,%eax
c0608d9a:	00 00                	add    %al,(%eax)
c0608d9c:	00 00                	add    %al,(%eax)
c0608d9e:	00 00                	add    %al,(%eax)
c0608da0:	30 25 00 00 80 00    	xor    %ah,0x800000
c0608da6:	00 00                	add    %al,(%eax)
c0608da8:	00 00                	add    %al,(%eax)
c0608daa:	00 00                	add    %al,(%eax)
c0608dac:	45                   	inc    %ebp
c0608dad:	25 00 00 80 00       	and    $0x800000,%eax
	...
c0608dba:	00 00                	add    %al,(%eax)
c0608dbc:	a2 00 00 00 00       	mov    %al,0x0
c0608dc1:	00 00                	add    %al,(%eax)
c0608dc3:	00 00                	add    %al,(%eax)
c0608dc5:	00 00                	add    %al,(%eax)
c0608dc7:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c0608dcb:	00 f0                	add    %dh,%al
c0608dcd:	11 60 c0             	adc    %esp,-0x40(%eax)

c0608dd0 <.stab>:
c0608dd0:	58                   	pop    %eax
c0608dd1:	25 00 00 64 00       	and    $0x640000,%eax
c0608dd6:	02 00                	add    (%eax),%al
c0608dd8:	f0 11 60 c0          	lock adc %esp,-0x40(%eax)
c0608ddc:	08 00                	or     %al,(%eax)
c0608dde:	00 00                	add    %al,(%eax)
c0608de0:	3c 00                	cmp    $0x0,%al
c0608de2:	00 00                	add    %al,(%eax)
c0608de4:	00 00                	add    %al,(%eax)
c0608de6:	00 00                	add    %al,(%eax)
c0608de8:	17                   	pop    %ss
c0608de9:	00 00                	add    %al,(%eax)
c0608deb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608df1:	00 00                	add    %al,(%eax)
c0608df3:	00 41 00             	add    %al,0x0(%ecx)
c0608df6:	00 00                	add    %al,(%eax)
c0608df8:	80 00 00             	addb   $0x0,(%eax)
c0608dfb:	00 00                	add    %al,(%eax)
c0608dfd:	00 00                	add    %al,(%eax)
c0608dff:	00 5b 00             	add    %bl,0x0(%ebx)
c0608e02:	00 00                	add    %al,(%eax)
c0608e04:	80 00 00             	addb   $0x0,(%eax)
c0608e07:	00 00                	add    %al,(%eax)
c0608e09:	00 00                	add    %al,(%eax)
c0608e0b:	00 8a 00 00 00 80    	add    %cl,-0x80000000(%edx)
c0608e11:	00 00                	add    %al,(%eax)
c0608e13:	00 00                	add    %al,(%eax)
c0608e15:	00 00                	add    %al,(%eax)
c0608e17:	00 b3 00 00 00 80    	add    %dh,-0x80000000(%ebx)
c0608e1d:	00 00                	add    %al,(%eax)
c0608e1f:	00 00                	add    %al,(%eax)
c0608e21:	00 00                	add    %al,(%eax)
c0608e23:	00 e1                	add    %ah,%cl
c0608e25:	00 00                	add    %al,(%eax)
c0608e27:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608e2d:	00 00                	add    %al,(%eax)
c0608e2f:	00 fe                	add    %bh,%dh
c0608e31:	00 00                	add    %al,(%eax)
c0608e33:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608e39:	00 00                	add    %al,(%eax)
c0608e3b:	00 24 01             	add    %ah,(%ecx,%eax,1)
c0608e3e:	00 00                	add    %al,(%eax)
c0608e40:	80 00 00             	addb   $0x0,(%eax)
c0608e43:	00 00                	add    %al,(%eax)
c0608e45:	00 00                	add    %al,(%eax)
c0608e47:	00 6a 01             	add    %ch,0x1(%edx)
c0608e4a:	00 00                	add    %al,(%eax)
c0608e4c:	80 00 00             	addb   $0x0,(%eax)
c0608e4f:	00 00                	add    %al,(%eax)
c0608e51:	00 00                	add    %al,(%eax)
c0608e53:	00 95 01 00 00 80    	add    %dl,-0x7fffffff(%ebp)
c0608e59:	00 00                	add    %al,(%eax)
c0608e5b:	00 00                	add    %al,(%eax)
c0608e5d:	00 00                	add    %al,(%eax)
c0608e5f:	00 bd 01 00 00 80    	add    %bh,-0x7fffffff(%ebp)
c0608e65:	00 00                	add    %al,(%eax)
c0608e67:	00 00                	add    %al,(%eax)
c0608e69:	00 00                	add    %al,(%eax)
c0608e6b:	00 e9                	add    %ch,%cl
c0608e6d:	01 00                	add    %eax,(%eax)
c0608e6f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608e75:	00 00                	add    %al,(%eax)
c0608e77:	00 0f                	add    %cl,(%edi)
c0608e79:	02 00                	add    (%eax),%al
c0608e7b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608e81:	00 00                	add    %al,(%eax)
c0608e83:	00 34 02             	add    %dh,(%edx,%eax,1)
c0608e86:	00 00                	add    %al,(%eax)
c0608e88:	80 00 00             	addb   $0x0,(%eax)
c0608e8b:	00 00                	add    %al,(%eax)
c0608e8d:	00 00                	add    %al,(%eax)
c0608e8f:	00 4e 02             	add    %cl,0x2(%esi)
c0608e92:	00 00                	add    %al,(%eax)
c0608e94:	80 00 00             	addb   $0x0,(%eax)
c0608e97:	00 00                	add    %al,(%eax)
c0608e99:	00 00                	add    %al,(%eax)
c0608e9b:	00 69 02             	add    %ch,0x2(%ecx)
c0608e9e:	00 00                	add    %al,(%eax)
c0608ea0:	80 00 00             	addb   $0x0,(%eax)
c0608ea3:	00 00                	add    %al,(%eax)
c0608ea5:	00 00                	add    %al,(%eax)
c0608ea7:	00 8a 02 00 00 80    	add    %cl,-0x7ffffffe(%edx)
c0608ead:	00 00                	add    %al,(%eax)
c0608eaf:	00 00                	add    %al,(%eax)
c0608eb1:	00 00                	add    %al,(%eax)
c0608eb3:	00 a7 02 00 00 80    	add    %ah,-0x7ffffffe(%edi)
c0608eb9:	00 00                	add    %al,(%eax)
c0608ebb:	00 00                	add    %al,(%eax)
c0608ebd:	00 00                	add    %al,(%eax)
c0608ebf:	00 c4                	add    %al,%ah
c0608ec1:	02 00                	add    (%eax),%al
c0608ec3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608ec9:	00 00                	add    %al,(%eax)
c0608ecb:	00 e3                	add    %ah,%bl
c0608ecd:	02 00                	add    (%eax),%al
c0608ecf:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608ed5:	00 00                	add    %al,(%eax)
c0608ed7:	00 01                	add    %al,(%ecx)
c0608ed9:	03 00                	add    (%eax),%eax
c0608edb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608ee1:	00 00                	add    %al,(%eax)
c0608ee3:	00 20                	add    %ah,(%eax)
c0608ee5:	03 00                	add    (%eax),%eax
c0608ee7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608eed:	00 00                	add    %al,(%eax)
c0608eef:	00 3f                	add    %bh,(%edi)
c0608ef1:	03 00                	add    (%eax),%eax
c0608ef3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0608ef9:	00 00                	add    %al,(%eax)
c0608efb:	00 5e 03             	add    %bl,0x3(%esi)
c0608efe:	00 00                	add    %al,(%eax)
c0608f00:	80 00 00             	addb   $0x0,(%eax)
c0608f03:	00 00                	add    %al,(%eax)
c0608f05:	00 00                	add    %al,(%eax)
c0608f07:	00 7f 03             	add    %bh,0x3(%edi)
c0608f0a:	00 00                	add    %al,(%eax)
c0608f0c:	80 00 00             	addb   $0x0,(%eax)
c0608f0f:	00 00                	add    %al,(%eax)
c0608f11:	00 00                	add    %al,(%eax)
c0608f13:	00 a5 03 00 00 c2    	add    %ah,-0x3dfffffd(%ebp)
c0608f19:	00 00                	add    %al,(%eax)
c0608f1b:	00 26                	add    %ah,(%esi)
c0608f1d:	59                   	pop    %ecx
c0608f1e:	01 00                	add    %eax,(%eax)
c0608f20:	61                   	popa   
c0608f21:	25 00 00 24 00       	and    $0x240000,%eax
c0608f26:	00 00                	add    %al,(%eax)
c0608f28:	f0 11 60 c0          	lock adc %esp,-0x40(%eax)
c0608f2c:	78 25                	js     c0608f53 <.stab+0x183>
c0608f2e:	00 00                	add    %al,(%eax)
c0608f30:	a0 00 00 00 04       	mov    0x4000000,%al
c0608f35:	00 00                	add    %al,(%eax)
c0608f37:	00 87 25 00 00 a0    	add    %al,-0x5fffffdb(%edi)
c0608f3d:	00 00                	add    %al,(%eax)
c0608f3f:	00 08                	add    %cl,(%eax)
c0608f41:	00 00                	add    %al,(%eax)
c0608f43:	00 0f                	add    %cl,(%edi)
c0608f45:	21 00                	and    %eax,(%eax)
c0608f47:	00 a0 00 00 00 0c    	add    %ah,0xc000000(%eax)
c0608f4d:	00 00                	add    %al,(%eax)
c0608f4f:	00 00                	add    %al,(%eax)
c0608f51:	00 00                	add    %al,(%eax)
c0608f53:	00 44 00 04          	add    %al,0x4(%eax,%eax,1)
	...
c0608f5f:	00 44 00 04          	add    %al,0x4(%eax,%eax,1)
c0608f63:	00 04 00             	add    %al,(%eax,%eax,1)
c0608f66:	00 00                	add    %al,(%eax)
c0608f68:	00 00                	add    %al,(%eax)
c0608f6a:	00 00                	add    %al,(%eax)
c0608f6c:	44                   	inc    %esp
c0608f6d:	00 06                	add    %al,(%esi)
c0608f6f:	00 17                	add    %dl,(%edi)
c0608f71:	00 00                	add    %al,(%eax)
c0608f73:	00 00                	add    %al,(%eax)
c0608f75:	00 00                	add    %al,(%eax)
c0608f77:	00 44 00 07          	add    %al,0x7(%eax,%eax,1)
c0608f7b:	00 20                	add    %ah,(%eax)
c0608f7d:	00 00                	add    %al,(%eax)
c0608f7f:	00 00                	add    %al,(%eax)
c0608f81:	00 00                	add    %al,(%eax)
c0608f83:	00 44 00 06          	add    %al,0x6(%eax,%eax,1)
c0608f87:	00 2b                	add    %ch,(%ebx)
c0608f89:	00 00                	add    %al,(%eax)
c0608f8b:	00 00                	add    %al,(%eax)
c0608f8d:	00 00                	add    %al,(%eax)
c0608f8f:	00 44 00 0a          	add    %al,0xa(%eax,%eax,1)
c0608f93:	00 3d 00 00 00 00    	add    %bh,0x0
c0608f99:	00 00                	add    %al,(%eax)
c0608f9b:	00 44 00 0b          	add    %al,0xb(%eax,%eax,1)
c0608f9f:	00 40 00             	add    %al,0x0(%eax)
c0608fa2:	00 00                	add    %al,(%eax)
c0608fa4:	00 00                	add    %al,(%eax)
c0608fa6:	00 00                	add    %al,(%eax)
c0608fa8:	44                   	inc    %esp
c0608fa9:	00 0b                	add    %cl,(%ebx)
c0608fab:	00 49 00             	add    %cl,0x0(%ecx)
c0608fae:	00 00                	add    %al,(%eax)
c0608fb0:	00 00                	add    %al,(%eax)
c0608fb2:	00 00                	add    %al,(%eax)
c0608fb4:	44                   	inc    %esp
c0608fb5:	00 0a                	add    %cl,(%edx)
c0608fb7:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
c0608fbb:	00 00                	add    %al,(%eax)
c0608fbd:	00 00                	add    %al,(%eax)
c0608fbf:	00 44 00 0e          	add    %al,0xe(%eax,%eax,1)
c0608fc3:	00 50 00             	add    %dl,0x0(%eax)
c0608fc6:	00 00                	add    %al,(%eax)
c0608fc8:	96                   	xchg   %eax,%esi
c0608fc9:	25 00 00 40 00       	and    $0x400000,%eax
c0608fce:	00 00                	add    %al,(%eax)
c0608fd0:	00 00                	add    %al,(%eax)
c0608fd2:	00 00                	add    %al,(%eax)
c0608fd4:	a5                   	movsl  %ds:(%esi),%es:(%edi)
c0608fd5:	25 00 00 40 00       	and    $0x400000,%eax
c0608fda:	00 00                	add    %al,(%eax)
c0608fdc:	03 00                	add    (%eax),%eax
c0608fde:	00 00                	add    %al,(%eax)
c0608fe0:	b4 25                	mov    $0x25,%ah
c0608fe2:	00 00                	add    %al,(%eax)
c0608fe4:	40                   	inc    %eax
c0608fe5:	00 00                	add    %al,(%eax)
c0608fe7:	00 07                	add    %al,(%edi)
c0608fe9:	00 00                	add    %al,(%eax)
c0608feb:	00 bd 25 00 00 24    	add    %bh,0x24000025(%ebp)
c0608ff1:	00 00                	add    %al,(%eax)
c0608ff3:	00 50 12             	add    %dl,0x12(%eax)
c0608ff6:	60                   	pusha  
c0608ff7:	c0 cb 25             	ror    $0x25,%bl
c0608ffa:	00 00                	add    %al,(%eax)
c0608ffc:	a0 00 00 00 04       	mov    0x4000000,%al
c0609001:	00 00                	add    %al,(%eax)
c0609003:	00 00                	add    %al,(%eax)
c0609005:	00 00                	add    %al,(%eax)
c0609007:	00 44 00 11          	add    %al,0x11(%eax,%eax,1)
	...
c0609013:	00 44 00 11          	add    %al,0x11(%eax,%eax,1)
	...
c060901f:	00 44 00 12          	add    %al,0x12(%eax,%eax,1)
c0609023:	00 04 00             	add    %al,(%eax,%eax,1)
c0609026:	00 00                	add    %al,(%eax)
c0609028:	00 00                	add    %al,(%eax)
c060902a:	00 00                	add    %al,(%eax)
c060902c:	44                   	inc    %esp
c060902d:	00 13                	add    %dl,(%ebx)
c060902f:	00 06                	add    %al,(%esi)
c0609031:	00 00                	add    %al,(%eax)
c0609033:	00 00                	add    %al,(%eax)
c0609035:	00 00                	add    %al,(%eax)
c0609037:	00 44 00 13          	add    %al,0x13(%eax,%eax,1)
c060903b:	00 10                	add    %dl,(%eax)
c060903d:	00 00                	add    %al,(%eax)
c060903f:	00 00                	add    %al,(%eax)
c0609041:	00 00                	add    %al,(%eax)
c0609043:	00 44 00 13          	add    %al,0x13(%eax,%eax,1)
c0609047:	00 13                	add    %dl,(%ebx)
c0609049:	00 00                	add    %al,(%eax)
c060904b:	00 00                	add    %al,(%eax)
c060904d:	00 00                	add    %al,(%eax)
c060904f:	00 44 00 15          	add    %al,0x15(%eax,%eax,1)
c0609053:	00 19                	add    %bl,(%ecx)
c0609055:	00 00                	add    %al,(%eax)
c0609057:	00 66 22             	add    %ah,0x22(%esi)
c060905a:	00 00                	add    %al,(%eax)
c060905c:	40                   	inc    %eax
c060905d:	00 00                	add    %al,(%eax)
c060905f:	00 00                	add    %al,(%eax)
c0609061:	00 00                	add    %al,(%eax)
c0609063:	00 de                	add    %bl,%dh
c0609065:	25 00 00 40 00       	and    $0x400000,%eax
c060906a:	00 00                	add    %al,(%eax)
c060906c:	02 00                	add    (%eax),%al
c060906e:	00 00                	add    %al,(%eax)
c0609070:	00 00                	add    %al,(%eax)
c0609072:	00 00                	add    %al,(%eax)
c0609074:	c0 00 00             	rolb   $0x0,(%eax)
	...
c060907f:	00 e0                	add    %ah,%al
c0609081:	00 00                	add    %al,(%eax)
c0609083:	00 1a                	add    %bl,(%edx)
c0609085:	00 00                	add    %al,(%eax)
c0609087:	00 ea                	add    %ch,%dl
c0609089:	25 00 00 24 00       	and    $0x240000,%eax
c060908e:	00 00                	add    %al,(%eax)
c0609090:	70 12                	jo     c06090a4 <.stab+0x2d4>
c0609092:	60                   	pusha  
c0609093:	c0 f9 25             	sar    $0x25,%cl
c0609096:	00 00                	add    %al,(%eax)
c0609098:	a0 00 00 00 04       	mov    0x4000000,%al
c060909d:	00 00                	add    %al,(%eax)
c060909f:	00 05 26 00 00 a0    	add    %al,0xa0000026
c06090a5:	00 00                	add    %al,(%eax)
c06090a7:	00 08                	add    %cl,(%eax)
c06090a9:	00 00                	add    %al,(%eax)
c06090ab:	00 10                	add    %dl,(%eax)
c06090ad:	26 00 00             	add    %al,%es:(%eax)
c06090b0:	a0 00 00 00 0c       	mov    0xc000000,%al
c06090b5:	00 00                	add    %al,(%eax)
c06090b7:	00 00                	add    %al,(%eax)
c06090b9:	00 00                	add    %al,(%eax)
c06090bb:	00 44 00 19          	add    %al,0x19(%eax,%eax,1)
	...
c06090c7:	00 44 00 19          	add    %al,0x19(%eax,%eax,1)
c06090cb:	00 03                	add    %al,(%ebx)
c06090cd:	00 00                	add    %al,(%eax)
c06090cf:	00 00                	add    %al,(%eax)
c06090d1:	00 00                	add    %al,(%eax)
c06090d3:	00 44 00 1b          	add    %al,0x1b(%eax,%eax,1)
c06090d7:	00 0b                	add    %cl,(%ebx)
c06090d9:	00 00                	add    %al,(%eax)
c06090db:	00 00                	add    %al,(%eax)
c06090dd:	00 00                	add    %al,(%eax)
c06090df:	00 44 00 1c          	add    %al,0x1c(%eax,%eax,1)
c06090e3:	00 1a                	add    %bl,(%edx)
c06090e5:	00 00                	add    %al,(%eax)
c06090e7:	00 00                	add    %al,(%eax)
c06090e9:	00 00                	add    %al,(%eax)
c06090eb:	00 44 00 1d          	add    %al,0x1d(%eax,%eax,1)
c06090ef:	00 20                	add    %ah,(%eax)
c06090f1:	00 00                	add    %al,(%eax)
c06090f3:	00 00                	add    %al,(%eax)
c06090f5:	00 00                	add    %al,(%eax)
c06090f7:	00 44 00 1c          	add    %al,0x1c(%eax,%eax,1)
c06090fb:	00 25 00 00 00 00    	add    %ah,0x0
c0609101:	00 00                	add    %al,(%eax)
c0609103:	00 44 00 20          	add    %al,0x20(%eax,%eax,1)
c0609107:	00 31                	add    %dh,(%ecx)
c0609109:	00 00                	add    %al,(%eax)
c060910b:	00 00                	add    %al,(%eax)
c060910d:	00 00                	add    %al,(%eax)
c060910f:	00 44 00 1f          	add    %al,0x1f(%eax,%eax,1)
c0609113:	00 36                	add    %dh,(%esi)
c0609115:	00 00                	add    %al,(%eax)
c0609117:	00 00                	add    %al,(%eax)
c0609119:	00 00                	add    %al,(%eax)
c060911b:	00 44 00 23          	add    %al,0x23(%eax,%eax,1)
c060911f:	00 3a                	add    %bh,(%edx)
c0609121:	00 00                	add    %al,(%eax)
c0609123:	00 19                	add    %bl,(%ecx)
c0609125:	26 00 00             	add    %al,%es:(%eax)
c0609128:	40                   	inc    %eax
c0609129:	00 00                	add    %al,(%eax)
c060912b:	00 00                	add    %al,(%eax)
c060912d:	00 00                	add    %al,(%eax)
c060912f:	00 25 26 00 00 40    	add    %ah,0x40000026
c0609135:	00 00                	add    %al,(%eax)
c0609137:	00 06                	add    %al,(%esi)
c0609139:	00 00                	add    %al,(%eax)
c060913b:	00 00                	add    %al,(%eax)
c060913d:	00 00                	add    %al,(%eax)
c060913f:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c0609143:	00 ae 12 60 c0     	add    %ch,0x2ec06012(%esi)

c0609148 <.stab>:
c0609148:	2e 26 00 00          	cs add %al,%es:(%eax)
c060914c:	64 00 02             	add    %al,%fs:(%edx)
c060914f:	00 b0 12 60 c0 08    	add    %dh,0x8c06012(%eax)
c0609155:	00 00                	add    %al,(%eax)
c0609157:	00 3c 00             	add    %bh,(%eax,%eax,1)
c060915a:	00 00                	add    %al,(%eax)
c060915c:	00 00                	add    %al,(%eax)
c060915e:	00 00                	add    %al,(%eax)
c0609160:	17                   	pop    %ss
c0609161:	00 00                	add    %al,(%eax)
c0609163:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0609169:	00 00                	add    %al,(%eax)
c060916b:	00 41 00             	add    %al,0x0(%ecx)
c060916e:	00 00                	add    %al,(%eax)
c0609170:	80 00 00             	addb   $0x0,(%eax)
c0609173:	00 00                	add    %al,(%eax)
c0609175:	00 00                	add    %al,(%eax)
c0609177:	00 5b 00             	add    %bl,0x0(%ebx)
c060917a:	00 00                	add    %al,(%eax)
c060917c:	80 00 00             	addb   $0x0,(%eax)
c060917f:	00 00                	add    %al,(%eax)
c0609181:	00 00                	add    %al,(%eax)
c0609183:	00 8a 00 00 00 80    	add    %cl,-0x80000000(%edx)
c0609189:	00 00                	add    %al,(%eax)
c060918b:	00 00                	add    %al,(%eax)
c060918d:	00 00                	add    %al,(%eax)
c060918f:	00 b3 00 00 00 80    	add    %dh,-0x80000000(%ebx)
c0609195:	00 00                	add    %al,(%eax)
c0609197:	00 00                	add    %al,(%eax)
c0609199:	00 00                	add    %al,(%eax)
c060919b:	00 e1                	add    %ah,%cl
c060919d:	00 00                	add    %al,(%eax)
c060919f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06091a5:	00 00                	add    %al,(%eax)
c06091a7:	00 fe                	add    %bh,%dh
c06091a9:	00 00                	add    %al,(%eax)
c06091ab:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06091b1:	00 00                	add    %al,(%eax)
c06091b3:	00 24 01             	add    %ah,(%ecx,%eax,1)
c06091b6:	00 00                	add    %al,(%eax)
c06091b8:	80 00 00             	addb   $0x0,(%eax)
c06091bb:	00 00                	add    %al,(%eax)
c06091bd:	00 00                	add    %al,(%eax)
c06091bf:	00 6a 01             	add    %ch,0x1(%edx)
c06091c2:	00 00                	add    %al,(%eax)
c06091c4:	80 00 00             	addb   $0x0,(%eax)
c06091c7:	00 00                	add    %al,(%eax)
c06091c9:	00 00                	add    %al,(%eax)
c06091cb:	00 95 01 00 00 80    	add    %dl,-0x7fffffff(%ebp)
c06091d1:	00 00                	add    %al,(%eax)
c06091d3:	00 00                	add    %al,(%eax)
c06091d5:	00 00                	add    %al,(%eax)
c06091d7:	00 bd 01 00 00 80    	add    %bh,-0x7fffffff(%ebp)
c06091dd:	00 00                	add    %al,(%eax)
c06091df:	00 00                	add    %al,(%eax)
c06091e1:	00 00                	add    %al,(%eax)
c06091e3:	00 e9                	add    %ch,%cl
c06091e5:	01 00                	add    %eax,(%eax)
c06091e7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06091ed:	00 00                	add    %al,(%eax)
c06091ef:	00 0f                	add    %cl,(%edi)
c06091f1:	02 00                	add    (%eax),%al
c06091f3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06091f9:	00 00                	add    %al,(%eax)
c06091fb:	00 34 02             	add    %dh,(%edx,%eax,1)
c06091fe:	00 00                	add    %al,(%eax)
c0609200:	80 00 00             	addb   $0x0,(%eax)
c0609203:	00 00                	add    %al,(%eax)
c0609205:	00 00                	add    %al,(%eax)
c0609207:	00 4e 02             	add    %cl,0x2(%esi)
c060920a:	00 00                	add    %al,(%eax)
c060920c:	80 00 00             	addb   $0x0,(%eax)
c060920f:	00 00                	add    %al,(%eax)
c0609211:	00 00                	add    %al,(%eax)
c0609213:	00 69 02             	add    %ch,0x2(%ecx)
c0609216:	00 00                	add    %al,(%eax)
c0609218:	80 00 00             	addb   $0x0,(%eax)
c060921b:	00 00                	add    %al,(%eax)
c060921d:	00 00                	add    %al,(%eax)
c060921f:	00 8a 02 00 00 80    	add    %cl,-0x7ffffffe(%edx)
c0609225:	00 00                	add    %al,(%eax)
c0609227:	00 00                	add    %al,(%eax)
c0609229:	00 00                	add    %al,(%eax)
c060922b:	00 a7 02 00 00 80    	add    %ah,-0x7ffffffe(%edi)
c0609231:	00 00                	add    %al,(%eax)
c0609233:	00 00                	add    %al,(%eax)
c0609235:	00 00                	add    %al,(%eax)
c0609237:	00 c4                	add    %al,%ah
c0609239:	02 00                	add    (%eax),%al
c060923b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0609241:	00 00                	add    %al,(%eax)
c0609243:	00 e3                	add    %ah,%bl
c0609245:	02 00                	add    (%eax),%al
c0609247:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060924d:	00 00                	add    %al,(%eax)
c060924f:	00 01                	add    %al,(%ecx)
c0609251:	03 00                	add    (%eax),%eax
c0609253:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0609259:	00 00                	add    %al,(%eax)
c060925b:	00 20                	add    %ah,(%eax)
c060925d:	03 00                	add    (%eax),%eax
c060925f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0609265:	00 00                	add    %al,(%eax)
c0609267:	00 3f                	add    %bh,(%edi)
c0609269:	03 00                	add    (%eax),%eax
c060926b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0609271:	00 00                	add    %al,(%eax)
c0609273:	00 5e 03             	add    %bl,0x3(%esi)
c0609276:	00 00                	add    %al,(%eax)
c0609278:	80 00 00             	addb   $0x0,(%eax)
c060927b:	00 00                	add    %al,(%eax)
c060927d:	00 00                	add    %al,(%eax)
c060927f:	00 7f 03             	add    %bh,0x3(%edi)
c0609282:	00 00                	add    %al,(%eax)
c0609284:	80 00 00             	addb   $0x0,(%eax)
	...
c060928f:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c0609293:	00 b0 12 60 c0     	add    %dh,0x38c06012(%eax)

c0609298 <.stab>:
c0609298:	38 26                	cmp    %ah,(%esi)
c060929a:	00 00                	add    %al,(%eax)
c060929c:	64 00 02             	add    %al,%fs:(%edx)
c060929f:	00 b0 12 60 c0 08    	add    %dh,0x8c06012(%eax)
c06092a5:	00 00                	add    %al,(%eax)
c06092a7:	00 3c 00             	add    %bh,(%eax,%eax,1)
c06092aa:	00 00                	add    %al,(%eax)
c06092ac:	00 00                	add    %al,(%eax)
c06092ae:	00 00                	add    %al,(%eax)
c06092b0:	17                   	pop    %ss
c06092b1:	00 00                	add    %al,(%eax)
c06092b3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06092b9:	00 00                	add    %al,(%eax)
c06092bb:	00 41 00             	add    %al,0x0(%ecx)
c06092be:	00 00                	add    %al,(%eax)
c06092c0:	80 00 00             	addb   $0x0,(%eax)
c06092c3:	00 00                	add    %al,(%eax)
c06092c5:	00 00                	add    %al,(%eax)
c06092c7:	00 5b 00             	add    %bl,0x0(%ebx)
c06092ca:	00 00                	add    %al,(%eax)
c06092cc:	80 00 00             	addb   $0x0,(%eax)
c06092cf:	00 00                	add    %al,(%eax)
c06092d1:	00 00                	add    %al,(%eax)
c06092d3:	00 8a 00 00 00 80    	add    %cl,-0x80000000(%edx)
c06092d9:	00 00                	add    %al,(%eax)
c06092db:	00 00                	add    %al,(%eax)
c06092dd:	00 00                	add    %al,(%eax)
c06092df:	00 b3 00 00 00 80    	add    %dh,-0x80000000(%ebx)
c06092e5:	00 00                	add    %al,(%eax)
c06092e7:	00 00                	add    %al,(%eax)
c06092e9:	00 00                	add    %al,(%eax)
c06092eb:	00 e1                	add    %ah,%cl
c06092ed:	00 00                	add    %al,(%eax)
c06092ef:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06092f5:	00 00                	add    %al,(%eax)
c06092f7:	00 fe                	add    %bh,%dh
c06092f9:	00 00                	add    %al,(%eax)
c06092fb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0609301:	00 00                	add    %al,(%eax)
c0609303:	00 24 01             	add    %ah,(%ecx,%eax,1)
c0609306:	00 00                	add    %al,(%eax)
c0609308:	80 00 00             	addb   $0x0,(%eax)
c060930b:	00 00                	add    %al,(%eax)
c060930d:	00 00                	add    %al,(%eax)
c060930f:	00 6a 01             	add    %ch,0x1(%edx)
c0609312:	00 00                	add    %al,(%eax)
c0609314:	80 00 00             	addb   $0x0,(%eax)
c0609317:	00 00                	add    %al,(%eax)
c0609319:	00 00                	add    %al,(%eax)
c060931b:	00 95 01 00 00 80    	add    %dl,-0x7fffffff(%ebp)
c0609321:	00 00                	add    %al,(%eax)
c0609323:	00 00                	add    %al,(%eax)
c0609325:	00 00                	add    %al,(%eax)
c0609327:	00 bd 01 00 00 80    	add    %bh,-0x7fffffff(%ebp)
c060932d:	00 00                	add    %al,(%eax)
c060932f:	00 00                	add    %al,(%eax)
c0609331:	00 00                	add    %al,(%eax)
c0609333:	00 e9                	add    %ch,%cl
c0609335:	01 00                	add    %eax,(%eax)
c0609337:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060933d:	00 00                	add    %al,(%eax)
c060933f:	00 0f                	add    %cl,(%edi)
c0609341:	02 00                	add    (%eax),%al
c0609343:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0609349:	00 00                	add    %al,(%eax)
c060934b:	00 34 02             	add    %dh,(%edx,%eax,1)
c060934e:	00 00                	add    %al,(%eax)
c0609350:	80 00 00             	addb   $0x0,(%eax)
c0609353:	00 00                	add    %al,(%eax)
c0609355:	00 00                	add    %al,(%eax)
c0609357:	00 4e 02             	add    %cl,0x2(%esi)
c060935a:	00 00                	add    %al,(%eax)
c060935c:	80 00 00             	addb   $0x0,(%eax)
c060935f:	00 00                	add    %al,(%eax)
c0609361:	00 00                	add    %al,(%eax)
c0609363:	00 69 02             	add    %ch,0x2(%ecx)
c0609366:	00 00                	add    %al,(%eax)
c0609368:	80 00 00             	addb   $0x0,(%eax)
c060936b:	00 00                	add    %al,(%eax)
c060936d:	00 00                	add    %al,(%eax)
c060936f:	00 8a 02 00 00 80    	add    %cl,-0x7ffffffe(%edx)
c0609375:	00 00                	add    %al,(%eax)
c0609377:	00 00                	add    %al,(%eax)
c0609379:	00 00                	add    %al,(%eax)
c060937b:	00 a7 02 00 00 80    	add    %ah,-0x7ffffffe(%edi)
c0609381:	00 00                	add    %al,(%eax)
c0609383:	00 00                	add    %al,(%eax)
c0609385:	00 00                	add    %al,(%eax)
c0609387:	00 c4                	add    %al,%ah
c0609389:	02 00                	add    (%eax),%al
c060938b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c0609391:	00 00                	add    %al,(%eax)
c0609393:	00 e3                	add    %ah,%bl
c0609395:	02 00                	add    (%eax),%al
c0609397:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060939d:	00 00                	add    %al,(%eax)
c060939f:	00 01                	add    %al,(%ecx)
c06093a1:	03 00                	add    (%eax),%eax
c06093a3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06093a9:	00 00                	add    %al,(%eax)
c06093ab:	00 20                	add    %ah,(%eax)
c06093ad:	03 00                	add    (%eax),%eax
c06093af:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06093b5:	00 00                	add    %al,(%eax)
c06093b7:	00 3f                	add    %bh,(%edi)
c06093b9:	03 00                	add    (%eax),%eax
c06093bb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c06093c1:	00 00                	add    %al,(%eax)
c06093c3:	00 5e 03             	add    %bl,0x3(%esi)
c06093c6:	00 00                	add    %al,(%eax)
c06093c8:	80 00 00             	addb   $0x0,(%eax)
c06093cb:	00 00                	add    %al,(%eax)
c06093cd:	00 00                	add    %al,(%eax)
c06093cf:	00 7f 03             	add    %bh,0x3(%edi)
c06093d2:	00 00                	add    %al,(%eax)
c06093d4:	80 00 00             	addb   $0x0,(%eax)
c06093d7:	00 00                	add    %al,(%eax)
c06093d9:	00 00                	add    %al,(%eax)
c06093db:	00 9f 10 00 00 c2    	add    %bl,-0x3dfffff0(%edi)
c06093e1:	00 00                	add    %al,(%eax)
c06093e3:	00 2b                	add    %ch,(%ebx)
c06093e5:	1d 00 00 a5 03       	sbb    $0x3a50000,%eax
c06093ea:	00 00                	add    %al,(%eax)
c06093ec:	c2 00 00             	ret    $0x0
c06093ef:	00 26                	add    %ah,(%esi)
c06093f1:	59                   	pop    %ecx
c06093f2:	01 00                	add    %eax,(%eax)
c06093f4:	93                   	xchg   %eax,%ebx
c06093f5:	03 00                	add    (%eax),%eax
c06093f7:	00 c2                	add    %al,%dl
c06093f9:	00 00                	add    %al,(%eax)
c06093fb:	00 4c 18 00          	add    %cl,0x0(%eax,%ebx,1)
c06093ff:	00 40 26             	add    %al,0x26(%eax)
c0609402:	00 00                	add    %al,(%eax)
c0609404:	82 00 00             	addb   $0x0,(%eax)
c0609407:	00 50 06             	add    %dl,0x6(%eax)
c060940a:	00 00                	add    %al,(%eax)
c060940c:	54                   	push   %esp
c060940d:	26 00 00             	add    %al,%es:(%eax)
c0609410:	80 00 00             	addb   $0x0,(%eax)
	...
c060941b:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c0609421:	00 00                	add    %al,(%eax)
c0609423:	00 70 26             	add    %dh,0x26(%eax)
c0609426:	00 00                	add    %al,(%eax)
c0609428:	24 00                	and    $0x0,%al
c060942a:	00 00                	add    %al,(%eax)
c060942c:	b0 12                	mov    $0x12,%al
c060942e:	60                   	pusha  
c060942f:	c0 88 26 00 00 40 00 	rorb   $0x0,0x40000026(%eax)
c0609436:	00 00                	add    %al,(%eax)
c0609438:	07                   	pop    %es
c0609439:	00 00                	add    %al,(%eax)
c060943b:	00 9a 26 00 00 40    	add    %bl,0x40000026(%edx)
c0609441:	00 00                	add    %al,(%eax)
c0609443:	00 06                	add    %al,(%esi)
c0609445:	00 00                	add    %al,(%eax)
c0609447:	00 ac 26 00 00 40 00 	add    %ch,0x400000(%esi,%eiz,1)
c060944e:	00 00                	add    %al,(%eax)
c0609450:	01 00                	add    %eax,(%eax)
c0609452:	00 00                	add    %al,(%eax)
c0609454:	b9 26 00 00 a0       	mov    $0xa0000026,%ecx
c0609459:	00 00                	add    %al,(%eax)
c060945b:	00 20                	add    %ah,(%eax)
c060945d:	00 00                	add    %al,(%eax)
c060945f:	00 00                	add    %al,(%eax)
c0609461:	00 00                	add    %al,(%eax)
c0609463:	00 44 00 7f          	add    %al,0x7f(%eax,%eax,1)
	...
c060946f:	00 44 00 84          	add    %al,-0x7c(%eax,%eax,1)
c0609473:	00 0d 00 00 00 00    	add    %cl,0x0
c0609479:	00 00                	add    %al,(%eax)
c060947b:	00 44 00 84          	add    %al,-0x7c(%eax,%eax,1)
c060947f:	00 17                	add    %dl,(%edi)
c0609481:	00 00                	add    %al,(%eax)
c0609483:	00 00                	add    %al,(%eax)
c0609485:	00 00                	add    %al,(%eax)
c0609487:	00 44 00 84          	add    %al,-0x7c(%eax,%eax,1)
c060948b:	00 1e                	add    %bl,(%esi)
c060948d:	00 00                	add    %al,(%eax)
c060948f:	00 00                	add    %al,(%eax)
c0609491:	00 00                	add    %al,(%eax)
c0609493:	00 44 00 8c          	add    %al,-0x74(%eax,%eax,1)
c0609497:	00 22                	add    %ah,(%edx)
c0609499:	00 00                	add    %al,(%eax)
c060949b:	00 00                	add    %al,(%eax)
c060949d:	00 00                	add    %al,(%eax)
c060949f:	00 44 00 88          	add    %al,-0x78(%eax,%eax,1)
c06094a3:	00 25 00 00 00 00    	add    %ah,0x0
c06094a9:	00 00                	add    %al,(%eax)
c06094ab:	00 44 00 8c          	add    %al,-0x74(%eax,%eax,1)
c06094af:	00 27                	add    %ah,(%edi)
c06094b1:	00 00                	add    %al,(%eax)
c06094b3:	00 00                	add    %al,(%eax)
c06094b5:	00 00                	add    %al,(%eax)
c06094b7:	00 44 00 86          	add    %al,-0x7a(%eax,%eax,1)
c06094bb:	00 30                	add    %dh,(%eax)
c06094bd:	00 00                	add    %al,(%eax)
c06094bf:	00 00                	add    %al,(%eax)
c06094c1:	00 00                	add    %al,(%eax)
c06094c3:	00 44 00 86          	add    %al,-0x7a(%eax,%eax,1)
c06094c7:	00 33                	add    %dh,(%ebx)
c06094c9:	00 00                	add    %al,(%eax)
c06094cb:	00 00                	add    %al,(%eax)
c06094cd:	00 00                	add    %al,(%eax)
c06094cf:	00 44 00 8c          	add    %al,-0x74(%eax,%eax,1)
c06094d3:	00 45 00             	add    %al,0x0(%ebp)
c06094d6:	00 00                	add    %al,(%eax)
c06094d8:	c7                   	(bad)  
c06094d9:	26 00 00             	add    %al,%es:(%eax)
c06094dc:	24 00                	and    $0x0,%al
c06094de:	00 00                	add    %al,(%eax)
c06094e0:	00 13                	add    %dl,(%ebx)
c06094e2:	60                   	pusha  
c06094e3:	c0 00 00             	rolb   $0x0,(%eax)
c06094e6:	00 00                	add    %al,(%eax)
c06094e8:	44                   	inc    %esp
c06094e9:	00 09                	add    %cl,(%ecx)
	...
c06094f3:	00 44 00 0f          	add    %al,0xf(%eax,%eax,1)
	...
c06094ff:	00 44 00 09          	add    %al,0x9(%eax,%eax,1)
c0609503:	00 05 00 00 00 00    	add    %al,0x0
c0609509:	00 00                	add    %al,(%eax)
c060950b:	00 44 00 0f          	add    %al,0xf(%eax,%eax,1)
c060950f:	00 06                	add    %al,(%esi)
c0609511:	00 00                	add    %al,(%eax)
c0609513:	00 00                	add    %al,(%eax)
c0609515:	00 00                	add    %al,(%eax)
c0609517:	00 44 00 09          	add    %al,0x9(%eax,%eax,1)
c060951b:	00 0b                	add    %cl,(%ebx)
c060951d:	00 00                	add    %al,(%eax)
c060951f:	00 00                	add    %al,(%eax)
c0609521:	00 00                	add    %al,(%eax)
c0609523:	00 44 00 0f          	add    %al,0xf(%eax,%eax,1)
c0609527:	00 0c 00             	add    %cl,(%eax,%eax,1)
c060952a:	00 00                	add    %al,(%eax)
c060952c:	00 00                	add    %al,(%eax)
c060952e:	00 00                	add    %al,(%eax)
c0609530:	44                   	inc    %esp
c0609531:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0609534:	23 00                	and    (%eax),%eax
c0609536:	00 00                	add    %al,(%eax)
c0609538:	00 00                	add    %al,(%eax)
c060953a:	00 00                	add    %al,(%eax)
c060953c:	44                   	inc    %esp
c060953d:	00 1d 00 26 00 00    	add    %bl,0x2600
c0609543:	00 d9                	add    %bl,%cl
c0609545:	26 00 00             	add    %al,%es:(%eax)
c0609548:	24 00                	and    $0x0,%al
c060954a:	00 00                	add    %al,(%eax)
c060954c:	30 13                	xor    %dl,(%ebx)
c060954e:	60                   	pusha  
c060954f:	c0 ec 26             	shr    $0x26,%ah
c0609552:	00 00                	add    %al,(%eax)
c0609554:	a0 00 00 00 04       	mov    0x4000000,%al
c0609559:	00 00                	add    %al,(%eax)
c060955b:	00 00                	add    %al,(%eax)
c060955d:	00 00                	add    %al,(%eax)
c060955f:	00 44 00 21          	add    %al,0x21(%eax,%eax,1)
	...
c060956b:	00 44 00 26          	add    %al,0x26(%eax,%eax,1)
	...
c0609577:	00 44 00 21          	add    %al,0x21(%eax,%eax,1)
c060957b:	00 05 00 00 00 00    	add    %al,0x0
c0609581:	00 00                	add    %al,(%eax)
c0609583:	00 44 00 26          	add    %al,0x26(%eax,%eax,1)
c0609587:	00 06                	add    %al,(%esi)
c0609589:	00 00                	add    %al,(%eax)
c060958b:	00 00                	add    %al,(%eax)
c060958d:	00 00                	add    %al,(%eax)
c060958f:	00 44 00 21          	add    %al,0x21(%eax,%eax,1)
c0609593:	00 0b                	add    %cl,(%ebx)
c0609595:	00 00                	add    %al,(%eax)
c0609597:	00 00                	add    %al,(%eax)
c0609599:	00 00                	add    %al,(%eax)
c060959b:	00 44 00 26          	add    %al,0x26(%eax,%eax,1)
c060959f:	00 0c 00             	add    %cl,(%eax,%eax,1)
c06095a2:	00 00                	add    %al,(%eax)
c06095a4:	00 00                	add    %al,(%eax)
c06095a6:	00 00                	add    %al,(%eax)
c06095a8:	44                   	inc    %esp
c06095a9:	00 32                	add    %dh,(%edx)
c06095ab:	00 27                	add    %ah,(%edi)
c06095ad:	00 00                	add    %al,(%eax)
c06095af:	00 f7                	add    %dh,%bh
c06095b1:	26 00 00             	add    %al,%es:(%eax)
c06095b4:	40                   	inc    %eax
c06095b5:	00 00                	add    %al,(%eax)
c06095b7:	00 01                	add    %al,(%ecx)
c06095b9:	00 00                	add    %al,(%eax)
c06095bb:	00 02                	add    %al,(%edx)
c06095bd:	27                   	daa    
c06095be:	00 00                	add    %al,(%eax)
c06095c0:	24 00                	and    $0x0,%al
c06095c2:	00 00                	add    %al,(%eax)
c06095c4:	60                   	pusha  
c06095c5:	13 60 c0             	adc    -0x40(%eax),%esp
c06095c8:	cb                   	lret   
c06095c9:	25 00 00 a0 00       	and    $0xa00000,%eax
c06095ce:	00 00                	add    %al,(%eax)
c06095d0:	04 00                	add    $0x0,%al
c06095d2:	00 00                	add    %al,(%eax)
c06095d4:	16                   	push   %ss
c06095d5:	27                   	daa    
c06095d6:	00 00                	add    %al,(%eax)
c06095d8:	a0 00 00 00 08       	mov    0x8000000,%al
c06095dd:	00 00                	add    %al,(%eax)
c06095df:	00 1f                	add    %bl,(%edi)
c06095e1:	27                   	daa    
c06095e2:	00 00                	add    %al,(%eax)
c06095e4:	a0 00 00 00 0c       	mov    0xc000000,%al
c06095e9:	00 00                	add    %al,(%eax)
c06095eb:	00 2a                	add    %ch,(%edx)
c06095ed:	27                   	daa    
c06095ee:	00 00                	add    %al,(%eax)
c06095f0:	a0 00 00 00 10       	mov    0x10000000,%al
c06095f5:	00 00                	add    %al,(%eax)
c06095f7:	00 00                	add    %al,(%eax)
c06095f9:	00 00                	add    %al,(%eax)
c06095fb:	00 44 00 73          	add    %al,0x73(%eax,%eax,1)
	...
c0609607:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c060960b:	00 01                	add    %al,(%ecx)
c060960d:	00 00                	add    %al,(%eax)
c060960f:	00 00                	add    %al,(%eax)
c0609611:	00 00                	add    %al,(%eax)
c0609613:	00 44 00 73          	add    %al,0x73(%eax,%eax,1)
c0609617:	00 03                	add    %al,(%ebx)
c0609619:	00 00                	add    %al,(%eax)
c060961b:	00 00                	add    %al,(%eax)
c060961d:	00 00                	add    %al,(%eax)
c060961f:	00 44 00 73          	add    %al,0x73(%eax,%eax,1)
c0609623:	00 08                	add    %cl,(%eax)
c0609625:	00 00                	add    %al,(%eax)
c0609627:	00 00                	add    %al,(%eax)
c0609629:	00 00                	add    %al,(%eax)
c060962b:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c060962f:	00 17                	add    %dl,(%edi)
c0609631:	00 00                	add    %al,(%eax)
c0609633:	00 00                	add    %al,(%eax)
c0609635:	00 00                	add    %al,(%eax)
c0609637:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c060963b:	00 20                	add    %ah,(%eax)
c060963d:	00 00                	add    %al,(%eax)
c060963f:	00 00                	add    %al,(%eax)
c0609641:	00 00                	add    %al,(%eax)
c0609643:	00 44 00 77          	add    %al,0x77(%eax,%eax,1)
c0609647:	00 24 00             	add    %ah,(%eax,%eax,1)
c060964a:	00 00                	add    %al,(%eax)
c060964c:	00 00                	add    %al,(%eax)
c060964e:	00 00                	add    %al,(%eax)
c0609650:	44                   	inc    %esp
c0609651:	00 76 00             	add    %dh,0x0(%esi)
c0609654:	29 00                	sub    %eax,(%eax)
c0609656:	00 00                	add    %al,(%eax)
c0609658:	00 00                	add    %al,(%eax)
c060965a:	00 00                	add    %al,(%eax)
c060965c:	44                   	inc    %esp
c060965d:	00 75 00             	add    %dh,0x0(%ebp)
c0609660:	2c 00                	sub    $0x0,%al
c0609662:	00 00                	add    %al,(%eax)
c0609664:	00 00                	add    %al,(%eax)
c0609666:	00 00                	add    %al,(%eax)
c0609668:	44                   	inc    %esp
c0609669:	00 75 00             	add    %dh,0x0(%ebp)
c060966c:	2f                   	das    
c060966d:	00 00                	add    %al,(%eax)
c060966f:	00 00                	add    %al,(%eax)
c0609671:	00 00                	add    %al,(%eax)
c0609673:	00 44 00 7a          	add    %al,0x7a(%eax,%eax,1)
c0609677:	00 33                	add    %dh,(%ebx)
c0609679:	00 00                	add    %al,(%eax)
c060967b:	00 00                	add    %al,(%eax)
c060967d:	00 00                	add    %al,(%eax)
c060967f:	00 44 00 7b          	add    %al,0x7b(%eax,%eax,1)
c0609683:	00 3a                	add    %bh,(%edx)
c0609685:	00 00                	add    %al,(%eax)
c0609687:	00 00                	add    %al,(%eax)
c0609689:	00 00                	add    %al,(%eax)
c060968b:	00 44 00 7a          	add    %al,0x7a(%eax,%eax,1)
c060968f:	00 3b                	add    %bh,(%ebx)
c0609691:	00 00                	add    %al,(%eax)
c0609693:	00 00                	add    %al,(%eax)
c0609695:	00 00                	add    %al,(%eax)
c0609697:	00 44 00 7b          	add    %al,0x7b(%eax,%eax,1)
c060969b:	00 40 00             	add    %al,0x0(%eax)
c060969e:	00 00                	add    %al,(%eax)
c06096a0:	de 25 00 00 40 00    	fisubs 0x400000
c06096a6:	00 00                	add    %al,(%eax)
c06096a8:	03 00                	add    (%eax),%eax
c06096aa:	00 00                	add    %al,(%eax)
c06096ac:	35 27 00 00 40       	xor    $0x40000027,%eax
c06096b1:	00 00                	add    %al,(%eax)
c06096b3:	00 06                	add    %al,(%esi)
c06096b5:	00 00                	add    %al,(%eax)
c06096b7:	00 3e                	add    %bh,(%esi)
c06096b9:	27                   	daa    
c06096ba:	00 00                	add    %al,(%eax)
c06096bc:	24 00                	and    $0x0,%al
c06096be:	00 00                	add    %al,(%eax)
c06096c0:	b0 13                	mov    $0x13,%al
c06096c2:	60                   	pusha  
c06096c3:	c0 4f 27 00          	rorb   $0x0,0x27(%edi)
c06096c7:	00 a0 00 00 00 04    	add    %ah,0x4000000(%eax)
c06096cd:	00 00                	add    %al,(%eax)
c06096cf:	00 2a                	add    %ch,(%edx)
c06096d1:	27                   	daa    
c06096d2:	00 00                	add    %al,(%eax)
c06096d4:	a0 00 00 00 08       	mov    0x8000000,%al
c06096d9:	00 00                	add    %al,(%eax)
c06096db:	00 59 27             	add    %bl,0x27(%ecx)
c06096de:	00 00                	add    %al,(%eax)
c06096e0:	a0 00 00 00 0c       	mov    0xc000000,%al
c06096e5:	00 00                	add    %al,(%eax)
c06096e7:	00 6b 27             	add    %ch,0x27(%ebx)
c06096ea:	00 00                	add    %al,(%eax)
c06096ec:	a0 00 00 00 10       	mov    0x10000000,%al
c06096f1:	00 00                	add    %al,(%eax)
c06096f3:	00 b9 26 00 00 a0    	add    %bh,-0x5fffffda(%ecx)
c06096f9:	00 00                	add    %al,(%eax)
c06096fb:	00 14 00             	add    %dl,(%eax,%eax,1)
c06096fe:	00 00                	add    %al,(%eax)
c0609700:	00 00                	add    %al,(%eax)
c0609702:	00 00                	add    %al,(%eax)
c0609704:	44                   	inc    %esp
c0609705:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060970b:	00 00                	add    %al,(%eax)
c060970d:	00 00                	add    %al,(%eax)
c060970f:	00 44 00 82          	add    %al,-0x7e(%eax,%eax,1)
c0609713:	00 01                	add    %al,(%ecx)
c0609715:	00 00                	add    %al,(%eax)
c0609717:	00 00                	add    %al,(%eax)
c0609719:	00 00                	add    %al,(%eax)
c060971b:	00 44 00 80          	add    %al,-0x80(%eax,%eax,1)
c060971f:	00 06                	add    %al,(%esi)
c0609721:	00 00                	add    %al,(%eax)
c0609723:	00 00                	add    %al,(%eax)
c0609725:	00 00                	add    %al,(%eax)
c0609727:	00 44 00 82          	add    %al,-0x7e(%eax,%eax,1)
c060972b:	00 16                	add    %dl,(%esi)
c060972d:	00 00                	add    %al,(%eax)
c060972f:	00 00                	add    %al,(%eax)
c0609731:	00 00                	add    %al,(%eax)
c0609733:	00 44 00 8c          	add    %al,-0x74(%eax,%eax,1)
c0609737:	00 18                	add    %bl,(%eax)
c0609739:	00 00                	add    %al,(%eax)
c060973b:	00 78 27             	add    %bh,0x27(%eax)
c060973e:	00 00                	add    %al,(%eax)
c0609740:	40                   	inc    %eax
c0609741:	00 00                	add    %al,(%eax)
c0609743:	00 00                	add    %al,(%eax)
c0609745:	00 00                	add    %al,(%eax)
c0609747:	00 83 27 00 00 40    	add    %al,0x40000027(%ebx)
c060974d:	00 00                	add    %al,(%eax)
c060974f:	00 02                	add    %al,(%edx)
c0609751:	00 00                	add    %al,(%eax)
c0609753:	00 95 27 00 00 40    	add    %dl,0x40000027(%ebp)
c0609759:	00 00                	add    %al,(%eax)
c060975b:	00 01                	add    %al,(%ecx)
c060975d:	00 00                	add    %al,(%eax)
c060975f:	00 a2 27 00 00 40    	add    %ah,0x40000027(%edx)
c0609765:	00 00                	add    %al,(%eax)
c0609767:	00 03                	add    %al,(%ebx)
c0609769:	00 00                	add    %al,(%eax)
c060976b:	00 b0 27 00 00 24    	add    %dh,0x24000027(%eax)
c0609771:	00 00                	add    %al,(%eax)
c0609773:	00 e0                	add    %ah,%al
c0609775:	13 60 c0             	adc    -0x40(%eax),%esp
c0609778:	bc 27 00 00 a0       	mov    $0xa0000027,%esp
c060977d:	00 00                	add    %al,(%eax)
c060977f:	00 04 00             	add    %al,(%eax,%eax,1)
c0609782:	00 00                	add    %al,(%eax)
c0609784:	00 00                	add    %al,(%eax)
c0609786:	00 00                	add    %al,(%eax)
c0609788:	44                   	inc    %esp
c0609789:	00 90 00 00 00 00    	add    %dl,0x0(%eax)
c060978f:	00 00                	add    %al,(%eax)
c0609791:	00 00                	add    %al,(%eax)
c0609793:	00 44 00 90          	add    %al,-0x70(%eax,%eax,1)
	...
c060979f:	00 44 00 91          	add    %al,-0x6f(%eax,%eax,1)
c06097a3:	00 04 00             	add    %al,(%eax,%eax,1)
c06097a6:	00 00                	add    %al,(%eax)
c06097a8:	00 00                	add    %al,(%eax)
c06097aa:	00 00                	add    %al,(%eax)
c06097ac:	44                   	inc    %esp
c06097ad:	00 91 00 06 00 00    	add    %dl,0x600(%ecx)
c06097b3:	00 00                	add    %al,(%eax)
c06097b5:	00 00                	add    %al,(%eax)
c06097b7:	00 44 00 93          	add    %al,-0x6d(%eax,%eax,1)
c06097bb:	00 0b                	add    %cl,(%ebx)
c06097bd:	00 00                	add    %al,(%eax)
c06097bf:	00 00                	add    %al,(%eax)
c06097c1:	00 00                	add    %al,(%eax)
c06097c3:	00 44 00 96          	add    %al,-0x6a(%eax,%eax,1)
c06097c7:	00 17                	add    %dl,(%edi)
c06097c9:	00 00                	add    %al,(%eax)
c06097cb:	00 c7                	add    %al,%bh
c06097cd:	27                   	daa    
c06097ce:	00 00                	add    %al,(%eax)
c06097d0:	40                   	inc    %eax
c06097d1:	00 00                	add    %al,(%eax)
c06097d3:	00 02                	add    %al,(%edx)
c06097d5:	00 00                	add    %al,(%eax)
c06097d7:	00 d2                	add    %dl,%dl
c06097d9:	27                   	daa    
c06097da:	00 00                	add    %al,(%eax)
c06097dc:	24 00                	and    $0x0,%al
c06097de:	00 00                	add    %al,(%eax)
c06097e0:	00 14 60             	add    %dl,(%eax,%eiz,2)
c06097e3:	c0 df 27             	rcr    $0x27,%bh
c06097e6:	00 00                	add    %al,(%eax)
c06097e8:	a0 00 00 00 24       	mov    0x24000000,%al
c06097ed:	00 00                	add    %al,(%eax)
c06097ef:	00 ea                	add    %ch,%dl
c06097f1:	27                   	daa    
c06097f2:	00 00                	add    %al,(%eax)
c06097f4:	a0 00 00 00 28       	mov    0x28000000,%al
c06097f9:	00 00                	add    %al,(%eax)
c06097fb:	00 f5                	add    %dh,%ch
c06097fd:	27                   	daa    
c06097fe:	00 00                	add    %al,(%eax)
c0609800:	a0 00 00 00 2c       	mov    0x2c000000,%al
c0609805:	00 00                	add    %al,(%eax)
c0609807:	00 00                	add    %al,(%eax)
c0609809:	00 00                	add    %al,(%eax)
c060980b:	00 44 00 9a          	add    %al,-0x66(%eax,%eax,1)
	...
c0609817:	00 44 00 9c          	add    %al,-0x64(%eax,%eax,1)
c060981b:	00 04 00             	add    %al,(%eax,%eax,1)
c060981e:	00 00                	add    %al,(%eax)
c0609820:	00 00                	add    %al,(%eax)
c0609822:	00 00                	add    %al,(%eax)
c0609824:	44                   	inc    %esp
c0609825:	00 9a 00 06 00 00    	add    %bl,0x600(%edx)
c060982b:	00 00                	add    %al,(%eax)
c060982d:	00 00                	add    %al,(%eax)
c060982f:	00 44 00 9a          	add    %al,-0x66(%eax,%eax,1)
c0609833:	00 09                	add    %cl,(%ecx)
c0609835:	00 00                	add    %al,(%eax)
c0609837:	00 00                	add    %al,(%eax)
c0609839:	00 00                	add    %al,(%eax)
c060983b:	00 44 00 9f          	add    %al,-0x61(%eax,%eax,1)
c060983f:	00 13                	add    %dl,(%ebx)
c0609841:	00 00                	add    %al,(%eax)
c0609843:	00 00                	add    %al,(%eax)
c0609845:	00 00                	add    %al,(%eax)
c0609847:	00 44 00 9f          	add    %al,-0x61(%eax,%eax,1)
c060984b:	00 16                	add    %dl,(%esi)
c060984d:	00 00                	add    %al,(%eax)
c060984f:	00 00                	add    %al,(%eax)
c0609851:	00 00                	add    %al,(%eax)
c0609853:	00 44 00 91          	add    %al,-0x6f(%eax,%eax,1)
c0609857:	00 19                	add    %bl,(%ecx)
c0609859:	00 00                	add    %al,(%eax)
c060985b:	00 00                	add    %al,(%eax)
c060985d:	00 00                	add    %al,(%eax)
c060985f:	00 44 00 91          	add    %al,-0x6f(%eax,%eax,1)
c0609863:	00 1d 00 00 00 00    	add    %bl,0x0
c0609869:	00 00                	add    %al,(%eax)
c060986b:	00 44 00 93          	add    %al,-0x6d(%eax,%eax,1)
c060986f:	00 22                	add    %ah,(%edx)
c0609871:	00 00                	add    %al,(%eax)
c0609873:	00 00                	add    %al,(%eax)
c0609875:	00 00                	add    %al,(%eax)
c0609877:	00 44 00 9f          	add    %al,-0x61(%eax,%eax,1)
c060987b:	00 2e                	add    %ch,(%esi)
c060987d:	00 00                	add    %al,(%eax)
c060987f:	00 00                	add    %al,(%eax)
c0609881:	00 00                	add    %al,(%eax)
c0609883:	00 44 00 a1          	add    %al,-0x5f(%eax,%eax,1)
c0609887:	00 32                	add    %dh,(%edx)
c0609889:	00 00                	add    %al,(%eax)
c060988b:	00 00                	add    %al,(%eax)
c060988d:	00 00                	add    %al,(%eax)
c060988f:	00 44 00 a4          	add    %al,-0x5c(%eax,%eax,1)
c0609893:	00 4a 00             	add    %cl,0x0(%edx)
c0609896:	00 00                	add    %al,(%eax)
c0609898:	00 00                	add    %al,(%eax)
c060989a:	00 00                	add    %al,(%eax)
c060989c:	44                   	inc    %esp
c060989d:	00 a3 00 4f 00 00    	add    %ah,0x4f00(%ebx)
c06098a3:	00 00                	add    %al,(%eax)
c06098a5:	00 00                	add    %al,(%eax)
c06098a7:	00 44 00 a7          	add    %al,-0x59(%eax,%eax,1)
c06098ab:	00 53 00             	add    %dl,0x0(%ebx)
c06098ae:	00 00                	add    %al,(%eax)
c06098b0:	05 28 00 00 80       	add    $0x80000028,%eax
c06098b5:	00 00                	add    %al,(%eax)
c06098b7:	00 0c 00             	add    %cl,(%eax,%eax,1)
c06098ba:	00 00                	add    %al,(%eax)
c06098bc:	22 28                	and    (%eax),%ch
c06098be:	00 00                	add    %al,(%eax)
c06098c0:	40                   	inc    %eax
c06098c1:	00 00                	add    %al,(%eax)
c06098c3:	00 00                	add    %al,(%eax)
c06098c5:	00 00                	add    %al,(%eax)
c06098c7:	00 2d 28 00 00 40    	add    %ch,0x40000028
c06098cd:	00 00                	add    %al,(%eax)
c06098cf:	00 06                	add    %al,(%esi)
c06098d1:	00 00                	add    %al,(%eax)
c06098d3:	00 00                	add    %al,(%eax)
c06098d5:	00 00                	add    %al,(%eax)
c06098d7:	00 c0                	add    %al,%al
	...
c06098e1:	00 00                	add    %al,(%eax)
c06098e3:	00 e0                	add    %ah,%al
c06098e5:	00 00                	add    %al,(%eax)
c06098e7:	00 5d 00             	add    %bl,0x0(%ebp)
c06098ea:	00 00                	add    %al,(%eax)
c06098ec:	3d 28 00 00 24       	cmp    $0x24000028,%eax
c06098f1:	00 00                	add    %al,(%eax)
c06098f3:	00 60 14             	add    %ah,0x14(%eax)
c06098f6:	60                   	pusha  
c06098f7:	c0 4f 28 00          	rorb   $0x0,0x28(%edi)
c06098fb:	00 a0 00 00 00 40    	add    %ah,0x40000000(%eax)
c0609901:	00 00                	add    %al,(%eax)
c0609903:	00 00                	add    %al,(%eax)
c0609905:	00 00                	add    %al,(%eax)
c0609907:	00 44 00 36          	add    %al,0x36(%eax,%eax,1)
	...
c0609913:	00 44 00 0f          	add    %al,0xf(%eax,%eax,1)
c0609917:	00 01                	add    %al,(%ecx)
c0609919:	00 00                	add    %al,(%eax)
c060991b:	00 00                	add    %al,(%eax)
c060991d:	00 00                	add    %al,(%eax)
c060991f:	00 44 00 36          	add    %al,0x36(%eax,%eax,1)
c0609923:	00 06                	add    %al,(%esi)
c0609925:	00 00                	add    %al,(%eax)
c0609927:	00 00                	add    %al,(%eax)
c0609929:	00 00                	add    %al,(%eax)
c060992b:	00 44 00 0f          	add    %al,0xf(%eax,%eax,1)
c060992f:	00 07                	add    %al,(%edi)
c0609931:	00 00                	add    %al,(%eax)
c0609933:	00 00                	add    %al,(%eax)
c0609935:	00 00                	add    %al,(%eax)
c0609937:	00 44 00 36          	add    %al,0x36(%eax,%eax,1)
c060993b:	00 0c 00             	add    %cl,(%eax,%eax,1)
c060993e:	00 00                	add    %al,(%eax)
c0609940:	00 00                	add    %al,(%eax)
c0609942:	00 00                	add    %al,(%eax)
c0609944:	44                   	inc    %esp
c0609945:	00 0f                	add    %cl,(%edi)
c0609947:	00 0d 00 00 00 00    	add    %cl,0x0
c060994d:	00 00                	add    %al,(%eax)
c060994f:	00 44 00 36          	add    %al,0x36(%eax,%eax,1)
c0609953:	00 14 00             	add    %dl,(%eax,%eax,1)
c0609956:	00 00                	add    %al,(%eax)
c0609958:	00 00                	add    %al,(%eax)
c060995a:	00 00                	add    %al,(%eax)
c060995c:	44                   	inc    %esp
c060995d:	00 0f                	add    %cl,(%edi)
c060995f:	00 18                	add    %bl,(%eax)
c0609961:	00 00                	add    %al,(%eax)
c0609963:	00 00                	add    %al,(%eax)
c0609965:	00 00                	add    %al,(%eax)
c0609967:	00 44 00 39          	add    %al,0x39(%eax,%eax,1)
c060996b:	00 28                	add    %ch,(%eax)
c060996d:	00 00                	add    %al,(%eax)
c060996f:	00 00                	add    %al,(%eax)
c0609971:	00 00                	add    %al,(%eax)
c0609973:	00 44 00 38          	add    %al,0x38(%eax,%eax,1)
c0609977:	00 31                	add    %dh,(%ecx)
c0609979:	00 00                	add    %al,(%eax)
c060997b:	00 00                	add    %al,(%eax)
c060997d:	00 00                	add    %al,(%eax)
c060997f:	00 44 00 3a          	add    %al,0x3a(%eax,%eax,1)
c0609983:	00 34 00             	add    %dh,(%eax,%eax,1)
c0609986:	00 00                	add    %al,(%eax)
c0609988:	00 00                	add    %al,(%eax)
c060998a:	00 00                	add    %al,(%eax)
c060998c:	44                   	inc    %esp
c060998d:	00 47 00             	add    %al,0x0(%edi)
c0609990:	36 00 00             	add    %al,%ss:(%eax)
c0609993:	00 00                	add    %al,(%eax)
c0609995:	00 00                	add    %al,(%eax)
c0609997:	00 44 00 39          	add    %al,0x39(%eax,%eax,1)
c060999b:	00 3a                	add    %bh,(%edx)
c060999d:	00 00                	add    %al,(%eax)
c060999f:	00 00                	add    %al,(%eax)
c06099a1:	00 00                	add    %al,(%eax)
c06099a3:	00 44 00 3c          	add    %al,0x3c(%eax,%eax,1)
c06099a7:	00 3e                	add    %bh,(%esi)
c06099a9:	00 00                	add    %al,(%eax)
c06099ab:	00 00                	add    %al,(%eax)
c06099ad:	00 00                	add    %al,(%eax)
c06099af:	00 44 00 3d          	add    %al,0x3d(%eax,%eax,1)
c06099b3:	00 50 00             	add    %dl,0x0(%eax)
c06099b6:	00 00                	add    %al,(%eax)
c06099b8:	00 00                	add    %al,(%eax)
c06099ba:	00 00                	add    %al,(%eax)
c06099bc:	44                   	inc    %esp
c06099bd:	00 3d 00 54 00 00    	add    %bh,0x5400
c06099c3:	00 00                	add    %al,(%eax)
c06099c5:	00 00                	add    %al,(%eax)
c06099c7:	00 44 00 3e          	add    %al,0x3e(%eax,%eax,1)
c06099cb:	00 5b 00             	add    %bl,0x0(%ebx)
c06099ce:	00 00                	add    %al,(%eax)
c06099d0:	00 00                	add    %al,(%eax)
c06099d2:	00 00                	add    %al,(%eax)
c06099d4:	44                   	inc    %esp
c06099d5:	00 61 00             	add    %ah,0x0(%ecx)
c06099d8:	5f                   	pop    %edi
c06099d9:	00 00                	add    %al,(%eax)
c06099db:	00 00                	add    %al,(%eax)
c06099dd:	00 00                	add    %al,(%eax)
c06099df:	00 44 00 62          	add    %al,0x62(%eax,%eax,1)
c06099e3:	00 67 00             	add    %ah,0x0(%edi)
c06099e6:	00 00                	add    %al,(%eax)
c06099e8:	00 00                	add    %al,(%eax)
c06099ea:	00 00                	add    %al,(%eax)
c06099ec:	44                   	inc    %esp
c06099ed:	00 65 00             	add    %ah,0x0(%ebp)
c06099f0:	6b 00 00             	imul   $0x0,(%eax),%eax
c06099f3:	00 00                	add    %al,(%eax)
c06099f5:	00 00                	add    %al,(%eax)
c06099f7:	00 44 00 62          	add    %al,0x62(%eax,%eax,1)
c06099fb:	00 6d 00             	add    %ch,0x0(%ebp)
c06099fe:	00 00                	add    %al,(%eax)
c0609a00:	00 00                	add    %al,(%eax)
c0609a02:	00 00                	add    %al,(%eax)
c0609a04:	44                   	inc    %esp
c0609a05:	00 64 00 70          	add    %ah,0x70(%eax,%eax,1)
c0609a09:	00 00                	add    %al,(%eax)
c0609a0b:	00 00                	add    %al,(%eax)
c0609a0d:	00 00                	add    %al,(%eax)
c0609a0f:	00 44 00 62          	add    %al,0x62(%eax,%eax,1)
c0609a13:	00 73 00             	add    %dh,0x0(%ebx)
c0609a16:	00 00                	add    %al,(%eax)
c0609a18:	00 00                	add    %al,(%eax)
c0609a1a:	00 00                	add    %al,(%eax)
c0609a1c:	44                   	inc    %esp
c0609a1d:	00 63 00             	add    %ah,0x0(%ebx)
c0609a20:	75 00                	jne    c0609a22 <.stab+0x78a>
c0609a22:	00 00                	add    %al,(%eax)
c0609a24:	00 00                	add    %al,(%eax)
c0609a26:	00 00                	add    %al,(%eax)
c0609a28:	44                   	inc    %esp
c0609a29:	00 3d 00 79 00 00    	add    %bh,0x7900
c0609a2f:	00 00                	add    %al,(%eax)
c0609a31:	00 00                	add    %al,(%eax)
c0609a33:	00 44 00 3d          	add    %al,0x3d(%eax,%eax,1)
c0609a37:	00 7d 00             	add    %bh,0x0(%ebp)
c0609a3a:	00 00                	add    %al,(%eax)
c0609a3c:	00 00                	add    %al,(%eax)
c0609a3e:	00 00                	add    %al,(%eax)
c0609a40:	44                   	inc    %esp
c0609a41:	00 26                	add    %ah,(%esi)
c0609a43:	00 81 00 00 00 00    	add    %al,0x0(%ecx)
c0609a49:	00 00                	add    %al,(%eax)
c0609a4b:	00 44 00 6f          	add    %al,0x6f(%eax,%eax,1)
c0609a4f:	00 a4 00 00 00 00 00 	add    %ah,0x0(%eax,%eax,1)
c0609a56:	00 00                	add    %al,(%eax)
c0609a58:	44                   	inc    %esp
c0609a59:	00 3f                	add    %bh,(%edi)
c0609a5b:	00 b0 00 00 00 00    	add    %dh,0x0(%eax)
c0609a61:	00 00                	add    %al,(%eax)
c0609a63:	00 44 00 5f          	add    %al,0x5f(%eax,%eax,1)
c0609a67:	00 d7                	add    %dl,%bh
c0609a69:	00 00                	add    %al,(%eax)
c0609a6b:	00 00                	add    %al,(%eax)
c0609a6d:	00 00                	add    %al,(%eax)
c0609a6f:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c0609a73:	00 ec                	add    %ch,%ah
c0609a75:	00 00                	add    %al,(%eax)
c0609a77:	00 00                	add    %al,(%eax)
c0609a79:	00 00                	add    %al,(%eax)
c0609a7b:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c0609a7f:	00 f0                	add    %dh,%al
c0609a81:	00 00                	add    %al,(%eax)
c0609a83:	00 00                	add    %al,(%eax)
c0609a85:	00 00                	add    %al,(%eax)
c0609a87:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c0609a8b:	00 f4                	add    %dh,%ah
c0609a8d:	00 00                	add    %al,(%eax)
c0609a8f:	00 00                	add    %al,(%eax)
c0609a91:	00 00                	add    %al,(%eax)
c0609a93:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c0609a97:	00 f7                	add    %dh,%bh
c0609a99:	00 00                	add    %al,(%eax)
c0609a9b:	00 00                	add    %al,(%eax)
c0609a9d:	00 00                	add    %al,(%eax)
c0609a9f:	00 44 00 53          	add    %al,0x53(%eax,%eax,1)
c0609aa3:	00 fa                	add    %bh,%dl
c0609aa5:	00 00                	add    %al,(%eax)
c0609aa7:	00 00                	add    %al,(%eax)
c0609aa9:	00 00                	add    %al,(%eax)
c0609aab:	00 44 00 52          	add    %al,0x52(%eax,%eax,1)
c0609aaf:	00 fd                	add    %bh,%ch
c0609ab1:	00 00                	add    %al,(%eax)
c0609ab3:	00 00                	add    %al,(%eax)
c0609ab5:	00 00                	add    %al,(%eax)
c0609ab7:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c0609abb:	00 01                	add    %al,(%ecx)
c0609abd:	01 00                	add    %eax,(%eax)
c0609abf:	00 00                	add    %al,(%eax)
c0609ac1:	00 00                	add    %al,(%eax)
c0609ac3:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c0609ac7:	00 03                	add    %al,(%ebx)
c0609ac9:	01 00                	add    %eax,(%eax)
c0609acb:	00 00                	add    %al,(%eax)
c0609acd:	00 00                	add    %al,(%eax)
c0609acf:	00 44 00 54          	add    %al,0x54(%eax,%eax,1)
c0609ad3:	00 0a                	add    %cl,(%edx)
c0609ad5:	01 00                	add    %eax,(%eax)
c0609ad7:	00 00                	add    %al,(%eax)
c0609ad9:	00 00                	add    %al,(%eax)
c0609adb:	00 44 00 68          	add    %al,0x68(%eax,%eax,1)
c0609adf:	00 10                	add    %dl,(%eax)
c0609ae1:	01 00                	add    %eax,(%eax)
c0609ae3:	00 00                	add    %al,(%eax)
c0609ae5:	00 00                	add    %al,(%eax)
c0609ae7:	00 44 00 82          	add    %al,-0x7e(%eax,%eax,1)
c0609aeb:	00 12                	add    %dl,(%edx)
c0609aed:	01 00                	add    %eax,(%eax)
c0609aef:	00 00                	add    %al,(%eax)
c0609af1:	00 00                	add    %al,(%eax)
c0609af3:	00 44 00 47          	add    %al,0x47(%eax,%eax,1)
c0609af7:	00 40 01             	add    %al,0x1(%eax)
c0609afa:	00 00                	add    %al,(%eax)
c0609afc:	00 00                	add    %al,(%eax)
c0609afe:	00 00                	add    %al,(%eax)
c0609b00:	44                   	inc    %esp
c0609b01:	00 47 00             	add    %al,0x0(%edi)
c0609b04:	44                   	inc    %esp
c0609b05:	01 00                	add    %eax,(%eax)
c0609b07:	00 00                	add    %al,(%eax)
c0609b09:	00 00                	add    %al,(%eax)
c0609b0b:	00 44 00 47          	add    %al,0x47(%eax,%eax,1)
c0609b0f:	00 50 01             	add    %dl,0x1(%eax)
c0609b12:	00 00                	add    %al,(%eax)
c0609b14:	00 00                	add    %al,(%eax)
c0609b16:	00 00                	add    %al,(%eax)
c0609b18:	44                   	inc    %esp
c0609b19:	00 47 00             	add    %al,0x0(%edi)
c0609b1c:	53                   	push   %ebx
c0609b1d:	01 00                	add    %eax,(%eax)
c0609b1f:	00 00                	add    %al,(%eax)
c0609b21:	00 00                	add    %al,(%eax)
c0609b23:	00 44 00 47          	add    %al,0x47(%eax,%eax,1)
c0609b27:	00 55 01             	add    %dl,0x1(%ebp)
c0609b2a:	00 00                	add    %al,(%eax)
c0609b2c:	00 00                	add    %al,(%eax)
c0609b2e:	00 00                	add    %al,(%eax)
c0609b30:	44                   	inc    %esp
c0609b31:	00 47 00             	add    %al,0x0(%edi)
c0609b34:	59                   	pop    %ecx
c0609b35:	01 00                	add    %eax,(%eax)
c0609b37:	00 00                	add    %al,(%eax)
c0609b39:	00 00                	add    %al,(%eax)
c0609b3b:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c0609b3f:	00 6c 01 00          	add    %ch,0x0(%ecx,%eax,1)
c0609b43:	00 00                	add    %al,(%eax)
c0609b45:	00 00                	add    %al,(%eax)
c0609b47:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c0609b4b:	00 70 01             	add    %dh,0x1(%eax)
c0609b4e:	00 00                	add    %al,(%eax)
c0609b50:	00 00                	add    %al,(%eax)
c0609b52:	00 00                	add    %al,(%eax)
c0609b54:	44                   	inc    %esp
c0609b55:	00 77 00             	add    %dh,0x0(%edi)
c0609b58:	77 01                	ja     c0609b5b <.stab+0x8c3>
c0609b5a:	00 00                	add    %al,(%eax)
c0609b5c:	00 00                	add    %al,(%eax)
c0609b5e:	00 00                	add    %al,(%eax)
c0609b60:	44                   	inc    %esp
c0609b61:	00 75 00             	add    %dh,0x0(%ebp)
c0609b64:	7b 01                	jnp    c0609b67 <.stab+0x8cf>
c0609b66:	00 00                	add    %al,(%eax)
c0609b68:	00 00                	add    %al,(%eax)
c0609b6a:	00 00                	add    %al,(%eax)
c0609b6c:	44                   	inc    %esp
c0609b6d:	00 76 00             	add    %dh,0x0(%esi)
c0609b70:	7e 01                	jle    c0609b73 <.stab+0x8db>
c0609b72:	00 00                	add    %al,(%eax)
c0609b74:	00 00                	add    %al,(%eax)
c0609b76:	00 00                	add    %al,(%eax)
c0609b78:	44                   	inc    %esp
c0609b79:	00 75 00             	add    %dh,0x0(%ebp)
c0609b7c:	81 01 00 00 00 00    	addl   $0x0,(%ecx)
c0609b82:	00 00                	add    %al,(%eax)
c0609b84:	44                   	inc    %esp
c0609b85:	00 48 00             	add    %cl,0x0(%eax)
c0609b88:	85 01                	test   %eax,(%ecx)
c0609b8a:	00 00                	add    %al,(%eax)
c0609b8c:	00 00                	add    %al,(%eax)
c0609b8e:	00 00                	add    %al,(%eax)
c0609b90:	44                   	inc    %esp
c0609b91:	00 49 00             	add    %cl,0x0(%ecx)
c0609b94:	95                   	xchg   %eax,%ebp
c0609b95:	01 00                	add    %eax,(%eax)
c0609b97:	00 00                	add    %al,(%eax)
c0609b99:	00 00                	add    %al,(%eax)
c0609b9b:	00 44 00 4c          	add    %al,0x4c(%eax,%eax,1)
c0609b9f:	00 a0 01 00 00 00    	add    %ah,0x1(%eax)
c0609ba5:	00 00                	add    %al,(%eax)
c0609ba7:	00 44 00 4c          	add    %al,0x4c(%eax,%eax,1)
c0609bab:	00 a4 01 00 00 00 00 	add    %ah,0x0(%ecx,%eax,1)
c0609bb2:	00 00                	add    %al,(%eax)
c0609bb4:	44                   	inc    %esp
c0609bb5:	00 4c 00 b0          	add    %cl,-0x50(%eax,%eax,1)
c0609bb9:	01 00                	add    %eax,(%eax)
c0609bbb:	00 00                	add    %al,(%eax)
c0609bbd:	00 00                	add    %al,(%eax)
c0609bbf:	00 44 00 4c          	add    %al,0x4c(%eax,%eax,1)
c0609bc3:	00 b3 01 00 00 00    	add    %dh,0x1(%ebx)
c0609bc9:	00 00                	add    %al,(%eax)
c0609bcb:	00 44 00 4c          	add    %al,0x4c(%eax,%eax,1)
c0609bcf:	00 b5 01 00 00 00    	add    %dh,0x1(%ebp)
c0609bd5:	00 00                	add    %al,(%eax)
c0609bd7:	00 44 00 4c          	add    %al,0x4c(%eax,%eax,1)
c0609bdb:	00 b9 01 00 00 00    	add    %bh,0x1(%ecx)
c0609be1:	00 00                	add    %al,(%eax)
c0609be3:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c0609be7:	00 c5                	add    %al,%ch
c0609be9:	01 00                	add    %eax,(%eax)
c0609beb:	00 00                	add    %al,(%eax)
c0609bed:	00 00                	add    %al,(%eax)
c0609bef:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c0609bf3:	00 d0                	add    %dl,%al
c0609bf5:	01 00                	add    %eax,(%eax)
c0609bf7:	00 00                	add    %al,(%eax)
c0609bf9:	00 00                	add    %al,(%eax)
c0609bfb:	00 44 00 77          	add    %al,0x77(%eax,%eax,1)
c0609bff:	00 d7                	add    %dl,%bh
c0609c01:	01 00                	add    %eax,(%eax)
c0609c03:	00 00                	add    %al,(%eax)
c0609c05:	00 00                	add    %al,(%eax)
c0609c07:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c0609c0b:	00 db                	add    %bl,%bl
c0609c0d:	01 00                	add    %eax,(%eax)
c0609c0f:	00 00                	add    %al,(%eax)
c0609c11:	00 00                	add    %al,(%eax)
c0609c13:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c0609c17:	00 de                	add    %bl,%dh
c0609c19:	01 00                	add    %eax,(%eax)
c0609c1b:	00 00                	add    %al,(%eax)
c0609c1d:	00 00                	add    %al,(%eax)
c0609c1f:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c0609c23:	00 e1                	add    %ah,%cl
c0609c25:	01 00                	add    %eax,(%eax)
c0609c27:	00 00                	add    %al,(%eax)
c0609c29:	00 00                	add    %al,(%eax)
c0609c2b:	00 44 00 57          	add    %al,0x57(%eax,%eax,1)
c0609c2f:	00 e9                	add    %ch,%cl
c0609c31:	01 00                	add    %eax,(%eax)
c0609c33:	00 00                	add    %al,(%eax)
c0609c35:	00 00                	add    %al,(%eax)
c0609c37:	00 44 00 58          	add    %al,0x58(%eax,%eax,1)
c0609c3b:	00 eb                	add    %ch,%bl
c0609c3d:	01 00                	add    %eax,(%eax)
c0609c3f:	00 00                	add    %al,(%eax)
c0609c41:	00 00                	add    %al,(%eax)
c0609c43:	00 44 00 5b          	add    %al,0x5b(%eax,%eax,1)
c0609c47:	00 f0                	add    %dh,%al
c0609c49:	01 00                	add    %eax,(%eax)
c0609c4b:	00 00                	add    %al,(%eax)
c0609c4d:	00 00                	add    %al,(%eax)
c0609c4f:	00 44 00 5b          	add    %al,0x5b(%eax,%eax,1)
c0609c53:	00 f4                	add    %dh,%ah
c0609c55:	01 00                	add    %eax,(%eax)
c0609c57:	00 00                	add    %al,(%eax)
c0609c59:	00 00                	add    %al,(%eax)
c0609c5b:	00 44 00 5b          	add    %al,0x5b(%eax,%eax,1)
c0609c5f:	00 00                	add    %al,(%eax)
c0609c61:	02 00                	add    (%eax),%al
c0609c63:	00 00                	add    %al,(%eax)
c0609c65:	00 00                	add    %al,(%eax)
c0609c67:	00 44 00 5b          	add    %al,0x5b(%eax,%eax,1)
c0609c6b:	00 03                	add    %al,(%ebx)
c0609c6d:	02 00                	add    (%eax),%al
c0609c6f:	00 00                	add    %al,(%eax)
c0609c71:	00 00                	add    %al,(%eax)
c0609c73:	00 44 00 5b          	add    %al,0x5b(%eax,%eax,1)
c0609c77:	00 05 02 00 00 00    	add    %al,0x2
c0609c7d:	00 00                	add    %al,(%eax)
c0609c7f:	00 44 00 5b          	add    %al,0x5b(%eax,%eax,1)
c0609c83:	00 09                	add    %cl,(%ecx)
c0609c85:	02 00                	add    (%eax),%al
c0609c87:	00 00                	add    %al,(%eax)
c0609c89:	00 00                	add    %al,(%eax)
c0609c8b:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c0609c8f:	00 15 02 00 00 00    	add    %dl,0x2
c0609c95:	00 00                	add    %al,(%eax)
c0609c97:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c0609c9b:	00 20                	add    %ah,(%eax)
c0609c9d:	02 00                	add    (%eax),%al
c0609c9f:	00 00                	add    %al,(%eax)
c0609ca1:	00 00                	add    %al,(%eax)
c0609ca3:	00 44 00 77          	add    %al,0x77(%eax,%eax,1)
c0609ca7:	00 27                	add    %ah,(%edi)
c0609ca9:	02 00                	add    (%eax),%al
c0609cab:	00 00                	add    %al,(%eax)
c0609cad:	00 00                	add    %al,(%eax)
c0609caf:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c0609cb3:	00 2b                	add    %ch,(%ebx)
c0609cb5:	02 00                	add    (%eax),%al
c0609cb7:	00 00                	add    %al,(%eax)
c0609cb9:	00 00                	add    %al,(%eax)
c0609cbb:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c0609cbf:	00 2e                	add    %ch,(%esi)
c0609cc1:	02 00                	add    (%eax),%al
c0609cc3:	00 00                	add    %al,(%eax)
c0609cc5:	00 00                	add    %al,(%eax)
c0609cc7:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c0609ccb:	00 31                	add    %dh,(%ecx)
c0609ccd:	02 00                	add    (%eax),%al
c0609ccf:	00 00                	add    %al,(%eax)
c0609cd1:	00 00                	add    %al,(%eax)
c0609cd3:	00 44 00 5c          	add    %al,0x5c(%eax,%eax,1)
c0609cd7:	00 35 02 00 00 00    	add    %dh,0x2
c0609cdd:	00 00                	add    %al,(%eax)
c0609cdf:	00 44 00 5d          	add    %al,0x5d(%eax,%eax,1)
c0609ce3:	00 45 02             	add    %al,0x2(%ebp)
c0609ce6:	00 00                	add    %al,(%eax)
c0609ce8:	00 00                	add    %al,(%eax)
c0609cea:	00 00                	add    %al,(%eax)
c0609cec:	44                   	inc    %esp
c0609ced:	00 41 00             	add    %al,0x0(%ecx)
c0609cf0:	50                   	push   %eax
c0609cf1:	02 00                	add    (%eax),%al
c0609cf3:	00 00                	add    %al,(%eax)
c0609cf5:	00 00                	add    %al,(%eax)
c0609cf7:	00 44 00 43          	add    %al,0x43(%eax,%eax,1)
c0609cfb:	00 5d 02             	add    %bl,0x2(%ebp)
c0609cfe:	00 00                	add    %al,(%eax)
c0609d00:	00 00                	add    %al,(%eax)
c0609d02:	00 00                	add    %al,(%eax)
c0609d04:	44                   	inc    %esp
c0609d05:	00 44 00 60          	add    %al,0x60(%eax,%eax,1)
c0609d09:	02 00                	add    (%eax),%al
c0609d0b:	00 00                	add    %al,(%eax)
c0609d0d:	00 00                	add    %al,(%eax)
c0609d0f:	00 44 00 56          	add    %al,0x56(%eax,%eax,1)
c0609d13:	00 65 02             	add    %ah,0x2(%ebp)
c0609d16:	00 00                	add    %al,(%eax)
c0609d18:	00 00                	add    %al,(%eax)
c0609d1a:	00 00                	add    %al,(%eax)
c0609d1c:	44                   	inc    %esp
c0609d1d:	00 56 00             	add    %dl,0x0(%esi)
c0609d20:	6c                   	insb   (%dx),%es:(%edi)
c0609d21:	02 00                	add    (%eax),%al
c0609d23:	00 00                	add    %al,(%eax)
c0609d25:	00 00                	add    %al,(%eax)
c0609d27:	00 44 00 56          	add    %al,0x56(%eax,%eax,1)
c0609d2b:	00 6e 02             	add    %ch,0x2(%esi)
c0609d2e:	00 00                	add    %al,(%eax)
c0609d30:	00 00                	add    %al,(%eax)
c0609d32:	00 00                	add    %al,(%eax)
c0609d34:	44                   	inc    %esp
c0609d35:	00 57 00             	add    %dl,0x0(%edi)
c0609d38:	72 02                	jb     c0609d3c <.stab+0xaa4>
c0609d3a:	00 00                	add    %al,(%eax)
c0609d3c:	00 00                	add    %al,(%eax)
c0609d3e:	00 00                	add    %al,(%eax)
c0609d40:	44                   	inc    %esp
c0609d41:	00 75 00             	add    %dh,0x0(%ebp)
c0609d44:	86 02                	xchg   %al,(%edx)
c0609d46:	00 00                	add    %al,(%eax)
c0609d48:	00 00                	add    %al,(%eax)
c0609d4a:	00 00                	add    %al,(%eax)
c0609d4c:	44                   	inc    %esp
c0609d4d:	00 76 00             	add    %dh,0x0(%esi)
c0609d50:	95                   	xchg   %eax,%ebp
c0609d51:	02 00                	add    (%eax),%al
c0609d53:	00 00                	add    %al,(%eax)
c0609d55:	00 00                	add    %al,(%eax)
c0609d57:	00 44 00 77          	add    %al,0x77(%eax,%eax,1)
c0609d5b:	00 9d 02 00 00 00    	add    %bl,0x2(%ebp)
c0609d61:	00 00                	add    %al,(%eax)
c0609d63:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c0609d67:	00 a1 02 00 00 00    	add    %ah,0x2(%ecx)
c0609d6d:	00 00                	add    %al,(%eax)
c0609d6f:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c0609d73:	00 a4 02 00 00 00 00 	add    %ah,0x0(%edx,%eax,1)
c0609d7a:	00 00                	add    %al,(%eax)
c0609d7c:	44                   	inc    %esp
c0609d7d:	00 75 00             	add    %dh,0x0(%ebp)
c0609d80:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
c0609d81:	02 00                	add    (%eax),%al
c0609d83:	00 00                	add    %al,(%eax)
c0609d85:	00 00                	add    %al,(%eax)
c0609d87:	00 44 00 57          	add    %al,0x57(%eax,%eax,1)
c0609d8b:	00 b3 02 00 00 5b    	add    %dh,0x5b000002(%ebx)
c0609d91:	28 00                	sub    %al,(%eax)
c0609d93:	00 40 00             	add    %al,0x0(%eax)
c0609d96:	00 00                	add    %al,(%eax)
c0609d98:	04 00                	add    $0x0,%al
c0609d9a:	00 00                	add    %al,(%eax)
c0609d9c:	66 22 00             	data16 and (%eax),%al
c0609d9f:	00 40 00             	add    %al,0x0(%eax)
c0609da2:	00 00                	add    %al,(%eax)
c0609da4:	03 00                	add    (%eax),%eax
c0609da6:	00 00                	add    %al,(%eax)
c0609da8:	00 00                	add    %al,(%eax)
c0609daa:	00 00                	add    %al,(%eax)
c0609dac:	c0 00 00             	rolb   $0x0,(%eax)
c0609daf:	00 00                	add    %al,(%eax)
c0609db1:	00 00                	add    %al,(%eax)
c0609db3:	00 66 28             	add    %ah,0x28(%esi)
c0609db6:	00 00                	add    %al,(%eax)
c0609db8:	80 00 00             	addb   $0x0,(%eax)
c0609dbb:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0609dbe:	00 00                	add    %al,(%eax)
c0609dc0:	00 00                	add    %al,(%eax)
c0609dc2:	00 00                	add    %al,(%eax)
c0609dc4:	c0 00 00             	rolb   $0x0,(%eax)
c0609dc7:	00 36                	add    %dh,(%esi)
c0609dc9:	00 00                	add    %al,(%eax)
c0609dcb:	00 00                	add    %al,(%eax)
c0609dcd:	00 00                	add    %al,(%eax)
c0609dcf:	00 e0                	add    %ah,%al
c0609dd1:	00 00                	add    %al,(%eax)
c0609dd3:	00 3a                	add    %bh,(%edx)
c0609dd5:	00 00                	add    %al,(%eax)
c0609dd7:	00 83 27 00 00 40    	add    %al,0x40000027(%ebx)
c0609ddd:	00 00                	add    %al,(%eax)
c0609ddf:	00 04 00             	add    %al,(%eax,%eax,1)
c0609de2:	00 00                	add    %al,(%eax)
c0609de4:	00 00                	add    %al,(%eax)
c0609de6:	00 00                	add    %al,(%eax)
c0609de8:	c0 00 00             	rolb   $0x0,(%eax)
c0609deb:	00 12                	add    %dl,(%edx)
c0609ded:	01 00                	add    %eax,(%eax)
c0609def:	00 00                	add    %al,(%eax)
c0609df1:	00 00                	add    %al,(%eax)
c0609df3:	00 e0                	add    %ah,%al
c0609df5:	00 00                	add    %al,(%eax)
c0609df7:	00 40 01             	add    %al,0x1(%eax)
c0609dfa:	00 00                	add    %al,(%eax)
c0609dfc:	66 28 00             	data16 sub %al,(%eax)
c0609dff:	00 80 00 00 00 1c    	add    %al,0x1c000000(%eax)
c0609e05:	00 00                	add    %al,(%eax)
c0609e07:	00 00                	add    %al,(%eax)
c0609e09:	00 00                	add    %al,(%eax)
c0609e0b:	00 c0                	add    %al,%al
c0609e0d:	00 00                	add    %al,(%eax)
c0609e0f:	00 40 01             	add    %al,0x1(%eax)
c0609e12:	00 00                	add    %al,(%eax)
c0609e14:	00 00                	add    %al,(%eax)
c0609e16:	00 00                	add    %al,(%eax)
c0609e18:	e0 00                	loopne c0609e1a <.stab+0xb82>
c0609e1a:	00 00                	add    %al,(%eax)
c0609e1c:	95                   	xchg   %eax,%ebp
c0609e1d:	01 00                	add    %eax,(%eax)
c0609e1f:	00 66 28             	add    %ah,0x28(%esi)
c0609e22:	00 00                	add    %al,(%eax)
c0609e24:	80 00 00             	addb   $0x0,(%eax)
c0609e27:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0609e2a:	00 00                	add    %al,(%eax)
c0609e2c:	00 00                	add    %al,(%eax)
c0609e2e:	00 00                	add    %al,(%eax)
c0609e30:	c0 00 00             	rolb   $0x0,(%eax)
c0609e33:	00 a0 01 00 00 66    	add    %ah,0x66000001(%eax)
c0609e39:	22 00                	and    (%eax),%al
c0609e3b:	00 40 00             	add    %al,0x0(%eax)
c0609e3e:	00 00                	add    %al,(%eax)
c0609e40:	02 00                	add    (%eax),%al
c0609e42:	00 00                	add    %al,(%eax)
c0609e44:	00 00                	add    %al,(%eax)
c0609e46:	00 00                	add    %al,(%eax)
c0609e48:	c0 00 00             	rolb   $0x0,(%eax)
c0609e4b:	00 c5                	add    %al,%ch
c0609e4d:	01 00                	add    %eax,(%eax)
c0609e4f:	00 00                	add    %al,(%eax)
c0609e51:	00 00                	add    %al,(%eax)
c0609e53:	00 e0                	add    %ah,%al
c0609e55:	00 00                	add    %al,(%eax)
c0609e57:	00 e9                	add    %ch,%cl
c0609e59:	01 00                	add    %eax,(%eax)
c0609e5b:	00 00                	add    %al,(%eax)
c0609e5d:	00 00                	add    %al,(%eax)
c0609e5f:	00 e0                	add    %ah,%al
c0609e61:	00 00                	add    %al,(%eax)
c0609e63:	00 e9                	add    %ch,%cl
c0609e65:	01 00                	add    %eax,(%eax)
c0609e67:	00 66 22             	add    %ah,0x22(%esi)
c0609e6a:	00 00                	add    %al,(%eax)
c0609e6c:	40                   	inc    %eax
c0609e6d:	00 00                	add    %al,(%eax)
c0609e6f:	00 02                	add    %al,(%edx)
c0609e71:	00 00                	add    %al,(%eax)
c0609e73:	00 00                	add    %al,(%eax)
c0609e75:	00 00                	add    %al,(%eax)
c0609e77:	00 c0                	add    %al,%al
c0609e79:	00 00                	add    %al,(%eax)
c0609e7b:	00 86 02 00 00 00    	add    %al,0x2(%esi)
c0609e81:	00 00                	add    %al,(%eax)
c0609e83:	00 e0                	add    %ah,%al
c0609e85:	00 00                	add    %al,(%eax)
c0609e87:	00 b3 02 00 00 66    	add    %dh,0x66000002(%ebx)
c0609e8d:	28 00                	sub    %al,(%eax)
c0609e8f:	00 80 00 00 00 1c    	add    %al,0x1c000000(%eax)
c0609e95:	00 00                	add    %al,(%eax)
c0609e97:	00 00                	add    %al,(%eax)
c0609e99:	00 00                	add    %al,(%eax)
c0609e9b:	00 c0                	add    %al,%al
c0609e9d:	00 00                	add    %al,(%eax)
c0609e9f:	00 f0                	add    %dh,%al
c0609ea1:	01 00                	add    %eax,(%eax)
c0609ea3:	00 00                	add    %al,(%eax)
c0609ea5:	00 00                	add    %al,(%eax)
c0609ea7:	00 e0                	add    %ah,%al
c0609ea9:	00 00                	add    %al,(%eax)
c0609eab:	00 45 02             	add    %al,0x2(%ebp)
c0609eae:	00 00                	add    %al,(%eax)
c0609eb0:	00 00                	add    %al,(%eax)
c0609eb2:	00 00                	add    %al,(%eax)
c0609eb4:	e0 00                	loopne c0609eb6 <.stab+0xc1e>
c0609eb6:	00 00                	add    %al,(%eax)
c0609eb8:	ba 02 00 00 6f       	mov    $0x6f000002,%edx
c0609ebd:	28 00                	sub    %al,(%eax)
c0609ebf:	00 24 00             	add    %ah,(%eax,%eax,1)
c0609ec2:	00 00                	add    %al,(%eax)
c0609ec4:	20 17                	and    %dl,(%edi)
c0609ec6:	60                   	pusha  
c0609ec7:	c0 83 28 00 00 a0 00 	rolb   $0x0,-0x5fffffd8(%ebx)
c0609ece:	00 00                	add    %al,(%eax)
c0609ed0:	04 00                	add    $0x0,%al
c0609ed2:	00 00                	add    %al,(%eax)
c0609ed4:	97                   	xchg   %eax,%edi
c0609ed5:	28 00                	sub    %al,(%eax)
c0609ed7:	00 a0 00 00 00 08    	add    %ah,0x8000000(%eax)
c0609edd:	00 00                	add    %al,(%eax)
c0609edf:	00 df                	add    %bl,%bh
c0609ee1:	27                   	daa    
c0609ee2:	00 00                	add    %al,(%eax)
c0609ee4:	a0 00 00 00 0c       	mov    0xc000000,%al
c0609ee9:	00 00                	add    %al,(%eax)
c0609eeb:	00 a6 28 00 00 a0    	add    %ah,-0x5fffffd8(%esi)
c0609ef1:	00 00                	add    %al,(%eax)
c0609ef3:	00 10                	add    %dl,(%eax)
c0609ef5:	00 00                	add    %al,(%eax)
c0609ef7:	00 00                	add    %al,(%eax)
c0609ef9:	00 00                	add    %al,(%eax)
c0609efb:	00 44 00 af          	add    %al,-0x51(%eax,%eax,1)
	...
c0609f07:	00 44 00 b1          	add    %al,-0x4f(%eax,%eax,1)
c0609f0b:	00 01                	add    %al,(%ecx)
c0609f0d:	00 00                	add    %al,(%eax)
c0609f0f:	00 00                	add    %al,(%eax)
c0609f11:	00 00                	add    %al,(%eax)
c0609f13:	00 44 00 af          	add    %al,-0x51(%eax,%eax,1)
c0609f17:	00 06                	add    %al,(%esi)
c0609f19:	00 00                	add    %al,(%eax)
c0609f1b:	00 00                	add    %al,(%eax)
c0609f1d:	00 00                	add    %al,(%eax)
c0609f1f:	00 44 00 e9          	add    %al,-0x17(%eax,%eax,1)
c0609f23:	00 09                	add    %cl,(%ecx)
c0609f25:	00 00                	add    %al,(%eax)
c0609f27:	00 00                	add    %al,(%eax)
c0609f29:	00 00                	add    %al,(%eax)
c0609f2b:	00 44 00 af          	add    %al,-0x51(%eax,%eax,1)
c0609f2f:	00 0e                	add    %cl,(%esi)
c0609f31:	00 00                	add    %al,(%eax)
c0609f33:	00 00                	add    %al,(%eax)
c0609f35:	00 00                	add    %al,(%eax)
c0609f37:	00 44 00 e9          	add    %al,-0x17(%eax,%eax,1)
c0609f3b:	00 12                	add    %dl,(%edx)
c0609f3d:	00 00                	add    %al,(%eax)
c0609f3f:	00 00                	add    %al,(%eax)
c0609f41:	00 00                	add    %al,(%eax)
c0609f43:	00 44 00 e9          	add    %al,-0x17(%eax,%eax,1)
c0609f47:	00 17                	add    %dl,(%edi)
c0609f49:	00 00                	add    %al,(%eax)
c0609f4b:	00 00                	add    %al,(%eax)
c0609f4d:	00 00                	add    %al,(%eax)
c0609f4f:	00 44 00 b1          	add    %al,-0x4f(%eax,%eax,1)
c0609f53:	00 1a                	add    %bl,(%edx)
c0609f55:	00 00                	add    %al,(%eax)
c0609f57:	00 00                	add    %al,(%eax)
c0609f59:	00 00                	add    %al,(%eax)
c0609f5b:	00 44 00 e9          	add    %al,-0x17(%eax,%eax,1)
c0609f5f:	00 1e                	add    %bl,(%esi)
c0609f61:	00 00                	add    %al,(%eax)
c0609f63:	00 00                	add    %al,(%eax)
c0609f65:	00 00                	add    %al,(%eax)
c0609f67:	00 44 00 b1          	add    %al,-0x4f(%eax,%eax,1)
c0609f6b:	00 21                	add    %ah,(%ecx)
c0609f6d:	00 00                	add    %al,(%eax)
c0609f6f:	00 00                	add    %al,(%eax)
c0609f71:	00 00                	add    %al,(%eax)
c0609f73:	00 44 00 eb          	add    %al,-0x15(%eax,%eax,1)
c0609f77:	00 81 00 00 00 00    	add    %al,0x0(%ecx)
c0609f7d:	00 00                	add    %al,(%eax)
c0609f7f:	00 44 00 ed          	add    %al,-0x13(%eax,%eax,1)
c0609f83:	00 89 00 00 00 00    	add    %cl,0x0(%ecx)
c0609f89:	00 00                	add    %al,(%eax)
c0609f8b:	00 44 00 eb          	add    %al,-0x15(%eax,%eax,1)
c0609f8f:	00 8b 00 00 00 00    	add    %cl,0x0(%ebx)
c0609f95:	00 00                	add    %al,(%eax)
c0609f97:	00 44 00 ed          	add    %al,-0x13(%eax,%eax,1)
c0609f9b:	00 8e 00 00 00 b1    	add    %cl,-0x4f000000(%esi)
c0609fa1:	28 00                	sub    %al,(%eax)
c0609fa3:	00 40 00             	add    %al,0x0(%eax)
c0609fa6:	00 00                	add    %al,(%eax)
c0609fa8:	04 00                	add    $0x0,%al
c0609faa:	00 00                	add    %al,(%eax)
c0609fac:	bd 28 00 00 24       	mov    $0x24000028,%ebp
c0609fb1:	00 00                	add    %al,(%eax)
c0609fb3:	00 c0                	add    %al,%al
c0609fb5:	17                   	pop    %ss
c0609fb6:	60                   	pusha  
c0609fb7:	c0 d2 28             	rcl    $0x28,%dl
c0609fba:	00 00                	add    %al,(%eax)
c0609fbc:	a0 00 00 00 04       	mov    0x4000000,%al
c0609fc1:	00 00                	add    %al,(%eax)
c0609fc3:	00 de                	add    %bl,%dh
c0609fc5:	28 00                	sub    %al,(%eax)
c0609fc7:	00 a0 00 00 00 08    	add    %ah,0x8000000(%eax)
c0609fcd:	00 00                	add    %al,(%eax)
c0609fcf:	00 97 28 00 00 a0    	add    %dl,-0x5fffffd8(%edi)
c0609fd5:	00 00                	add    %al,(%eax)
c0609fd7:	00 0c 00             	add    %cl,(%eax,%eax,1)
c0609fda:	00 00                	add    %al,(%eax)
c0609fdc:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
c0609fdd:	28 00                	sub    %al,(%eax)
c0609fdf:	00 a0 00 00 00 10    	add    %ah,0x10000000(%eax)
c0609fe5:	00 00                	add    %al,(%eax)
c0609fe7:	00 00                	add    %al,(%eax)
c0609fe9:	00 00                	add    %al,(%eax)
c0609feb:	00 44 00 f1          	add    %al,-0xf(%eax,%eax,1)
	...
c0609ff7:	00 44 00 f4          	add    %al,-0xc(%eax,%eax,1)
c0609ffb:	00 01                	add    %al,(%ecx)
c0609ffd:	00 00                	add    %al,(%eax)
c0609fff:	00 00                	add    %al,(%eax)
c060a001:	00 00                	add    %al,(%eax)
c060a003:	00 44 00 f1          	add    %al,-0xf(%eax,%eax,1)
c060a007:	00 06                	add    %al,(%esi)
c060a009:	00 00                	add    %al,(%eax)
c060a00b:	00 00                	add    %al,(%eax)
c060a00d:	00 00                	add    %al,(%eax)
c060a00f:	00 44 00 f3          	add    %al,-0xd(%eax,%eax,1)
c060a013:	00 0c 00             	add    %cl,(%eax,%eax,1)
c060a016:	00 00                	add    %al,(%eax)
c060a018:	00 00                	add    %al,(%eax)
c060a01a:	00 00                	add    %al,(%eax)
c060a01c:	44                   	inc    %esp
c060a01d:	00 f3                	add    %dh,%bl
c060a01f:	00 10                	add    %dl,(%eax)
c060a021:	00 00                	add    %al,(%eax)
c060a023:	00 00                	add    %al,(%eax)
c060a025:	00 00                	add    %al,(%eax)
c060a027:	00 44 00 23          	add    %al,0x23(%eax,%eax,1)
c060a02b:	01 14 00             	add    %edx,(%eax,%eax,1)
c060a02e:	00 00                	add    %al,(%eax)
c060a030:	00 00                	add    %al,(%eax)
c060a032:	00 00                	add    %al,(%eax)
c060a034:	44                   	inc    %esp
c060a035:	00 f4                	add    %dh,%ah
c060a037:	00 19                	add    %bl,(%ecx)
c060a039:	00 00                	add    %al,(%eax)
c060a03b:	00 00                	add    %al,(%eax)
c060a03d:	00 00                	add    %al,(%eax)
c060a03f:	00 44 00 f3          	add    %al,-0xd(%eax,%eax,1)
c060a043:	00 1d 00 00 00 00    	add    %bl,0x0
c060a049:	00 00                	add    %al,(%eax)
c060a04b:	00 44 00 f3          	add    %al,-0xd(%eax,%eax,1)
c060a04f:	00 20                	add    %ah,(%eax)
c060a051:	00 00                	add    %al,(%eax)
c060a053:	00 00                	add    %al,(%eax)
c060a055:	00 00                	add    %al,(%eax)
c060a057:	00 44 00 23          	add    %al,0x23(%eax,%eax,1)
c060a05b:	01 2b                	add    %ebp,(%ebx)
c060a05d:	00 00                	add    %al,(%eax)
c060a05f:	00 00                	add    %al,(%eax)
c060a061:	00 00                	add    %al,(%eax)
c060a063:	00 44 00 f3          	add    %al,-0xd(%eax,%eax,1)
c060a067:	00 2e                	add    %ch,(%esi)
c060a069:	00 00                	add    %al,(%eax)
c060a06b:	00 00                	add    %al,(%eax)
c060a06d:	00 00                	add    %al,(%eax)
c060a06f:	00 44 00 23          	add    %al,0x23(%eax,%eax,1)
c060a073:	01 31                	add    %esi,(%ecx)
c060a075:	00 00                	add    %al,(%eax)
c060a077:	00 00                	add    %al,(%eax)
c060a079:	00 00                	add    %al,(%eax)
c060a07b:	00 44 00 f3          	add    %al,-0xd(%eax,%eax,1)
c060a07f:	00 34 00             	add    %dh,(%eax,%eax,1)
c060a082:	00 00                	add    %al,(%eax)
c060a084:	00 00                	add    %al,(%eax)
c060a086:	00 00                	add    %al,(%eax)
c060a088:	44                   	inc    %esp
c060a089:	00 f4                	add    %dh,%ah
c060a08b:	00 36                	add    %dh,(%esi)
c060a08d:	00 00                	add    %al,(%eax)
c060a08f:	00 00                	add    %al,(%eax)
c060a091:	00 00                	add    %al,(%eax)
c060a093:	00 44 00 25          	add    %al,0x25(%eax,%eax,1)
c060a097:	01 86 00 00 00 00    	add    %eax,0x0(%esi)
c060a09d:	00 00                	add    %al,(%eax)
c060a09f:	00 44 00 27          	add    %al,0x27(%eax,%eax,1)
c060a0a3:	01 8e 00 00 00 00    	add    %ecx,0x0(%esi)
c060a0a9:	00 00                	add    %al,(%eax)
c060a0ab:	00 44 00 3c          	add    %al,0x3c(%eax,%eax,1)
c060a0af:	01 b6 00 00 00 00    	add    %esi,0x0(%esi)
c060a0b5:	00 00                	add    %al,(%eax)
c060a0b7:	00 44 00 3c          	add    %al,0x3c(%eax,%eax,1)
c060a0bb:	01 be 00 00 00 00    	add    %edi,0x0(%esi)
c060a0c1:	00 00                	add    %al,(%eax)
c060a0c3:	00 44 00 38          	add    %al,0x38(%eax,%eax,1)
c060a0c7:	01 c0                	add    %eax,%eax
c060a0c9:	00 00                	add    %al,(%eax)
c060a0cb:	00 00                	add    %al,(%eax)
c060a0cd:	00 00                	add    %al,(%eax)
c060a0cf:	00 44 00 3e          	add    %al,0x3e(%eax,%eax,1)
c060a0d3:	01 c6                	add    %eax,%esi
c060a0d5:	00 00                	add    %al,(%eax)
c060a0d7:	00 00                	add    %al,(%eax)
c060a0d9:	00 00                	add    %al,(%eax)
c060a0db:	00 44 00 3f          	add    %al,0x3f(%eax,%eax,1)
c060a0df:	01 cb                	add    %ecx,%ebx
c060a0e1:	00 00                	add    %al,(%eax)
c060a0e3:	00 ec                	add    %ch,%ah
c060a0e5:	28 00                	sub    %al,(%eax)
c060a0e7:	00 40 00             	add    %al,0x0(%eax)
c060a0ea:	00 00                	add    %al,(%eax)
c060a0ec:	04 00                	add    $0x0,%al
c060a0ee:	00 00                	add    %al,(%eax)
c060a0f0:	00 00                	add    %al,(%eax)
c060a0f2:	00 00                	add    %al,(%eax)
c060a0f4:	c0 00 00             	rolb   $0x0,(%eax)
	...
c060a0ff:	00 e0                	add    %ah,%al
c060a101:	00 00                	add    %al,(%eax)
c060a103:	00 d3                	add    %dl,%bl
c060a105:	00 00                	add    %al,(%eax)
c060a107:	00 76 20             	add    %dh,0x20(%esi)
c060a10a:	00 00                	add    %al,(%eax)
c060a10c:	20 00                	and    %al,(%eax)
	...
c060a116:	00 00                	add    %al,(%eax)
c060a118:	64 00 00             	add    %al,%fs:(%eax)
c060a11b:	00 93 18 60 c0     	add    %dl,-0x83f9fe8(%ebx)

c060a120 <.stab>:
c060a120:	f7 28                	imull  (%eax)
c060a122:	00 00                	add    %al,(%eax)
c060a124:	64 00 02             	add    %al,%fs:(%edx)
c060a127:	00 a0 18 60 c0 08    	add    %ah,0x8c06018(%eax)
c060a12d:	00 00                	add    %al,(%eax)
c060a12f:	00 3c 00             	add    %bh,(%eax,%eax,1)
c060a132:	00 00                	add    %al,(%eax)
c060a134:	00 00                	add    %al,(%eax)
c060a136:	00 00                	add    %al,(%eax)
c060a138:	17                   	pop    %ss
c060a139:	00 00                	add    %al,(%eax)
c060a13b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a141:	00 00                	add    %al,(%eax)
c060a143:	00 41 00             	add    %al,0x0(%ecx)
c060a146:	00 00                	add    %al,(%eax)
c060a148:	80 00 00             	addb   $0x0,(%eax)
c060a14b:	00 00                	add    %al,(%eax)
c060a14d:	00 00                	add    %al,(%eax)
c060a14f:	00 5b 00             	add    %bl,0x0(%ebx)
c060a152:	00 00                	add    %al,(%eax)
c060a154:	80 00 00             	addb   $0x0,(%eax)
c060a157:	00 00                	add    %al,(%eax)
c060a159:	00 00                	add    %al,(%eax)
c060a15b:	00 8a 00 00 00 80    	add    %cl,-0x80000000(%edx)
c060a161:	00 00                	add    %al,(%eax)
c060a163:	00 00                	add    %al,(%eax)
c060a165:	00 00                	add    %al,(%eax)
c060a167:	00 b3 00 00 00 80    	add    %dh,-0x80000000(%ebx)
c060a16d:	00 00                	add    %al,(%eax)
c060a16f:	00 00                	add    %al,(%eax)
c060a171:	00 00                	add    %al,(%eax)
c060a173:	00 e1                	add    %ah,%cl
c060a175:	00 00                	add    %al,(%eax)
c060a177:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a17d:	00 00                	add    %al,(%eax)
c060a17f:	00 fe                	add    %bh,%dh
c060a181:	00 00                	add    %al,(%eax)
c060a183:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a189:	00 00                	add    %al,(%eax)
c060a18b:	00 24 01             	add    %ah,(%ecx,%eax,1)
c060a18e:	00 00                	add    %al,(%eax)
c060a190:	80 00 00             	addb   $0x0,(%eax)
c060a193:	00 00                	add    %al,(%eax)
c060a195:	00 00                	add    %al,(%eax)
c060a197:	00 6a 01             	add    %ch,0x1(%edx)
c060a19a:	00 00                	add    %al,(%eax)
c060a19c:	80 00 00             	addb   $0x0,(%eax)
c060a19f:	00 00                	add    %al,(%eax)
c060a1a1:	00 00                	add    %al,(%eax)
c060a1a3:	00 95 01 00 00 80    	add    %dl,-0x7fffffff(%ebp)
c060a1a9:	00 00                	add    %al,(%eax)
c060a1ab:	00 00                	add    %al,(%eax)
c060a1ad:	00 00                	add    %al,(%eax)
c060a1af:	00 bd 01 00 00 80    	add    %bh,-0x7fffffff(%ebp)
c060a1b5:	00 00                	add    %al,(%eax)
c060a1b7:	00 00                	add    %al,(%eax)
c060a1b9:	00 00                	add    %al,(%eax)
c060a1bb:	00 e9                	add    %ch,%cl
c060a1bd:	01 00                	add    %eax,(%eax)
c060a1bf:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a1c5:	00 00                	add    %al,(%eax)
c060a1c7:	00 0f                	add    %cl,(%edi)
c060a1c9:	02 00                	add    (%eax),%al
c060a1cb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a1d1:	00 00                	add    %al,(%eax)
c060a1d3:	00 34 02             	add    %dh,(%edx,%eax,1)
c060a1d6:	00 00                	add    %al,(%eax)
c060a1d8:	80 00 00             	addb   $0x0,(%eax)
c060a1db:	00 00                	add    %al,(%eax)
c060a1dd:	00 00                	add    %al,(%eax)
c060a1df:	00 4e 02             	add    %cl,0x2(%esi)
c060a1e2:	00 00                	add    %al,(%eax)
c060a1e4:	80 00 00             	addb   $0x0,(%eax)
c060a1e7:	00 00                	add    %al,(%eax)
c060a1e9:	00 00                	add    %al,(%eax)
c060a1eb:	00 69 02             	add    %ch,0x2(%ecx)
c060a1ee:	00 00                	add    %al,(%eax)
c060a1f0:	80 00 00             	addb   $0x0,(%eax)
c060a1f3:	00 00                	add    %al,(%eax)
c060a1f5:	00 00                	add    %al,(%eax)
c060a1f7:	00 8a 02 00 00 80    	add    %cl,-0x7ffffffe(%edx)
c060a1fd:	00 00                	add    %al,(%eax)
c060a1ff:	00 00                	add    %al,(%eax)
c060a201:	00 00                	add    %al,(%eax)
c060a203:	00 a7 02 00 00 80    	add    %ah,-0x7ffffffe(%edi)
c060a209:	00 00                	add    %al,(%eax)
c060a20b:	00 00                	add    %al,(%eax)
c060a20d:	00 00                	add    %al,(%eax)
c060a20f:	00 c4                	add    %al,%ah
c060a211:	02 00                	add    (%eax),%al
c060a213:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a219:	00 00                	add    %al,(%eax)
c060a21b:	00 e3                	add    %ah,%bl
c060a21d:	02 00                	add    (%eax),%al
c060a21f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a225:	00 00                	add    %al,(%eax)
c060a227:	00 01                	add    %al,(%ecx)
c060a229:	03 00                	add    (%eax),%eax
c060a22b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a231:	00 00                	add    %al,(%eax)
c060a233:	00 20                	add    %ah,(%eax)
c060a235:	03 00                	add    (%eax),%eax
c060a237:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a23d:	00 00                	add    %al,(%eax)
c060a23f:	00 3f                	add    %bh,(%edi)
c060a241:	03 00                	add    (%eax),%eax
c060a243:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a249:	00 00                	add    %al,(%eax)
c060a24b:	00 5e 03             	add    %bl,0x3(%esi)
c060a24e:	00 00                	add    %al,(%eax)
c060a250:	80 00 00             	addb   $0x0,(%eax)
c060a253:	00 00                	add    %al,(%eax)
c060a255:	00 00                	add    %al,(%eax)
c060a257:	00 7f 03             	add    %bh,0x3(%edi)
c060a25a:	00 00                	add    %al,(%eax)
c060a25c:	80 00 00             	addb   $0x0,(%eax)
c060a25f:	00 00                	add    %al,(%eax)
c060a261:	00 00                	add    %al,(%eax)
c060a263:	00 2e                	add    %ch,(%esi)
c060a265:	11 00                	adc    %eax,(%eax)
c060a267:	00 c2                	add    %al,%dl
c060a269:	00 00                	add    %al,(%eax)
c060a26b:	00 90 c7 00 00 a5    	add    %dl,-0x5affff39(%eax)
c060a271:	03 00                	add    (%eax),%eax
c060a273:	00 c2                	add    %al,%dl
c060a275:	00 00                	add    %al,(%eax)
c060a277:	00 26                	add    %ah,(%esi)
c060a279:	59                   	pop    %ecx
c060a27a:	01 00                	add    %eax,(%eax)
c060a27c:	93                   	xchg   %eax,%ebx
c060a27d:	03 00                	add    (%eax),%eax
c060a27f:	00 c2                	add    %al,%dl
c060a281:	00 00                	add    %al,(%eax)
c060a283:	00 4c 18 00          	add    %cl,0x0(%eax,%ebx,1)
c060a287:	00 42 11             	add    %al,0x11(%edx)
c060a28a:	00 00                	add    %al,(%eax)
c060a28c:	c2 00 00             	ret    $0x0
c060a28f:	00 5a 04             	add    %bl,0x4(%edx)
c060a292:	00 00                	add    %al,(%eax)
c060a294:	37                   	aaa    
c060a295:	23 00                	and    (%eax),%eax
c060a297:	00 c2                	add    %al,%dl
c060a299:	00 00                	add    %al,(%eax)
c060a29b:	00 bc 76 00 00 76 20 	add    %bh,0x20760000(%esi,%esi,2)
c060a2a2:	00 00                	add    %al,(%eax)
c060a2a4:	20 00                	and    %al,(%eax)
c060a2a6:	00 00                	add    %al,(%eax)
c060a2a8:	00 00                	add    %al,(%eax)
c060a2aa:	00 00                	add    %al,(%eax)
c060a2ac:	fe                   	(bad)  
c060a2ad:	28 00                	sub    %al,(%eax)
c060a2af:	00 26                	add    %ah,(%esi)
c060a2b1:	00 00                	add    %al,(%eax)
c060a2b3:	00 20                	add    %ah,(%eax)
c060a2b5:	50                   	push   %eax
c060a2b6:	60                   	pusha  
c060a2b7:	c0 09 29             	rorb   $0x29,(%ecx)
c060a2ba:	00 00                	add    %al,(%eax)
c060a2bc:	28 00                	sub    %al,(%eax)
c060a2be:	00 00                	add    %al,(%eax)
c060a2c0:	a0 50 60 c0 2a       	mov    0x2ac06050,%al
c060a2c5:	29 00                	sub    %eax,(%eax)
c060a2c7:	00 24 00             	add    %ah,(%eax,%eax,1)
c060a2ca:	00 00                	add    %al,(%eax)
c060a2cc:	a0 18 60 c0 00       	mov    0xc06018,%al
c060a2d1:	00 00                	add    %al,(%eax)
c060a2d3:	00 44 00 0d          	add    %al,0xd(%eax,%eax,1)
	...
c060a2df:	00 44 00 10          	add    %al,0x10(%eax,%eax,1)
c060a2e3:	00 03                	add    %al,(%ebx)
c060a2e5:	00 00                	add    %al,(%eax)
c060a2e7:	00 b1 20 00 00 84    	add    %dh,-0x7bffffe0(%ecx)
c060a2ed:	00 00                	add    %al,(%eax)
c060a2ef:	00 f7                	add    %dh,%bh
c060a2f1:	18 60 c0             	sbb    %ah,-0x40(%eax)
c060a2f4:	00 00                	add    %al,(%eax)
c060a2f6:	00 00                	add    %al,(%eax)
c060a2f8:	44                   	inc    %esp
c060a2f9:	00 9d 00 57 00 00    	add    %bl,0x5700(%ebp)
c060a2ff:	00 f7                	add    %dh,%bh
c060a301:	28 00                	sub    %al,(%eax)
c060a303:	00 84 00 00 00 fa 18 	add    %al,0x18fa0000(%eax,%eax,1)
c060a30a:	60                   	pusha  
c060a30b:	c0 00 00             	rolb   $0x0,(%eax)
c060a30e:	00 00                	add    %al,(%eax)
c060a310:	44                   	inc    %esp
c060a311:	00 14 00             	add    %dl,(%eax,%eax,1)
c060a314:	5a                   	pop    %edx
c060a315:	00 00                	add    %al,(%eax)
c060a317:	00 3b                	add    %bh,(%ebx)
c060a319:	29 00                	sub    %eax,(%eax)
c060a31b:	00 40 00             	add    %al,0x0(%eax)
	...
c060a326:	00 00                	add    %al,(%eax)
c060a328:	c0 00 00             	rolb   $0x0,(%eax)
	...
c060a333:	00 e0                	add    %ah,%al
c060a335:	00 00                	add    %al,(%eax)
c060a337:	00 5e 00             	add    %bl,0x0(%esi)
c060a33a:	00 00                	add    %al,(%eax)
c060a33c:	45                   	inc    %ebp
c060a33d:	29 00                	sub    %eax,(%eax)
c060a33f:	00 24 00             	add    %ah,(%eax,%eax,1)
c060a342:	00 00                	add    %al,(%eax)
c060a344:	00 19                	add    %bl,(%ecx)
c060a346:	60                   	pusha  
c060a347:	c0 00 00             	rolb   $0x0,(%eax)
c060a34a:	00 00                	add    %al,(%eax)
c060a34c:	44                   	inc    %esp
c060a34d:	00 2c 00             	add    %ch,(%eax,%eax,1)
	...
c060a358:	44                   	inc    %esp
c060a359:	00 2f                	add    %ch,(%edi)
	...
c060a363:	00 44 00 2f          	add    %al,0x2f(%eax,%eax,1)
c060a367:	00 06                	add    %al,(%esi)
c060a369:	00 00                	add    %al,(%eax)
c060a36b:	00 00                	add    %al,(%eax)
c060a36d:	00 00                	add    %al,(%eax)
c060a36f:	00 44 00 2f          	add    %al,0x2f(%eax,%eax,1)
c060a373:	00 0b                	add    %cl,(%ebx)
c060a375:	00 00                	add    %al,(%eax)
c060a377:	00 00                	add    %al,(%eax)
c060a379:	00 00                	add    %al,(%eax)
c060a37b:	00 44 00 2f          	add    %al,0x2f(%eax,%eax,1)
c060a37f:	00 0e                	add    %cl,(%esi)
c060a381:	00 00                	add    %al,(%eax)
c060a383:	00 00                	add    %al,(%eax)
c060a385:	00 00                	add    %al,(%eax)
c060a387:	00 44 00 2f          	add    %al,0x2f(%eax,%eax,1)
c060a38b:	00 11                	add    %dl,(%ecx)
c060a38d:	00 00                	add    %al,(%eax)
c060a38f:	00 00                	add    %al,(%eax)
c060a391:	00 00                	add    %al,(%eax)
c060a393:	00 44 00 2f          	add    %al,0x2f(%eax,%eax,1)
c060a397:	00 16                	add    %dl,(%esi)
c060a399:	00 00                	add    %al,(%eax)
c060a39b:	00 00                	add    %al,(%eax)
c060a39d:	00 00                	add    %al,(%eax)
c060a39f:	00 44 00 2f          	add    %al,0x2f(%eax,%eax,1)
c060a3a3:	00 1c 00             	add    %bl,(%eax,%eax,1)
c060a3a6:	00 00                	add    %al,(%eax)
c060a3a8:	00 00                	add    %al,(%eax)
c060a3aa:	00 00                	add    %al,(%eax)
c060a3ac:	44                   	inc    %esp
c060a3ad:	00 31                	add    %dh,(%ecx)
c060a3af:	00 23                	add    %ah,(%ebx)
c060a3b1:	00 00                	add    %al,(%eax)
c060a3b3:	00 54 29 00          	add    %dl,0x0(%ecx,%ebp,1)
c060a3b7:	00 26                	add    %ah,(%esi)
c060a3b9:	00 00                	add    %al,(%eax)
c060a3bb:	00 6c 51 60          	add    %ch,0x60(%ecx,%edx,2)
c060a3bf:	c0 5d 29 00          	rcrb   $0x0,0x29(%ebp)
c060a3c3:	00 26                	add    %ah,(%esi)
c060a3c5:	00 00                	add    %al,(%eax)
c060a3c7:	00 68 51             	add    %ch,0x51(%eax)
c060a3ca:	60                   	pusha  
c060a3cb:	c0 00 00             	rolb   $0x0,(%eax)
c060a3ce:	00 00                	add    %al,(%eax)
c060a3d0:	c0 00 00             	rolb   $0x0,(%eax)
	...
c060a3db:	00 e0                	add    %ah,%al
c060a3dd:	00 00                	add    %al,(%eax)
c060a3df:	00 24 00             	add    %ah,(%eax,%eax,1)
c060a3e2:	00 00                	add    %al,(%eax)
c060a3e4:	66 29 00             	sub    %ax,(%eax)
c060a3e7:	00 24 00             	add    %ah,(%eax,%eax,1)
c060a3ea:	00 00                	add    %al,(%eax)
c060a3ec:	30 19                	xor    %bl,(%ecx)
c060a3ee:	60                   	pusha  
c060a3ef:	c0 76 29 00          	shlb   $0x0,0x29(%esi)
c060a3f3:	00 a0 00 00 00 04    	add    %ah,0x4000000(%eax)
c060a3f9:	00 00                	add    %al,(%eax)
c060a3fb:	00 00                	add    %al,(%eax)
c060a3fd:	00 00                	add    %al,(%eax)
c060a3ff:	00 44 00 35          	add    %al,0x35(%eax,%eax,1)
	...
c060a40b:	00 44 00 37          	add    %al,0x37(%eax,%eax,1)
c060a40f:	00 00                	add    %al,(%eax)
c060a411:	00 00                	add    %al,(%eax)
c060a413:	00 5d 29             	add    %bl,0x29(%ebp)
c060a416:	00 00                	add    %al,(%eax)
c060a418:	26 00 00             	add    %al,%es:(%eax)
c060a41b:	00 68 51             	add    %ch,0x51(%eax)
c060a41e:	60                   	pusha  
c060a41f:	c0 54 29 00 00       	rclb   $0x0,0x0(%ecx,%ebp,1)
c060a424:	26 00 00             	add    %al,%es:(%eax)
c060a427:	00 6c 51 60          	add    %ch,0x60(%ecx,%edx,2)
c060a42b:	c0 00 00             	rolb   $0x0,(%eax)
c060a42e:	00 00                	add    %al,(%eax)
c060a430:	64 00 00             	add    %al,%fs:(%eax)
c060a433:	00 31                	add    %dh,(%ecx)
c060a435:	19 60 c0             	sbb    %esp,-0x40(%eax)

c060a438 <.stab>:
c060a438:	81 29 00 00 64 00    	subl   $0x640000,(%ecx)
c060a43e:	02 00                	add    (%eax),%al
c060a440:	40                   	inc    %eax
c060a441:	19 60 c0             	sbb    %esp,-0x40(%eax)
c060a444:	08 00                	or     %al,(%eax)
c060a446:	00 00                	add    %al,(%eax)
c060a448:	3c 00                	cmp    $0x0,%al
c060a44a:	00 00                	add    %al,(%eax)
c060a44c:	00 00                	add    %al,(%eax)
c060a44e:	00 00                	add    %al,(%eax)
c060a450:	17                   	pop    %ss
c060a451:	00 00                	add    %al,(%eax)
c060a453:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a459:	00 00                	add    %al,(%eax)
c060a45b:	00 41 00             	add    %al,0x0(%ecx)
c060a45e:	00 00                	add    %al,(%eax)
c060a460:	80 00 00             	addb   $0x0,(%eax)
c060a463:	00 00                	add    %al,(%eax)
c060a465:	00 00                	add    %al,(%eax)
c060a467:	00 5b 00             	add    %bl,0x0(%ebx)
c060a46a:	00 00                	add    %al,(%eax)
c060a46c:	80 00 00             	addb   $0x0,(%eax)
c060a46f:	00 00                	add    %al,(%eax)
c060a471:	00 00                	add    %al,(%eax)
c060a473:	00 8a 00 00 00 80    	add    %cl,-0x80000000(%edx)
c060a479:	00 00                	add    %al,(%eax)
c060a47b:	00 00                	add    %al,(%eax)
c060a47d:	00 00                	add    %al,(%eax)
c060a47f:	00 b3 00 00 00 80    	add    %dh,-0x80000000(%ebx)
c060a485:	00 00                	add    %al,(%eax)
c060a487:	00 00                	add    %al,(%eax)
c060a489:	00 00                	add    %al,(%eax)
c060a48b:	00 e1                	add    %ah,%cl
c060a48d:	00 00                	add    %al,(%eax)
c060a48f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a495:	00 00                	add    %al,(%eax)
c060a497:	00 fe                	add    %bh,%dh
c060a499:	00 00                	add    %al,(%eax)
c060a49b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a4a1:	00 00                	add    %al,(%eax)
c060a4a3:	00 24 01             	add    %ah,(%ecx,%eax,1)
c060a4a6:	00 00                	add    %al,(%eax)
c060a4a8:	80 00 00             	addb   $0x0,(%eax)
c060a4ab:	00 00                	add    %al,(%eax)
c060a4ad:	00 00                	add    %al,(%eax)
c060a4af:	00 6a 01             	add    %ch,0x1(%edx)
c060a4b2:	00 00                	add    %al,(%eax)
c060a4b4:	80 00 00             	addb   $0x0,(%eax)
c060a4b7:	00 00                	add    %al,(%eax)
c060a4b9:	00 00                	add    %al,(%eax)
c060a4bb:	00 95 01 00 00 80    	add    %dl,-0x7fffffff(%ebp)
c060a4c1:	00 00                	add    %al,(%eax)
c060a4c3:	00 00                	add    %al,(%eax)
c060a4c5:	00 00                	add    %al,(%eax)
c060a4c7:	00 bd 01 00 00 80    	add    %bh,-0x7fffffff(%ebp)
c060a4cd:	00 00                	add    %al,(%eax)
c060a4cf:	00 00                	add    %al,(%eax)
c060a4d1:	00 00                	add    %al,(%eax)
c060a4d3:	00 e9                	add    %ch,%cl
c060a4d5:	01 00                	add    %eax,(%eax)
c060a4d7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a4dd:	00 00                	add    %al,(%eax)
c060a4df:	00 0f                	add    %cl,(%edi)
c060a4e1:	02 00                	add    (%eax),%al
c060a4e3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a4e9:	00 00                	add    %al,(%eax)
c060a4eb:	00 34 02             	add    %dh,(%edx,%eax,1)
c060a4ee:	00 00                	add    %al,(%eax)
c060a4f0:	80 00 00             	addb   $0x0,(%eax)
c060a4f3:	00 00                	add    %al,(%eax)
c060a4f5:	00 00                	add    %al,(%eax)
c060a4f7:	00 4e 02             	add    %cl,0x2(%esi)
c060a4fa:	00 00                	add    %al,(%eax)
c060a4fc:	80 00 00             	addb   $0x0,(%eax)
c060a4ff:	00 00                	add    %al,(%eax)
c060a501:	00 00                	add    %al,(%eax)
c060a503:	00 69 02             	add    %ch,0x2(%ecx)
c060a506:	00 00                	add    %al,(%eax)
c060a508:	80 00 00             	addb   $0x0,(%eax)
c060a50b:	00 00                	add    %al,(%eax)
c060a50d:	00 00                	add    %al,(%eax)
c060a50f:	00 8a 02 00 00 80    	add    %cl,-0x7ffffffe(%edx)
c060a515:	00 00                	add    %al,(%eax)
c060a517:	00 00                	add    %al,(%eax)
c060a519:	00 00                	add    %al,(%eax)
c060a51b:	00 a7 02 00 00 80    	add    %ah,-0x7ffffffe(%edi)
c060a521:	00 00                	add    %al,(%eax)
c060a523:	00 00                	add    %al,(%eax)
c060a525:	00 00                	add    %al,(%eax)
c060a527:	00 c4                	add    %al,%ah
c060a529:	02 00                	add    (%eax),%al
c060a52b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a531:	00 00                	add    %al,(%eax)
c060a533:	00 e3                	add    %ah,%bl
c060a535:	02 00                	add    (%eax),%al
c060a537:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a53d:	00 00                	add    %al,(%eax)
c060a53f:	00 01                	add    %al,(%ecx)
c060a541:	03 00                	add    (%eax),%eax
c060a543:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a549:	00 00                	add    %al,(%eax)
c060a54b:	00 20                	add    %ah,(%eax)
c060a54d:	03 00                	add    (%eax),%eax
c060a54f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a555:	00 00                	add    %al,(%eax)
c060a557:	00 3f                	add    %bh,(%edi)
c060a559:	03 00                	add    (%eax),%eax
c060a55b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c060a561:	00 00                	add    %al,(%eax)
c060a563:	00 5e 03             	add    %bl,0x3(%esi)
c060a566:	00 00                	add    %al,(%eax)
c060a568:	80 00 00             	addb   $0x0,(%eax)
c060a56b:	00 00                	add    %al,(%eax)
c060a56d:	00 00                	add    %al,(%eax)
c060a56f:	00 7f 03             	add    %bh,0x3(%edi)
c060a572:	00 00                	add    %al,(%eax)
c060a574:	80 00 00             	addb   $0x0,(%eax)
c060a577:	00 00                	add    %al,(%eax)
c060a579:	00 00                	add    %al,(%eax)
c060a57b:	00 eb                	add    %ch,%bl
c060a57d:	09 00                	or     %eax,(%eax)
c060a57f:	00 c2                	add    %al,%dl
c060a581:	00 00                	add    %al,(%eax)
c060a583:	00 11                	add    %dl,(%ecx)
c060a585:	52                   	push   %edx
c060a586:	00 00                	add    %al,(%eax)
c060a588:	a5                   	movsl  %ds:(%esi),%es:(%edi)
c060a589:	03 00                	add    (%eax),%eax
c060a58b:	00 c2                	add    %al,%dl
c060a58d:	00 00                	add    %al,(%eax)
c060a58f:	00 26                	add    %ah,(%esi)
c060a591:	59                   	pop    %ecx
c060a592:	01 00                	add    %eax,(%eax)
c060a594:	9f                   	lahf   
c060a595:	10 00                	adc    %al,(%eax)
c060a597:	00 c2                	add    %al,%dl
c060a599:	00 00                	add    %al,(%eax)
c060a59b:	00 2b                	add    %ch,(%ebx)
c060a59d:	1d 00 00 2e 11       	sbb    $0x112e0000,%eax
c060a5a2:	00 00                	add    %al,(%eax)
c060a5a4:	c2 00 00             	ret    $0x0
c060a5a7:	00 90 c7 00 00 93    	add    %dl,-0x6cffff39(%eax)
c060a5ad:	03 00                	add    (%eax),%eax
c060a5af:	00 c2                	add    %al,%dl
c060a5b1:	00 00                	add    %al,(%eax)
c060a5b3:	00 4c 18 00          	add    %cl,0x0(%eax,%ebx,1)
c060a5b7:	00 42 11             	add    %al,0x11(%edx)
c060a5ba:	00 00                	add    %al,(%eax)
c060a5bc:	c2 00 00             	ret    $0x0
c060a5bf:	00 5a 04             	add    %bl,0x4(%edx)
c060a5c2:	00 00                	add    %al,(%eax)
c060a5c4:	88 29                	mov    %ch,(%ecx)
c060a5c6:	00 00                	add    %al,(%eax)
c060a5c8:	20 00                	and    %al,(%eax)
c060a5ca:	00 00                	add    %al,(%eax)
c060a5cc:	00 00                	add    %al,(%eax)
c060a5ce:	00 00                	add    %al,(%eax)
c060a5d0:	94                   	xchg   %eax,%esp
c060a5d1:	29 00                	sub    %eax,(%eax)
c060a5d3:	00 24 00             	add    %ah,(%eax,%eax,1)
c060a5d6:	00 00                	add    %al,(%eax)
c060a5d8:	40                   	inc    %eax
c060a5d9:	19 60 c0             	sbb    %esp,-0x40(%eax)
c060a5dc:	ac                   	lods   %ds:(%esi),%al
c060a5dd:	29 00                	sub    %eax,(%eax)
c060a5df:	00 a0 00 00 00 04    	add    %ah,0x4000000(%eax)
c060a5e5:	00 00                	add    %al,(%eax)
c060a5e7:	00 00                	add    %al,(%eax)
c060a5e9:	00 00                	add    %al,(%eax)
c060a5eb:	00 44 00 08          	add    %al,0x8(%eax,%eax,1)
	...
c060a5f7:	00 44 00 09          	add    %al,0x9(%eax,%eax,1)
c060a5fb:	00 01                	add    %al,(%ecx)
c060a5fd:	00 00                	add    %al,(%eax)
c060a5ff:	00 00                	add    %al,(%eax)
c060a601:	00 00                	add    %al,(%eax)
c060a603:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a607:	00 3d 00 00 00 c0    	add    %bh,0xc0000000
c060a60d:	29 00                	sub    %eax,(%eax)
c060a60f:	00 24 00             	add    %ah,(%eax,%eax,1)
c060a612:	00 00                	add    %al,(%eax)
c060a614:	80 19 60             	sbbb   $0x60,(%ecx)
c060a617:	c0 cc 29             	ror    $0x29,%ah
c060a61a:	00 00                	add    %al,(%eax)
c060a61c:	a0 00 00 00 18       	mov    0x18000000,%al
c060a621:	00 00                	add    %al,(%eax)
c060a623:	00 00                	add    %al,(%eax)
c060a625:	00 00                	add    %al,(%eax)
c060a627:	00 44 00 2e          	add    %al,0x2e(%eax,%eax,1)
	...
c060a633:	00 44 00 30          	add    %al,0x30(%eax,%eax,1)
c060a637:	00 07                	add    %al,(%edi)
c060a639:	00 00                	add    %al,(%eax)
c060a63b:	00 00                	add    %al,(%eax)
c060a63d:	00 00                	add    %al,(%eax)
c060a63f:	00 44 00 36          	add    %al,0x36(%eax,%eax,1)
c060a643:	00 13                	add    %dl,(%ebx)
c060a645:	00 00                	add    %al,(%eax)
c060a647:	00 00                	add    %al,(%eax)
c060a649:	00 00                	add    %al,(%eax)
c060a64b:	00 44 00 35          	add    %al,0x35(%eax,%eax,1)
c060a64f:	00 2d 00 00 00 00    	add    %ch,0x0
c060a655:	00 00                	add    %al,(%eax)
c060a657:	00 44 00 34          	add    %al,0x34(%eax,%eax,1)
c060a65b:	00 47 00             	add    %al,0x0(%edi)
c060a65e:	00 00                	add    %al,(%eax)
c060a660:	00 00                	add    %al,(%eax)
c060a662:	00 00                	add    %al,(%eax)
c060a664:	44                   	inc    %esp
c060a665:	00 33                	add    %dh,(%ebx)
c060a667:	00 61 00             	add    %ah,0x0(%ecx)
c060a66a:	00 00                	add    %al,(%eax)
c060a66c:	00 00                	add    %al,(%eax)
c060a66e:	00 00                	add    %al,(%eax)
c060a670:	44                   	inc    %esp
c060a671:	00 32                	add    %dh,(%edx)
c060a673:	00 77 00             	add    %dh,0x0(%edi)
c060a676:	00 00                	add    %al,(%eax)
c060a678:	00 00                	add    %al,(%eax)
c060a67a:	00 00                	add    %al,(%eax)
c060a67c:	44                   	inc    %esp
c060a67d:	00 31                	add    %dh,(%ecx)
c060a67f:	00 8d 00 00 00 eb    	add    %cl,-0x15000000(%ebp)
c060a685:	09 00                	or     %eax,(%eax)
c060a687:	00 84 00 00 00 12 1a 	add    %al,0x1a120000(%eax,%eax,1)
c060a68e:	60                   	pusha  
c060a68f:	c0 00 00             	rolb   $0x0,(%eax)
c060a692:	00 00                	add    %al,(%eax)
c060a694:	44                   	inc    %esp
c060a695:	00 23                	add    %ah,(%ebx)
c060a697:	00 92 00 00 00 81    	add    %dl,-0x7f000000(%edx)
c060a69d:	29 00                	sub    %eax,(%eax)
c060a69f:	00 84 00 00 00 15 1a 	add    %al,0x1a150000(%eax,%eax,1)
c060a6a6:	60                   	pusha  
c060a6a7:	c0 00 00             	rolb   $0x0,(%eax)
c060a6aa:	00 00                	add    %al,(%eax)
c060a6ac:	44                   	inc    %esp
c060a6ad:	00 31                	add    %dh,(%ecx)
c060a6af:	00 95 00 00 00 00    	add    %dl,0x0(%ebp)
c060a6b5:	00 00                	add    %al,(%eax)
c060a6b7:	00 44 00 31          	add    %al,0x31(%eax,%eax,1)
c060a6bb:	00 a6 00 00 00 eb    	add    %ah,-0x15000000(%esi)
c060a6c1:	09 00                	or     %eax,(%eax)
c060a6c3:	00 84 00 00 00 2c 1a 	add    %al,0x1a2c0000(%eax,%eax,1)
c060a6ca:	60                   	pusha  
c060a6cb:	c0 00 00             	rolb   $0x0,(%eax)
c060a6ce:	00 00                	add    %al,(%eax)
c060a6d0:	44                   	inc    %esp
c060a6d1:	00 23                	add    %ah,(%ebx)
c060a6d3:	00 ac 00 00 00 00 00 	add    %ch,0x0(%eax,%eax,1)
c060a6da:	00 00                	add    %al,(%eax)
c060a6dc:	44                   	inc    %esp
c060a6dd:	00 24 00             	add    %ah,(%eax,%eax,1)
c060a6e0:	b0 00                	mov    $0x0,%al
c060a6e2:	00 00                	add    %al,(%eax)
c060a6e4:	00 00                	add    %al,(%eax)
c060a6e6:	00 00                	add    %al,(%eax)
c060a6e8:	44                   	inc    %esp
c060a6e9:	00 25 00 b3 00 00    	add    %ah,0xb300
c060a6ef:	00 00                	add    %al,(%eax)
c060a6f1:	00 00                	add    %al,(%eax)
c060a6f3:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a6f7:	00 b6 00 00 00 00    	add    %dh,0x0(%esi)
c060a6fd:	00 00                	add    %al,(%eax)
c060a6ff:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a703:	00 b8 00 00 00 00    	add    %bh,0x0(%eax)
c060a709:	00 00                	add    %al,(%eax)
c060a70b:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a70f:	00 be 00 00 00 00    	add    %bh,0x0(%esi)
c060a715:	00 00                	add    %al,(%eax)
c060a717:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a71b:	00 c3                	add    %al,%bl
c060a71d:	00 00                	add    %al,(%eax)
c060a71f:	00 00                	add    %al,(%eax)
c060a721:	00 00                	add    %al,(%eax)
c060a723:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a727:	00 c5                	add    %al,%ch
c060a729:	00 00                	add    %al,(%eax)
c060a72b:	00 00                	add    %al,(%eax)
c060a72d:	00 00                	add    %al,(%eax)
c060a72f:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a733:	00 c7                	add    %al,%bh
c060a735:	00 00                	add    %al,(%eax)
c060a737:	00 00                	add    %al,(%eax)
c060a739:	00 00                	add    %al,(%eax)
c060a73b:	00 44 00 2a          	add    %al,0x2a(%eax,%eax,1)
c060a73f:	00 ca                	add    %cl,%dl
c060a741:	00 00                	add    %al,(%eax)
c060a743:	00 00                	add    %al,(%eax)
c060a745:	00 00                	add    %al,(%eax)
c060a747:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a74b:	00 d0                	add    %dl,%al
c060a74d:	00 00                	add    %al,(%eax)
c060a74f:	00 00                	add    %al,(%eax)
c060a751:	00 00                	add    %al,(%eax)
c060a753:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a757:	00 d4                	add    %dl,%ah
c060a759:	00 00                	add    %al,(%eax)
c060a75b:	00 00                	add    %al,(%eax)
c060a75d:	00 00                	add    %al,(%eax)
c060a75f:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a763:	00 d9                	add    %bl,%cl
c060a765:	00 00                	add    %al,(%eax)
c060a767:	00 00                	add    %al,(%eax)
c060a769:	00 00                	add    %al,(%eax)
c060a76b:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a76f:	00 dc                	add    %bl,%ah
c060a771:	00 00                	add    %al,(%eax)
c060a773:	00 00                	add    %al,(%eax)
c060a775:	00 00                	add    %al,(%eax)
c060a777:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a77b:	00 df                	add    %bl,%bh
c060a77d:	00 00                	add    %al,(%eax)
c060a77f:	00 00                	add    %al,(%eax)
c060a781:	00 00                	add    %al,(%eax)
c060a783:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a787:	00 e1                	add    %ah,%cl
c060a789:	00 00                	add    %al,(%eax)
c060a78b:	00 00                	add    %al,(%eax)
c060a78d:	00 00                	add    %al,(%eax)
c060a78f:	00 44 00 2b          	add    %al,0x2b(%eax,%eax,1)
c060a793:	00 e3                	add    %ah,%bl
c060a795:	00 00                	add    %al,(%eax)
c060a797:	00 00                	add    %al,(%eax)
c060a799:	00 00                	add    %al,(%eax)
c060a79b:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a79f:	00 e7                	add    %ah,%bh
c060a7a1:	00 00                	add    %al,(%eax)
c060a7a3:	00 00                	add    %al,(%eax)
c060a7a5:	00 00                	add    %al,(%eax)
c060a7a7:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a7ab:	00 e9                	add    %ch,%cl
c060a7ad:	00 00                	add    %al,(%eax)
c060a7af:	00 00                	add    %al,(%eax)
c060a7b1:	00 00                	add    %al,(%eax)
c060a7b3:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a7b7:	00 ed                	add    %ch,%ch
c060a7b9:	00 00                	add    %al,(%eax)
c060a7bb:	00 00                	add    %al,(%eax)
c060a7bd:	00 00                	add    %al,(%eax)
c060a7bf:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c060a7c3:	00 f0                	add    %dh,%al
c060a7c5:	00 00                	add    %al,(%eax)
c060a7c7:	00 00                	add    %al,(%eax)
c060a7c9:	00 00                	add    %al,(%eax)
c060a7cb:	00 44 00 2b          	add    %al,0x2b(%eax,%eax,1)
c060a7cf:	00 f4                	add    %dh,%ah
c060a7d1:	00 00                	add    %al,(%eax)
c060a7d3:	00 81 29 00 00 84    	add    %al,-0x7bffffd7(%ecx)
c060a7d9:	00 00                	add    %al,(%eax)
c060a7db:	00 77 1a             	add    %dh,0x1a(%edi)
c060a7de:	60                   	pusha  
c060a7df:	c0 00 00             	rolb   $0x0,(%eax)
c060a7e2:	00 00                	add    %al,(%eax)
c060a7e4:	44                   	inc    %esp
c060a7e5:	00 37                	add    %dh,(%edi)
c060a7e7:	00 f7                	add    %dh,%bh
c060a7e9:	00 00                	add    %al,(%eax)
c060a7eb:	00 eb                	add    %ch,%bl
c060a7ed:	09 00                	or     %eax,(%eax)
c060a7ef:	00 84 00 00 00 7b 1a 	add    %al,0x1a7b0000(%eax,%eax,1)
c060a7f6:	60                   	pusha  
c060a7f7:	c0 00 00             	rolb   $0x0,(%eax)
c060a7fa:	00 00                	add    %al,(%eax)
c060a7fc:	44                   	inc    %esp
c060a7fd:	00 2b                	add    %ch,(%ebx)
c060a7ff:	00 fb                	add    %bh,%bl
c060a801:	00 00                	add    %al,(%eax)
c060a803:	00 00                	add    %al,(%eax)
c060a805:	00 00                	add    %al,(%eax)
c060a807:	00 44 00 2d          	add    %al,0x2d(%eax,%eax,1)
c060a80b:	00 fe                	add    %bh,%dh
c060a80d:	00 00                	add    %al,(%eax)
c060a80f:	00 00                	add    %al,(%eax)
c060a811:	00 00                	add    %al,(%eax)
c060a813:	00 44 00 2c          	add    %al,0x2c(%eax,%eax,1)
c060a817:	00 02                	add    %al,(%edx)
c060a819:	01 00                	add    %eax,(%eax)
c060a81b:	00 00                	add    %al,(%eax)
c060a81d:	00 00                	add    %al,(%eax)
c060a81f:	00 44 00 2d          	add    %al,0x2d(%eax,%eax,1)
c060a823:	00 09                	add    %cl,(%ecx)
c060a825:	01 00                	add    %eax,(%eax)
c060a827:	00 81 29 00 00 84    	add    %al,-0x7bffffd7(%ecx)
c060a82d:	00 00                	add    %al,(%eax)
c060a82f:	00 93 1a 60 c0 00    	add    %dl,0xc0601a(%ebx)
c060a835:	00 00                	add    %al,(%eax)
c060a837:	00 44 00 37          	add    %al,0x37(%eax,%eax,1)
c060a83b:	00 13                	add    %dl,(%ebx)
c060a83d:	01 00                	add    %eax,(%eax)
c060a83f:	00 00                	add    %al,(%eax)
c060a841:	00 00                	add    %al,(%eax)
c060a843:	00 44 00 38          	add    %al,0x38(%eax,%eax,1)
c060a847:	00 17                	add    %dl,(%edi)
c060a849:	01 00                	add    %eax,(%eax)
c060a84b:	00 00                	add    %al,(%eax)
c060a84d:	00 00                	add    %al,(%eax)
c060a84f:	00 44 00 3b          	add    %al,0x3b(%eax,%eax,1)
c060a853:	00 1d 01 00 00 e1    	add    %bl,0xe1000001
c060a859:	29 00                	sub    %eax,(%eax)
c060a85b:	00 80 00 00 00 0e    	add    %al,0xe000000(%eax)
c060a861:	00 00                	add    %al,(%eax)
c060a863:	00 00                	add    %al,(%eax)
c060a865:	00 00                	add    %al,(%eax)
c060a867:	00 c0                	add    %al,%al
c060a869:	00 00                	add    %al,(%eax)
c060a86b:	00 00                	add    %al,(%eax)
c060a86d:	00 00                	add    %al,(%eax)
c060a86f:	00 e9                	add    %ch,%cl
c060a871:	29 00                	sub    %eax,(%eax)
c060a873:	00 40 00             	add    %al,0x0(%eax)
c060a876:	00 00                	add    %al,(%eax)
c060a878:	03 00                	add    (%eax),%eax
c060a87a:	00 00                	add    %al,(%eax)
c060a87c:	f4                   	hlt    
c060a87d:	29 00                	sub    %eax,(%eax)
c060a87f:	00 40 00             	add    %al,0x0(%eax)
c060a882:	00 00                	add    %al,(%eax)
c060a884:	06                   	push   %es
c060a885:	00 00                	add    %al,(%eax)
c060a887:	00 00                	add    %al,(%eax)
c060a889:	00 00                	add    %al,(%eax)
c060a88b:	00 c0                	add    %al,%al
c060a88d:	00 00                	add    %al,(%eax)
c060a88f:	00 92 00 00 00 00    	add    %dl,0x0(%edx)
c060a895:	00 00                	add    %al,(%eax)
c060a897:	00 e0                	add    %ah,%al
c060a899:	00 00                	add    %al,(%eax)
c060a89b:	00 95 00 00 00 e9    	add    %dl,-0x17000000(%ebp)
c060a8a1:	29 00                	sub    %eax,(%eax)
c060a8a3:	00 40 00             	add    %al,0x0(%eax)
c060a8a6:	00 00                	add    %al,(%eax)
c060a8a8:	03 00                	add    (%eax),%eax
c060a8aa:	00 00                	add    %al,(%eax)
c060a8ac:	f4                   	hlt    
c060a8ad:	29 00                	sub    %eax,(%eax)
c060a8af:	00 40 00             	add    %al,0x0(%eax)
c060a8b2:	00 00                	add    %al,(%eax)
c060a8b4:	06                   	push   %es
c060a8b5:	00 00                	add    %al,(%eax)
c060a8b7:	00 00                	add    %al,(%eax)
c060a8b9:	00 00                	add    %al,(%eax)
c060a8bb:	00 c0                	add    %al,%al
c060a8bd:	00 00                	add    %al,(%eax)
c060a8bf:	00 ac 00 00 00 00 00 	add    %ch,0x0(%eax,%eax,1)
c060a8c6:	00 00                	add    %al,(%eax)
c060a8c8:	e0 00                	loopne c060a8ca <.stab+0x492>
c060a8ca:	00 00                	add    %al,(%eax)
c060a8cc:	f7 00 00 00 e9 29    	testl  $0x29e90000,(%eax)
c060a8d2:	00 00                	add    %al,(%eax)
c060a8d4:	40                   	inc    %eax
c060a8d5:	00 00                	add    %al,(%eax)
c060a8d7:	00 03                	add    %al,(%ebx)
c060a8d9:	00 00                	add    %al,(%eax)
c060a8db:	00 f4                	add    %dh,%ah
c060a8dd:	29 00                	sub    %eax,(%eax)
c060a8df:	00 40 00             	add    %al,0x0(%eax)
c060a8e2:	00 00                	add    %al,(%eax)
c060a8e4:	06                   	push   %es
c060a8e5:	00 00                	add    %al,(%eax)
c060a8e7:	00 00                	add    %al,(%eax)
c060a8e9:	00 00                	add    %al,(%eax)
c060a8eb:	00 c0                	add    %al,%al
c060a8ed:	00 00                	add    %al,(%eax)
c060a8ef:	00 fb                	add    %bh,%bl
c060a8f1:	00 00                	add    %al,(%eax)
c060a8f3:	00 00                	add    %al,(%eax)
c060a8f5:	00 00                	add    %al,(%eax)
c060a8f7:	00 e0                	add    %ah,%al
c060a8f9:	00 00                	add    %al,(%eax)
c060a8fb:	00 13                	add    %dl,(%ebx)
c060a8fd:	01 00                	add    %eax,(%eax)
c060a8ff:	00 00                	add    %al,(%eax)
c060a901:	00 00                	add    %al,(%eax)
c060a903:	00 e0                	add    %ah,%al
c060a905:	00 00                	add    %al,(%eax)
c060a907:	00 25 01 00 00 00    	add    %ah,0x1
c060a90d:	2a 00                	sub    (%eax),%al
c060a90f:	00 26                	add    %ah,(%esi)
c060a911:	00 00                	add    %al,(%eax)
c060a913:	00 00                	add    %al,(%eax)
c060a915:	20 60 c0             	and    %ah,-0x40(%eax)
c060a918:	24 2a                	and    $0x2a,%al
c060a91a:	00 00                	add    %al,(%eax)
c060a91c:	26 00 00             	add    %al,%es:(%eax)
c060a91f:	00 40 20             	add    %al,0x20(%eax)
c060a922:	60                   	pusha  
c060a923:	c0 32 2a             	shlb   $0x2a,(%edx)
c060a926:	00 00                	add    %al,(%eax)
c060a928:	24 00                	and    $0x0,%al
c060a92a:	00 00                	add    %al,(%eax)
c060a92c:	b0 1a                	mov    $0x1a,%al
c060a92e:	60                   	pusha  
c060a92f:	c0 4d 2a 00          	rorb   $0x0,0x2a(%ebp)
c060a933:	00 a0 00 00 00 04    	add    %ah,0x4000000(%eax)
c060a939:	00 00                	add    %al,(%eax)
c060a93b:	00 62 2a             	add    %ah,0x2a(%edx)
c060a93e:	00 00                	add    %al,(%eax)
c060a940:	a0 00 00 00 08       	mov    0x8000000,%al
c060a945:	00 00                	add    %al,(%eax)
c060a947:	00 00                	add    %al,(%eax)
c060a949:	00 00                	add    %al,(%eax)
c060a94b:	00 44 00 49          	add    %al,0x49(%eax,%eax,1)
	...
c060a957:	00 44 00 49          	add    %al,0x49(%eax,%eax,1)
c060a95b:	00 03                	add    %al,(%ebx)
c060a95d:	00 00                	add    %al,(%eax)
c060a95f:	00 00                	add    %al,(%eax)
c060a961:	00 00                	add    %al,(%eax)
c060a963:	00 44 00 4d          	add    %al,0x4d(%eax,%eax,1)
c060a967:	00 0b                	add    %cl,(%ebx)
c060a969:	00 00                	add    %al,(%eax)
c060a96b:	00 00                	add    %al,(%eax)
c060a96d:	00 00                	add    %al,(%eax)
c060a96f:	00 44 00 4e          	add    %al,0x4e(%eax,%eax,1)
c060a973:	00 13                	add    %dl,(%ebx)
c060a975:	00 00                	add    %al,(%eax)
c060a977:	00 00                	add    %al,(%eax)
c060a979:	00 00                	add    %al,(%eax)
c060a97b:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c060a97f:	00 51 00             	add    %dl,0x0(%ecx)
c060a982:	00 00                	add    %al,(%eax)
c060a984:	00 00                	add    %al,(%eax)
c060a986:	00 00                	add    %al,(%eax)
c060a988:	44                   	inc    %esp
c060a989:	00 52 00             	add    %dl,0x0(%edx)
c060a98c:	59                   	pop    %ecx
c060a98d:	00 00                	add    %al,(%eax)
c060a98f:	00 00                	add    %al,(%eax)
c060a991:	00 00                	add    %al,(%eax)
c060a993:	00 44 00 55          	add    %al,0x55(%eax,%eax,1)
c060a997:	00 68 00             	add    %ch,0x0(%eax)
c060a99a:	00 00                	add    %al,(%eax)
c060a99c:	00 00                	add    %al,(%eax)
c060a99e:	00 00                	add    %al,(%eax)
c060a9a0:	44                   	inc    %esp
c060a9a1:	00 58 00             	add    %bl,0x0(%eax)
c060a9a4:	6e                   	outsb  %ds:(%esi),(%dx)
c060a9a5:	00 00                	add    %al,(%eax)
c060a9a7:	00 00                	add    %al,(%eax)
c060a9a9:	00 00                	add    %al,(%eax)
c060a9ab:	00 44 00 59          	add    %al,0x59(%eax,%eax,1)
c060a9af:	00 7b 00             	add    %bh,0x0(%ebx)
c060a9b2:	00 00                	add    %al,(%eax)
c060a9b4:	00 00                	add    %al,(%eax)
c060a9b6:	00 00                	add    %al,(%eax)
c060a9b8:	44                   	inc    %esp
c060a9b9:	00 58 00             	add    %bl,0x0(%eax)
c060a9bc:	86 00                	xchg   %al,(%eax)
c060a9be:	00 00                	add    %al,(%eax)
c060a9c0:	00 00                	add    %al,(%eax)
c060a9c2:	00 00                	add    %al,(%eax)
c060a9c4:	44                   	inc    %esp
c060a9c5:	00 69 00             	add    %ch,0x0(%ecx)
c060a9c8:	8c 00                	mov    %es,(%eax)
c060a9ca:	00 00                	add    %al,(%eax)
c060a9cc:	00 00                	add    %al,(%eax)
c060a9ce:	00 00                	add    %al,(%eax)
c060a9d0:	44                   	inc    %esp
c060a9d1:	00 69 00             	add    %ch,0x0(%ecx)
c060a9d4:	9c                   	pushf  
c060a9d5:	00 00                	add    %al,(%eax)
c060a9d7:	00 00                	add    %al,(%eax)
c060a9d9:	00 00                	add    %al,(%eax)
c060a9db:	00 44 00 70          	add    %al,0x70(%eax,%eax,1)
c060a9df:	00 a1 00 00 00 00    	add    %ah,0x0(%ecx)
c060a9e5:	00 00                	add    %al,(%eax)
c060a9e7:	00 44 00 73          	add    %al,0x73(%eax,%eax,1)
c060a9eb:	00 a6 00 00 00 00    	add    %ah,0x0(%esi)
c060a9f1:	00 00                	add    %al,(%eax)
c060a9f3:	00 44 00 73          	add    %al,0x73(%eax,%eax,1)
c060a9f7:	00 ab 00 00 00 00    	add    %ch,0x0(%ebx)
c060a9fd:	00 00                	add    %al,(%eax)
c060a9ff:	00 44 00 73          	add    %al,0x73(%eax,%eax,1)
c060aa03:	00 b0 00 00 00 00    	add    %dh,0x0(%eax)
c060aa09:	00 00                	add    %al,(%eax)
c060aa0b:	00 44 00 73          	add    %al,0x73(%eax,%eax,1)
c060aa0f:	00 b3 00 00 00 00    	add    %dh,0x0(%ebx)
c060aa15:	00 00                	add    %al,(%eax)
c060aa17:	00 44 00 74          	add    %al,0x74(%eax,%eax,1)
c060aa1b:	00 b8 00 00 00 00    	add    %bh,0x0(%eax)
c060aa21:	00 00                	add    %al,(%eax)
c060aa23:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c060aa27:	00 be 00 00 00 00    	add    %bh,0x0(%esi)
c060aa2d:	00 00                	add    %al,(%eax)
c060aa2f:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c060aa33:	00 c1                	add    %al,%cl
c060aa35:	00 00                	add    %al,(%eax)
c060aa37:	00 00                	add    %al,(%eax)
c060aa39:	00 00                	add    %al,(%eax)
c060aa3b:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c060aa3f:	00 c3                	add    %al,%bl
c060aa41:	00 00                	add    %al,(%eax)
c060aa43:	00 00                	add    %al,(%eax)
c060aa45:	00 00                	add    %al,(%eax)
c060aa47:	00 44 00 7b          	add    %al,0x7b(%eax,%eax,1)
c060aa4b:	00 c6                	add    %al,%dh
c060aa4d:	00 00                	add    %al,(%eax)
c060aa4f:	00 00                	add    %al,(%eax)
c060aa51:	00 00                	add    %al,(%eax)
c060aa53:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c060aa57:	00 cd                	add    %cl,%ch
c060aa59:	00 00                	add    %al,(%eax)
c060aa5b:	00 00                	add    %al,(%eax)
c060aa5d:	00 00                	add    %al,(%eax)
c060aa5f:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c060aa63:	00 d0                	add    %dl,%al
c060aa65:	00 00                	add    %al,(%eax)
c060aa67:	00 00                	add    %al,(%eax)
c060aa69:	00 00                	add    %al,(%eax)
c060aa6b:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c060aa6f:	00 d9                	add    %bl,%cl
c060aa71:	00 00                	add    %al,(%eax)
c060aa73:	00 00                	add    %al,(%eax)
c060aa75:	00 00                	add    %al,(%eax)
c060aa77:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c060aa7b:	00 de                	add    %bl,%dh
c060aa7d:	00 00                	add    %al,(%eax)
c060aa7f:	00 00                	add    %al,(%eax)
c060aa81:	00 00                	add    %al,(%eax)
c060aa83:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c060aa87:	00 e1                	add    %ah,%cl
c060aa89:	00 00                	add    %al,(%eax)
c060aa8b:	00 00                	add    %al,(%eax)
c060aa8d:	00 00                	add    %al,(%eax)
c060aa8f:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c060aa93:	00 e4                	add    %ah,%ah
c060aa95:	00 00                	add    %al,(%eax)
c060aa97:	00 00                	add    %al,(%eax)
c060aa99:	00 00                	add    %al,(%eax)
c060aa9b:	00 44 00 77          	add    %al,0x77(%eax,%eax,1)
c060aa9f:	00 f6                	add    %dh,%dh
c060aaa1:	00 00                	add    %al,(%eax)
c060aaa3:	00 00                	add    %al,(%eax)
c060aaa5:	00 00                	add    %al,(%eax)
c060aaa7:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c060aaab:	00 fb                	add    %bh,%bl
c060aaad:	00 00                	add    %al,(%eax)
c060aaaf:	00 00                	add    %al,(%eax)
c060aab1:	00 00                	add    %al,(%eax)
c060aab3:	00 44 00 77          	add    %al,0x77(%eax,%eax,1)
c060aab7:	00 fd                	add    %bh,%ch
c060aab9:	00 00                	add    %al,(%eax)
c060aabb:	00 00                	add    %al,(%eax)
c060aabd:	00 00                	add    %al,(%eax)
c060aabf:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c060aac3:	00 01                	add    %al,(%ecx)
c060aac5:	01 00                	add    %eax,(%eax)
c060aac7:	00 00                	add    %al,(%eax)
c060aac9:	00 00                	add    %al,(%eax)
c060aacb:	00 44 00 77          	add    %al,0x77(%eax,%eax,1)
c060aacf:	00 04 01             	add    %al,(%ecx,%eax,1)
c060aad2:	00 00                	add    %al,(%eax)
c060aad4:	00 00                	add    %al,(%eax)
c060aad6:	00 00                	add    %al,(%eax)
c060aad8:	44                   	inc    %esp
c060aad9:	00 79 00             	add    %bh,0x0(%ecx)
c060aadc:	12 01                	adc    (%ecx),%al
c060aade:	00 00                	add    %al,(%eax)
c060aae0:	00 00                	add    %al,(%eax)
c060aae2:	00 00                	add    %al,(%eax)
c060aae4:	44                   	inc    %esp
c060aae5:	00 7d 00             	add    %bh,0x0(%ebp)
c060aae8:	1b 01                	sbb    (%ecx),%eax
c060aaea:	00 00                	add    %al,(%eax)
c060aaec:	00 00                	add    %al,(%eax)
c060aaee:	00 00                	add    %al,(%eax)
c060aaf0:	44                   	inc    %esp
c060aaf1:	00 79 00             	add    %bh,0x0(%ecx)
c060aaf4:	1d 01 00 00 00       	sbb    $0x1,%eax
c060aaf9:	00 00                	add    %al,(%eax)
c060aafb:	00 44 00 79          	add    %al,0x79(%eax,%eax,1)
c060aaff:	00 20                	add    %ah,(%eax)
c060ab01:	01 00                	add    %eax,(%eax)
c060ab03:	00 00                	add    %al,(%eax)
c060ab05:	00 00                	add    %al,(%eax)
c060ab07:	00 44 00 7a          	add    %al,0x7a(%eax,%eax,1)
c060ab0b:	00 23                	add    %ah,(%ebx)
c060ab0d:	01 00                	add    %eax,(%eax)
c060ab0f:	00 00                	add    %al,(%eax)
c060ab11:	00 00                	add    %al,(%eax)
c060ab13:	00 44 00 7a          	add    %al,0x7a(%eax,%eax,1)
c060ab17:	00 26                	add    %ah,(%esi)
c060ab19:	01 00                	add    %eax,(%eax)
c060ab1b:	00 00                	add    %al,(%eax)
c060ab1d:	00 00                	add    %al,(%eax)
c060ab1f:	00 44 00 7e          	add    %al,0x7e(%eax,%eax,1)
c060ab23:	00 2a                	add    %ch,(%edx)
c060ab25:	01 00                	add    %eax,(%eax)
c060ab27:	00 00                	add    %al,(%eax)
c060ab29:	00 00                	add    %al,(%eax)
c060ab2b:	00 44 00 5b          	add    %al,0x5b(%eax,%eax,1)
c060ab2f:	00 30                	add    %dh,(%eax)
c060ab31:	01 00                	add    %eax,(%eax)
c060ab33:	00 00                	add    %al,(%eax)
c060ab35:	00 00                	add    %al,(%eax)
c060ab37:	00 44 00 5c          	add    %al,0x5c(%eax,%eax,1)
c060ab3b:	00 36                	add    %dh,(%esi)
c060ab3d:	01 00                	add    %eax,(%eax)
c060ab3f:	00 00                	add    %al,(%eax)
c060ab41:	00 00                	add    %al,(%eax)
c060ab43:	00 44 00 5e          	add    %al,0x5e(%eax,%eax,1)
c060ab47:	00 3e                	add    %bh,(%esi)
c060ab49:	01 00                	add    %eax,(%eax)
c060ab4b:	00 00                	add    %al,(%eax)
c060ab4d:	00 00                	add    %al,(%eax)
c060ab4f:	00 44 00 5f          	add    %al,0x5f(%eax,%eax,1)
c060ab53:	00 44 01 00          	add    %al,0x0(%ecx,%eax,1)
c060ab57:	00 00                	add    %al,(%eax)
c060ab59:	00 00                	add    %al,(%eax)
c060ab5b:	00 44 00 5d          	add    %al,0x5d(%eax,%eax,1)
c060ab5f:	00 4c 01 00          	add    %cl,0x0(%ecx,%eax,1)
c060ab63:	00 00                	add    %al,(%eax)
c060ab65:	00 00                	add    %al,(%eax)
c060ab67:	00 44 00 69          	add    %al,0x69(%eax,%eax,1)
c060ab6b:	00 4f 01             	add    %cl,0x1(%edi)
c060ab6e:	00 00                	add    %al,(%eax)
c060ab70:	00 00                	add    %al,(%eax)
c060ab72:	00 00                	add    %al,(%eax)
c060ab74:	44                   	inc    %esp
c060ab75:	00 5d 00             	add    %bl,0x0(%ebp)
c060ab78:	53                   	push   %ebx
c060ab79:	01 00                	add    %eax,(%eax)
c060ab7b:	00 00                	add    %al,(%eax)
c060ab7d:	00 00                	add    %al,(%eax)
c060ab7f:	00 44 00 69          	add    %al,0x69(%eax,%eax,1)
c060ab83:	00 56 01             	add    %dl,0x1(%esi)
c060ab86:	00 00                	add    %al,(%eax)
c060ab88:	00 00                	add    %al,(%eax)
c060ab8a:	00 00                	add    %al,(%eax)
c060ab8c:	44                   	inc    %esp
c060ab8d:	00 69 00             	add    %ch,0x0(%ecx)
c060ab90:	66 01 00             	add    %ax,(%eax)
c060ab93:	00 00                	add    %al,(%eax)
c060ab95:	00 00                	add    %al,(%eax)
c060ab97:	00 44 00 6d          	add    %al,0x6d(%eax,%eax,1)
c060ab9b:	00 6b 01             	add    %ch,0x1(%ebx)
c060ab9e:	00 00                	add    %al,(%eax)
c060aba0:	00 00                	add    %al,(%eax)
c060aba2:	00 00                	add    %al,(%eax)
c060aba4:	44                   	inc    %esp
c060aba5:	00 7e 00             	add    %bh,0x0(%esi)
c060aba8:	75 01                	jne    c060abab <.stab+0x773>
c060abaa:	00 00                	add    %al,(%eax)
c060abac:	00 00                	add    %al,(%eax)
c060abae:	00 00                	add    %al,(%eax)
c060abb0:	44                   	inc    %esp
c060abb1:	00 50 00             	add    %dl,0x0(%eax)
c060abb4:	76 01                	jbe    c060abb7 <.stab+0x77f>
c060abb6:	00 00                	add    %al,(%eax)
c060abb8:	00 00                	add    %al,(%eax)
c060abba:	00 00                	add    %al,(%eax)
c060abbc:	44                   	inc    %esp
c060abbd:	00 7e 00             	add    %bh,0x0(%esi)
c060abc0:	78 01                	js     c060abc3 <.stab+0x78b>
c060abc2:	00 00                	add    %al,(%eax)
c060abc4:	00 00                	add    %al,(%eax)
c060abc6:	00 00                	add    %al,(%eax)
c060abc8:	44                   	inc    %esp
c060abc9:	00 5a 00             	add    %bl,0x0(%edx)
c060abcc:	80 01 00             	addb   $0x0,(%ecx)
c060abcf:	00 00                	add    %al,(%eax)
c060abd1:	00 00                	add    %al,(%eax)
c060abd3:	00 44 00 69          	add    %al,0x69(%eax,%eax,1)
c060abd7:	00 83 01 00 00 00    	add    %al,0x1(%ebx)
c060abdd:	00 00                	add    %al,(%eax)
c060abdf:	00 44 00 5a          	add    %al,0x5a(%eax,%eax,1)
c060abe3:	00 87 01 00 00 00    	add    %al,0x1(%edi)
c060abe9:	00 00                	add    %al,(%eax)
c060abeb:	00 44 00 69          	add    %al,0x69(%eax,%eax,1)
c060abef:	00 8a 01 00 00 00    	add    %cl,0x1(%edx)
c060abf5:	00 00                	add    %al,(%eax)
c060abf7:	00 44 00 69          	add    %al,0x69(%eax,%eax,1)
c060abfb:	00 9a 01 00 00 00    	add    %bl,0x1(%edx)
c060ac01:	00 00                	add    %al,(%eax)
c060ac03:	00 44 00 70          	add    %al,0x70(%eax,%eax,1)
c060ac07:	00 9f 01 00 00 00    	add    %bl,0x1(%edi)
c060ac0d:	00 00                	add    %al,(%eax)
c060ac0f:	00 44 00 60          	add    %al,0x60(%eax,%eax,1)
c060ac13:	00 b0 01 00 00 00    	add    %dh,0x1(%eax)
c060ac19:	00 00                	add    %al,(%eax)
c060ac1b:	00 44 00 61          	add    %al,0x61(%eax,%eax,1)
c060ac1f:	00 b3 01 00 00 00    	add    %dh,0x1(%ebx)
c060ac25:	00 00                	add    %al,(%eax)
c060ac27:	00 44 00 60          	add    %al,0x60(%eax,%eax,1)
c060ac2b:	00 b9 01 00 00 00    	add    %bh,0x1(%ecx)
c060ac31:	00 00                	add    %al,(%eax)
c060ac33:	00 44 00 69          	add    %al,0x69(%eax,%eax,1)
c060ac37:	00 bc 01 00 00 71 2a 	add    %bh,0x2a710000(%ecx,%eax,1)
c060ac3e:	00 00                	add    %al,(%eax)
c060ac40:	40                   	inc    %eax
c060ac41:	00 00                	add    %al,(%eax)
c060ac43:	00 00                	add    %al,(%eax)
c060ac45:	00 00                	add    %al,(%eax)
c060ac47:	00 86 2a 00 00 40    	add    %al,0x4000002a(%esi)
c060ac4d:	00 00                	add    %al,(%eax)
c060ac4f:	00 00                	add    %al,(%eax)
c060ac51:	00 00                	add    %al,(%eax)
c060ac53:	00 94 2a 00 00 40 00 	add    %dl,0x400000(%edx,%ebp,1)
c060ac5a:	00 00                	add    %al,(%eax)
c060ac5c:	03 00                	add    (%eax),%eax
c060ac5e:	00 00                	add    %al,(%eax)
c060ac60:	00 00                	add    %al,(%eax)
c060ac62:	00 00                	add    %al,(%eax)
c060ac64:	c0 00 00             	rolb   $0x0,(%eax)
	...
c060ac6f:	00 e0                	add    %ah,%al
c060ac71:	00 00                	add    %al,(%eax)
c060ac73:	00 c8                	add    %cl,%al
c060ac75:	01 00                	add    %eax,(%eax)
c060ac77:	00 00                	add    %al,(%eax)
c060ac79:	00 00                	add    %al,(%eax)
c060ac7b:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c060ac7f:	00 78 1c             	add    %bh,0x1c(%eax)
c060ac82:	60                   	pusha  
c060ac83:	c0                   	.byte 0xc0

Disassembly of section .stabstr:

c060b000 <.stabstr>:
c060b000:	00 69 6e             	add    %ch,0x6e(%ecx)
c060b003:	69 74 2e 63 00 67 63 	imul   $0x63636700,0x63(%esi,%ebp,1),%esi
c060b00a:	63 
c060b00b:	32 5f 63             	xor    0x63(%edi),%bl
c060b00e:	6f                   	outsl  %ds:(%esi),(%dx)
c060b00f:	6d                   	insl   (%dx),%es:(%edi)
c060b010:	70 69                	jo     c060b07b <.stab+0xc43>
c060b012:	6c                   	insb   (%dx),%es:(%edi)
c060b013:	65 64 2e 00 69 6e    	gs fs add %ch,%cs:0x6e(%ecx)
c060b019:	74 3a                	je     c060b055 <.stab+0xc1d>
c060b01b:	74 28                	je     c060b045 <.stab+0xc0d>
c060b01d:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b020:	29 3d 72 28 30 2c    	sub    %edi,0x2c302872
c060b026:	31 29                	xor    %ebp,(%ecx)
c060b028:	3b 2d 32 31 34 37    	cmp    0x37343132,%ebp
c060b02e:	34 38                	xor    $0x38,%al
c060b030:	33 36                	xor    (%esi),%esi
c060b032:	34 38                	xor    $0x38,%al
c060b034:	3b 32                	cmp    (%edx),%esi
c060b036:	31 34 37             	xor    %esi,(%edi,%esi,1)
c060b039:	34 38                	xor    $0x38,%al
c060b03b:	33 36                	xor    (%esi),%esi
c060b03d:	34 37                	xor    $0x37,%al
c060b03f:	3b 00                	cmp    (%eax),%eax
c060b041:	63 68 61             	arpl   %bp,0x61(%eax)
c060b044:	72 3a                	jb     c060b080 <.stab+0xc48>
c060b046:	74 28                	je     c060b070 <.stab+0xc38>
c060b048:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060b04b:	29 3d 72 28 30 2c    	sub    %edi,0x2c302872
c060b051:	32 29                	xor    (%ecx),%ch
c060b053:	3b 30                	cmp    (%eax),%esi
c060b055:	3b 31                	cmp    (%ecx),%esi
c060b057:	32 37                	xor    (%edi),%dh
c060b059:	3b 00                	cmp    (%eax),%eax
c060b05b:	6c                   	insb   (%dx),%es:(%edi)
c060b05c:	6f                   	outsl  %ds:(%esi),(%dx)
c060b05d:	6e                   	outsb  %ds:(%esi),(%dx)
c060b05e:	67 20 69 6e          	and    %ch,0x6e(%bx,%di)
c060b062:	74 3a                	je     c060b09e <.stab+0xc66>
c060b064:	74 28                	je     c060b08e <.stab+0xc56>
c060b066:	30 2c 33             	xor    %ch,(%ebx,%esi,1)
c060b069:	29 3d 72 28 30 2c    	sub    %edi,0x2c302872
c060b06f:	33 29                	xor    (%ecx),%ebp
c060b071:	3b 2d 32 31 34 37    	cmp    0x37343132,%ebp
c060b077:	34 38                	xor    $0x38,%al
c060b079:	33 36                	xor    (%esi),%esi
c060b07b:	34 38                	xor    $0x38,%al
c060b07d:	3b 32                	cmp    (%edx),%esi
c060b07f:	31 34 37             	xor    %esi,(%edi,%esi,1)
c060b082:	34 38                	xor    $0x38,%al
c060b084:	33 36                	xor    (%esi),%esi
c060b086:	34 37                	xor    $0x37,%al
c060b088:	3b 00                	cmp    (%eax),%eax
c060b08a:	75 6e                	jne    c060b0fa <.stab+0xcc2>
c060b08c:	73 69                	jae    c060b0f7 <.stab+0xcbf>
c060b08e:	67 6e                	outsb  %ds:(%si),(%dx)
c060b090:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%ecx)
c060b095:	74 3a                	je     c060b0d1 <.stab+0xc99>
c060b097:	74 28                	je     c060b0c1 <.stab+0xc89>
c060b099:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060b09c:	29 3d 72 28 30 2c    	sub    %edi,0x2c302872
c060b0a2:	34 29                	xor    $0x29,%al
c060b0a4:	3b 30                	cmp    (%eax),%esi
c060b0a6:	3b 34 32             	cmp    (%edx,%esi,1),%esi
c060b0a9:	39 34 39             	cmp    %esi,(%ecx,%edi,1)
c060b0ac:	36 37                	ss aaa 
c060b0ae:	32 39                	xor    (%ecx),%bh
c060b0b0:	35 3b 00 6c 6f       	xor    $0x6f6c003b,%eax
c060b0b5:	6e                   	outsb  %ds:(%esi),(%dx)
c060b0b6:	67 20 75 6e          	and    %dh,0x6e(%di)
c060b0ba:	73 69                	jae    c060b125 <.stab+0xced>
c060b0bc:	67 6e                	outsb  %ds:(%si),(%dx)
c060b0be:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%ecx)
c060b0c3:	74 3a                	je     c060b0ff <.stab+0xcc7>
c060b0c5:	74 28                	je     c060b0ef <.stab+0xcb7>
c060b0c7:	30 2c 35 29 3d 72 28 	xor    %ch,0x28723d29(,%esi,1)
c060b0ce:	30 2c 35 29 3b 30 3b 	xor    %ch,0x3b303b29(,%esi,1)
c060b0d5:	34 32                	xor    $0x32,%al
c060b0d7:	39 34 39             	cmp    %esi,(%ecx,%edi,1)
c060b0da:	36 37                	ss aaa 
c060b0dc:	32 39                	xor    (%ecx),%bh
c060b0de:	35 3b 00 5f 5f       	xor    $0x5f5f003b,%eax
c060b0e3:	69 6e 74 31 32 38 3a 	imul   $0x3a383231,0x74(%esi),%ebp
c060b0ea:	74 28                	je     c060b114 <.stab+0xcdc>
c060b0ec:	30 2c 36             	xor    %ch,(%esi,%esi,1)
c060b0ef:	29 3d 72 28 30 2c    	sub    %edi,0x2c302872
c060b0f5:	36 29 3b             	sub    %edi,%ss:(%ebx)
c060b0f8:	30 3b                	xor    %bh,(%ebx)
c060b0fa:	2d 31 3b 00 5f       	sub    $0x5f003b31,%eax
c060b0ff:	5f                   	pop    %edi
c060b100:	69 6e 74 31 32 38 20 	imul   $0x20383231,0x74(%esi),%ebp
c060b107:	75 6e                	jne    c060b177 <.stab+0xd3f>
c060b109:	73 69                	jae    c060b174 <.stab+0xd3c>
c060b10b:	67 6e                	outsb  %ds:(%si),(%dx)
c060b10d:	65 64 3a 74 28 30    	gs cmp %fs:0x30(%eax,%ebp,1),%dh
c060b113:	2c 37                	sub    $0x37,%al
c060b115:	29 3d 72 28 30 2c    	sub    %edi,0x2c302872
c060b11b:	37                   	aaa    
c060b11c:	29 3b                	sub    %edi,(%ebx)
c060b11e:	30 3b                	xor    %bh,(%ebx)
c060b120:	2d 31 3b 00 6c       	sub    $0x6c003b31,%eax
c060b125:	6f                   	outsl  %ds:(%esi),(%dx)
c060b126:	6e                   	outsb  %ds:(%esi),(%dx)
c060b127:	67 20 6c 6f          	and    %ch,0x6f(%si)
c060b12b:	6e                   	outsb  %ds:(%esi),(%dx)
c060b12c:	67 20 69 6e          	and    %ch,0x6e(%bx,%di)
c060b130:	74 3a                	je     c060b16c <.stab+0xd34>
c060b132:	74 28                	je     c060b15c <.stab+0xd24>
c060b134:	30 2c 38             	xor    %ch,(%eax,%edi,1)
c060b137:	29 3d 72 28 30 2c    	sub    %edi,0x2c302872
c060b13d:	38 29                	cmp    %ch,(%ecx)
c060b13f:	3b 2d 39 32 32 33    	cmp    0x33323239,%ebp
c060b145:	33 37                	xor    (%edi),%esi
c060b147:	32 30                	xor    (%eax),%dh
c060b149:	33 36                	xor    (%esi),%esi
c060b14b:	38 35 34 37 37 35    	cmp    %dh,0x35373734
c060b151:	38 30                	cmp    %dh,(%eax)
c060b153:	38 3b                	cmp    %bh,(%ebx)
c060b155:	39 32                	cmp    %esi,(%edx)
c060b157:	32 33                	xor    (%ebx),%dh
c060b159:	33 37                	xor    (%edi),%esi
c060b15b:	32 30                	xor    (%eax),%dh
c060b15d:	33 36                	xor    (%esi),%esi
c060b15f:	38 35 34 37 37 35    	cmp    %dh,0x35373734
c060b165:	38 30                	cmp    %dh,(%eax)
c060b167:	37                   	aaa    
c060b168:	3b 00                	cmp    (%eax),%eax
c060b16a:	6c                   	insb   (%dx),%es:(%edi)
c060b16b:	6f                   	outsl  %ds:(%esi),(%dx)
c060b16c:	6e                   	outsb  %ds:(%esi),(%dx)
c060b16d:	67 20 6c 6f          	and    %ch,0x6f(%si)
c060b171:	6e                   	outsb  %ds:(%esi),(%dx)
c060b172:	67 20 75 6e          	and    %dh,0x6e(%di)
c060b176:	73 69                	jae    c060b1e1 <.stab+0xda9>
c060b178:	67 6e                	outsb  %ds:(%si),(%dx)
c060b17a:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%ecx)
c060b17f:	74 3a                	je     c060b1bb <.stab+0xd83>
c060b181:	74 28                	je     c060b1ab <.stab+0xd73>
c060b183:	30 2c 39             	xor    %ch,(%ecx,%edi,1)
c060b186:	29 3d 72 28 30 2c    	sub    %edi,0x2c302872
c060b18c:	39 29                	cmp    %ebp,(%ecx)
c060b18e:	3b 30                	cmp    (%eax),%esi
c060b190:	3b 2d 31 3b 00 73    	cmp    0x73003b31,%ebp
c060b196:	68 6f 72 74 20       	push   $0x2074726f
c060b19b:	69 6e 74 3a 74 28 30 	imul   $0x3028743a,0x74(%esi),%ebp
c060b1a2:	2c 31                	sub    $0x31,%al
c060b1a4:	30 29                	xor    %ch,(%ecx)
c060b1a6:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c060b1ab:	31 30                	xor    %esi,(%eax)
c060b1ad:	29 3b                	sub    %edi,(%ebx)
c060b1af:	2d 33 32 37 36       	sub    $0x36373233,%eax
c060b1b4:	38 3b                	cmp    %bh,(%ebx)
c060b1b6:	33 32                	xor    (%edx),%esi
c060b1b8:	37                   	aaa    
c060b1b9:	36 37                	ss aaa 
c060b1bb:	3b 00                	cmp    (%eax),%eax
c060b1bd:	73 68                	jae    c060b227 <.stab+0xdef>
c060b1bf:	6f                   	outsl  %ds:(%esi),(%dx)
c060b1c0:	72 74                	jb     c060b236 <.stab+0xdfe>
c060b1c2:	20 75 6e             	and    %dh,0x6e(%ebp)
c060b1c5:	73 69                	jae    c060b230 <.stab+0xdf8>
c060b1c7:	67 6e                	outsb  %ds:(%si),(%dx)
c060b1c9:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%ecx)
c060b1ce:	74 3a                	je     c060b20a <.stab+0xdd2>
c060b1d0:	74 28                	je     c060b1fa <.stab+0xdc2>
c060b1d2:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b1d5:	31 29                	xor    %ebp,(%ecx)
c060b1d7:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c060b1dc:	31 31                	xor    %esi,(%ecx)
c060b1de:	29 3b                	sub    %edi,(%ebx)
c060b1e0:	30 3b                	xor    %bh,(%ebx)
c060b1e2:	36 35 35 33 35 3b    	ss xor $0x3b353335,%eax
c060b1e8:	00 73 69             	add    %dh,0x69(%ebx)
c060b1eb:	67 6e                	outsb  %ds:(%si),(%dx)
c060b1ed:	65 64 20 63 68       	gs and %ah,%fs:0x68(%ebx)
c060b1f2:	61                   	popa   
c060b1f3:	72 3a                	jb     c060b22f <.stab+0xdf7>
c060b1f5:	74 28                	je     c060b21f <.stab+0xde7>
c060b1f7:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b1fa:	32 29                	xor    (%ecx),%ch
c060b1fc:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c060b201:	31 32                	xor    %esi,(%edx)
c060b203:	29 3b                	sub    %edi,(%ebx)
c060b205:	2d 31 32 38 3b       	sub    $0x3b383231,%eax
c060b20a:	31 32                	xor    %esi,(%edx)
c060b20c:	37                   	aaa    
c060b20d:	3b 00                	cmp    (%eax),%eax
c060b20f:	75 6e                	jne    c060b27f <.stab+0xe47>
c060b211:	73 69                	jae    c060b27c <.stab+0xe44>
c060b213:	67 6e                	outsb  %ds:(%si),(%dx)
c060b215:	65 64 20 63 68       	gs and %ah,%fs:0x68(%ebx)
c060b21a:	61                   	popa   
c060b21b:	72 3a                	jb     c060b257 <.stab+0xe1f>
c060b21d:	74 28                	je     c060b247 <.stab+0xe0f>
c060b21f:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b222:	33 29                	xor    (%ecx),%ebp
c060b224:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c060b229:	31 33                	xor    %esi,(%ebx)
c060b22b:	29 3b                	sub    %edi,(%ebx)
c060b22d:	30 3b                	xor    %bh,(%ebx)
c060b22f:	32 35 35 3b 00 66    	xor    0x66003b35,%dh
c060b235:	6c                   	insb   (%dx),%es:(%edi)
c060b236:	6f                   	outsl  %ds:(%esi),(%dx)
c060b237:	61                   	popa   
c060b238:	74 3a                	je     c060b274 <.stab+0xe3c>
c060b23a:	74 28                	je     c060b264 <.stab+0xe2c>
c060b23c:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b23f:	34 29                	xor    $0x29,%al
c060b241:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c060b246:	31 29                	xor    %ebp,(%ecx)
c060b248:	3b 34 3b             	cmp    (%ebx,%edi,1),%esi
c060b24b:	30 3b                	xor    %bh,(%ebx)
c060b24d:	00 64 6f 75          	add    %ah,0x75(%edi,%ebp,2)
c060b251:	62 6c 65 3a          	bound  %ebp,0x3a(%ebp,%eiz,2)
c060b255:	74 28                	je     c060b27f <.stab+0xe47>
c060b257:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b25a:	35 29 3d 72 28       	xor    $0x28723d29,%eax
c060b25f:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b262:	29 3b                	sub    %edi,(%ebx)
c060b264:	38 3b                	cmp    %bh,(%ebx)
c060b266:	30 3b                	xor    %bh,(%ebx)
c060b268:	00 6c 6f 6e          	add    %ch,0x6e(%edi,%ebp,2)
c060b26c:	67 20 64 6f          	and    %ah,0x6f(%si)
c060b270:	75 62                	jne    c060b2d4 <.stab+0xe9c>
c060b272:	6c                   	insb   (%dx),%es:(%edi)
c060b273:	65 3a 74 28 30       	cmp    %gs:0x30(%eax,%ebp,1),%dh
c060b278:	2c 31                	sub    $0x31,%al
c060b27a:	36 29 3d 72 28 30 2c 	sub    %edi,%ss:0x2c302872
c060b281:	31 29                	xor    %ebp,(%ecx)
c060b283:	3b 31                	cmp    (%ecx),%esi
c060b285:	32 3b                	xor    (%ebx),%bh
c060b287:	30 3b                	xor    %bh,(%ebx)
c060b289:	00 5f 46             	add    %bl,0x46(%edi)
c060b28c:	6c                   	insb   (%dx),%es:(%edi)
c060b28d:	6f                   	outsl  %ds:(%esi),(%dx)
c060b28e:	61                   	popa   
c060b28f:	74 33                	je     c060b2c4 <.stab+0xe8c>
c060b291:	32 3a                	xor    (%edx),%bh
c060b293:	74 28                	je     c060b2bd <.stab+0xe85>
c060b295:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b298:	37                   	aaa    
c060b299:	29 3d 72 28 30 2c    	sub    %edi,0x2c302872
c060b29f:	31 29                	xor    %ebp,(%ecx)
c060b2a1:	3b 34 3b             	cmp    (%ebx,%edi,1),%esi
c060b2a4:	30 3b                	xor    %bh,(%ebx)
c060b2a6:	00 5f 46             	add    %bl,0x46(%edi)
c060b2a9:	6c                   	insb   (%dx),%es:(%edi)
c060b2aa:	6f                   	outsl  %ds:(%esi),(%dx)
c060b2ab:	61                   	popa   
c060b2ac:	74 36                	je     c060b2e4 <.stab+0xeac>
c060b2ae:	34 3a                	xor    $0x3a,%al
c060b2b0:	74 28                	je     c060b2da <.stab+0xea2>
c060b2b2:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b2b5:	38 29                	cmp    %ch,(%ecx)
c060b2b7:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c060b2bc:	31 29                	xor    %ebp,(%ecx)
c060b2be:	3b 38                	cmp    (%eax),%edi
c060b2c0:	3b 30                	cmp    (%eax),%esi
c060b2c2:	3b 00                	cmp    (%eax),%eax
c060b2c4:	5f                   	pop    %edi
c060b2c5:	46                   	inc    %esi
c060b2c6:	6c                   	insb   (%dx),%es:(%edi)
c060b2c7:	6f                   	outsl  %ds:(%esi),(%dx)
c060b2c8:	61                   	popa   
c060b2c9:	74 31                	je     c060b2fc <.stab+0xec4>
c060b2cb:	32 38                	xor    (%eax),%bh
c060b2cd:	3a 74 28 30          	cmp    0x30(%eax,%ebp,1),%dh
c060b2d1:	2c 31                	sub    $0x31,%al
c060b2d3:	39 29                	cmp    %ebp,(%ecx)
c060b2d5:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c060b2da:	31 29                	xor    %ebp,(%ecx)
c060b2dc:	3b 31                	cmp    (%ecx),%esi
c060b2de:	36 3b 30             	cmp    %ss:(%eax),%esi
c060b2e1:	3b 00                	cmp    (%eax),%eax
c060b2e3:	5f                   	pop    %edi
c060b2e4:	46                   	inc    %esi
c060b2e5:	6c                   	insb   (%dx),%es:(%edi)
c060b2e6:	6f                   	outsl  %ds:(%esi),(%dx)
c060b2e7:	61                   	popa   
c060b2e8:	74 33                	je     c060b31d <.stab+0xee5>
c060b2ea:	32 78 3a             	xor    0x3a(%eax),%bh
c060b2ed:	74 28                	je     c060b317 <.stab+0xedf>
c060b2ef:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060b2f2:	30 29                	xor    %ch,(%ecx)
c060b2f4:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c060b2f9:	31 29                	xor    %ebp,(%ecx)
c060b2fb:	3b 38                	cmp    (%eax),%edi
c060b2fd:	3b 30                	cmp    (%eax),%esi
c060b2ff:	3b 00                	cmp    (%eax),%eax
c060b301:	5f                   	pop    %edi
c060b302:	46                   	inc    %esi
c060b303:	6c                   	insb   (%dx),%es:(%edi)
c060b304:	6f                   	outsl  %ds:(%esi),(%dx)
c060b305:	61                   	popa   
c060b306:	74 36                	je     c060b33e <.stab+0xf06>
c060b308:	34 78                	xor    $0x78,%al
c060b30a:	3a 74 28 30          	cmp    0x30(%eax,%ebp,1),%dh
c060b30e:	2c 32                	sub    $0x32,%al
c060b310:	31 29                	xor    %ebp,(%ecx)
c060b312:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c060b317:	31 29                	xor    %ebp,(%ecx)
c060b319:	3b 31                	cmp    (%ecx),%esi
c060b31b:	32 3b                	xor    (%ebx),%bh
c060b31d:	30 3b                	xor    %bh,(%ebx)
c060b31f:	00 5f 44             	add    %bl,0x44(%edi)
c060b322:	65 63 69 6d          	arpl   %bp,%gs:0x6d(%ecx)
c060b326:	61                   	popa   
c060b327:	6c                   	insb   (%dx),%es:(%edi)
c060b328:	33 32                	xor    (%edx),%esi
c060b32a:	3a 74 28 30          	cmp    0x30(%eax,%ebp,1),%dh
c060b32e:	2c 32                	sub    $0x32,%al
c060b330:	32 29                	xor    (%ecx),%ch
c060b332:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c060b337:	31 29                	xor    %ebp,(%ecx)
c060b339:	3b 34 3b             	cmp    (%ebx,%edi,1),%esi
c060b33c:	30 3b                	xor    %bh,(%ebx)
c060b33e:	00 5f 44             	add    %bl,0x44(%edi)
c060b341:	65 63 69 6d          	arpl   %bp,%gs:0x6d(%ecx)
c060b345:	61                   	popa   
c060b346:	6c                   	insb   (%dx),%es:(%edi)
c060b347:	36 34 3a             	ss xor $0x3a,%al
c060b34a:	74 28                	je     c060b374 <.stab+0xf3c>
c060b34c:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060b34f:	33 29                	xor    (%ecx),%ebp
c060b351:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c060b356:	31 29                	xor    %ebp,(%ecx)
c060b358:	3b 38                	cmp    (%eax),%edi
c060b35a:	3b 30                	cmp    (%eax),%esi
c060b35c:	3b 00                	cmp    (%eax),%eax
c060b35e:	5f                   	pop    %edi
c060b35f:	44                   	inc    %esp
c060b360:	65 63 69 6d          	arpl   %bp,%gs:0x6d(%ecx)
c060b364:	61                   	popa   
c060b365:	6c                   	insb   (%dx),%es:(%edi)
c060b366:	31 32                	xor    %esi,(%edx)
c060b368:	38 3a                	cmp    %bh,(%edx)
c060b36a:	74 28                	je     c060b394 <.stab+0xf5c>
c060b36c:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060b36f:	34 29                	xor    $0x29,%al
c060b371:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c060b376:	31 29                	xor    %ebp,(%ecx)
c060b378:	3b 31                	cmp    (%ecx),%esi
c060b37a:	36 3b 30             	cmp    %ss:(%eax),%esi
c060b37d:	3b 00                	cmp    (%eax),%eax
c060b37f:	76 6f                	jbe    c060b3f0 <.stab+0xfb8>
c060b381:	69 64 3a 74 28 30 2c 	imul   $0x322c3028,0x74(%edx,%edi,1),%esp
c060b388:	32 
c060b389:	35 29 3d 28 30       	xor    $0x30283d29,%eax
c060b38e:	2c 32                	sub    $0x32,%al
c060b390:	35 29 00 2e 2e       	xor    $0x2e2e0029,%eax
c060b395:	2f                   	das    
c060b396:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c060b39d:	2f                   	das    
c060b39e:	69 6e 69 74 2e 68 00 	imul   $0x682e74,0x69(%esi),%ebp
c060b3a5:	2e 2e 2f             	cs cs das 
c060b3a8:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c060b3af:	2f                   	das    
c060b3b0:	6d                   	insl   (%dx),%es:(%edi)
c060b3b1:	61                   	popa   
c060b3b2:	63 72 6f             	arpl   %si,0x6f(%edx)
c060b3b5:	2e 68 00 62 79 74    	cs push $0x74796200
c060b3bb:	65 3a 74 28 32       	cmp    %gs:0x32(%eax,%ebp,1),%dh
c060b3c0:	2c 31                	sub    $0x31,%al
c060b3c2:	29 3d 28 30 2c 31    	sub    %edi,0x312c3028
c060b3c8:	33 29                	xor    (%ecx),%ebp
c060b3ca:	00 75 69             	add    %dh,0x69(%ebp)
c060b3cd:	6e                   	outsb  %ds:(%esi),(%dx)
c060b3ce:	74 38                	je     c060b408 <.stab+0xfd0>
c060b3d0:	3a 74 28 32          	cmp    0x32(%eax,%ebp,1),%dh
c060b3d4:	2c 32                	sub    $0x32,%al
c060b3d6:	29 3d 28 30 2c 31    	sub    %edi,0x312c3028
c060b3dc:	33 29                	xor    (%ecx),%ebp
c060b3de:	00 75 69             	add    %dh,0x69(%ebp)
c060b3e1:	6e                   	outsb  %ds:(%esi),(%dx)
c060b3e2:	74 31                	je     c060b415 <.stab+0xfdd>
c060b3e4:	36 3a 74 28 32       	cmp    %ss:0x32(%eax,%ebp,1),%dh
c060b3e9:	2c 33                	sub    $0x33,%al
c060b3eb:	29 3d 28 30 2c 31    	sub    %edi,0x312c3028
c060b3f1:	31 29                	xor    %ebp,(%ecx)
c060b3f3:	00 75 69             	add    %dh,0x69(%ebp)
c060b3f6:	6e                   	outsb  %ds:(%esi),(%dx)
c060b3f7:	74 33                	je     c060b42c <.stab+0xff4>
c060b3f9:	32 3a                	xor    (%edx),%bh
c060b3fb:	74 28                	je     c060b425 <.stab+0xfed>
c060b3fd:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060b400:	29 3d 28 30 2c 34    	sub    %edi,0x342c3028
c060b406:	29 00                	sub    %eax,(%eax)
c060b408:	75 69                	jne    c060b473 <.stab+0x103b>
c060b40a:	6e                   	outsb  %ds:(%esi),(%dx)
c060b40b:	74 36                	je     c060b443 <.stab+0x100b>
c060b40d:	34 3a                	xor    $0x3a,%al
c060b40f:	74 28                	je     c060b439 <.stab+0x1001>
c060b411:	32 2c 35 29 3d 28 30 	xor    0x30283d29(,%esi,1),%ch
c060b418:	2c 35                	sub    $0x35,%al
c060b41a:	29 00                	sub    %eax,(%eax)
c060b41c:	75 69                	jne    c060b487 <.stab+0x104f>
c060b41e:	6e                   	outsb  %ds:(%esi),(%dx)
c060b41f:	74 3a                	je     c060b45b <.stab+0x1023>
c060b421:	74 28                	je     c060b44b <.stab+0x1013>
c060b423:	32 2c 36             	xor    (%esi,%esi,1),%ch
c060b426:	29 3d 28 30 2c 34    	sub    %edi,0x342c3028
c060b42c:	29 00                	sub    %eax,(%eax)
c060b42e:	45                   	inc    %ebp
c060b42f:	52                   	push   %edx
c060b430:	52                   	push   %edx
c060b431:	4f                   	dec    %edi
c060b432:	52                   	push   %edx
c060b433:	3a 74 28 32          	cmp    0x32(%eax,%ebp,1),%dh
c060b437:	2c 37                	sub    $0x37,%al
c060b439:	29 3d 28 30 2c 31    	sub    %edi,0x312c3028
c060b43f:	29 00                	sub    %eax,(%eax)
c060b441:	73 69                	jae    c060b4ac <.stab+0x1074>
c060b443:	7a 65                	jp     c060b4aa <.stab+0x1072>
c060b445:	5f                   	pop    %edi
c060b446:	74 3a                	je     c060b482 <.stab+0x104a>
c060b448:	74 28                	je     c060b472 <.stab+0x103a>
c060b44a:	32 2c 38             	xor    (%eax,%edi,1),%ch
c060b44d:	29 3d 28 30 2c 34    	sub    %edi,0x342c3028
c060b453:	29 00                	sub    %eax,(%eax)
c060b455:	44                   	inc    %esp
c060b456:	57                   	push   %edi
c060b457:	4f                   	dec    %edi
c060b458:	52                   	push   %edx
c060b459:	44                   	inc    %esp
c060b45a:	3a 74 28 32          	cmp    0x32(%eax,%ebp,1),%dh
c060b45e:	2c 39                	sub    $0x39,%al
c060b460:	29 3d 28 30 2c 34    	sub    %edi,0x342c3028
c060b466:	29 00                	sub    %eax,(%eax)
c060b468:	61                   	popa   
c060b469:	64 64 72 4f          	fs fs jb c060b4bc <.stab+0x1084>
c060b46d:	63 63 75             	arpl   %sp,0x75(%ebx)
c060b470:	70 79                	jo     c060b4eb <.stab+0x10b3>
c060b472:	3a 74 28 32          	cmp    0x32(%eax,%ebp,1),%dh
c060b476:	2c 31                	sub    $0x31,%al
c060b478:	30 29                	xor    %ch,(%ecx)
c060b47a:	3d 28 32 2c 31       	cmp    $0x312c3228,%eax
c060b47f:	31 29                	xor    %ebp,(%ecx)
c060b481:	3d 73 31 36 73       	cmp    $0x73363173,%eax
c060b486:	74 61                	je     c060b4e9 <.stab+0x10b1>
c060b488:	72 74                	jb     c060b4fe <.stab+0x10c6>
c060b48a:	5f                   	pop    %edi
c060b48b:	61                   	popa   
c060b48c:	64 64 72 3a          	fs fs jb c060b4ca <.stab+0x1092>
c060b490:	28 32                	sub    %dh,(%edx)
c060b492:	2c 34                	sub    $0x34,%al
c060b494:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060b497:	2c 33                	sub    $0x33,%al
c060b499:	32 3b                	xor    (%ebx),%bh
c060b49b:	76 69                	jbe    c060b506 <.stab+0x10ce>
c060b49d:	72 74                	jb     c060b513 <.stab+0x10db>
c060b49f:	75 61                	jne    c060b502 <.stab+0x10ca>
c060b4a1:	6c                   	insb   (%dx),%es:(%edi)
c060b4a2:	5f                   	pop    %edi
c060b4a3:	73 74                	jae    c060b519 <.stab+0x10e1>
c060b4a5:	61                   	popa   
c060b4a6:	72 74                	jb     c060b51c <.stab+0x10e4>
c060b4a8:	5f                   	pop    %edi
c060b4a9:	61                   	popa   
c060b4aa:	64 64 72 3a          	fs fs jb c060b4e8 <.stab+0x10b0>
c060b4ae:	28 32                	sub    %dh,(%edx)
c060b4b0:	2c 34                	sub    $0x34,%al
c060b4b2:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060b4b5:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060b4b8:	32 3b                	xor    (%ebx),%bh
c060b4ba:	73 69                	jae    c060b525 <.stab+0x10ed>
c060b4bc:	7a 65                	jp     c060b523 <.stab+0x10eb>
c060b4be:	3a 28                	cmp    (%eax),%ch
c060b4c0:	32 2c 36             	xor    (%esi,%esi,1),%ch
c060b4c3:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060b4c6:	34 2c                	xor    $0x2c,%al
c060b4c8:	33 31                	xor    (%ecx),%esi
c060b4ca:	3b 69 6e             	cmp    0x6e(%ecx),%ebp
c060b4cd:	5f                   	pop    %edi
c060b4ce:	75 73                	jne    c060b543 <.stab+0x110b>
c060b4d0:	65 3a 28             	cmp    %gs:(%eax),%ch
c060b4d3:	32 2c 36             	xor    (%esi,%esi,1),%ch
c060b4d6:	29 2c 39             	sub    %ebp,(%ecx,%edi,1)
c060b4d9:	35 2c 31 3b 70       	xor    $0x703b312c,%eax
c060b4de:	72 6f                	jb     c060b54f <.stab+0x1117>
c060b4e0:	67 72 65             	addr16 jb c060b548 <.stab+0x1110>
c060b4e3:	61                   	popa   
c060b4e4:	6d                   	insl   (%dx),%es:(%edi)
c060b4e5:	49                   	dec    %ecx
c060b4e6:	44                   	inc    %esp
c060b4e7:	3a 28                	cmp    (%eax),%ch
c060b4e9:	32 2c 36             	xor    (%esi,%esi,1),%ch
c060b4ec:	29 2c 39             	sub    %ebp,(%ecx,%edi,1)
c060b4ef:	36 2c 33             	ss sub $0x33,%al
c060b4f2:	32 3b                	xor    (%ebx),%bh
c060b4f4:	3b 00                	cmp    (%eax),%eax
c060b4f6:	70 74                	jo     c060b56c <.stab+0x1134>
c060b4f8:	72 5f                	jb     c060b559 <.stab+0x1121>
c060b4fa:	74 3a                	je     c060b536 <.stab+0x10fe>
c060b4fc:	74 28                	je     c060b526 <.stab+0x10ee>
c060b4fe:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c060b501:	32 29                	xor    (%ecx),%ch
c060b503:	3d 28 30 2c 31       	cmp    $0x312c3028,%eax
c060b508:	29 00                	sub    %eax,(%eax)
c060b50a:	74 73                	je     c060b57f <.stab+0x1147>
c060b50c:	73 5f                	jae    c060b56d <.stab+0x1135>
c060b50e:	73 74                	jae    c060b584 <.stab+0x114c>
c060b510:	72 75                	jb     c060b587 <.stab+0x114f>
c060b512:	63 74 3a 54          	arpl   %si,0x54(%edx,%edi,1)
c060b516:	28 32                	sub    %dh,(%edx)
c060b518:	2c 31                	sub    $0x31,%al
c060b51a:	33 29                	xor    (%ecx),%ebp
c060b51c:	3d 73 31 32 38       	cmp    $0x38323173,%eax
c060b521:	62 61 63             	bound  %esp,0x63(%ecx)
c060b524:	6b 5f 6c 69          	imul   $0x69,0x6c(%edi),%ebx
c060b528:	6e                   	outsb  %ds:(%esi),(%dx)
c060b529:	6b 3a 28             	imul   $0x28,(%edx),%edi
c060b52c:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b52f:	31 29                	xor    %ebp,(%ecx)
c060b531:	2c 30                	sub    $0x30,%al
c060b533:	2c 31                	sub    $0x31,%al
c060b535:	36 3b 5f 5f          	cmp    %ss:0x5f(%edi),%ebx
c060b539:	62 6c 68 3a          	bound  %ebp,0x3a(%eax,%ebp,2)
c060b53d:	28 30                	sub    %dh,(%eax)
c060b53f:	2c 31                	sub    $0x31,%al
c060b541:	31 29                	xor    %ebp,(%ecx)
c060b543:	2c 31                	sub    $0x31,%al
c060b545:	36 2c 31             	ss sub $0x31,%al
c060b548:	36 3b 65 73          	cmp    %ss:0x73(%ebp),%esp
c060b54c:	70 30                	jo     c060b57e <.stab+0x1146>
c060b54e:	3a 28                	cmp    (%eax),%ch
c060b550:	30 2c 35 29 2c 33 32 	xor    %ch,0x32332c29(,%esi,1)
c060b557:	2c 33                	sub    $0x33,%al
c060b559:	32 3b                	xor    (%ebx),%bh
c060b55b:	73 73                	jae    c060b5d0 <.stab+0x1198>
c060b55d:	30 3a                	xor    %bh,(%edx)
c060b55f:	28 30                	sub    %dh,(%eax)
c060b561:	2c 31                	sub    $0x31,%al
c060b563:	31 29                	xor    %ebp,(%ecx)
c060b565:	2c 36                	sub    $0x36,%al
c060b567:	34 2c                	xor    $0x2c,%al
c060b569:	31 36                	xor    %esi,(%esi)
c060b56b:	3b 5f 5f             	cmp    0x5f(%edi),%ebx
c060b56e:	73 73                	jae    c060b5e3 <.stab+0x11ab>
c060b570:	30 68 3a             	xor    %ch,0x3a(%eax)
c060b573:	28 30                	sub    %dh,(%eax)
c060b575:	2c 31                	sub    $0x31,%al
c060b577:	31 29                	xor    %ebp,(%ecx)
c060b579:	2c 38                	sub    $0x38,%al
c060b57b:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b57e:	36 3b 65 73          	cmp    %ss:0x73(%ebp),%esp
c060b582:	70 31                	jo     c060b5b5 <.stab+0x117d>
c060b584:	3a 28                	cmp    (%eax),%ch
c060b586:	30 2c 35 29 2c 39 36 	xor    %ch,0x36392c29(,%esi,1)
c060b58d:	2c 33                	sub    $0x33,%al
c060b58f:	32 3b                	xor    (%ebx),%bh
c060b591:	73 73                	jae    c060b606 <.stab+0x11ce>
c060b593:	31 3a                	xor    %edi,(%edx)
c060b595:	28 30                	sub    %dh,(%eax)
c060b597:	2c 31                	sub    $0x31,%al
c060b599:	31 29                	xor    %ebp,(%ecx)
c060b59b:	2c 31                	sub    $0x31,%al
c060b59d:	32 38                	xor    (%eax),%bh
c060b59f:	2c 31                	sub    $0x31,%al
c060b5a1:	36 3b 5f 5f          	cmp    %ss:0x5f(%edi),%ebx
c060b5a5:	73 73                	jae    c060b61a <.stab+0x11e2>
c060b5a7:	31 68 3a             	xor    %ebp,0x3a(%eax)
c060b5aa:	28 30                	sub    %dh,(%eax)
c060b5ac:	2c 31                	sub    $0x31,%al
c060b5ae:	31 29                	xor    %ebp,(%ecx)
c060b5b0:	2c 31                	sub    $0x31,%al
c060b5b2:	34 34                	xor    $0x34,%al
c060b5b4:	2c 31                	sub    $0x31,%al
c060b5b6:	36 3b 65 73          	cmp    %ss:0x73(%ebp),%esp
c060b5ba:	70 32                	jo     c060b5ee <.stab+0x11b6>
c060b5bc:	3a 28                	cmp    (%eax),%ch
c060b5be:	30 2c 35 29 2c 31 36 	xor    %ch,0x36312c29(,%esi,1)
c060b5c5:	30 2c 33             	xor    %ch,(%ebx,%esi,1)
c060b5c8:	32 3b                	xor    (%ebx),%bh
c060b5ca:	73 73                	jae    c060b63f <.stab+0x1207>
c060b5cc:	32 3a                	xor    (%edx),%bh
c060b5ce:	28 30                	sub    %dh,(%eax)
c060b5d0:	2c 31                	sub    $0x31,%al
c060b5d2:	31 29                	xor    %ebp,(%ecx)
c060b5d4:	2c 31                	sub    $0x31,%al
c060b5d6:	39 32                	cmp    %esi,(%edx)
c060b5d8:	2c 31                	sub    $0x31,%al
c060b5da:	36 3b 5f 5f          	cmp    %ss:0x5f(%edi),%ebx
c060b5de:	73 73                	jae    c060b653 <.stab+0x121b>
c060b5e0:	32 68 3a             	xor    0x3a(%eax),%ch
c060b5e3:	28 30                	sub    %dh,(%eax)
c060b5e5:	2c 31                	sub    $0x31,%al
c060b5e7:	31 29                	xor    %ebp,(%ecx)
c060b5e9:	2c 32                	sub    $0x32,%al
c060b5eb:	30 38                	xor    %bh,(%eax)
c060b5ed:	2c 31                	sub    $0x31,%al
c060b5ef:	36 3b 5f 5f          	cmp    %ss:0x5f(%edi),%ebx
c060b5f3:	63 72 33             	arpl   %si,0x33(%edx)
c060b5f6:	3a 28                	cmp    (%eax),%ch
c060b5f8:	30 2c 35 29 2c 32 32 	xor    %ch,0x32322c29(,%esi,1)
c060b5ff:	34 2c                	xor    $0x2c,%al
c060b601:	33 32                	xor    (%edx),%esi
c060b603:	3b 65 69             	cmp    0x69(%ebp),%esp
c060b606:	70 3a                	jo     c060b642 <.stab+0x120a>
c060b608:	28 30                	sub    %dh,(%eax)
c060b60a:	2c 35                	sub    $0x35,%al
c060b60c:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060b60f:	35 36 2c 33 32       	xor    $0x32332c36,%eax
c060b614:	3b 65 66             	cmp    0x66(%ebp),%esp
c060b617:	6c                   	insb   (%dx),%es:(%edi)
c060b618:	61                   	popa   
c060b619:	67 73 3a             	addr16 jae c060b656 <.stab+0x121e>
c060b61c:	28 30                	sub    %dh,(%eax)
c060b61e:	2c 35                	sub    $0x35,%al
c060b620:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060b623:	38 38                	cmp    %bh,(%eax)
c060b625:	2c 33                	sub    $0x33,%al
c060b627:	32 3b                	xor    (%ebx),%bh
c060b629:	65 61                	gs popa 
c060b62b:	78 3a                	js     c060b667 <.stab+0x122f>
c060b62d:	28 30                	sub    %dh,(%eax)
c060b62f:	2c 35                	sub    $0x35,%al
c060b631:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060b634:	32 30                	xor    (%eax),%dh
c060b636:	2c 33                	sub    $0x33,%al
c060b638:	32 3b                	xor    (%ebx),%bh
c060b63a:	65 63 78 3a          	arpl   %di,%gs:0x3a(%eax)
c060b63e:	28 30                	sub    %dh,(%eax)
c060b640:	2c 35                	sub    $0x35,%al
c060b642:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060b645:	35 32 2c 33 32       	xor    $0x32332c32,%eax
c060b64a:	3b 65 64             	cmp    0x64(%ebp),%esp
c060b64d:	78 3a                	js     c060b689 <.stab+0x1251>
c060b64f:	28 30                	sub    %dh,(%eax)
c060b651:	2c 35                	sub    $0x35,%al
c060b653:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060b656:	38 34 2c             	cmp    %dh,(%esp,%ebp,1)
c060b659:	33 32                	xor    (%edx),%esi
c060b65b:	3b 65 62             	cmp    0x62(%ebp),%esp
c060b65e:	78 3a                	js     c060b69a <.stab+0x1262>
c060b660:	28 30                	sub    %dh,(%eax)
c060b662:	2c 35                	sub    $0x35,%al
c060b664:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060b667:	31 36                	xor    %esi,(%esi)
c060b669:	2c 33                	sub    $0x33,%al
c060b66b:	32 3b                	xor    (%ebx),%bh
c060b66d:	65 73 70             	gs jae c060b6e0 <.stab+0x12a8>
c060b670:	3a 28                	cmp    (%eax),%ch
c060b672:	30 2c 35 29 2c 34 34 	xor    %ch,0x34342c29(,%esi,1)
c060b679:	38 2c 33             	cmp    %ch,(%ebx,%esi,1)
c060b67c:	32 3b                	xor    (%ebx),%bh
c060b67e:	65 62 70 3a          	bound  %esi,%gs:0x3a(%eax)
c060b682:	28 30                	sub    %dh,(%eax)
c060b684:	2c 35                	sub    $0x35,%al
c060b686:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060b689:	38 30                	cmp    %dh,(%eax)
c060b68b:	2c 33                	sub    $0x33,%al
c060b68d:	32 3b                	xor    (%ebx),%bh
c060b68f:	65 73 69             	gs jae c060b6fb <.stab+0x12c3>
c060b692:	3a 28                	cmp    (%eax),%ch
c060b694:	30 2c 35 29 2c 35 31 	xor    %ch,0x31352c29(,%esi,1)
c060b69b:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060b69e:	32 3b                	xor    (%ebx),%bh
c060b6a0:	65 64 69 3a 28 30 2c 	gs imul $0x352c3028,%fs:(%edx),%edi
c060b6a7:	35 
c060b6a8:	29 2c 35 34 34 2c 33 	sub    %ebp,0x332c3434(,%esi,1)
c060b6af:	32 3b                	xor    (%ebx),%bh
c060b6b1:	65 73 3a             	gs jae c060b6ee <.stab+0x12b6>
c060b6b4:	28 30                	sub    %dh,(%eax)
c060b6b6:	2c 31                	sub    $0x31,%al
c060b6b8:	31 29                	xor    %ebp,(%ecx)
c060b6ba:	2c 35                	sub    $0x35,%al
c060b6bc:	37                   	aaa    
c060b6bd:	36 2c 31             	ss sub $0x31,%al
c060b6c0:	36 3b 5f 5f          	cmp    %ss:0x5f(%edi),%ebx
c060b6c4:	65 73 68             	gs jae c060b72f <.stab+0x12f7>
c060b6c7:	3a 28                	cmp    (%eax),%ch
c060b6c9:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b6cc:	31 29                	xor    %ebp,(%ecx)
c060b6ce:	2c 35                	sub    $0x35,%al
c060b6d0:	39 32                	cmp    %esi,(%edx)
c060b6d2:	2c 31                	sub    $0x31,%al
c060b6d4:	36 3b 63 73          	cmp    %ss:0x73(%ebx),%esp
c060b6d8:	3a 28                	cmp    (%eax),%ch
c060b6da:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b6dd:	31 29                	xor    %ebp,(%ecx)
c060b6df:	2c 36                	sub    $0x36,%al
c060b6e1:	30 38                	xor    %bh,(%eax)
c060b6e3:	2c 31                	sub    $0x31,%al
c060b6e5:	36 3b 5f 5f          	cmp    %ss:0x5f(%edi),%ebx
c060b6e9:	63 73 68             	arpl   %si,0x68(%ebx)
c060b6ec:	3a 28                	cmp    (%eax),%ch
c060b6ee:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b6f1:	31 29                	xor    %ebp,(%ecx)
c060b6f3:	2c 36                	sub    $0x36,%al
c060b6f5:	32 34 2c             	xor    (%esp,%ebp,1),%dh
c060b6f8:	31 36                	xor    %esi,(%esi)
c060b6fa:	3b 73 73             	cmp    0x73(%ebx),%esi
c060b6fd:	3a 28                	cmp    (%eax),%ch
c060b6ff:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b702:	31 29                	xor    %ebp,(%ecx)
c060b704:	2c 36                	sub    $0x36,%al
c060b706:	34 30                	xor    $0x30,%al
c060b708:	2c 31                	sub    $0x31,%al
c060b70a:	36 3b 5f 5f          	cmp    %ss:0x5f(%edi),%ebx
c060b70e:	73 73                	jae    c060b783 <.stab+0x134b>
c060b710:	68 3a 28 30 2c       	push   $0x2c30283a
c060b715:	31 31                	xor    %esi,(%ecx)
c060b717:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060b71a:	35 36 2c 31 36       	xor    $0x36312c36,%eax
c060b71f:	3b 64 73 3a          	cmp    0x3a(%ebx,%esi,2),%esp
c060b723:	28 30                	sub    %dh,(%eax)
c060b725:	2c 31                	sub    $0x31,%al
c060b727:	31 29                	xor    %ebp,(%ecx)
c060b729:	2c 36                	sub    $0x36,%al
c060b72b:	37                   	aaa    
c060b72c:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c060b72f:	36 3b 5f 5f          	cmp    %ss:0x5f(%edi),%ebx
c060b733:	64 73 68             	fs jae c060b79e <.stab+0x1366>
c060b736:	3a 28                	cmp    (%eax),%ch
c060b738:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b73b:	31 29                	xor    %ebp,(%ecx)
c060b73d:	2c 36                	sub    $0x36,%al
c060b73f:	38 38                	cmp    %bh,(%eax)
c060b741:	2c 31                	sub    $0x31,%al
c060b743:	36 3b 66 73          	cmp    %ss:0x73(%esi),%esp
c060b747:	3a 28                	cmp    (%eax),%ch
c060b749:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b74c:	31 29                	xor    %ebp,(%ecx)
c060b74e:	2c 37                	sub    $0x37,%al
c060b750:	30 34 2c             	xor    %dh,(%esp,%ebp,1)
c060b753:	31 36                	xor    %esi,(%esi)
c060b755:	3b 5f 5f             	cmp    0x5f(%edi),%ebx
c060b758:	66 73 68             	data16 jae c060b7c3 <.stab+0x138b>
c060b75b:	3a 28                	cmp    (%eax),%ch
c060b75d:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b760:	31 29                	xor    %ebp,(%ecx)
c060b762:	2c 37                	sub    $0x37,%al
c060b764:	32 30                	xor    (%eax),%dh
c060b766:	2c 31                	sub    $0x31,%al
c060b768:	36 3b 67 73          	cmp    %ss:0x73(%edi),%esp
c060b76c:	3a 28                	cmp    (%eax),%ch
c060b76e:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b771:	31 29                	xor    %ebp,(%ecx)
c060b773:	2c 37                	sub    $0x37,%al
c060b775:	33 36                	xor    (%esi),%esi
c060b777:	2c 31                	sub    $0x31,%al
c060b779:	36 3b 5f 5f          	cmp    %ss:0x5f(%edi),%ebx
c060b77d:	67 73 68             	addr16 jae c060b7e8 <.stab+0x13b0>
c060b780:	3a 28                	cmp    (%eax),%ch
c060b782:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b785:	31 29                	xor    %ebp,(%ecx)
c060b787:	2c 37                	sub    $0x37,%al
c060b789:	35 32 2c 31 36       	xor    $0x36312c32,%eax
c060b78e:	3b 6c 64 74          	cmp    0x74(%esp,%eiz,2),%ebp
c060b792:	3a 28                	cmp    (%eax),%ch
c060b794:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b797:	31 29                	xor    %ebp,(%ecx)
c060b799:	2c 37                	sub    $0x37,%al
c060b79b:	36 38 2c 31          	cmp    %ch,%ss:(%ecx,%esi,1)
c060b79f:	36 3b 5f 5f          	cmp    %ss:0x5f(%edi),%ebx
c060b7a3:	6c                   	insb   (%dx),%es:(%edi)
c060b7a4:	64 74 68             	fs je  c060b80f <.stab+0x13d7>
c060b7a7:	3a 28                	cmp    (%eax),%ch
c060b7a9:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060b7ac:	31 29                	xor    %ebp,(%ecx)
c060b7ae:	2c 37                	sub    $0x37,%al
c060b7b0:	38 34 2c             	cmp    %dh,(%esp,%ebp,1)
c060b7b3:	31 36                	xor    %esi,(%esi)
c060b7b5:	3b 74 72 61          	cmp    0x61(%edx,%esi,2),%esi
c060b7b9:	63 65 3a             	arpl   %sp,0x3a(%ebp)
c060b7bc:	28 30                	sub    %dh,(%eax)
c060b7be:	2c 31                	sub    $0x31,%al
c060b7c0:	31 29                	xor    %ebp,(%ecx)
c060b7c2:	2c 38                	sub    $0x38,%al
c060b7c4:	30 30                	xor    %dh,(%eax)
c060b7c6:	2c 31                	sub    $0x31,%al
c060b7c8:	36 3b 62 69          	cmp    %ss:0x69(%edx),%esp
c060b7cc:	74 6d                	je     c060b83b <.stab+0x1403>
c060b7ce:	61                   	popa   
c060b7cf:	70 3a                	jo     c060b80b <.stab+0x13d3>
c060b7d1:	28 30                	sub    %dh,(%eax)
c060b7d3:	2c 31                	sub    $0x31,%al
c060b7d5:	31 29                	xor    %ebp,(%ecx)
c060b7d7:	2c 38                	sub    $0x38,%al
c060b7d9:	31 36                	xor    %esi,(%esi)
c060b7db:	2c 31                	sub    $0x31,%al
c060b7dd:	36 3b 69 6f          	cmp    %ss:0x6f(%ecx),%ebp
c060b7e1:	5f                   	pop    %edi
c060b7e2:	62 69 74             	bound  %ebp,0x74(%ecx)
c060b7e5:	6d                   	insl   (%dx),%es:(%edi)
c060b7e6:	61                   	popa   
c060b7e7:	70 3a                	jo     c060b823 <.stab+0x13eb>
c060b7e9:	28 32                	sub    %dh,(%edx)
c060b7eb:	2c 31                	sub    $0x31,%al
c060b7ed:	34 29                	xor    $0x29,%al
c060b7ef:	3d 61 72 28 32       	cmp    $0x32287261,%eax
c060b7f4:	2c 31                	sub    $0x31,%al
c060b7f6:	35 29 3d 72 28       	xor    $0x28723d29,%eax
c060b7fb:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c060b7fe:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060b803:	34 32                	xor    $0x32,%al
c060b805:	39 34 39             	cmp    %esi,(%ecx,%edi,1)
c060b808:	36 37                	ss aaa 
c060b80a:	32 39                	xor    (%ecx),%bh
c060b80c:	35 3b 3b 30 3b       	xor    $0x3b303b3b,%eax
c060b811:	30 3b                	xor    %bh,(%ebx)
c060b813:	28 30                	sub    %dh,(%eax)
c060b815:	2c 35                	sub    $0x35,%al
c060b817:	29 2c 38             	sub    %ebp,(%eax,%edi,1)
c060b81a:	33 32                	xor    (%edx),%esi
c060b81c:	2c 33                	sub    $0x33,%al
c060b81e:	32 3b                	xor    (%ebx),%bh
c060b820:	5f                   	pop    %edi
c060b821:	5f                   	pop    %edi
c060b822:	63 61 63             	arpl   %sp,0x63(%ecx)
c060b825:	68 65 6c 69 6e       	push   $0x6e696c65
c060b82a:	65 5f                	gs pop %edi
c060b82c:	66 69 6c 6c 65 72 3a 	imul   $0x3a72,0x65(%esp,%ebp,2),%bp
c060b833:	28 32                	sub    %dh,(%edx)
c060b835:	2c 31                	sub    $0x31,%al
c060b837:	36 29 3d 61 72 28 32 	sub    %edi,%ss:0x32287261
c060b83e:	2c 31                	sub    $0x31,%al
c060b840:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060b845:	34 3b                	xor    $0x3b,%al
c060b847:	28 30                	sub    %dh,(%eax)
c060b849:	2c 35                	sub    $0x35,%al
c060b84b:	29 2c 38             	sub    %ebp,(%eax,%edi,1)
c060b84e:	36 34 2c             	ss xor $0x2c,%al
c060b851:	31 36                	xor    %esi,(%esi)
c060b853:	30 3b                	xor    %bh,(%ebx)
c060b855:	3b 00                	cmp    (%eax),%eax
c060b857:	74 73                	je     c060b8cc <.stab+0x1494>
c060b859:	73 5f                	jae    c060b8ba <.stab+0x1482>
c060b85b:	73 74                	jae    c060b8d1 <.stab+0x1499>
c060b85d:	72 75                	jb     c060b8d4 <.stab+0x149c>
c060b85f:	63 74 3a 74          	arpl   %si,0x74(%edx,%edi,1)
c060b863:	28 32                	sub    %dh,(%edx)
c060b865:	2c 31                	sub    $0x31,%al
c060b867:	37                   	aaa    
c060b868:	29 3d 28 32 2c 31    	sub    %edi,0x312c3228
c060b86e:	33 29                	xor    (%ecx),%ebp
c060b870:	00 74 73 73          	add    %dh,0x73(%ebx,%esi,2)
c060b874:	5f                   	pop    %edi
c060b875:	73 65                	jae    c060b8dc <.stab+0x14a4>
c060b877:	6c                   	insb   (%dx),%es:(%edi)
c060b878:	65 63 74 3a 54       	arpl   %si,%gs:0x54(%edx,%edi,1)
c060b87d:	28 32                	sub    %dh,(%edx)
c060b87f:	2c 31                	sub    $0x31,%al
c060b881:	38 29                	cmp    %ch,(%ecx)
c060b883:	3d 73 38 6c 69       	cmp    $0x696c3873,%eax
c060b888:	6d                   	insl   (%dx),%es:(%edi)
c060b889:	69 74 30 3a 28 32 2c 	imul   $0x332c3228,0x3a(%eax,%esi,1),%esi
c060b890:	33 
c060b891:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060b894:	2c 31                	sub    $0x31,%al
c060b896:	36 3b 62 61          	cmp    %ss:0x61(%edx),%esp
c060b89a:	73 65                	jae    c060b901 <.stab+0x14c9>
c060b89c:	30 3a                	xor    %bh,(%edx)
c060b89e:	28 32                	sub    %dh,(%edx)
c060b8a0:	2c 33                	sub    $0x33,%al
c060b8a2:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060b8a5:	36 2c 31             	ss sub $0x31,%al
c060b8a8:	36 3b 62 61          	cmp    %ss:0x61(%edx),%esp
c060b8ac:	73 65                	jae    c060b913 <.stab+0x14db>
c060b8ae:	31 3a                	xor    %edi,(%edx)
c060b8b0:	28 32                	sub    %dh,(%edx)
c060b8b2:	2c 32                	sub    $0x32,%al
c060b8b4:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060b8b7:	32 2c 38             	xor    (%eax,%edi,1),%ch
c060b8ba:	3b 74 79 70          	cmp    0x70(%ecx,%edi,2),%esi
c060b8be:	65 3a 28             	cmp    %gs:(%eax),%ch
c060b8c1:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060b8c4:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060b8c7:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060b8ca:	3b 73 3a             	cmp    0x3a(%ebx),%esi
c060b8cd:	28 32                	sub    %dh,(%edx)
c060b8cf:	2c 32                	sub    $0x32,%al
c060b8d1:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060b8d4:	34 2c                	xor    $0x2c,%al
c060b8d6:	31 3b                	xor    %edi,(%ebx)
c060b8d8:	64 70 6c             	fs jo  c060b947 <.stab+0x150f>
c060b8db:	3a 28                	cmp    (%eax),%ch
c060b8dd:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060b8e0:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060b8e3:	35 2c 32 3b 70       	xor    $0x703b322c,%eax
c060b8e8:	3a 28                	cmp    (%eax),%ch
c060b8ea:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060b8ed:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060b8f0:	37                   	aaa    
c060b8f1:	2c 31                	sub    $0x31,%al
c060b8f3:	3b 6c 69 6d          	cmp    0x6d(%ecx,%ebp,2),%ebp
c060b8f7:	69 74 31 3a 28 32 2c 	imul   $0x322c3228,0x3a(%ecx,%esi,1),%esi
c060b8fe:	32 
c060b8ff:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060b902:	38 2c 34             	cmp    %ch,(%esp,%esi,1)
c060b905:	3b 61 76             	cmp    0x76(%ecx),%esp
c060b908:	6c                   	insb   (%dx),%es:(%edi)
c060b909:	3a 28                	cmp    (%eax),%ch
c060b90b:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060b90e:	29 2c 35 32 2c 31 3b 	sub    %ebp,0x3b312c32(,%esi,1)
c060b915:	72 65                	jb     c060b97c <.stab+0x1544>
c060b917:	73 65                	jae    c060b97e <.stab+0x1546>
c060b919:	72 76                	jb     c060b991 <.stab+0x1559>
c060b91b:	65 30 3a             	xor    %bh,%gs:(%edx)
c060b91e:	28 32                	sub    %dh,(%edx)
c060b920:	2c 32                	sub    $0x32,%al
c060b922:	29 2c 35 33 2c 31 3b 	sub    %ebp,0x3b312c33(,%esi,1)
c060b929:	64 5f                	fs pop %edi
c060b92b:	62 3a                	bound  %edi,(%edx)
c060b92d:	28 32                	sub    %dh,(%edx)
c060b92f:	2c 32                	sub    $0x32,%al
c060b931:	29 2c 35 34 2c 31 3b 	sub    %ebp,0x3b312c34(,%esi,1)
c060b938:	67 3a 28             	cmp    (%bx,%si),%ch
c060b93b:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060b93e:	29 2c 35 35 2c 31 3b 	sub    %ebp,0x3b312c35(,%esi,1)
c060b945:	62 61 73             	bound  %esp,0x73(%ecx)
c060b948:	65 32 3a             	xor    %gs:(%edx),%bh
c060b94b:	28 32                	sub    %dh,(%edx)
c060b94d:	2c 32                	sub    $0x32,%al
c060b94f:	29 2c 35 36 2c 38 3b 	sub    %ebp,0x3b382c36(,%esi,1)
c060b956:	3b 00                	cmp    (%eax),%eax
c060b958:	74 73                	je     c060b9cd <.stab+0x1595>
c060b95a:	73 5f                	jae    c060b9bb <.stab+0x1583>
c060b95c:	73 65                	jae    c060b9c3 <.stab+0x158b>
c060b95e:	6c                   	insb   (%dx),%es:(%edi)
c060b95f:	65 63 74 3a 74       	arpl   %si,%gs:0x74(%edx,%edi,1)
c060b964:	28 32                	sub    %dh,(%edx)
c060b966:	2c 31                	sub    $0x31,%al
c060b968:	39 29                	cmp    %ebp,(%ecx)
c060b96a:	3d 28 32 2c 31       	cmp    $0x312c3228,%eax
c060b96f:	38 29                	cmp    %ch,(%ecx)
c060b971:	00 6d 65             	add    %ch,0x65(%ebp)
c060b974:	6d                   	insl   (%dx),%es:(%edi)
c060b975:	5f                   	pop    %edi
c060b976:	62 6c 6f 63          	bound  %ebp,0x63(%edi,%ebp,2)
c060b97a:	6b 3a 54             	imul   $0x54,(%edx),%edi
c060b97d:	28 31                	sub    %dh,(%ecx)
c060b97f:	2c 31                	sub    $0x31,%al
c060b981:	29 3d 73 31 32 73    	sub    %edi,0x73323173
c060b987:	74 61                	je     c060b9ea <.stab+0x15b2>
c060b989:	72 74                	jb     c060b9ff <.stab+0x15c7>
c060b98b:	3a 28                	cmp    (%eax),%ch
c060b98d:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c060b990:	32 29                	xor    (%ecx),%ch
c060b992:	2c 30                	sub    $0x30,%al
c060b994:	2c 33                	sub    $0x33,%al
c060b996:	32 3b                	xor    (%ebx),%bh
c060b998:	65 6e                	outsb  %gs:(%esi),(%dx)
c060b99a:	64 3a 28             	cmp    %fs:(%eax),%ch
c060b99d:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c060b9a0:	32 29                	xor    (%ecx),%ch
c060b9a2:	2c 33                	sub    $0x33,%al
c060b9a4:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060b9a7:	32 3b                	xor    (%ebx),%bh
c060b9a9:	73 69                	jae    c060ba14 <.stab+0x15dc>
c060b9ab:	7a 65                	jp     c060ba12 <.stab+0x15da>
c060b9ad:	3a 28                	cmp    (%eax),%ch
c060b9af:	32 2c 36             	xor    (%esi,%esi,1),%ch
c060b9b2:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060b9b5:	34 2c                	xor    $0x2c,%al
c060b9b7:	33 32                	xor    (%edx),%esi
c060b9b9:	3b 3b                	cmp    (%ebx),%edi
c060b9bb:	00 6d 65             	add    %ch,0x65(%ebp)
c060b9be:	6d                   	insl   (%dx),%es:(%edi)
c060b9bf:	5f                   	pop    %edi
c060b9c0:	62 6c 6f 63          	bound  %ebp,0x63(%edi,%ebp,2)
c060b9c4:	6b 3a 74             	imul   $0x74,(%edx),%edi
c060b9c7:	28 31                	sub    %dh,(%ecx)
c060b9c9:	2c 32                	sub    $0x32,%al
c060b9cb:	29 3d 28 31 2c 31    	sub    %edi,0x312c3128
c060b9d1:	29 00                	sub    %eax,(%eax)
c060b9d3:	2e 2e 2f             	cs cs das 
c060b9d6:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c060b9dd:	2f                   	das    
c060b9de:	73 79                	jae    c060ba59 <.stab+0x1621>
c060b9e0:	73 5f                	jae    c060ba41 <.stab+0x1609>
c060b9e2:	73 74                	jae    c060ba58 <.stab+0x1620>
c060b9e4:	72 75                	jb     c060ba5b <.stab+0x1623>
c060b9e6:	63 74 2e 68          	arpl   %si,0x68(%esi,%ebp,1)
c060b9ea:	00 2e                	add    %ch,(%esi)
c060b9ec:	2e 2f                	cs das 
c060b9ee:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c060b9f5:	2f                   	das    
c060b9f6:	74 69                	je     c060ba61 <.stab+0x1629>
c060b9f8:	6d                   	insl   (%dx),%es:(%edi)
c060b9f9:	65 2e 68 00 74 69 6d 	gs cs push $0x6d697400
c060ba00:	65 5f                	gs pop %edi
c060ba02:	74 3a                	je     c060ba3e <.stab+0x1606>
c060ba04:	74 28                	je     c060ba2e <.stab+0x15f6>
c060ba06:	34 2c                	xor    $0x2c,%al
c060ba08:	31 29                	xor    %ebp,(%ecx)
c060ba0a:	3d 28 30 2c 35       	cmp    $0x352c3028,%eax
c060ba0f:	29 00                	sub    %eax,(%eax)
c060ba11:	74 6d                	je     c060ba80 <.stab+0x1648>
c060ba13:	3a 54 28 34          	cmp    0x34(%eax,%ebp,1),%dl
c060ba17:	2c 32                	sub    $0x32,%al
c060ba19:	29 3d 73 33 36 74    	sub    %edi,0x74363373
c060ba1f:	6d                   	insl   (%dx),%es:(%edi)
c060ba20:	5f                   	pop    %edi
c060ba21:	73 65                	jae    c060ba88 <.stab+0x1650>
c060ba23:	63 3a                	arpl   %di,(%edx)
c060ba25:	28 30                	sub    %dh,(%eax)
c060ba27:	2c 31                	sub    $0x31,%al
c060ba29:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060ba2c:	2c 33                	sub    $0x33,%al
c060ba2e:	32 3b                	xor    (%ebx),%bh
c060ba30:	74 6d                	je     c060ba9f <.stab+0x1667>
c060ba32:	5f                   	pop    %edi
c060ba33:	6d                   	insl   (%dx),%es:(%edi)
c060ba34:	69 6e 3a 28 30 2c 31 	imul   $0x312c3028,0x3a(%esi),%ebp
c060ba3b:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060ba3e:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060ba41:	32 3b                	xor    (%ebx),%bh
c060ba43:	74 6d                	je     c060bab2 <.stab+0x167a>
c060ba45:	5f                   	pop    %edi
c060ba46:	68 6f 75 72 3a       	push   $0x3a72756f
c060ba4b:	28 30                	sub    %dh,(%eax)
c060ba4d:	2c 31                	sub    $0x31,%al
c060ba4f:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060ba52:	34 2c                	xor    $0x2c,%al
c060ba54:	33 32                	xor    (%edx),%esi
c060ba56:	3b 74 6d 5f          	cmp    0x5f(%ebp,%ebp,2),%esi
c060ba5a:	6d                   	insl   (%dx),%es:(%edi)
c060ba5b:	64 61                	fs popa 
c060ba5d:	79 3a                	jns    c060ba99 <.stab+0x1661>
c060ba5f:	28 30                	sub    %dh,(%eax)
c060ba61:	2c 31                	sub    $0x31,%al
c060ba63:	29 2c 39             	sub    %ebp,(%ecx,%edi,1)
c060ba66:	36 2c 33             	ss sub $0x33,%al
c060ba69:	32 3b                	xor    (%ebx),%bh
c060ba6b:	74 6d                	je     c060bada <.stab+0x16a2>
c060ba6d:	5f                   	pop    %edi
c060ba6e:	6d                   	insl   (%dx),%es:(%edi)
c060ba6f:	6f                   	outsl  %ds:(%esi),(%dx)
c060ba70:	6e                   	outsb  %ds:(%esi),(%dx)
c060ba71:	3a 28                	cmp    (%eax),%ch
c060ba73:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060ba76:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060ba79:	32 38                	xor    (%eax),%bh
c060ba7b:	2c 33                	sub    $0x33,%al
c060ba7d:	32 3b                	xor    (%ebx),%bh
c060ba7f:	74 6d                	je     c060baee <.stab+0x16b6>
c060ba81:	5f                   	pop    %edi
c060ba82:	79 65                	jns    c060bae9 <.stab+0x16b1>
c060ba84:	61                   	popa   
c060ba85:	72 3a                	jb     c060bac1 <.stab+0x1689>
c060ba87:	28 30                	sub    %dh,(%eax)
c060ba89:	2c 31                	sub    $0x31,%al
c060ba8b:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060ba8e:	36 30 2c 33          	xor    %ch,%ss:(%ebx,%esi,1)
c060ba92:	32 3b                	xor    (%ebx),%bh
c060ba94:	74 6d                	je     c060bb03 <.stab+0x16cb>
c060ba96:	5f                   	pop    %edi
c060ba97:	77 64                	ja     c060bafd <.stab+0x16c5>
c060ba99:	61                   	popa   
c060ba9a:	79 3a                	jns    c060bad6 <.stab+0x169e>
c060ba9c:	28 30                	sub    %dh,(%eax)
c060ba9e:	2c 31                	sub    $0x31,%al
c060baa0:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060baa3:	39 32                	cmp    %esi,(%edx)
c060baa5:	2c 33                	sub    $0x33,%al
c060baa7:	32 3b                	xor    (%ebx),%bh
c060baa9:	74 6d                	je     c060bb18 <.stab+0x16e0>
c060baab:	5f                   	pop    %edi
c060baac:	79 64                	jns    c060bb12 <.stab+0x16da>
c060baae:	61                   	popa   
c060baaf:	79 3a                	jns    c060baeb <.stab+0x16b3>
c060bab1:	28 30                	sub    %dh,(%eax)
c060bab3:	2c 31                	sub    $0x31,%al
c060bab5:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060bab8:	32 34 2c             	xor    (%esp,%ebp,1),%dh
c060babb:	33 32                	xor    (%edx),%esi
c060babd:	3b 74 6d 5f          	cmp    0x5f(%ebp,%ebp,2),%esi
c060bac1:	69 73 64 73 74 3a 28 	imul   $0x283a7473,0x64(%ebx),%esi
c060bac8:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060bacb:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060bace:	35 36 2c 33 32       	xor    $0x32332c36,%eax
c060bad3:	3b 3b                	cmp    (%ebx),%edi
c060bad5:	00 53 59             	add    %dl,0x59(%ebx)
c060bad8:	53                   	push   %ebx
c060bad9:	5f                   	pop    %edi
c060bada:	54                   	push   %esp
c060badb:	49                   	dec    %ecx
c060badc:	4d                   	dec    %ebp
c060badd:	45                   	inc    %ebp
c060bade:	5f                   	pop    %edi
c060badf:	53                   	push   %ebx
c060bae0:	54                   	push   %esp
c060bae1:	52                   	push   %edx
c060bae2:	55                   	push   %ebp
c060bae3:	43                   	inc    %ebx
c060bae4:	54                   	push   %esp
c060bae5:	3a 74 28 34          	cmp    0x34(%eax,%ebp,1),%dh
c060bae9:	2c 33                	sub    $0x33,%al
c060baeb:	29 3d 28 34 2c 34    	sub    %edi,0x342c3428
c060baf1:	29 3d 73 36 73 3a    	sub    %edi,0x3a733673
c060baf7:	28 32                	sub    %dh,(%edx)
c060baf9:	2c 31                	sub    $0x31,%al
c060bafb:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060bafe:	2c 38                	sub    $0x38,%al
c060bb00:	3b 6d 3a             	cmp    0x3a(%ebp),%ebp
c060bb03:	28 32                	sub    %dh,(%edx)
c060bb05:	2c 31                	sub    $0x31,%al
c060bb07:	29 2c 38             	sub    %ebp,(%eax,%edi,1)
c060bb0a:	2c 38                	sub    $0x38,%al
c060bb0c:	3b 68 3a             	cmp    0x3a(%eax),%ebp
c060bb0f:	28 32                	sub    %dh,(%edx)
c060bb11:	2c 31                	sub    $0x31,%al
c060bb13:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060bb16:	36 2c 38             	ss sub $0x38,%al
c060bb19:	3b 64 61 79          	cmp    0x79(%ecx,%eiz,2),%esp
c060bb1d:	3a 28                	cmp    (%eax),%ch
c060bb1f:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c060bb22:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060bb25:	34 2c                	xor    $0x2c,%al
c060bb27:	38 3b                	cmp    %bh,(%ebx)
c060bb29:	6d                   	insl   (%dx),%es:(%edi)
c060bb2a:	6f                   	outsl  %ds:(%esi),(%dx)
c060bb2b:	6e                   	outsb  %ds:(%esi),(%dx)
c060bb2c:	74 68                	je     c060bb96 <.stab+0x175e>
c060bb2e:	3a 28                	cmp    (%eax),%ch
c060bb30:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c060bb33:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060bb36:	32 2c 38             	xor    (%eax,%edi,1),%ch
c060bb39:	3b 79 65             	cmp    0x65(%ecx),%edi
c060bb3c:	61                   	popa   
c060bb3d:	72 3a                	jb     c060bb79 <.stab+0x1741>
c060bb3f:	28 32                	sub    %dh,(%edx)
c060bb41:	2c 31                	sub    $0x31,%al
c060bb43:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060bb46:	30 2c 38             	xor    %ch,(%eax,%edi,1)
c060bb49:	3b 3b                	cmp    (%ebx),%edi
c060bb4b:	00 44 50 54          	add    %al,0x54(%eax,%edx,2)
c060bb4f:	3a 54 28 33          	cmp    0x33(%eax,%ebp,1),%dl
c060bb53:	2c 31                	sub    $0x31,%al
c060bb55:	29 3d 73 31 36 41    	sub    %edi,0x41363173
c060bb5b:	63 74 50 61          	arpl   %si,0x61(%eax,%edx,2)
c060bb5f:	72 53                	jb     c060bbb4 <.stab+0x177c>
c060bb61:	69 67 3a 28 32 2c 32 	imul   $0x322c3228,0x3a(%edi),%esp
c060bb68:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060bb6b:	2c 38                	sub    $0x38,%al
c060bb6d:	3b 53 74             	cmp    0x74(%ebx),%edx
c060bb70:	61                   	popa   
c060bb71:	72 74                	jb     c060bbe7 <.stab+0x17af>
c060bb73:	48                   	dec    %eax
c060bb74:	65 61                	gs popa 
c060bb76:	64 3a 28             	cmp    %fs:(%eax),%ch
c060bb79:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060bb7c:	29 2c 38             	sub    %ebp,(%eax,%edi,1)
c060bb7f:	2c 38                	sub    $0x38,%al
c060bb81:	3b 53 74             	cmp    0x74(%ebx),%edx
c060bb84:	61                   	popa   
c060bb85:	72 74                	jb     c060bbfb <.stab+0x17c3>
c060bb87:	53                   	push   %ebx
c060bb88:	65 63 3a             	arpl   %di,%gs:(%edx)
c060bb8b:	28 32                	sub    %dh,(%edx)
c060bb8d:	2c 33                	sub    $0x33,%al
c060bb8f:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060bb92:	36 2c 36             	ss sub $0x36,%al
c060bb95:	3b 53 74             	cmp    0x74(%ebx),%edx
c060bb98:	61                   	popa   
c060bb99:	72 74                	jb     c060bc0f <.stab+0x17d7>
c060bb9b:	43                   	inc    %ebx
c060bb9c:	79 6c                	jns    c060bc0a <.stab+0x17d2>
c060bb9e:	3a 28                	cmp    (%eax),%ch
c060bba0:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060bba3:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060bba6:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c060bba9:	30 3b                	xor    %bh,(%ebx)
c060bbab:	50                   	push   %eax
c060bbac:	61                   	popa   
c060bbad:	72 54                	jb     c060bc03 <.stab+0x17cb>
c060bbaf:	79 70                	jns    c060bc21 <.stab+0x17e9>
c060bbb1:	65 3a 28             	cmp    %gs:(%eax),%ch
c060bbb4:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060bbb7:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060bbba:	32 2c 38             	xor    (%eax,%edi,1),%ch
c060bbbd:	3b 45 6e             	cmp    0x6e(%ebp),%eax
c060bbc0:	64 48                	fs dec %eax
c060bbc2:	65 61                	gs popa 
c060bbc4:	64 3a 28             	cmp    %fs:(%eax),%ch
c060bbc7:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060bbca:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060bbcd:	30 2c 38             	xor    %ch,(%eax,%edi,1)
c060bbd0:	3b 45 6e             	cmp    0x6e(%ebp),%eax
c060bbd3:	64 53                	fs push %ebx
c060bbd5:	65 63 3a             	arpl   %di,%gs:(%edx)
c060bbd8:	28 32                	sub    %dh,(%edx)
c060bbda:	2c 33                	sub    $0x33,%al
c060bbdc:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060bbdf:	38 2c 36             	cmp    %ch,(%esi,%esi,1)
c060bbe2:	3b 45 6e             	cmp    0x6e(%ebp),%eax
c060bbe5:	64 43                	fs inc %ebx
c060bbe7:	79 6c                	jns    c060bc55 <.stab+0x181d>
c060bbe9:	3a 28                	cmp    (%eax),%ch
c060bbeb:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060bbee:	29 2c 35 34 2c 31 30 	sub    %ebp,0x30312c34(,%esi,1)
c060bbf5:	3b 4f 66             	cmp    0x66(%edi),%ecx
c060bbf8:	66 55                	push   %bp
c060bbfa:	6e                   	outsb  %ds:(%esi),(%dx)
c060bbfb:	69 74 3a 28 32 2c 34 	imul   $0x29342c32,0x28(%edx,%edi,1),%esi
c060bc02:	29 
c060bc03:	2c 36                	sub    $0x36,%al
c060bc05:	34 2c                	xor    $0x2c,%al
c060bc07:	33 32                	xor    (%edx),%esi
c060bc09:	3b 4e 75             	cmp    0x75(%esi),%ecx
c060bc0c:	6d                   	insl   (%dx),%es:(%edi)
c060bc0d:	55                   	push   %ebp
c060bc0e:	6e                   	outsb  %ds:(%esi),(%dx)
c060bc0f:	69 74 3a 28 32 2c 34 	imul   $0x29342c32,0x28(%edx,%edi,1),%esi
c060bc16:	29 
c060bc17:	2c 39                	sub    $0x39,%al
c060bc19:	36 2c 33             	ss sub $0x33,%al
c060bc1c:	32 3b                	xor    (%ebx),%bh
c060bc1e:	3b 00                	cmp    (%eax),%eax
c060bc20:	44                   	inc    %esp
c060bc21:	50                   	push   %eax
c060bc22:	54                   	push   %esp
c060bc23:	3a 74 28 33          	cmp    0x33(%eax,%ebp,1),%dh
c060bc27:	2c 32                	sub    $0x32,%al
c060bc29:	29 3d 28 33 2c 31    	sub    %edi,0x312c3328
c060bc2f:	29 00                	sub    %eax,(%eax)
c060bc31:	5f                   	pop    %edi
c060bc32:	64 70 74             	fs jo  c060bca9 <.stab+0x1871>
c060bc35:	3a 74 28 33          	cmp    0x33(%eax,%ebp,1),%dh
c060bc39:	2c 33                	sub    $0x33,%al
c060bc3b:	29 3d 28 33 2c 34    	sub    %edi,0x342c3328
c060bc41:	29 3d 2a 28 33 2c    	sub    %edi,0x2c33282a
c060bc47:	31 29                	xor    %ebp,(%ecx)
c060bc49:	00 42 4f             	add    %al,0x4f(%edx)
c060bc4c:	4f                   	dec    %edi
c060bc4d:	54                   	push   %esp
c060bc4e:	4c                   	dec    %esp
c060bc4f:	6f                   	outsl  %ds:(%esi),(%dx)
c060bc50:	64 65 72 3a          	fs gs jb c060bc8e <.stab+0x1856>
c060bc54:	54                   	push   %esp
c060bc55:	28 33                	sub    %dh,(%ebx)
c060bc57:	2c 35                	sub    $0x35,%al
c060bc59:	29 3d 73 35 31 32    	sub    %edi,0x32313573
c060bc5f:	6a 6d                	push   $0x6d
c060bc61:	70 42                	jo     c060bca5 <.stab+0x186d>
c060bc63:	4f                   	dec    %edi
c060bc64:	4f                   	dec    %edi
c060bc65:	54                   	push   %esp
c060bc66:	3a 28                	cmp    (%eax),%ch
c060bc68:	33 2c 36             	xor    (%esi,%esi,1),%ebp
c060bc6b:	29 3d 61 72 28 32    	sub    %edi,0x32287261
c060bc71:	2c 31                	sub    $0x31,%al
c060bc73:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060bc78:	32 3b                	xor    (%ebx),%bh
c060bc7a:	28 32                	sub    %dh,(%edx)
c060bc7c:	2c 32                	sub    $0x32,%al
c060bc7e:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060bc81:	2c 32                	sub    $0x32,%al
c060bc83:	34 3b                	xor    $0x3b,%al
c060bc85:	4f                   	dec    %edi
c060bc86:	45                   	inc    %ebp
c060bc87:	4d                   	dec    %ebp
c060bc88:	3a 28                	cmp    (%eax),%ch
c060bc8a:	33 2c 37             	xor    (%edi,%esi,1),%ebp
c060bc8d:	29 3d 61 72 28 32    	sub    %edi,0x32287261
c060bc93:	2c 31                	sub    $0x31,%al
c060bc95:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060bc9a:	37                   	aaa    
c060bc9b:	3b 28                	cmp    (%eax),%ebp
c060bc9d:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060bca0:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060bca3:	34 2c                	xor    $0x2c,%al
c060bca5:	36 34 3b             	ss xor $0x3b,%al
c060bca8:	42                   	inc    %edx
c060bca9:	79 74                	jns    c060bd1f <.stab+0x18e7>
c060bcab:	65 50                	gs push %eax
c060bcad:	65 72 53             	gs jb  c060bd03 <.stab+0x18cb>
c060bcb0:	65 63 3a             	arpl   %di,%gs:(%edx)
c060bcb3:	28 32                	sub    %dh,(%edx)
c060bcb5:	2c 33                	sub    $0x33,%al
c060bcb7:	29 2c 38             	sub    %ebp,(%eax,%edi,1)
c060bcba:	38 2c 31             	cmp    %ch,(%ecx,%esi,1)
c060bcbd:	36 3b 55 6e          	cmp    %ss:0x6e(%ebp),%edx
c060bcc1:	69 74 3a 28 32 2c 32 	imul   $0x29322c32,0x28(%edx,%edi,1),%esi
c060bcc8:	29 
c060bcc9:	2c 31                	sub    $0x31,%al
c060bccb:	30 34 2c             	xor    %dh,(%esp,%ebp,1)
c060bcce:	38 3b                	cmp    %bh,(%ebx)
c060bcd0:	52                   	push   %edx
c060bcd1:	65 73 76             	gs jae c060bd4a <.stab+0x1912>
c060bcd4:	64 53                	fs push %ebx
c060bcd6:	65 63 43 6e          	arpl   %ax,%gs:0x6e(%ebx)
c060bcda:	74 3a                	je     c060bd16 <.stab+0x18de>
c060bcdc:	28 32                	sub    %dh,(%edx)
c060bcde:	2c 33                	sub    $0x33,%al
c060bce0:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060bce3:	31 32                	xor    %esi,(%edx)
c060bce5:	2c 31                	sub    $0x31,%al
c060bce7:	36 3b 52 65          	cmp    %ss:0x65(%edx),%edx
c060bceb:	73 76                	jae    c060bd63 <.stab+0x192b>
c060bced:	65 72 65             	gs jb  c060bd55 <.stab+0x191d>
c060bcf0:	64 30 3a             	xor    %bh,%fs:(%edx)
c060bcf3:	28 32                	sub    %dh,(%edx)
c060bcf5:	2c 32                	sub    $0x32,%al
c060bcf7:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060bcfa:	32 38                	xor    (%eax),%bh
c060bcfc:	2c 38                	sub    $0x38,%al
c060bcfe:	3b 52 6f             	cmp    0x6f(%edx),%edx
c060bd01:	6f                   	outsl  %ds:(%esi),(%dx)
c060bd02:	74 45                	je     c060bd49 <.stab+0x1911>
c060bd04:	6e                   	outsb  %ds:(%esi),(%dx)
c060bd05:	74 43                	je     c060bd4a <.stab+0x1912>
c060bd07:	6e                   	outsb  %ds:(%esi),(%dx)
c060bd08:	74 3a                	je     c060bd44 <.stab+0x190c>
c060bd0a:	28 32                	sub    %dh,(%edx)
c060bd0c:	2c 33                	sub    $0x33,%al
c060bd0e:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060bd11:	33 36                	xor    (%esi),%esi
c060bd13:	2c 31                	sub    $0x31,%al
c060bd15:	36 3b 54 6f 74       	cmp    %ss:0x74(%edi,%ebp,2),%edx
c060bd1a:	55                   	push   %ebp
c060bd1b:	6e                   	outsb  %ds:(%esi),(%dx)
c060bd1c:	69 74 31 36 3a 28 32 	imul   $0x2c32283a,0x36(%ecx,%esi,1),%esi
c060bd23:	2c 
c060bd24:	33 29                	xor    (%ecx),%ebp
c060bd26:	2c 31                	sub    $0x31,%al
c060bd28:	35 32 2c 31 36       	xor    $0x36312c32,%eax
c060bd2d:	3b 4d 65             	cmp    0x65(%ebp),%ecx
c060bd30:	64 69 61 3a 28 32 2c 	imul   $0x322c3228,%fs:0x3a(%ecx),%esp
c060bd37:	32 
c060bd38:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060bd3b:	36 38 2c 38          	cmp    %ch,%ss:(%eax,%edi,1)
c060bd3f:	3b 42 6c             	cmp    0x6c(%edx),%eax
c060bd42:	6f                   	outsl  %ds:(%esi),(%dx)
c060bd43:	63 6b 53             	arpl   %bp,0x53(%ebx)
c060bd46:	69 7a 65 3a 28 32 2c 	imul   $0x2c32283a,0x65(%edx),%edi
c060bd4d:	33 29                	xor    (%ecx),%ebp
c060bd4f:	2c 31                	sub    $0x31,%al
c060bd51:	37                   	aaa    
c060bd52:	36 2c 31             	ss sub $0x31,%al
c060bd55:	36 3b 53 65          	cmp    %ss:0x65(%ebx),%edx
c060bd59:	63 50 65             	arpl   %dx,0x65(%eax)
c060bd5c:	72 54                	jb     c060bdb2 <.stab+0x197a>
c060bd5e:	72 6b                	jb     c060bdcb <.stab+0x1993>
c060bd60:	3a 28                	cmp    (%eax),%ch
c060bd62:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060bd65:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060bd68:	39 32                	cmp    %esi,(%edx)
c060bd6a:	2c 31                	sub    $0x31,%al
c060bd6c:	36 3b 4e 75          	cmp    %ss:0x75(%esi),%ecx
c060bd70:	6d                   	insl   (%dx),%es:(%edi)
c060bd71:	48                   	dec    %eax
c060bd72:	65 61                	gs popa 
c060bd74:	64 73 3a             	fs jae c060bdb1 <.stab+0x1979>
c060bd77:	28 32                	sub    %dh,(%edx)
c060bd79:	2c 33                	sub    $0x33,%al
c060bd7b:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060bd7e:	30 38                	xor    %bh,(%eax)
c060bd80:	2c 31                	sub    $0x31,%al
c060bd82:	36 3b 48 69          	cmp    %ss:0x69(%eax),%ecx
c060bd86:	64 64 53             	fs fs push %ebx
c060bd89:	65 63 3a             	arpl   %di,%gs:(%edx)
c060bd8c:	28 32                	sub    %dh,(%edx)
c060bd8e:	2c 34                	sub    $0x34,%al
c060bd90:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060bd93:	32 34 2c             	xor    (%esp,%ebp,1),%dh
c060bd96:	33 32                	xor    (%edx),%esi
c060bd98:	3b 54 6f 74          	cmp    0x74(%edi,%ebp,2),%edx
c060bd9c:	55                   	push   %ebp
c060bd9d:	6e                   	outsb  %ds:(%esi),(%dx)
c060bd9e:	69 74 33 32 3a 28 32 	imul   $0x2c32283a,0x32(%ebx,%esi,1),%esi
c060bda5:	2c 
c060bda6:	34 29                	xor    $0x29,%al
c060bda8:	2c 32                	sub    $0x32,%al
c060bdaa:	35 36 2c 33 32       	xor    $0x32332c36,%eax
c060bdaf:	3b 44 72 76          	cmp    0x76(%edx,%esi,2),%eax
c060bdb3:	4e                   	dec    %esi
c060bdb4:	75 6d                	jne    c060be23 <.stab+0x19eb>
c060bdb6:	3a 28                	cmp    (%eax),%ch
c060bdb8:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060bdbb:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060bdbe:	38 38                	cmp    %bh,(%eax)
c060bdc0:	2c 38                	sub    $0x38,%al
c060bdc2:	3b 52 65             	cmp    0x65(%edx),%edx
c060bdc5:	73 76                	jae    c060be3d <.stab+0x1a05>
c060bdc7:	65 72 65             	gs jb  c060be2f <.stab+0x19f7>
c060bdca:	64 31 3a             	xor    %edi,%fs:(%edx)
c060bdcd:	28 32                	sub    %dh,(%edx)
c060bdcf:	2c 32                	sub    $0x32,%al
c060bdd1:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060bdd4:	39 36                	cmp    %esi,(%esi)
c060bdd6:	2c 38                	sub    $0x38,%al
c060bdd8:	3b 42 6f             	cmp    0x6f(%edx),%eax
c060bddb:	6f                   	outsl  %ds:(%esi),(%dx)
c060bddc:	74 53                	je     c060be31 <.stab+0x19f9>
c060bdde:	69 67 3a 28 32 2c 32 	imul   $0x322c3228,0x3a(%edi),%esp
c060bde5:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060bde8:	30 34 2c             	xor    %dh,(%esp,%ebp,1)
c060bdeb:	38 3b                	cmp    %bh,(%ebx)
c060bded:	56                   	push   %esi
c060bdee:	6f                   	outsl  %ds:(%esi),(%dx)
c060bdef:	6c                   	insb   (%dx),%es:(%edi)
c060bdf0:	49                   	dec    %ecx
c060bdf1:	44                   	inc    %esp
c060bdf2:	3a 28                	cmp    (%eax),%ch
c060bdf4:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060bdf7:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060bdfa:	31 32                	xor    %esi,(%edx)
c060bdfc:	2c 33                	sub    $0x33,%al
c060bdfe:	32 3b                	xor    (%ebx),%bh
c060be00:	56                   	push   %esi
c060be01:	6f                   	outsl  %ds:(%esi),(%dx)
c060be02:	6c                   	insb   (%dx),%es:(%edi)
c060be03:	4c                   	dec    %esp
c060be04:	61                   	popa   
c060be05:	62 3a                	bound  %edi,(%edx)
c060be07:	28 33                	sub    %dh,(%ebx)
c060be09:	2c 38                	sub    $0x38,%al
c060be0b:	29 3d 61 72 28 32    	sub    %edi,0x32287261
c060be11:	2c 31                	sub    $0x31,%al
c060be13:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060be18:	31 30                	xor    %esi,(%eax)
c060be1a:	3b 28                	cmp    (%eax),%ebp
c060be1c:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060be1f:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060be22:	34 34                	xor    $0x34,%al
c060be24:	2c 38                	sub    $0x38,%al
c060be26:	38 3b                	cmp    %bh,(%ebx)
c060be28:	46                   	inc    %esi
c060be29:	69 6c 65 53 79 73 54 	imul   $0x79547379,0x53(%ebp,%eiz,2),%ebp
c060be30:	79 
c060be31:	70 65                	jo     c060be98 <.stab+0x1a60>
c060be33:	3a 28                	cmp    (%eax),%ch
c060be35:	33 2c 37             	xor    (%edi,%esi,1),%ebp
c060be38:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060be3b:	33 32                	xor    (%edx),%esi
c060be3d:	2c 36                	sub    $0x36,%al
c060be3f:	34 3b                	xor    $0x3b,%al
c060be41:	56                   	push   %esi
c060be42:	65 72 4e             	gs jb  c060be93 <.stab+0x1a5b>
c060be45:	75 6d                	jne    c060beb4 <.stab+0x1a7c>
c060be47:	3a 28                	cmp    (%eax),%ch
c060be49:	33 2c 39             	xor    (%ecx,%edi,1),%ebp
c060be4c:	29 3d 61 72 28 32    	sub    %edi,0x32287261
c060be52:	2c 31                	sub    $0x31,%al
c060be54:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060be59:	31 3b                	xor    %edi,(%ebx)
c060be5b:	28 32                	sub    %dh,(%edx)
c060be5d:	2c 33                	sub    $0x33,%al
c060be5f:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060be62:	39 36                	cmp    %esi,(%esi)
c060be64:	2c 33                	sub    $0x33,%al
c060be66:	32 3b                	xor    (%ebx),%bh
c060be68:	42                   	inc    %edx
c060be69:	4e                   	dec    %esi
c060be6a:	6f                   	outsl  %ds:(%esi),(%dx)
c060be6b:	64 65 53             	fs gs push %ebx
c060be6e:	69 7a 65 3a 28 32 2c 	imul   $0x2c32283a,0x65(%edx),%edi
c060be75:	33 29                	xor    (%ecx),%ebp
c060be77:	2c 35                	sub    $0x35,%al
c060be79:	32 38                	xor    (%eax),%bh
c060be7b:	2c 31                	sub    $0x31,%al
c060be7d:	36 3b 4c 4e 6f       	cmp    %ss:0x6f(%esi,%ecx,2),%ecx
c060be82:	64 65 53             	fs gs push %ebx
c060be85:	69 7a 65 3a 28 32 2c 	imul   $0x2c32283a,0x65(%edx),%edi
c060be8c:	33 29                	xor    (%ecx),%ebp
c060be8e:	2c 35                	sub    $0x35,%al
c060be90:	34 34                	xor    $0x34,%al
c060be92:	2c 31                	sub    $0x31,%al
c060be94:	36 3b 4c 6f 67       	cmp    %ss:0x67(%edi,%ebp,2),%ecx
c060be99:	42                   	inc    %edx
c060be9a:	6c                   	insb   (%dx),%es:(%edi)
c060be9b:	6f                   	outsl  %ds:(%esi),(%dx)
c060be9c:	63 6b 41             	arpl   %bp,0x41(%ebx)
c060be9f:	64 64 72 3a          	fs fs jb c060bedd <.stab+0x1aa5>
c060bea3:	28 32                	sub    %dh,(%edx)
c060bea5:	2c 34                	sub    $0x34,%al
c060bea7:	29 2c 35 36 30 2c 33 	sub    %ebp,0x332c3036(,%esi,1)
c060beae:	32 3b                	xor    (%ebx),%bh
c060beb0:	4c                   	dec    %esp
c060beb1:	42                   	inc    %edx
c060beb2:	4e                   	dec    %esi
c060beb3:	75 6d                	jne    c060bf22 <.stab+0x1aea>
c060beb5:	3a 28                	cmp    (%eax),%ch
c060beb7:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060beba:	29 2c 35 39 32 2c 33 	sub    %ebp,0x332c3239(,%esi,1)
c060bec1:	32 3b                	xor    (%ebx),%bh
c060bec3:	49                   	dec    %ecx
c060bec4:	6e                   	outsb  %ds:(%esi),(%dx)
c060bec5:	66 6f                	outsw  %ds:(%esi),(%dx)
c060bec7:	42                   	inc    %edx
c060bec8:	6c                   	insb   (%dx),%es:(%edi)
c060bec9:	6f                   	outsl  %ds:(%esi),(%dx)
c060beca:	63 6b 41             	arpl   %bp,0x41(%ebx)
c060becd:	64 64 72 3a          	fs fs jb c060bf0b <.stab+0x1ad3>
c060bed1:	28 32                	sub    %dh,(%edx)
c060bed3:	2c 34                	sub    $0x34,%al
c060bed5:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060bed8:	32 34 2c             	xor    (%esp,%ebp,1),%dh
c060bedb:	33 32                	xor    (%edx),%esi
c060bedd:	3b 4b 65             	cmp    0x65(%ebx),%ecx
c060bee0:	72 6e                	jb     c060bf50 <.stab+0x1b18>
c060bee2:	65 6c                	gs insb (%dx),%es:(%edi)
c060bee4:	41                   	inc    %ecx
c060bee5:	64 64 65 72 3a       	fs fs gs jb c060bf24 <.stab+0x1aec>
c060beea:	28 32                	sub    %dh,(%edx)
c060beec:	2c 34                	sub    $0x34,%al
c060beee:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060bef1:	35 36 2c 33 32       	xor    $0x32332c36,%eax
c060bef6:	3b 4b 65             	cmp    0x65(%ebx),%ecx
c060bef9:	72 6e                	jb     c060bf69 <.stab+0x1b31>
c060befb:	65 6c                	gs insb (%dx),%es:(%edi)
c060befd:	53                   	push   %ebx
c060befe:	69 7a 65 3a 28 32 2c 	imul   $0x2c32283a,0x65(%edx),%edi
c060bf05:	33 29                	xor    (%ecx),%ebp
c060bf07:	2c 36                	sub    $0x36,%al
c060bf09:	38 38                	cmp    %bh,(%eax)
c060bf0b:	2c 31                	sub    $0x31,%al
c060bf0d:	36 3b 62 6f          	cmp    %ss:0x6f(%edx),%esp
c060bf11:	6f                   	outsl  %ds:(%esi),(%dx)
c060bf12:	74 3a                	je     c060bf4e <.stab+0x1b16>
c060bf14:	28 33                	sub    %dh,(%ebx)
c060bf16:	2c 31                	sub    $0x31,%al
c060bf18:	30 29                	xor    %ch,(%ecx)
c060bf1a:	3d 61 72 28 32       	cmp    $0x32287261,%eax
c060bf1f:	2c 31                	sub    $0x31,%al
c060bf21:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060bf26:	33 35 37 3b 28 32    	xor    0x32283b37,%esi
c060bf2c:	2c 32                	sub    $0x32,%al
c060bf2e:	29 2c 37             	sub    %ebp,(%edi,%esi,1)
c060bf31:	30 34 2c             	xor    %dh,(%esp,%ebp,1)
c060bf34:	32 38                	xor    (%eax),%bh
c060bf36:	36 34 3b             	ss xor $0x3b,%al
c060bf39:	64 70 74             	fs jo  c060bfb0 <.stab+0x1b78>
c060bf3c:	3a 28                	cmp    (%eax),%ch
c060bf3e:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c060bf41:	31 29                	xor    %ebp,(%ecx)
c060bf43:	3d 61 72 28 32       	cmp    $0x32287261,%eax
c060bf48:	2c 31                	sub    $0x31,%al
c060bf4a:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060bf4f:	33 3b                	xor    (%ebx),%edi
c060bf51:	28 33                	sub    %dh,(%ebx)
c060bf53:	2c 32                	sub    $0x32,%al
c060bf55:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060bf58:	35 36 38 2c 35       	xor    $0x352c3836,%eax
c060bf5d:	31 32                	xor    %esi,(%edx)
c060bf5f:	3b 42 4f             	cmp    0x4f(%edx),%eax
c060bf62:	4f                   	dec    %edi
c060bf63:	54                   	push   %esp
c060bf64:	53                   	push   %ebx
c060bf65:	69 67 6e 3a 28 32 2c 	imul   $0x2c32283a,0x6e(%edi),%esp
c060bf6c:	33 29                	xor    (%ecx),%ebp
c060bf6e:	2c 34                	sub    $0x34,%al
c060bf70:	30 38                	xor    %bh,(%eax)
c060bf72:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060bf75:	36 3b 3b             	cmp    %ss:(%ebx),%edi
c060bf78:	00 42 4f             	add    %al,0x4f(%edx)
c060bf7b:	4f                   	dec    %edi
c060bf7c:	54                   	push   %esp
c060bf7d:	4c                   	dec    %esp
c060bf7e:	6f                   	outsl  %ds:(%esi),(%dx)
c060bf7f:	64 65 72 3a          	fs gs jb c060bfbd <.stab+0x1b85>
c060bf83:	74 28                	je     c060bfad <.stab+0x1b75>
c060bf85:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c060bf88:	32 29                	xor    (%ecx),%ch
c060bf8a:	3d 28 33 2c 35       	cmp    $0x352c3328,%eax
c060bf8f:	29 00                	sub    %eax,(%eax)
c060bf91:	5f                   	pop    %edi
c060bf92:	62 6f 6f             	bound  %ebp,0x6f(%edi)
c060bf95:	74 6c                	je     c060c003 <.stab+0x1bcb>
c060bf97:	6f                   	outsl  %ds:(%esi),(%dx)
c060bf98:	64 65 72 3a          	fs gs jb c060bfd6 <.stab+0x1b9e>
c060bf9c:	74 28                	je     c060bfc6 <.stab+0x1b8e>
c060bf9e:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c060bfa1:	33 29                	xor    (%ecx),%ebp
c060bfa3:	3d 28 33 2c 31       	cmp    $0x312c3328,%eax
c060bfa8:	34 29                	xor    $0x29,%al
c060bfaa:	3d 2a 28 33 2c       	cmp    $0x2c33282a,%eax
c060bfaf:	35 29 00 73 79       	xor    $0x79730029,%eax
c060bfb4:	73 74                	jae    c060c02a <.stab+0x1bf2>
c060bfb6:	65 6d                	gs insl (%dx),%es:(%edi)
c060bfb8:	5f                   	pop    %edi
c060bfb9:	69 6e 66 6f 3a 74 28 	imul   $0x28743a6f,0x66(%esi),%ebp
c060bfc0:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c060bfc3:	35 29 3d 28 33       	xor    $0x33283d29,%eax
c060bfc8:	2c 31                	sub    $0x31,%al
c060bfca:	36 29 3d 73 31 30 32 	sub    %edi,%ss:0x32303173
c060bfd1:	38 43 50             	cmp    %al,0x50(%ebx)
c060bfd4:	55                   	push   %ebp
c060bfd5:	5f                   	pop    %edi
c060bfd6:	49                   	dec    %ecx
c060bfd7:	44                   	inc    %esp
c060bfd8:	3a 28                	cmp    (%eax),%ch
c060bfda:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c060bfdd:	37                   	aaa    
c060bfde:	29 3d 61 72 28 32    	sub    %edi,0x32287261
c060bfe4:	2c 31                	sub    $0x31,%al
c060bfe6:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060bfeb:	31 39                	xor    %edi,(%ecx)
c060bfed:	3b 28                	cmp    (%eax),%ebp
c060bfef:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060bff2:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060bff5:	2c 31                	sub    $0x31,%al
c060bff7:	36 30 3b             	xor    %bh,%ss:(%ebx)
c060bffa:	75 70                	jne    c060c06c <.stab+0x1c34>
c060bffc:	74 69                	je     c060c067 <.stab+0x1c2f>
c060bffe:	6d                   	insl   (%dx),%es:(%edi)
c060bfff:	65 3a 28             	cmp    %gs:(%eax),%ch
c060c002:	34 2c                	xor    $0x2c,%al
c060c004:	33 29                	xor    (%ecx),%ebp
c060c006:	2c 31                	sub    $0x31,%al
c060c008:	36 30 2c 34          	xor    %ch,%ss:(%esp,%esi,1)
c060c00c:	38 3b                	cmp    %bh,(%ebx)
c060c00e:	64 69 73 70 6c 61 79 	imul   $0x5f79616c,%fs:0x70(%ebx),%esi
c060c015:	5f 
c060c016:	6d                   	insl   (%dx),%es:(%edi)
c060c017:	6f                   	outsl  %ds:(%esi),(%dx)
c060c018:	64 65 3a 28          	fs cmp %gs:(%eax),%ch
c060c01c:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060c01f:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060c022:	30 38                	xor    %bh,(%eax)
c060c024:	2c 33                	sub    $0x33,%al
c060c026:	32 3b                	xor    (%ebx),%bh
c060c028:	63 68 61             	arpl   %bp,0x61(%eax)
c060c02b:	72 5f                	jb     c060c08c <.stab+0x1c54>
c060c02d:	6e                   	outsb  %ds:(%esi),(%dx)
c060c02e:	75 6d                	jne    c060c09d <.stab+0x1c65>
c060c030:	3a 28                	cmp    (%eax),%ch
c060c032:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060c035:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060c038:	34 30                	xor    $0x30,%al
c060c03a:	2c 33                	sub    $0x33,%al
c060c03c:	32 3b                	xor    (%ebx),%bh
c060c03e:	64 69 73 70 6c 61 79 	imul   $0x5f79616c,%fs:0x70(%ebx),%esi
c060c045:	5f 
c060c046:	70 61                	jo     c060c0a9 <.stab+0x1c71>
c060c048:	67 65 3a 28          	cmp    %gs:(%bx,%si),%ch
c060c04c:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060c04f:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060c052:	37                   	aaa    
c060c053:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060c056:	32 3b                	xor    (%ebx),%bh
c060c058:	72 65                	jb     c060c0bf <.stab+0x1c87>
c060c05a:	73 65                	jae    c060c0c1 <.stab+0x1c89>
c060c05c:	72 76                	jb     c060c0d4 <.stab+0x1c9c>
c060c05e:	65 3a 28             	cmp    %gs:(%eax),%ch
c060c061:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c060c064:	38 29                	cmp    %ch,(%ecx)
c060c066:	3d 61 72 28 32       	cmp    $0x32287261,%eax
c060c06b:	2c 31                	sub    $0x31,%al
c060c06d:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060c072:	34 37                	xor    $0x37,%al
c060c074:	37                   	aaa    
c060c075:	3b 28                	cmp    (%eax),%ebp
c060c077:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060c07a:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060c07d:	30 34 2c             	xor    %dh,(%esp,%ebp,1)
c060c080:	33 38                	xor    (%eax),%edi
c060c082:	32 34 3b             	xor    (%ebx,%edi,1),%dh
c060c085:	62 6f 6f             	bound  %ebp,0x6f(%edi)
c060c088:	74 62                	je     c060c0ec <.stab+0x1cb4>
c060c08a:	6b 3a 28             	imul   $0x28,(%edx),%edi
c060c08d:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c060c090:	32 29                	xor    (%ecx),%ch
c060c092:	2c 34                	sub    $0x34,%al
c060c094:	31 32                	xor    %esi,(%edx)
c060c096:	38 2c 34             	cmp    %ch,(%esp,%esi,1)
c060c099:	30 39                	xor    %bh,(%ecx)
c060c09b:	36 3b 3b             	cmp    %ss:(%ebx),%edi
c060c09e:	00 2e                	add    %ch,(%esi)
c060c0a0:	2e 2f                	cs das 
c060c0a2:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c060c0a9:	2f                   	das    
c060c0aa:	73 79                	jae    c060c125 <.stab+0x1ced>
c060c0ac:	73 69                	jae    c060c117 <.stab+0x1cdf>
c060c0ae:	6f                   	outsl  %ds:(%esi),(%dx)
c060c0af:	2e 68 00 54 45 58    	cs push $0x58455400
c060c0b5:	54                   	push   %esp
c060c0b6:	5f                   	pop    %edi
c060c0b7:	44                   	inc    %esp
c060c0b8:	49                   	dec    %ecx
c060c0b9:	53                   	push   %ebx
c060c0ba:	50                   	push   %eax
c060c0bb:	4c                   	dec    %esp
c060c0bc:	50                   	push   %eax
c060c0bd:	59                   	pop    %ecx
c060c0be:	5f                   	pop    %edi
c060c0bf:	43                   	inc    %ebx
c060c0c0:	48                   	dec    %eax
c060c0c1:	41                   	inc    %ecx
c060c0c2:	52                   	push   %edx
c060c0c3:	3a 54 28 35          	cmp    0x35(%eax,%ebp,1),%dl
c060c0c7:	2c 31                	sub    $0x31,%al
c060c0c9:	29 3d 73 32 63 68    	sub    %edi,0x68633273
c060c0cf:	3a 28                	cmp    (%eax),%ch
c060c0d1:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060c0d4:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060c0d7:	2c 38                	sub    $0x38,%al
c060c0d9:	3b 3a                	cmp    (%edx),%edi
c060c0db:	28 35 2c 32 29 3d    	sub    %dh,0x3d29322c
c060c0e1:	75 31                	jne    c060c114 <.stab+0x1cdc>
c060c0e3:	62 66 63             	bound  %esp,0x63(%esi)
c060c0e6:	6f                   	outsl  %ds:(%esi),(%dx)
c060c0e7:	6c                   	insb   (%dx),%es:(%edi)
c060c0e8:	6f                   	outsl  %ds:(%esi),(%dx)
c060c0e9:	72 3a                	jb     c060c125 <.stab+0x1ced>
c060c0eb:	28 35 2c 33 29 3d    	sub    %dh,0x3d29332c
c060c0f1:	73 31                	jae    c060c124 <.stab+0x1cec>
c060c0f3:	66 63 3a             	data16 arpl %di,(%edx)
c060c0f6:	28 30                	sub    %dh,(%eax)
c060c0f8:	2c 31                	sub    $0x31,%al
c060c0fa:	33 29                	xor    (%ecx),%ebp
c060c0fc:	2c 30                	sub    $0x30,%al
c060c0fe:	2c 34                	sub    $0x34,%al
c060c100:	3b 62 63             	cmp    0x63(%edx),%esp
c060c103:	3a 28                	cmp    (%eax),%ch
c060c105:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060c108:	33 29                	xor    (%ecx),%ebp
c060c10a:	2c 34                	sub    $0x34,%al
c060c10c:	2c 34                	sub    $0x34,%al
c060c10e:	3b 3b                	cmp    (%ebx),%edi
c060c110:	2c 30                	sub    $0x30,%al
c060c112:	2c 38                	sub    $0x38,%al
c060c114:	3b 63 6f             	cmp    0x6f(%ebx),%esp
c060c117:	6c                   	insb   (%dx),%es:(%edi)
c060c118:	6f                   	outsl  %ds:(%esi),(%dx)
c060c119:	72 3a                	jb     c060c155 <.stab+0x1d1d>
c060c11b:	28 30                	sub    %dh,(%eax)
c060c11d:	2c 31                	sub    $0x31,%al
c060c11f:	33 29                	xor    (%ecx),%ebp
c060c121:	2c 30                	sub    $0x30,%al
c060c123:	2c 38                	sub    $0x38,%al
c060c125:	3b 3b                	cmp    (%ebx),%edi
c060c127:	2c 38                	sub    $0x38,%al
c060c129:	2c 38                	sub    $0x38,%al
c060c12b:	3b 3b                	cmp    (%ebx),%edi
c060c12d:	00 2e                	add    %ch,(%esi)
c060c12f:	2e 2f                	cs das 
c060c131:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c060c138:	2f                   	das    
c060c139:	6d                   	insl   (%dx),%es:(%edi)
c060c13a:	65 6d                	gs insl (%dx),%es:(%edi)
c060c13c:	6f                   	outsl  %ds:(%esi),(%dx)
c060c13d:	72 79                	jb     c060c1b8 <.stab+0x1d80>
c060c13f:	2e 68 00 2e 2e 2f    	cs push $0x2f2e2e00
c060c145:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c060c14c:	2f                   	das    
c060c14d:	67 66 70 2e          	addr16 data16 jo c060c17f <.stab+0x1d47>
c060c151:	68 00 67 66 70       	push   $0x70666700
c060c156:	5f                   	pop    %edi
c060c157:	74 3a                	je     c060c193 <.stab+0x1d5b>
c060c159:	74 28                	je     c060c183 <.stab+0x1d4b>
c060c15b:	37                   	aaa    
c060c15c:	2c 31                	sub    $0x31,%al
c060c15e:	29 3d 28 30 2c 34    	sub    %edi,0x342c3028
c060c164:	29 00                	sub    %eax,(%eax)
c060c166:	50                   	push   %eax
c060c167:	41                   	inc    %ecx
c060c168:	47                   	inc    %edi
c060c169:	45                   	inc    %ebp
c060c16a:	49                   	dec    %ecx
c060c16b:	54                   	push   %esp
c060c16c:	45                   	inc    %ebp
c060c16d:	4d                   	dec    %ebp
c060c16e:	3a 54 28 36          	cmp    0x36(%eax,%ebp,1),%dl
c060c172:	2c 31                	sub    $0x31,%al
c060c174:	29 3d 73 34 50 3a    	sub    %edi,0x3a503473
c060c17a:	28 30                	sub    %dh,(%eax)
c060c17c:	2c 34                	sub    $0x34,%al
c060c17e:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060c181:	2c 31                	sub    $0x31,%al
c060c183:	3b 52 5f             	cmp    0x5f(%edx),%edx
c060c186:	57                   	push   %edi
c060c187:	3a 28                	cmp    (%eax),%ch
c060c189:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060c18c:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060c18f:	2c 31                	sub    $0x31,%al
c060c191:	3b 55 5f             	cmp    0x5f(%ebp),%edx
c060c194:	53                   	push   %ebx
c060c195:	3a 28                	cmp    (%eax),%ch
c060c197:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060c19a:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060c19d:	2c 31                	sub    $0x31,%al
c060c19f:	3b 6e 75             	cmp    0x75(%esi),%ebp
c060c1a2:	6c                   	insb   (%dx),%es:(%edi)
c060c1a3:	31 3a                	xor    %edi,(%edx)
c060c1a5:	28 30                	sub    %dh,(%eax)
c060c1a7:	2c 34                	sub    $0x34,%al
c060c1a9:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060c1ac:	2c 32                	sub    $0x32,%al
c060c1ae:	3b 41 3a             	cmp    0x3a(%ecx),%eax
c060c1b1:	28 30                	sub    %dh,(%eax)
c060c1b3:	2c 34                	sub    $0x34,%al
c060c1b5:	29 2c 35 2c 31 3b 44 	sub    %ebp,0x443b312c(,%esi,1)
c060c1bc:	3a 28                	cmp    (%eax),%ch
c060c1be:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060c1c1:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060c1c4:	2c 31                	sub    $0x31,%al
c060c1c6:	3b 6e 75             	cmp    0x75(%esi),%ebp
c060c1c9:	6c                   	insb   (%dx),%es:(%edi)
c060c1ca:	32 3a                	xor    (%edx),%bh
c060c1cc:	28 30                	sub    %dh,(%eax)
c060c1ce:	2c 34                	sub    $0x34,%al
c060c1d0:	29 2c 37             	sub    %ebp,(%edi,%esi,1)
c060c1d3:	2c 32                	sub    $0x32,%al
c060c1d5:	3b 41 56             	cmp    0x56(%ecx),%eax
c060c1d8:	4c                   	dec    %esp
c060c1d9:	3a 28                	cmp    (%eax),%ch
c060c1db:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060c1de:	29 2c 39             	sub    %ebp,(%ecx,%edi,1)
c060c1e1:	2c 33                	sub    $0x33,%al
c060c1e3:	3b 50 42             	cmp    0x42(%eax),%edx
c060c1e6:	3a 28                	cmp    (%eax),%ch
c060c1e8:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060c1eb:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060c1ee:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060c1f1:	30 3b                	xor    %bh,(%ebx)
c060c1f3:	3b 00                	cmp    (%eax),%eax
c060c1f5:	70 61                	jo     c060c258 <.stab+0x1e20>
c060c1f7:	67 65 69 74 65 6d 3a 	imul   $0x28743a6d,%gs:0x65(%si),%esi
c060c1fe:	74 28 
c060c200:	36 2c 32             	ss sub $0x32,%al
c060c203:	29 3d 28 36 2c 31    	sub    %edi,0x312c3628
c060c209:	29 00                	sub    %eax,(%eax)
c060c20b:	47                   	inc    %edi
c060c20c:	44                   	inc    %esp
c060c20d:	54                   	push   %esp
c060c20e:	41                   	inc    %ecx
c060c20f:	42                   	inc    %edx
c060c210:	4c                   	dec    %esp
c060c211:	45                   	inc    %ebp
c060c212:	3a 54 28 36          	cmp    0x36(%eax,%ebp,1),%dl
c060c216:	2c 33                	sub    $0x33,%al
c060c218:	29 3d 73 38 6c 69    	sub    %edi,0x696c3873
c060c21e:	6d                   	insl   (%dx),%es:(%edi)
c060c21f:	69 74 30 3a 28 30 2c 	imul   $0x312c3028,0x3a(%eax,%esi,1),%esi
c060c226:	31 
c060c227:	31 29                	xor    %ebp,(%ecx)
c060c229:	2c 30                	sub    $0x30,%al
c060c22b:	2c 31                	sub    $0x31,%al
c060c22d:	36 3b 62 61          	cmp    %ss:0x61(%edx),%esp
c060c231:	73 65                	jae    c060c298 <.stab+0x1e60>
c060c233:	30 3a                	xor    %bh,(%edx)
c060c235:	28 30                	sub    %dh,(%eax)
c060c237:	2c 31                	sub    $0x31,%al
c060c239:	31 29                	xor    %ebp,(%ecx)
c060c23b:	2c 31                	sub    $0x31,%al
c060c23d:	36 2c 31             	ss sub $0x31,%al
c060c240:	36 3b 62 61          	cmp    %ss:0x61(%edx),%esp
c060c244:	73 65                	jae    c060c2ab <.stab+0x1e73>
c060c246:	31 3a                	xor    %edi,(%edx)
c060c248:	28 30                	sub    %dh,(%eax)
c060c24a:	2c 31                	sub    $0x31,%al
c060c24c:	33 29                	xor    (%ecx),%ebp
c060c24e:	2c 33                	sub    $0x33,%al
c060c250:	32 2c 38             	xor    (%eax,%edi,1),%ch
c060c253:	3b 54 59 50          	cmp    0x50(%ecx,%ebx,2),%edx
c060c257:	45                   	inc    %ebp
c060c258:	3a 28                	cmp    (%eax),%ch
c060c25a:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060c25d:	33 29                	xor    (%ecx),%ebp
c060c25f:	2c 34                	sub    $0x34,%al
c060c261:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060c264:	3b 53 3a             	cmp    0x3a(%ebx),%edx
c060c267:	28 30                	sub    %dh,(%eax)
c060c269:	2c 31                	sub    $0x31,%al
c060c26b:	33 29                	xor    (%ecx),%ebp
c060c26d:	2c 34                	sub    $0x34,%al
c060c26f:	34 2c                	xor    $0x2c,%al
c060c271:	31 3b                	xor    %edi,(%ebx)
c060c273:	44                   	inc    %esp
c060c274:	50                   	push   %eax
c060c275:	4c                   	dec    %esp
c060c276:	3a 28                	cmp    (%eax),%ch
c060c278:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060c27b:	33 29                	xor    (%ecx),%ebp
c060c27d:	2c 34                	sub    $0x34,%al
c060c27f:	35 2c 32 3b 50       	xor    $0x503b322c,%eax
c060c284:	3a 28                	cmp    (%eax),%ch
c060c286:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060c289:	33 29                	xor    (%ecx),%ebp
c060c28b:	2c 34                	sub    $0x34,%al
c060c28d:	37                   	aaa    
c060c28e:	2c 31                	sub    $0x31,%al
c060c290:	3b 6c 69 6d          	cmp    0x6d(%ecx,%ebp,2),%ebp
c060c294:	69 74 31 3a 28 30 2c 	imul   $0x312c3028,0x3a(%ecx,%esi,1),%esi
c060c29b:	31 
c060c29c:	33 29                	xor    (%ecx),%ebp
c060c29e:	2c 34                	sub    $0x34,%al
c060c2a0:	38 2c 34             	cmp    %ch,(%esp,%esi,1)
c060c2a3:	3b 41 56             	cmp    0x56(%ecx),%eax
c060c2a6:	4c                   	dec    %esp
c060c2a7:	3a 28                	cmp    (%eax),%ch
c060c2a9:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060c2ac:	33 29                	xor    (%ecx),%ebp
c060c2ae:	2c 35                	sub    $0x35,%al
c060c2b0:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c060c2b3:	3b 4c 3a 28          	cmp    0x28(%edx,%edi,1),%ecx
c060c2b7:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060c2ba:	33 29                	xor    (%ecx),%ebp
c060c2bc:	2c 35                	sub    $0x35,%al
c060c2be:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c060c2c1:	3b 44 5f 42          	cmp    0x42(%edi,%ebx,2),%eax
c060c2c5:	3a 28                	cmp    (%eax),%ch
c060c2c7:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060c2ca:	33 29                	xor    (%ecx),%ebp
c060c2cc:	2c 35                	sub    $0x35,%al
c060c2ce:	34 2c                	xor    $0x2c,%al
c060c2d0:	31 3b                	xor    %edi,(%ebx)
c060c2d2:	47                   	inc    %edi
c060c2d3:	3a 28                	cmp    (%eax),%ch
c060c2d5:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060c2d8:	33 29                	xor    (%ecx),%ebp
c060c2da:	2c 35                	sub    $0x35,%al
c060c2dc:	35 2c 31 3b 62       	xor    $0x623b312c,%eax
c060c2e1:	61                   	popa   
c060c2e2:	73 65                	jae    c060c349 <.stab+0x1f11>
c060c2e4:	32 3a                	xor    (%edx),%bh
c060c2e6:	28 30                	sub    %dh,(%eax)
c060c2e8:	2c 31                	sub    $0x31,%al
c060c2ea:	33 29                	xor    (%ecx),%ebp
c060c2ec:	2c 35                	sub    $0x35,%al
c060c2ee:	36 2c 38             	ss sub $0x38,%al
c060c2f1:	3b 3b                	cmp    (%ebx),%edi
c060c2f3:	00 47 44             	add    %al,0x44(%edi)
c060c2f6:	54                   	push   %esp
c060c2f7:	74 61                	je     c060c35a <.stab+0x1f22>
c060c2f9:	62 6c 65 3a          	bound  %ebp,0x3a(%ebp,%eiz,2)
c060c2fd:	74 28                	je     c060c327 <.stab+0x1eef>
c060c2ff:	36 2c 34             	ss sub $0x34,%al
c060c302:	29 3d 28 36 2c 33    	sub    %edi,0x332c3628
c060c308:	29 00                	sub    %eax,(%eax)
c060c30a:	6d                   	insl   (%dx),%es:(%edi)
c060c30b:	65 6d                	gs insl (%dx),%es:(%edi)
c060c30d:	6f                   	outsl  %ds:(%esi),(%dx)
c060c30e:	72 79                	jb     c060c389 <.stab+0x1f51>
c060c310:	5f                   	pop    %edi
c060c311:	68 65 61 64 3a       	push   $0x3a646165
c060c316:	74 28                	je     c060c340 <.stab+0x1f08>
c060c318:	36 2c 35             	ss sub $0x35,%al
c060c31b:	29 3d 28 36 2c 36    	sub    %edi,0x362c3628
c060c321:	29 3d 73 31 36 72    	sub    %edi,0x72363173
c060c327:	30 3a                	xor    %bh,(%edx)
c060c329:	28 32                	sub    %dh,(%edx)
c060c32b:	2c 34                	sub    $0x34,%al
c060c32d:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060c330:	2c 33                	sub    $0x33,%al
c060c332:	32 3b                	xor    (%ebx),%bh
c060c334:	73 69                	jae    c060c39f <.stab+0x1f67>
c060c336:	7a 65                	jp     c060c39d <.stab+0x1f65>
c060c338:	3a 28                	cmp    (%eax),%ch
c060c33a:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060c33d:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060c340:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060c343:	32 3b                	xor    (%ebx),%bh
c060c345:	61                   	popa   
c060c346:	64 64 72 3a          	fs fs jb c060c384 <.stab+0x1f4c>
c060c34a:	28 32                	sub    %dh,(%edx)
c060c34c:	2c 34                	sub    $0x34,%al
c060c34e:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060c351:	34 2c                	xor    $0x2c,%al
c060c353:	33 32                	xor    (%edx),%esi
c060c355:	3b 73 69             	cmp    0x69(%ebx),%esi
c060c358:	67 6e                	outsb  %ds:(%si),(%dx)
c060c35a:	3a 28                	cmp    (%eax),%ch
c060c35c:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060c35f:	29 2c 39             	sub    %ebp,(%ecx,%edi,1)
c060c362:	36 2c 33             	ss sub $0x33,%al
c060c365:	32 3b                	xor    (%ebx),%bh
c060c367:	3b 00                	cmp    (%eax),%eax
c060c369:	6d                   	insl   (%dx),%es:(%edi)
c060c36a:	65 6d                	gs insl (%dx),%es:(%edi)
c060c36c:	6f                   	outsl  %ds:(%esi),(%dx)
c060c36d:	72 79                	jb     c060c3e8 <.stab+0x1fb0>
c060c36f:	5f                   	pop    %edi
c060c370:	70 61                	jo     c060c3d3 <.stab+0x1f9b>
c060c372:	67 65 5f             	addr16 gs pop %edi
c060c375:	75 73                	jne    c060c3ea <.stab+0x1fb2>
c060c377:	65 3a 74 28 36       	cmp    %gs:0x36(%eax,%ebp,1),%dh
c060c37c:	2c 37                	sub    $0x37,%al
c060c37e:	29 3d 28 36 2c 38    	sub    %edi,0x382c3628
c060c384:	29 3d 73 38 70 61    	sub    %edi,0x61703873
c060c38a:	67 65 5f             	addr16 gs pop %edi
c060c38d:	61                   	popa   
c060c38e:	64 64 72 3a          	fs fs jb c060c3cc <.stab+0x1f94>
c060c392:	28 32                	sub    %dh,(%edx)
c060c394:	2c 31                	sub    $0x31,%al
c060c396:	32 29                	xor    (%ecx),%ch
c060c398:	2c 30                	sub    $0x30,%al
c060c39a:	2c 33                	sub    $0x33,%al
c060c39c:	32 3b                	xor    (%ebx),%bh
c060c39e:	73 69                	jae    c060c409 <.stab+0x1fd1>
c060c3a0:	7a 65                	jp     c060c407 <.stab+0x1fcf>
c060c3a2:	3a 28                	cmp    (%eax),%ch
c060c3a4:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060c3a7:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060c3aa:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060c3ad:	32 3b                	xor    (%ebx),%bh
c060c3af:	3b 00                	cmp    (%eax),%eax
c060c3b1:	6d                   	insl   (%dx),%es:(%edi)
c060c3b2:	65 6d                	gs insl (%dx),%es:(%edi)
c060c3b4:	6f                   	outsl  %ds:(%esi),(%dx)
c060c3b5:	72 79                	jb     c060c430 <.stab+0x1ff8>
c060c3b7:	5f                   	pop    %edi
c060c3b8:	70 61                	jo     c060c41b <.stab+0x1fe3>
c060c3ba:	67 65 5f             	addr16 gs pop %edi
c060c3bd:	6c                   	insb   (%dx),%es:(%edi)
c060c3be:	69 6e 6b 5f 6c 69 73 	imul   $0x73696c5f,0x6b(%esi),%ebp
c060c3c5:	74 3a                	je     c060c401 <.stab+0x1fc9>
c060c3c7:	74 28                	je     c060c3f1 <.stab+0x1fb9>
c060c3c9:	36 2c 39             	ss sub $0x39,%al
c060c3cc:	29 3d 28 36 2c 31    	sub    %edi,0x312c3628
c060c3d2:	30 29                	xor    %ch,(%ecx)
c060c3d4:	3d 73 34 30 39       	cmp    $0x39303473,%eax
c060c3d9:	36 70 72             	ss jo  c060c44e <.stab+0x2016>
c060c3dc:	65 76 3a             	gs jbe c060c419 <.stab+0x1fe1>
c060c3df:	28 32                	sub    %dh,(%edx)
c060c3e1:	2c 31                	sub    $0x31,%al
c060c3e3:	32 29                	xor    (%ecx),%ch
c060c3e5:	2c 30                	sub    $0x30,%al
c060c3e7:	2c 33                	sub    $0x33,%al
c060c3e9:	32 3b                	xor    (%ebx),%bh
c060c3eb:	6e                   	outsb  %ds:(%esi),(%dx)
c060c3ec:	65 78 74             	gs js  c060c463 <.stab+0x202b>
c060c3ef:	3a 28                	cmp    (%eax),%ch
c060c3f1:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c060c3f4:	32 29                	xor    (%ecx),%ch
c060c3f6:	2c 33                	sub    $0x33,%al
c060c3f8:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060c3fb:	32 3b                	xor    (%ebx),%bh
c060c3fd:	6d                   	insl   (%dx),%es:(%edi)
c060c3fe:	65 6d                	gs insl (%dx),%es:(%edi)
c060c400:	70 3a                	jo     c060c43c <.stab+0x2004>
c060c402:	28 36                	sub    %dh,(%esi)
c060c404:	2c 31                	sub    $0x31,%al
c060c406:	31 29                	xor    %ebp,(%ecx)
c060c408:	3d 61 72 28 32       	cmp    $0x32287261,%eax
c060c40d:	2c 31                	sub    $0x31,%al
c060c40f:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060c414:	35 30 39 3b 28       	xor    $0x283b3930,%eax
c060c419:	36 2c 37             	ss sub $0x37,%al
c060c41c:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060c41f:	34 2c                	xor    $0x2c,%al
c060c421:	33 32                	xor    (%edx),%esi
c060c423:	36 34 30             	ss xor $0x30,%al
c060c426:	3b 6e 3a             	cmp    0x3a(%esi),%ebp
c060c429:	28 32                	sub    %dh,(%edx)
c060c42b:	2c 34                	sub    $0x34,%al
c060c42d:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060c430:	32 37                	xor    (%edi),%dh
c060c432:	30 34 2c             	xor    %dh,(%esp,%ebp,1)
c060c435:	33 32                	xor    (%edx),%esi
c060c437:	3b 73 69             	cmp    0x69(%ebx),%esi
c060c43a:	67 6e                	outsb  %ds:(%si),(%dx)
c060c43c:	3a 28                	cmp    (%eax),%ch
c060c43e:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060c441:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060c444:	32 37                	xor    (%edi),%dh
c060c446:	33 36                	xor    (%esi),%esi
c060c448:	2c 33                	sub    $0x33,%al
c060c44a:	32 3b                	xor    (%ebx),%bh
c060c44c:	3b 00                	cmp    (%eax),%eax
c060c44e:	66 72 65             	data16 jb c060c4b6 <.stab+0x207e>
c060c451:	65 5f                	gs pop %edi
c060c453:	6d                   	insl   (%dx),%es:(%edi)
c060c454:	65 6d                	gs insl (%dx),%es:(%edi)
c060c456:	5f                   	pop    %edi
c060c457:	6c                   	insb   (%dx),%es:(%edi)
c060c458:	69 73 74 3a 54 28 36 	imul   $0x3628543a,0x74(%ebx),%esi
c060c45f:	2c 31                	sub    $0x31,%al
c060c461:	32 29                	xor    (%ecx),%ch
c060c463:	3d 73 31 32 6e       	cmp    $0x6e323173,%eax
c060c468:	65 78 74             	gs js  c060c4df <.stab+0x20a7>
c060c46b:	3a 28                	cmp    (%eax),%ch
c060c46d:	36 2c 31             	ss sub $0x31,%al
c060c470:	33 29                	xor    (%ecx),%ebp
c060c472:	3d 2a 28 36 2c       	cmp    $0x2c36282a,%eax
c060c477:	31 32                	xor    %esi,(%edx)
c060c479:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060c47c:	2c 33                	sub    $0x33,%al
c060c47e:	32 3b                	xor    (%ebx),%bh
c060c480:	70 72                	jo     c060c4f4 <.stab+0x20bc>
c060c482:	65 76 3a             	gs jbe c060c4bf <.stab+0x2087>
c060c485:	28 36                	sub    %dh,(%esi)
c060c487:	2c 31                	sub    $0x31,%al
c060c489:	33 29                	xor    (%ecx),%ebp
c060c48b:	2c 33                	sub    $0x33,%al
c060c48d:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060c490:	32 3b                	xor    (%ebx),%bh
c060c492:	73 69                	jae    c060c4fd <.stab+0x20c5>
c060c494:	7a 65                	jp     c060c4fb <.stab+0x20c3>
c060c496:	3a 28                	cmp    (%eax),%ch
c060c498:	30 2c 35 29 2c 36 34 	xor    %ch,0x34362c29(,%esi,1)
c060c49f:	2c 33                	sub    $0x33,%al
c060c4a1:	32 3b                	xor    (%ebx),%bh
c060c4a3:	3b 00                	cmp    (%eax),%eax
c060c4a5:	66 72 65             	data16 jb c060c50d <.stab+0x20d5>
c060c4a8:	65 5f                	gs pop %edi
c060c4aa:	6d                   	insl   (%dx),%es:(%edi)
c060c4ab:	65 6d                	gs insl (%dx),%es:(%edi)
c060c4ad:	5f                   	pop    %edi
c060c4ae:	6c                   	insb   (%dx),%es:(%edi)
c060c4af:	69 73 74 3a 74 28 36 	imul   $0x3628743a,0x74(%ebx),%esi
c060c4b6:	2c 31                	sub    $0x31,%al
c060c4b8:	34 29                	xor    $0x29,%al
c060c4ba:	3d 28 36 2c 31       	cmp    $0x312c3628,%eax
c060c4bf:	32 29                	xor    (%ecx),%ch
c060c4c1:	00 2e                	add    %ch,(%esi)
c060c4c3:	2e 2f                	cs das 
c060c4c5:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c060c4cc:	2f                   	das    
c060c4cd:	65 6c                	gs insb (%dx),%es:(%edi)
c060c4cf:	66 33 32             	xor    (%edx),%si
c060c4d2:	2e 68 00 69 6e 74    	cs push $0x746e6900
c060c4d8:	33 32                	xor    (%edx),%esi
c060c4da:	5f                   	pop    %edi
c060c4db:	74 3a                	je     c060c517 <.stab+0x20df>
c060c4dd:	74 28                	je     c060c507 <.stab+0x20cf>
c060c4df:	38 2c 31             	cmp    %ch,(%ecx,%esi,1)
c060c4e2:	29 3d 28 30 2c 31    	sub    %edi,0x312c3028
c060c4e8:	29 00                	sub    %eax,(%eax)
c060c4ea:	69 6e 74 36 34 5f 74 	imul   $0x745f3436,0x74(%esi),%ebp
c060c4f1:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060c4f5:	2c 32                	sub    $0x32,%al
c060c4f7:	29 3d 28 30 2c 38    	sub    %edi,0x382c3028
c060c4fd:	29 00                	sub    %eax,(%eax)
c060c4ff:	75 69                	jne    c060c56a <.stab+0x2132>
c060c501:	6e                   	outsb  %ds:(%esi),(%dx)
c060c502:	74 31                	je     c060c535 <.stab+0x20fd>
c060c504:	36 5f                	ss pop %edi
c060c506:	74 3a                	je     c060c542 <.stab+0x210a>
c060c508:	74 28                	je     c060c532 <.stab+0x20fa>
c060c50a:	38 2c 33             	cmp    %ch,(%ebx,%esi,1)
c060c50d:	29 3d 28 30 2c 31    	sub    %edi,0x312c3028
c060c513:	31 29                	xor    %ebp,(%ecx)
c060c515:	00 75 69             	add    %dh,0x69(%ebp)
c060c518:	6e                   	outsb  %ds:(%esi),(%dx)
c060c519:	74 33                	je     c060c54e <.stab+0x2116>
c060c51b:	32 5f 74             	xor    0x74(%edi),%bl
c060c51e:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060c522:	2c 34                	sub    $0x34,%al
c060c524:	29 3d 28 30 2c 34    	sub    %edi,0x342c3028
c060c52a:	29 00                	sub    %eax,(%eax)
c060c52c:	75 69                	jne    c060c597 <.stab+0x215f>
c060c52e:	6e                   	outsb  %ds:(%esi),(%dx)
c060c52f:	74 36                	je     c060c567 <.stab+0x212f>
c060c531:	34 5f                	xor    $0x5f,%al
c060c533:	74 3a                	je     c060c56f <.stab+0x2137>
c060c535:	74 28                	je     c060c55f <.stab+0x2127>
c060c537:	38 2c 35 29 3d 28 30 	cmp    %ch,0x30283d29(,%esi,1)
c060c53e:	2c 39                	sub    $0x39,%al
c060c540:	29 00                	sub    %eax,(%eax)
c060c542:	45                   	inc    %ebp
c060c543:	6c                   	insb   (%dx),%es:(%edi)
c060c544:	66 33 32             	xor    (%edx),%si
c060c547:	5f                   	pop    %edi
c060c548:	48                   	dec    %eax
c060c549:	61                   	popa   
c060c54a:	6c                   	insb   (%dx),%es:(%edi)
c060c54b:	66 3a 74 28 38       	data16 cmp 0x38(%eax,%ebp,1),%dh
c060c550:	2c 36                	sub    $0x36,%al
c060c552:	29 3d 28 38 2c 33    	sub    %edi,0x332c3828
c060c558:	29 00                	sub    %eax,(%eax)
c060c55a:	45                   	inc    %ebp
c060c55b:	6c                   	insb   (%dx),%es:(%edi)
c060c55c:	66 36 34 5f          	data16 ss xor $0x5f,%al
c060c560:	48                   	dec    %eax
c060c561:	61                   	popa   
c060c562:	6c                   	insb   (%dx),%es:(%edi)
c060c563:	66 3a 74 28 38       	data16 cmp 0x38(%eax,%ebp,1),%dh
c060c568:	2c 37                	sub    $0x37,%al
c060c56a:	29 3d 28 38 2c 33    	sub    %edi,0x332c3828
c060c570:	29 00                	sub    %eax,(%eax)
c060c572:	45                   	inc    %ebp
c060c573:	6c                   	insb   (%dx),%es:(%edi)
c060c574:	66 33 32             	xor    (%edx),%si
c060c577:	5f                   	pop    %edi
c060c578:	57                   	push   %edi
c060c579:	6f                   	outsl  %ds:(%esi),(%dx)
c060c57a:	72 64                	jb     c060c5e0 <.stab+0x21a8>
c060c57c:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060c580:	2c 38                	sub    $0x38,%al
c060c582:	29 3d 28 38 2c 34    	sub    %edi,0x342c3828
c060c588:	29 00                	sub    %eax,(%eax)
c060c58a:	45                   	inc    %ebp
c060c58b:	6c                   	insb   (%dx),%es:(%edi)
c060c58c:	66 33 32             	xor    (%edx),%si
c060c58f:	5f                   	pop    %edi
c060c590:	53                   	push   %ebx
c060c591:	77 6f                	ja     c060c602 <.stab+0x21ca>
c060c593:	72 64                	jb     c060c5f9 <.stab+0x21c1>
c060c595:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060c599:	2c 39                	sub    $0x39,%al
c060c59b:	29 3d 28 38 2c 31    	sub    %edi,0x312c3828
c060c5a1:	29 00                	sub    %eax,(%eax)
c060c5a3:	45                   	inc    %ebp
c060c5a4:	6c                   	insb   (%dx),%es:(%edi)
c060c5a5:	66 36 34 5f          	data16 ss xor $0x5f,%al
c060c5a9:	57                   	push   %edi
c060c5aa:	6f                   	outsl  %ds:(%esi),(%dx)
c060c5ab:	72 64                	jb     c060c611 <.stab+0x21d9>
c060c5ad:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060c5b1:	2c 31                	sub    $0x31,%al
c060c5b3:	30 29                	xor    %ch,(%ecx)
c060c5b5:	3d 28 38 2c 34       	cmp    $0x342c3828,%eax
c060c5ba:	29 00                	sub    %eax,(%eax)
c060c5bc:	45                   	inc    %ebp
c060c5bd:	6c                   	insb   (%dx),%es:(%edi)
c060c5be:	66 36 34 5f          	data16 ss xor $0x5f,%al
c060c5c2:	53                   	push   %ebx
c060c5c3:	77 6f                	ja     c060c634 <.stab+0x21fc>
c060c5c5:	72 64                	jb     c060c62b <.stab+0x21f3>
c060c5c7:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060c5cb:	2c 31                	sub    $0x31,%al
c060c5cd:	31 29                	xor    %ebp,(%ecx)
c060c5cf:	3d 28 38 2c 31       	cmp    $0x312c3828,%eax
c060c5d4:	29 00                	sub    %eax,(%eax)
c060c5d6:	45                   	inc    %ebp
c060c5d7:	6c                   	insb   (%dx),%es:(%edi)
c060c5d8:	66 33 32             	xor    (%edx),%si
c060c5db:	5f                   	pop    %edi
c060c5dc:	58                   	pop    %eax
c060c5dd:	77 6f                	ja     c060c64e <.stab+0x2216>
c060c5df:	72 64                	jb     c060c645 <.stab+0x220d>
c060c5e1:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060c5e5:	2c 31                	sub    $0x31,%al
c060c5e7:	32 29                	xor    (%ecx),%ch
c060c5e9:	3d 28 38 2c 35       	cmp    $0x352c3828,%eax
c060c5ee:	29 00                	sub    %eax,(%eax)
c060c5f0:	45                   	inc    %ebp
c060c5f1:	6c                   	insb   (%dx),%es:(%edi)
c060c5f2:	66 33 32             	xor    (%edx),%si
c060c5f5:	5f                   	pop    %edi
c060c5f6:	53                   	push   %ebx
c060c5f7:	78 77                	js     c060c670 <.stab+0x2238>
c060c5f9:	6f                   	outsl  %ds:(%esi),(%dx)
c060c5fa:	72 64                	jb     c060c660 <.stab+0x2228>
c060c5fc:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060c600:	2c 31                	sub    $0x31,%al
c060c602:	33 29                	xor    (%ecx),%ebp
c060c604:	3d 28 38 2c 32       	cmp    $0x322c3828,%eax
c060c609:	29 00                	sub    %eax,(%eax)
c060c60b:	45                   	inc    %ebp
c060c60c:	6c                   	insb   (%dx),%es:(%edi)
c060c60d:	66 36 34 5f          	data16 ss xor $0x5f,%al
c060c611:	58                   	pop    %eax
c060c612:	77 6f                	ja     c060c683 <.stab+0x224b>
c060c614:	72 64                	jb     c060c67a <.stab+0x2242>
c060c616:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060c61a:	2c 31                	sub    $0x31,%al
c060c61c:	34 29                	xor    $0x29,%al
c060c61e:	3d 28 38 2c 35       	cmp    $0x352c3828,%eax
c060c623:	29 00                	sub    %eax,(%eax)
c060c625:	45                   	inc    %ebp
c060c626:	6c                   	insb   (%dx),%es:(%edi)
c060c627:	66 36 34 5f          	data16 ss xor $0x5f,%al
c060c62b:	53                   	push   %ebx
c060c62c:	78 77                	js     c060c6a5 <.stab+0x226d>
c060c62e:	6f                   	outsl  %ds:(%esi),(%dx)
c060c62f:	72 64                	jb     c060c695 <.stab+0x225d>
c060c631:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060c635:	2c 31                	sub    $0x31,%al
c060c637:	35 29 3d 28 38       	xor    $0x38283d29,%eax
c060c63c:	2c 32                	sub    $0x32,%al
c060c63e:	29 00                	sub    %eax,(%eax)
c060c640:	45                   	inc    %ebp
c060c641:	6c                   	insb   (%dx),%es:(%edi)
c060c642:	66 33 32             	xor    (%edx),%si
c060c645:	5f                   	pop    %edi
c060c646:	41                   	inc    %ecx
c060c647:	64 64 72 3a          	fs fs jb c060c685 <.stab+0x224d>
c060c64b:	74 28                	je     c060c675 <.stab+0x223d>
c060c64d:	38 2c 31             	cmp    %ch,(%ecx,%esi,1)
c060c650:	36 29 3d 28 38 2c 34 	sub    %edi,%ss:0x342c3828
c060c657:	29 00                	sub    %eax,(%eax)
c060c659:	45                   	inc    %ebp
c060c65a:	6c                   	insb   (%dx),%es:(%edi)
c060c65b:	66 36 34 5f          	data16 ss xor $0x5f,%al
c060c65f:	41                   	inc    %ecx
c060c660:	64 64 72 3a          	fs fs jb c060c69e <.stab+0x2266>
c060c664:	74 28                	je     c060c68e <.stab+0x2256>
c060c666:	38 2c 31             	cmp    %ch,(%ecx,%esi,1)
c060c669:	37                   	aaa    
c060c66a:	29 3d 28 38 2c 35    	sub    %edi,0x352c3828
c060c670:	29 00                	sub    %eax,(%eax)
c060c672:	45                   	inc    %ebp
c060c673:	6c                   	insb   (%dx),%es:(%edi)
c060c674:	66 33 32             	xor    (%edx),%si
c060c677:	5f                   	pop    %edi
c060c678:	4f                   	dec    %edi
c060c679:	66 66 3a 74 28 38    	data16 data16 cmp 0x38(%eax,%ebp,1),%dh
c060c67f:	2c 31                	sub    $0x31,%al
c060c681:	38 29                	cmp    %ch,(%ecx)
c060c683:	3d 28 38 2c 34       	cmp    $0x342c3828,%eax
c060c688:	29 00                	sub    %eax,(%eax)
c060c68a:	45                   	inc    %ebp
c060c68b:	6c                   	insb   (%dx),%es:(%edi)
c060c68c:	66 36 34 5f          	data16 ss xor $0x5f,%al
c060c690:	4f                   	dec    %edi
c060c691:	66 66 3a 74 28 38    	data16 data16 cmp 0x38(%eax,%ebp,1),%dh
c060c697:	2c 31                	sub    $0x31,%al
c060c699:	39 29                	cmp    %ebp,(%ecx)
c060c69b:	3d 28 38 2c 35       	cmp    $0x352c3828,%eax
c060c6a0:	29 00                	sub    %eax,(%eax)
c060c6a2:	45                   	inc    %ebp
c060c6a3:	6c                   	insb   (%dx),%es:(%edi)
c060c6a4:	66 33 32             	xor    (%edx),%si
c060c6a7:	5f                   	pop    %edi
c060c6a8:	53                   	push   %ebx
c060c6a9:	65 63 74 69 6f       	arpl   %si,%gs:0x6f(%ecx,%ebp,2)
c060c6ae:	6e                   	outsb  %ds:(%esi),(%dx)
c060c6af:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060c6b3:	2c 32                	sub    $0x32,%al
c060c6b5:	30 29                	xor    %ch,(%ecx)
c060c6b7:	3d 28 38 2c 33       	cmp    $0x332c3828,%eax
c060c6bc:	29 00                	sub    %eax,(%eax)
c060c6be:	45                   	inc    %ebp
c060c6bf:	6c                   	insb   (%dx),%es:(%edi)
c060c6c0:	66 36 34 5f          	data16 ss xor $0x5f,%al
c060c6c4:	53                   	push   %ebx
c060c6c5:	65 63 74 69 6f       	arpl   %si,%gs:0x6f(%ecx,%ebp,2)
c060c6ca:	6e                   	outsb  %ds:(%esi),(%dx)
c060c6cb:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060c6cf:	2c 32                	sub    $0x32,%al
c060c6d1:	31 29                	xor    %ebp,(%ecx)
c060c6d3:	3d 28 38 2c 33       	cmp    $0x332c3828,%eax
c060c6d8:	29 00                	sub    %eax,(%eax)
c060c6da:	45                   	inc    %ebp
c060c6db:	6c                   	insb   (%dx),%es:(%edi)
c060c6dc:	66 33 32             	xor    (%edx),%si
c060c6df:	5f                   	pop    %edi
c060c6e0:	56                   	push   %esi
c060c6e1:	65 72 73             	gs jb  c060c757 <.stab+0x231f>
c060c6e4:	79 6d                	jns    c060c753 <.stab+0x231b>
c060c6e6:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060c6ea:	2c 32                	sub    $0x32,%al
c060c6ec:	32 29                	xor    (%ecx),%ch
c060c6ee:	3d 28 38 2c 36       	cmp    $0x362c3828,%eax
c060c6f3:	29 00                	sub    %eax,(%eax)
c060c6f5:	45                   	inc    %ebp
c060c6f6:	6c                   	insb   (%dx),%es:(%edi)
c060c6f7:	66 36 34 5f          	data16 ss xor $0x5f,%al
c060c6fb:	56                   	push   %esi
c060c6fc:	65 72 73             	gs jb  c060c772 <.stab+0x233a>
c060c6ff:	79 6d                	jns    c060c76e <.stab+0x2336>
c060c701:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060c705:	2c 32                	sub    $0x32,%al
c060c707:	33 29                	xor    (%ecx),%ebp
c060c709:	3d 28 38 2c 37       	cmp    $0x372c3828,%eax
c060c70e:	29 00                	sub    %eax,(%eax)
c060c710:	45                   	inc    %ebp
c060c711:	6c                   	insb   (%dx),%es:(%edi)
c060c712:	66 33 32             	xor    (%edx),%si
c060c715:	5f                   	pop    %edi
c060c716:	45                   	inc    %ebp
c060c717:	68 64 72 3a 74       	push   $0x743a7264
c060c71c:	28 38                	sub    %bh,(%eax)
c060c71e:	2c 32                	sub    $0x32,%al
c060c720:	34 29                	xor    $0x29,%al
c060c722:	3d 28 38 2c 32       	cmp    $0x322c3828,%eax
c060c727:	35 29 3d 73 35       	xor    $0x35733d29,%eax
c060c72c:	32 65 5f             	xor    0x5f(%ebp),%ah
c060c72f:	6d                   	insl   (%dx),%es:(%edi)
c060c730:	61                   	popa   
c060c731:	67 69 63 3a 28 38 2c 	imul   $0x342c3828,0x3a(%bp,%di),%esp
c060c738:	34 
c060c739:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060c73c:	2c 33                	sub    $0x33,%al
c060c73e:	32 3b                	xor    (%ebx),%bh
c060c740:	65 5f                	gs pop %edi
c060c742:	69 64 65 6e 74 3a 28 	imul   $0x38283a74,0x6e(%ebp,%eiz,2),%esp
c060c749:	38 
c060c74a:	2c 32                	sub    $0x32,%al
c060c74c:	36 29 3d 61 72 28 32 	sub    %edi,%ss:0x32287261
c060c753:	2c 31                	sub    $0x31,%al
c060c755:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060c75a:	31 31                	xor    %esi,(%ecx)
c060c75c:	3b 28                	cmp    (%eax),%ebp
c060c75e:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060c761:	33 29                	xor    (%ecx),%ebp
c060c763:	2c 33                	sub    $0x33,%al
c060c765:	32 2c 39             	xor    (%ecx,%edi,1),%ch
c060c768:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c060c76c:	74 79                	je     c060c7e7 <.stab+0x23af>
c060c76e:	70 65                	jo     c060c7d5 <.stab+0x239d>
c060c770:	3a 28                	cmp    (%eax),%ch
c060c772:	38 2c 36             	cmp    %ch,(%esi,%esi,1)
c060c775:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060c778:	32 38                	xor    (%eax),%bh
c060c77a:	2c 31                	sub    $0x31,%al
c060c77c:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c060c780:	6d                   	insl   (%dx),%es:(%edi)
c060c781:	61                   	popa   
c060c782:	63 68 69             	arpl   %bp,0x69(%eax)
c060c785:	6e                   	outsb  %ds:(%esi),(%dx)
c060c786:	65 3a 28             	cmp    %gs:(%eax),%ch
c060c789:	38 2c 36             	cmp    %ch,(%esi,%esi,1)
c060c78c:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060c78f:	34 34                	xor    $0x34,%al
c060c791:	2c 31                	sub    $0x31,%al
c060c793:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c060c797:	76 65                	jbe    c060c7fe <.stab+0x23c6>
c060c799:	72 73                	jb     c060c80e <.stab+0x23d6>
c060c79b:	69 6f 6e 3a 28 38 2c 	imul   $0x2c38283a,0x6e(%edi),%ebp
c060c7a2:	38 29                	cmp    %ch,(%ecx)
c060c7a4:	2c 31                	sub    $0x31,%al
c060c7a6:	36 30 2c 33          	xor    %ch,%ss:(%ebx,%esi,1)
c060c7aa:	32 3b                	xor    (%ebx),%bh
c060c7ac:	65 5f                	gs pop %edi
c060c7ae:	65 6e                	outsb  %gs:(%esi),(%dx)
c060c7b0:	74 72                	je     c060c824 <.stab+0x23ec>
c060c7b2:	79 3a                	jns    c060c7ee <.stab+0x23b6>
c060c7b4:	28 38                	sub    %bh,(%eax)
c060c7b6:	2c 31                	sub    $0x31,%al
c060c7b8:	36 29 2c 31          	sub    %ebp,%ss:(%ecx,%esi,1)
c060c7bc:	39 32                	cmp    %esi,(%edx)
c060c7be:	2c 33                	sub    $0x33,%al
c060c7c0:	32 3b                	xor    (%ebx),%bh
c060c7c2:	65 5f                	gs pop %edi
c060c7c4:	70 68                	jo     c060c82e <.stab+0x23f6>
c060c7c6:	6f                   	outsl  %ds:(%esi),(%dx)
c060c7c7:	66 66 3a 28          	data16 data16 cmp (%eax),%ch
c060c7cb:	38 2c 31             	cmp    %ch,(%ecx,%esi,1)
c060c7ce:	38 29                	cmp    %ch,(%ecx)
c060c7d0:	2c 32                	sub    $0x32,%al
c060c7d2:	32 34 2c             	xor    (%esp,%ebp,1),%dh
c060c7d5:	33 32                	xor    (%edx),%esi
c060c7d7:	3b 65 5f             	cmp    0x5f(%ebp),%esp
c060c7da:	73 68                	jae    c060c844 <.stab+0x240c>
c060c7dc:	6f                   	outsl  %ds:(%esi),(%dx)
c060c7dd:	66 66 3a 28          	data16 data16 cmp (%eax),%ch
c060c7e1:	38 2c 31             	cmp    %ch,(%ecx,%esi,1)
c060c7e4:	38 29                	cmp    %ch,(%ecx)
c060c7e6:	2c 32                	sub    $0x32,%al
c060c7e8:	35 36 2c 33 32       	xor    $0x32332c36,%eax
c060c7ed:	3b 65 5f             	cmp    0x5f(%ebp),%esp
c060c7f0:	66 6c                	data16 insb (%dx),%es:(%edi)
c060c7f2:	61                   	popa   
c060c7f3:	67 73 3a             	addr16 jae c060c830 <.stab+0x23f8>
c060c7f6:	28 38                	sub    %bh,(%eax)
c060c7f8:	2c 38                	sub    $0x38,%al
c060c7fa:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060c7fd:	38 38                	cmp    %bh,(%eax)
c060c7ff:	2c 33                	sub    $0x33,%al
c060c801:	32 3b                	xor    (%ebx),%bh
c060c803:	65 5f                	gs pop %edi
c060c805:	65 68 73 69 7a 65    	gs push $0x657a6973
c060c80b:	3a 28                	cmp    (%eax),%ch
c060c80d:	38 2c 36             	cmp    %ch,(%esi,%esi,1)
c060c810:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060c813:	32 30                	xor    (%eax),%dh
c060c815:	2c 31                	sub    $0x31,%al
c060c817:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c060c81b:	70 68                	jo     c060c885 <.stab+0x244d>
c060c81d:	65 6e                	outsb  %gs:(%esi),(%dx)
c060c81f:	74 73                	je     c060c894 <.stab+0x245c>
c060c821:	69 7a 65 3a 28 38 2c 	imul   $0x2c38283a,0x65(%edx),%edi
c060c828:	36 29 2c 33          	sub    %ebp,%ss:(%ebx,%esi,1)
c060c82c:	33 36                	xor    (%esi),%esi
c060c82e:	2c 31                	sub    $0x31,%al
c060c830:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c060c834:	70 68                	jo     c060c89e <.stab+0x2466>
c060c836:	6e                   	outsb  %ds:(%esi),(%dx)
c060c837:	75 6d                	jne    c060c8a6 <.stab+0x246e>
c060c839:	3a 28                	cmp    (%eax),%ch
c060c83b:	38 2c 36             	cmp    %ch,(%esi,%esi,1)
c060c83e:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060c841:	35 32 2c 31 36       	xor    $0x36312c32,%eax
c060c846:	3b 65 5f             	cmp    0x5f(%ebp),%esp
c060c849:	73 68                	jae    c060c8b3 <.stab+0x247b>
c060c84b:	65 6e                	outsb  %gs:(%esi),(%dx)
c060c84d:	74 73                	je     c060c8c2 <.stab+0x248a>
c060c84f:	69 7a 65 3a 28 38 2c 	imul   $0x2c38283a,0x65(%edx),%edi
c060c856:	36 29 2c 33          	sub    %ebp,%ss:(%ebx,%esi,1)
c060c85a:	36 38 2c 31          	cmp    %ch,%ss:(%ecx,%esi,1)
c060c85e:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c060c862:	73 68                	jae    c060c8cc <.stab+0x2494>
c060c864:	6e                   	outsb  %ds:(%esi),(%dx)
c060c865:	75 6d                	jne    c060c8d4 <.stab+0x249c>
c060c867:	3a 28                	cmp    (%eax),%ch
c060c869:	38 2c 36             	cmp    %ch,(%esi,%esi,1)
c060c86c:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060c86f:	38 34 2c             	cmp    %dh,(%esp,%ebp,1)
c060c872:	31 36                	xor    %esi,(%esi)
c060c874:	3b 65 5f             	cmp    0x5f(%ebp),%esp
c060c877:	73 68                	jae    c060c8e1 <.stab+0x24a9>
c060c879:	73 74                	jae    c060c8ef <.stab+0x24b7>
c060c87b:	72 6e                	jb     c060c8eb <.stab+0x24b3>
c060c87d:	64 78 3a             	fs js  c060c8ba <.stab+0x2482>
c060c880:	28 38                	sub    %bh,(%eax)
c060c882:	2c 36                	sub    $0x36,%al
c060c884:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060c887:	30 30                	xor    %dh,(%eax)
c060c889:	2c 31                	sub    $0x31,%al
c060c88b:	36 3b 3b             	cmp    %ss:(%ebx),%edi
c060c88e:	00 45 6c             	add    %al,0x6c(%ebp)
c060c891:	66 33 32             	xor    (%edx),%si
c060c894:	5f                   	pop    %edi
c060c895:	53                   	push   %ebx
c060c896:	68 64 72 3a 74       	push   $0x743a7264
c060c89b:	28 38                	sub    %bh,(%eax)
c060c89d:	2c 32                	sub    $0x32,%al
c060c89f:	37                   	aaa    
c060c8a0:	29 3d 28 38 2c 32    	sub    %edi,0x322c3828
c060c8a6:	38 29                	cmp    %ch,(%ecx)
c060c8a8:	3d 73 34 30 73       	cmp    $0x73303473,%eax
c060c8ad:	68 5f 6e 61 6d       	push   $0x6d616e5f
c060c8b2:	65 3a 28             	cmp    %gs:(%eax),%ch
c060c8b5:	38 2c 38             	cmp    %ch,(%eax,%edi,1)
c060c8b8:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060c8bb:	2c 33                	sub    $0x33,%al
c060c8bd:	32 3b                	xor    (%ebx),%bh
c060c8bf:	73 68                	jae    c060c929 <.stab+0x24f1>
c060c8c1:	5f                   	pop    %edi
c060c8c2:	74 79                	je     c060c93d <.stab+0x2505>
c060c8c4:	70 65                	jo     c060c92b <.stab+0x24f3>
c060c8c6:	3a 28                	cmp    (%eax),%ch
c060c8c8:	38 2c 38             	cmp    %ch,(%eax,%edi,1)
c060c8cb:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060c8ce:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060c8d1:	32 3b                	xor    (%ebx),%bh
c060c8d3:	73 68                	jae    c060c93d <.stab+0x2505>
c060c8d5:	5f                   	pop    %edi
c060c8d6:	66 6c                	data16 insb (%dx),%es:(%edi)
c060c8d8:	61                   	popa   
c060c8d9:	67 73 3a             	addr16 jae c060c916 <.stab+0x24de>
c060c8dc:	28 38                	sub    %bh,(%eax)
c060c8de:	2c 38                	sub    $0x38,%al
c060c8e0:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060c8e3:	34 2c                	xor    $0x2c,%al
c060c8e5:	33 32                	xor    (%edx),%esi
c060c8e7:	3b 73 68             	cmp    0x68(%ebx),%esi
c060c8ea:	5f                   	pop    %edi
c060c8eb:	61                   	popa   
c060c8ec:	64 64 72 3a          	fs fs jb c060c92a <.stab+0x24f2>
c060c8f0:	28 38                	sub    %bh,(%eax)
c060c8f2:	2c 31                	sub    $0x31,%al
c060c8f4:	36 29 2c 39          	sub    %ebp,%ss:(%ecx,%edi,1)
c060c8f8:	36 2c 33             	ss sub $0x33,%al
c060c8fb:	32 3b                	xor    (%ebx),%bh
c060c8fd:	73 68                	jae    c060c967 <.stab+0x252f>
c060c8ff:	5f                   	pop    %edi
c060c900:	6f                   	outsl  %ds:(%esi),(%dx)
c060c901:	66 66 73 65          	data16 data16 jae c060c96a <.stab+0x2532>
c060c905:	74 3a                	je     c060c941 <.stab+0x2509>
c060c907:	28 38                	sub    %bh,(%eax)
c060c909:	2c 31                	sub    $0x31,%al
c060c90b:	38 29                	cmp    %ch,(%ecx)
c060c90d:	2c 31                	sub    $0x31,%al
c060c90f:	32 38                	xor    (%eax),%bh
c060c911:	2c 33                	sub    $0x33,%al
c060c913:	32 3b                	xor    (%ebx),%bh
c060c915:	73 68                	jae    c060c97f <.stab+0x2547>
c060c917:	5f                   	pop    %edi
c060c918:	73 69                	jae    c060c983 <.stab+0x254b>
c060c91a:	7a 65                	jp     c060c981 <.stab+0x2549>
c060c91c:	3a 28                	cmp    (%eax),%ch
c060c91e:	38 2c 38             	cmp    %ch,(%eax,%edi,1)
c060c921:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060c924:	36 30 2c 33          	xor    %ch,%ss:(%ebx,%esi,1)
c060c928:	32 3b                	xor    (%ebx),%bh
c060c92a:	73 68                	jae    c060c994 <.stab+0x255c>
c060c92c:	5f                   	pop    %edi
c060c92d:	6c                   	insb   (%dx),%es:(%edi)
c060c92e:	69 6e 6b 3a 28 38 2c 	imul   $0x2c38283a,0x6b(%esi),%ebp
c060c935:	38 29                	cmp    %ch,(%ecx)
c060c937:	2c 31                	sub    $0x31,%al
c060c939:	39 32                	cmp    %esi,(%edx)
c060c93b:	2c 33                	sub    $0x33,%al
c060c93d:	32 3b                	xor    (%ebx),%bh
c060c93f:	73 68                	jae    c060c9a9 <.stab+0x2571>
c060c941:	5f                   	pop    %edi
c060c942:	69 6e 66 6f 3a 28 38 	imul   $0x38283a6f,0x66(%esi),%ebp
c060c949:	2c 38                	sub    $0x38,%al
c060c94b:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060c94e:	32 34 2c             	xor    (%esp,%ebp,1),%dh
c060c951:	33 32                	xor    (%edx),%esi
c060c953:	3b 73 68             	cmp    0x68(%ebx),%esi
c060c956:	5f                   	pop    %edi
c060c957:	61                   	popa   
c060c958:	64 64 72 61          	fs fs jb c060c9bd <.stab+0x2585>
c060c95c:	6c                   	insb   (%dx),%es:(%edi)
c060c95d:	69 67 6e 3a 28 38 2c 	imul   $0x2c38283a,0x6e(%edi),%esp
c060c964:	38 29                	cmp    %ch,(%ecx)
c060c966:	2c 32                	sub    $0x32,%al
c060c968:	35 36 2c 33 32       	xor    $0x32332c36,%eax
c060c96d:	3b 73 68             	cmp    0x68(%ebx),%esi
c060c970:	5f                   	pop    %edi
c060c971:	65 6e                	outsb  %gs:(%esi),(%dx)
c060c973:	74 73                	je     c060c9e8 <.stab+0x25b0>
c060c975:	69 7a 65 3a 28 38 2c 	imul   $0x2c38283a,0x65(%edx),%edi
c060c97c:	38 29                	cmp    %ch,(%ecx)
c060c97e:	2c 32                	sub    $0x32,%al
c060c980:	38 38                	cmp    %bh,(%eax)
c060c982:	2c 33                	sub    $0x33,%al
c060c984:	32 3b                	xor    (%ebx),%bh
c060c986:	3b 00                	cmp    (%eax),%eax
c060c988:	45                   	inc    %ebp
c060c989:	6c                   	insb   (%dx),%es:(%edi)
c060c98a:	66 36 34 5f          	data16 ss xor $0x5f,%al
c060c98e:	45                   	inc    %ebp
c060c98f:	68 64 72 3a 74       	push   $0x743a7264
c060c994:	28 38                	sub    %bh,(%eax)
c060c996:	2c 32                	sub    $0x32,%al
c060c998:	39 29                	cmp    %ebp,(%ecx)
c060c99a:	3d 28 38 2c 33       	cmp    $0x332c3828,%eax
c060c99f:	30 29                	xor    %ch,(%ecx)
c060c9a1:	3d 73 36 30 65       	cmp    $0x65303673,%eax
c060c9a6:	5f                   	pop    %edi
c060c9a7:	69 64 65 6e 74 3a 28 	imul   $0x38283a74,0x6e(%ebp,%eiz,2),%esp
c060c9ae:	38 
c060c9af:	2c 32                	sub    $0x32,%al
c060c9b1:	36 29 2c 30          	sub    %ebp,%ss:(%eax,%esi,1)
c060c9b5:	2c 39                	sub    $0x39,%al
c060c9b7:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c060c9bb:	74 79                	je     c060ca36 <.stab+0x25fe>
c060c9bd:	70 65                	jo     c060ca24 <.stab+0x25ec>
c060c9bf:	3a 28                	cmp    (%eax),%ch
c060c9c1:	38 2c 37             	cmp    %ch,(%edi,%esi,1)
c060c9c4:	29 2c 39             	sub    %ebp,(%ecx,%edi,1)
c060c9c7:	36 2c 31             	ss sub $0x31,%al
c060c9ca:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c060c9ce:	6d                   	insl   (%dx),%es:(%edi)
c060c9cf:	61                   	popa   
c060c9d0:	63 68 69             	arpl   %bp,0x69(%eax)
c060c9d3:	6e                   	outsb  %ds:(%esi),(%dx)
c060c9d4:	65 3a 28             	cmp    %gs:(%eax),%ch
c060c9d7:	38 2c 37             	cmp    %ch,(%edi,%esi,1)
c060c9da:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060c9dd:	31 32                	xor    %esi,(%edx)
c060c9df:	2c 31                	sub    $0x31,%al
c060c9e1:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c060c9e5:	76 65                	jbe    c060ca4c <.stab+0x2614>
c060c9e7:	72 73                	jb     c060ca5c <.stab+0x2624>
c060c9e9:	69 6f 6e 3a 28 38 2c 	imul   $0x2c38283a,0x6e(%edi),%ebp
c060c9f0:	31 30                	xor    %esi,(%eax)
c060c9f2:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060c9f5:	32 38                	xor    (%eax),%bh
c060c9f7:	2c 33                	sub    $0x33,%al
c060c9f9:	32 3b                	xor    (%ebx),%bh
c060c9fb:	65 5f                	gs pop %edi
c060c9fd:	65 6e                	outsb  %gs:(%esi),(%dx)
c060c9ff:	74 72                	je     c060ca73 <.stab+0x263b>
c060ca01:	79 3a                	jns    c060ca3d <.stab+0x2605>
c060ca03:	28 38                	sub    %bh,(%eax)
c060ca05:	2c 31                	sub    $0x31,%al
c060ca07:	37                   	aaa    
c060ca08:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060ca0b:	36 30 2c 36          	xor    %ch,%ss:(%esi,%esi,1)
c060ca0f:	34 3b                	xor    $0x3b,%al
c060ca11:	65 5f                	gs pop %edi
c060ca13:	70 68                	jo     c060ca7d <.stab+0x2645>
c060ca15:	6f                   	outsl  %ds:(%esi),(%dx)
c060ca16:	66 66 3a 28          	data16 data16 cmp (%eax),%ch
c060ca1a:	38 2c 31             	cmp    %ch,(%ecx,%esi,1)
c060ca1d:	39 29                	cmp    %ebp,(%ecx)
c060ca1f:	2c 32                	sub    $0x32,%al
c060ca21:	32 34 2c             	xor    (%esp,%ebp,1),%dh
c060ca24:	36 34 3b             	ss xor $0x3b,%al
c060ca27:	65 5f                	gs pop %edi
c060ca29:	73 68                	jae    c060ca93 <.stab+0x265b>
c060ca2b:	6f                   	outsl  %ds:(%esi),(%dx)
c060ca2c:	66 66 3a 28          	data16 data16 cmp (%eax),%ch
c060ca30:	38 2c 31             	cmp    %ch,(%ecx,%esi,1)
c060ca33:	39 29                	cmp    %ebp,(%ecx)
c060ca35:	2c 32                	sub    $0x32,%al
c060ca37:	38 38                	cmp    %bh,(%eax)
c060ca39:	2c 36                	sub    $0x36,%al
c060ca3b:	34 3b                	xor    $0x3b,%al
c060ca3d:	65 5f                	gs pop %edi
c060ca3f:	66 6c                	data16 insb (%dx),%es:(%edi)
c060ca41:	61                   	popa   
c060ca42:	67 73 3a             	addr16 jae c060ca7f <.stab+0x2647>
c060ca45:	28 38                	sub    %bh,(%eax)
c060ca47:	2c 31                	sub    $0x31,%al
c060ca49:	30 29                	xor    %ch,(%ecx)
c060ca4b:	2c 33                	sub    $0x33,%al
c060ca4d:	35 32 2c 33 32       	xor    $0x32332c32,%eax
c060ca52:	3b 65 5f             	cmp    0x5f(%ebp),%esp
c060ca55:	65 68 73 69 7a 65    	gs push $0x657a6973
c060ca5b:	3a 28                	cmp    (%eax),%ch
c060ca5d:	38 2c 37             	cmp    %ch,(%edi,%esi,1)
c060ca60:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060ca63:	38 34 2c             	cmp    %dh,(%esp,%ebp,1)
c060ca66:	31 36                	xor    %esi,(%esi)
c060ca68:	3b 65 5f             	cmp    0x5f(%ebp),%esp
c060ca6b:	70 68                	jo     c060cad5 <.stab+0x269d>
c060ca6d:	65 6e                	outsb  %gs:(%esi),(%dx)
c060ca6f:	74 73                	je     c060cae4 <.stab+0x26ac>
c060ca71:	69 7a 65 3a 28 38 2c 	imul   $0x2c38283a,0x65(%edx),%edi
c060ca78:	37                   	aaa    
c060ca79:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060ca7c:	30 30                	xor    %dh,(%eax)
c060ca7e:	2c 31                	sub    $0x31,%al
c060ca80:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c060ca84:	70 68                	jo     c060caee <.stab+0x26b6>
c060ca86:	6e                   	outsb  %ds:(%esi),(%dx)
c060ca87:	75 6d                	jne    c060caf6 <.stab+0x26be>
c060ca89:	3a 28                	cmp    (%eax),%ch
c060ca8b:	38 2c 37             	cmp    %ch,(%edi,%esi,1)
c060ca8e:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060ca91:	31 36                	xor    %esi,(%esi)
c060ca93:	2c 31                	sub    $0x31,%al
c060ca95:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c060ca99:	73 68                	jae    c060cb03 <.stab+0x26cb>
c060ca9b:	65 6e                	outsb  %gs:(%esi),(%dx)
c060ca9d:	74 73                	je     c060cb12 <.stab+0x26da>
c060ca9f:	69 7a 65 3a 28 38 2c 	imul   $0x2c38283a,0x65(%edx),%edi
c060caa6:	37                   	aaa    
c060caa7:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060caaa:	33 32                	xor    (%edx),%esi
c060caac:	2c 31                	sub    $0x31,%al
c060caae:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c060cab2:	73 68                	jae    c060cb1c <.stab+0x26e4>
c060cab4:	6e                   	outsb  %ds:(%esi),(%dx)
c060cab5:	75 6d                	jne    c060cb24 <.stab+0x26ec>
c060cab7:	3a 28                	cmp    (%eax),%ch
c060cab9:	38 2c 37             	cmp    %ch,(%edi,%esi,1)
c060cabc:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060cabf:	34 38                	xor    $0x38,%al
c060cac1:	2c 31                	sub    $0x31,%al
c060cac3:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c060cac7:	73 68                	jae    c060cb31 <.stab+0x26f9>
c060cac9:	73 74                	jae    c060cb3f <.stab+0x2707>
c060cacb:	72 6e                	jb     c060cb3b <.stab+0x2703>
c060cacd:	64 78 3a             	fs js  c060cb0a <.stab+0x26d2>
c060cad0:	28 38                	sub    %bh,(%eax)
c060cad2:	2c 37                	sub    $0x37,%al
c060cad4:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060cad7:	36 34 2c             	ss xor $0x2c,%al
c060cada:	31 36                	xor    %esi,(%esi)
c060cadc:	3b 3b                	cmp    (%ebx),%edi
c060cade:	00 45 6c             	add    %al,0x6c(%ebp)
c060cae1:	66 33 32             	xor    (%edx),%si
c060cae4:	5f                   	pop    %edi
c060cae5:	53                   	push   %ebx
c060cae6:	79 6d                	jns    c060cb55 <.stab+0x271d>
c060cae8:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060caec:	2c 33                	sub    $0x33,%al
c060caee:	31 29                	xor    %ebp,(%ecx)
c060caf0:	3d 28 38 2c 33       	cmp    $0x332c3828,%eax
c060caf5:	32 29                	xor    (%ecx),%ch
c060caf7:	3d 73 31 36 73       	cmp    $0x73363173,%eax
c060cafc:	74 5f                	je     c060cb5d <.stab+0x2725>
c060cafe:	6e                   	outsb  %ds:(%esi),(%dx)
c060caff:	61                   	popa   
c060cb00:	6d                   	insl   (%dx),%es:(%edi)
c060cb01:	65 3a 28             	cmp    %gs:(%eax),%ch
c060cb04:	38 2c 38             	cmp    %ch,(%eax,%edi,1)
c060cb07:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060cb0a:	2c 33                	sub    $0x33,%al
c060cb0c:	32 3b                	xor    (%ebx),%bh
c060cb0e:	73 74                	jae    c060cb84 <.stab+0x274c>
c060cb10:	5f                   	pop    %edi
c060cb11:	76 61                	jbe    c060cb74 <.stab+0x273c>
c060cb13:	6c                   	insb   (%dx),%es:(%edi)
c060cb14:	75 65                	jne    c060cb7b <.stab+0x2743>
c060cb16:	3a 28                	cmp    (%eax),%ch
c060cb18:	38 2c 31             	cmp    %ch,(%ecx,%esi,1)
c060cb1b:	36 29 2c 33          	sub    %ebp,%ss:(%ebx,%esi,1)
c060cb1f:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060cb22:	32 3b                	xor    (%ebx),%bh
c060cb24:	73 74                	jae    c060cb9a <.stab+0x2762>
c060cb26:	5f                   	pop    %edi
c060cb27:	73 69                	jae    c060cb92 <.stab+0x275a>
c060cb29:	7a 65                	jp     c060cb90 <.stab+0x2758>
c060cb2b:	3a 28                	cmp    (%eax),%ch
c060cb2d:	38 2c 38             	cmp    %ch,(%eax,%edi,1)
c060cb30:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060cb33:	34 2c                	xor    $0x2c,%al
c060cb35:	33 32                	xor    (%edx),%esi
c060cb37:	3b 73 74             	cmp    0x74(%ebx),%esi
c060cb3a:	5f                   	pop    %edi
c060cb3b:	69 6e 66 6f 3a 28 30 	imul   $0x30283a6f,0x66(%esi),%ebp
c060cb42:	2c 31                	sub    $0x31,%al
c060cb44:	33 29                	xor    (%ecx),%ebp
c060cb46:	2c 39                	sub    $0x39,%al
c060cb48:	36 2c 38             	ss sub $0x38,%al
c060cb4b:	3b 73 74             	cmp    0x74(%ebx),%esi
c060cb4e:	5f                   	pop    %edi
c060cb4f:	6f                   	outsl  %ds:(%esi),(%dx)
c060cb50:	74 68                	je     c060cbba <.stab+0x2782>
c060cb52:	65 72 3a             	gs jb  c060cb8f <.stab+0x2757>
c060cb55:	28 30                	sub    %dh,(%eax)
c060cb57:	2c 31                	sub    $0x31,%al
c060cb59:	33 29                	xor    (%ecx),%ebp
c060cb5b:	2c 31                	sub    $0x31,%al
c060cb5d:	30 34 2c             	xor    %dh,(%esp,%ebp,1)
c060cb60:	38 3b                	cmp    %bh,(%ebx)
c060cb62:	73 74                	jae    c060cbd8 <.stab+0x27a0>
c060cb64:	5f                   	pop    %edi
c060cb65:	73 68                	jae    c060cbcf <.stab+0x2797>
c060cb67:	6e                   	outsb  %ds:(%esi),(%dx)
c060cb68:	64 78 3a             	fs js  c060cba5 <.stab+0x276d>
c060cb6b:	28 38                	sub    %bh,(%eax)
c060cb6d:	2c 36                	sub    $0x36,%al
c060cb6f:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060cb72:	31 32                	xor    %esi,(%edx)
c060cb74:	2c 31                	sub    $0x31,%al
c060cb76:	36 3b 3b             	cmp    %ss:(%ebx),%edi
c060cb79:	00 45 6c             	add    %al,0x6c(%ebp)
c060cb7c:	66 33 32             	xor    (%edx),%si
c060cb7f:	5f                   	pop    %edi
c060cb80:	52                   	push   %edx
c060cb81:	65 6c                	gs insb (%dx),%es:(%edi)
c060cb83:	3a 74 28 38          	cmp    0x38(%eax,%ebp,1),%dh
c060cb87:	2c 33                	sub    $0x33,%al
c060cb89:	33 29                	xor    (%ecx),%ebp
c060cb8b:	3d 28 38 2c 33       	cmp    $0x332c3828,%eax
c060cb90:	34 29                	xor    $0x29,%al
c060cb92:	3d 73 38 72 5f       	cmp    $0x5f723873,%eax
c060cb97:	6f                   	outsl  %ds:(%esi),(%dx)
c060cb98:	66 66 73 65          	data16 data16 jae c060cc01 <.stab+0x27c9>
c060cb9c:	74 3a                	je     c060cbd8 <.stab+0x27a0>
c060cb9e:	28 38                	sub    %bh,(%eax)
c060cba0:	2c 38                	sub    $0x38,%al
c060cba2:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060cba5:	2c 33                	sub    $0x33,%al
c060cba7:	32 3b                	xor    (%ebx),%bh
c060cba9:	72 5f                	jb     c060cc0a <.stab+0x27d2>
c060cbab:	69 6e 66 6f 3a 28 38 	imul   $0x38283a6f,0x66(%esi),%ebp
c060cbb2:	2c 31                	sub    $0x31,%al
c060cbb4:	36 29 2c 33          	sub    %ebp,%ss:(%ebx,%esi,1)
c060cbb8:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060cbbb:	32 3b                	xor    (%ebx),%bh
c060cbbd:	3b 00                	cmp    (%eax),%eax
c060cbbf:	45                   	inc    %ebp
c060cbc0:	6c                   	insb   (%dx),%es:(%edi)
c060cbc1:	66 33 32             	xor    (%edx),%si
c060cbc4:	5f                   	pop    %edi
c060cbc5:	50                   	push   %eax
c060cbc6:	68 64 72 3a 74       	push   $0x743a7264
c060cbcb:	28 38                	sub    %bh,(%eax)
c060cbcd:	2c 33                	sub    $0x33,%al
c060cbcf:	35 29 3d 28 38       	xor    $0x38283d29,%eax
c060cbd4:	2c 33                	sub    $0x33,%al
c060cbd6:	36 29 3d 73 33 32 70 	sub    %edi,%ss:0x70323373
c060cbdd:	5f                   	pop    %edi
c060cbde:	74 79                	je     c060cc59 <.stab+0x2821>
c060cbe0:	70 65                	jo     c060cc47 <.stab+0x280f>
c060cbe2:	3a 28                	cmp    (%eax),%ch
c060cbe4:	38 2c 38             	cmp    %ch,(%eax,%edi,1)
c060cbe7:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060cbea:	2c 33                	sub    $0x33,%al
c060cbec:	32 3b                	xor    (%ebx),%bh
c060cbee:	70 5f                	jo     c060cc4f <.stab+0x2817>
c060cbf0:	6f                   	outsl  %ds:(%esi),(%dx)
c060cbf1:	66 66 73 65          	data16 data16 jae c060cc5a <.stab+0x2822>
c060cbf5:	74 3a                	je     c060cc31 <.stab+0x27f9>
c060cbf7:	28 38                	sub    %bh,(%eax)
c060cbf9:	2c 31                	sub    $0x31,%al
c060cbfb:	38 29                	cmp    %ch,(%ecx)
c060cbfd:	2c 33                	sub    $0x33,%al
c060cbff:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060cc02:	32 3b                	xor    (%ebx),%bh
c060cc04:	70 5f                	jo     c060cc65 <.stab+0x282d>
c060cc06:	76 61                	jbe    c060cc69 <.stab+0x2831>
c060cc08:	64 64 72 3a          	fs fs jb c060cc46 <.stab+0x280e>
c060cc0c:	28 38                	sub    %bh,(%eax)
c060cc0e:	2c 31                	sub    $0x31,%al
c060cc10:	36 29 2c 36          	sub    %ebp,%ss:(%esi,%esi,1)
c060cc14:	34 2c                	xor    $0x2c,%al
c060cc16:	33 32                	xor    (%edx),%esi
c060cc18:	3b 70 5f             	cmp    0x5f(%eax),%esi
c060cc1b:	70 61                	jo     c060cc7e <.stab+0x2846>
c060cc1d:	64 64 72 3a          	fs fs jb c060cc5b <.stab+0x2823>
c060cc21:	28 38                	sub    %bh,(%eax)
c060cc23:	2c 31                	sub    $0x31,%al
c060cc25:	36 29 2c 39          	sub    %ebp,%ss:(%ecx,%edi,1)
c060cc29:	36 2c 33             	ss sub $0x33,%al
c060cc2c:	32 3b                	xor    (%ebx),%bh
c060cc2e:	70 5f                	jo     c060cc8f <.stab+0x2857>
c060cc30:	66 69 6c 65 73 7a 3a 	imul   $0x3a7a,0x73(%ebp,%eiz,2),%bp
c060cc37:	28 38                	sub    %bh,(%eax)
c060cc39:	2c 38                	sub    $0x38,%al
c060cc3b:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060cc3e:	32 38                	xor    (%eax),%bh
c060cc40:	2c 33                	sub    $0x33,%al
c060cc42:	32 3b                	xor    (%ebx),%bh
c060cc44:	70 5f                	jo     c060cca5 <.stab+0x286d>
c060cc46:	6d                   	insl   (%dx),%es:(%edi)
c060cc47:	65 6d                	gs insl (%dx),%es:(%edi)
c060cc49:	73 7a                	jae    c060ccc5 <.stab+0x288d>
c060cc4b:	3a 28                	cmp    (%eax),%ch
c060cc4d:	38 2c 38             	cmp    %ch,(%eax,%edi,1)
c060cc50:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060cc53:	36 30 2c 33          	xor    %ch,%ss:(%ebx,%esi,1)
c060cc57:	32 3b                	xor    (%ebx),%bh
c060cc59:	70 5f                	jo     c060ccba <.stab+0x2882>
c060cc5b:	66 6c                	data16 insb (%dx),%es:(%edi)
c060cc5d:	61                   	popa   
c060cc5e:	67 73 3a             	addr16 jae c060cc9b <.stab+0x2863>
c060cc61:	28 38                	sub    %bh,(%eax)
c060cc63:	2c 38                	sub    $0x38,%al
c060cc65:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060cc68:	39 32                	cmp    %esi,(%edx)
c060cc6a:	2c 33                	sub    $0x33,%al
c060cc6c:	32 3b                	xor    (%ebx),%bh
c060cc6e:	70 5f                	jo     c060cccf <.stab+0x2897>
c060cc70:	61                   	popa   
c060cc71:	6c                   	insb   (%dx),%es:(%edi)
c060cc72:	69 67 6e 3a 28 38 2c 	imul   $0x2c38283a,0x6e(%edi),%esp
c060cc79:	38 29                	cmp    %ch,(%ecx)
c060cc7b:	2c 32                	sub    $0x32,%al
c060cc7d:	32 34 2c             	xor    (%esp,%ebp,1),%dh
c060cc80:	33 32                	xor    (%edx),%esi
c060cc82:	3b 3b                	cmp    (%ebx),%edi
c060cc84:	00 5f 49             	add    %bl,0x49(%edi)
c060cc87:	4e                   	dec    %esi
c060cc88:	54                   	push   %esp
c060cc89:	3a 47 28             	cmp    0x28(%edi),%al
c060cc8c:	31 2c 32             	xor    %ebp,(%edx,%esi,1)
c060cc8f:	29 00                	sub    %eax,(%eax)
c060cc91:	5f                   	pop    %edi
c060cc92:	44                   	inc    %esp
c060cc93:	49                   	dec    %ecx
c060cc94:	53                   	push   %ebx
c060cc95:	4b                   	dec    %ebx
c060cc96:	5f                   	pop    %edi
c060cc97:	55                   	push   %ebp
c060cc98:	4e                   	dec    %esi
c060cc99:	49                   	dec    %ecx
c060cc9a:	54                   	push   %esp
c060cc9b:	3a 47 28             	cmp    0x28(%edi),%al
c060cc9e:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060cca1:	29 00                	sub    %eax,(%eax)
c060cca3:	5f                   	pop    %edi
c060cca4:	44                   	inc    %esp
c060cca5:	49                   	dec    %ecx
c060cca6:	53                   	push   %ebx
c060cca7:	4b                   	dec    %ebx
c060cca8:	5f                   	pop    %edi
c060cca9:	42                   	inc    %edx
c060ccaa:	59                   	pop    %ecx
c060ccab:	54                   	push   %esp
c060ccac:	45                   	inc    %ebp
c060ccad:	50                   	push   %eax
c060ccae:	45                   	inc    %ebp
c060ccaf:	52                   	push   %edx
c060ccb0:	53                   	push   %ebx
c060ccb1:	45                   	inc    %ebp
c060ccb2:	43                   	inc    %ebx
c060ccb3:	3a 47 28             	cmp    0x28(%edi),%al
c060ccb6:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060ccb9:	31 29                	xor    %ebp,(%ecx)
c060ccbb:	00 5f 44             	add    %bl,0x44(%edi)
c060ccbe:	49                   	dec    %ecx
c060ccbf:	53                   	push   %ebx
c060ccc0:	4b                   	dec    %ebx
c060ccc1:	5f                   	pop    %edi
c060ccc2:	4d                   	dec    %ebp
c060ccc3:	45                   	inc    %ebp
c060ccc4:	44                   	inc    %esp
c060ccc5:	49                   	dec    %ecx
c060ccc6:	41                   	inc    %ecx
c060ccc7:	3a 47 28             	cmp    0x28(%edi),%al
c060ccca:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060cccd:	29 00                	sub    %eax,(%eax)
c060cccf:	5f                   	pop    %edi
c060ccd0:	44                   	inc    %esp
c060ccd1:	49                   	dec    %ecx
c060ccd2:	53                   	push   %ebx
c060ccd3:	4b                   	dec    %ebx
c060ccd4:	5f                   	pop    %edi
c060ccd5:	52                   	push   %edx
c060ccd6:	57                   	push   %edi
c060ccd7:	5f                   	pop    %edi
c060ccd8:	55                   	push   %ebp
c060ccd9:	4e                   	dec    %esi
c060ccda:	49                   	dec    %ecx
c060ccdb:	54                   	push   %esp
c060ccdc:	3a 47 28             	cmp    0x28(%edi),%al
c060ccdf:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060cce2:	29 00                	sub    %eax,(%eax)
c060cce4:	5f                   	pop    %edi
c060cce5:	44                   	inc    %esp
c060cce6:	49                   	dec    %ecx
c060cce7:	53                   	push   %ebx
c060cce8:	4b                   	dec    %ebx
c060cce9:	5f                   	pop    %edi
c060ccea:	46                   	inc    %esi
c060cceb:	49                   	dec    %ecx
c060ccec:	4c                   	dec    %esp
c060cced:	45                   	inc    %ebp
c060ccee:	53                   	push   %ebx
c060ccef:	59                   	pop    %ecx
c060ccf0:	53                   	push   %ebx
c060ccf1:	54                   	push   %esp
c060ccf2:	45                   	inc    %ebp
c060ccf3:	4d                   	dec    %ebp
c060ccf4:	5f                   	pop    %edi
c060ccf5:	42                   	inc    %edx
c060ccf6:	4c                   	dec    %esp
c060ccf7:	4f                   	dec    %edi
c060ccf8:	43                   	inc    %ebx
c060ccf9:	4b                   	dec    %ebx
c060ccfa:	3a 47 28             	cmp    0x28(%edi),%al
c060ccfd:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060cd00:	29 00                	sub    %eax,(%eax)
c060cd02:	5f                   	pop    %edi
c060cd03:	44                   	inc    %esp
c060cd04:	49                   	dec    %ecx
c060cd05:	53                   	push   %ebx
c060cd06:	4b                   	dec    %ebx
c060cd07:	5f                   	pop    %edi
c060cd08:	54                   	push   %esp
c060cd09:	4f                   	dec    %edi
c060cd0a:	5f                   	pop    %edi
c060cd0b:	42                   	inc    %edx
c060cd0c:	4c                   	dec    %esp
c060cd0d:	4f                   	dec    %edi
c060cd0e:	43                   	inc    %ebx
c060cd0f:	4b                   	dec    %ebx
c060cd10:	3a 47 28             	cmp    0x28(%edi),%al
c060cd13:	32 2c 35 29 00 5f 4d 	xor    0x4d5f0029(,%esi,1),%ch
c060cd1a:	45                   	inc    %ebp
c060cd1b:	4d                   	dec    %ebp
c060cd1c:	4f                   	dec    %edi
c060cd1d:	52                   	push   %edx
c060cd1e:	59                   	pop    %ecx
c060cd1f:	5f                   	pop    %edi
c060cd20:	53                   	push   %ebx
c060cd21:	49                   	dec    %ecx
c060cd22:	5a                   	pop    %edx
c060cd23:	45                   	inc    %ebp
c060cd24:	3a 47 28             	cmp    0x28(%edi),%al
c060cd27:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060cd2a:	29 00                	sub    %eax,(%eax)
c060cd2c:	5f                   	pop    %edi
c060cd2d:	4d                   	dec    %ebp
c060cd2e:	45                   	inc    %ebp
c060cd2f:	4d                   	dec    %ebp
c060cd30:	4f                   	dec    %edi
c060cd31:	52                   	push   %edx
c060cd32:	59                   	pop    %ecx
c060cd33:	5f                   	pop    %edi
c060cd34:	50                   	push   %eax
c060cd35:	41                   	inc    %ecx
c060cd36:	47                   	inc    %edi
c060cd37:	45                   	inc    %ebp
c060cd38:	5f                   	pop    %edi
c060cd39:	53                   	push   %ebx
c060cd3a:	49                   	dec    %ecx
c060cd3b:	5a                   	pop    %edx
c060cd3c:	45                   	inc    %ebp
c060cd3d:	3a 47 28             	cmp    0x28(%edi),%al
c060cd40:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060cd43:	29 00                	sub    %eax,(%eax)
c060cd45:	5f                   	pop    %edi
c060cd46:	44                   	inc    %esp
c060cd47:	49                   	dec    %ecx
c060cd48:	53                   	push   %ebx
c060cd49:	50                   	push   %eax
c060cd4a:	4c                   	dec    %esp
c060cd4b:	41                   	inc    %ecx
c060cd4c:	59                   	pop    %ecx
c060cd4d:	5f                   	pop    %edi
c060cd4e:	4d                   	dec    %ebp
c060cd4f:	44                   	inc    %esp
c060cd50:	4f                   	dec    %edi
c060cd51:	45                   	inc    %ebp
c060cd52:	3a 47 28             	cmp    0x28(%edi),%al
c060cd55:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060cd58:	29 00                	sub    %eax,(%eax)
c060cd5a:	5f                   	pop    %edi
c060cd5b:	44                   	inc    %esp
c060cd5c:	49                   	dec    %ecx
c060cd5d:	53                   	push   %ebx
c060cd5e:	50                   	push   %eax
c060cd5f:	4c                   	dec    %esp
c060cd60:	41                   	inc    %ecx
c060cd61:	59                   	pop    %ecx
c060cd62:	5f                   	pop    %edi
c060cd63:	54                   	push   %esp
c060cd64:	45                   	inc    %ebp
c060cd65:	58                   	pop    %eax
c060cd66:	54                   	push   %esp
c060cd67:	5f                   	pop    %edi
c060cd68:	57                   	push   %edi
c060cd69:	49                   	dec    %ecx
c060cd6a:	44                   	inc    %esp
c060cd6b:	54                   	push   %esp
c060cd6c:	48                   	dec    %eax
c060cd6d:	3a 47 28             	cmp    0x28(%edi),%al
c060cd70:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060cd73:	29 00                	sub    %eax,(%eax)
c060cd75:	5f                   	pop    %edi
c060cd76:	44                   	inc    %esp
c060cd77:	49                   	dec    %ecx
c060cd78:	53                   	push   %ebx
c060cd79:	50                   	push   %eax
c060cd7a:	4c                   	dec    %esp
c060cd7b:	41                   	inc    %ecx
c060cd7c:	59                   	pop    %ecx
c060cd7d:	5f                   	pop    %edi
c060cd7e:	54                   	push   %esp
c060cd7f:	45                   	inc    %ebp
c060cd80:	58                   	pop    %eax
c060cd81:	54                   	push   %esp
c060cd82:	5f                   	pop    %edi
c060cd83:	48                   	dec    %eax
c060cd84:	45                   	inc    %ebp
c060cd85:	49                   	dec    %ecx
c060cd86:	47                   	inc    %edi
c060cd87:	48                   	dec    %eax
c060cd88:	54                   	push   %esp
c060cd89:	3a 47 28             	cmp    0x28(%edi),%al
c060cd8c:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060cd8f:	29 00                	sub    %eax,(%eax)
c060cd91:	5f                   	pop    %edi
c060cd92:	44                   	inc    %esp
c060cd93:	49                   	dec    %ecx
c060cd94:	53                   	push   %ebx
c060cd95:	50                   	push   %eax
c060cd96:	4c                   	dec    %esp
c060cd97:	41                   	inc    %ecx
c060cd98:	59                   	pop    %ecx
c060cd99:	5f                   	pop    %edi
c060cd9a:	54                   	push   %esp
c060cd9b:	45                   	inc    %ebp
c060cd9c:	58                   	pop    %eax
c060cd9d:	54                   	push   %esp
c060cd9e:	5f                   	pop    %edi
c060cd9f:	41                   	inc    %ecx
c060cda0:	44                   	inc    %esp
c060cda1:	44                   	inc    %esp
c060cda2:	52                   	push   %edx
c060cda3:	3a 47 28             	cmp    0x28(%edi),%al
c060cda6:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060cda9:	29 00                	sub    %eax,(%eax)
c060cdab:	5f                   	pop    %edi
c060cdac:	4b                   	dec    %ebx
c060cdad:	45                   	inc    %ebp
c060cdae:	52                   	push   %edx
c060cdaf:	4e                   	dec    %esi
c060cdb0:	45                   	inc    %ebp
c060cdb1:	4c                   	dec    %esp
c060cdb2:	5f                   	pop    %edi
c060cdb3:	49                   	dec    %ecx
c060cdb4:	4e                   	dec    %esi
c060cdb5:	46                   	inc    %esi
c060cdb6:	4f                   	dec    %edi
c060cdb7:	3a 47 28             	cmp    0x28(%edi),%al
c060cdba:	31 2c 32             	xor    %ebp,(%edx,%esi,1)
c060cdbd:	29 00                	sub    %eax,(%eax)
c060cdbf:	5f                   	pop    %edi
c060cdc0:	54                   	push   %esp
c060cdc1:	49                   	dec    %ecx
c060cdc2:	4d                   	dec    %ebp
c060cdc3:	45                   	inc    %ebp
c060cdc4:	5f                   	pop    %edi
c060cdc5:	4c                   	dec    %esp
c060cdc6:	4f                   	dec    %edi
c060cdc7:	43                   	inc    %ebx
c060cdc8:	41                   	inc    %ecx
c060cdc9:	4c                   	dec    %esp
c060cdca:	5f                   	pop    %edi
c060cdcb:	54                   	push   %esp
c060cdcc:	49                   	dec    %ecx
c060cdcd:	4d                   	dec    %ebp
c060cdce:	45                   	inc    %ebp
c060cdcf:	5f                   	pop    %edi
c060cdd0:	5a                   	pop    %edx
c060cdd1:	4f                   	dec    %edi
c060cdd2:	4e                   	dec    %esi
c060cdd3:	45                   	inc    %ebp
c060cdd4:	3a 47 28             	cmp    0x28(%edi),%al
c060cdd7:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060cdda:	29 00                	sub    %eax,(%eax)
c060cddc:	5f                   	pop    %edi
c060cddd:	54                   	push   %esp
c060cdde:	49                   	dec    %ecx
c060cddf:	4d                   	dec    %ebp
c060cde0:	45                   	inc    %ebp
c060cde1:	5f                   	pop    %edi
c060cde2:	42                   	inc    %edx
c060cde3:	41                   	inc    %ecx
c060cde4:	53                   	push   %ebx
c060cde5:	45                   	inc    %ebp
c060cde6:	5f                   	pop    %edi
c060cde7:	43                   	inc    %ebx
c060cde8:	45                   	inc    %ebp
c060cde9:	4e                   	dec    %esi
c060cdea:	54                   	push   %esp
c060cdeb:	55                   	push   %ebp
c060cdec:	52                   	push   %edx
c060cded:	59                   	pop    %ecx
c060cdee:	5f                   	pop    %edi
c060cdef:	59                   	pop    %ecx
c060cdf0:	45                   	inc    %ebp
c060cdf1:	41                   	inc    %ecx
c060cdf2:	52                   	push   %edx
c060cdf3:	3a 47 28             	cmp    0x28(%edi),%al
c060cdf6:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060cdf9:	29 00                	sub    %eax,(%eax)
c060cdfb:	69 6e 69 74 73 79 73 	imul   $0x73797374,0x69(%esi),%ebp
c060ce02:	5f                   	pop    %edi
c060ce03:	69 6e 66 6f 3a 46 28 	imul   $0x28463a6f,0x66(%esi),%ebp
c060ce0a:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060ce0d:	35 29 00 72 65       	xor    $0x65720029,%eax
c060ce12:	61                   	popa   
c060ce13:	64 73 65             	fs jae c060ce7b <.stab+0x2a43>
c060ce16:	67 3a 46 28          	cmp    0x28(%bp),%al
c060ce1a:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060ce1d:	35 29 00 70 61       	xor    $0x61700029,%eax
c060ce22:	3a 70 28             	cmp    0x28(%eax),%dh
c060ce25:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060ce28:	36 29 3d 2a 28 30 2c 	sub    %edi,%ss:0x2c30282a
c060ce2f:	32 29                	xor    (%ecx),%ch
c060ce31:	00 63 6f             	add    %ah,0x6f(%ebx)
c060ce34:	75 6e                	jne    c060cea4 <.stab+0x2a6c>
c060ce36:	74 3a                	je     c060ce72 <.stab+0x2a3a>
c060ce38:	70 28                	jo     c060ce62 <.stab+0x2a2a>
c060ce3a:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060ce3d:	29 00                	sub    %eax,(%eax)
c060ce3f:	6f                   	outsl  %ds:(%esi),(%dx)
c060ce40:	66 66 73 65          	data16 data16 jae c060cea9 <.stab+0x2a71>
c060ce44:	74 3a                	je     c060ce80 <.stab+0x2a48>
c060ce46:	70 28                	jo     c060ce70 <.stab+0x2a38>
c060ce48:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060ce4b:	29 00                	sub    %eax,(%eax)
c060ce4d:	6f                   	outsl  %ds:(%esi),(%dx)
c060ce4e:	66 66 73 65          	data16 data16 jae c060ceb7 <.stab+0x2a7f>
c060ce52:	74 3a                	je     c060ce8e <.stab+0x2a56>
c060ce54:	72 28                	jb     c060ce7e <.stab+0x2a46>
c060ce56:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060ce59:	29 00                	sub    %eax,(%eax)
c060ce5b:	66 75 6e             	data16 jne c060cecc <.stab+0x2a94>
c060ce5e:	3a 46 28             	cmp    0x28(%esi),%al
c060ce61:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060ce64:	35 29 00 6c 6f       	xor    $0x6f6c0029,%eax
c060ce69:	61                   	popa   
c060ce6a:	64 65 6c             	fs gs insb (%dx),%es:(%edi)
c060ce6d:	66 3a 46 28          	data16 cmp 0x28(%esi),%al
c060ce71:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060ce74:	35 29 00 65 6c       	xor    $0x6c650029,%eax
c060ce79:	66 61                	popaw  
c060ce7b:	64 64 72 3a          	fs fs jb c060ceb9 <.stab+0x2a81>
c060ce7f:	70 28                	jo     c060cea9 <.stab+0x2a71>
c060ce81:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060ce84:	37                   	aaa    
c060ce85:	29 3d 2a 28 30 2c    	sub    %edi,0x2c30282a
c060ce8b:	32 35 29 00 6d 61    	xor    0x616d0029,%dh
c060ce91:	69 6e 2e 63 00 2e 2e 	imul   $0x2e2e0063,0x2e(%esi),%ebp
c060ce98:	2f                   	das    
c060ce99:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c060cea0:	2f                   	das    
c060cea1:	69 6e 74 2e 68 00 75 	imul   $0x7500682e,0x74(%esi),%ebp
c060cea8:	77 6f                	ja     c060cf19 <.stab+0x2ae1>
c060ceaa:	72 64                	jb     c060cf10 <.stab+0x2ad8>
c060ceac:	5f                   	pop    %edi
c060cead:	74 3a                	je     c060cee9 <.stab+0x2ab1>
c060ceaf:	74 28                	je     c060ced9 <.stab+0x2aa1>
c060ceb1:	35 2c 31 29 3d       	xor    $0x3d29312c,%eax
c060ceb6:	28 30                	sub    %dh,(%eax)
c060ceb8:	2c 34                	sub    $0x34,%al
c060ceba:	29 00                	sub    %eax,(%eax)
c060cebc:	69 6e 74 65 72 72 75 	imul   $0x75727265,0x74(%esi),%ebp
c060cec3:	70 74                	jo     c060cf39 <.stab+0x2b01>
c060cec5:	5f                   	pop    %edi
c060cec6:	66 72 61             	data16 jb c060cf2a <.stab+0x2af2>
c060cec9:	6d                   	insl   (%dx),%es:(%edi)
c060ceca:	65 3a 54 28 35       	cmp    %gs:0x35(%eax,%ebp,1),%dl
c060cecf:	2c 32                	sub    $0x32,%al
c060ced1:	29 3d 73 31 32 65    	sub    %edi,0x65323173
c060ced7:	69 70 3a 28 32 2c 34 	imul   $0x342c3228,0x3a(%eax),%esi
c060cede:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060cee1:	2c 33                	sub    $0x33,%al
c060cee3:	32 3b                	xor    (%ebx),%bh
c060cee5:	63 73 3a             	arpl   %si,0x3a(%ebx)
c060cee8:	28 32                	sub    %dh,(%edx)
c060ceea:	2c 34                	sub    $0x34,%al
c060ceec:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060ceef:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060cef2:	32 3b                	xor    (%ebx),%bh
c060cef4:	65 66 6c             	gs data16 insb (%dx),%es:(%edi)
c060cef7:	61                   	popa   
c060cef8:	67 73 3a             	addr16 jae c060cf35 <.stab+0x2afd>
c060cefb:	28 32                	sub    %dh,(%edx)
c060cefd:	2c 34                	sub    $0x34,%al
c060ceff:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060cf02:	34 2c                	xor    $0x2c,%al
c060cf04:	33 32                	xor    (%edx),%esi
c060cf06:	3b 3b                	cmp    (%ebx),%edi
c060cf08:	00 5f 49             	add    %bl,0x49(%edi)
c060cf0b:	44                   	inc    %esp
c060cf0c:	54                   	push   %esp
c060cf0d:	54                   	push   %esp
c060cf0e:	41                   	inc    %ecx
c060cf0f:	42                   	inc    %edx
c060cf10:	4c                   	dec    %esp
c060cf11:	45                   	inc    %ebp
c060cf12:	3a 54 28 35          	cmp    0x35(%eax,%ebp,1),%dl
c060cf16:	2c 33                	sub    $0x33,%al
c060cf18:	29 3d 73 38 6f 66    	sub    %edi,0x666f3873
c060cf1e:	66 73 65             	data16 jae c060cf86 <.stab+0x2b4e>
c060cf21:	74 5f                	je     c060cf82 <.stab+0x2b4a>
c060cf23:	6c                   	insb   (%dx),%es:(%edi)
c060cf24:	6f                   	outsl  %ds:(%esi),(%dx)
c060cf25:	77 3a                	ja     c060cf61 <.stab+0x2b29>
c060cf27:	28 30                	sub    %dh,(%eax)
c060cf29:	2c 31                	sub    $0x31,%al
c060cf2b:	31 29                	xor    %ebp,(%ecx)
c060cf2d:	2c 30                	sub    $0x30,%al
c060cf2f:	2c 31                	sub    $0x31,%al
c060cf31:	36 3b 73 65          	cmp    %ss:0x65(%ebx),%esi
c060cf35:	6c                   	insb   (%dx),%es:(%edi)
c060cf36:	65 63 74 6f 72       	arpl   %si,%gs:0x72(%edi,%ebp,2)
c060cf3b:	3a 28                	cmp    (%eax),%ch
c060cf3d:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060cf40:	31 29                	xor    %ebp,(%ecx)
c060cf42:	2c 31                	sub    $0x31,%al
c060cf44:	36 2c 31             	ss sub $0x31,%al
c060cf47:	36 3b 72 65          	cmp    %ss:0x65(%edx),%esi
c060cf4b:	73 65                	jae    c060cfb2 <.stab+0x2b7a>
c060cf4d:	72 76                	jb     c060cfc5 <.stab+0x2b8d>
c060cf4f:	65 64 3a 28          	gs cmp %fs:(%eax),%ch
c060cf53:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060cf56:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060cf59:	32 2c 38             	xor    (%eax,%edi,1),%ch
c060cf5c:	3b 74 79 70          	cmp    0x70(%ecx,%edi,2),%esi
c060cf60:	65 3a 28             	cmp    %gs:(%eax),%ch
c060cf63:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060cf66:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060cf69:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060cf6c:	3b 61 6c             	cmp    0x6c(%ecx),%esp
c060cf6f:	77 61                	ja     c060cfd2 <.stab+0x2b9a>
c060cf71:	79 73                	jns    c060cfe6 <.stab+0x2bae>
c060cf73:	30 3a                	xor    %bh,(%edx)
c060cf75:	28 32                	sub    %dh,(%edx)
c060cf77:	2c 32                	sub    $0x32,%al
c060cf79:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060cf7c:	34 2c                	xor    $0x2c,%al
c060cf7e:	31 3b                	xor    %edi,(%ebx)
c060cf80:	64 70 6c             	fs jo  c060cfef <.stab+0x2bb7>
c060cf83:	3a 28                	cmp    (%eax),%ch
c060cf85:	32 2c 32             	xor    (%edx,%esi,1),%ch
c060cf88:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060cf8b:	35 2c 32 3b 70       	xor    $0x703b322c,%eax
c060cf90:	72 65                	jb     c060cff7 <.stab+0x2bbf>
c060cf92:	73 65                	jae    c060cff9 <.stab+0x2bc1>
c060cf94:	6e                   	outsb  %ds:(%esi),(%dx)
c060cf95:	74 3a                	je     c060cfd1 <.stab+0x2b99>
c060cf97:	28 32                	sub    %dh,(%edx)
c060cf99:	2c 32                	sub    $0x32,%al
c060cf9b:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060cf9e:	37                   	aaa    
c060cf9f:	2c 31                	sub    $0x31,%al
c060cfa1:	3b 6f 66             	cmp    0x66(%edi),%ebp
c060cfa4:	66 73 65             	data16 jae c060d00c <.stab+0x2bd4>
c060cfa7:	74 5f                	je     c060d008 <.stab+0x2bd0>
c060cfa9:	68 69 67 68 3a       	push   $0x3a686769
c060cfae:	28 30                	sub    %dh,(%eax)
c060cfb0:	2c 31                	sub    $0x31,%al
c060cfb2:	31 29                	xor    %ebp,(%ecx)
c060cfb4:	2c 34                	sub    $0x34,%al
c060cfb6:	38 2c 31             	cmp    %ch,(%ecx,%esi,1)
c060cfb9:	36 3b 3b             	cmp    %ss:(%ebx),%edi
c060cfbc:	00 5f 49             	add    %bl,0x49(%edi)
c060cfbf:	44                   	inc    %esp
c060cfc0:	54                   	push   %esp
c060cfc1:	54                   	push   %esp
c060cfc2:	41                   	inc    %ecx
c060cfc3:	42                   	inc    %edx
c060cfc4:	4c                   	dec    %esp
c060cfc5:	45                   	inc    %ebp
c060cfc6:	3a 74 28 35          	cmp    0x35(%eax,%ebp,1),%dh
c060cfca:	2c 34                	sub    $0x34,%al
c060cfcc:	29 3d 28 35 2c 33    	sub    %edi,0x332c3528
c060cfd2:	29 00                	sub    %eax,(%eax)
c060cfd4:	6b 65 79 70          	imul   $0x70,0x79(%ebp),%esp
c060cfd8:	6f                   	outsl  %ds:(%esi),(%dx)
c060cfd9:	73 3a                	jae    c060d015 <.stab+0x2bdd>
c060cfdb:	53                   	push   %ebx
c060cfdc:	28 30                	sub    %dh,(%eax)
c060cfde:	2c 31                	sub    $0x31,%al
c060cfe0:	29 00                	sub    %eax,(%eax)
c060cfe2:	5f                   	pop    %edi
c060cfe3:	73 79                	jae    c060d05e <.stab+0x2c26>
c060cfe5:	73 74                	jae    c060d05b <.stab+0x2c23>
c060cfe7:	65 6d                	gs insl (%dx),%es:(%edi)
c060cfe9:	3a 46 28             	cmp    0x28(%esi),%al
c060cfec:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060cfef:	29 00                	sub    %eax,(%eax)
c060cff1:	6d                   	insl   (%dx),%es:(%edi)
c060cff2:	61                   	popa   
c060cff3:	74 68                	je     c060d05d <.stab+0x2c25>
c060cff5:	2e 63 00             	arpl   %ax,%cs:(%eax)
c060cff8:	70 6f                	jo     c060d069 <.stab+0x2c31>
c060cffa:	77 3a                	ja     c060d036 <.stab+0x2bfe>
c060cffc:	46                   	inc    %esi
c060cffd:	28 30                	sub    %dh,(%eax)
c060cfff:	2c 31                	sub    $0x31,%al
c060d001:	35 29 00 78 3a       	xor    $0x3a780029,%eax
c060d006:	70 28                	jo     c060d030 <.stab+0x2bf8>
c060d008:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d00b:	35 29 00 79 3a       	xor    $0x3a790029,%eax
c060d010:	70 28                	jo     c060d03a <.stab+0x2c02>
c060d012:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d015:	35 29 00 6e 3a       	xor    $0x3a6e0029,%eax
c060d01a:	72 28                	jb     c060d044 <.stab+0x2c0c>
c060d01c:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d01f:	35 29 00 78 3a       	xor    $0x3a780029,%eax
c060d024:	72 28                	jb     c060d04e <.stab+0x2c16>
c060d026:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d029:	35 29 00 79 3a       	xor    $0x3a790029,%eax
c060d02e:	72 28                	jb     c060d058 <.stab+0x2c20>
c060d030:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d033:	35 29 00 6d 65       	xor    $0x656d0029,%eax
c060d038:	6d                   	insl   (%dx),%es:(%edi)
c060d039:	6f                   	outsl  %ds:(%esi),(%dx)
c060d03a:	72 79                	jb     c060d0b5 <.stab+0x2c7d>
c060d03c:	2e 63 00             	arpl   %ax,%cs:(%eax)
c060d03f:	47                   	inc    %edi
c060d040:	44                   	inc    %esp
c060d041:	54                   	push   %esp
c060d042:	5f                   	pop    %edi
c060d043:	4c                   	dec    %esp
c060d044:	4f                   	dec    %edi
c060d045:	41                   	inc    %ecx
c060d046:	44                   	inc    %esp
c060d047:	3a 54 28 30          	cmp    0x30(%eax,%ebp,1),%dl
c060d04b:	2c 32                	sub    $0x32,%al
c060d04d:	36 29 3d 73 36 73 69 	sub    %edi,%ss:0x69733673
c060d054:	7a 65                	jp     c060d0bb <.stab+0x2c83>
c060d056:	3a 28                	cmp    (%eax),%ch
c060d058:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d05b:	31 29                	xor    %ebp,(%ecx)
c060d05d:	2c 30                	sub    $0x30,%al
c060d05f:	2c 31                	sub    $0x31,%al
c060d061:	36 3b 61 64          	cmp    %ss:0x64(%ecx),%esp
c060d065:	64 72 3a             	fs jb  c060d0a2 <.stab+0x2c6a>
c060d068:	28 32                	sub    %dh,(%edx)
c060d06a:	2c 34                	sub    $0x34,%al
c060d06c:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060d06f:	36 2c 33             	ss sub $0x33,%al
c060d072:	32 3b                	xor    (%ebx),%bh
c060d074:	3b 00                	cmp    (%eax),%eax
c060d076:	5f                   	pop    %edi
c060d077:	49                   	dec    %ecx
c060d078:	4e                   	dec    %esi
c060d079:	54                   	push   %esp
c060d07a:	3a 47 28             	cmp    0x28(%edi),%al
c060d07d:	33 2c 32             	xor    (%edx,%esi,1),%ebp
c060d080:	29 00                	sub    %eax,(%eax)
c060d082:	5f                   	pop    %edi
c060d083:	74 61                	je     c060d0e6 <.stab+0x2cae>
c060d085:	6b 65 5f 6d          	imul   $0x6d,0x5f(%ebp),%esp
c060d089:	65 6d                	gs insl (%dx),%es:(%edi)
c060d08b:	6f                   	outsl  %ds:(%esi),(%dx)
c060d08c:	72 79                	jb     c060d107 <.stab+0x2ccf>
c060d08e:	5f                   	pop    %edi
c060d08f:	73 69                	jae    c060d0fa <.stab+0x2cc2>
c060d091:	7a 65                	jp     c060d0f8 <.stab+0x2cc0>
c060d093:	3a 46 28             	cmp    0x28(%esi),%al
c060d096:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060d099:	29 00                	sub    %eax,(%eax)
c060d09b:	54                   	push   %esp
c060d09c:	61                   	popa   
c060d09d:	6b 65 4d 65          	imul   $0x65,0x4d(%ebp),%esp
c060d0a1:	6d                   	insl   (%dx),%es:(%edi)
c060d0a2:	6f                   	outsl  %ds:(%esi),(%dx)
c060d0a3:	72 79                	jb     c060d11e <.stab+0x2ce6>
c060d0a5:	53                   	push   %ebx
c060d0a6:	69 7a 65 3a 46 28 32 	imul   $0x3228463a,0x65(%edx),%edi
c060d0ad:	2c 34                	sub    $0x34,%al
c060d0af:	29 00                	sub    %eax,(%eax)
c060d0b1:	2e 2e 2f             	cs cs das 
c060d0b4:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c060d0bb:	2f                   	das    
c060d0bc:	5f                   	pop    %edi
c060d0bd:	61                   	popa   
c060d0be:	73 6d                	jae    c060d12d <.stab+0x2cf5>
c060d0c0:	2e 68 00 5f 4d 45    	cs push $0x454d5f00
c060d0c6:	4d                   	dec    %ebp
c060d0c7:	5f                   	pop    %edi
c060d0c8:	4c                   	dec    %esp
c060d0c9:	49                   	dec    %ecx
c060d0ca:	4e                   	dec    %esi
c060d0cb:	4b                   	dec    %ebx
c060d0cc:	5f                   	pop    %edi
c060d0cd:	4c                   	dec    %esp
c060d0ce:	49                   	dec    %ecx
c060d0cf:	53                   	push   %ebx
c060d0d0:	54                   	push   %esp
c060d0d1:	3a 47 28             	cmp    0x28(%edi),%al
c060d0d4:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d0d7:	37                   	aaa    
c060d0d8:	29 3d 2a 28 31 2c    	sub    %edi,0x2c31282a
c060d0de:	39 29                	cmp    %ebp,(%ecx)
c060d0e0:	00 69 6e             	add    %ch,0x6e(%ecx)
c060d0e3:	69 74 5f 6d 65 6d 6f 	imul   $0x726f6d65,0x6d(%edi,%ebx,2),%esi
c060d0ea:	72 
c060d0eb:	79 3a                	jns    c060d127 <.stab+0x2cef>
c060d0ed:	46                   	inc    %esi
c060d0ee:	28 30                	sub    %dh,(%eax)
c060d0f0:	2c 31                	sub    $0x31,%al
c060d0f2:	29 00                	sub    %eax,(%eax)
c060d0f4:	73 79                	jae    c060d16f <.stab+0x2d37>
c060d0f6:	73 5f                	jae    c060d157 <.stab+0x2d1f>
c060d0f8:	70 61                	jo     c060d15b <.stab+0x2d23>
c060d0fa:	6c                   	insb   (%dx),%es:(%edi)
c060d0fb:	6c                   	insb   (%dx),%es:(%edi)
c060d0fc:	6f                   	outsl  %ds:(%esi),(%dx)
c060d0fd:	63 3a                	arpl   %di,(%edx)
c060d0ff:	46                   	inc    %esi
c060d100:	28 30                	sub    %dh,(%eax)
c060d102:	2c 32                	sub    $0x32,%al
c060d104:	38 29                	cmp    %ch,(%ecx)
c060d106:	3d 2a 28 30 2c       	cmp    $0x2c30282a,%eax
c060d10b:	32 35 29 00 6e 3a    	xor    0x3a6e0029,%dh
c060d111:	70 28                	jo     c060d13b <.stab+0x2d03>
c060d113:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060d116:	29 00                	sub    %eax,(%eax)
c060d118:	6c                   	insb   (%dx),%es:(%edi)
c060d119:	6f                   	outsl  %ds:(%esi),(%dx)
c060d11a:	61                   	popa   
c060d11b:	64 5f                	fs pop %edi
c060d11d:	67 64 74 3a          	addr16 fs je c060d15b <.stab+0x2d23>
c060d121:	46                   	inc    %esi
c060d122:	28 30                	sub    %dh,(%eax)
c060d124:	2c 32                	sub    $0x32,%al
c060d126:	35 29 00 67 64       	xor    $0x64670029,%eax
c060d12b:	74 3a                	je     c060d167 <.stab+0x2d2f>
c060d12d:	70 28                	jo     c060d157 <.stab+0x2d1f>
c060d12f:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c060d132:	32 29                	xor    (%ecx),%ch
c060d134:	00 6e 3a             	add    %ch,0x3a(%esi)
c060d137:	70 28                	jo     c060d161 <.stab+0x2d29>
c060d139:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060d13c:	29 00                	sub    %eax,(%eax)
c060d13e:	67 3a 28             	cmp    (%bx,%si),%ch
c060d141:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d144:	36 29 00             	sub    %eax,%ss:(%eax)
c060d147:	67 64 74 3a          	addr16 fs je c060d185 <.stab+0x2d4d>
c060d14b:	72 28                	jb     c060d175 <.stab+0x2d3d>
c060d14d:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c060d150:	32 29                	xor    (%ecx),%ch
c060d152:	00 6e 3a             	add    %ch,0x3a(%esi)
c060d155:	72 28                	jb     c060d17f <.stab+0x2d47>
c060d157:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060d15a:	29 00                	sub    %eax,(%eax)
c060d15c:	73 74                	jae    c060d1d2 <.stab+0x2d9a>
c060d15e:	65 70 5f             	gs jo  c060d1c0 <.stab+0x2d88>
c060d161:	75 70                	jne    c060d1d3 <.stab+0x2d9b>
c060d163:	5f                   	pop    %edi
c060d164:	67 64 74 3a          	addr16 fs je c060d1a2 <.stab+0x2d6a>
c060d168:	46                   	inc    %esi
c060d169:	28 30                	sub    %dh,(%eax)
c060d16b:	2c 31                	sub    $0x31,%al
c060d16d:	31 29                	xor    %ebp,(%ecx)
c060d16f:	00 69 3a             	add    %ch,0x3a(%ecx)
c060d172:	70 28                	jo     c060d19c <.stab+0x2d64>
c060d174:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060d177:	29 00                	sub    %eax,(%eax)
c060d179:	62 61 73             	bound  %esp,0x73(%ecx)
c060d17c:	65 3a 70 28          	cmp    %gs:0x28(%eax),%dh
c060d180:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060d183:	29 00                	sub    %eax,(%eax)
c060d185:	6c                   	insb   (%dx),%es:(%edi)
c060d186:	69 6d 69 74 3a 70 28 	imul   $0x28703a74,0x69(%ebp),%ebp
c060d18d:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060d190:	29 00                	sub    %eax,(%eax)
c060d192:	54                   	push   %esp
c060d193:	59                   	pop    %ecx
c060d194:	50                   	push   %eax
c060d195:	45                   	inc    %ebp
c060d196:	3a 70 28             	cmp    0x28(%eax),%dh
c060d199:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d19c:	29 00                	sub    %eax,(%eax)
c060d19e:	53                   	push   %ebx
c060d19f:	3a 70 28             	cmp    0x28(%eax),%dh
c060d1a2:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d1a5:	29 00                	sub    %eax,(%eax)
c060d1a7:	44                   	inc    %esp
c060d1a8:	50                   	push   %eax
c060d1a9:	4c                   	dec    %esp
c060d1aa:	3a 70 28             	cmp    0x28(%eax),%dh
c060d1ad:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d1b0:	29 00                	sub    %eax,(%eax)
c060d1b2:	50                   	push   %eax
c060d1b3:	3a 70 28             	cmp    0x28(%eax),%dh
c060d1b6:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d1b9:	29 00                	sub    %eax,(%eax)
c060d1bb:	41                   	inc    %ecx
c060d1bc:	56                   	push   %esi
c060d1bd:	4c                   	dec    %esp
c060d1be:	3a 70 28             	cmp    0x28(%eax),%dh
c060d1c1:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d1c4:	29 00                	sub    %eax,(%eax)
c060d1c6:	44                   	inc    %esp
c060d1c7:	5f                   	pop    %edi
c060d1c8:	42                   	inc    %edx
c060d1c9:	3a 70 28             	cmp    0x28(%eax),%dh
c060d1cc:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d1cf:	29 00                	sub    %eax,(%eax)
c060d1d1:	47                   	inc    %edi
c060d1d2:	3a 70 28             	cmp    0x28(%eax),%dh
c060d1d5:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d1d8:	29 00                	sub    %eax,(%eax)
c060d1da:	69 3a 72 28 32 2c    	imul   $0x2c322872,(%edx),%edi
c060d1e0:	34 29                	xor    $0x29,%al
c060d1e2:	00 62 61             	add    %ah,0x61(%edx)
c060d1e5:	73 65                	jae    c060d24c <.stab+0x2e14>
c060d1e7:	3a 72 28             	cmp    0x28(%edx),%dh
c060d1ea:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060d1ed:	29 00                	sub    %eax,(%eax)
c060d1ef:	6c                   	insb   (%dx),%es:(%edi)
c060d1f0:	69 6d 69 74 3a 72 28 	imul   $0x28723a74,0x69(%ebp),%ebp
c060d1f7:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060d1fa:	29 00                	sub    %eax,(%eax)
c060d1fc:	69 6e 69 74 5f 70 61 	imul   $0x61705f74,0x69(%esi),%ebp
c060d203:	67 69 6e 67 3a 46 28 	imul   $0x3228463a,0x67(%bp),%ebp
c060d20a:	32 
c060d20b:	2c 31                	sub    $0x31,%al
c060d20d:	32 29                	xor    (%ecx),%ch
c060d20f:	00 61 64             	add    %ah,0x64(%ecx)
c060d212:	64 72 65             	fs jb  c060d27a <.stab+0x2e42>
c060d215:	73 73                	jae    c060d28a <.stab+0x2e52>
c060d217:	4d                   	dec    %ebp
c060d218:	61                   	popa   
c060d219:	70 70                	jo     c060d28b <.stab+0x2e53>
c060d21b:	69 6e 67 3a 46 28 30 	imul   $0x3028463a,0x67(%esi),%ebp
c060d222:	2c 32                	sub    $0x32,%al
c060d224:	35 29 00 73 72       	xor    $0x72730029,%eax
c060d229:	63 3a                	arpl   %di,(%edx)
c060d22b:	70 28                	jo     c060d255 <.stab+0x2e1d>
c060d22d:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060d230:	29 00                	sub    %eax,(%eax)
c060d232:	64 73 74             	fs jae c060d2a9 <.stab+0x2e71>
c060d235:	3a 70 28             	cmp    0x28(%eax),%dh
c060d238:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060d23b:	29 00                	sub    %eax,(%eax)
c060d23d:	73 69                	jae    c060d2a8 <.stab+0x2e70>
c060d23f:	7a 65                	jp     c060d2a6 <.stab+0x2e6e>
c060d241:	3a 70 28             	cmp    0x28(%eax),%dh
c060d244:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060d247:	29 00                	sub    %eax,(%eax)
c060d249:	70 3a                	jo     c060d285 <.stab+0x2e4d>
c060d24b:	70 28                	jo     c060d275 <.stab+0x2e3d>
c060d24d:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d250:	29 00                	sub    %eax,(%eax)
c060d252:	72 77                	jb     c060d2cb <.stab+0x2e93>
c060d254:	3a 70 28             	cmp    0x28(%eax),%dh
c060d257:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d25a:	29 00                	sub    %eax,(%eax)
c060d25c:	75 73                	jne    c060d2d1 <.stab+0x2e99>
c060d25e:	3a 70 28             	cmp    0x28(%eax),%dh
c060d261:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d264:	29 00                	sub    %eax,(%eax)
c060d266:	69 3a 72 28 30 2c    	imul   $0x2c302872,(%edx),%edi
c060d26c:	31 29                	xor    %ebp,(%ecx)
c060d26e:	00 5f 4d             	add    %bl,0x4d(%edi)
c060d271:	45                   	inc    %ebp
c060d272:	4d                   	dec    %ebp
c060d273:	5f                   	pop    %edi
c060d274:	4c                   	dec    %esp
c060d275:	49                   	dec    %ecx
c060d276:	53                   	push   %ebx
c060d277:	54                   	push   %esp
c060d278:	5f                   	pop    %edi
c060d279:	46                   	inc    %esi
c060d27a:	49                   	dec    %ecx
c060d27b:	52                   	push   %edx
c060d27c:	53                   	push   %ebx
c060d27d:	54                   	push   %esp
c060d27e:	5f                   	pop    %edi
c060d27f:	4e                   	dec    %esi
c060d280:	4f                   	dec    %edi
c060d281:	44                   	inc    %esp
c060d282:	45                   	inc    %ebp
c060d283:	3a 47 28             	cmp    0x28(%edi),%al
c060d286:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d289:	39 29                	cmp    %ebp,(%ecx)
c060d28b:	3d 2a 28 31 2c       	cmp    $0x2c31282a,%eax
c060d290:	31 34 29             	xor    %esi,(%ecx,%ebp,1)
c060d293:	00 5f 5f             	add    %bl,0x5f(%edi)
c060d296:	67 65 74 5f          	addr16 gs je c060d2f9 <.stab+0x2ec1>
c060d29a:	66 72 65             	data16 jb c060d302 <.stab+0x2eca>
c060d29d:	65 5f                	gs pop %edi
c060d29f:	70 61                	jo     c060d302 <.stab+0x2eca>
c060d2a1:	67 65 73 3a          	addr16 gs jae c060d2df <.stab+0x2ea7>
c060d2a5:	46                   	inc    %esi
c060d2a6:	28 30                	sub    %dh,(%eax)
c060d2a8:	2c 35                	sub    $0x35,%al
c060d2aa:	29 00                	sub    %eax,(%eax)
c060d2ac:	67 66 70 5f          	addr16 data16 jo c060d30f <.stab+0x2ed7>
c060d2b0:	6d                   	insl   (%dx),%es:(%edi)
c060d2b1:	61                   	popa   
c060d2b2:	73 6b                	jae    c060d31f <.stab+0x2ee7>
c060d2b4:	3a 70 28             	cmp    0x28(%eax),%dh
c060d2b7:	34 2c                	xor    $0x2c,%al
c060d2b9:	31 29                	xor    %ebp,(%ecx)
c060d2bb:	00 6f 72             	add    %ch,0x72(%edi)
c060d2be:	64 65 72 3a          	fs gs jb c060d2fc <.stab+0x2ec4>
c060d2c2:	70 28                	jo     c060d2ec <.stab+0x2eb4>
c060d2c4:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060d2c7:	29 00                	sub    %eax,(%eax)
c060d2c9:	61                   	popa   
c060d2ca:	3a 72 28             	cmp    0x28(%edx),%dh
c060d2cd:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d2d0:	39 29                	cmp    %ebp,(%ecx)
c060d2d2:	00 6e 3a             	add    %ch,0x3a(%esi)
c060d2d5:	72 28                	jb     c060d2ff <.stab+0x2ec7>
c060d2d7:	30 2c 33             	xor    %ch,(%ebx,%esi,1)
c060d2da:	29 00                	sub    %eax,(%eax)
c060d2dc:	62 3a                	bound  %edi,(%edx)
c060d2de:	72 28                	jb     c060d308 <.stab+0x2ed0>
c060d2e0:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d2e3:	39 29                	cmp    %ebp,(%ecx)
c060d2e5:	00 5f 5f             	add    %bl,0x5f(%edi)
c060d2e8:	66 72 65             	data16 jb c060d350 <.stab+0x2f18>
c060d2eb:	65 5f                	gs pop %edi
c060d2ed:	70 61                	jo     c060d350 <.stab+0x2f18>
c060d2ef:	67 65 73 3a          	addr16 gs jae c060d32d <.stab+0x2ef5>
c060d2f3:	46                   	inc    %esi
c060d2f4:	28 30                	sub    %dh,(%eax)
c060d2f6:	2c 32                	sub    $0x32,%al
c060d2f8:	35 29 00 61 64       	xor    $0x64610029,%eax
c060d2fd:	64 72 3a             	fs jb  c060d33a <.stab+0x2f02>
c060d300:	70 28                	jo     c060d32a <.stab+0x2ef2>
c060d302:	30 2c 35 29 00 61 64 	xor    %ch,0x64610029(,%esi,1)
c060d309:	64 72 3a             	fs jb  c060d346 <.stab+0x2f0e>
c060d30c:	72 28                	jb     c060d336 <.stab+0x2efe>
c060d30e:	30 2c 35 29 00 69 6e 	xor    %ch,0x6e690029(,%esi,1)
c060d315:	69 74 5f 6d 65 6d 3a 	imul   $0x463a6d65,0x6d(%edi,%ebx,2),%esi
c060d31c:	46 
c060d31d:	28 30                	sub    %dh,(%eax)
c060d31f:	2c 33                	sub    $0x33,%al
c060d321:	30 29                	xor    %ch,(%ecx)
c060d323:	3d 2a 28 30 2c       	cmp    $0x2c30282a,%eax
c060d328:	32 29                	xor    (%ecx),%ch
c060d32a:	00 70 69             	add    %dh,0x69(%eax)
c060d32d:	64 2e 63 00          	fs arpl %ax,%cs:(%eax)
c060d331:	70 72                	jo     c060d3a5 <.stab+0x2f6d>
c060d333:	6f                   	outsl  %ds:(%esi),(%dx)
c060d334:	2e 63 00             	arpl   %ax,%cs:(%eax)
c060d337:	2e 2e 2f             	cs cs das 
c060d33a:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c060d341:	2f                   	das    
c060d342:	74 61                	je     c060d3a5 <.stab+0x2f6d>
c060d344:	73 6b                	jae    c060d3b1 <.stab+0x2f79>
c060d346:	2e 68 00 54 53 53    	cs push $0x53535400
c060d34c:	33 32                	xor    (%edx),%esi
c060d34e:	3a 54 28 31          	cmp    0x31(%eax,%ebp,1),%dl
c060d352:	2c 31                	sub    $0x31,%al
c060d354:	29 3d 73 31 30 34    	sub    %edi,0x34303173
c060d35a:	62 61 63             	bound  %esp,0x63(%ecx)
c060d35d:	6b 6c 69 6e 6b       	imul   $0x6b,0x6e(%ecx,%ebp,2),%ebp
c060d362:	3a 28                	cmp    (%eax),%ch
c060d364:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d367:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c060d36a:	2c 33                	sub    $0x33,%al
c060d36c:	32 3b                	xor    (%ebx),%bh
c060d36e:	65 73 70             	gs jae c060d3e1 <.stab+0x2fa9>
c060d371:	30 3a                	xor    %bh,(%edx)
c060d373:	28 30                	sub    %dh,(%eax)
c060d375:	2c 31                	sub    $0x31,%al
c060d377:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060d37a:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060d37d:	32 3b                	xor    (%ebx),%bh
c060d37f:	73 73                	jae    c060d3f4 <.stab+0x2fbc>
c060d381:	30 3a                	xor    %bh,(%edx)
c060d383:	28 30                	sub    %dh,(%eax)
c060d385:	2c 31                	sub    $0x31,%al
c060d387:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060d38a:	34 2c                	xor    $0x2c,%al
c060d38c:	33 32                	xor    (%edx),%esi
c060d38e:	3b 65 73             	cmp    0x73(%ebp),%esp
c060d391:	70 31                	jo     c060d3c4 <.stab+0x2f8c>
c060d393:	3a 28                	cmp    (%eax),%ch
c060d395:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d398:	29 2c 39             	sub    %ebp,(%ecx,%edi,1)
c060d39b:	36 2c 33             	ss sub $0x33,%al
c060d39e:	32 3b                	xor    (%ebx),%bh
c060d3a0:	73 73                	jae    c060d415 <.stab+0x2fdd>
c060d3a2:	31 3a                	xor    %edi,(%edx)
c060d3a4:	28 30                	sub    %dh,(%eax)
c060d3a6:	2c 31                	sub    $0x31,%al
c060d3a8:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060d3ab:	32 38                	xor    (%eax),%bh
c060d3ad:	2c 33                	sub    $0x33,%al
c060d3af:	32 3b                	xor    (%ebx),%bh
c060d3b1:	65 73 70             	gs jae c060d424 <.stab+0x2fec>
c060d3b4:	32 3a                	xor    (%edx),%bh
c060d3b6:	28 30                	sub    %dh,(%eax)
c060d3b8:	2c 31                	sub    $0x31,%al
c060d3ba:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060d3bd:	36 30 2c 33          	xor    %ch,%ss:(%ebx,%esi,1)
c060d3c1:	32 3b                	xor    (%ebx),%bh
c060d3c3:	73 73                	jae    c060d438 <.stab+0x3000>
c060d3c5:	32 3a                	xor    (%edx),%bh
c060d3c7:	28 30                	sub    %dh,(%eax)
c060d3c9:	2c 31                	sub    $0x31,%al
c060d3cb:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c060d3ce:	39 32                	cmp    %esi,(%edx)
c060d3d0:	2c 33                	sub    $0x33,%al
c060d3d2:	32 3b                	xor    (%ebx),%bh
c060d3d4:	63 72 33             	arpl   %si,0x33(%edx)
c060d3d7:	3a 28                	cmp    (%eax),%ch
c060d3d9:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d3dc:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060d3df:	32 34 2c             	xor    (%esp,%ebp,1),%dh
c060d3e2:	33 32                	xor    (%edx),%esi
c060d3e4:	3b 65 69             	cmp    0x69(%ebp),%esp
c060d3e7:	70 3a                	jo     c060d423 <.stab+0x2feb>
c060d3e9:	28 30                	sub    %dh,(%eax)
c060d3eb:	2c 31                	sub    $0x31,%al
c060d3ed:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060d3f0:	35 36 2c 33 32       	xor    $0x32332c36,%eax
c060d3f5:	3b 65 66             	cmp    0x66(%ebp),%esp
c060d3f8:	6c                   	insb   (%dx),%es:(%edi)
c060d3f9:	61                   	popa   
c060d3fa:	67 73 3a             	addr16 jae c060d437 <.stab+0x2fff>
c060d3fd:	28 30                	sub    %dh,(%eax)
c060d3ff:	2c 31                	sub    $0x31,%al
c060d401:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c060d404:	38 38                	cmp    %bh,(%eax)
c060d406:	2c 33                	sub    $0x33,%al
c060d408:	32 3b                	xor    (%ebx),%bh
c060d40a:	65 61                	gs popa 
c060d40c:	78 3a                	js     c060d448 <.stab+0x3010>
c060d40e:	28 30                	sub    %dh,(%eax)
c060d410:	2c 31                	sub    $0x31,%al
c060d412:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060d415:	32 30                	xor    (%eax),%dh
c060d417:	2c 33                	sub    $0x33,%al
c060d419:	32 3b                	xor    (%ebx),%bh
c060d41b:	65 63 78 3a          	arpl   %di,%gs:0x3a(%eax)
c060d41f:	28 30                	sub    %dh,(%eax)
c060d421:	2c 31                	sub    $0x31,%al
c060d423:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060d426:	35 32 2c 33 32       	xor    $0x32332c32,%eax
c060d42b:	3b 65 64             	cmp    0x64(%ebp),%esp
c060d42e:	78 3a                	js     c060d46a <.stab+0x3032>
c060d430:	28 30                	sub    %dh,(%eax)
c060d432:	2c 31                	sub    $0x31,%al
c060d434:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c060d437:	38 34 2c             	cmp    %dh,(%esp,%ebp,1)
c060d43a:	33 32                	xor    (%edx),%esi
c060d43c:	3b 65 62             	cmp    0x62(%ebp),%esp
c060d43f:	78 3a                	js     c060d47b <.stab+0x3043>
c060d441:	28 30                	sub    %dh,(%eax)
c060d443:	2c 31                	sub    $0x31,%al
c060d445:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060d448:	31 36                	xor    %esi,(%esi)
c060d44a:	2c 33                	sub    $0x33,%al
c060d44c:	32 3b                	xor    (%ebx),%bh
c060d44e:	65 73 70             	gs jae c060d4c1 <.stab+0x3089>
c060d451:	3a 28                	cmp    (%eax),%ch
c060d453:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d456:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060d459:	34 38                	xor    $0x38,%al
c060d45b:	2c 33                	sub    $0x33,%al
c060d45d:	32 3b                	xor    (%ebx),%bh
c060d45f:	65 62 70 3a          	bound  %esi,%gs:0x3a(%eax)
c060d463:	28 30                	sub    %dh,(%eax)
c060d465:	2c 31                	sub    $0x31,%al
c060d467:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c060d46a:	38 30                	cmp    %dh,(%eax)
c060d46c:	2c 33                	sub    $0x33,%al
c060d46e:	32 3b                	xor    (%ebx),%bh
c060d470:	65 73 69             	gs jae c060d4dc <.stab+0x30a4>
c060d473:	3a 28                	cmp    (%eax),%ch
c060d475:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d478:	29 2c 35 31 32 2c 33 	sub    %ebp,0x332c3231(,%esi,1)
c060d47f:	32 3b                	xor    (%ebx),%bh
c060d481:	65 64 69 3a 28 30 2c 	gs imul $0x312c3028,%fs:(%edx),%edi
c060d488:	31 
c060d489:	29 2c 35 34 34 2c 33 	sub    %ebp,0x332c3434(,%esi,1)
c060d490:	32 3b                	xor    (%ebx),%bh
c060d492:	65 73 3a             	gs jae c060d4cf <.stab+0x3097>
c060d495:	28 30                	sub    %dh,(%eax)
c060d497:	2c 31                	sub    $0x31,%al
c060d499:	29 2c 35 37 36 2c 33 	sub    %ebp,0x332c3637(,%esi,1)
c060d4a0:	32 3b                	xor    (%ebx),%bh
c060d4a2:	63 73 3a             	arpl   %si,0x3a(%ebx)
c060d4a5:	28 30                	sub    %dh,(%eax)
c060d4a7:	2c 31                	sub    $0x31,%al
c060d4a9:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060d4ac:	30 38                	xor    %bh,(%eax)
c060d4ae:	2c 33                	sub    $0x33,%al
c060d4b0:	32 3b                	xor    (%ebx),%bh
c060d4b2:	73 73                	jae    c060d527 <.stab+0x30ef>
c060d4b4:	3a 28                	cmp    (%eax),%ch
c060d4b6:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d4b9:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060d4bc:	34 30                	xor    $0x30,%al
c060d4be:	2c 33                	sub    $0x33,%al
c060d4c0:	32 3b                	xor    (%ebx),%bh
c060d4c2:	64 73 3a             	fs jae c060d4ff <.stab+0x30c7>
c060d4c5:	28 30                	sub    %dh,(%eax)
c060d4c7:	2c 31                	sub    $0x31,%al
c060d4c9:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c060d4cc:	37                   	aaa    
c060d4cd:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c060d4d0:	32 3b                	xor    (%ebx),%bh
c060d4d2:	66 73 3a             	data16 jae c060d50f <.stab+0x30d7>
c060d4d5:	28 30                	sub    %dh,(%eax)
c060d4d7:	2c 31                	sub    $0x31,%al
c060d4d9:	29 2c 37             	sub    %ebp,(%edi,%esi,1)
c060d4dc:	30 34 2c             	xor    %dh,(%esp,%ebp,1)
c060d4df:	33 32                	xor    (%edx),%esi
c060d4e1:	3b 67 73             	cmp    0x73(%edi),%esp
c060d4e4:	3a 28                	cmp    (%eax),%ch
c060d4e6:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d4e9:	29 2c 37             	sub    %ebp,(%edi,%esi,1)
c060d4ec:	33 36                	xor    (%esi),%esi
c060d4ee:	2c 33                	sub    $0x33,%al
c060d4f0:	32 3b                	xor    (%ebx),%bh
c060d4f2:	6c                   	insb   (%dx),%es:(%edi)
c060d4f3:	64 74 72             	fs je  c060d568 <.stab+0x3130>
c060d4f6:	3a 28                	cmp    (%eax),%ch
c060d4f8:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d4fb:	29 2c 37             	sub    %ebp,(%edi,%esi,1)
c060d4fe:	36 38 2c 33          	cmp    %ch,%ss:(%ebx,%esi,1)
c060d502:	32 3b                	xor    (%ebx),%bh
c060d504:	69 6f 6d 61 70 3a 28 	imul   $0x283a7061,0x6d(%edi),%ebp
c060d50b:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d50e:	29 2c 38             	sub    %ebp,(%eax,%edi,1)
c060d511:	30 30                	xor    %dh,(%eax)
c060d513:	2c 33                	sub    $0x33,%al
c060d515:	32 3b                	xor    (%ebx),%bh
c060d517:	3b 00                	cmp    (%eax),%eax
c060d519:	74 61                	je     c060d57c <.stab+0x3144>
c060d51b:	73 6b                	jae    c060d588 <.stab+0x3150>
c060d51d:	5f                   	pop    %edi
c060d51e:	73 74                	jae    c060d594 <.stab+0x315c>
c060d520:	72 75                	jb     c060d597 <.stab+0x315f>
c060d522:	63 74 3a 54          	arpl   %si,0x54(%edx,%edi,1)
c060d526:	28 31                	sub    %dh,(%ecx)
c060d528:	2c 32                	sub    $0x32,%al
c060d52a:	29 3d 73 30 3b 00    	sub    %edi,0x3b3073
c060d530:	5f                   	pop    %edi
c060d531:	5f                   	pop    %edi
c060d532:	70 69                	jo     c060d59d <.stab+0x3165>
c060d534:	64 5f                	fs pop %edi
c060d536:	74 3a                	je     c060d572 <.stab+0x313a>
c060d538:	74 28                	je     c060d562 <.stab+0x312a>
c060d53a:	31 2c 33             	xor    %ebp,(%ebx,%esi,1)
c060d53d:	29 3d 28 30 2c 31    	sub    %edi,0x312c3028
c060d543:	29 00                	sub    %eax,(%eax)
c060d545:	70 69                	jo     c060d5b0 <.stab+0x3178>
c060d547:	64 5f                	fs pop %edi
c060d549:	74 3a                	je     c060d585 <.stab+0x314d>
c060d54b:	74 28                	je     c060d575 <.stab+0x313d>
c060d54d:	31 2c 34             	xor    %ebp,(%esp,%esi,1)
c060d550:	29 3d 28 31 2c 33    	sub    %edi,0x332c3128
c060d556:	29 00                	sub    %eax,(%eax)
c060d558:	73 74                	jae    c060d5ce <.stab+0x3196>
c060d55a:	72 69                	jb     c060d5c5 <.stab+0x318d>
c060d55c:	6e                   	outsb  %ds:(%esi),(%dx)
c060d55d:	67 2e 63 00          	arpl   %ax,%cs:(%bx,%si)
c060d561:	6d                   	insl   (%dx),%es:(%edi)
c060d562:	65 6d                	gs insl (%dx),%es:(%edi)
c060d564:	63 70 79             	arpl   %si,0x79(%eax)
c060d567:	3a 46 28             	cmp    0x28(%esi),%al
c060d56a:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d56d:	36 29 3d 2a 28 30 2c 	sub    %edi,%ss:0x2c30282a
c060d574:	32 35 29 00 64 65    	xor    0x65640029,%dh
c060d57a:	73 74                	jae    c060d5f0 <.stab+0x31b8>
c060d57c:	69 6e 3a 70 28 30 2c 	imul   $0x2c302870,0x3a(%esi),%ebp
c060d583:	32 36                	xor    (%esi),%dh
c060d585:	29 00                	sub    %eax,(%eax)
c060d587:	73 6f                	jae    c060d5f8 <.stab+0x31c0>
c060d589:	75 72                	jne    c060d5fd <.stab+0x31c5>
c060d58b:	63 65 3a             	arpl   %sp,0x3a(%ebp)
c060d58e:	70 28                	jo     c060d5b8 <.stab+0x3180>
c060d590:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d593:	36 29 00             	sub    %eax,%ss:(%eax)
c060d596:	64 65 73 74          	fs gs jae c060d60e <.stab+0x31d6>
c060d59a:	69 6e 3a 72 28 30 2c 	imul   $0x2c302872,0x3a(%esi),%ebp
c060d5a1:	32 36                	xor    (%esi),%dh
c060d5a3:	29 00                	sub    %eax,(%eax)
c060d5a5:	73 6f                	jae    c060d616 <.stab+0x31de>
c060d5a7:	75 72                	jne    c060d61b <.stab+0x31e3>
c060d5a9:	63 65 3a             	arpl   %sp,0x3a(%ebp)
c060d5ac:	72 28                	jb     c060d5d6 <.stab+0x319e>
c060d5ae:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d5b1:	36 29 00             	sub    %eax,%ss:(%eax)
c060d5b4:	6e                   	outsb  %ds:(%esi),(%dx)
c060d5b5:	3a 72 28             	cmp    0x28(%edx),%dh
c060d5b8:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060d5bb:	29 00                	sub    %eax,(%eax)
c060d5bd:	73 74                	jae    c060d633 <.stab+0x31fb>
c060d5bf:	72 6c                	jb     c060d62d <.stab+0x31f5>
c060d5c1:	65 6e                	outsb  %gs:(%esi),(%dx)
c060d5c3:	3a 46 28             	cmp    0x28(%esi),%al
c060d5c6:	31 2c 38             	xor    %ebp,(%eax,%edi,1)
c060d5c9:	29 00                	sub    %eax,(%eax)
c060d5cb:	73 74                	jae    c060d641 <.stab+0x3209>
c060d5cd:	72 3a                	jb     c060d609 <.stab+0x31d1>
c060d5cf:	70 28                	jo     c060d5f9 <.stab+0x31c1>
c060d5d1:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d5d4:	37                   	aaa    
c060d5d5:	29 3d 2a 28 30 2c    	sub    %edi,0x2c30282a
c060d5db:	32 29                	xor    (%ecx),%ch
c060d5dd:	00 73 74             	add    %dh,0x74(%ebx)
c060d5e0:	72 3a                	jb     c060d61c <.stab+0x31e4>
c060d5e2:	72 28                	jb     c060d60c <.stab+0x31d4>
c060d5e4:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d5e7:	37                   	aaa    
c060d5e8:	29 00                	sub    %eax,(%eax)
c060d5ea:	6d                   	insl   (%dx),%es:(%edi)
c060d5eb:	65 6d                	gs insl (%dx),%es:(%edi)
c060d5ed:	73 65                	jae    c060d654 <.stab+0x321c>
c060d5ef:	74 3a                	je     c060d62b <.stab+0x31f3>
c060d5f1:	46                   	inc    %esi
c060d5f2:	28 30                	sub    %dh,(%eax)
c060d5f4:	2c 32                	sub    $0x32,%al
c060d5f6:	36 29 00             	sub    %eax,%ss:(%eax)
c060d5f9:	73 72                	jae    c060d66d <.stab+0x3235>
c060d5fb:	63 3a                	arpl   %di,(%edx)
c060d5fd:	70 28                	jo     c060d627 <.stab+0x31ef>
c060d5ff:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d602:	36 29 00             	sub    %eax,%ss:(%eax)
c060d605:	76 61                	jbe    c060d668 <.stab+0x3230>
c060d607:	6c                   	insb   (%dx),%es:(%edi)
c060d608:	3a 70 28             	cmp    0x28(%eax),%dh
c060d60b:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d60e:	29 00                	sub    %eax,(%eax)
c060d610:	6e                   	outsb  %ds:(%esi),(%dx)
c060d611:	3a 70 28             	cmp    0x28(%eax),%dh
c060d614:	31 2c 38             	xor    %ebp,(%eax,%edi,1)
c060d617:	29 00                	sub    %eax,(%eax)
c060d619:	73 72                	jae    c060d68d <.stab+0x3255>
c060d61b:	63 3a                	arpl   %di,(%edx)
c060d61d:	72 28                	jb     c060d647 <.stab+0x320f>
c060d61f:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d622:	36 29 00             	sub    %eax,%ss:(%eax)
c060d625:	6e                   	outsb  %ds:(%esi),(%dx)
c060d626:	3a 72 28             	cmp    0x28(%edx),%dh
c060d629:	31 2c 38             	xor    %ebp,(%eax,%edi,1)
c060d62c:	29 00                	sub    %eax,(%eax)
c060d62e:	73 79                	jae    c060d6a9 <.stab+0x3271>
c060d630:	73 63                	jae    c060d695 <.stab+0x325d>
c060d632:	61                   	popa   
c060d633:	6c                   	insb   (%dx),%es:(%edi)
c060d634:	6c                   	insb   (%dx),%es:(%edi)
c060d635:	2e 63 00             	arpl   %ax,%cs:(%eax)
c060d638:	73 79                	jae    c060d6b3 <.stab+0x327b>
c060d63a:	73 69                	jae    c060d6a5 <.stab+0x326d>
c060d63c:	6f                   	outsl  %ds:(%esi),(%dx)
c060d63d:	2e 63 00             	arpl   %ax,%cs:(%eax)
c060d640:	2e 2e 2f             	cs cs das 
c060d643:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c060d64a:	2f                   	das    
c060d64b:	76 61                	jbe    c060d6ae <.stab+0x3276>
c060d64d:	64 65 66 73 2e       	fs gs data16 jae c060d680 <.stab+0x3248>
c060d652:	68 00 76 61 5f       	push   $0x5f617600
c060d657:	6c                   	insb   (%dx),%es:(%edi)
c060d658:	69 73 74 3a 74 28 34 	imul   $0x3428743a,0x74(%ebx),%esi
c060d65f:	2c 31                	sub    $0x31,%al
c060d661:	29 3d 28 34 2c 32    	sub    %edi,0x322c3428
c060d667:	29 3d 2a 28 30 2c    	sub    %edi,0x2c30282a
c060d66d:	32 29                	xor    (%ecx),%ch
c060d66f:	00 70 75             	add    %dh,0x75(%eax)
c060d672:	74 5f                	je     c060d6d3 <.stab+0x329b>
c060d674:	63 74 6c 63          	arpl   %si,0x63(%esp,%ebp,2)
c060d678:	68 2e 70 61 72       	push   $0x7261702e
c060d67d:	74 2e                	je     c060d6ad <.stab+0x3275>
c060d67f:	30 3a                	xor    %bh,(%edx)
c060d681:	66 28 30             	data16 sub %dh,(%eax)
c060d684:	2c 31                	sub    $0x31,%al
c060d686:	29 00                	sub    %eax,(%eax)
c060d688:	64 70 3a             	fs jo  c060d6c5 <.stab+0x328d>
c060d68b:	50                   	push   %eax
c060d68c:	28 30                	sub    %dh,(%eax)
c060d68e:	2c 32                	sub    $0x32,%al
c060d690:	36 29 3d 2a 28 31 2c 	sub    %edi,%ss:0x2c31282a
c060d697:	31 29                	xor    %ebp,(%ecx)
c060d699:	00 63 75             	add    %ah,0x75(%ebx)
c060d69c:	72 73                	jb     c060d711 <.stab+0x32d9>
c060d69e:	6f                   	outsl  %ds:(%esi),(%dx)
c060d69f:	72 5f                	jb     c060d700 <.stab+0x32c8>
c060d6a1:	70 6f                	jo     c060d712 <.stab+0x32da>
c060d6a3:	73 3a                	jae    c060d6df <.stab+0x32a7>
c060d6a5:	50                   	push   %eax
c060d6a6:	28 30                	sub    %dh,(%eax)
c060d6a8:	2c 31                	sub    $0x31,%al
c060d6aa:	29 00                	sub    %eax,(%eax)
c060d6ac:	77 69                	ja     c060d717 <.stab+0x32df>
c060d6ae:	64 74 68             	fs je  c060d719 <.stab+0x32e1>
c060d6b1:	3a 50 28             	cmp    0x28(%eax),%dl
c060d6b4:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d6b7:	29 00                	sub    %eax,(%eax)
c060d6b9:	68 65 69 67 68       	push   $0x68676965
c060d6be:	74 3a                	je     c060d6fa <.stab+0x32c2>
c060d6c0:	70 28                	jo     c060d6ea <.stab+0x32b2>
c060d6c2:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d6c5:	29 00                	sub    %eax,(%eax)
c060d6c7:	67 65 74 5f          	addr16 gs je c060d72a <.stab+0x32f2>
c060d6cb:	63 75 72             	arpl   %si,0x72(%ebp)
c060d6ce:	73 6f                	jae    c060d73f <.stab+0x3307>
c060d6d0:	72 3a                	jb     c060d70c <.stab+0x32d4>
c060d6d2:	46                   	inc    %esi
c060d6d3:	28 32                	sub    %dh,(%edx)
c060d6d5:	2c 34                	sub    $0x34,%al
c060d6d7:	29 00                	sub    %eax,(%eax)
c060d6d9:	70 75                	jo     c060d750 <.stab+0x3318>
c060d6db:	74 5f                	je     c060d73c <.stab+0x3304>
c060d6dd:	63 75 72             	arpl   %si,0x72(%ebp)
c060d6e0:	73 6f                	jae    c060d751 <.stab+0x3319>
c060d6e2:	72 3a                	jb     c060d71e <.stab+0x32e6>
c060d6e4:	46                   	inc    %esi
c060d6e5:	28 30                	sub    %dh,(%eax)
c060d6e7:	2c 32                	sub    $0x32,%al
c060d6e9:	35 29 00 70 6f       	xor    $0x6f700029,%eax
c060d6ee:	73 3a                	jae    c060d72a <.stab+0x32f2>
c060d6f0:	70 28                	jo     c060d71a <.stab+0x32e2>
c060d6f2:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060d6f5:	29 00                	sub    %eax,(%eax)
c060d6f7:	70 6f                	jo     c060d768 <.stab+0x3330>
c060d6f9:	73 3a                	jae    c060d735 <.stab+0x32fd>
c060d6fb:	72 28                	jb     c060d725 <.stab+0x32ed>
c060d6fd:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060d700:	29 00                	sub    %eax,(%eax)
c060d702:	73 79                	jae    c060d77d <.stab+0x3345>
c060d704:	73 5f                	jae    c060d765 <.stab+0x332d>
c060d706:	70 72                	jo     c060d77a <.stab+0x3342>
c060d708:	69 6e 74 73 74 72 3a 	imul   $0x3a727473,0x74(%esi),%ebp
c060d70f:	46                   	inc    %esi
c060d710:	28 30                	sub    %dh,(%eax)
c060d712:	2c 31                	sub    $0x31,%al
c060d714:	29 00                	sub    %eax,(%eax)
c060d716:	6e                   	outsb  %ds:(%esi),(%dx)
c060d717:	3a 70 28             	cmp    0x28(%eax),%dh
c060d71a:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d71d:	29 00                	sub    %eax,(%eax)
c060d71f:	70 6f                	jo     c060d790 <.stab+0x3358>
c060d721:	73 3a                	jae    c060d75d <.stab+0x3325>
c060d723:	70 28                	jo     c060d74d <.stab+0x3315>
c060d725:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d728:	29 00                	sub    %eax,(%eax)
c060d72a:	64 70 3a             	fs jo  c060d767 <.stab+0x332f>
c060d72d:	70 28                	jo     c060d757 <.stab+0x331f>
c060d72f:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d732:	36 29 00             	sub    %eax,%ss:(%eax)
c060d735:	6e                   	outsb  %ds:(%esi),(%dx)
c060d736:	3a 72 28             	cmp    0x28(%edx),%dh
c060d739:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d73c:	29 00                	sub    %eax,(%eax)
c060d73e:	70 75                	jo     c060d7b5 <.stab+0x337d>
c060d740:	74 5f                	je     c060d7a1 <.stab+0x3369>
c060d742:	63 74 6c 63          	arpl   %si,0x63(%esp,%ebp,2)
c060d746:	68 3a 46 28 30       	push   $0x3028463a
c060d74b:	2c 31                	sub    $0x31,%al
c060d74d:	29 00                	sub    %eax,(%eax)
c060d74f:	63 68 3a             	arpl   %bp,0x3a(%eax)
c060d752:	70 28                	jo     c060d77c <.stab+0x3344>
c060d754:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d757:	29 00                	sub    %eax,(%eax)
c060d759:	63 75 72             	arpl   %si,0x72(%ebp)
c060d75c:	73 6f                	jae    c060d7cd <.stab+0x3395>
c060d75e:	72 5f                	jb     c060d7bf <.stab+0x3387>
c060d760:	70 6f                	jo     c060d7d1 <.stab+0x3399>
c060d762:	73 3a                	jae    c060d79e <.stab+0x3366>
c060d764:	70 28                	jo     c060d78e <.stab+0x3356>
c060d766:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d769:	29 00                	sub    %eax,(%eax)
c060d76b:	77 69                	ja     c060d7d6 <.stab+0x339e>
c060d76d:	64 74 68             	fs je  c060d7d8 <.stab+0x33a0>
c060d770:	3a 70 28             	cmp    0x28(%eax),%dh
c060d773:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d776:	29 00                	sub    %eax,(%eax)
c060d778:	64 70 3a             	fs jo  c060d7b5 <.stab+0x337d>
c060d77b:	72 28                	jb     c060d7a5 <.stab+0x336d>
c060d77d:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d780:	36 29 00             	sub    %eax,%ss:(%eax)
c060d783:	63 75 72             	arpl   %si,0x72(%ebp)
c060d786:	73 6f                	jae    c060d7f7 <.stab+0x33bf>
c060d788:	72 5f                	jb     c060d7e9 <.stab+0x33b1>
c060d78a:	70 6f                	jo     c060d7fb <.stab+0x33c3>
c060d78c:	73 3a                	jae    c060d7c8 <.stab+0x3390>
c060d78e:	72 28                	jb     c060d7b8 <.stab+0x3380>
c060d790:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d793:	29 00                	sub    %eax,(%eax)
c060d795:	77 69                	ja     c060d800 <.stab+0x33c8>
c060d797:	64 74 68             	fs je  c060d802 <.stab+0x33ca>
c060d79a:	3a 72 28             	cmp    0x28(%edx),%dh
c060d79d:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d7a0:	29 00                	sub    %eax,(%eax)
c060d7a2:	68 65 69 67 68       	push   $0x68676965
c060d7a7:	74 3a                	je     c060d7e3 <.stab+0x33ab>
c060d7a9:	72 28                	jb     c060d7d3 <.stab+0x339b>
c060d7ab:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d7ae:	29 00                	sub    %eax,(%eax)
c060d7b0:	63 6e 74             	arpl   %bp,0x74(%esi)
c060d7b3:	63 3a                	arpl   %di,(%edx)
c060d7b5:	46                   	inc    %esi
c060d7b6:	28 30                	sub    %dh,(%eax)
c060d7b8:	2c 32                	sub    $0x32,%al
c060d7ba:	29 00                	sub    %eax,(%eax)
c060d7bc:	6e                   	outsb  %ds:(%esi),(%dx)
c060d7bd:	75 6d                	jne    c060d82c <.stab+0x33f4>
c060d7bf:	3a 70 28             	cmp    0x28(%eax),%dh
c060d7c2:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060d7c5:	29 00                	sub    %eax,(%eax)
c060d7c7:	6e                   	outsb  %ds:(%esi),(%dx)
c060d7c8:	75 6d                	jne    c060d837 <.stab+0x33ff>
c060d7ca:	3a 72 28             	cmp    0x28(%edx),%dh
c060d7cd:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060d7d0:	29 00                	sub    %eax,(%eax)
c060d7d2:	69 74 6f 61 73 3a 46 	imul   $0x28463a73,0x61(%edi,%ebp,2),%esi
c060d7d9:	28 
c060d7da:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d7dd:	29 00                	sub    %eax,(%eax)
c060d7df:	6e                   	outsb  %ds:(%esi),(%dx)
c060d7e0:	75 6d                	jne    c060d84f <.stab+0x3417>
c060d7e2:	3a 70 28             	cmp    0x28(%eax),%dh
c060d7e5:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d7e8:	29 00                	sub    %eax,(%eax)
c060d7ea:	73 74                	jae    c060d860 <.stab+0x3428>
c060d7ec:	72 3a                	jb     c060d828 <.stab+0x33f0>
c060d7ee:	70 28                	jo     c060d818 <.stab+0x33e0>
c060d7f0:	34 2c                	xor    $0x2c,%al
c060d7f2:	32 29                	xor    (%ecx),%ch
c060d7f4:	00 63 61             	add    %ah,0x61(%ebx)
c060d7f7:	72 64                	jb     c060d85d <.stab+0x3425>
c060d7f9:	69 6e 61 6c 3a 70 28 	imul   $0x28703a6c,0x61(%esi),%ebp
c060d800:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d803:	29 00                	sub    %eax,(%eax)
c060d805:	73 3a                	jae    c060d841 <.stab+0x3409>
c060d807:	28 30                	sub    %dh,(%eax)
c060d809:	2c 32                	sub    $0x32,%al
c060d80b:	38 29                	cmp    %ch,(%ecx)
c060d80d:	3d 61 72 28 32       	cmp    $0x32287261,%eax
c060d812:	2c 31                	sub    $0x31,%al
c060d814:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060d819:	31 39                	xor    %edi,(%ecx)
c060d81b:	3b 28                	cmp    (%eax),%ebp
c060d81d:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d820:	29 00                	sub    %eax,(%eax)
c060d822:	6e                   	outsb  %ds:(%esi),(%dx)
c060d823:	75 6d                	jne    c060d892 <.stab+0x345a>
c060d825:	3a 72 28             	cmp    0x28(%edx),%dh
c060d828:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d82b:	29 00                	sub    %eax,(%eax)
c060d82d:	63 61 72             	arpl   %sp,0x72(%ecx)
c060d830:	64 69 6e 61 6c 3a 72 	imul   $0x28723a6c,%fs:0x61(%esi),%ebp
c060d837:	28 
c060d838:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d83b:	29 00                	sub    %eax,(%eax)
c060d83d:	73 79                	jae    c060d8b8 <.stab+0x3480>
c060d83f:	73 5f                	jae    c060d8a0 <.stab+0x3468>
c060d841:	70 72                	jo     c060d8b5 <.stab+0x347d>
c060d843:	69 6e 74 6b 3a 46 28 	imul   $0x28463a6b,0x74(%esi),%ebp
c060d84a:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d84d:	29 00                	sub    %eax,(%eax)
c060d84f:	73 74                	jae    c060d8c5 <.stab+0x348d>
c060d851:	72 3a                	jb     c060d88d <.stab+0x3455>
c060d853:	70 28                	jo     c060d87d <.stab+0x3445>
c060d855:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d858:	37                   	aaa    
c060d859:	29 00                	sub    %eax,(%eax)
c060d85b:	70 6f                	jo     c060d8cc <.stab+0x3494>
c060d85d:	73 3a                	jae    c060d899 <.stab+0x3461>
c060d85f:	72 28                	jb     c060d889 <.stab+0x3451>
c060d861:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d864:	29 00                	sub    %eax,(%eax)
c060d866:	73 3a                	jae    c060d8a2 <.stab+0x346a>
c060d868:	28 30                	sub    %dh,(%eax)
c060d86a:	2c 32                	sub    $0x32,%al
c060d86c:	38 29                	cmp    %ch,(%ecx)
c060d86e:	00 73 79             	add    %dh,0x79(%ebx)
c060d871:	73 5f                	jae    c060d8d2 <.stab+0x349a>
c060d873:	72 65                	jb     c060d8da <.stab+0x34a2>
c060d875:	61                   	popa   
c060d876:	64 44                	fs inc %esp
c060d878:	69 73 6b 3a 46 28 30 	imul   $0x3028463a,0x6b(%ebx),%esi
c060d87f:	2c 31                	sub    $0x31,%al
c060d881:	29 00                	sub    %eax,(%eax)
c060d883:	6d                   	insl   (%dx),%es:(%edi)
c060d884:	65 6d                	gs insl (%dx),%es:(%edi)
c060d886:	3a 70 28             	cmp    0x28(%eax),%dh
c060d889:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d88c:	39 29                	cmp    %ebp,(%ecx)
c060d88e:	3d 2a 28 30 2c       	cmp    $0x2c30282a,%eax
c060d893:	32 35 29 00 73 65    	xor    0x65730029,%dh
c060d899:	63 61 64             	arpl   %sp,0x64(%ecx)
c060d89c:	64 72 3a             	fs jb  c060d8d9 <.stab+0x34a1>
c060d89f:	70 28                	jo     c060d8c9 <.stab+0x3491>
c060d8a1:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060d8a4:	29 00                	sub    %eax,(%eax)
c060d8a6:	48                   	dec    %eax
c060d8a7:	44                   	inc    %esp
c060d8a8:	44                   	inc    %esp
c060d8a9:	3a 70 28             	cmp    0x28(%eax),%dh
c060d8ac:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d8af:	29 00                	sub    %eax,(%eax)
c060d8b1:	6d                   	insl   (%dx),%es:(%edi)
c060d8b2:	65 6d                	gs insl (%dx),%es:(%edi)
c060d8b4:	3a 72 28             	cmp    0x28(%edx),%dh
c060d8b7:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d8ba:	39 29                	cmp    %ebp,(%ecx)
c060d8bc:	00 73 79             	add    %dh,0x79(%ebx)
c060d8bf:	73 5f                	jae    c060d920 <.stab+0x34e8>
c060d8c1:	77 72                	ja     c060d935 <.stab+0x34fd>
c060d8c3:	69 74 65 44 69 73 6b 	imul   $0x3a6b7369,0x44(%ebp,%eiz,2),%esi
c060d8ca:	3a 
c060d8cb:	46                   	inc    %esi
c060d8cc:	28 30                	sub    %dh,(%eax)
c060d8ce:	2c 31                	sub    $0x31,%al
c060d8d0:	29 00                	sub    %eax,(%eax)
c060d8d2:	6d                   	insl   (%dx),%es:(%edi)
c060d8d3:	65 6d                	gs insl (%dx),%es:(%edi)
c060d8d5:	3a 70 28             	cmp    0x28(%eax),%dh
c060d8d8:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d8db:	39 29                	cmp    %ebp,(%ecx)
c060d8dd:	00 6c 65 6e          	add    %ch,0x6e(%ebp,%eiz,2)
c060d8e1:	67 74 68             	addr16 je c060d94c <.stab+0x3514>
c060d8e4:	3a 70 28             	cmp    0x28(%eax),%dh
c060d8e7:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060d8ea:	29 00                	sub    %eax,(%eax)
c060d8ec:	6e                   	outsb  %ds:(%esi),(%dx)
c060d8ed:	75 6d                	jne    c060d95c <.stab+0x3524>
c060d8ef:	3a 72 28             	cmp    0x28(%edx),%dh
c060d8f2:	32 2c 34             	xor    (%esp,%esi,1),%ch
c060d8f5:	29 00                	sub    %eax,(%eax)
c060d8f7:	74 61                	je     c060d95a <.stab+0x3522>
c060d8f9:	73 6b                	jae    c060d966 <.stab+0x352e>
c060d8fb:	2e 63 00             	arpl   %ax,%cs:(%eax)
c060d8fe:	74 73                	je     c060d973 <.stab+0x353b>
c060d900:	73 3a                	jae    c060d93c <.stab+0x3504>
c060d902:	53                   	push   %ebx
c060d903:	28 35 2c 31 29 00    	sub    %dh,0x29312c
c060d909:	70 69                	jo     c060d974 <.stab+0x353c>
c060d90b:	64 73 3a             	fs jae c060d948 <.stab+0x3510>
c060d90e:	53                   	push   %ebx
c060d90f:	28 30                	sub    %dh,(%eax)
c060d911:	2c 32                	sub    $0x32,%al
c060d913:	36 29 3d 61 72 28 32 	sub    %edi,%ss:0x32287261
c060d91a:	2c 31                	sub    $0x31,%al
c060d91c:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060d921:	34 39                	xor    $0x39,%al
c060d923:	3b 28                	cmp    (%eax),%ebp
c060d925:	35 2c 34 29 00       	xor    $0x29342c,%eax
c060d92a:	69 6e 69 74 5f 74 73 	imul   $0x73745f74,0x69(%esi),%ebp
c060d931:	73 3a                	jae    c060d96d <.stab+0x3535>
c060d933:	46                   	inc    %esi
c060d934:	28 30                	sub    %dh,(%eax)
c060d936:	2c 32                	sub    $0x32,%al
c060d938:	35 29 00 61 3a       	xor    $0x3a610029,%eax
c060d93d:	72 28                	jb     c060d967 <.stab+0x352f>
c060d93f:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060d942:	31 29                	xor    %ebp,(%ecx)
c060d944:	00 67 65             	add    %ah,0x65(%edi)
c060d947:	74 5f                	je     c060d9a8 <.stab+0x3570>
c060d949:	70 69                	jo     c060d9b4 <.stab+0x357c>
c060d94b:	64 3a 46 28          	cmp    %fs:0x28(%esi),%al
c060d94f:	35 2c 34 29 00       	xor    $0x29342c,%eax
c060d954:	69 3a 56 28 30 2c    	imul   $0x2c302856,(%edx),%edi
c060d95a:	34 29                	xor    $0x29,%al
c060d95c:	00 70 3a             	add    %dh,0x3a(%eax)
c060d95f:	56                   	push   %esi
c060d960:	28 35 2c 34 29 00    	sub    %dh,0x29342c
c060d966:	64 65 6c             	fs gs insb (%dx),%es:(%edi)
c060d969:	5f                   	pop    %edi
c060d96a:	70 69                	jo     c060d9d5 <.stab+0x359d>
c060d96c:	64 3a 46 28          	cmp    %fs:0x28(%esi),%al
c060d970:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d973:	35 29 00 70 69       	xor    $0x69700029,%eax
c060d978:	64 3a 70 28          	cmp    %fs:0x28(%eax),%dh
c060d97c:	35 2c 34 29 00       	xor    $0x29342c,%eax
c060d981:	74 69                	je     c060d9ec <.stab+0x35b4>
c060d983:	6d                   	insl   (%dx),%es:(%edi)
c060d984:	65 2e 63 00          	gs arpl %ax,%cs:(%eax)
c060d988:	5f                   	pop    %edi
c060d989:	49                   	dec    %ecx
c060d98a:	4e                   	dec    %esi
c060d98b:	54                   	push   %esp
c060d98c:	3a 47 28             	cmp    0x28(%edi),%al
c060d98f:	35 2c 32 29 00       	xor    $0x29322c,%eax
c060d994:	5f                   	pop    %edi
c060d995:	72 65                	jb     c060d9fc <.stab+0x35c4>
c060d997:	61                   	popa   
c060d998:	64 5f                	fs pop %edi
c060d99a:	63 6d 6f             	arpl   %bp,0x6f(%ebp)
c060d99d:	73 5f                	jae    c060d9fe <.stab+0x35c6>
c060d99f:	74 69                	je     c060da0a <.stab+0x35d2>
c060d9a1:	6d                   	insl   (%dx),%es:(%edi)
c060d9a2:	65 3a 46 28          	cmp    %gs:0x28(%esi),%al
c060d9a6:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d9a9:	35 29 00 74 69       	xor    $0x69740029,%eax
c060d9ae:	6d                   	insl   (%dx),%es:(%edi)
c060d9af:	65 3a 70 28          	cmp    %gs:0x28(%eax),%dh
c060d9b3:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d9b6:	36 29 3d 2a 28 31 2c 	sub    %edi,%ss:0x2c31282a
c060d9bd:	33 29                	xor    (%ecx),%ebp
c060d9bf:	00 74 69 6d          	add    %dh,0x6d(%ecx,%ebp,2)
c060d9c3:	65 3a 46 28          	cmp    %gs:0x28(%esi),%al
c060d9c7:	31 2c 31             	xor    %ebp,(%ecx,%esi,1)
c060d9ca:	29 00                	sub    %eax,(%eax)
c060d9cc:	74 69                	je     c060da37 <.stab+0x35ff>
c060d9ce:	6d                   	insl   (%dx),%es:(%edi)
c060d9cf:	65 72 3a             	gs jb  c060da0c <.stab+0x35d4>
c060d9d2:	70 28                	jo     c060d9fc <.stab+0x35c4>
c060d9d4:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060d9d7:	37                   	aaa    
c060d9d8:	29 3d 2a 28 31 2c    	sub    %edi,0x2c31282a
c060d9de:	31 29                	xor    %ebp,(%ecx)
c060d9e0:	00 74 3a 28          	add    %dh,0x28(%edx,%edi,1)
c060d9e4:	31 2c 33             	xor    %ebp,(%ebx,%esi,1)
c060d9e7:	29 00                	sub    %eax,(%eax)
c060d9e9:	6d                   	insl   (%dx),%es:(%edi)
c060d9ea:	6f                   	outsl  %ds:(%esi),(%dx)
c060d9eb:	6e                   	outsb  %ds:(%esi),(%dx)
c060d9ec:	3a 72 28             	cmp    0x28(%edx),%dh
c060d9ef:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060d9f2:	29 00                	sub    %eax,(%eax)
c060d9f4:	79 65                	jns    c060da5b <.stab+0x3623>
c060d9f6:	61                   	popa   
c060d9f7:	72 3a                	jb     c060da33 <.stab+0x35fb>
c060d9f9:	72 28                	jb     c060da23 <.stab+0x35eb>
c060d9fb:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c060d9fe:	29 00                	sub    %eax,(%eax)
c060da00:	5f                   	pop    %edi
c060da01:	6c                   	insb   (%dx),%es:(%edi)
c060da02:	70 64                	jo     c060da68 <.stab+0x3630>
c060da04:	61                   	popa   
c060da05:	79 73                	jns    c060da7a <.stab+0x3642>
c060da07:	3a 53 28             	cmp    0x28(%ebx),%dl
c060da0a:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060da0d:	38 29                	cmp    %ch,(%ecx)
c060da0f:	3d 61 72 28 32       	cmp    $0x32287261,%eax
c060da14:	2c 31                	sub    $0x31,%al
c060da16:	35 29 3b 30 3b       	xor    $0x3b303b29,%eax
c060da1b:	31 32                	xor    %esi,(%edx)
c060da1d:	3b 28                	cmp    (%eax),%ebp
c060da1f:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c060da22:	29 00                	sub    %eax,(%eax)
c060da24:	5f                   	pop    %edi
c060da25:	64 61                	fs popa 
c060da27:	79 73                	jns    c060da9c <.stab+0x3664>
c060da29:	3a 53 28             	cmp    0x28(%ebx),%dl
c060da2c:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060da2f:	38 29                	cmp    %ch,(%ecx)
c060da31:	00 6c 6f 63          	add    %ch,0x63(%edi,%ebp,2)
c060da35:	61                   	popa   
c060da36:	6c                   	insb   (%dx),%es:(%edi)
c060da37:	74 69                	je     c060daa2 <.stab+0x366a>
c060da39:	6d                   	insl   (%dx),%es:(%edi)
c060da3a:	65 5f                	gs pop %edi
c060da3c:	72 3a                	jb     c060da78 <.stab+0x3640>
c060da3e:	46                   	inc    %esi
c060da3f:	28 30                	sub    %dh,(%eax)
c060da41:	2c 32                	sub    $0x32,%al
c060da43:	39 29                	cmp    %ebp,(%ecx)
c060da45:	3d 2a 28 31 2c       	cmp    $0x2c31282a,%eax
c060da4a:	32 29                	xor    (%ecx),%ch
c060da4c:	00 74 69 6d          	add    %dh,0x6d(%ecx,%ebp,2)
c060da50:	65 70 3a             	gs jo  c060da8d <.stab+0x3655>
c060da53:	70 28                	jo     c060da7d <.stab+0x3645>
c060da55:	30 2c 33             	xor    %ch,(%ebx,%esi,1)
c060da58:	30 29                	xor    %ch,(%ecx)
c060da5a:	3d 2a 28 31 2c       	cmp    $0x2c31282a,%eax
c060da5f:	31 29                	xor    %ebp,(%ecx)
c060da61:	00 72 65             	add    %dh,0x65(%edx)
c060da64:	73 75                	jae    c060dadb <.stab+0x36a3>
c060da66:	6c                   	insb   (%dx),%es:(%edi)
c060da67:	74 3a                	je     c060daa3 <.stab+0x366b>
c060da69:	70 28                	jo     c060da93 <.stab+0x365b>
c060da6b:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060da6e:	39 29                	cmp    %ebp,(%ecx)
c060da70:	00 6d 64             	add    %ch,0x64(%ebp)
c060da73:	61                   	popa   
c060da74:	79 73                	jns    c060dae9 <.stab+0x36b1>
c060da76:	3a 72 28             	cmp    0x28(%edx),%dh
c060da79:	30 2c 33             	xor    %ch,(%ebx,%esi,1)
c060da7c:	31 29                	xor    %ebp,(%ecx)
c060da7e:	3d 2a 28 30 2c       	cmp    $0x2c30282a,%eax
c060da83:	31 29                	xor    %ebp,(%ecx)
c060da85:	00 74 69 6d          	add    %dh,0x6d(%ecx,%ebp,2)
c060da89:	65 70 3a             	gs jo  c060dac6 <.stab+0x368e>
c060da8c:	72 28                	jb     c060dab6 <.stab+0x367e>
c060da8e:	30 2c 33             	xor    %ch,(%ebx,%esi,1)
c060da91:	30 29                	xor    %ch,(%ecx)
c060da93:	00 72 65             	add    %dh,0x65(%edx)
c060da96:	73 75                	jae    c060db0d <.stab+0x36d5>
c060da98:	6c                   	insb   (%dx),%es:(%edi)
c060da99:	74 3a                	je     c060dad5 <.stab+0x369d>
c060da9b:	72 28                	jb     c060dac5 <.stab+0x368d>
c060da9d:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c060daa0:	39 29                	cmp    %ebp,(%ecx)
	...
