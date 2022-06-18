include irvine32.inc
.data
msg1 byte "enter any number ...",0
msg2 byte "the factorial of give number is ...",0
.code
main proc
	mov edx,offset msg1
	call writestring
	call readint
	
;5! = 5*4*3*2*1 
;5! = 1*2*3*4*5
;f=1
;for(i=1;i<=num;i++)
;f=f*i

mov ecx,eax
mov ebx,1
mov eax,1
fact:
	imul eax,ebx
	inc ebx		;add ebx,1
	loop fact
	
mov edx,offset msg2
call writestring
call writedec

call crlf
exit
main endp
end main