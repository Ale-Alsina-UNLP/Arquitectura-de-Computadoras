;<<< NOTA: Bits 1:ENTRADA --- Bits 0:SALIDA >>>
PB EQU 31h
CB EQU 33h  ; COMPLETAR:puerto config de puerto PB(luces) 

ORG 2000H
mov al,00h ; COMPLETAR: Todas salidas 0000 0000
out CB, al
mov al, 0fh; 0000 1111  
out PB, al
int 0
end
