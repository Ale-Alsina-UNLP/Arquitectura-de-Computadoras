    org 1000h
msj  db "hola, buen dia"
fin  db ?
    org 2000h
       mov bx, offset mensaje
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
       jnz sigo
hlt
end
