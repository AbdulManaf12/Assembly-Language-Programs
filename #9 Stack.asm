.Model Small
.Stack 100h
.Data
    count dw 0
.Code
main proc
    Mov Ax, @Data
    Mov Ds, Ax
                               
    Sub Cx, Cx
    Mov Cx, 10
    
    loop1:
       Mov Ah, 01
       int 21h
       
       cmp Al, 13
       je exit
       
       push Ax
       inc count
    loop loop1  
        
    exit:   
        Mov Ah, 02
        Mov Dl, 10
        int 21h
        Mov Dl, 13
        int 21h
        Mov Cx, count
        
        loop2:    
           Pop Ax
           Mov Ah, 02
           Mov Dl, AL
           int 21h
        loop loop2
main endp