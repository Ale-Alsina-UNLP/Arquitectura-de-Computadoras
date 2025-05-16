  ORG 1000H
c   db "g"
res db ?

;;;;;; SIBRUTINA ES_MAYUS ;;;;;;
  ORG 3000H
mayus: mov ah, 00h
       mov cl, 41h ; "a"
       mov ch, 5ah ; "z"
       cmp al, cl
       js no_es
       cmp ch, al
       js no_es
       mov ah, 0ffh
no_es: ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 ORG 2000H
mov al, c
call mayus
mov res, ah
hlt
end
