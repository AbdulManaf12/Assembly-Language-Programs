.Model Small

print macro
     Mov Ah, 09
     lea Dx, str
     int 21h 
     endm
newline macro
    Mov Ah,02
    Mov Dl, 10
    int 21h
    Mov Dl, 13
    int 21h
    endm
.Stack 100h   
.Data 
    str db "Hello World$"
.Code

main proc
    Mov Ax, @Data
    Mov Ds, Ax
    
    print
    newline
    print
    newline
    print 
main endp       
