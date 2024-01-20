.model small
.stack
.data
    ; 0dh: return, 0ah: break into a new line
    UniversityTitle db 0dh, 0ah, "Universidad De Dagupan: Philosophy, Vision, Mission, and Objectives$"
    
    Philosophy db 0dh, 0ah, 0ah, "Philosophy: The institution believes that through education, man's God given gifts are discovered and developed for his personal fulfillment and community uplift.$"
    Vision db 0dh, 0ah, 0ah, "Vision: It envisions to create a community responsive to the challenges of the changing world.$"
    Mission db 0dh, 0ah, 0ah, "Mission: It is tasked to prepare individuals with the best that education can offer in a manner that is consistent with the needs of society.$"
    
    ObjectivesTitle db 0dh, 0ah, 0ah, "Objectives:$"
    ObjectiveOne db "-To inculcate critical thinking.$"
    ObjectiveTwo db 0dh, 0ah, "           -To provide competent human resources in various fields.$"
    ObjectiveThree db 0dh, 0ah, "           -To promote discipline, justice, and equality.$"
    ObjectiveFour db 0dh, 0ah, "           -To improve man's quality of life through research and community services.$"
    
    .code
    BEGIN:

    ; Loading variables in .data
    mov ax, @DATA
    mov ds, ax
    mov es, ax
    
    ; Printing UniversityTitle
    mov ah, 09H
    LEA dx, UniversityTitle
    int 21H
    
    ; Printing Philosophy
    mov ah, 09H
    LEA dx, Philosophy
    int 21H
    
    ; Printing Vision
    mov ah, 09H
    LEA dx, Vision
    int 21H
    
    ; Printing Mission
    mov ah, 09H
    LEA dx, Mission
    int 21H
    
    ; Printing ObjectivesTitle
    mov ah, 09H
    LEA dx, ObjectivesTitle
    int 21H
    
    ; Printing ObjectiveOne
    mov ah, 09H
    LEA dx, ObjectiveOne
    int 21H
    
    ; Printing ObjectiveTwo
    mov ah, 09H
    LEA dx, ObjectiveTwo
    int 21H
    
    ; Printing ObjectiveThree
    mov ah, 09H
    LEA dx, ObjectiveThree
    int 21H
    
    ; Printing ObjectiveFour
    mov ah, 09H
    LEA dx, ObjectiveFour
    int 21H
    
    END BEGIN