  org 1000h
A db 8
B db 5
C db 4
D db ?

  org 3000h
CALC: push bx
      mov bx, sp
      add bx, 8
      mov bx, [bx]
      mov dl, [bx]
      mov bx, sp
      add bx, 6
      mov bx, [bx]
      add dl, [bx]
      mov bx, sp
      add bx, 4
      mov bx, [bx]
      sub dl, [bx]
      pop bx
      ret

  org 2000h
     mov AX, offset A
     push AX
     mov AX, offset B
     push AX
     mov AX, offset C
     push AX
call CALC
     mov D, DL
     pop AX
     pop AX
     pop AX
     hlt
end
