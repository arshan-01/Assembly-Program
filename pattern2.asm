;Pattern
		;A 
		;B C
		;D E F
		;G H I J
		
		
include irvine32.inc
.data
col dword 1
startchar byte 'A'
.code
main proc
	
	mov ecx,4
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
	inc col	
	call crlf
	mov ecx,ebx
	loop outer
main endp
end main
