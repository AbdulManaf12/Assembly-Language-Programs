.model small
.stack 100h
.data
tmp db '1$'
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov cx, 5
    
    loop0:
    
    mov bx,cx
    mov cx, 5
    
    loop1:
    mov ah,02
    mov dl,tmp
    int 21h
    
    inc tmp
    inc tmp
    
    loop loop1
    
    mov ah,02
    mov dl,0dh
    int 21h
    
    mov dl,0ah
    int 21h
    
    mov cx,bx
    mov tmp,'1'
    loop loop0
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main