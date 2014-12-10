.686
.model flat

.data

.code
_nowy_exp PROC
push ebp
mov ebp,esp
mov ecx,19h

finit
fld1
fldz
fld1
fld1 
fld dword ptr [ebp+8]

; st(0) = licznik, st(1) = mianownik, st(2) = suma, st(3) - pomocniczy, st(4) - nr wyrazu sumy,
sumuj:
fst st(3) ; wrzucenie licznika do pomocniczego
fdiv st(0),st(1) ; podzielenie, wynik w "liczniku"
fadd st(2),st(0) ; dodanie wyniku do sumy
fxch st(3) ; przywrocenie licznika
fmul st(0),st(0) ; licznik*licznik(x*x)
fxch st(3) ; licznik w pomocniczym
fld1 
fadd st(5),st(0) ; inkrementacja nr wyrazu sumy
fstp st(0)
fxch st(4)
fst st(4)
fmul st(0),st(1) ; pomnozenie mianownika
fst st(1) ; wartosc mianownika w st1

fxch st(3) ;przywrocenie licznika na miejsce st(0)
loop sumuj
fstp st(0)
fstp st(0)
pop ebp
ret
_nowy_exp ENDP
end