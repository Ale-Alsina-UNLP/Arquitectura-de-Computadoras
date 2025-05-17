;<------------- TP04_P1_Ej05 A ------------>
; Usando NEMOTECNICOS en el codigo
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
ld    $t0, A($zero)
ld    $t1, B($zero)
dadd  $t2, $t0, $t1
sd    $t2, S($zero)
dmul  $t2, $t0, $t1
daddi $t3, $t2, 2
sd    $t3, P($zero)
dmul  $t2, $t0, $t0
ddiv  $t2, $t2, $t1
sd    $t2, D($zero)
halt
