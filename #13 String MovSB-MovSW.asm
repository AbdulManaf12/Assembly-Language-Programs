;MovSb --> it Copies one string contents to another
           ; we use for this SI and DI to work with them and it will read at a time single bit
.Model Small
.Stack 100h 
.Data
    str1 db 'Hello World$'
    str2 db 10 dup('$')
.Code 
main proc  
    Mov Ax, @Data
    Mov Ds, Ax 
    Mov Es, Ax
    
    Mov Ah, 09
    Mov Dl, offset str1
    int 21h
    
    lea Si, str1
    lea Di, str2
    
    MovSB   ; it copies single bit
    MovSW   ; it copies double bit 
    
    Mov Cx, 5   ; Set Number of bits
    REP MovSB   ; Applying loop which set number of bits.
    
    Mov Ah, 09
    Mov Dl, offset str2
    int 21h
    
main endp    