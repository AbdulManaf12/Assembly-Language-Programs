;Looping A-Z alphabets

.model small
.stack 100h
.data
str db 'a$'
strr db 'A$'
str1 db 'Small Alphabets$'
str2 db 'Large Alphabets$'
.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    
    mov ah,09
    lea dx, str1
    int 21h
    
    mov ah, 02
    mov dl, 0ah
    int 21h
    
    mov ah, 02
    mov dl, 0dh
    int 21h
    
       
    
    mov cx, 26
    
    l1:
    
    mov ah,02
    mov dl, str
    int 21h
   
    inc str
     
    loop l1
    
      
    
    
    mov ah, 4ch
    int 21h
    
    main endp
end main