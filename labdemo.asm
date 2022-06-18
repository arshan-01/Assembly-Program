include irvine32.inc
.data
arr dword 10,20,30,40


.code 
main proc
mov eax, arr+12 
call writedec
call crlf

mov eax, arr+8 
call writedec
call crlf

mov eax, arr+4 
call writedec
call crlf

mov eax, arr 
call writedec
call crlf

exit
main endp
end main
