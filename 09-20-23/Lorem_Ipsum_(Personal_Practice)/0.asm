.model small
.stack
.data
    
    sentenceOne db 0dh, 0ah,"Lorem Ipsum is simply dummy text of the printing and typesetting industry.$"
    sentenceTwo db 0dh, 0ah, "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.$"
    sentenceThree db 0dh, 0ah, "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.$"
    
    listTitle db, 0dh, 0ah, "My Agents: $"
    agentOne db "#1 [Phoenix]$"
    agentTwo db, 0dh, 0ah, "           #2 [Omen]$"
    agentThree db, 0dh, 0ah, "           #3 [Viper]$"
    agentFour db, 0dh, 0ah, "           #4 [Cypher]$"
    
.code

    BEGIN:
    
    ; Loading .data variables into memory
    mov ax, @DATA
    mov ds, ax
    mov es, ax
    
    ; Printing variables in .data
    mov ah, 09H
    LEA dx, sentenceOne
    int 21H
    
    mov ah, 09H
    LEA dx, sentenceTwo
    int 21H
    
    mov ah, 09H
    LEA dx, sentenceThree
    int 21H
    
    mov ah, 09H
    LEA dx, listTitle
    int 21H
    
    mov ah, 09H
    LEA dx, agentOne
    int 21H
    
    mov ah, 09H
    LEA dx, agentTwo
    int 21H
    
    mov ah, 09H
    LEA dx, agentThree
    int 21H
    
    mov ah, 09H
    LEA dx, agentFour
    int 21H
    
    END BEGIN