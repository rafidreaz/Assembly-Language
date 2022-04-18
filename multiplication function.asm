include 'EMU8086.INC'
.model small
.stack 100h
.data

.code
main proc
    call multiplication
    
    
    
    mov ah, 4ch
    int 21h
    main endp 
    multiplication proc
        
        ;input
        print "First Number: "
        mov ah,1
        int 21h
        mov bl, al
        sub bl, 48
        
        printn
        print "second number: "
        int 21h
        
        mov cl, al
        sub cl, 48
        printn
        
        ;multiplication
        
        mov dl,0; to store the sum
        
        for:
            cmp cl,0
            je end_for
            shr cl,1
            jnc check
            add dl, bl
            check:
            shl bl,1
            jmp for
            
            
        end_for:
        mov ah,2 ; output will be in ascii
        int 21h
        ret
        
    multiplication endp    
    
end main