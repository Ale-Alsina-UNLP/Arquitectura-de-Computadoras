;<------------- TP04_P1_Ej05 C ------------>
; SIN NEMOTECNICOS SOLO NRO REGISTROS
; Calcula el factorial de N, 
; y lo guarda en F:
;  F = 1
;  FOR i= 1..N:
;    F = F * i
;-------------------------------------------

    .data
N:  .word 5
F:  .word 0

    .code
     ld    R8,  N(R0)
     daddi R9,  R0, 1
     daddi R10, R0, 1
FAC: dmul  R10, R10, R9
     daddi R9,  R9, 1
     daddi R8,  R8, -1
     bnez  R8, FAC
     sd R10, F(R0)
halt
