.Model Small
.Stack 100h
.Data 
    str1 db 'Hello World bro$'
    str2 db 'Dear Hello World$'
.Code
main proc
    Mov Ax, @Data
    Mov Ds, Ax
    Mov Es, Ax
    
    lea SI, str1
    lea DI, str2
    
    CMPSB
    
main endp