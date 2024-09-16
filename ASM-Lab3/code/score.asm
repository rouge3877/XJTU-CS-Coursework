name Score
title Count students score

MSG MACRO COUNT
	S&COUNT DB 0
ENDM

data segment
	ID  db  '2204112913'
	array db 76, 69, 84, 90, 73, 88, 99, 63, 100, 80
	counts label byte
	X = 6
	REPT 5
		MSG %X
		X = X + 1
	ENDM
data ends

code segment
	assume cs:code, ds:data

	main proc far
		push ds
		xor ax, ax
		push ax
		mov ax, seg data
		mov ds, ax

		mov di, offset array
		mov si, offset counts
		mov dx, counts - array
		call countScore

		ret
	main endp

	countScore proc near 
	    mov cx, dx

count_scores:
	    mov al, [di]

	    cmp al, 100
	    je  increment_S10
	    cmp al, 90
	    jge increment_S9
	    cmp al, 80
	    jge increment_S8
	    cmp al, 70
	    jge increment_S7
	    cmp al, 60
	    jge increment_S6
	    jmp next_student

increment_S10:
	    inc byte ptr S10
	    jmp next_student
increment_S9:
	    inc byte ptr S9
	    jmp next_student
increment_S8:
	    inc byte ptr S8
	    jmp next_student
increment_S7:
	    inc byte ptr S7
	    jmp next_student
increment_S6:
	    inc byte ptr S6
next_student:
	    inc di
	    loop count_scores
	    ret
	countScore endp

code ends
	end main
