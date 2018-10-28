_xswap:		push	bp
_xswap+1:	mov	bp,sp
_xswap+3:	push	si
_xswap+4:	push	di
_xswap+5:	mov	di,*4(bp)
_xswap+8:	cmp	*8(bp),*0
_xswap+c:	jne	_xswap+14
_xswap+e:	mov	ax,*14(di)
_xswap+11:	mov	*8(bp),ax
_xswap+14:	mov	ax,*16(di)
_xswap+17:	add	ax,*18(di)
_xswap+1a:	mov	si,ax
_xswap+1c:	cmp	ax,#82
_xswap+1f:	jle	_xswap+2d
_xswap+21:	mov	ax,#82
_xswap+24:	sub	ax,*18(di)
_xswap+27:	mov	*16(di),ax
_xswap+2a:	mov	si,#82
_xswap+2d:	push	si
_xswap+2e:	mov	ax,#0
_xswap+31:	push	ax
_xswap+32:	call	0
_xswap+35:	add	sp,*4
_xswap+38:	mov	si,ax
_xswap+3a:	or	ax,ax
_xswap+3c:	jne	_xswap+4c
_xswap+3e:	mov	ax,#0
_xswap+41:	push	ax
_xswap+42:	call	0
_xswap+45:	pop	cx
_xswap+46:	mov	ax,#1
_xswap+49:	jmp	_xswap+dd
_xswap+4c:	inc	(di)
_xswap+4e:	xor	ax,ax
_xswap+50:	push	ax
_xswap+51:	push	*20(di)
_xswap+54:	call	_xccdec
_xswap+57:	add	sp,*4
_xswap+5a:	mov	ax,#1
_xswap+5d:	push	ax
_xswap+5e:	push	*22(di)
_xswap+61:	call	_xccdec
_xswap+64:	add	sp,*4
_xswap+67:	xor	ax,ax
_xswap+69:	push	ax
_xswap+6a:	push	*16(di)
_xswap+6d:	push	*12(di)
_xswap+70:	push	si
_xswap+71:	call	0
_xswap+74:	add	sp,*8
_xswap+77:	cmp	*18(di),*0
_xswap+7b:	je	_xswap+9e
_xswap+7d:	xor	ax,ax
_xswap+7f:	push	ax
_xswap+80:	push	*18(di)
_xswap+83:	mov	ax,#82
_xswap+86:	sub	ax,*18(di)
_xswap+89:	mov	cx,#5
_xswap+8c:	shl	ax,cl
_xswap+8e:	add	ax,*12(di)
_xswap+91:	push	ax
_xswap+92:	mov	ax,si
_xswap+94:	add	ax,*16(di)
_xswap+97:	push	ax
_xswap+98:	call	0
_xswap+9b:	add	sp,*8
_xswap+9e:	cmp	*6(bp),*0
_xswap+a2:	je	_xswap+ba
_xswap+a4:	mov	ax,*12(di)
_xswap+a7:	mov	cx,#5
_xswap+aa:	shr	ax,cl
_xswap+ac:	push	ax
_xswap+ad:	push	*8(bp)
_xswap+b0:	mov	ax,#0
_xswap+b3:	push	ax
_xswap+b4:	call	0
_xswap+b7:	add	sp,*6
_xswap+ba:	mov	*12(di),si
_xswap+bd:	dec	(di)
_xswap+bf:	and	(di),#bfff
_xswap+c3:	movb	*5(di),*0
_xswap+c7:	cmpb	0,*0
_xswap+cc:	je	_xswap+db
_xswap+ce:	movb	0,*0
_xswap+d3:	mov	ax,#0
_xswap+d6:	push	ax
_xswap+d7:	call	0
_xswap+da:	pop	cx
_xswap+db:	xor	ax,ax
_xswap+dd:	pop	di
_xswap+de:	pop	si
_xswap+df:	pop	bp
_xswap+e0:	ret

