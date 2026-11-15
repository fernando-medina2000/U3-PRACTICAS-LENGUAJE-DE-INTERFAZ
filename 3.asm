; Alumno: Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 3 (creo)

; Descripción: Programa que muestra en hexadecimal las direcciones de retorno 
; guardadas en la pila al llamar procedimientos anidados.

; Unidad: 3

; Horario : 8 - 9

INCLUDE Irvine32.inc

.data


.code
main PROC 
	mov eax,[esp]
	call WriteHEx
	call Crlf
	call procUno
	exit
main ENDP
	
procUno PROC
	mov eax, [esp]
	call WriteHex
	call Crlf
	call procDos
	
	ret
procUno ENDP

procDos PROC
	mov eax, [esp]
	call WriteHex
	call Crlf
	ret
procDos ENDP

END main
