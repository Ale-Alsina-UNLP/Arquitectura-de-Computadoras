;<--------------- TP04_P1_Ej06 A -------------->
; SIN NEMOTECNICOS SOLO NRO REGISTROS
; Calcular la suma de los 3 valores sin utilizar
; un loop o lazo.
; Pista: Usar tres instrucciones ld $t1, V($t2),
; donde $t2 va aumentando de a 8 bytes el 
; desplazamiento.
;----------------------------------------------

    .data
V:  .word 5, 2, 6

    .code

dadd   R8,  R0, R0  ;result suma inicializa 0
dadd   R10, R0, R0  ;desplazamiento
ld     R9,  V(R10)  ;carga 1° elem
dadd   R8,  R8, R9  ;sumo 1° elem
daddi  R10, R10, 8  ;desplazo 8   
ld     R9,  V(R10)  ;carga 2° elem
dadd   R8,  R8, R9  ;suma 2° con 1° elem
daddi  R10, R10, 8  ;desplazo 8 
ld     R9,  V(R10)  ;carga 3° elem
dadd   R8,  R8, R9  ;suma 3° con 2°+1° elem
halt
