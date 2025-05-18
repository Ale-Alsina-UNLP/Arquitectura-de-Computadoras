<------------- TP04_P1_Ej05 D ------------>
;  Usando NEMOTECNICOS en el codigo
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
     ld    $t0,  N($zero)
     ld    $t1,  L($zero)
LOG: slti  $t2,  $t0,  2
     beqz  $t2,  SIG
     j FIN
SIG: dsrl   $t0,  $t0, 1
     daddi  $t1,  $t1, 1
     j LOG
FIN: sd    $t1, L($zero)
halt
