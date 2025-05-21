;<--------------- TP04_P1_Ej06 B -------------->
; SIN NEMOTECNICOS SOLO NRO REGISTROS 
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
dadd   R8,  R0,  R0  ;result suma inicializa 0
dadd   R10, R0,  R0  ;desplazamiento inicializa 0
daddi  R11, R0,  3  ; cant veces loop
sum: ld     R9,  V(R10)        ;carga 1° elem
     dadd   R8,  R8, R9      ;sumo 1° elem
     daddi  R10, R10, 8        ;desplazo 8   
     daddi  R11, R11, -1       ;decrementa loop
     bnez   R11, sum
halt
