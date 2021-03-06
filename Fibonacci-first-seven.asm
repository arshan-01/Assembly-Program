comment!
Write a program that uses a loop to calculate the first seven values of the Fibonacci number sequence,
described by the following formula: Fib(1) = 2, Fib(2) = 3, Fib(n) = Fib(n ? 1) + Fib(n ? 2). !

INCLUDE Irvine32.inc
.data
msg byte "Fibonacci Series : ",0
temp dword ?
.code
main PROC
mov edx,offset msg
call writestring
mov   eax,1 

mov   ebx, 1  ; initial setup   
mov   edx, 1   
mov   ecx, 5  ; count
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