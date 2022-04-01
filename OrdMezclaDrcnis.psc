//PROCESO QUE REALIZA DIVISION DEL ARREGLO EN VARIOS MAS PEQUENIOS
SUBPROCESO Mezclar (lista_entrada, l, m, r)	
	IMPRIMIR "MEZCLAR (" l " " m " " r ")";	
	DEFINIR Nl COMO ENTERO;
	DEFINIR Nr COMO ENTERO;	
	Nl <- m - l;
	Nr <- r - m + 1;
	
	IMPRIMIR Nl " " Nr;	
	DEFINIR Ml COMO ENTERO;
	DEFINIR Mr COMO ENTERO;	
	Ml <- Nl;
	Mr <- Nr;
	
	SI Ml <= 0 ENTONCES
		Ml <- 1;
	FIN SI
	
	SI Mr <= 0 ENTONCES
		Mr <- 1;
	FIN SI
	
	DEFINIR lista_izquierda COMO ENTERO;
	DIMENSION lista_izquierda[Ml];	
	DEFINIR lista_derecha COMO ENTERO;
	DIMENSION lista_derecha[Mr];	
	DEFINIR i COMO ENTERO;
	DEFINIR j COMO ENTERO;
	
	PARA i <- 0 HASTA Nl - 1 CON PASO 1 HACER
		lista_izquierda[i] <- lista_entrada[l + i];
	FIN PARA
	
	PARA j <- 0 HASTA Nr - 1 CON PASO 1 HACER
		lista_derecha[j] <- lista_entrada[m + j];
	FIN PARA
	
	DEFINIR k COMO ENTERO;	
	i <- 0;
	j <- 0;
	k <- l;
	
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
	
FIN SUBPROCESO

//  ARRAY LISTA ORIGEN, O ,N-1
SUBPROCESO Ordenar ( lista_entrada, l, r )	
	// INICIA PROCESO Y VALIDA EL CONTADOR CONTRA EL TAMNIO DE LA LISTA ORIGEN 
	// SE BUSCA DIVIDIR LA LISTA ORIGEN EN UN ARREGLO NUEVO MAS PEQUENIO
	// SI EL CONTADOR ES MENOR AL TAMNIO DE LA LISTA ORIGEN SIGNIFICA QUE HEMOS TERMINADO EL BARRIDO
	SI l < r ENTONCES	
		//SE BUSCA EL INDICE QUE SEA EL NUMERO MAS PROXIMO A LA MITAD DEL TAMANIO DE LA LISTA ORIGEN
		// Buscamos el ?ndice central m
		DEFINIR m COMO ENTERO;	
		// EL REDONDEO SE APLICA AL SIGUIENTE NUMERO MAYOR
		m <- Redon( (l + r + 1) / 2 );	
		
		// IMPRIMIR VALORES PARA VERIFICAR
		Imprimir "L: " l " M: " m " R: " r; 	
		
		Ordenar(lista_entrada, l, m - 1);		
		Ordenar(lista_entrada, m, r);		
		Mezclar(lista_entrada, l, m, r);	
		
	FIN SI	
FIN SUBPROCESO

// PROCESO PRINCIPAL SOLICITA DATOS DE ENTRADA Y DISPARA EL METODO 
Proceso OrdenamientoMezcla
	
	//DEFINIR EL TAMANIO DE LA CADENA-ARREGLO- PRINCIPAL
	DEFINIR N COMO ENTERO;    
    IMPRIMIR "Dame el tamaño de la lista a ordenar:";
    LEER N;
	
    DEFINIR lista COMO ENTERO;
	// CREAR LA LISTA 
    DIMENSION lista[N];	
    DEFINIR i COMO ENTERO;	
	// SE DEBE CONGIFURAR QUE ACEPTE 0 EN EL INICIO DEL CONTADOR
    // Capturamos el valor de cada posicion en la lista
    PARA i <- 0 HASTA N - 1 CON PASO 1 HACER		
        IMPRIMIR "Dame el valor de la lista en la posicion " i ":";
		// CAPTURA EL NUMERO DIGITADO Y LO AGREGA AL ARREGLO
        LEER lista[i];		
    FIN PARA	
	
	//INICIA EL ORDEN RECIBE EL ARREGLO DE LA LISTA ORIGEN
	// UN CONTADOR EN CERO 
	// Y EL TOPE DEL TAMANIO DEL AREGLO DE LA LISTA ORIGEN MENOS 1 PORQUE SE COMIENZA EN CERO
	// SUBPROCESO Ordenar ( lista_entrada, l, r )
	Ordenar(lista, 0, N - 1);	
	
	// Imprimimos la lista, ahora ordenada
    PARA i <- 0 HASTA N - 1 CON PASO 1 HACER
        IMPRIMIR lista[i];
    FIN PARA
	
FinProceso