.model small
.stack 100h
.data
  str db 'Enter number1: $'
  str1 db 'Enter number2: $'
  
.code

main proc
    
    mov ax, @data
    mov ds, ax
    
    mov ah, 09h
    lea dx, str
    int 21h
    
    mov ah, 01
    int 21h
    
    mov bl,al
    
    mov ah,01
    int 21h
    
    mov cl,al
    
    
    mov ah, 02
    mov al, dl
    int 21h
    
    
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main
