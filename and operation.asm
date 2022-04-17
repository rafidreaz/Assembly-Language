include 'EMU8086.INC'
.model small
.stack 100h
.data
.code
main proc
   
    mov bh,1111b
    and bh,0100b
    
    add bh, 48
    
    mov ah,2
    mov dl, bh
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp
end main