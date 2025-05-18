;<------------- TP04_P1_Ej05 B ------------>
; Usando NEMOTECNICOS en el codigo
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
     ld    $t0,  N($zero)
     daddi $t1,  $zero, 1
     daddi $t2, $zero, 1
FAC: dmul  $t2, $t2, $t1
     daddi $t1,  $t1, 1
     daddi $t0,  $t0, -1
     bnez  $t0, FAC
     sd $t2, F($zero)
halt
