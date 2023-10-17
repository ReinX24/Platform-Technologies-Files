; Print your current computer specifications
.model small
.stack
.data
    TitleHeader db 09h, 0ah, "[Rein Solis Computer Specifications]$"
    Processor db 09h, 0ah, "CPU: Ryzen 5600G$"
    OperatingSystem db 09h, 0ah, "Operating System: Windows 11 Pro 64 Bit$"
    Motherboard db 09h, 0ah, "Motherboard: A520M K V2$"
    Memory db 09h, 0ah, "Memory: 16 GB$"
    Storage db 09h, 0ah, "Storage: 512 GB$"
    Monitor db 09h, 0ah, "Monitor: Acer EK220Q$"
    Keyboard db 09h, 0ah, "Keyboard: Rakk Illis (Red Switches)$"
    Mouse db 09h, 0ah, "Mouse: Corsair Katar Pro$"
.code
    BEGIN:
    
    mov ax, @DATA
    mov ds, ax
    mov es, ax
    
    mov ah, 09h
    LEA dx, TitleHeader
    int 21H
    
    mov ah, 09h
    LEA dx, Processor
    int 21H
    
    mov ah, 09h
    LEA dx, OperatingSystem
    int 21H
    
    mov ah, 09h
    LEA dx, Motherboard
    int 21H
    
    mov ah, 09h
    LEA dx, Memory
    int 21H
    
    mov ah, 09h
    LEA dx, Storage
    int 21H
    
    mov ah, 09h
    LEA dx, Monitor
    int 21H
    
    mov ah, 09h
    LEA dx, Keyboard
    int 21H
    
    mov ah, 09h
    LEA dx, Mouse
    int 21H
    
    END BEGIN