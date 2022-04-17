include 'EMU8086.INC'
.model small
.stack 100h
.data
    a db ?
.code
main proc
    
    mov ah,1
    int 21h
    
    mov a, al
    sub a, 48
    
    
    mov ah,2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    
    cmp a, 100 ;compare >=10
    
    jge if1
    
    
    cmp a, 80 ;compare  >=8
    
    jge if2
    
    
    cmp a, 60 ;compare  >=6
    
    jge if3
    
    
    cmp a, 40 ;compare  >=4
    
    jge if4
    
    
    cmp a, 20 ;compare  >=2
    
    jge if5
    
    jmp else
    
    
    if1:
    printn "THE NUMBER IS GREATER OR EQUAL 10"
    jmp end_if
    
    if2:
    printn "THE NUMBER IS GREATER OR EQUAL 8"
    jmp end_if
    
    if3:
    printn "THE NUMBER IS GREATER OR EQUAL 6"
    jmp end_if
    
    if4:
    printn "THE NUMBER IS GREATER OR EQUAL 4"
    jmp end_if
    
    if5:
    printn "THE NUMBER IS GREATER OR EQUAL 2"
    jmp end_if
    
    else:
    printn "THE NUMBER IS less than 2"
    jmp end_if
    
    
    end_if:
    
    mov ah, 4ch
    int 21h
    main endp
end main