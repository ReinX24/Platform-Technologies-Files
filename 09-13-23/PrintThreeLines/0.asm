; Personal challenge: Print three lines on top of each other in assembly
.model small
.stack
.data
    MsgOne db "I am currently programming in Assembly", 13, 10, "$"
    MsgTwo db "It is a low level language used to converse with the computer", 13, 10, "$"
    MsgThree db "Assembly is often used for Systems Programming and such", 13, 10, "$"
    
    TripleMsg db "With Love,", 13, 10, "Rein", 13, 10, "Solis$"
.code
BEGIN:
    ; Printing first message
    mov dx, OFFSET MsgOne
    mov ax, SEG MsgOne
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Printing second message
    mov dx, OFFSET MsgTwo
    mov ax, SEG MsgTwo
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Printing third message
    mov dx, OFFSET MsgThree
    mov ax, SEG MsgThree
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Printing a String that breaks into 3 lines
    mov dx, OFFSET TripleMsg
    mov ax, SEG TripleMsg
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Terminating our program
    mov ah, 4CH
    int 21H
    
END BEGIN