   ORG 1000h
iniP1 db "Ingrese Msj",0Ah
finP1 db ?
iniP2 db 0Ah,"Cant 'a' es: "
finP2 db ?
CANT  db 0h,0h,0h
MENSAJE db ?
 
  ORG 3000h
esc_str: mov al,0
         push bx
   loop: int 6
         cmp byte ptr[bx],0Ah
         jz floop
         inc bx
         inc al
         cmp al, 255
         jnz loop
  floop: pop bx
         ret
 
 normal: mov ch, 0
         mov dh, 0
         mov al, cl
centena: cmp al, 100
         jc decena
         sub al, 100
         inc ch
         jmp centena
 decena: cmp al, 10
         jc unidad
         sub al, 10
         inc dh
         jmp decena
 unidad: cmp ch, 0
         jz tresDig
         add ch,30h
         mov CANT, ch
         jmp dosDig
tresDig: cmp dh, 0h
         jz unDig
 dosDig: add dh,30h
         mov CANT+1, dh
unDig:   add al,30h
         mov CANT+2, al
         ret

count:   push bx
         mov cl, 0
 comp:   cmp byte ptr[bx],61h
         jnz go_on
         inc cl
go_on:   inc bx
         dec al
         jnz comp
         call normal
         pop bx
         ret
 
   ORG 2000h
     mov bx, offset iniP1
     mov al, offset finP1-offset iniP1
     int 7
     mov bx,offset MENSAJE
     call esc_str
     mov ah,al
call count
     mov al,ah
     int 7
     mov bx, offset iniP2
     mov al, offset finP2-offset iniP2
     int 7
     mov bx,offset CANT
     mov al,3
     int 7
     int 0
end
