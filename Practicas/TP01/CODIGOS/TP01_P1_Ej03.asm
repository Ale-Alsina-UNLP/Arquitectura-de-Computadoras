   org 1000h
C db 'A'
  org 2000h
  mov al,C
  add al,20h
  mov C, al
  int 0
end
