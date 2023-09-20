.model small
.stack
.data
    ; 0dh is the return carriage, 0ah prints to a new line, and 09h prints a horizontal tab
    philosophy db 0dh, 0ah, 09h, "Philosophy: The institution believe that through education, man's God given gifts are discovered and developed for his personal fulfillment and community uplift.$"
    vision db 0dh, 0ah, 0ah, 09h, "Vision: It envisions to create a community responsive to the challenges of the changing world.$"
    mission db 0dh, 0ah, 0ah, 09h, "Mission: It is tasked to prepare individuals with the best that education can offer in a manner that is consistent with the needs of society.$"
    objectivesTitle db 0dh, 0ah, 0ah, 09h, "Objectives:$"
    objectiveOne db 09h, "-To inculcate critical thinking.$"
    objectiveTwo db 0dh, 0ah, 0ah, 09h, 09h, 09h, "-To provide compentent human resources in various fields.$"
    objectiveThree db 0dh, 0ah, 0ah, 09h, 09h, 09h, "-To promote discipline, justice, and equality.$"
    objectiveFour db 0dh, 0ah, 0ah, 09h, 09h, 09h, "-To improve man's quality of life through research and community services.$"
.code
    BEGIN:
    
    ; Loading all of our variables in .data to our memory
    mov ax, @DATA ; this loads all of our variables in .data to the ax register
    mov ds, ax ; moving the data in ax to our ds register (data segment)
    ; mov es, ax ; also moving the data in es register (extra segment) 
    
    ; Printing the philosophy
    mov ah, 09H ; puts the print text function (09H) in the ah register
    LEA dx, philosophy ; LEA : load effective address. Stores the text in the dx register
    int 21H ; calls the command line interface and prints the text in dx
    
    ; Printing the vision
    mov ah, 09H
    LEA dx, vision
    int 21H
    
    ; Printing the mission
    mov ah, 09H
    LEA dx, mission
    int 21H
    
    ; Printing the objectivesTitle
    mov ah, 09H
    LEA dx, objectivesTitle
    int 21H
    
    ; Printing the first objective
    mov ah, 09H
    LEA dx, objectiveOne
    int 21H
    
    ; Printing the second objective
    mov ah, 09H
    LEA dx, objectiveTwo
    int 21H
    
    ; Printing the third objective
    mov ah, 09H
    LEA dx, objectiveThree
    int 21H
    
    ; Printing the fourth objective
    mov ah, 09H
    LEA dx, objectiveFour
    int 21H
    
    END BEGIN 