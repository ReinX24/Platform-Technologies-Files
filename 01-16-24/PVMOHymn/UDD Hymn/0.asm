.model small
.stack
.data
PartOne db "IN A HIGH-TECH SCHOOL", 13, 10, "THAT'S WHERE WE'VE BEEN HERE IN DAGUPAN", 13, 10, "HEY! WE WON'T FORGET", 13, 10, "OUR FRIENDS ARE HERE; OUR MENTORS TOO$" 
PartTwo db 13, 10, "SO RALLY ON, LET'S GET THERE SOON", 13, 10, "OUR DEAR SCHOOL WILL WELCOME US BACK", 13, 10, "WE'LL NOT REGRET, MY FRIENDS", 13, 10, "OUR SCHOOL IS YET THE BEST$"
PartThree db 13, 10, "WE'RE SURE OF THIS AND MORE", 13, 10, "$"
PartFour db 13, 10, 13, 10, "RALLY BEHIND ALUMNI", 13, 10, "RALLY BEHIND OUR DEAR FRIENDS", 13, 10, "LET'S NOT FORGET COMPUTRONIX", 13, 10, "COLEGIO DE DAGUPAN AND", 13, 10, "COME SHOUT-OUT LOUD UDDIANS", 13, 10, "UNIVERSIDAD DE DAGUPAN NOW", 13, 10, "PLACE OUR SCHOOL, IN OUR HEARTS", 13, 10, "AND THEN, FOREVER LOVE IT TOO", 13, 10, "$"
.code
BEGIN:
    
    ; Printing PartOne
    mov dx, OFFSET PartOne
    mov ax, SEG PartOne
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Printing PartTwo
    mov dx, OFFSET PartTwo
    mov ax, SEG PartTwo
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Printing PartThree
    mov dx, OFFSET PartThree
    mov ax, SEG PartThree
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Printing PartFour
    mov dx, OFFSET PartFour
    mov ax, SEG PartFour
    mov ds, ax
    mov ah, 9D
    int 21H

END BEGIN