// DEFINIR EL BLOQUE CON NOMBRE SIN ESPACIOS PARA EVITAR ERRORES
Proceso OrdenamientoBurbuja
	
	// DEFINIR VARIABLE PARA CAPTURAR EL TAMANIO DEL ARREGLO
	DEFINIR N COMO ENTERO;
	// GUARDA LA CADENA QUE SE VA A IMPRIMIR Y LA MUESTRA
	IMPRIMIR "Dame el tamaño de la lista a ordenar:";	
	// CAPTURA E IMPRIME EN PANTALLA EL VALOR DADO AL ENTERO DEFINIDO
	LEER N;
	
	// DEFINE LA VARIABLE LISTA Y SE ASIGNA EL VALOR CAPTURA EN 'N'
	DEFINIR lista COMO ENTERO;
	DIMENSION lista[N];
	// DEFINIR VARIABLE QUE SERVIRA PARA GUARDAR UN ARREGLO
	DEFINIR i COMO ENTERO;
	
	// CREA EL CICLO QUE SE EJECUTARA HASTA TOPE DEL TAMANIO DEL ARREGLO - 1
	PARA i <- 0 HASTA N - 1 CON PASO 1 HACER
		// GUARDA LA CADENA QUE SE VA A IMPRIMIR Y LA MUESTRA JUNTO CON EL VALOR CAPTURADO EN 'I'
		IMPRIMIR "Dame el valor de la lista en la posición " i ":";
		// CAPTURA E IMPRIME EN PANTALLA EL VALOR DADO EN 'I' Y LO INSERTA AL ARREGLO  
		LEER lista[i];
	FIN PARA
	
	// COMIENZA ORDENAMIENTO BURBUJA
	// SE DEFINEN 2 VARIABLES ENTEROS PARA CONTROLAR LAS PIVOTES PARA CADA BURBUJA
	DEFINIR burbuja_actual COMO ENTERO;
	DEFINIR burbuja_siguiente COMO ENTERO;
	// DEFINIR OTRO ENTERO QUE FUNCIONARA COMO CONTADOR
	DEFINIR j COMO ENTERO;
	
	// Iteramos N veces, en cada una aseguramos la burbuja más grande al final
	// CREA EL CICLO QUE SE EJECUTARA HASTA TOPE DEL TAMANIO DEL ARREGLO - 1 
	// PARA EMPEZAR A EVALUAR CADA ELEMENTO DEL ARREGLO ORIGINAL
	PARA i <- 0 HASTA N - 1 CON PASO 1 HACER
		
		// Recorremos cada pareja (actual y siguiente)
		// desde `0` hasta `N - 2` (las parejas serán [0, 1], [1, 2], ..., [N-2, N-1])
		// CREA EL CICLO QUE SE EJECUTARA HASTA TOPE DEL TAMANIO DEL ARREGLO - 2
		// PARA EMPEZAR A EVALUAR POR PAREJAS ASIGNANDO NUEVOS ARREGLOS
		PARA j <- 0 HASTA N - 2 CON PASO 1 HACER
			
			// Recuperamos el valor de la burbuja actual y la siguiente
			// INICIAMOS EL ARREGLO PIVOTE
			burbuja_actual = lista[j];
			// ASIGNAMOS EL SIGUIENTE ELEMENTO USANDO EL ELEMENTO SIGUIENTE AUMENTANDO EL CONTADOR + 1
			burbuja_siguiente = lista[j + 1];
			
			// Comprobamos si la burbuja actual es mayor a la siguiente
			// VALIDAMOS LOS VALORES ASIGNADOS EN LOS PIVOTES			
			SI burbuja_actual > burbuja_siguiente ENTONCES
				// Intercambiamos las burbujas en la lista
				// SI EL VALOS DEL PIVOTE J ES MAYOR AL PIVOTE J + 1 SE HACE UN INTERCAMBIO
				lista[j] = burbuja_siguiente;
				lista[j + 1] = burbuja_actual;
			FIN SI
			
		FIN PARA
		
	FIN PARA
	
	// Imprimimos la lista, ahora ordenada
	PARA i <- 0 HASTA N - 1 CON PASO 1 HACER
		
		IMPRIMIR lista[i];
		
	FIN PARA
FinProceso
