   ORG 1000h
INFO    DB "Ingrese clave: "
OK      DB "Acceso permitido",10
ERROR   DB "Acceso denegado",10
FAIL    DB "Acceso BLOQUEADO",10
ERRORES DB 0
CLAVE   DB "pass"
LOGIN   DB ?
   
   ORG 2000h
start: mov bx,offset INFO
       mov al,offset OK - offset INFO
       int 7
       mov cl,4 
       mov bx,offset login
leer:  int 6
       inc bx
       dec cl
       jnz leer
       mov dx,3 
comp:  mov bx,offset clave
       add bx,dx
       mov al,[bx]
       mov bx,offset login
       add bx,dx
       cmp [bx],al
       jnz mal
       dec dx
       jnz comp
       mov bx,offset OK
       mov al,offset ERROR - offset OK
       int 7
       jmp fin
mal:   inc ERRORES
       cmp ERRORES, 5
       jz echar
       mov bx,offset ERROR
       mov al,offset FAIL - offset ERROR
       int 7
       jmp start
echar: mov bx,offset FAIL
       mov al,offset ERRORES-offset FAIL
       int 7
fin:   int 0
end
