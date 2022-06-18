;write a program where we will show the price ,and user enter the quantity and we will calculate total bill and then discount if bill is greater then 1000 and
;substract discount from total bill and show the final bill.if total bill is under 1000 then the total bill will be final bill.

include irvine32.inc

.data 
msg1 byte " How many pizza : ",0 
msg2 byte " How many burger : ",0 
msg3 byte " Your bill is greater than 1000,so get 10% discount of : ",0 
msg4 byte "Your final bill is : ",0 
msg5 byte " Your bill is : ",0 
msg6 byte " Pizza = 500 RS & Burger = 300 RS ",0

pizza dword 500
burger dword 300
discount dword ?
bill dword ?

.code
main proc
				mov edx,offset msg6
				call writestring
        			CALL CRLF
				mov edx,offset msg1
				call writestring
				call readint
				imul eax,pizza
				mov ebx,eax              ;ebx= pizza price 
	
		                mov edx,offset msg2
				call writestring
				call readint   
				imul eax,burger                     
	       			add eax,ebx                   ;eax=total

               			mov bill,eax
               			
				cmp eax,1000
				jg greater
				jmp lesser
				
		greater:
				mov edx,offset msg5
				call writestring
				call writedec
				call crlf
				
				mov edx,offset msg3
				call writestring
				
				
				imul eax,10
				mov ebx,100
				mov edx,0
	               		div ebx
	               		call writedec     ;eax hold discount
	               		call crlf
	               		
	               		                  ;subtraction discount from bill
	               		mov discount,eax
	               		mov eax,bill
	               		sub eax,discount
	               
				mov edx,offset msg4
				call writestring
				call writedec
				call crlf
				jmp quit
		lesser:
				mov edx,offset msg4
				call writestring
				mov eax,bill
				call writedec
				call crlf
				jmp quit
		quit:
					
		
exit
main endp
end main
