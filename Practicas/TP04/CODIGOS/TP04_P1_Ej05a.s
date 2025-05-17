;<------------- TP04_P1_Ej05 A ------------>
; SIN NEMOTECNICOS SOLO NRO REGISTROS
; Lee 2 números A y B de la memoria de datos, 
; y calcula: 
;  S = A + B,
;  P = 2 + ( A * B )
;  D = A^2 / B
; luego se guardan en la memoria de datos.
;-------------------------------------------

    .data
A:  .word 2
B:  .word 3
S:  .word 0
P:  .word 0
D:  .word 0

    .code
ld    R8,  A(R0)
ld    R9,  B(R0)
dadd  R10, R8, R9
sd    R10, S(R0)
dmul  R10, R8, R9
daddi R11, R10, 2
sd    R11, P(R0)
dmul  R10, R8, R8
ddiv  R10, R10, R9
sd    R10, D(R0)
halt