_xfree:
_xfree:		push	bp
_xfree+1:	mov	bp,sp
_xfree+3:	push	si
_xfree+4:	push	di
_xfree+5:	mov	di,76
_xfree+9:	mov	si,*20(di)
_xfree+c:	mov	*20(di),#0
_xfree+11:	mov	ax,#2
_xfree+14:	push	ax
_xfree+15:	push	si
_xfree+16:	call	_xccdec
_xfree+19:	add	sp,*4
_xfree+1c:	mov	si,*22(di)
_xfree+1f:	mov	*22(di),#0
_xfree+24:	mov	ax,#3
_xfree+27:	push	ax
_xfree+28:	push	si
_xfree+29:	call	_xccdec
_xfree+2c:	add	sp,*4
_xfree+2f:	pop	di
_xfree+30:	pop	si
_xfree+31:	pop	bp
_xfree+32:	ret

_xmfree:
_xmfree:	push	bp
_xmfree+1:	mov	bp,sp
_xmfree+3:	push	si
_xmfree+4:	push	di
_xmfree+5:	mov	di,#0
_xmfree+8:	cmp	di,0
_xmfree+c:	jnb	_xmfree+3f
_xmfree+e:	cmp	*6(di),*0
_xmfree+12:	je	_xmfree+3a
_xmfree+14:	cmpb	*1(di),*0
_xmfree+18:	jne	_xmfree+3a
_xmfree+1a:	movb	al,(di)
_xmfree+1c:	and	ax,#ff
_xmfree+1f:	test	ax,#40
_xmfree+22:	jne	_xmfree+3a
_xmfree+24:	cmp	*4(di),*0
_xmfree+28:	jne	_xmfree+30
_xmfree+2a:	cmp	*2(di),*0
_xmfree+2e:	jne	_xmfree+3a
_xmfree+30:	push	di
_xmfree+31:	call	_xxmfree
_xmfree+34:	pop	cx
_xmfree+35:	mov	ax,#1
_xmfree+38:	j	_xmfree+41
_xmfree+3a:	add	di,*c
_xmfree+3d:	j	_xmfree+8
_xmfree+3f:	xor	ax,ax
_xmfree+41:	pop	di
_xmfree+42:	pop	si
_xmfree+43:	pop	bp
_xmfree+44:	ret

_xxmfree:
_xxmfree:	push	bp
_xxmfree+1:	mov	bp,sp
_xxmfree+3:	push	si
_xxmfree+4:	push	di
_xxmfree+5:	mov	di,#4(bp)
_xxmfree+9:	mov	ax,*6(di)
_xxmfree+c:	mov	cx,#5
_xxmfree+f:	shr	ax,cl
_xxmfree+11:	push	ax
_xxmfree+12:	push	*8(di)
_xxmfree+15:	mov	ax,#0
_xxmfree+18:	push	ax
_xxmfree+19:	call	0
_xxmfree+1c:	add	sp,*6
_xxmfree+1f:	mov	*6(di),#0
_xxmfree+24:	mov	si,*10(di)
_xxmfree+27:	cmp	*2(di),*0
_xxmfree+2b:	jne	_xxmfree+58
_xxmfree+2d:	cmp	*4(di),*0
_xxmfree+31:	je	_xxmfree+43
_xxmfree+33:	push	*4(di)
_xxmfree+36:	push	*8(di)
_xxmfree+39:	mov	ax,#0
_xxmfree+3c:	push	ax
_xxmfree+3d:	call	0
_xxmfree+40:	add	sp,*6
_xxmfree+43:	mov	*10(di),#0
_xxmfree+48:	andb	(si),*df
_xxmfree+4b:	decb	*1(si)
_xxmfree+4e:	jne	_xxmfree+58
_xxmfree+50:	movb	(si),*0
_xxmfree+53:	mov	*4(si),#0
_xxmfree+58:	pop	di
_xxmfree+59:	pop	si
_xxmfree+5a:	pop	bp
_xxmfree+5b:	ret

