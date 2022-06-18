;user defined functions in a prgoram

include irvine32.inc
.data
msg1 byte "Enter length.. ",0
msg2 byte "Enter width.. ",0
msg3 byte "Area is .. ",0
.code
main proc
	mov edx,offset msg1
	call writestring
	call readint 	;cin>>eax
	
	mov ebx,eax
	
	mov edx,offset msg2
	call writestring
	call readint 	;cin>>eax

call rectanglearea
call crlf
exit
main endp

rectanglearea proc
	mov edx,offset msg3
	call writestring
	imul eax,ebx
	call writedec
	ret
rectanglearea endp
end main