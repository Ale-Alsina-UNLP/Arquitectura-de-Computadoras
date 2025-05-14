  org 1000h
C   db 'A'
RES db ?
  org 2000h
       mov al,C
       cmp al,41h
       js noMay
       cmp al,5Ah
       js noMay
       mov RES, 00h
       jmp fin
noMay: mov RES,0FFh
fin:   int 0
end
