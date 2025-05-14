   org 1000h
msj db  ̏arquitectura de computadoras-˝
    db  ̏facultad de informatica-˝ 
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
