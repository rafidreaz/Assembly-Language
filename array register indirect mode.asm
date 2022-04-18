include 'EMU8086.INC'
.model small
.stack 100h
.data 
    number db 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10
    number2 dw 65, 66, 67, 68, 69
     
.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea si, number2
    
    mov cx, 10
    mov ah ,2
    for:
        mov dl, [si]
        ;add dl, 48
        int 21h
        add si , 2
    loop for 
    
    
    
    
    mov ah, 4ch
    int 21h
    main endp
end main