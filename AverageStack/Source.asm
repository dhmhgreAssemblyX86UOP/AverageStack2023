TITLE Average value estimation of  array
Include Irvine32.inc


.data
array DWORD 1,2,3,4
arraysize = ($-array)/size dword

aver dword ?

.code
; Function Average ( int sizearray, int *array, *average)
Average PROC
; prologue
push ebp
mov ebp,esp
sub esp,4
pushad




;epilogue
popad
mov esp,ebp
pop ebp
ret 12
Average ENDP

main PROC


push offset aver
push offset array
push arraysize
call average


exit
main ENDP
END main
