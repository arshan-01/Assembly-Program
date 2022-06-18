include irvine32.inc
.data
array dword 10,20,30,40
;msg byte "the elements of array are : ",0
.code
main proc

;mov edx,offset msg
;call writestring
call crlf
mov esi,offset array
mov ecx,lengthof array 		;no. of elements

disp:
mov eax,[esi]
call writedec
mov al,' '
call writechar
add esi,4
loop disp
call crlf

;use of dumpmem function

mov esi,offset array
mov ecx,lengthof array
mov ebx,type array
call dumpmem

call crlf

exit
main endp
end main
