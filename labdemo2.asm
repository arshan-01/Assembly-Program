include irvine32.inc
.data
	temp dword 12345678h
	arr dword 10, 20, 30, 40, 50
	msg1 byte "size in byte = ",0
	msg2 byte "no. of elements in array = ",0
	msg3 byte "total size of array = ",0
.code
main proc
mov edx,offset msg1
call writestring

mov eax,type temp
call writedec

call crlf
mov edx,offset msg2
call writestring

mov eax,lengthof arr
call writedec

call crlf

mov edx,offset msg3
call writestring

mov eax,sizeof arr
call writedec

call crlf
mov eax,offset arr
call writehex
call crlf

;use of ptr operator
mov eax,temp
call writehex
call crlf
mov eax,0
mov ax,word ptr temp

call writehex
call crlf
xchg al,ah
call writehex
call crlf
mov byte ptr temp+1,33h
mov eax,temp
call writehex

mov eax,0
call dumpregs
mov al,255
inc al
call dumpregs

call crlf
mov al,255
add al,1
call dumpregs

call crlf
exit
main endp
end main