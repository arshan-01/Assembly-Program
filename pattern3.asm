;Pattern
		;	* * * * *
		;	  * * * *
		;	    * * *
		;	      * *
		;	        *
		
		
include irvine32.inc
.data
col dword 5
space dword 1
.code
main proc
	
	mov ecx,5
	outer:
	mov ebx,ecx
	
		mov ecx,space
		inner:
				mov al, " "
				call writechar
				call writechar
				
		loop inner
		inc space
		
		mov ecx,col
		inner1:
			mov al,"*"
			call writechar
			mov al, " "
			call writechar
		loop inner1
	dec col	
	call crlf
	mov ecx,ebx
	loop outer
main endp
end main
