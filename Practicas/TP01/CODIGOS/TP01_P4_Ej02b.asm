org 1000h
A db 8
B db 5
C db 4
D db ?

org 3000h
CALC: push bx
      mov bx, sp
      add bx, 8     ;__________
      mov dl, [bx]
      sub bx, 2
      add dl, [bx]
      sub bx, 2
      sub dl, [bx]  ;__________
      pop bx
      ret           ;__________

org 2000h
     mov AL, A
     push AX
     mov AL, B      ;__________
     push AX
     mov AL, C      ;__________
     push AX
call CALC
     mov D, DL
     pop AX         ;__________
     pop AX         ;__________
     pop AX         ;__________
hlt
end
