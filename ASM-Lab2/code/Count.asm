; 设计一个程序，在数据段用自己的学号定义一个字符串，字符串长度大于 20，
; 对该字符串中字符 0~9 字符出现的次数进行计数，计数结果存放在以 COUNT 为
; 首地址的数组中，并将出现次数最多的字符和出现次数显示出来。要求：
;
; 	（1）该字符串的前 10 个字符必须为自己的学号，例如某同学的学号为
; 		2195012345，则该字符串的定义为 '2195012345xxxxxxxxxxxxxxxx'，字符
; 		串中的 x 根据程序调试需要进行初始化；
; 	（2）如果字符 9 出现的次数为 5 次，且是出现次数最多的字符，则在程序
; 		结束时输出： 9，5。若有多个次数相同的字符，则输出字符最大的哪个。
;

printnum macro num
	push ax
	push dx
	mov ax, num
	add ax, 30h
	mov dl, al
	mov ah, 02h
	int 21h
	pop dx
	pop ax
endm

name CountString
title Count String

data segment
	mystring db '2204112913-li-yuxuan-assembly999999$'
	countarray dw 10 dup(0)
	tests db 9
data ends


code segment
	assume cs:code, ds:data

	main proc far
		; init
		push ds
		xor ax, ax
		push ax
		mov ax, data
		mov ds, ax
		xor ax, ax

		; count number
		mov di, offset mystring
		mov si, offset countarray
		mov al, ds:[di]

begin:	cmp al, 39h
		jg short incr
		cmp al, 30h
		jl short incr
		sub al, 30h

		cbw
		mov bp, ax
		add bp, ax
		add word ptr ds:[bp+si], 1

		jmp short begin

incr:	cmp al, '$'
		je short endstr
		add di, type mystring
		mov al, ds:[di] 
		jmp short begin

endstr:	mov dx, length countarray
		
		call findMax
		sub di, offset countarray
		shr di, 1
		printnum di
		printnum ','-30h
		printnum ' '-30h
		printnum ax
		
		ret
	main endp


	findMax proc near
	; dx - length, si - array, di - max_index
	; return the max num in ax

		mov cx, dx	; length
		mov ax, [si]; ax stores the max number

loopH:	cmp word ptr [si], 0;
		jnl short whennl
		neg word ptr [si]
whennl:	cmp [si], ax
		jl short whenl
		mov ax, [si]
		mov di, si
whenl:	lea si, 2[si]
		loop loopH

		ret
	findMax endp



code ends
	end main