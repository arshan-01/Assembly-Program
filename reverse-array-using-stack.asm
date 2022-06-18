;reverse a array using stack
include irvine32.inc
.data
array dword 5 dup(?)
msg1 byte "Enter elemet of array : ",0
msg2 byte "The array is : ",0
msg3 byte "reverse of array is : ",0
.code
main proc
	
		mov ecx,lengthof array
		mov esi,offset array 
	scanning:
			mov edx,offset msg1
			call writestring
			call readint
			mov [esi],eax
			add esi,type array
	loop scanning
	mov esi,offset array
	mov ecx,lengthof array
	tostack:
		mov eax,[esi]
		push eax
		add esi,type array
	loop tostack
	
		mov edx,offset msg3
		call writestring
	
	mov ecx,lengthof array
		fromstack:
			pop eax
			call writedec
			mov al, " "
			call writechar
	loop fromstack
	call crlf
		
exit
main endp
end main