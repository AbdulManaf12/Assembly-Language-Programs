.Model Small
.Stack 100h
.Data
    str db "Hello$"
.Code
main proc
    Mov Ax, @Data
    Mov Ds, Ax
    Mov Es, Ax
    
    Mov Ah, 09
    lea Dx, str
    int 21h
    
    lea DI, str   ; Set Str base address into Destionation index
    Mov Al, 'K'  ; Set Al = 'K'
    StoSb       ; Store Single Byte from Al to Str
    
    Mov Ah, 09
    lea Dx, str
    int 21h
main endp