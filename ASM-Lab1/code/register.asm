; 寄存器使用程序设计。编写完整程序，
;	要求把BL中的数除以CL中的数，并把其商乘以2，
;	最后结果存入DX寄存器中

; 寄存器使用程序设计。
; 寄存器BL、CL的值根据需要进行初始化。
; （说明：为简化编程，除法运算后不考虑余数）

NAME REGISTER
TITLE arithematic instruction program design


data segment
	cl_number db 8
	bl_number db 16
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
		xor bl, bl
		; Load data
		mov bl, bl_number
		mov cl, cl_number
		; calcualte
		mov al, bl
		cbw
		idiv cl
		shl ax, 1
		mov dx, ax

		ret
	main endp

code ends
	end main