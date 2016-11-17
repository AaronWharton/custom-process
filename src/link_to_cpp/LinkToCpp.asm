; assembly process						(LinkToCpp.asm)

.586
.model flat,stdcall						; .model flat,C     is also OK.

; C++ functions
displayMessage	PROTO C
displayResult	PROTO C, value:DWORD

LOOP_TIME = 10							; loop time

.data
intVal	DWORD	?						; get the value and save the result

.code
;--------------------------------------------------------------------------
SendMessage PROC C
;
; Input a number and display a multiplication table.
;--------------------------------------------------------------------------
	INVOKE	displayMessage
	mov		intVal,eax
	mov		ecx,LOOP_TIME

L1:	push	ecx
	shl		intVal,1								; shift operation,equals *2
	INVOKE	displayResult,intVal
	pop		ecx
	loop	L1

	ret
SendMessage	ENDP
END