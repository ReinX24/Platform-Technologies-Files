.model small
.stack
.data
    message db "Garcia, Dodge O., 21-ITE-01", 13, 10, "Tibagacay, Jacklelyn., 21-ITE-01$"
   
.code
begin:

mov dx, offset message
mov ax, seg message
mov ds, ax
mov ah, 9d
int 21h
mov ah, 4ch
int 21h 

end begin