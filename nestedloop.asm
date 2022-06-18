INCLUDE Irvine32.inc
.data
        temp dword ?

.code
main PROC

	mov ecx,3
	outer:
	      mov temp,ecx
	      mov ecx,4
	      Inner:
	       mov al,'$'
	       call writechar
	      loop inner
	      call crlf
	      mov ecx,temp 
	loop outer      

	exit
main ENDP
END main