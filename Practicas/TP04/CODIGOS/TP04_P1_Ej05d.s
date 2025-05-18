;<------------- TP04_P1_Ej05 D ------------>
; SIN NEMOTECNICOS SOLO NRO REGISTROS
;  Calcula logaritmo (entero) en base 2 de N
;  (N positivo) mediante divisiones sucesivas
;  y lo guarda en L
;    L = 0         =>Resultado
;    while N > 1:
;      N = N / 2
;      L = L + 1
;-------------------------------------------

    .data
N:  .word 64
L:  .word 0

    .code
     ld    R8,  N(R0)
     ld    R9,  L(R0)
LOG: slti  R10,  R8,  2
     beqz  R10,  SIG
     j FIN
SIG: dsrl   R8,  R8, 1
     daddi  R9,  R9, 1
     j LOG
FIN: sd  R9, L($zero)
halt
