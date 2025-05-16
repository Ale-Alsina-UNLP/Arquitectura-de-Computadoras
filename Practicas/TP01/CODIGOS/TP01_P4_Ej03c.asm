  ORG 1000H
c   db "g"
res db ?

;;;;;; SUBRUTINA A_MINUS ;;;;;;
  ORG 3000H
minus: add al, 20h
       ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 ORG 2000H
mov al, c
call minus
mov res, al
hlt
end
