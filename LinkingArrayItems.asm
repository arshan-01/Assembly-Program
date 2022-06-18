INCLUDE Irvine32.inc

;declare the variables

SPACE = 32

startIndex = 1

.data

statement BYTE "The correct sequence of array: ",0

; declare the chars('H','A','C','E','B','D','F','G')

chars BYTE 48h,41h,43h,45h,42h,44h,46h,47h

sizeOfArray = ($ - chars)

links DWORD 0,4,5,6,2,3,7,0

outputArray BYTE sizeOfArray DUP(?)

.code

main PROC

; assign starting index

mov eax,startIndex

; assign offset of array chars

mov ebx,OFFSET chars

; assign the size of the array

mov ecx, sizeOfArray

; assign the offset of array links

mov edi,OFFSET links

; assign the offset of new array

mov esi,OFFSET outputArray

; call the traverseLink procedure

call traverseLink

; display the characters of new array

mov edx,OFFSET statement

call writeString

; assign the offset of new array

mov esi,OFFSET outputArray

; assign the size of the array

mov ecx, sizeOfArray

; call the procedure printArray to print the ordered array

call printArray

exit

main ENDP

traverseLink PROC

forLoop:

; get the character at index eax

mov dl,[ebx+eax]

; assign it to new array

mov [esi] , dl

; get the value at the next index

mov eax,[edi+eax*4]

; goto next location of new array

inc esi

; repeat until ecx=0

loop forLoop

ret

traverseLink ENDP

printArray PROC

forLoop:

; get the character at index eax

mov al,[esi]

; print the character

call WriteChar

; increament esi to get next character

inc esi

; print the space character

mov al,SPACE

call WriteChar

loop forLoop

call Crlf

ret

printArray ENDP

END main