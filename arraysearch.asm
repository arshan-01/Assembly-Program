include irvine32.inc
.DATA
msg1 byte "Enter a number to search : ",0
msg2 byte " found ",0
msg3 byte " not found",0

arr DWORD 1,2,3,4,5,65,27,21,99,100 
found DWORD 0 					; 1 if query located in array, otherwise 0

.CODE
main PROC 
			mov edx,offset msg1
			call writestring
			call readint
			call writedec
			mov esi,offset arr
			MOV ECX,10
disp:
			CMP [esi],eax
			JNZ passFwd
			JZ lab1
	lab1:	
			MOV found,1
			call quit
	passFwd:
			Add esi,type arr
			call quit
	
	Quit:
loop disp
			CMP found,0		
			JNZ nmbrFound
			JZ nmbrnotFound
			call quit
	nmbrFound:
			mov edx,offset msg2
			call writestring
			call crlf
			Call quit
	nmbrnotFound:
			mov edx,offset msg3
			call writestring
			call crlf
			Call quit
Exit
main ENDP 
END main

