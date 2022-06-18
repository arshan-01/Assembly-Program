include irvine32.inc
.data
msg1 byte "This is array : ",0
msg2 byte "This is sum of array : ",0
array dword 1,2,3,4,5
 sum dword 0
.code
main proc
            mov ecx,lengthof array
            mov edx,offset msg1
            call writestring
            mov esi,offset array
disp:
           mov eax ,[esi]
           add sum,eax
           call writedec
           mov al," "
           call writechar
           add esi,type array
loop disp
           call crlf
           mov edx,offset msg2
            call writestring
           mov eax,sum
           call writedec
           call crlf
exit
main endp
end main