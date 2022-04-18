include 'EMU8086.INC'
.model small
.stack 100h
.data

.code
main proc
    
    call function_name
    printn "I am the main function"
    mov ah, 4ch
    int 21h
    main endp
    function_name proc
        printn "hello world"
        printn "hello I am a function"
        
        
        ret 
    function_name endp
    
end main