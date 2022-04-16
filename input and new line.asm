.model small
.stack 100h
.data
    num1 db 49
    char db 'A'
    msg db "my name is Rafid $"
.code
main proc
    mov ax, @data
    mov ds, ax   ;imports everything from .data
    
    mov ah,2     ;will print num1 value
    mov dl, num1
    int 21h
    ; code for new line
    mov ah, 2;not always needed, mov ah,2 is used for printing
    mov dl,0ah
    int 21h
    mov dl, 0dh
    int 21h
    ; end code for new line
    
    
    
    mov ah,2     ;will print char value
    mov dl, char
    int 21h
    
    mov dl,0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    mov ah,9
    lea dx , msg
    int 21h
    
    
    mov ah, 2
    mov dl,0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    
    
    mov ah,4ch
    int 21h
    main endp
end main