  org 1000h
a  db 100
b  db 3
res dw ?

;;;;;;;;;;;;;;;; SUBRUTINA Multiplicación ;;;;;;;;;;;;;;;;;;;
; parámetros por valor a través de los registros AL y AH
; devolviendo el resultado a través del registro AX por valor
  org 3000h
mul:   push cx
       push dx
       mov dx, 0
       cmp al, 0
       jz salir
       cmp ah, 0
       jz salir
       mov ch, 0
       mov cl, al

loop:  add dx, cx
       dec ah
       jnz loop
salir: mov ax, dx
       pop dx
       pop cx
       ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  org 2000h
mov al, a
mov ah, b
call mul
mov res, ax
hlt
end
