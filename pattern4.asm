comment !	Pattern
		A B C D
		E F G
		H I
		J
	!
		
include irvine32.inc
.data
msg1 byte "Enter the height of triangle : ",0
col dword ?
startchar byte 'A'
.code
main proc
	mov edx,offset msg1
	call writestring
	call readint
	mov col,eax
	mov ecx,col
	mov ebx,ecx
	outer:
		
	          mov ebx,ecx
	         mov ecx,col	
	        
		inner:
			 mov al,startchar
			call writechar
			mov al, " "
			call writechar
			inc startchar
		loop inner
	dec col	
	call crlf
	mov ecx,ebx
	loop outer
main endp
end main
