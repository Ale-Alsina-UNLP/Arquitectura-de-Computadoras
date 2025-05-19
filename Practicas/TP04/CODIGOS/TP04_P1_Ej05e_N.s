;<------------- TP04_P1_Ej05 E ------------>
; Usando NEMOTECNICOS en el codigo
; Guarda en B el valor 1 si A es impar 
; y 0 de lo contrario
;  IF impar (A) :
;      B = 1
;  ELSE:
;      B = 0
;-------------------------------------------

    .data
A:  .word 5
B:  .word 0

    .code
ld    $t0,  A($zero)
daddi $t1,  $zero, 1
and   $t2, $t0, $t1     
sd    $t2, B($zero)
halt
