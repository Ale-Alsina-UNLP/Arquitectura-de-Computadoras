;<--------------- TP04_P1_Ej06 C -------------->
; Usando NEMOTECNICOS en el codigo
; Calcular la suma de los 3 valores utilizando
; un lazo,  con una  dirección  base de 0 y un 
; registro como puntero.
; Pista: Cargar la dirección en un registro con
; daddi $t2, $zero, V y luego cargar los valores
; con ld $t1, 0($t2)
;----------------------------------------------

    .data
V:  .word 5, 2, 6

    .code
dadd   $t0,  $zero, $zero   ;result suma inicializa 0
daddi  $t2,  $zero, V       ;desplazamiento
daddi  $t3,  $zero, 3       ; cant veces loop
sum: ld     $t1,  0($t2)    ;carga 1° elem
     dadd   $t0,  $t0, $t1  ;sumo 1° elem
     daddi  $t2,  $t2, 8    ;desplazo 8   
     daddi  $t3,  $t3, -1   ;decrementa loop
     bnez   $t3, sum
halt
