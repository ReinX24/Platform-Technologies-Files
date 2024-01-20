.model small
.stack
.data
    UniversityTitle db "Universidad De Dagupan: Philosophy, Vision, Mission, and Objectives", 13, 10, 13, 10, "$"
    
    Philosophy db "Philosophy: The institution believes that through education, man's God given gifts are discovered and developed for his personal fulfillment and community uplift.", 13, 10, 13, 10, "$"
    Vision db "Vision: It envisions to create a community responsive to the challenges of the changing world.", 13, 10, 13, 10, "$"
    Mission db "Mission: It is tasked to prepare individuals with the best that education can offer in a manner that is consistent with the needs of society.", 13, 10, 13, 10, "$"
    
    ObjectivesTitle db "Objectives:$"
    ObjectiveOne db "-To inculcate critical thinking.", 13, 10, "$"
    ObjectiveTwo db "           -To provide competent human resources in various fields.", 13, 10, "$"
    ObjectiveThree db "           -To promote discipline, justice, and equality.", 13, 10, "$"
    ObjectiveFour db "           -To improve man's quality of life through research and community services.", 13, 10, "$"
    
    .code 
    BEGIN:

    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 3 ; color, eg aqua in this case
    mov cx, 67 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    mov dx, OFFSET UniversityTitle
    mov ax, SEG UniversityTitle
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 3 ; color, eg aqua in this case
    mov cx, 162 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    mov dx, OFFSET Philosophy
    mov ax, SEG Philosophy
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 3 ; color, eg aqua in this case
    mov cx, 94 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    mov dx, OFFSET Vision
    mov ax, SEG Vision
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 3 ; color, eg aqua in this case
    mov cx, 141 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    mov dx, OFFSET Mission
    mov ax, SEG Mission
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 3 ; color, eg aqua in this case
    mov cx, 43 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    mov dx, OFFSET ObjectivesTitle
    mov ax, SEG ObjectivesTitle
    mov ds, ax
    mov ah, 9D
    int 21H
    
    mov dx, OFFSET ObjectiveOne
    mov ax, SEG ObjectiveOne
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 3 ; color, eg aqua in this case
    mov cx, 67 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    mov dx, OFFSET ObjectiveTwo
    mov ax, SEG ObjectiveTwo
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 3 ; color, eg aqua in this case
    mov cx, 57 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    mov dx, OFFSET ObjectiveThree
    mov ax, SEG ObjectiveThree
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Setting text color in a line
    mov ah, 09h ; move next string into ah
    mov bl, 3 ; color, eg aqua in this case
    mov cx, 85 ; number of chars
    int 10h ; interrupts the BIOS and applies effects
    
    mov dx, OFFSET ObjectiveFour
    mov ax, SEG ObjectiveFour
    mov ds, ax
    mov ah, 9D
    int 21H
    
    ; Terminating our program
    mov ah, 4CH
    int 21H
    
    END BEGIN