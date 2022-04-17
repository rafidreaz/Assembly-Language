include 'EMU8086.INC'
.model small
.stack 100h
.data
.code
main proc
    
    mov bx, 1; random
    
    
    
    cmp bx, 100 ;compare >=100
    
    jge if1
    
    
    cmp bx, 80 ;compare  >=80
    
    jge if2
    
    
    cmp bx, 60 ;compare  >=60
    
    jge if3
    
    
    cmp bx, 40 ;compare  >=40
    
    jge if4
    
    
    cmp bx, 20 ;compare  >=20
    
    jge if5
    
    jmp else
    
    
    if1:
    printn "THE NUMBER IS GREATER OR EQUAL 100"
    jmp end_if
    
    if2:
    printn "THE NUMBER IS GREATER OR EQUAL 80"
    jmp end_if
    
    if3:
    printn "THE NUMBER IS GREATER OR EQUAL 60"
    jmp end_if
    
    if4:
    printn "THE NUMBER IS GREATER OR EQUAL 40"
    jmp end_if
    
    if5:
    printn "THE NUMBER IS GREATER OR EQUAL 20"
    jmp end_if
    
    else:
    printn "THE NUMBER IS less than 20"
    jmp end_if
    
    
    end_if:
    
    mov ah, 4ch
    int 21h
    main endp
end main