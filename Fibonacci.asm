comment!
Write a program that uses a loop to calculate the values of the Fibonacci number sequence,which user entered
described by the following formula: Fib(1) = 1, Fib(2) = 1, Fib(n) = Fib(n – 1) + Fib(n – 2). !

INCLUDE Irvine32.inc
.data
msg1 byte "Enter the end term for the series : ",0
msg2 byte "Fibonacci Series : ",0
temp dword ?
.code
main PROC
		mov edx,offset msg1
		call writestring
		call readint
		mov temp,eax
		mov eax,1
		call writedec
		mov al," "
		call writechar
		mov   ebx, 0  ; initial setup   
		mov   edx, 1   
		mov   ecx, temp  ; count
	L1:    
		mov  eax, ebx     ; eax = ebx + edx    
		add  eax, edx
		mov  temp, edx 

		call writedec
		mov temp,eax 
		mov al," "
		call writechar
		mov eax,temp
		mov  ebx, edx    
		mov  edx, eax    
	Loop L1    
call crlf
exit
main ENDP
END main