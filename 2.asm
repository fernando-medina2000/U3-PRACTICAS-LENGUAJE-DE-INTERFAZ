; Alumno: Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 2 (creo)

; Descripción: Programa que pasa dos valores por la pila y los multiplica en un procedimiento.

; Unidad: 3

; Horario : 8 - 9

INCLUDE Irvine32.inc

.data
	
.code
main PROC 
	 mov ebx, 10
	 push 1
	 push 2

	 call sumarPila

	 nop
	 exit

main ENDP

sumarPila PROC 
	push ebp ; para guardarlo en la pila, para marcar la sima de la pila a mi punto de referencia
	mov ebp, esp ; se vuelve la referancia para movernos en la pila

	push ebx
	mov eax, [ebp+8] ; accede al valor 2
	mov ebx, [ebp+12]; accede al valor 1

	imul eax, ebx ; imul permite especificar 2 registros, mul siempre multiplica eax
	
	pop ebx
	pop ebp
	ret 8 ; limpia los 2 registros realizados antes del call, de la pila

sumarPila ENDP

END main
