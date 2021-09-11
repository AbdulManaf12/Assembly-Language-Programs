.model small
.stack 100h
.data
str db 'Sukkur IBA University $'
tmp db '0$'
tmp1 db '1$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    sub cx, cx
    mov cl, tmp
    
    l1:
    mov ah,02
    mov dl,cl ; value of column 80
    mov dh,12 ; value of row 24/48
    mov bx,0 ;assemby language provides 7 pages and we are selecting to work on 0 zero page
    int 10h
    
    
    mov ah,09
    lea dx,str
    int 21h
    
    
    loop l1
    
    
    mov cl, tmp
    l2:
    mov ah,02
    mov dl,cl ; value of column 80
    mov dh,12 ; value of row 24/48
    mov bx,0 ;assemby language provides 7 pages and we are selecting to work on 0 zero page
    int 10h
    
    
    mov ah,09
    lea dx,str
    int 21h
    
    
    loop l2
    
    

    
    
    mov ah,4ch
    int 21h
    
    main endp
end main