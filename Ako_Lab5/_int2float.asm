.686
.XMM
.model flat

public _int2float
.data

.code
_int2float PROC
push ebp
mov ebp,esp
mov esi, [ebp + 8] 
mov edi, [ebp + 12] 

cvtpi2ps xmm0, qword ptr [esi]

movups  [edi], xmm0
pop ebp
ret
_int2float ENDP
end