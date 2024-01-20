.model small
.stack
.data
    ; Creating 2 String variables with line breaks at the end, 13, 10, signifies a line break within the String
    NameOne db "Christopher Alesund", 13, 10, "$"
    NameTwo db "Tarik Celik", 13, 10, "$"

    ExampleOne db "Rein 21 - ITE - 01", 13, 10, "Nathaniel 21 - ITE - 01", 13, 10, "$" ; 13 is a carriage return and 10 starts text to a new line
    ExampleTwo db "John Carmack IdSoftware - DOOM", 0ah, "Richard Stallman GNU-LINUX$" ; 0ah breaks the String into a new line
.code
BEGIN:
    
    mov ah, 09h
    mov bl, 3 ; color, eg aqua in this case
    mov cx, 20 ; number of chars
    int 10h

    ; Printing two lines above each other
    mov dx, OFFSET NameOne
    mov ax, SEG NameOne
    mov ds, ax
    mov ah, 9D
    int 21H
    
    mov ah, 09h
    mov bl, 9 ; color, eg bright blue in this case
    mov cx, 11 ; number of chars
    int 10h
    
    mov dx, OFFSET NameTwo
    mov ax, SEG NameTwo
    mov ds, ax
    mov ah, 9D
    int 21H

    ; Printing a String in assembly with a line break between the Strings
    mov dx, OFFSET ExampleOne
    mov ax, SEG ExampleOne
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Another example
    mov dx, OFFSET ExampleTwo
    mov ax, SEG ExampleTwo
    mov ds, ax
    mov ah, 9D
    int 21H    
    
    ; Terminating our program
    mov ah, 4CH
    int 21H
    
END BEGIN