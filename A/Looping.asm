;Looping in Assembly

.model small
.stack 100h
.data
s1 db 'Pakistan Zindabad$'
.code
main proc
        
        mov ax, @data
        mov ds, ax
        
        
        mov cx, 10
        
        l1:
       
        
        mov ah, 09
        lea dx, s1
        int 21h
        
       mov ah ,02
       mov dl, 0dh
       int 21h
       mov dl, 0ah
       int 21h
        
        loop l1
     
     
     
     mov ah, 4ch
     int 21h
     
     main endp
end main