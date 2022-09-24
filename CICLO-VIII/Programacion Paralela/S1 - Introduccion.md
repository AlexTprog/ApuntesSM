# Introduccion
**Concurrencia**
Un sistema es llamado concurrente si soporta dos o mas acciones en progreso al mismo a tiempo

Diferentes partes de un programa se ejecutan independientemente.

**Paralelismo**
Paralelismo dos o mas operaciones en ejecucion al mismo tiempo

Diferentes partes de un programa se ejecutan al mismo tiempo, se hace uso de los multiples procesadores de un computador.

En general se espera que dos procesadores hagan el mismo trabajo en la mitad de tiempo
Se busca paralizar para mejorar rendimientos y tiempos de ejecucion

![[Pasted image 20220918104513.png]]

## Ley de Moore

>"El numero de transistores incorporados en un chip sera duplicado cada dos años"
>*- Gordon Moore - Intel co-founder*

Debia a los grandes avances en el hardware los desarrolladores han tenido a olvidar performance.

La mayoria de lenguajes de programacion no fueron pensados en alto rendimiento ni en paralelismo.

Lo cual es un problema, pues arquitecturas paralelas son mas eficientes en terminos de energia. (Mattson)
![[Pasted image 20220918104527.png]]
### Limitaciones
El avance de memorias no ha sido tan rapido como el de procesadores

La frecuencia de los procesadores ha incrementado mas rapido que las frecuencias de las memorias

Por ello la latencia de acceso a memoria es un problema.

El incrementar las frecuencias en los procesadores hace que su comsumo de energia incremente. 73% de incremento de potencial solo da un 13% en performance

El calor generado (por ley de joule) debe ser disipado

## Modelos computacionales
**Modelo de computacion RAM**
![[Pasted image 20220917152532.png]]
**Modelo de computacion PRAM**
![[Pasted image 20220917152953.png]]
**Memoria Compartida**
Symmetric MultiProcessor 

## Modelos de Memoria
### Jerarquia de Memoria
![[Pasted image 20220917160419.png]]

Arriba los de mayor capaciad y Mas lentos

### Niveles de Memoria
![[Pasted image 20220917162519.png]]


## Metologia de Threading
1. Analisis: se debe tener un buen cojunto de entradas/salidas; reconocer que partes pueden ser paralelizadas, se pueder usar algun **profiler** para reconocer hotsposts
2. Diseño e implementacion
3. Test: Algunos bugs pueden esconderse detras de cierto orden de ejecucion paralelo, pueder ser una tarea no trivial. Algun print o debug breakpoint podria esconder el bug, los punteros (si se usa algun lenguajes con acceso a ellos) pueden compilar mas aun la situacion
4. Tuning: comenzar con codigo serial optimizado. Usualmente hay threads en espera, la carga computacional no esta debidamente balanceada, o hay demasiado overhead. Al mejorar un poco iterar con testing.

- En general es mejor hacer las versiones seriales y luego las paralelas


## Libreria de Threading
- C: fork unistd.h solo en sistemas tipo unix
- C++ STL threads
- Soprote en Linux, UNIX, etc: POSIX threads
- Soporte en MS Windows: Windows.h
