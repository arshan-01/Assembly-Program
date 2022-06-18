;Check vowel
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
		
		cmp al,'a'
		je destvowel
		
		cmp al,'e'
		je destvowel
		
		cmp al,'i'
		je destvowel
		
		cmp al,'o'
		je destvowel
		
		cmp al,'u'
		je destvowel
	
		cmp al,'A'
		je destvowel
		
		cmp al,'E'
		je destvowel
		
		cmp al,'I'
		je destvowel
		
		cmp al,'O'
		je destvowel
		
		cmp al,'U'
		je destvowel
		
		jmp Consonant 
		
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
exit
main endp
end main
