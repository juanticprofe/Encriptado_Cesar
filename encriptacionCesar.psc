//codigo modificado

Subproceso cifrado=cesar(cadenadetexto,salto)
	dimension alfabeto(27)	
	cifrado=""
	
	ponletras(alfabeto)
	para i=1 hasta longitud(cadenadetexto) hacer
		letra=subcadena(cadenadetexto,i,i)
		si letra=" " entonces
			cifrado=concatenar(cifrado," ")
		SiNo
			pos=buscar(letra,alfabeto)
			si (i mod 2 = 0) Entonces
				pos=pos-salto
				si pos<1 entonces 
					pos = 27 + pos
				FinSi
			SiNo
				pos=pos+salto
				si pos>27 Entonces
					pos = pos mod 27
				FinSi
			FinSi
			cifrado=concatenar(cifrado,alfabeto(pos))
		FinSi
	FinPara
FinSubProceso

Subproceso posicion=buscar(letra,alfabeto)
	posicion=0
	repetir
		posicion=posicion+1
	Hasta Que alfabeto(posicion)=letra
FinSubProceso


Subproceso ponletras(lista por referencia)
	abecedario="ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
	para i=1 hasta 27 hacer
		lista(i)=subcadena(abecedario,i,i)
	FinPara
FinSubProceso


Algoritmo Encriptando
	Escribir "ALGORITMO DE ENCRIPTACIÓN CESAR"
	Escribir "Vamos a encriptar una frase completa, puede llevar espacios y minúsculas. No debe llevar acentos"
	Escribir "Introduce la palabra a buscar"
	Leer textonormal
	Escribir "En esta versión, vamos a utilizar 3 saltos de desplazamiento"
	textocifrado=cesar(mayusculas(textonormal),3)
	Escribir "Nuestro texto encriptado sería: ", textocifrado
FinAlgoritmo
