include irvine32.inc
.data
       msg1 byte "Enter a value : ",0
       msg2 byte "The Value is Even : ",0
       msg3 byte "The Value is odd : ",0
.code
          
main proc
        mov edx,offset msg1
      	call writestring
      	call readint
      	
	call crlf
        mov edx,0
        mov ebx,2
        idiv ebx
        cmp edx,0
        jz evendisp
           
        jmp odddisp
evendisp:
        mov edx, offset msg2
	call writestring
	call quit
odddisp:
        mov edx, offset msg3
	call writestring
	call quit
quit:
call crlf
exit
main endp
end main