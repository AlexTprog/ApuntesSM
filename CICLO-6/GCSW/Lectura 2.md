## Recomendar etiquetas para pull request en GitHub


Objetivo: El objetivo del informe en proponer un enfoque que recomiende automaticamente etiquetas para pull request en GitHub

Metodo: Se realizo una encuesta sobre el uso de etiquetas en los pull request. Los resultados de la encuesta muestran que las etiquetas son útiles para desarrolladores para rastrear, buscar o clasificar pull request. Algunos encuestados piensan que es difícil elegir bien etiquetas y mantenga la coherencia de las etiquetas. El 60,61% de los encuestados piensa que una herramienta de recomendación de etiquetas es útil.

Resultados: Evaluamos la efectividad de FNNRec en 10 proyectos que contienen 68,497 solicitudes de extracción etiquetadas. Los resultados experimentales muestran que, en promedio, FNNRec supera al enfoque TagDeepRec y TagMulRec por 62,985% y 24,953% en términos de F1 - puntuación @ 3, respectivamente. 

Conclusión: FNNRec es útil para encontrar etiquetas adecuadas y mejorar el proceso de configuración de etiquetas en GitHub.

1. Introduccion

2. Recopilacion de antecedentes y datos

3. Encuesta sobre etiquetas

4. Encuesta sobre etiquetas Enfoque de recomendación de etiquetas

5. Evaluación

6. Amenazas a la validez

Las amenazas a la validez externa se relacionan con la generalización de nuestro estudio. 
Primero, nuestros resultados experimentales se limitan a 10 proyectos populares.
No podemos afirmar que se obtendrían los mismos resultados en otros proyectos. Nuestro trabajo futuro se centrará en la evaluación en otros proyectos.

7. Trabajo relacionado

## Conclusion

Primero realizamos una encuesta sobre el uso de pull request en GitHub.
Los resultados de la encuesta muestran que las etiquetas son útiles para que los desarrolladores realicen un seguimiento, buscar o clasificar solicitudes de extracción. 

Sin embargo, es difícil elegir bien etiquetas y mantenga la coherencia de las etiquetas. 

El 60,61% de los encuestados piensa que una herramienta de recomendación es útil. 

Para ayudar a los desarrolladores a elegir etiquetas, proponemos un enfoque FNNRec. Basado en títulos, descripción, rutas de archivo y contribuyentes, FNNRec utiliza redes neuronales de retroalimentación para calcular probabilidades y recomienda etiquetas. 

Evaluamos efectividad de FNNRec en 10 proyectos que contienen 68,497 solicitudes de extracción. Comparamos se acerca a TagDeepRec [10] y TagMulRec [8]. 

Los resultados mentales muestran que, en promedio, en 10 proyectos, FNNRec
realiza aproximaciones a TagDeepRec [10] y TagMulRec [8] en un 62,985% y 24,953% en términos de F1 - puntuación @ 3, respectivamente. 

FNNRec logra mejor rendimiento de recomendación que TagDeepRec y TagMulRec.

Por lo tanto, creemos que FNNRec es útil para encontrar etiquetas apropiadas y
mejorar el proceso de configuración de etiquetas en GitHub.


