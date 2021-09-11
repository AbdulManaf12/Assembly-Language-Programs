.model small
.stack 100h
.data
str db 'My Bio Data$'
str1 db 'My name is: Khair Muhammad$'
religion db 'Religion: Islam$'
nationality db 'Nationality: Pakistani$'
uni db 'University: Sukkur IBA Univeristy$'
cms db 'CMS-ID is: 023-16-0009$'
sem db 'Semester: 8th Semester$' 
    
.code

    main proc
        
        mov ax, @data         ;Translation (memory to memory is not allowed)
        mov ds, ax            ;A=B
                              ;mov Ax,B
                              ;mov A,Ax
        mov ah, 09            
        lea dx,str
        int 21h
        
        
        mov ah, 02h           ;Translate A=B+C
        mov dl, 0ah           ;mov Bx,C
        int 21h               ;add Bx,B
                              ;mov A,Bx
        mov ah, 02h
        mov dl, 0dh
        int 21h
        
                              ;Translate C=A*B
        mov ah, 09            ;mov Bx,B
        lea dx,str1           ;add Bx,A
        int 21h               ;add Bx,A
                              ;mov C,Bx
        
        mov ah, 02h
        mov dl, 0ah
        int 21h
        
        mov ah, 02h
        mov dl, 0dh
        int 21h
        
        
        mov ah, 09
        lea dx,uni
        int 21h        
        
        
        mov ah, 02h
        mov dl, 0ah
        int 21h
        
        mov ah, 02h
        mov dl, 0dh
        int 21h
        
        
        mov ah, 09
        lea dx,sem
        int 21h  
        
        
        mov ah, 02h
        mov dl, 0ah
        int 21h
        
        mov ah, 02h
        mov dl, 0dh
        int 21h
        
        
        mov ah, 09
        lea dx,cms
        int 21h   
        
        
        mov ah, 02h
        mov dl, 0ah
        int 21h
        
        mov ah, 02h
        mov dl, 0dh
        int 21h
        
        
        mov ah, 09
        lea dx,nationality
        int 21h
        
        
        mov ah, 02h
        mov dl, 0ah
        int 21h
        
        mov ah, 02h
        mov dl, 0dh
        int 21h
        
        
        mov ah, 09
        lea dx,religion
        int 21h
        
        
        
        mov ah, 4ch
        int 21h
        
        main endp
    end main
	