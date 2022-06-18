include irvine32.inc
.data
msg byte "PAKISTAN",0
.code
main proc
	mov eax,22d
	call writeint
	call crlf
	call writedec
	call crlf
	call writehex
	call crlf
	call writebin
	call crlf
	mov al,'*'
	call writechar
	call crlf
	;call clrscr
	MOV EDX,OFFSET MSG
	CALL WRITESTRING
	call crlf
	mov esi,offset msg
	mov ecx,lengthof msg
	dec ecx
	disp:
		mov al,[esi]
		call writechar
	
		mov eax,1000
		call delay
	inc esi
	loop disp
	CALL CRLF
	exit
main endp
end main