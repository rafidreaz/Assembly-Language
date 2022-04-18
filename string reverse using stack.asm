include 'EMU8086.INC'
.model small
.stack 100h
.data

.code
main proc
    
    print "Enter: "
    
    mov ah,1
    
    xor cx , cx; used as a counter
    
    input:
        int 21h
        cmp al, 0dh;checks if input is enter
        je exit_input
        push ax
        inc cx
        jmp input
    exit_input:
    
    printn
    print "output: "
    mov ah ,2
    output:
        pop dx
        int 21h
    loop output
    
    
    
    
    mov ah, 4ch
    int 21h
    main endp
end main