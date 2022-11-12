no existe un secuencia precisa para los primos,
lo mejor es comprobar si un numero es primo
un numero es primo cuando solo es divisible por si mismo y uno
como se los divisores de un numero? descomposicion canonica


void principal()
    
    n = primeros n primos

    cuentaPrimos = 0

    numero = 1
    listaNumeros = lista




    mientras cuentaPrimos < n
        si(numeroEsPrimo(numero))
            listaNumeros.agrega(numero)
            cuentaPrimos++
        numero = numero + id


    muestra(listaNumeros)

fin principal

bool numeroEsPrimo(entero n)
    nDivisores = 0    

    para i = 1 mientras i < n luego i++

        si(n % i ==0 )
            nDivisores++

        si(nDivisores > 2)         
            devuelve falso

    if(nDivisores== 2)//1 y 
        devuelve true

fin numeroEsPrimo







principal()
    
    n = primeros n primos

    cuentaPrimos = 0

    numero = 1
    listaNumeros = lista

    inicia paralela
        id = id_hilo + 1

        mientras cuentaPrimos < n
            si(numeroEsPrimo(numero) AND (numero no esta en listaNumeros))
                listaNumeros.agrega(numero)
                cuentaPrimos++
            numero = numero + id

    fin paralela

    muestra(listaNumeros)

fin principal

bool numeroEsPrimo(entero n)
    listaDivisores

    inicia paralela
        id = id_hilo + 1

        para i = 1 mientras i < n/id luego i+=id

            si(n % i ==0 AND (i no existe en listaDivisores) )
                listaDivisores.agrega(i)

            si(listaDivisores.numeroElementos > 2)        
                devuelve falso

        if(listaDivisores.numeroElementos == 2)
            devuelve true

    fin paralela

fin numero es primo
