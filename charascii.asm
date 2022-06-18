; write a program to read a character in lower case then display its ASCII code
; convert it into upper case
; show the converted letter with its ASCII code

include irvine32.inc
.data
msg1 byte "Enter a lower case letter : ",0
msg2 byte "The ASCII code of character is : ",0
msg3 byte "Character in upper case is : ",0
.code
main proc
	mov eax,0
	mov edx,offset msg1
	call writestring
	call readchar
	
	call writechar
	
	call crlf
	mov edx,offset msg2
	call writestring
	call writedec
	
	sub al,32
	call crlf
	mov edx,offset msg3
	call writestring
	call writechar
	
	call crlf
	
	mov edx,offset msg2
	call writestring
	call writedec
call crlf
exit
main endp
end main