;read a string and display with delay 
include irvine32.inc
.data

 
.code
main proc
		
		mov ecx,100

	display:
		mov eax,100
		call delay
		mov eax,25
		call randomrange
		mov dh,al
		mov eax,80
		call randomrange
		mov dl,al
		call gotoxy
		mov al,'x'
		call writechar
	loop display      
exit
main endp
end main