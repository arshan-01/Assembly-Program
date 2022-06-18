include irvine32.inc

.data
	msg1 byte "This is array : ",0
	msg2 byte "sum of array : ",0
	array dword 10,20,30,40,50
	sum dword 0
.code
main proc
		mov ecx,lengthof array
		mov edx,offset msg1
		call writestring
		mov esi,offset array
	disp:
		mov eax,[esi]
		add sum,eax
		call writedec
		mov al," "
		call writechar
		add esi,type array
	loop disp
		mov eax,sum
		call crlf
		mov edx,offset msg2
		call writestring
		call writedec
		call crlf
		

exit
main endp
end main