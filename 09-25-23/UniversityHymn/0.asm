.model small
.stack
.data
ParagraphOne db 0dh, 0ah, "IN A HIGH-TECH SCHOOL", 0dh, 0ah, "THAT'S WHERE WE'VE BEEN HERE IN DAGUPAN", 0dh, 0ah, "HEY! WE WON'T FORGET", 0dh, 0ah, "OUR FRIENDS ARE HERE; OUR MENTORS TOO", 0dh, 0ah, "SO RALLY ON, LET'S GET THERE SOON", 0dh, 0ah, "OUR DEAR SCHOOL WILL WELCOME US BACK", 0dh, 0ah, "WE'LL NOT REGRET, MY FRIENDS", 0dh, 0ah, "OUR SCHOOL IS YET THE BEST", 0dh, 0ah, "WE'RE SURE OF THIS AND MORE$"
ParagraphTwo db 0dh, 0ah, 0ah, "RALLY BEHIND ALUMNI", 0dh, 0ah, "RALLY BEHIND OUR DEAR FRIENDS", 0dh, 0ah, "LET'S NOT FORGET COMPUTRONIX", 0dh, 0ah, "COLEGIO DE DAGUPAN AND", 0dh, 0ah, "COME SHOUT-OUT LOUD UDDIANS", 0dh, 0ah, "UNIVERSIDAD DE DAGUPAN NOW", 0dh, 0ah, "PLACE OUR SCHOOL, IN OUR HEARTS", 0dh, 0ah, "AND THEN, FOREVER LOVE IT TOO$"
.code
BEGIN:

    ; Loading variables at .data into memory
    mov ax, @DATA
    mov ds, ax
    mov es, ax
    
    ; Printing ParagraphOne
    mov ah, 09H
    LEA dx, ParagraphOne
    int 21H
    
    ; Printing ParagraphTwo
    mov ah, 09H
    LEA dx, ParagraphTwo
    int 21H

END BEGIN