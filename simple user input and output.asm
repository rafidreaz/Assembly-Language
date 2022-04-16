.model small
.stack 100h
.data   
.code
main proc
    
    mov ah,1; system calls function for input
    int 21h
    ;input will be stored in al
    
    
    
    mov ah,2
    mov dl, al
    int 21h
    
    
     
    
    
    
    
    mov ah,4ch
    int 21h
    main endp
end main