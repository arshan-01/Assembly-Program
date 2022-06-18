;Check vowel by function
include irvine32.inc
.data
	msg1 byte "Enter a character : ",0
	msg2 byte "Destination character is vowel",0
	msg3 byte "Destination character is not vowel",0
	
.code
main proc
		
		mov edx,offset msg1
		call writestring
		call readchar
		call writechar
		call crlf
		call vowel
exit
main endp

	vowel proc	
		cmp al,'a'
		jz destvowel
		
		cmp al,'e'
		jz destvowel
		
		cmp al,'i'
		jz destvowel
		
		cmp al,'o'
		jz destvowel
		
		cmp al,'u'
		jz destvowel
	
		cmp al,'A'
		jz destvowel
		
		cmp al,'E'
		jz destvowel
		
		cmp al,'I'
		jz destvowel
		
		cmp al,'O'
		jz destvowel
		
		cmp al,'U'
		jz destvowel
		
		jmp Consonant 
ret
vowel endp
		
	destvowel:
		mov edx,offset msg2
		call writestring
		call crlf
		call quit
	Consonant:
			mov edx,offset msg3
			call writestring
			call crlf
			call quit
quit:

end main
