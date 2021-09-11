.Model Small
.Stack 100h
.Data 
    str db 'Hello World bro$'
.Code
main proc
    Mov Ax, @Data
    Mov Ds, Ax
    Mov Es, Ax
    
    lea SI, str
    Mov Al, 'b'
    
    REPNE ScaSb    
   
    Mov Ah, 02
    Mov Dl, Al
    int 21h
    
main endp