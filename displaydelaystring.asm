;read a string and display with delay 
include irvine32.inc
.data
msg1 byte "Enter a string : ",0
msg2 byte "You entered this string : ",0
str1 byte 80 dup(?)
 
.code
main proc
		mov eax,0
		mov edx,offset msg1
		call writestring
		mov edx,offset str1
		mov ecx,sizeof str1-1                ;-1 for null
		call readstring
                mov edx,offset msg2
                call writestring 
mov ecx,sizeof str1
mov esi,offset str1
	display:
		mov eax,1000
		call delay
	   	mov al,[esi]
           	call writechar
           	add esi,type str1
	loop display      
exit
main endp
end main