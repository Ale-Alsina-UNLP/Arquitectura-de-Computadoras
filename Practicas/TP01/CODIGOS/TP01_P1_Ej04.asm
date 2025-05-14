    org 1000h
msj  db "HOLA, BUEN DIA"
fin  db ?
    org 2000h
       mov bx, offset msj
       mov cl, offset fin - offset msj
       mov al, 41h ; "a"
       mov ah, 5ah ; "z"
sigue: mov ch, [bx]
       cmp ch, al
       js no_es
       cmp ah, ch
       js no_es
       add byte ptr [bx], 20h
no_es: inc bx
       dec cl
       jnz sigue
hlt
end
