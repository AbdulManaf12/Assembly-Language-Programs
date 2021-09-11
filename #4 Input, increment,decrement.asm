.Model Small
.Stack 100h
.Data    
    str1 DB "Enter A value: $"
    str2 DB "Enter B value: $"
    str3 DB "Sum is: $"
         
.Code      
main proc    
    Mov AX, @Data
    Mov DS, AX
        
    Mov Ah, 09
    lea DX, str1
    int 21h
    
    Mov Ah,01  
    int 21h 
    
    Mov Ah,02 
    Mov BL, Al
    ;int 21h
     
    Mov DL, 10
    int 21h        ;mov dl, 0dh for next and backspace
    Mov DL, 13
    int 21h
    
   
    Mov Ah, 09
    lea DX, str2
    int 21h         
    
    Mov Ah,01  
    int 21h
     
    Mov Ah,02 
    Mov BH, Al
    ;int 21h
    
    Mov DL, 10
    int 21h
    Mov DL, 13
    int 21h
    
    Mov Ah, 09
    lea DX, str3
    int 21h
	
    Mov Ah,02 
    Mov DL, BL
    int 21h	
   
    Mov Ah,02 
    Mov DL, '+' 
    int 21h

    Mov Ah,02 
    Mov DL, BH
    int 21h

    Mov Ah,02 
    Mov DL, '='
    int 21h             
    
    
main endp