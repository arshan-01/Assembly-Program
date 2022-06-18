

Include irvine32.inc
.data
     msg1 byte "Pattern using Nested Loop",0
     msg2 byte "----------------------------",0 
     cols dword 1
     save dword ?
.code
Main Proc
 mov edx, offset msg1
 call writestring
 call crlf
 mov edx, offset msg2
 call writestring
 call crlf

 

      Mov ecx,4
      mov eax,1
outer:
      mov ebx,ecx	;saving ecx for outer loop
      mov ecx,cols
      
    inner:   
            call writedec
            mov save,eax
            mov al, " "
            call writechar
      	    mov eax, save
      	    inc eax
    loop inner
       call crlf
       inc cols
       mov ecx,ebx
 loop outer
       

call crlf
exit
main endp
end main