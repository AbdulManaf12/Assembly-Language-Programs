.model small
.stack 100h
.code
    main proc
        
        mov ah, 02     ; Function number for output
        mov dl, 'I'    ; Store the character 
        int 21h
     
        
        mov ah, 02h
        mov dl, 0ah     ; new line
        int 21h 
        
        mov ah, 02h
        mov dl, 0dh    ;Carriage return
        int 21h
        
        mov ah, 02h     ; Function number for output
        mov dl, 'B'    ; Store the character 
        int 21h
        
        mov ah, 02h
        mov dl, 0ah     ; new line
        int 21h 
        
        mov ah, 02h
        mov dl, 0dh    ;Carriage return
        int 21h
        
        
        mov ah, 02
        mov dl, 'A'
        int 21h
        
        mov ah, 02h
        mov dl, 0dh    ;Carriage return
        int 21h
        
        
        mov ah, 4ch    ; Return do DO
        int 21h

        
        
     
     main   endp
    
    end main
                    
                  
