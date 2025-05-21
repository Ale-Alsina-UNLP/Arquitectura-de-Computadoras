;<--------------- TP04_P1_Ej06 C -------------->
; SIN NEMOTECNICOS SOLO NRO REGISTROS
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
      dadd  R8,  R0,  R0  ;result suma inicializa 0
      daddi R10, R0,  V   ;desplazamiento
      daddi R11, R11, 3   ; cant veces loop
sum:  ld    R9,  0(R10)   ;carga 1° elem
      dadd  R8,  R8, R9   ;sumo 1° elem
      daddi R10, R10, 8   ;desplazo 8   
      daddi R11, R11, -1  ;decrementa loop
      bnez  R11, sum
halt
