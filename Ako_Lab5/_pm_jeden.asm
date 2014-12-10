.686
.XMM
.model flat

public _pm_jeden
.data
float dd 1.0,1.0,1.0,1.0

.code
 _pm_jeden PROC
 push ebp
 mov ebp,esp
 mov esi,[ebp+8]
 mov ebx, OFFSET float
movups xmm5,[esi]
movups xmm6, [ebx]

addsubps xmm5,xmm6
movups [esi],xmm5

 pop ebp
 ret
 _pm_jeden ENDP
end