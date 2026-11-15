; Materia: Lenguajes de Interfaz

; Alumno: Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 5. Utilizacion de la macro y macro con multiplicacion

; Descripción: Programa con macros que muestra mensajes y multiplica dos números.

; Unidad: 3

; Horario : 8 - 9


INCLUDE Irvine32.inc


MostrarMensaje MACRO texto
	mov edx, OFFSET texto
	call WriteString
	call Crlf
ENDM

Multi MACRO num1, num2
	mov eax, num1
	imul eax, num2
	call WriteInt
	call Crlf
ENDM

.data
	mensajeBienvenida BYTE "BIENVENIDO AL SISTEMA DE GLOWUP MAKEUP SINALOA", 0
	mensajeFin BYTE "ADIOS", 0
.code
main PROC 
	MostrarMensaje mensajeBienvenida
	MostrarMensaje mensajeFin

	Multi 4, 5

main ENDP
END main