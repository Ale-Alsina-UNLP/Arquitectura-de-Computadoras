;<--------------- TP04_P1_Ej06 B -------------->
; Usando NEMOTECNICOS en el codigo
; Calcular la suma de los 3 valores utilizando 
; un lazo con la dirección base y un registro 
; como desplazamiento. 
; Pista: Idem anterior, pero ahora con una única
; instruccion de lectura y $t2 se incrementa 
; dentro de un loop
;----------------------------------------------

    .data
V:  .word 5, 2, 6

    .code
dadd   $t0,  $zero, $zero  ;result suma inicializa 0
dadd   $t2,  $zero, $zero  ;desplazamiento
daddi  $t3,  $zero, 3      ; cant veces loop
sum: ld     $t1,  V($t2)        ;carga 1° elem
     dadd   $t0,  $t0, $t1      ;sumo 1° elem
     daddi  $t2,  $t2, 8        ;desplazo 8   
     daddi  $t3,  $t3, -1       ;decrementa loop
     bnez   $t3, sum
halt
