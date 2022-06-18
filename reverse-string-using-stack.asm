;reverse a string using stack
include irvine32.inc
.data
msg1 byte "The string is : ",0
str1 byte "Arshan Nawaz",0
msg3 byte "reverse of string is : ",0
.code
main proc
		mov edx,offset msg1
		call writestring
		mov edx,offset str1
		call writestring
		call crlf
		mov edx,offset msg3
		call writestring
		mov eax,0
	mov ecx,lengthof str1
		mov esi,offset str1 
	tostack:
		mov al,[esi]
		push eax
		inc esi
	loop tostack
	mov ecx,lengthof str1
		fromstack:
			pop eax
			call writechar
			inc esi
	loop fromstack
	call crlf
		
exit
main endp
end main