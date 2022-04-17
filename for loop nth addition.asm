include 'EMU8086.INC'
.model small
.stack 100h
.data
    n db ?
    sum db 0
.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    
    printn "enter n"
    
    mov ah,1
    int 21h
    sub al, 48
    mov n, al
    
    
    printn
    
    mov bl, 1 ; int i = 0
    
    top:
    cmp bl, n;compare
    jg exit_loop ;bl <= n
    add sum, bl  ;sum = sum+bl
    inc bl       ;bl++
    jmp top
    
    exit_loop:
    print "The sum is "
    
    mov ah,2
    mov dl, sum
    int 21h
    
    
    
    
    mov ah, 4ch
    int 21h
    main endp
end main