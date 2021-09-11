; String Example
.Model Small
.Stack 100h
.Data
    str db "Hello World$"
.Code
    main proc  
        Mov AX, @Data
        Mov DS, AX
        
        Mov Ah, 09
        lea DX, str
        int 21h 
        Mov AH, 02   
        Mov DL, 10
        int 21h 
        Mov DL, 13
        int 21h   
        Mov AH, 09 
        lea DX, str
        int 21h    
    main endp