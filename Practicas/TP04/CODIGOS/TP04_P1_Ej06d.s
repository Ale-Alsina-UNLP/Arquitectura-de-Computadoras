;<--------------- TP04_P1_Ej06 D -------------->
; SIN NEMOTECNICOS SOLO NRO REGISTROS
; ¿Qué cambios se deberían realizar al programa 
; del inciso b) si los elementos fueran de 32 bits:
; V .word32 5, 2, 6?
;----------------------------------------------

    .data
V:  .word32 5, 2, 6

    .code
     dadd   R8,  R0,  R0  ;result suma inicializa 0
     dadd   R10, R0,  R0  ;desplazamiento
     daddi  R11, R0,  3   ; cant veces loop
sum: lw     R9,  V(R10)   ;carga 1° elem
     dadd   R8,  R8,  R9  ;sumo 1° elem
     daddi  R10, R10, 4   ;desplazo 8   
     daddi  R11, R11, -1  ;decrementa loop
     bnez   R11, sum
halt