_xalloc:
_xalloc:	push	bp
_xalloc+1:	mov	bp,sp
_xalloc+3:	push	si
_xalloc+4:	push	di
_xalloc+5:	sub	sp,*a
_xalloc+8:	mov	di,76
_xalloc+c:	mov	*-8(bp),#0
_xalloc+11:	mov	si,#0
_xalloc+14:	cmp	si,0
_xalloc+18:	jb	_xalloc+1d
_xalloc+1a:	jmp	_xalloc+e5
_xalloc+1d:	cmp	*10(si),*0
_xalloc+21:	jne	_xalloc+2f
_xalloc+23:	cmp	*-8(bp),*0
_xalloc+27:	jne	_xalloc+35
_xalloc+29:	mov	*-8(bp),si
_xalloc+2c:	jmp	_xalloc+df
_xalloc+2f:	mov	ax,*10(si)
_xalloc+32:	cmp	ax,*4(bp)
_xalloc+35:	je	_xalloc+3a
_xalloc+37:	jmp	_xalloc+df
_xalloc+3a:	push	si
_xalloc+3b:	call	_xlock
_xalloc+3e:	pop	cx
_xalloc+3f:	inc	*2(si)
_xalloc+42:	cmp	*6(si),*0
_xalloc+46:	je	_xalloc+4b
_xalloc+48:	jmp	_xalloc+d9
_xalloc+4b:	push	*8(si)
_xalloc+4e:	mov	ax,#0
_xalloc+51:	push	ax
_xalloc+52:	call	0
_xalloc+55:	add	sp,*4
_xalloc+58:	mov	*-6(bp),ax
_xalloc+5b:	or	ax,ax
_xalloc+5d:	jne	_xalloc+b5
_xalloc+5f:	call	0
_xalloc+62:	mov	ax,#0
_xalloc+65:	push	ax
_xalloc+66:	call	0
_xalloc+69:	pop	cx
_xalloc+6a:	mov	ax,#d2
_xalloc+6d:	push	ax
_xalloc+6e:	call	0
_xalloc+71:	pop	cx
_xalloc+72:	mov	bx,76
_xalloc+76:	push	*12(bx)
_xalloc+79:	call	0
_xalloc+7c:	pop	cx
_xalloc+7d:	xor	ax,ax
_xalloc+7f:	push	ax
_xalloc+80:	mov	ax,#1
_xalloc+83:	push	ax
_xalloc+84:	push	di
_xalloc+85:	call	0
_xalloc+88:	add	sp,*6
_xalloc+8b:	or	ax,ax
_xalloc+8d:	je	_xalloc+9b
_xalloc+8f:	push	si
_xalloc+90:	call	_xunlock
_xalloc+93:	pop	cx
_xalloc+94:	dec	*2(si)
_xalloc+97:	xor	ax,ax
_xalloc+99:	j	_xalloc+f6
_xalloc+9b:	cmp	*6(bp),*0
_xalloc+9f:	je	_xalloc+a6
_xalloc+a1:	mov	*22(di),si
_xalloc+a4:	j	_xalloc+a9
_xalloc+a6:	mov	*20(di),si
_xalloc+a9:	push	si
_xalloc+aa:	call	_xunlock
_xalloc+ad:	pop	cx
_xalloc+ae:	or	(di),#1000
_xalloc+b2:	call	0
_xalloc+b5:	mov	ax,*-6(bp)
_xalloc+b8:	mov	cx,#5
_xalloc+bb:	shl	ax,cl
_xalloc+bd:	mov	*-6(bp),ax
_xalloc+c0:	mov	ax,#1
_xalloc+c3:	push	ax
_xalloc+c4:	push	*8(si)
_xalloc+c7:	push	*-6(bp)
_xalloc+ca:	push	*4(si)
_xalloc+cd:	call	0
_xalloc+d0:	add	sp,*8
_xalloc+d3:	mov	ax,*-6(bp)
_xalloc+d6:	mov	*6(si),ax
_xalloc+d9:	incb	*1(si)
_xalloc+dc:	jmp	394
_xalloc+df:	add	si,*c
_xalloc+e2:	jmp	_xalloc+14
_xalloc+e5:	mov	si,*-8(bp)
_xalloc+e8:	or	si,si
_xalloc+ea:	jne	_xalloc+f8
_xalloc+ec:	mov	ax,#0
_xalloc+ef:	push	ax
_xalloc+f0:	call	0
_xalloc+f3:	pop	cx
_xalloc+f4:	xor	ax,ax
_xalloc+f6:	j	319
_xalloc+f8:	movb	(si),*40
_xalloc+fb:	mov	*2(si),#1
2b5:		mov	bx,*4(bp)
2b8:		mov	ax,*6(bx)
2bb:		test	ax,#200
2be:		je	2cf
2c0:		mov	bx,*4(bp)
2c3:		mov	ax,*2(bx)
2c6:		cmp	ax,0
2ca:		jne	2cf
2cc:		inc	*2(si)
2cf:		movb	*1(si),*1
2d3:		mov	ax,*4(bp)
2d6:		mov	*10(si),ax
2d9:		mov	bx,*4(bp)
2dc:		orb	(bx),*20
2df:		mov	bx,*4(bp)
2e2:		incb	*1(bx)
2e5:		mov	ax,*8(bp)
2e8:		mov	*8(si),ax
2eb:		mov	*4(si),#0
2f0:		cmp	*6(bp),*0
2f4:		je	2fe
2f6:		mov	ax,*14(di)
2f9:		mov	*-10(bp),ax
2fc:		j	303
2fe:		mov	*-10(bp),#2
303:		mov	ax,*-10(bp)
306:		add	ax,*8(bp)
309:		push	ax
30a:		call	0
30d:		pop	cx
30e:		or	ax,ax
310:		jne	31c
312:		mov	*10(si),#0
317:		xor	ax,ax
319:		jmp	3aa
31c:		cmp	*6(bp),*2
320:		jnl	380
322:		inc	(di)
324:		mov	ax,*-10(bp)
327:		dec	ax
328:		dec	ax
329:		mov	*-12(bp),ax
32c:		cmp	*8(bp),*0
330:		jle	375
332:		cmp	*8(bp),*7f
336:		jle	345
338:		mov	ax,#7f
33b:		mov	cx,#9
33e:		shl	ax,cl
340:		mov	7a,ax
343:		j	350
345:		mov	ax,*8(bp)
348:		mov	cx,#9
34b:		shl	ax,cl
34d:		mov	7a,ax
350:		mov	78,#0
356:		mov	ax,*-12(bp)
359:		mov	cx,#5
35c:		shl	ax,cl
35e:		mov	c,ax
361:		call	0
364:		push	*4(bp)
367:		call	0
36a:		pop	cx
36b:		add	*-12(bp),*7f
36f:		sub	*8(bp),*7f
373:		j	32c
375:		mov	c,#0
37b:		call	0
37e:		dec	(di)
380:		mov	ax,*-10(bp)
383:		mov	*14(di),ax
386:		mov	ax,*-10(bp)
389:		mov	cx,#5
38c:		shl	ax,cl
38e:		add	ax,*12(di)
391:		mov	*6(si),ax
394:		cmp	*6(bp),*0
398:		je	39f
39a:		mov	*22(di),si
39d:		j	3a2
39f:		mov	*20(di),si
3a2:		push	si
3a3:		call	_xunlock
3a6:		pop	cx
3a7:		mov	ax,#1
3aa:		lea	sp,*-4(bp)
3ad:		pop	di
3ae:		pop	si
3af:		pop	bp
3b0:		ret

