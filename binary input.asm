include 'EMU8086.INC'
.model small
.stack 100h
.data
.code
main proc
   
    ;clear a register to store data
    ;loop start
    ;input 0/a
    ;check if it is enter?
    ;if enter end loop
    ;bx shl
    ;store the input bx register lsb bit
    
    mov bx,0
    
    mov ah,1
    for1:
        int 21h
        cmp al, 0dh
        je end_for1
        sub al, 48
        shl bx, 1
        or bl,al
        jmp for1
    end_for1:
    
    printn
    printn
    mov ah,2
    mov dl, bl
    add dl, 48
    int 21h
     
    mov ah, 4ch
    int 21h
    main endp
end main