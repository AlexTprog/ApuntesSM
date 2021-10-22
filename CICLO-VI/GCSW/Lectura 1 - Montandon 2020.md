# Revelando los roles tecnicos de los usuarios de Github
[Link del Paper](https://drive.google.com/file/d/1VOTeTqWcxPsdZfGK5-zU_pk6tGreqRQk/view)

>Abstract: Se investigo usando un enfoque basado en machine-learning para indentificar de forma automatica las capacidades tecnicas de desarroladores de software. Se tienen en cuenta seis roles, backend, frontend, full-stack, mobile, devops, y data science.
>Como **RESULTADO** de los modelos se obtuco una precicison de 0.88 and 0.89 cuando se indentifican los seis roles.
>El **PROPOSITO** final es asistir a las compañias durante el proceso de contratacion, por ejemplo recomendando desarrolladores con la experiencia requeria para la posicion laboral

## Introduccion
En los ultimos años las compañias de IT han utilizado paginas como Github y Stack Overflow para contratar nuevos desarroladores. Fijandose principalmente en la tecnologia que manejen y en los roles que colocan en su perfil (backen,frontend, mobile,etc).

Se realizo la siguiente pregunta a reclutadores activos desde el 2018 en Stack Overflow.

`¿Utiliza GitHub con frecuencia en su proceso de contratación? Si es así, seleccione las opciones que mejor describan
su uso (puede marcar varias opciones).`

Se contactaron a 30 reclutadores y se recibieron 7 respuestas.
![[Pasted image 20211015083403.png]]

**Proposito del estudio**
En este estudio, investigamos un enfoque centrado en machine-learnig supervisado para identificar desarrolladores Los roles técnicos de los usuarios al considerar sus contribuciones a proyectos públicos de GitHub. Se entrajeron capacidades tecnicas de perfiles publicos en GitHub y proyectos.  Se identificaron seis roles tecnicos popupares **backend , frontend, full-stack , mobile, devops y data science**. Se envaluo el enfoque respondiendo a las siquientes preguntas.

- ¿Que tan precisos son los clasificadores de machine-learning para identificar los roles tecnicos de los desarroladores?
- ¿Cuales son las funcionalidad mas relevante para distinguir un rol tecnico?
- ¿Los roles tecnicos se influyen entre si durante su clasificacion?
- ¿Podemos identificar con eficacia a un desarrollador full stack?
![[Pasted image 20211019170511.png]]



## Diseño del Estudio
### Roles Tecnicos
"El proposito del paper es proponer un enfoque para revelear los roles tecnicos de los desarroladores de GitHub". Se uso la **encuentas anual para desarrolladores realizada por Stack Overflow en 2018** para seleecionar los roles, mas de 100 mil desarroladores de 183 paises fueron encuentados. 

Se estudiara los roles mas populares acorde a la encuenta Backend (58%), FullStack (48%), Frontend (38%), and Mobile (20%). Añadiendo tambien a DevOps (10.4%) and DataScience (7.7%) pues aparecen con frecuencia en las **posiciones de TI de tendencia superior**.
### Verdad Fundamental 
El modelo de machine-learning se basa en caracteristicas extraidas de Github, para clasificar funciones tecnicas de los desarroladores,se evito el uso de los datos de GitHub para generar la "Ground Truth" (verdad basica). Se considera los datos de Stack Overflow como una fuente confiable , despues de construir la "verdad basica" se busca identificar los roles tecnicos en github, solo considerando los datos de Github.

**Recopilacion de datos de Stack Overflow:** Se uso la herramienta SEDE (Stack Exchange Data Explorer) para recopilar usuarios de Stack Overflow con perfiles de github. Esta consulta arrojo 27 mil desarroladores. Luego se extrajo expresiones regulares, nombre de usuario de Github y con la herramienta Github GraphQL API5 se recuperaron los datos de Github. Se descarto a aquellos desarroladores con URL que apuntaba a nombres de usuario de Github no validos. Se termino con un total de 24 mil devs

**Etiquetado:** Se analizo la informacion del perfil de stack overflow y se etiqueto los reles de los desarroladores.

**Desarroladores Seleccionados:** 1802 desarroladores fueron etiquetados con al menos un rol tecnico. Se descarto a 140 (7.7%) desarrolladores con menos de cinco respositorios publicos de Github. Debido a que el modelo depende de que los desarroladores sean activos en Github para inferir sus roles. Por ultimo se incluyeron a 1662 devs en la ground truht que contiene 2022 asiganciones de roles.

![[Pasted image 20211019175916.png]]
### Coleccion de Datos
Se recopilaron los datos de Github para cada desarrolador. Estos se transformaron posteriormente en una lista de caracteristicas para alimentar nuestro modelo de prediccion. Se recopilaron principalmente datos textuales sbre los perfiles de los devs y los proyectos que poseen , los datos se dividen en 6 categorias distintas
- Lenguaje de programacion
- Biografia Corta
- Nombre de Proyectos
- Tema de Proyectos
- Descripcion de Proyectos
- Dependencia de Proyectos

![[Pasted image 20211019181018.png]]
### Funciones Selecionadas
Se realizaro los siguiente pasos para transformar los datos en un algoritmo de machine-learning

**Analisis Correlacional:**  Se descartaron 260 funciones para lenguajes de programacion. Generalmente estas correlaciones ocurrieron con caracteristicas pertenecientes al mismo idioma, pero cubriendo diferente dominios. Se descarto 202 dependencias de proyectos, incluidas las bibliotecas de proposito especificas y general.

**Bag-of-Words** Esta tecnica permite extraer caracteristicas del texto. A cada palabra se le asigna una caracteristica que describe su frecuencia en un documento. Se realizo esta tecnica sobre Short Bio, nombre de proyecto y descipciones de proyectos. Seleccionamos la configuración que presenta mejoras en la mayoría de las métricas evaluadas. 

Finamente se termino con 1471 caracteristicas incluidas 798 de la categoria dependencias de proyectos, 217 de lenguajes de programacion, 169 de descripciones de proyectos, 155 de nombres de proyectos, 69 para breve biografica y 63 de temas de proyectos

### Machine Learning Setup
**Problemas de multiples etiquetas** Esto ascocia una etiqueta a mas de una instancia. El conjunto de datos es un problema de clasificaion de cinco etiquetas, ya que hay cinco roles distintos en los que cada dev puede ser experto. 
![[Pasted image 20211019182840.png]]

Roles de backend y frontend. Del mismo modo, el desarrollador D2 está vinculado con Backend y DevOps. Por otro lado, D3 está asociado solo con DataScience.

**Problema de la transformacion:** se utilizaron dos tecnicas para tratar los datos con etiquetas multiples
- **Relevancia Binaria:** Esta tecnica divide el conjunto de datos originales en multiples problemas de clasificacion binaria. Luego dichos modelos se ajustan de forma independiente. Estos se pueden mostrar independientemente o agregados.
- **Cadenas de Clasificadores:** Vincula los clasificadores binarios a lo largo de una cadena de manera que cada clasificador utiliza los resultados de los anteriores en sus predicciones.

**Clasificador de aprendizaje automatico** Se decidio utilizar clasificadores random forest y naive bayes para entrenar y probar nuevos modelos para identificar los roles tecnicos de los usuarios de GitHub. 

**Metricas de Evaluacion** Se usaron 6 metricas para evaluar la calidad de las predicciones del modelo: precision, recuperacion, puntuacion F1, AUC, coeficiente de Jaccard y perdida de Hamming. 

## Resultados
**¿Qué tan precisos son los clasificadores de aprendizaje automático para identificar roles técnicos?**

La tabla 4a muestra los resultados generales de los primeros 3 roles usando relevancia binaria. El clasificador Random Forest presento mejores resultados en general, con una puntuacion de 0,77 para precision y 0,71 para AUC. Tanto Ramdon Forest como Naive Bayes desempeñaron significativamente mejor que la linea de base estratificada. Los resultados de linea de base son, por ejemplo solo 0.33 para precision.
![[Pasted image 20211019190824.png]]
![[Pasted image 20211019191905.png]]

> Random Forest presentó los mejores resultados en general, superando tanto a Naive Bayes como a la línea de base. Cuando se analizaron individualmente, DataScience y Frontend obtuvieron los mejores resultados para la mayoría de las métricas, mientras que Backend mostró los peores.

**¿Cuáles son las características más relevantes para distinguir los roles técnicos?**

## Compresion del rol FullStack
## Discusion
## Amenazas a la validez
## Trabajo relacionado
## Conclusion





