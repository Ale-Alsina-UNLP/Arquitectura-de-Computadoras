   org 1000h
msj db  "ARQUITECTURA DE COMPUTADORAS-"
    db  "FACULTAD DE INFORMATICA-"
    db 55h
    db 4eh
    db 4ch
    db 50h
fin db ?
   org 2000h
mov bx, offset msj
mov al, offset fin - offset msj
int 7
int 0
end
