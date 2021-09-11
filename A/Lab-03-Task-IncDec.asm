.model small
.stack 100h
.code
    main proc
        
       
       mov ah, 01h
       int 21h
       
       mov bl,al
       
       
       mov ah, 02h
       mov dl, 0dh
       int 21h
       
       mov ah, 02h
       mov dl, 0ah
       int 21h
       
       mov ah, 02
       mov dl,bl
       int 21h
       
        
        
       mov ah,4ch
       int 21h
        
        main endp
    end