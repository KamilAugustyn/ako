#include <stdio.h>

float srednia_harm(float * tablica, unsigned int n);
float nowy_exp(float x);void suma_ab(char * , char*, char* );
void dodaj_SSE(float *, float *, float *);
void int2float(int * calkowite, float * zmienno_przec);
void pm_jeden(float * tabl);
int main()
{
	/*ZADANIE 5.1*/
	/*unsigned int n = 4;
	float* a = (float*)malloc(n*sizeof (float));
	float wynik;
	a[0] = 0.25;
	a[1] = 0.25;
	a[2] = 0.25;
	a[3] = 0.25;
	
	wynik = srednia_harm(a, n);
	printf("Srednia: %f", wynik);*/

	/*ZADANIE 5.2*/
	/*float a = 1.1;
	float wynik = nowy_exp(a);
	printf("Exp: %f", wynik);*/

	/*ZADANIE 5.3*/
	/*char liczby_A[16] = { -128, -127, -126, -125, -124, -123, -122,
		-121, 120, 121, 122, 123, 124, 125, 126, 127 };
	char liczby_B[16] = { -3, -3, -3, -3, -3, -3, -3, -3,
		3, 3, 3, 3, 3, 3, 3, 3 };
	char wynik[16];
	
	suma_ab(liczby_A, liczby_B, wynik);	*/

	/*ZADANIE 5.4*/
	//int a[2] = { -17, 24 };
	//float r[4];
	//// podany rozkaz zapisuje w pamiêci od razu 128 bitów,
	//// wiêc musz¹ byæ 4 elementy w tablicy
	//int2float(a, r);
	//printf("\nKonwersja = %f %f\n", r[0], r[1]);
	
	/*ZADANIE 5.5*/
	float tablica[4] = { 27.5, 143.57, 2100.0, -3.51 };
	printf("\n%f %f %f %f\n", tablica[0],
		tablica[1], tablica[2], tablica[3]);
	pm_jeden(tablica);
	printf("\n%f %f %f %f\n", tablica[0],
		tablica[1], tablica[2], tablica[3]);

	return 0;
}