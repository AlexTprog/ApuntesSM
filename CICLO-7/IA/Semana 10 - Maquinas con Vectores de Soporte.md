# Introduccion a Maquinas con Vectores de Soporte - SVM

## Que es un SVM?
Support Vector Machine, son clasificadores derivados del aprendizaje estadistico. Ganaron popularidad luego de presentar mejores resultados que las redes neuronales para el reconocimiento de letras manuscrita usando pixeles como entrada.

## Que es clasificar?
Que wea puro concepto matematico que no entiendo :,v


# Agrupamiento K Means

## Que es k means?
Es una algoritmo de aprendizaje no supervisado que intentará agrupar grupos similares en sus datos.

Su objetivo es dividir los datos en grupos distintos de modo que las observacionees dentro de cada grupo sean similares.

## Como funciona el algoritmo k means?
1. Elejimos un numero de grupo "k"
2. Asigna aleatoriamente cada punto a un grupo
3. Hasta que los grupos dejen de cambiar, se repite lo sgte:
	1. Se calcula el centroide del grupo tomando el vector promedio de puntos en el grupo
	2. Asigne cada punto de datos al grupo para el cual el centroide es el mas cercano

## Como elegimos el mejor valor para K?
Una forma es usar el metodo del codo
1. Calculamos la suma de los errores al cuadrado (SSE) para algunos calores de k (por ejemplo 2,4,6,8)
2. SSE se define como la suma de la distancia cuadrada entre cada miembro del grupo y su centroide.
3. Si traza K contra el SSE, vera que el error disminuye a medida que k aumenta, esto se debe al aumento del numero de grupos .
4. La idea es elegir la k en la que el SSE disminuye bruscamentee.

**Efecto codo**
![[Pasted image 20220719002918.png]]

