  org 1000h
A db 8
B db 5
C db 4
D db ?

  org 3000h
CALC: mov DL, AL  ;__________
      add DL, AH
      sub DL, CL
      ret         ;__________

  org 2000h
mov AL, A         ;_________
mov AH, B         ;_________
mov CL, C
call CALC         ;_________
mov D, DL
hlt
end