_xccdec:
_xccdec:	push	bp
_xccdec+1:	mov	bp,sp
_xccdec+3:	push	si
_xccdec+4:	push	di
_xccdec+5:	mov	di,#4(bp)
_xccdec+9:	or	di,di
_xccdec+b:	je	_xccdec+7b
_xccdec+d:	push	di
_xccdec+e:	call	_xlock
_xccdec+11:	pop	cx
_xccdec+12:	cmp	*6(bp),*2
_xccdec+16:	jl	_xccdec+1b
_xccdec+18:	dec	*2(di)
_xccdec+1b:	decb	*1(di)
_xccdec+1e:	jne	_xccdec+5b
_xccdec+20:	cmp	*2(di),*0
_xccdec+24:	jne	_xccdec+39
_xccdec+26:	mov	bx,*10(di)
_xccdec+29:	mov	ax,*2(bx)
_xccdec+2c:	cmp	ax,0
_xccdec+30:	je	_xccdec+76
_xccdec+32:	push	di
_xccdec+33:	call	_xxmfree
_xccdec+36:	pop	cx
_xccdec+37:	j	_xccdec+76
_xccdec+39:	cmp	*4(di),*0
_xccdec+3d:	jne	_xccdec+5d
_xccdec+3f:	push	*8(di)
_xccdec+42:	mov	ax,#0
_xccdec+45:	push	ax
_xccdec+46:	call	0
_xccdec+49:	add	sp,*4
_xccdec+4c:	mov	*4(di),ax
_xccdec+4f:	or	ax,ax
_xccdec+51:	jne	_xccdec+64
_xccdec+53:	mov	ax,#0
_xccdec+56:	push	ax
_xccdec+57:	call	0
_xccdec+5a:	pop	cx
_xccdec+5b:	j	_xccdec+76
_xccdec+5d:
data address not found
_xccdec+5f:	push	es
_xccdec+60:	add	(bx+si),ax
_xccdec+62:	je	_xccdec+76
_xccdec+64:	xor	ax,ax
_xccdec+66:	push	ax
_xccdec+67:	push	*8(di)
_xccdec+6a:	push	*6(di)
_xccdec+6d:	push	*4(di)
_xccdec+70:	call	0
_xccdec+73:	add	sp,*8
_xccdec+76:	push	di
_xccdec+77:	call	_xunlock
_xccdec+7a:	pop	cx
_xccdec+7b:	pop	di
_xccdec+7c:	pop	si
_xccdec+7d:	pop	bp
_xccdec+7e:	ret

