.Model Small
.Stack 100h

.Code 
main proc
    Sub cx, cx 
    Mov cl, 10
    Mov Ah, 02    
    
    A:  
        Mov Bl, cl
        Mov cl, 26
        Mov Dl, 'A'
        B:        
            int 21h
            inc dl
        loop B    
      
        Mov dl,10
        int 21h
        Mov dl,13
        int 21h
        Mov cl, Bl
    loop A   
main endp