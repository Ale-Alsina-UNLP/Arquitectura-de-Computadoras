  ORG 1000h
msj db "HoLA, BuEnAs TaRDeS"
fin db ?
  ORG 2000h
       mov bx, offset msj
       mov cl, offset fin - offset msj
       mov al, 41h
       mov ah, 5ah
sigue: mov ch, [bx]
       cmp ch, al
       js no_es
       cmp ah, ch
       js no_es
       add byte ptr [bx], 20h
no_es: inc bx
       dec cl
       jnz sigue
mov bx, offset msj
mov al, offset fin - offset msj 
int 7
hlt
END
