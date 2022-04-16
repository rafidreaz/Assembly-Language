;unconditional jump
; jmp keyword

;conditional jump
;cmp keyword
;cmp compared to, compared with
; cmp bx, cx;meaing is bx>or <cx or ==

;je/jz     jump equal or jump                        zf
;jne/jnz   jump not equal or jump not zero           zf
;jg/jnle   jump greater or jump not lex              of,sf,zf
;jge/jnl   jump greater/equal or jump not less       of,sf
;jl/jnge   jump less or jump not greater/equal       of,sf 
;jle/jng   jump less/equal or jump not greater       of, sf, zf

;je/jz     jump equal or jump zero                   zf
;jne/jnz   jump not qual or jump not zero            zf
;ja/jnbe   jump above or jump not below/ equal       cf, zf
;jae/jnb   jump above/equal or jump not above        cf
;jb/jnae  jump below or jump not above/equal        cf
;jbe/jna   jump below/equal or jump not above        af, cf    

;jxcz      jump if cx is zero none
;jc        jump if carry                             cf
;jnc       jump if no carry                          cf
;jo        jump if overflow                          of
;jno       jump if no overflow                       of
;jp/jpe    jump parity or jump parity even           pf
;jnp/jpo   jump no parity or jump parity odd         pf
;js        jump sign (negative value)                sf
;jns       jump no sigh(positve value)               sf





include 'emu8086.inc'
.model small
.stack 100h
.data   
.code
main proc
    inc bx; bx=bx+1
    dec bx; bx=bx-1 
    
    mov cx, 5 ;given
    mov bx, 0 ;initilize i = 0
    ;for i=0, i<n i++
    start:
    cmp bx, cx ;condition check    i<n
    je last
    printn "here"
    inc bx
    jne start
    
    
    last:
    printn "the program is ended"
    
    
    mov ah,4ch
    int 21h
    main endp
end main