INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE        

MAIN PROC
    mov bx,0
    mov cl,4
    print "enter hex number: "
    mov ah,1
    for1:
        int 21h
        cmp al, 0dh
        je end_for
        
        cmp al, 41h
        jge letter
        
        ;digit
        sub al, 48
        jmp shift
        
        letter:
            sub al,37h
        shift:
            shl bx, cl;new space store
            or bl, al
        jmp for1
        
    end_for:
    printn
    mov ah,2
    mov dl, bl
    int 21h
    
    
    
     
    MOV AH , 4CH 
    INT 21H
    MAIN ENDP
END MAIN 