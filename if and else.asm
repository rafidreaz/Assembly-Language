include 'EMU8086.INC'
.model small
.stack 100h
.data
.code
main proc
    
    mov bx, 10; random
    
    cmp bx, 0 ;compare
    jl if
    jge else
    if:
    printn "The number is negative"
    jmp end_if
    
    else:
    printn "the number is positve" 
    jmp end_if
    
    end_if:;wont check other condition if one is true
    
    
    
    mov ah, 4ch
    int 21h
    main endp
end main