_xlock:
_xlock:		push	bp
_xlock+1:	mov	bp,sp
_xlock+3:	push	si
_xlock+4:	push	di
_xlock+5:	mov	di,#4(bp)
_xlock+9:	movb	al,(di)
_xlock+b:	and	ax,#ff
_xlock+e:	test	ax,#40
_xlock+11:	je	_xlock+23
_xlock+13:	orb	(di),*80
_xlock+16:	mov	ax,#ff9c
_xlock+19:	push	ax
_xlock+1a:	push	di
_xlock+1b:	call	0
_xlock+1e:	add	sp,*4
_xlock+21:	j	_xlock+9
_xlock+23:	orb	(di),*40
_xlock+26:	pop	di
_xlock+27:	pop	si
_xlock+28:	pop	bp
_xlock+29:	ret

_xunlock:
_xunlock:	push	bp
_xunlock+1:	mov	bp,sp
_xunlock+3:	push	si
_xunlock+4:	push	di
_xunlock+5:	mov	di,#4(bp)
_xunlock+9:	movb	al,(di)
_xunlock+b:	and	ax,#ff
_xunlock+e:	test	ax,#80
_xunlock+11:	je	_xunlock+18
_xunlock+13:	push	di
_xunlock+14:	call	0
_xunlock+17:	pop	cx
_xunlock+18:	movb	(di),*0
_xunlock+1b:	pop	di
_xunlock+1c:	pop	si
_xunlock+1d:	pop	bp
_xunlock+1e:	ret
