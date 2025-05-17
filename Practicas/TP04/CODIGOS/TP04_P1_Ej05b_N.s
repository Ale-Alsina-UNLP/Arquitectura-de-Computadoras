;<------------- TP04_P1_Ej05 B ------------>
;  Usando NEMOTECNICOS en el codigo
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
     ld    $t0,  A($zero)
     ld    $t1,  B($zero)
     dadd  $t2, $zero, $zero
     beqz  $t0, FIN
     slt   $t2, $t1, $t0
     bnez  $t2, Ax2
     dadd  $t2, $t1, $zero
     j FIN
Ax2: daddi $t2, $zero, 2
     dmul  $t2, $t0, $t2
FIN: sd    $t2, C($zero)
halt
