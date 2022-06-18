;Check positive and negative

include irvine32.inc
.data
	msg1 byte "Enter a number : ",0
	msg2 byte "Destination number is positive",0
	msg3 byte "Destination character is negative",0
	msg4 byte "Destination number is Zero",0
	
.code
main proc
		
		mov edx,offset msg1
		call writestring
		call readint
	
		cmp eax,0
		jz Zero
		js Negative 
		jmp Positive
		
	Zero:
			mov edx,offset msg4
			call writestring
			call crlf
			call quit
	Negative:
			mov edx,offset msg3
			call writestring
			call crlf
			call quit
	Positive:
			mov edx,offset msg2
			call writestring
			call crlf
			
quit:
exit
main endp
end main
