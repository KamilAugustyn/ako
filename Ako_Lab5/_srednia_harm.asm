.686
.model flat
.data
jeden dd 1.0
.code
_srednia_harm PROC
push ebp
mov ebp,esp
mov ecx, [ebp+12]
mov ebx, [ebp+8]
mov edx, ecx
finit
fldz
fldz
sumuj:

fld dword ptr [ebx]
fld jeden
add ebx,4
fadd st(3),st(0)
fdiv st(0),st(1)
fadd st(2),st(0)
fstp st(0)
fstp st(0)
loop sumuj
fdiv st(1),st(0)
fstp st(0)

pop ebp
ret
_srednia_harm ENDP
end