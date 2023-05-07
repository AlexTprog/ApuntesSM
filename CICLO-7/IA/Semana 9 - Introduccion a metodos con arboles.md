# Metodos con arboles
## Que son ?
- Son un grupo poderoso de algoritmos por ej: arboles de decision, bosques aleatorios y arboles reforzados con gradiente

Ejemplo de juego:
Dado un juego de tenido todoss los sabados con un amigo, a veces aparece mi amigo y a veces no, podemos hacer un seguimiento en base a las caracteristicas del clima.
Played = mi amigo aparecio y juegamos
![[Pasted image 20220706182048.png]]

## Como creamos un arbol de decisiones?
Con el caso presentado anteriormente podemos predecir de manera intuitiva lo siguiente (similar a sistemas expertos)
![[Pasted image 20220706182324.png|700]]
- Nodos: Divbision de valor de atributos
- Aristas: Resultado de una ivision al siguiente nodo
- Raiz: Primer nodo
- Hojas: Nodos terminales que predicen el resultado

## Bosques aleatorios
Se puede mejorar el rendimiento haciendo uso de muchos arboles con una muestra aleatoria con caracteristicas elegidas para la division.

- Se elige una muestra aleatoria de caracteristicas para cada arbol en cada division
- Trabajo tanto para tareas de clasificacion como de regresion

### Como funcionan?
La determinación del promedio de cantidades altamente correlacionadas no reduce significativamente la varianza.

Al omitir aleatoriamente las características candidatas de cada división, Random Forests "descorrelaciona" los árboles, de modo que el proceso de determinación de promedios puede reducir la varianza del modelo resultante.

### Arboles reforzados con gradiente
El aumento de gradiente involucra tres elementos:
- Una función de pérdida para ser optimizada.
	- Es la función/ecuación que utilizará para determinar qué tan lejos están sus predicciones.
	* Ej: la regresión puede usar un error cuadrado y la clasificación puede usar la pérdida logarítmica. (No tendremos que lidiar con esto directamente usando Python)
- Un aprendiz débil para hacer predicciones.
	- Los árboles de decisión se utilizan como el aprendiz débil en el aumento de gradiente.
	- Es común restringir a los aprendices débiles: tal como un número máximo de capas, nodos, divisiones o nodos de hoja.
- Un modelo aditivo para agregar aprendices débiles para minimizar la función de pérdida.



