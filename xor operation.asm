include 'EMU8086.INC'
.model small
.stack 100h
.data
.code
main proc
   
    mov bh,0101b
    xor bh,0011b
    
    add bh, 48
    
    mov ah,2
    mov dl, bh
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp;xor is used to clear 
end main