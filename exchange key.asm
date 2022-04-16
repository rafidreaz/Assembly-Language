.model small
.stack 100h
.data   
.code
main proc
    mov bl, 53;5
    mov bh, 55 
    
    mov ah, 2
    mov dl,bl
    int 21h
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h 
    mov dl, bh
    int 21h
    
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    xchg bh ,bl; exchanges value
    
    mov ah, 2
    mov dl,bl
    int 21h; prints exchanged value of bl
    ;new line
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    ;prings exchangeed value bh 
    mov dl, bh
    int 21h
    
    
    
    
    mov ah,4ch
    int 21h
    main endp
end main