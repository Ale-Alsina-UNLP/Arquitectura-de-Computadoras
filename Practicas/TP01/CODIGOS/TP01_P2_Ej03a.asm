      org 1000h
letra  db "A"
     org 2000h
       mov bx, offset letra
       mov al, 1
print: int 7
       cmp letra, 5ah ; "Z"
       jz fin
       inc letra
       jmp print
fin:   int 0
end
 
