.model small
.stack
.data
    MyMessage db "Hello, World!$"
    AnotherMessage db 0ah, "I an programming in assembly!$"
.code
BEGIN:

    ; Printing MyMessage
    mov dx, OFFSET MyMessage
    mov ax, SEG MyMessage
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Printing AnotherMessage
    mov dx, OFFSET AnotherMessage
    mov ax, SEG AnotherMessage
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Terminating the program
    mov ah, 4CH
    int 21H

END BEGIN
