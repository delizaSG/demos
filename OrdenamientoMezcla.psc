//OrdenamientoMezcla MERGE SORT;

	SubProceso Mezclar (lista_entrada, l,m,r)  // PRIMER SUBPROCESO   ---------MEZCLAR		
		IMPRIMIR "MEZCLAR (" l " " m " " r ")";
		 
		DEFINIR Nl COMO ENTERO;
		Definir Nr Como Entero;		
		
		Nl <- m - l;
		Nr <- r - m + 1;
		
		Imprimir  Nl " " Nr;
		
		Definir Ml Como Entero;
		Definir Mr Como Entero;
		
		Ml <- Nl;
		Mr <- Nr;
		
		Si Ml <= 0 Entonces
			Ml <- 1;			
		FinSi
		
		Si Mr <= 0 Entonces
			Mr <- 1;			
		FinSi
		
		Definir  lista_izquierda Como Entero;
		Dimension lista_izquierda[M1];
		
		DEFINIR lista_derecha COMO ENTERO;
		DIMENSION lista_derecha[Mr];
		
		DEFINIR i COMO ENTERO;
		DEFINIR j COMO ENTERO;
		
		// reasignar a 1
		PARA i <- 1 HASTA Nl - 1 CON PASO 1 HACER
			lista_izquierda[i] <- lista_entrada[l + i];
		FIN PARA
		
		// reasignar a 1
		PARA j <- 1 HASTA Nr - 1 CON PASO 1 HACER
			lista_derecha[j] <- lista_entrada[m + j];
		FIN PARA
		
		DEFINIR k COMO ENTERO;		
		i <- 0;
		j <- 0;
		k <- 1;
		
		MIENTRAS i < Nl Y j < Nr Y k <= r HACER
			SI lista_izquierda[i] <= lista_derecha[j] ENTONCES
				lista_entrada[k] = lista_izquierda[i];
				i <- i + 1;
			SINO
				lista_entrada[k] = lista_derecha[j];
				j <- j + 1;
			FIN SI
			k <- k + 1;
		FIN MIENTRAS
		
		// esta parte si no entendi jajaja
		MIENTRAS i < Nl Y k <= r HACER
			lista_entrada[k] = lista_izquierda[i];
			i <- i + 1;
			k <- k + 1;
		FIN MIENTRAS
		
		MIENTRAS j < Nr Y k <= r HACER
			lista_entrada[k] = lista_derecha[j];
			j <- j + 1;
			k <- k + 1;
		FIN MIENTRAS		
		
FinSubProceso 
// termina Mezclar 


SubProceso  Ordenar (lista_entrada, l,r) // SEGUNDO SUBPROCESO   ---------ORDENAR
	SI l < r ENTONCES
		DEFINIR m COMO ENTERO;
		m <- Redon( (l + r + 1) / 2 );
        
        Imprimir "L: " l " M: " m " R: " r; 
        
        Ordenar(lista_entrada, l, m - 1);        
        Ordenar(lista_entrada, m, r);        
        Mezclar(lista_entrada, l, m, r);
		
	FinSi
	
FinSubProceso

//OrdenamientoMezcla MERGE SORT;
Proceso OrdenamientoMezcla

DEFINIR N COMO ENTERO;

IMPRIMIR "Dame el tamaño de la lista a ordenar:";
LEER N;
DEFINIR lista COMO ENTERO;
DIMENSION lista[N];

DEFINIR i COMO ENTERO;
// Se cambia de 0 a 1
PARA i <- 1 HASTA N - 1 CON PASO 1 HACER
    IMPRIMIR "Dame el valor de la lista en la posición " i ":";
    LEER lista[i];
FIN PARA

Ordenar(lista, 0, N - 1);

PARA i <- 0 HASTA N - 1 CON PASO 1 HACER
    IMPRIMIR lista[i];
FIN PARA

FinProceso

	
