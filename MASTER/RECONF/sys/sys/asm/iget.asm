_iget:		push	bp
_iget+1:	mov	bp,sp
_iget+3:	push	si
_iget+4:	push	di
_iget+5:	sub	sp,*4
_iget+8:	xor	di,di
_iget+a:	mov	si,#0
_iget+d:	cmp	si,0
_iget+11:	jnb	_iget+89
_iget+13:	mov	ax,*4(bp)
_iget+16:	cmp	ax,*2(si)
_iget+19:	jne	_iget+21
_iget+1b:	mov	ax,*6(bp)
_iget+1e:	cmp	ax,*4(si)
_iget+21:	jne	_iget+78
_iget+23:	movb	al,(si)
_iget+25:	and	ax,#ff
_iget+28:	test	ax,#1
_iget+2b:	je	_iget+3d
_iget+2d:	orb	(si),*10
_iget+30:	mov	ax,#ffa6
_iget+33:	push	ax
_iget+34:	push	si
_iget+35:	call	0
_iget+38:	add	sp,*4
_iget+3b:	j	_iget+8
_iget+3d:	movb	al,(si)
_iget+3f:	and	ax,#ff
_iget+42:	test	ax,#8
_iget+45:	je	_iget+6e
_iget+47:	mov	di,#0
_iget+4a:	cmp	di,0
_iget+4e:	jnb	_iget+66
_iget+50:	cmp	*4(di),si
_iget+53:	jne	_iget+61
_iget+55:	mov	ax,(di)
_iget+57:	mov	*4(bp),ax
_iget+5a:	mov	*6(bp),#1
_iget+5f:	j	_iget+3b
_iget+61:	add	di,*6
_iget+64:	j	_iget+4a
_iget+66:	lea	ax,*-8(bp)
_iget+69:	push	ax
_iget+6a:	call	0
_iget+6d:	pop	cx
_iget+6e:	incb	*1(si)
_iget+71:	orb	(si),*1
_iget+74:	mov	ax,si
_iget+76:	j	_iget+9e
_iget+78:	or	di,di
_iget+7a:	jne	_iget+84
_iget+7c:	cmpb	*1(si),*0
_iget+80:	jne	_iget+84
_iget+82:	mov	di,si
_iget+84:	add	si,*22
_iget+87:	j	_iget+d
_iget+89:	mov	si,di
_iget+8b:	or	di,di
_iget+8d:	jne	_iget+a0
_iget+8f:	lea	ax,*-8(bp)
_iget+92:	push	ax
_iget+93:	call	0
_iget+96:	pop	cx
_iget+97:	movb	71,*17
_iget+9c:	xor	ax,ax
_iget+9e:	j	_iget+e0
_iget+a0:	mov	ax,*4(bp)
_iget+a3:	mov	*2(si),ax
_iget+a6:	mov	ax,*6(bp)
_iget+a9:	mov	*4(si),ax
_iget+ac:	movb	(si),*1
_iget+af:	incb	*1(si)
_iget+b2:	mov	*30(si),#ffff
_iget+b7:	mov	ax,*6(bp)
_iget+ba:	add	ax,#1f
_iget+bd:	mov	cx,#4
_iget+c0:	shr	ax,cl
_iget+c2:	push	ax
_iget+c3:	push	*4(bp)
_iget+c6:	call	0
_iget+c9:	add	sp,*4
_iget+cc:	mov	di,ax
_iget+ce:
data address not found
_iget+d0:	addb	al,*0
_iget+d2:	je	_iget+e2
_iget+d4:	push	di
_iget+d5:	call	0
_iget+d8:	pop	cx
_iget+d9:	push	si
_iget+da:	call	_iput
_iget+dd:	pop	cx
_iget+de:	xor	ax,ax
_iget+e0:	j	11f
_iget+e2:	mov	ax,*6(bp)
_iget+e5:	add	ax,#f
_iget+e8:	and	ax,#f
_iget+eb:	mov	cx,#5
_iget+ee:	shl	ax,cl
_iget+f0:	add	ax,*14(di)
_iget+f3:	mov	*-8(bp),ax
_iget+f6:	lea	ax,*6(si)
_iget+f9:	mov	*-6(bp),ax
_iget+fc:	lea	ax,*30(si)
ff:		cmp	*-6(bp),ax
102:		jnb	118
104:		mov	bx,*-8(bp)
107:		mov	ax,(bx)
109:		mov	bx,*-6(bp)
10c:		mov	(bx),ax
10e:		add	*-8(bp),*2
112:		add	*-6(bp),*2
116:		j	_iget+fc
118:		push	di
119:		call	0
11c:		pop	cx
11d:		mov	ax,si
11f:		lea	sp,*-4(bp)
122:		pop	di
123:		pop	si
124:		pop	bp
125:		ret
_iput:
_iput:		push	bp
_iput+1:	mov	bp,sp
_iput+3:	push	si
_iput+4:	push	di
_iput+5:	mov	di,*4(bp)
_iput+8:	cmpb	*1(di),*1
_iput+c:	jne	_iput+48
_iput+e:	orb	(di),*1
_iput+11:	cmpb	*8(di),*0
_iput+15:	jne	_iput+30
_iput+17:	push	di
_iput+18:	call	_itrunc
_iput+1b:	pop	cx
_iput+1c:	mov	*6(di),#0
_iput+21:	orb	(di),*2
_iput+24:	push	*4(di)
_iput+27:	push	*2(di)
_iput+2a:	call	0
_iput+2d:	add	sp,*4
_iput+30:	mov	ax,#0
_iput+33:	push	ax
_iput+34:	push	di
_iput+35:	call	_iupdat
_iput+38:	add	sp,*4
_iput+3b:	push	di
_iput+3c:	call	0
_iput+3f:	pop	cx
_iput+40:	movb	(di),*0
_iput+43:	mov	*4(di),#0
_iput+48:	decb	*1(di)
_iput+4b:	push	di
_iput+4c:	call	0
_iput+4f:	pop	cx
_iput+50:	pop	di
_iput+51:	pop	si
_iput+52:	pop	bp
_iput+53:	ret
_iupdat:
_iupdat:	push	bp
_iupdat+1:	mov	bp,sp
_iupdat+3:	push	si
_iupdat+4:	push	di
_iupdat+5:	sub	sp,*4
_iupdat+8:	mov	di,*4(bp)
_iupdat+b:	movb	al,(di)
_iupdat+d:	and	ax,#ff
_iupdat+10:	test	ax,#6
_iupdat+13:	je	_iupdat+4d
_iupdat+15:	push	*2(di)
_iupdat+18:	call	0
_iupdat+1b:	pop	cx
_iupdat+1c:	mov	bx,ax
_iupdat+1e:	cmpb	#19b(bx),*0
_iupdat+23:	jne	_iupdat+4d
_iupdat+25:	mov	ax,*4(di)
_iupdat+28:	add	ax,#1f
_iupdat+2b:	mov	cx,#4
_iupdat+2e:	shr	ax,cl
_iupdat+30:	push	ax
_iupdat+31:	push	*2(di)
_iupdat+34:	call	0
_iupdat+37:	add	sp,*4
_iupdat+3a:	mov	*-8(bp),ax
_iupdat+3d:	mov	bx,ax
_iupdat+3f:	mov	ax,(bx)
_iupdat+41:	test	ax,#4
_iupdat+44:	je	_iupdat+4f
_iupdat+46:	push	*-8(bp)
_iupdat+49:	call	0
_iupdat+4c:	pop	cx
_iupdat+4d:	j	_iupdat+bf
_iupdat+4f:	mov	bx,*-8(bp)
_iupdat+52:	mov	ax,*14(bx)
_iupdat+55:	mov	dx,*4(di)
_iupdat+58:	add	dx,*f
_iupdat+5b:	and	dx,#f
_iupdat+5f:	mov	cx,#5
_iupdat+62:	shl	dx,cl
_iupdat+64:	add	ax,dx
_iupdat+66:	mov	si,ax
_iupdat+68:	lea	ax,*6(di)
_iupdat+6b:	mov	*-6(bp),ax
_iupdat+6e:	lea	ax,*30(di)
_iupdat+71:	cmp	*-6(bp),ax
_iupdat+74:	jnb	_iupdat+87
_iupdat+76:	mov	bx,*-6(bp)
_iupdat+79:	mov	ax,(bx)
_iupdat+7b:	mov	bx,si
_iupdat+7d:	inc	si
_iupdat+7e:	inc	si
_iupdat+7f:	mov	(bx),ax
_iupdat+81:	add	*-6(bp),*2
_iupdat+85:	j	_iupdat+6e
_iupdat+87:	movb	al,(di)
_iupdat+89:	and	ax,#ff
_iupdat+8c:	test	ax,#4
_iupdat+8f:	je	_iupdat+9d
_iupdat+91:	mov	ax,0
_iupdat+94:	mov	dx,2
_iupdat+98:	mov	(si),ax
_iupdat+9a:	mov	*2(si),dx
_iupdat+9d:	movb	al,(di)
_iupdat+9f:	and	ax,#ff
_iupdat+a2:	test	ax,#2
_iupdat+a5:	je	_iupdat+b5
_iupdat+a7:	mov	bx,*6(bp)
_iupdat+aa:	mov	ax,(bx)
_iupdat+ac:	mov	dx,*2(bx)
_iupdat+af:	mov	*4(si),ax
_iupdat+b2:	mov	*6(si),dx
_iupdat+b5:	andb	(di),*f9
_iupdat+b8:	push	*-8(bp)
_iupdat+bb:	call	0
_iupdat+be:	pop	cx
_iupdat+bf:	lea	sp,*-4(bp)
_iupdat+c2:	pop	di
_iupdat+c3:	pop	si
_iupdat+c4:	pop	bp
_iupdat+c5:	ret
_itrunc:
_itrunc:	push	bp
_itrunc+1:	mov	bp,sp
_itrunc+3:	push	si
_itrunc+4:	push	di
_itrunc+5:	sub	sp,*8
_itrunc+8:	mov	di,*4(bp)
_itrunc+b:
data address not found
_itrunc+d:	push	es
_itrunc+e:	addb	(bx+si),ah
_itrunc+10:	je	_itrunc+15
_itrunc+12:	jmp	34f
_itrunc+15:	lea	ax,*28(di)
_itrunc+18:	mov	*-8(bp),ax
_itrunc+1b:	lea	ax,*14(di)
_itrunc+1e:	cmp	*-8(bp),ax
_itrunc+21:	jnb	_itrunc+26
_itrunc+23:	jmp	_itrunc+fe
_itrunc+26:	mov	bx,*-8(bp)
_itrunc+29:	cmp	(bx),*0
_itrunc+2c:	jne	_itrunc+31
_itrunc+2e:	jmp	_itrunc+f7
_itrunc+31:
data address not found
_itrunc+33:	push	es
_itrunc+34:	addb	(bx+si),dl
_itrunc+36:	jne	_itrunc+3b
_itrunc+38:	jmp	_itrunc+e2
_itrunc+3b:	mov	bx,*-8(bp)
_itrunc+3e:	push	(bx)
_itrunc+40:	push	*2(di)
_itrunc+43:	call	0
_itrunc+46:	add	sp,*4
_itrunc+49:	mov	*-12(bp),ax
_itrunc+4c:	mov	bx,ax
_itrunc+4e:	mov	ax,(bx)
_itrunc+50:	test	ax,#4
_itrunc+53:	je	_itrunc+58
_itrunc+55:	jmp	_itrunc+db
_itrunc+58:	mov	bx,*-12(bp)
_itrunc+5b:	mov	ax,*14(bx)
_itrunc+5e:	add	ax,#200
_itrunc+61:	mov	*-6(bp),ax
_itrunc+64:	mov	bx,*-12(bp)
_itrunc+67:	mov	ax,*-6(bp)
_itrunc+6a:	cmp	ax,*14(bx)
_itrunc+6d:	jb	_itrunc+db
_itrunc+6f:	mov	bx,*-6(bp)
_itrunc+72:	cmp	(bx),*0
_itrunc+75:	je	_itrunc+d5
_itrunc+77:	lea	ax,*28(di)
_itrunc+7a:	cmp	*-8(bp),ax
_itrunc+7d:	jne	_itrunc+c7
_itrunc+7f:	mov	bx,*-6(bp)
_itrunc+82:	push	(bx)
_itrunc+84:	push	*2(di)
_itrunc+87:	call	0
_itrunc+8a:	add	sp,*4
_itrunc+8d:	mov	*-10(bp),ax
_itrunc+90:	mov	bx,ax
_itrunc+92:	mov	ax,(bx)
_itrunc+94:	test	ax,#4
_itrunc+97:	jne	_itrunc+c0
_itrunc+99:	mov	bx,*-10(bp)
_itrunc+9c:	mov	ax,*14(bx)
_itrunc+9f:	add	ax,#200
_itrunc+a2:	mov	si,ax
_itrunc+a4:	mov	bx,*-10(bp)
_itrunc+a7:	cmp	si,*14(bx)
_itrunc+aa:	jb	_itrunc+c0
_itrunc+ac:	cmp	(si),*0
_itrunc+af:	je	_itrunc+bc
_itrunc+b1:	push	(si)
_itrunc+b3:	push	*2(di)
_itrunc+b6:	call	0
_itrunc+b9:	add	sp,*4
_itrunc+bc:	dec	si
_itrunc+bd:	dec	si
_itrunc+be:	j	_itrunc+a4
_itrunc+c0:	push	*-10(bp)
_itrunc+c3:	call	0
_itrunc+c6:	pop	cx
_itrunc+c7:	mov	bx,*-6(bp)
_itrunc+ca:	push	(bx)
_itrunc+cc:	push	*2(di)
_itrunc+cf:	call	0
_itrunc+d2:	add	sp,*4
_itrunc+d5:	sub	*-6(bp),*2
_itrunc+d9:	j	_itrunc+64
_itrunc+db:	push	*-12(bp)
_itrunc+de:	call	0
_itrunc+e1:	pop	cx
_itrunc+e2:	mov	bx,*-8(bp)
_itrunc+e5:	push	(bx)
_itrunc+e7:	push	*2(di)
_itrunc+ea:	call	0
_itrunc+ed:	add	sp,*4
_itrunc+f0:	mov	bx,*-8(bp)
_itrunc+f3:	mov	(bx),#0
_itrunc+f7:	sub	*-8(bp),*2
_itrunc+fb:	jmp	_itrunc+1b
_itrunc+fe:	and	*6(di),#efff
343:		movb	*11(di),*0
347:		mov	*12(di),#0
34c:		orb	(di),*2
34f:		lea	sp,*-4(bp)
352:		pop	di
353:		pop	si
354:		pop	bp
355:		ret
_maknode:
_maknode:	push	bp
_maknode+1:	mov	bp,sp
_maknode+3:	push	si
_maknode+4:	push	di
_maknode+5:	mov	bx,a4
_maknode+9:	push	*2(bx)
_maknode+c:	call	0
_maknode+f:	pop	cx
_maknode+10:	mov	di,ax
_maknode+12:	or	di,di
_maknode+14:	jne	_maknode+22
_maknode+16:	push	a4
_maknode+1a:	call	_iput
_maknode+1d:	pop	cx
_maknode+1e:	xor	ax,ax
_maknode+20:	j	_maknode+4d
_maknode+22:	orb	(di),*6
_maknode+25:	mov	ax,*4(bp)
_maknode+28:	or	ax,#8000
_maknode+2b:	mov	dx,132
_maknode+2f:
data address not found
_maknode+31:	and	ax,dx
_maknode+33:	mov	*6(di),ax
_maknode+36:	movb	*8(di),*1
_maknode+3a:	movb	al,72
_maknode+3d:	movb	*9(di),al
_maknode+40:	movb	al,73
_maknode+43:	movb	*10(di),al
_maknode+46:	push	di
_maknode+47:	call	_wdir
_maknode+4a:	pop	cx
_maknode+4b:	mov	ax,di
_maknode+4d:	pop	di
_maknode+4e:	pop	si
_maknode+4f:	pop	bp
_maknode+50:	ret
_wdir:
_wdir:		push	bp
_wdir+1:	mov	bp,sp
_wdir+3:	push	si
_wdir+4:	push	di
_wdir+5:	mov	bx,a4
_wdir+9:	cmpb	*8(bx),*0
_wdir+d:	jne	_wdir+16
_wdir+f:	movb	71,*14
_wdir+14:	j	_wdir+53
_wdir+16:	mov	bx,*4(bp)
_wdir+19:	mov	ax,*4(bx)
_wdir+1c:	mov	94,ax
_wdir+1f:	mov	di,#96
_wdir+22:	mov	si,#84
_wdir+25:	cmp	si,#92
_wdir+29:	jnb	_wdir+3a
_wdir+2b:	mov	bx,si
_wdir+2d:	inc	si
_wdir+2e:	movb	al,(bx)
_wdir+30:	cbw
_wdir+31:	mov	bx,di
_wdir+33:	inc	di
_wdir+34:	mov	cx,ax
_wdir+36:	movb	(bx),cl
_wdir+38:	j	_wdir+25
_wdir+3a:	mov	7a,#10
_wdir+40:	movb	70,*1
_wdir+45:	mov	78,#94
_wdir+4b:	push	a4
_wdir+4f:	call	0
_wdir+52:	pop	cx
_wdir+53:	push	a4
_wdir+57:	call	_iput
_wdir+5a:	pop	cx
_wdir+5b:	pop	di
_wdir+5c:	pop	si
_wdir+5d:	pop	bp
_wdir+5e:	ret
