.model small
.stack 100h
.data
    num dw 1
.code
    main proc
        
        mov ax, @data
        mov ds, ax
       
          mov cl,4
        
        loop2:
        
            mov bh,cl
            mov dx,num
            mov cx,dx
            mov bl,'A'
                
                loop1:
        
                    mov ah,02
                    mov dl,bl                
                    int 21h
     
                    inc bl    
        
                loop loop1
                  
            inc num
            
            mov ah,02
            mov dl,0dh    
            int 21h
            mov dl, 0ah   
            int 21h
           
            mov cl,bh
             
        loop loop2
        
        
        
        
        
        mov cl,3
        loop3:
        
            mov bh,cl
            mov bl,'1'
                
                loop4:
        
            
                    mov ah,02
                    mov dl,bl                
                    int 21h
     
                    inc bl
                        
        
                loop loop4        
            
            mov ah,02
            mov dl,0dh 
            int 21h
            mov dl, 0ah 
            int 21h
        
            mov cl,bh
             
        loop loop3





        mov ah, 4ch
        int 21h
        
        main endp
    end main