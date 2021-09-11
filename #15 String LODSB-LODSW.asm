.Model Small
.Stack 100h
.Data 
    str db 'Hello World$'
.Code
main proc
    Mov Ax, @Data
    Mov Ds, Ax
    Mov Es, Ax
    
    lea Si, str ; Set Source Index
    LodSb       ; Mov SI index character into Al 
    
    Mov Ah, 02
    Mov Dl, Al
    int 21h
    
main endp