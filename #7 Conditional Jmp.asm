.Model Small
.Stack 100h
.Data
    strA db "You enter A ....! $"  
    strB db "You enter B ....! $"
    strC db "You enter C ....! $"
    strD db "You enter D ....! $" 
    invaid1 db "wrong....! $"
.Code
main proc    
    Mov Ax, @Data
    Mov Ds, Ax
      
    Mov Ah, 01
    int 21h
    cmp al, 'A'
    je A  
    cmp al, 'B'
    je B
    cmp al, 'C'
    je C
    cmp al, 'D'
    je D 
    Mov Ah, 02
    Mov Dl, 10
    int 21h
    Mov Dl, 13
    int 21h
    jmp Inavlid
    
    A: 
        Mov Ah, 09
        lea Dx, strA
        int 21h  
        jmp exit 
    B: 
        Mov Ah, 09
        lea Dx, strB
        int 21h  
        jmp exit
    C: 
        Mov Ah, 09
        lea Dx, strC
        int 21h 
        jmp exit
    D: 
        Mov Ah, 09
        lea Dx, strD
        int 21h 
        jmp exit  
    Inavlid:
         Mov Ah, 09
        lea Dx, invaid1
        int 21h 
    exit:
        Mov Ah, 4ch
        int 21h
main endp