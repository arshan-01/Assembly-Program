include irvine32.inc
.data
msg byte "Enter 1st Number= ",0
msg1 byte "Enter 2nd Number= ",0
msg2 byte "Addition is:..",0
msg3 byte "Subtraction is:..",0
msg4 byte "Multiplication is:..",0
msg5 byte "Division is:..",0
var dword ?
var1 dword ?

.code
main proc
;How to perform Arithmetic operations on two numbers with displaying msg

mov edx,offset msg
call writestring
call readint

mov var,eax

mov edx,offset msg1
call writestring
call readint

mov var1,eax

;Addition Section

mov eax,var
add eax,var1
mov edx,offset msg2
call writestring
call writeint
call crlf

;Subtraction

mov eax,var
sub eax,var1
mov edx,offset msg3
call writestring
call writeint
call crlf

;Multiplication Section
;Here Two Registers will be used

mov eax,var
mov ebx,var1
mul ebx
mov edx,offset msg4
call writestring
call writeint
call crlf

;Division Section
;Here two registers will be used for division

mov edx,0 ;to store the remainder of division
mov eax,var
mov ebx,var1
div ebx
mov edx,offset msg5
call writestring
call writeint

;to display remainder
call crlf ;to enter new line
mov eax,edx
call writeint

exit
main ENDP
End Main