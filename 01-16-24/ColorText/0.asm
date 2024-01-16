.model small
.stack
.code

START:

    ; Link to tutorial video: https://youtu.be/KVGLlRlQ7kM?si=dkmAil5XBVDbVJ6q

    ; Adding a background and foreground color 
    ; mov ah, 09h ; setting text mode color attributes
    ; mov bl, 3Eh ; 3 is for aqua background and E is for bright yellow foreground
    ; mov bl, 1Eh ; COLOR GREEN in cmd for color combinations
    ; mov cx, 5 ; setting the color for character, number is the amount of characters
    ; int 10H ; applies colors to the next character printed on the screen
    
    ; Writing a I <3 U 
    
    ; I
    ; Black background with yellow text
    mov ah, 09h
    mov bl, 0Eh
    mov cx, 1
    int 10H
    
    mov ah, 2
    mov dl, 49h
    int 21H
    
    ; Space
    ; Black baground
    mov ah, 09h
    mov bl, 0h
    mov cx, 1
    int 10H 
    
    mov ah, 2
    mov dl, 20h
    int 21H
    
    ; Heart emoji
    ; Red blinking hear
    mov ah, 09h
    mov bl, 8Ch
    mov cx, 1
    int 10H
    
    mov ah, 2
    mov dl, 03h
    int 21H
    
    ; Another space
    ; Black background
    mov ah, 09h
    mov bl, 0h
    mov cx, 1
    int 10H
    
    mov ah, 2
    mov dl, 20h
    int 21H
    
    ; U
    ; black background and yellow text
    mov ah, 09h
    mov bl, 0Eh
    mov cx, 1
    int 10H
    
    mov ah, 2
    mov dl, 55h
    int 21H
    
    int 27H ; for terminating the program

END START