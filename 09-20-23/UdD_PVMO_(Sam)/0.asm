.model small
.stack
.data
      ; 0dh: return carriage, 0ah: go to a new line 
    philosophy db 0dh, 0ah,  "Philosophy: The institution believes that through education, Man`s god-given gifts are discovered and developed for his personal fulfillment and community upift.$"
    mission db 0dh, 0ah,  "Mission: It is tasked to prepare the individuals with the best that education can offer in a manner that is consistent with the needs of society.$"
    vision db 0dh, 0ah, "Vision: It envisions to create a community responsive to the challenges of the changing world.$"
    objectives db 0dh, 0ah, "Objectives: $"
    obj1 db "-To inculcate critical thinking.$"
    obj2 db 0dh, 0ah, "            -To provide competent human resources in various fields.$"
    obj3 db 0dh, 0ah, "            -To uphold dicipline, justice, and equality.$"               
    obj4 db 0dh, 0ah, "            -To improve man`s quality of life through research and community services.$"
       
      
.code    
    BEGIN: 

    ; LOADING DATA
    mov ax, @DATA        
    mov ds, ax
    mov es, ax
   
    ; PHILOSOPHY
    mov AH , 09H          
    LEA DX, philosophy
    int 21H
     
    ; VISION
    mov AH , 09H          
    LEA DX, vision
    int 21H
     
    ; MISSION
    mov AH , 09H          
    LEA DX, mission
    int 21H   
     
    ; OBJECTIVES
    mov AH , 09H          
    LEA DX, objectives
    int 21H
     
    ; first objective
    mov AH , 09H          
    LEA DX , obj1
    int 21H
     
    ; second objective
    mov AH , 09H          
    LEA DX , obj2
    int 21H 
     
    ; third objective
    mov AH , 09H          
    LEA DX , obj3
    int 21H
     
    ; fourth objective
    mov AH , 09H          
    LEA DX , obj4
    int 21H
     
    END BEGIN
     
     
     
     
     
     

     
     