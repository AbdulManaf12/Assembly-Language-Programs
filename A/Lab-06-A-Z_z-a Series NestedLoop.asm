.model small
.stack 100h
.data
tmp db 'z$'
tmp1 db 'A$'

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    
    mov cx,5
    
    loop1:
    mov bx, cx
    mov cx,26
    
    loop2:
    mov ah,02
    mov dl,tmp1
    int 21h
    inc tmp1
    loop loop2
    
    
    mov ah,02
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    
    mov dx,cx
    mov cx,26
    
    loop3:
    mov ah,02
    mov dl,tmp
    int 21h
    dec tmp  
    loop loop3
    
    
    mov ah,02
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    
    
    mov cx, dx
    mov cx,bx
    mov tmp1,'A'
    mov tmp,'z'
    loop loop1
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main