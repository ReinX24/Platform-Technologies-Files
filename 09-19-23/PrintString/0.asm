.model small
.stack
.data
    Message db "Hello, World!", 13, 10, "$"
    AnotherMessage db "I am writing in Turbo Assembly!", 13, 10, "$"
    FinalMessage db "- Rein Solis$"
.code
BEGIN:

    ; Printing Message
    mov dx, OFFSET Message
    mov ax, SEG Message
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Printing AnotherMessage
    mov dx, OFFSET AnotherMessage
    mov ax, SEG AnotherMessage
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Printing FinalMessage
    mov dx, OFFSET FinalMessage
    mov ax, SEG FinalMessage
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Terminating the Program
    mov ah, 4CH
    int 21H

END BEGIN