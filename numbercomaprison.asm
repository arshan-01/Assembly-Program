;	cmp dest,src
;	subtraction in comparison

;	if dest > src  then zf = 0, cf = 0
;	if dest < src  then zf = 0, cf = 1
;	if dest = src  then zf = 1, cf = 0

;	jmp is a simple jump
;	jcond is conditional jump
;		jz jump when zf = 1
;		jc jump when cf = 1
;		jnz jump when zf = 0
;		jnc jump when cf = 0 or jump when cf != 1

include irvine32.inc
.data
msg1 byte "both values are equal ",0
msg2 byte "destination operand is greater ",0
msg3 byte "destination operand is smaller ",0
msg4 byte "enter first value : ",0
msg5 byte "enter second value : ",0
.code
main proc
	;call dumpregs
	;mov eax, 10
	;mov ebx, 20
	mov edx,offset msg4
	call writestring
	call readint
	mov ebx,eax
	
	mov edx,offset msg5
	call writestring
	call readint
	;xchg eax,ebx
	
	cmp ebx, eax
	jz equaldisp
	jc destsmaller
	jmp destgreater
	;call dumpregs
	
equaldisp:
	mov edx, offset msg1
	call writestring
	call quit
destsmaller:
	mov edx,offset msg3
	call writestring
	call quit
destgreater:
	mov edx,offset msg2
	call writestring
quit:
call crlf
exit
main endp
end main