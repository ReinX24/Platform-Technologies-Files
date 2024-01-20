.model small
.stack
.data
    TitleHeader db 13, 10, 27, " [Rein Solis Computer Specifications]", 13, 10, "$"
    Processor db 13, 10, 27, " CPU: Ryzen 5600G", 13, 10, "$"
    OperatingSystem db 13, 10, 27, " Operating System: Windows 11 Pro 64 Bit", 13, 10, "$"
    Motherboard db 13, 10, 27, " Motherboard: A520M K V2", 13, 10, "$"
    Memory db 13, 10, 27, " Memory: 16 GB", 13, 10, "$"
    Storage db 13, 10, 27, " Storage: 512 GB", 13, 10, "$"
    Monitor db 13, 10, 27, " Monitor: Acer EK220Q", 13, 10, "$"
    Keyboard db 13, 10, 27, " Keyboard: Rakk Illis (Red Switches)", 13, 10, "$"
    Mouse db 13, 10, 27, " Mouse: Corsair Katar Pro", 13, 10, "$"

.code
    BEGIN:
    
    mov ax, @DATA
    mov ds, ax
    
    ; Set text color (red)
    mov ah, 10h
    mov al, 02h ; Color code for red
    int 10h
    
    ; Print TitleHeader
    mov ah, 09h
    lea dx, TitleHeader
    int 21h
    
    ; Print Processor
    mov ah, 09h
    lea dx, Processor
    int 21h
    
    ; Print OperatingSystem
    mov ah, 09h
    lea dx, OperatingSystem
    int 21h
    
    ; Print Motherboard
    mov ah, 09h
    lea dx, Motherboard
    int 21h
    
    ; Print Memory
    mov ah, 09h
    lea dx, Memory
    int 21h
    
    ; Print Storage
    mov ah, 09h
    lea dx, Storage
    int 21h
    
    ; Print Monitor
    mov ah, 09h
    lea dx, Monitor
    int 21h
    
    ; Print Keyboard
    mov ah, 09h
    lea dx, Keyboard
    int 21h
    
    ; Print Mouse
    mov ah, 09h
    lea dx, Mouse
    int 21h
    
    ; Reset text color
    mov ah, 10h
    mov al, 07h ; Color code for white
    int 10h
    
    ; Exit program
    mov ah, 4Ch
    int 21h
    END BEGIN
