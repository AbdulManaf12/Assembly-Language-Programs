.model small
.stack 100h
.data
 str db "This is my first string$"
 str1 db "This is second string$"
.code

    main proc
        
        mov ax, @data
        mov ds, ax
        
        mov ah, 09
        lea dx,str
        int 21h
        
        
        mov ah, 02h
        mov dl, 0ah
        int 21h
        
        mov ah, 02h
        mov dl, 0dh
        int 21h
        
        
        mov ah, 09
        lea dx,str1
        int 21h
        
        
        
        mov ah, 4ch
        int 21h
        
        main endp
    end main