include 'EMU8086.INC'
.model small
.stack 100h
.data
.code
    n db ?
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
    sub al, 48
    mov n, al
    
    mov bh,1;int i =1
    printn
    mov ah,2
    mov dl,'*'
    
    mov ch, n
    loop1:
        cmp bh,n
        jg loop1_exit
        mov bl, 1;int j =1
        loop2:
            
            cmp bl,ch
            jg loop2_exit
            int 21h
            inc bl; j++
            jmp loop2
        loop2_exit:
        printn
        inc bh;i++
        dec ch
        jmp loop1
    loop1_exit:
    
    mov ah, 4ch
    int 21h
    main endp
end main