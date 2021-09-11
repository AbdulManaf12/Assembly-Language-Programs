.Model Small
.Stack 100h

.Code   
main proc
    Mov AH, 02
    
    Mov DL, 'I'
    int 21h
    Mov DL, 'B'
    int 21h
    Mov DL, 'A'
    int 21h
    Mov DL, 10
    int 21h 
    Mov DL, 08
    int 21h
    int 21h
    int 21h
    Mov DL, 'S'
    int 21h 
    Mov DL, 'U'
    int 21h
    Mov DL, 'K'
    int 21h
    Mov DL, 'K'
    int 21h   
    Mov DL, 'U'
    int 21h   
    Mov DL, 'R'
    int 21h   
    Mov DL, 10
    int 21h 
    Mov DL, 08
    int 21h
    int 21h
    int 21h  
    int 21h
    int 21h
    int 21h
    Mov DL, 'U'
    int 21h 
    Mov DL, 'N'
    int 21h
    Mov DL, 'I'
    int 21h
    Mov DL, 'V'
    int 21h   
    Mov DL, 'E'
    int 21h   
    Mov DL, 'R'
    int 21h   
    Mov DL, 'S'
    int 21h 
    Mov DL, 'I'
    int 21h
    Mov DL, 'T'
    int 21h
    Mov DL, 'Y'
    int 21h   
main endp