name Password
title Set Password

assume cs:code, ds:data

data segment
    ID      db '2204112913'
    BUFFER  db 10 dup(?)
    TABLE   db 7, 5, 9, 1, 3, 6, 8, 0, 2, 4
data ends

code segment
    
    main proc far
        mov ax, seg data
        mov ds, ax
        mov bx, offset TABLE
        mov si, 0

        mov cx, 10
    read_loop:
        mov ah, 01h
        int 21h
        cmp al, 0Dh
        je read_done

        sub al, '0'
        xlat
        mov BUFFER[si], al
        inc si
        loop read_loop
    read_done:
        
        mov ax, 4c00h
        int 21h

    main endp

code ends
    end main