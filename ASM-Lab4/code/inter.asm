name Interrupt
title Int sub-program

assume cs:code, ds:data

addr struc
    offsets dw ?
    segments dw ?
addr ends

data segment
    ID db '2204112913'
    NUM dw 0
    IADDR addr <>
    crlf db 0DH, 0AH, '$'
data ends

code segment
    
    main proc far
        mov ax, seg data
        mov ds, ax

        ; get the interrupt vector
        mov ah, 35h
        mov al, 1ch
        int 21h
        mov ax, es
        mov IADDR.offsets, bx
        mov IADDR.segments, ax

        ; set the interrupt vector
        push ds
        mov dx, offset COUNT
        mov ax, seg COUNT
        mov ds, ax
        mov ah, 25h
        mov al, 1ch
        int 21h
        pop ds
        

        ; enable the timer tick interrupt
        in al, 21h
        and al, 11111110b
        out 21h, al
        sti


        ; wait for the user to press 'Q'
        mov ah, 1
    waitForKey:
        int 21h
        cmp al, 'Q'
        jne waitForKey


        ;print crlf
        mov ah, 09h
        lea dx, crlf
        int 21h


        ; reset the interrupt vector
        push ds
        mov ax, IADDR.segments
        mov dx, IADDR.offsets
        mov ds, ax
        mov ah, 25h
        mov al, 1ch
        int 21h
        pop ds


        mov bx, NUM
        call HexShot

        mov ax, 4c00H
        int 21h

    main endp

    COUNT proc far
        push ax
        mov ax, data
        mov ds, ax

        sti
        inc NUM
        cli

        pop ax
        iret
    COUNT endp


    ; print the number in bx in hexadecimal
    HexShot proc
        push ax
        push cx
        push dx

        mov cx, 4
        print_digit:
            rol bx, 1
            rol bx, 1
            rol bx, 1
            rol bx, 1
            mov dl, bl
            and dl, 0Fh
            cmp dl, 9
            jg convert_letter
            add dl, '0'
            jmp print_done
        convert_letter:
            add dl, 'A' - 10
        print_done:
            mov ah, 02h
            int 21h
            loop print_digit

        ;print "h"
        mov dl, 'h'
        mov ah, 02h
        int 21h
            
        pop dx
        pop cx
        pop ax
        ret
    HexShot endp

code ends
    end main