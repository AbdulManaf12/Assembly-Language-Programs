.Model Small
.Stack 100h

.Code
main proc
    Sub Cx,Cx               
    Mov Cl, 10
    
    Mov Ah, 01
    A:
        int 21h
        cmp Al, 13
        je exit
    loop A  
    
    exit:
        Mov Ah, 4ch
        int 21h
main endp