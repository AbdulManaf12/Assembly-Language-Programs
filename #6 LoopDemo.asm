.Model Small
.Stack 100h
.Code

main proc
    Mov Ah, 02 
    jmp C
    
    A:
        Mov Dl, 'A'
        int 21h
        
        Mov Dl, 10
        int 21h
        
        Mov Dl, 13
        int 21h   
        jmp exit
    B: 
        Mov Dl, 'B'
        int 21h
        
        Mov Dl, 10
        int 21h
        
        Mov Dl, 13
        int 21h   
        jmp A
    C:
        Mov Dl, 'C'
        int 21h 
        
        Mov Dl, 10
        int 21h
        
        Mov Dl, 13
        int 21h
        jmp B
           
    exit:
        Mov Ah,4ch 
        int 21h   
main endp