.model small
.stack 100h
.data
    ;db define byte, dw define word
       
    num1 db 'd'
    num2 db ?
    char db '#'
    str db "my name is emu8086" 
    char db ?
.code
main proc

    
    mov ah, 4ch
    int 21h
        main endp


end main