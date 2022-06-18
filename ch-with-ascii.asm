;program to show the character with ascii code
include irvine32.inc
.data
msg1 byte "Character with ASCII code",0
startchar byte 'A'
.code
main proc
		mov edx,offset msg1
		call writestring
		call crlf
		
		mov ecx,26
		mov eax,0
		
		disp:
		        mov al,startchar
			call writechar
			
			mov al,09             ;for tab key
			call writechar
			
			mov al,startchar
			call writedec
			call crlf
			inc startchar
		loop disp
		
exit
main endp
end main