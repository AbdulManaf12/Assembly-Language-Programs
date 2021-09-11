.MODEL SMALL
.STACK 100h

.Code 
main proc                                   
    
    Mov ah, 02                          
    Mov dl, 'I'                  
    int 21h    
    Mov dl, ' '                  
    int 21h
    Mov dl, 'L'                  
    int 21h 
    Mov dl, 'O'                  
    int 21h    
    Mov dl, 'V'                  
    int 21h
    Mov dl, 'E'                  
    int 21h                             
    Mov dl, ' '                  
    int 21h    
    Mov dl, 'Y'                  
    int 21h
    Mov dl, 'O'                  
    int 21h   
    Mov dl, 'U'                  
    int 21h     
           
                                        
    Mov dl, ' '                  
    int 21h    
    Mov dl, '0'                  
    int 21h
    Mov dl, '3'                  
    int 21h 
    Mov dl, 'O'                  
    int 21h    
    Mov dl, '0'                  
    int 21h
    Mov dl, '3'                  
    int 21h                             
    Mov dl, '1'                  
    int 21h    
    Mov dl, '4'                  
    int 21h
    Mov dl, '1'                  
    int 21h   
    Mov dl, '7'                  
    int 21h    
    Mov dl, '3'                  
    int 21h   
    Mov dl, '6' 
    int 21h
main endp 

;.Data         if we use variables we use Data keyword but if not then don't use this                
;(Mov source, Destination)
; AH is used for service number  
;Format: (Mov ah, "Service-Number") 
; Mov means Move: transfer data 
; Mov work as like equal operator in High level language
;02 is service number (02 for character,09 for String)
; for printing, DL is used
; it returns to dos
;interupt: to get <imedeiate> attention of Microprocessor   
;int is invoking an interupt for I/O
;line09 + line13 = shows to print 'a'                                                                      