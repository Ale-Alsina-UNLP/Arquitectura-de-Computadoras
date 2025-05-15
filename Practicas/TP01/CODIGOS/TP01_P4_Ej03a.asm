   ORG 1000H
msj   DB "Hola, Buenas Tardes"
letra DB "a"
cant  DB  ?

   ORG 3000H
contar: mov cl, 0
sigo:   mov ch, [bx]
        cmp ch, ah
        jnz saltar
        inc cl
saltar: inc bx
        dec al
        jnz sigo
        ret
   ORG 2000H
     mov bx, offset msj
     mov al, offset letra - offset msj
     mov ah, letra
call contar
     mov cant, cl
     hlt
END
