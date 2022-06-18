;  $ $ $ $ $ 
;  $ $ $ $
;  $ $ $
;  $ $ 
;  $  




Include irvine32.inc
.data
     msg1 byte "Nested Loop",0
     msg2 byte "___________",0 
     temp dword 5
.code
Main Proc
 mov edx, offset msg1
 call writestring
 call crlf
 mov edx, offset msg2
 call writestring
 call crlf

      Mov ecx,5
outer:
      mov ebx,ecx
      mov ecx,temp
      inner:
            mov al, '$'
            call writechar
      
       loop inner
       call crlf
       dec temp
       mov ecx,ebx
 loop outer
       

call crlf
exit
main endp
end main