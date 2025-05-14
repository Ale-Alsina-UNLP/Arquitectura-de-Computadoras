     org 1000h
num  db "0",10
     org 2000h
       mov bx, offset num
       mov al, 2
print: int 7
       cmp num, 39h ; "9"
       jz fin
       inc num
       jmp print
fin:   int 0
end
