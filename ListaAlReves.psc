Algoritmo ListaAlReves
	Definir lista Como Entero;
	Dimension lista[10];
	Definir i Como Entero;
	
	Para i <- 1 Hasta 9 Con Paso 1 Hacer
		Imprimir "posicion " 1 " : -Ingresar dato-";
		Leer lista[i];
	FinPara
	
	Para i <- 9 Hasta 1 Con Paso -1 Hacer
		Imprimir lista[i];
	FinPara
	
	Para i <- 1 Hasta 9 Con Paso -1 Hacer
		Imprimir lista[i];
	FinPara
	
FinAlgoritmo
