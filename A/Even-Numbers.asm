;Looping A-Z alphabets

.model small
.stack 100h
.data
str db '0$'
.code
main proc
    
    mov ax, @data
    mov ds, ax
        
       
    
    mov cx, 5
    
    l1:
    
    mov ah,02
    mov dl, str
    int 21h
   
    inc str
    inc str
     
    loop l1
    
      
    
    mov ah, 4ch
    int 21h
    
    main endp
end main