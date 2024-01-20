.model small
.stack
.data
LineOne db "IN A HIGH-TECH SCHOOL", 13, 10, "$"
LineTwo db "THAT'S WHERE WE'VE BEEN HERE IN DAGUPAN", 13, 10, "$" 
LineThree db "HEY! WE WON'T FORGET", 13, 10, "$" 
LineFour db "OUR FRIENDS ARE HERE; OUR MENTORS TOO", 13, 10, "$" 
LineFive db "SO RALLY ON, LET'S GET THERE SOON", 13, 10, "$"
LineSix db "OUR DEAR SCHOOL WILL WELCOME US BACK", 13, 10, "$" 
LineSeven db "WE'LL NOT REGRET, MY FRIENDS", 13, 10, "$" 
LineEight db "OUR SCHOOL IS YET THE BEST", 13, 10, "$"
LineNine db "WE'RE SURE OF THIS AND MORE", 13, 10, 13, 10, 13, 10, "$"
LineTen db "RALLY BEHIND ALUMNI", 13, 10, "$" 
LineEleven db "RALLY BEHIND OUR DEAR FRIENDS", 13, 10, "$"
LineTwelve db "LET'S NOT FORGET COMPUTRONIX", 13, 10, "$" 
LineThirteen db "COLEGIO DE DAGUPAN AND", 13, 10, "$" 
LineFourteen db "COME SHOUT-OUT LOUD UDDIANS", 13, 10, "$" 
LineFifteen db "UNIVERSIDAD DE DAGUPAN NOW", 13, 10, "$"
LineSixteen db "PLACE OUR SCHOOL, IN OUR HEARTS", 13, 10, "$" 
LineSeventeen db "AND THEN, FOREVER LOVE IT TOO", 13, 10, "$"
.code
BEGIN:
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 21 ; number of chars
    int 10h ; interrupts the BIOS and applies effects

    ; Printing LineOne
    mov dx, OFFSET LineOne
    mov ax, SEG LineOne
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 39 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineTwo
    mov dx, OFFSET LineTwo
    mov ax, SEG LineTwo
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 20 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineThree
    mov dx, OFFSET LineThree
    mov ax, SEG LineThree
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 37 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineFour
    mov dx, OFFSET LineFour
    mov ax, SEG LineFour
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 33 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineFive
    mov dx, OFFSET LineFive
    mov ax, SEG LineFive
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 36 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineSix
    mov dx, OFFSET LineSix
    mov ax, SEG LineSix
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 28 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineSeven
    mov dx, OFFSET LineSeven
    mov ax, SEG LineSeven
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 26 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineEight
    mov dx, OFFSET LineEight
    mov ax, SEG LineEight
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 27 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineNine
    mov dx, OFFSET LineNine
    mov ax, SEG LineNine
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 19 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineTen
    mov dx, OFFSET LineTen
    mov ax, SEG LineTen
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 29 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineEleven
    mov dx, OFFSET LineEleven
    mov ax, SEG LineEleven
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 28 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineTwelve
    mov dx, OFFSET LineTwelve
    mov ax, SEG LineTwelve
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 22 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineThirteen
    mov dx, OFFSET LineThirteen
    mov ax, SEG LineThirteen
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 27 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineFourteen
    mov dx, OFFSET LineFourteen
    mov ax, SEG LineFourteen
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 26 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineFifteen
    mov dx, OFFSET LineFifteen
    mov ax, SEG LineFifteen
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 31 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineSixteen
    mov dx, OFFSET LineSixteen
    mov ax, SEG LineSixteen
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 2 ; color, eg green in this case
    mov cx, 29 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    ; Printing LineSeventeen
    mov dx, OFFSET LineSeventeen
    mov ax, SEG LineSeventeen
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Terminating our program
    mov ah, 4CH
    int 21H

END BEGIN