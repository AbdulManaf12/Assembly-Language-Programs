.model small
.stack 100h
.data
    str db 'Enter a string :$'
.code
main proc 
    
    mov ax, @data
    mov ds, ax
        
        mov ah,09h
        lea dx,str
        int 21h
        
        
        mov ah, 02h
        mov dl, 0ah
        int 21h
        
        mov ah, 02h
        mov dl, 0dh
        int 21h
        
        
        mov ah,01
        int 21h
        
        mov ah, 02h
        mov dl, 0ah
        int 21h 
        
        
        mov ah,02
        lea dl,al
        int 21h
        
    
    
    
    mov ah, 4ch
    int 21h
    
    main endp 
end main

     