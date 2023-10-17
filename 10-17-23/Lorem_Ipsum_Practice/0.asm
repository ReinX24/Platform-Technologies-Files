; Create a program that will print 3 paragraphs
.model small
.stack
.data
    ParagraphOne db 09h, 0ah, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.$"
    ParagraphTwo db 09h, 0ah, 0ah, "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.$"
    ParagraphThree db 09h, 0ah, 0ah, "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.$"
.code
    BEGIN:
    
    ; Loading the data variables to memory
    mov ax, @DATA
    mov ds, ax
    mov es, ax
    
    mov ah, 09h
    LEA dx, ParagraphOne
    int 21H
    
    mov ah, 09h
    LEA dx, ParagraphTwo
    int 21H
    
    mov ah, 09h
    LEA dx, ParagraphThree
    int 21H
    
    END BEGIN