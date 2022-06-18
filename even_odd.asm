;Check even or odd number

include irvine32.inc
.data
msg1 byte "Enter a number :  ",0
msg2 byte " is odd ",0
msg3 byte " is even ",0
.code
main proc
		 mov ebx,2
                 mov edx,offset msg1
                 call writestring
                 
                 call readint               	;value will be in eax
                 call writedec                  ;display number 
                 mov edx,0			;put 0 in edx to overrride garbage value
                 idiv ebx			;remainder will store in edx
                                      		;compare with zero
                 
                 cmp edx,0
                 
                 jz desteven
                 jmp destodd
                 
                 
           desteven:
                  mov edx,offset msg3
                 call writestring
                 jmp quit
           destodd:
           
                 mov edx,offset msg2
                 call writestring
                 jmp quit
quit:
call crlf
exit
main endp
end main