.686
.XMM ; zezwolenie na asemblacjê rozkazów grupy SSE
.model flat
public _dodaj_SSE
.code
_dodaj_SSE PROC
 push ebp
 mov ebp, esp
 push ebx
 push esi
 push edi
 mov esi, [ebp+8] ; adres pierwszej tablicy
 mov edi, [ebp+12] ; adres drugiej tablicy
 mov ebx, [ebp+16] ; adres tablicy wynikowej
; ³adowanie do rejestru xmm5 czterech liczb zmiennoprzecin-
; kowych 32-bitowych - liczby zostaj¹ pobrane z tablicy,
; której adres poczatkowy podany jest w rejestrze ESI 13
; interpretacja mnemonika "movups" :
; mov - operacja przes³ania,
; u - unaligned (adres obszaru nie jest podzielny przez 16),
; p - packed (do rejestru ³adowane s¹ od razu cztery liczby),
; s - short (inaczej float, liczby zmiennoprzecinkowe
; 32-bitowe)
 movups xmm5, [esi]
 movups xmm6, [edi]
; sumowanie czterech liczb zmiennoprzecinkowych zawartych
; w rejestrach xmm5 i xmm6
 addps xmm5, xmm6

; zapisanie wyniku sumowania w tablicy w pamiêci
 movups [ebx], xmm5
 pop edi
 pop esi
 pop ebx
 pop ebp
 ret
_dodaj_SSE ENDP
end