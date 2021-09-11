.model small
.stack 100h
.data
    var1 db ?
    var2 db ?
    var3 db ?
.code
    main proc
        
        mov ax, @data
        mov ds, ax
        
        
        
       
        
        
           mov ah, 01
           int 21h
           
           mov var1, al
           
           
           mov ah, 01
           int 21h
           
           mov var2, al
           
           
           
           mov ah, 01
           int 21h
           
           mov var3, al
           
           
           mov ah, 02
           mov dl, 0dh
           int 21h
           
           mov dl, 0ah
           int 21h
           
           
           add var1,32
           mov ah, 02
           mov dl,var1
           int 21h
        
        
           sub var2,32
           mov ah, 02
           mov dl,var2
           int 21h
        
           
           add var3,32
           mov ah, 02
           mov dl,var3
           int 21h
        
        
        
        
        
        
        
        
        
        
        
        mov ah, 4ch
        int 21h
        
        main endp
    end main