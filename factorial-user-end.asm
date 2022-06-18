comment!
Write a program that uses a loop to generate Fibonacci Series till a number entered by User
described by the following formula: Fib(1) = 1, Fib(2) = 1, Fib(n) = Fib(n – 1) + Fib(n – 2). !

INCLUDE Irvine32.inc
.data
msg1 byte "Enter the end term for the series : ",0
msg2 byte "Fibonacci Series : ",0
temp dword ?
userend dword ?
.code
main PROC
		mov edx,offset msg1
		call writestring
		call readint
		mov edx,offset msg2
		call writestring
		mov userend,eax
		mov ebx, 1  				; initial setup   
		mov edx, 1   
		mov ecx, eax				; count
	L1: 
		mov  eax, ebx     			; eax = ebx + edx    
		add  eax, edx
		cmp userend,eax
		jc loopend
		jmp fibnoc
	fibnoc:
	
		mov  temp, edx 
		call writedec
		mov temp,eax
		mov al," "
		call writechar
		mov eax,temp
		mov  ebx, edx    
		mov  edx, eax  
		jmp quit
		
	loopend:
		jmp quit
	quit:
	Loop L1    
call crlf
exit
main ENDP
END main