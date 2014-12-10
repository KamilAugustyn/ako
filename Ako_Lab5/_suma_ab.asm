.686
.XMM
.model flat

public _suma_ab

.code
_suma_ab PROC
push ebp
mov ebp, esp

mov edi,[ebp+8]
mov esi,[ebp+12]
mov ebx,[ebp+16]

movups xmm5,[esi]
movups xmm6,[edi]

PADDSB xmm5,xmm6

movups [ebx],xmm5
pop ebp
ret
_suma_ab ENDP
end