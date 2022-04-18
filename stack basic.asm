include 'EMU8086.INC'
.model small
.stack 100h
.data
.code
main proc
    
    
    push ah ;0100h =ax; sp = sp - 2  ;00fe
    push bx; 00fe ; sp =sp -2        ;00fc
    
    pop cx;cx = 00fe ; sp = sp+2h; 00fe 
    pop dx; dx = 0100 ; sp = sp+2h ;0100
    
    ;bx = cx
    ;ah = dx
    
    
    mov ah, 4ch
    int 21h
    main endp
end main