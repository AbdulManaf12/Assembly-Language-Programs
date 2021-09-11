.model small
.stack 100h
.data
.code
msg db 'Sukkur IBA'
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,02
    mov dl,40 ; value of column 80
    mov dh,12 ; value of row 24/48
    mov bx,0 ;assemby language provides 7 pages and we are selecting to work on 0 zero page
    int 10h
    
    mov ah,02
    mov dl,'A'
    int 21h
    
    
    
    
    mov ah,4ch ;Return to DoS
    int 21h 
    
    main endp
end main