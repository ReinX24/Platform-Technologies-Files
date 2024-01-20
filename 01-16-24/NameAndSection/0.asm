.model small
.stack 
.data
    myName db "Rein Aldwin E. Solis", 13, 10, "$"
    mySection db "21-ITE-01", 13, 10, "$"
.code
BEGIN:

    ; Printing Name and Section on top of each other.
    mov dx, OFFSET myName
    mov ax, SEG myName
    mov ds, ax
    mov ah, 9D
    int 21H
    
    mov dx, OFFSET mySection
    mov ax, SEG mySection
    mov ds, ax
    mov ah, 9D
    int 21H
    
    mov ah, 4CH
    int 21H

END BEGIN