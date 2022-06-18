include irvine32.inc
.data
str1 byte "Enter number for search : ",0
msg2 byte "total words : ",0

count dword 1

.code
Main proc
		mov esi,offset str1
		mov ecx,lengthof str1
	disp:
		mov al,[esi]
		cmp al," "
		jz valuefound
		add esi,type str1
	valuefound:
		inc count
		jmp quit
	
	quit:
	
	loop disp
	mov eax,count
	call writedec
Exit
Main endp 
End main