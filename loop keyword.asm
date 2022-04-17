include 'EMU8086.INC'
.model small
.stack 100h
.data
.code
main proc
    ;for (int i = n; i>=0;i--)
    mov cx, 10; will run the loop for 10 times
    
    top:
    printn "loop is running"
    
    loop top;i--;i>=0
    printn "loop has ended "
    mov ah, 4ch
    int 21h
    main endp
end main
