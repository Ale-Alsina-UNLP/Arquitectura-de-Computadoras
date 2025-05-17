;<------------- TP04_P1_Ej05 B ------------>
; SIN NEMOTECNICOS SOLO NRO REGISTROS
;  Dadas dos variables A y B de la memoria,
;  calcula y almacena C 
;  if A == 0:
;    C = 0
;  else:
;    if A > B:
;      C = A * 2
;    else:
;      C = B
;-------------------------------------------

    .data
A:  .word 2
B:  .word 3
C:  .word 0

    .code
     ld    R8,  A(R0)
     ld    R9,  B(R0)
     dadd  R10, R0, R0
     beqz  R8, FIN
     slt   R10, R9, R8
     bnez  R10, Ax2
     dadd  R10, R9, R0
     j FIN
Ax2: daddi R10, R0, 2
     dmul  R10, R8, R10
FIN: sd    R10, C(R0)
halt
