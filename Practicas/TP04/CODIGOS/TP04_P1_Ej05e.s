;<------------- TP04_P1_Ej05 E ------------>
; SIN NEMOTECNICOS SOLO NRO REGISTROS
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
ld    R8,  A(R0)
daddi R9,  R0, 1
and   R10, R8, R9     
sd    R10, B(R0)
halt
