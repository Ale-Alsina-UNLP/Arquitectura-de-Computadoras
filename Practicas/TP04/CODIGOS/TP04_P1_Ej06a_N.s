;<--------------- TP04_P1_Ej06 A -------------->
; Usando NEMOTECNICOS en el codigo
; Calcular la suma de los 3 valores sin utilizar
; un loop o lazo.
; Pista: Usar tres instrucciones ld $t1, V($t2),
; donde $t2 va aumentando de a 8 bytes el 
; desplazamiento.
;----------------------------------------------

    .data
V:  .word 5, 2, 6

    .code

dadd   $t0,  $zero, $zero  ;result suma inicializa 0
dadd   $t2,  $zero, $zero  ;desplazamiento
ld     $t1,  V($t2)        ;carga 1° elem
dadd   $t0,  $t0, $t1      ;sumo 1° elem
daddi  $t2,  $t2, 8        ;desplazo 8   
ld     $t1,  V($t2)        ;carga 2° elem
dadd   $t0,  $t0, $t1      ;suma 2° con 1° elem
daddi  $t2,  $t2, 8        ;desplazo 8 
ld     $t1,  V($t2)        ;carga 3° elem
dadd   $t0,  $t0, $t1      ;suma 3° con 2°+1° elem
halt

halt
