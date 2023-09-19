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
    
    ; Line feed, break into a new line
    mov ah, 02h
    mov dl, 0ah
    int 21H
    
    ; Printing the letter A using hex
    mov ah, 02h ; for writing characters
    mov dl, 41h ; printing the letter A
    int 21H ; invokes the command line and prints the character
    
    ; Printing the letter B
    mov ah, 02h
    mov dl, 42h
    int 21H
    
    ; Printing the letter C
    mov ah, 02h
    mov dl, 43h
    int 21H
    
    ; Printing a space
    mov ah, 02h
    mov dl, 20h
    int 21H
    
    ; Printing the number 1
    mov ah, 02h
    mov dl, 31h
    int 21H
    
    ; Printing a shaded smiley face
    mov ah, 02h
    mov dl, 02h
    int 21H
    
    ; Breaking into a new line, Line Feed in ASCII table
    mov ah, 02h
    mov dl, 0ah
    int 21H
    
    ; Printing a % symbol
    mov ah, 02h
    mov dl, 25h
    int 21H
    
    ; Printing a smiley face emoji, unshaded smiley
    mov ah, 02h
    mov dl, 01h
    int 21H
    
    ; Shaded smiley
    mov ah, 02h
    mov dl, 02h
    int 21H
    
    ; Shaded heart
    mov ah, 02h
    mov dl, 03h
    int 21H
    
    ; Shaded diamond
    mov ah, 02h
    mov dl, 04h
    int 21H
    
    ; Clover / club
    mov ah, 02h
    mov dl, 05h
    int 21H
    
    ; Making our character blink
    ; Go into a new line
    mov ah, 02h
    mov dl, 0ah
    int 21H
    
    ; Making a heart emoji blink
    ; Code for making the heart emoji blink
    mov AH, 09h
    mov bl, 8Eh ; 8 means that it blinks and E is the color yellow
    mov cx, 2
    int 10H
    ; Heart emoji
    mov ah, 02h
    mov dl, 03h
    int 21H
    
    mov ah, 02h
    mov dl, 03h
    int 21H
    
    int 27H ; for terminating the program

END START