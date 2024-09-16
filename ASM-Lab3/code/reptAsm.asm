name REPTASM
title conditional Assembly and repitition Assembly

data segment
    ID db '2204112913'

    strBegin label byte
    X db '2204112913'
    strEnd label byte

data ends

code segment
    assume cs:code, ds:data
    main proc far
        mov ax, seg data
        mov ds, ax
        mov ax, strEnd-strBegin

    IF strEnd-strBegin LE 5 ; if length of string is less than or equal to 5
        REPT strEnd-strBegin
            add ax, ax
        ENDM
    ELSE
        REPT 6
            add ax, ax
        ENDM
    ENDIF

        mov ax, 4c00h
        int 21h
    main endp
    
code ends
    end main
