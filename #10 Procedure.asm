.Model Small
.Stack 100h
.Data
    str db "Hello World$"
.Code
    main proc 
        Mov Ax, @Data
        Mov Ds, Ax
        
        call print 
        call newline
        call print  
        call newline
        call print
        ret
    main endp
    
    print proc
        Mov Ah, 09
        lea Dx, str
        int 21h 
        ret
    print endp
    
    newline proc
        Mov Ah, 02
        Mov Dl, 10
        int 21h
        Mov Dl, 13
        int 21h      
        ret
    newline endp
end main