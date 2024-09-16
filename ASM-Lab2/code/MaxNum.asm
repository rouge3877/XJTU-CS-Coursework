; 数据段中已定义了一个长度为 n（n>=16）的字数组 M，试编写一程序求出 M
; 中绝对值最大的数，把它放在数据段的 M+2n 单元中，并将该数的偏移地址存放
; 在 M+2(n+1)单元中。要求：
; （1）把自己学号每 2 位一组，分别定义前 5 个字的初始值。例如，某同学的
; 学号为 2195012345，则数组 M 的前 5 个字的定义为：21H， 95H, 01H, 23H,
; 45H, 剩余的字根据程序调试需要进行初始化。

name MaxNumber
title Find Max Number

data segment
;	length dw 16
	array label word
	dw 22h, 04h, 11h, 29h, 13h
	dw 4  dup(-1,2,3,4,-5)
	arrend label word
	max dw ?
	ofs dw ? ;store the first max number
data ends


code segment
	assume cs:code, ds:data

	main proc far
		push ds
		xor ax, ax
		push ax
		mov ax, data
		mov ds, ax
		mov dx, (arrend - array)/2; get array's length
		mov si, offset array
		mov di, si
		call findMax
		mov max, ax
		mov ofs, di

		ret
	main endp

	findMax proc near
	; dx - length, si - array, di - max_index
	; return the max num in ax

		mov cx, dx
		mov ax, [si]; ax stores the max number

loopH:	cmp word ptr [si], 0;
		jnl short whennl
		neg word ptr [si]
whennl:	cmp [si], ax
		jng short whenng
		mov ax, [si]
		mov di, si
whenng:	lea si, 2[si]
		loop loopH

		ret
	findMax endp

code ends
	end main