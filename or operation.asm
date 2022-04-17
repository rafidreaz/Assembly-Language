include 'EMU8086.INC'
.model small
.stack 100h
.data
.code
main proc
   
    mov bh,101b
    or bh,10b
    
    add bh, 48
    
    mov ah,2
    mov dl, bh
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp
end main