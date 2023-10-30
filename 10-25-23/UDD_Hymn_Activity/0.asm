.model small
.stack
.data
    hymnTitle db 0dh, 0ah, "UDD HYMN$"
    verseOne db 0dh, 0ah, 0ah, "IN A HIGH-TECH SCHOOL", 0dh, 0ah, "THAT'S WHERE WE'VE BEEN HERE IN DAGUPAN", 0dh, 0ah, "HEY! WE WON'T FORGET", 0dh, 0ah, "OUR FRIENDS ARE HERE; OUR MENTORS TOO", 0dh, 0ah, "SO RALLY ON, LET'S GET THERE SOON", 0dh, 0ah, "OUR DEAR SCHOOL WILL WELCOME US BACK", 0dh, 0ah, "WE'LL NOT REGRET, MY FRIENDS", 0dh, 0ah, "OUR SCHOOL IS YET THE BEST", 0dh, 0ah, "WE'RE SURE OF THIS AND MORE$"
    verseTwo db 0dh, 0ah, 0ah, "RALLY BEHIND ALUMNI", 0dh, 0ah, "RALLY BEHIND OUR DEAR FRIENDS", 0dh, 0ah, "LET'S NOT FORGET COMPUTRONIX", 0dh, 0ah, "COLEGIO DE DAGUPAN AND", 0dh, 0ah, "COME SHOUT OUT LOUD UDDIANS", 0dh, 0ah, "UNIVERSIDAD DE DAGUPAN NOW", 0dh, 0ah, "PLACE OUR SCHOOL, IN OUR HEARTS", 0dh, 0ah, "AND THEN, FOREVER LOVE IT TOO$"
    verseTwoEnd db 0dh, 0ah, 0ah, "PLACE OUR SCHOOL, IN OUR HEARTS", 0dh, 0ah, "AND THEN, FOREVER LOVE IT TOO$"
.code
BEGIN:
    mov ax, @DATA
    mov ds, ax
    mov es, ax
    
    mov ah, 00H ; SET VIDEO MODE
    mov al, 11H ; SET WINDOW SIZE
    int 10H ; IMPLEMENT THE CONFIGURATION
    ; Link to video: https://youtu.be/BKtQc3Fr4Os?si=gkWHtQCv2w9eVNm9
    
    mov ah, 09h
    LEA dx, hymnTitle
    int 21H
    
    mov ah, 09h
    LEA dx, verseOne
    int 21H
    
    mov ah, 09h
    LEA dx, verseTwo
    int 21H
    
    mov ah, 09h
    LEA dx, verseTwoEnd
    int 21H
END BEGIN