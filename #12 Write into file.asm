; Service Numbers for filing
; 1. 3ch ---->  Create File
; 2. 40h ---->  Write into file
; 3. 3dh ---->  Read from file
; 4. 3eh ---->  Close file

.Model Small
.Stack 100h
.Data
    file db "data.txt", 0
    text db "Hello, I am Abdul Manaf .... !:)"   
    text_size db 32 
    handle dw ?
.Code
main proc
    Mov Ax, @Data
    Mov Ds, Ax
    Mov Es, Ax
    
    Mov Ah, 3ch
    Mov Cx, 0
    lea Dx, file 
    int 21h
    jc error
    Mov handle, Ax
    
    Mov Ah, 40h
    Mov Bx, handle
    Mov Dx, offset text
    Mov Cx, 32
    int 21h
    
    Mov Ah, 3eh
    Mov Bx, handle
    int 21h
    
    error: 
      
    Mov Ah, 4ch
    int 21h   
main endp       
end main