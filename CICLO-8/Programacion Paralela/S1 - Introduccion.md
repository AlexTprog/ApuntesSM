# Semana 1

- [Semana 1](#semana-1)
  - [Introduccion](#introduccion)
    - [Concurrencia](#concurrencia)
    - [Paralelismo](#paralelismo)
  - [Ley de Moore](#ley-de-moore)
    - [Limitaciones](#limitaciones)
  - [Modelos computacionales](#modelos-computacionales)
    - [Modelo de computacion RAM](#modelo-de-computacion-ram)
    - [Modelo de computacion PRAM](#modelo-de-computacion-pram)
  - [Memoria Compartida](#memoria-compartida)
  - [Modelos de Memoria](#modelos-de-memoria)
    - [Jerarquia de Memoria](#jerarquia-de-memoria)
    - [Niveles de Memoria](#niveles-de-memoria)
    - [Rendimiento de Procesador vs Memoria](#rendimiento-de-procesador-vs-memoria)
  - [Metologia de Threading](#metologia-de-threading)
  - [Libreria de Threading](#libreria-de-threading)

## Introduccion

### Concurrencia

Un sistema es llamado concurrente si soporta dos o mas acciones en progreso al mismo a tiempo

Diferentes partes de un programa se ejecutan independientemente.

### Paralelismo

Paralelismo dos o mas operaciones en ejecucion al mismo tiempo

Diferentes partes de un programa se ejecutan al mismo tiempo, se hace uso de los multiples procesadores de un computador.

En general se espera que dos procesadores hagan el mismo trabajo en la mitad de tiempo
Se busca paralizar para mejorar rendimientos y tiempos de ejecucion

![Paralelismo y programas](../img/Pasted%20image%2020220918104513.png)

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

### Modelo de computacion RAM

![Modelo RAM](../img/Pasted%20image%2020220917152532.png)

### Modelo de computacion PRAM

> ![Modelo PRAM](../img/Pasted%20image%2020220917152953.png)
Todos los CPU ejecutran la misma instruccion al mismo tiempo.

## Memoria Compartida

|*Symmetric MultiProcessor (SMP)*|*Non Uniform Address Space Multoprocessor (NUMA)*|
|-|-|
|Todos los procesadores son tratados de la misma forma y la memoria es accesible para todos.|Las secciones de memoria tienen diferente "costo" de acceso|

## Modelos de Memoria

La memoria debe estar lista para poner a disposicion la informacion al procesador

Muchos mecanismos buscan atender el problema de la diferencia de rendimientos entre el procesador y la memoria.

### Jerarquia de Memoria

![Arriba los de mayor capaciad y Mas lentos](../img/Pasted%20image%2020220917160419.png)

Arriba los de mayor capaciad y Mas lentos

### Niveles de Memoria

![niveles de memoria](../img/Pasted%20image%2020220917162519.png)

### Rendimiento de Procesador vs Memoria

![Rendimiento](../img/2022-11-04T21:35:08,472707620-05:00.png)

## Metologia de Threading

1. **Analisis:** se debe tener un buen cojunto de entradas/salidas; reconocer que partes pueden ser paralelizadas, se pueder usar algun **profiler** para reconocer hotsposts
2. **Diseño e implementacion**
3. **Test:** Algunos bugs pueden esconderse detras de cierto orden de ejecucion paralelo, pueder ser una tarea no trivial. Algun print o debug breakpoint podria esconder el bug, los punteros (si se usa algun lenguajes con acceso a ellos) pueden compilar mas aun la situacion
4. **Tuning:** comenzar con codigo serial optimizado. Usualmente hay threads en espera, la carga computacional no esta debidamente balanceada, o hay demasiado overhead. Al mejorar un poco iterar con testing.

- En general es mejor hacer las versiones secuencial y luego las paralelas

- **Go** soporta operaciones concurrentes de forma nativa

## Libreria de Threading

- C: fork unistd.h solo en sistemas tipo unix
- C++ STL threads
- Soprote en Linux, UNIX, etc: POSIX threads
- Soporte en MS Windows: Windows.h
