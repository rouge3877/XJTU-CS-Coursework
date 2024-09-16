; Arithmetic Instruction Programming

; Arithmetic instruction programming. Write a complete program to implement
; Z = ( ( W – X ) / 5 * Y ) / 2
; where X, Y, Z, W are all 8-bit signed integers
; (For simplification, remainders are not considered after division)

name arith
title arithematic instruction program design
	
data segment
	stu db '2204112913'
	X db 30
	Y db 20
	Z db ?
	W db 40
data ends

code segment
	assume cs: code, ds: data

	main proc far
		; Prepare for return to DOS
		push ds
		xor ax, ax
		push ax
		; Initialize data segment
		mov ax, seg data
		mov ds, ax
		xor ax, ax
		; Load value to register
		mov al, W
		mov bl, 5 
		; Calculate the result
		sub al, X ; W - X
		idiv bl	  ; ( W – X ) / 5
		imul Y	  ; ( W – X ) / 5 * Y

		and ax, 00FFh; If consider Overflow???
		shr al, 1 ; ( ( W – X ) / 5 * Y ) / 2
		mov Z, al

		ret
	main endp

code ends
	end main