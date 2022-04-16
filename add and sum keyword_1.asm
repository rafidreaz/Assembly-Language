.model small
.stack 100h
.data
    a db ?
    b db ?   
.code
main proc
    mov ah,1;takes one input
    int 21h
    
    mov a, al;saves the input
    sub a, 48; a =a - 48
    
    int 21h; will take input again
    
    mov b, al
    sub b,48 ;b= b-48
    
    mov bh ,a  ;bh = a
    add bh, b  ;bh = bh + b
    add bh, 48 ;bh = bh +48(for ascii formating)
    
    ;new line
    mov ah,2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    ;output a+b
    mov dl, bh
    int 21h
    
    
    mov ah,4ch
    int 21h
    main endp
end main