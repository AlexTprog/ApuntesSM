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

Tabla 4 ![[Pasted image 20211019190824.png]]
Figura 4 ![[Pasted image 20211019191905.png]]

> Random Forest presentó los mejores resultados en general, superando tanto a Naive Bayes como a la línea de base. Cuando se analizaron individualmente, DataScience y Frontend obtuvieron los mejores resultados para la mayoría de las métricas, mientras que Backend mostró los peores.

### **¿Cuáles son las características más relevantes para distinguir los roles técnicos?**

En la figura 4 los colores y las formas identifican la categoria de cada caracteristica (lenguajes de programacion, nombres de proyectos, descripciones de proyectos, temas de proyectos, etc). Ademas, se anoto la categoria asociada a cada caracteristica. Finalmente se normalizo el ranking con respecto a la caracteristica con mayor valor. Las funciones asociadas con los lenguajes de programacion predominan en gran medida para los cinco roles, que representan 38 de 50 funciones. **En otras palabras, el 66% de las características relevantes de los lenguajes de programación tienen en cuenta las contribuciones reales de los desarrolladores.**

La segunda mas frecuente es la biografia corta, seguida de las descripciones de proyectos y los nombres de proyectos. Sin embargo la biografia corta aparece como la caracteristica mas importante en tres roles. la mayoria de estas caracteristias describen directamente el rol que se analiza. Sorprendentemente, los temas de los proyectos y las dependencias de los proyectos no están presentes en ninguna posición de clasificación.

Cuando analizamos los resultados de cada función, vemos que DataScience tiene las características más relevantes. Se destacan seis características con más del 3% de tasa de relevancia: científico (Bio) (6.5%), Jupyter Notebook (total) (5.4%), Jupyter Notebook (tasa) (5.1%), datos (Bio) (5.0%) , R (total) (4,4%) y R (tasa) (3,5%). Aunque estos valores pueden parecer
bajo, nuestro modelo incluye 1,662 funciones. Además, estas características son bastante específicas del campo DataScience; de ellos solo Jupyter Notebook (total) también está presente en otros roles (Frontend).

Para Mobile, Mobile (Bio) se destaca con 3.0% de tasa de relevancia, seguido de Swift (tasa) (2.0%) y Java (tasa) (1.6%). Más específicamente, tres de cada 10 funciones están asociadas directamente a la plataforma de desarrollo de iOS (Swift (tasa), Swift (autor) e ios (desc.)). Asimismo, otras tres funciones están vinculadas a la plataforma Android: Java (tarifa), Android (nombre) y Java (total). Las funciones relacionadas con el desarrollo de iOS y Android representan el 4,5% y el 4,3% de las 10 funciones enumeradas, respectivamente.

Las características relacionadas con los lenguajes de programación son predominantes para los cinco roles. En el rol de DataScience, se destacan seis características: científico (Bio), Jupyter Notebook (total), Jupyter Notebook (tasa), datos (Bio), R (total) y R (tasa). Por otro lado, se presentan menos funcionalidades de tanta importancia en otros roles: devops (Bio) para DevOps, mobile (Bio) para Mobile, JavaScript (autor) para Frontend. Por último, ninguna característica se destaca de las demás para Backend.

### **¿Los roles técnicos se influyen entre sí durante la clasificación?**
Como se explico anteriormente usamos las cadenas de clasificadores (cc) para lidiar con las clasificaciones multiples. Al usar estar tecnica los clasificadores binarios se ordenan de tal manera que cada modelo usa predicciones previas como entrada.
Se ejecuto la tecnica de cc con Ramdon forest para todas las combinaciones de roles posibles, la figura 5 presenta los resultados en seis graficos diferentes, uno por cada metrica considerada en el estudio.  El eje horizontal representa cada configuracion con cc y el eje vertical el numero de puntos que tiene cada metrica.

Los resultados revelan que la inclusión de predicciones de roles técnicos en el proceso de clasificación no aporta mejoras significativas. En general, obtuvimos mejoras menores para la recuperación, Jaccard y F1 en el costo de precisión. Estos resultados son más consistentes cuando Mobile se clasifica primero, seguido de Backend o Frontend.

Figura 5 ![[Pasted image 20211022103720.png]]
## Compresion del rol FullStack
A diferencia de los roles analizados anteriormente, los desarrolladores de FullStack se definen por su capacidad para trabajar en toda la pila de aplicaciones. De hecho, la industria ve a un desarrollador FullStack como alguien que puede realizar tanto tareas de frontend como backend. 

Debio a esta particular se decidio estudiar el rol de full stack.Para corregir la inconsistencia generada al no incluir a los devs fullstack en la ground truth  se necesito adaptar el proceso de etiquetado para considerar a cada desarrollador de Fullstack como un experto en roles de backend y frontend . Después de aplicar el mismo proceso descrito anteriormente, este conjunto de datos extendido termina con 1567 características: 819 de la categoría Dependencias de proyectos, 219 de Lenguajes de programación, 212 de Descripciones de proyectos, 146 de Temas de proyectos, 101 de Nombres de proyectos y 70 de Short Bio.
### **¿Con qué eficacia podemos identificar a los desarrolladores de pila completa?**
La siguiente tabla presenta los resultados de clasificacion Random Forest usando el enfoque de relevancia binaria incluyendo fullstack. Ademas, incluimos los resultados para cada uno de los cinco roles anteriores. Las métricas informaron resultados significativamente mejores después de incluir a los desarrolladores de FullStack en la verdad básica.

El clasificador propuesto funcionó muy bien al identificar a los desarrolladores de FullStack (precisión = 0,99). Además, los desarrolladores de FullStack tienen un efecto colateral interesante, ya que contribuyeron a mejorar los resultados de
tanto Backend (+ 25%) como Frontend (+ 9%).

Tabla 5
![[Pasted image 20211022112016.png]]

## Discusion
### Implicaciones
Se resalto la importancia de desvelar roles tecnico, especificamente se realizaron dos estudios preliminares para determinar la importancia del tema. Primero, inspeccionamos las publicaciones de la plataforma stackover flow jobs y se descubrio que el 64% de las ofertas son para uno de los seis roles tecnicos estudiados en este documento.
Segundo se realizo una encuesta con los reclutadores tecnicos para comprender que caracteristicas buscan en los perfiles de Github. Cinco de cada seis reclutadores indicaron que buscan pistas para discernir los roles tecnicos de los candidatos.

El enfoque de machine learning propuesto tiene la mayor parte de su uso en los procesos de contratacion. En este contexto, al contratar desarroladores de software, los reclutadores pueden beneficiarse de los roles tecnicos inferidos por los modelos propuestos. Este uso puede ocurrir de dos formas principales, identificando proactivamente a los desarrollares con las habilidades que se esperan de los puestos de trabajo existentes. En segundo lugar evaluando de forma reactiva el perfil de los candidatos que ya han postulado a los puestos de trabajo existentes.

### Notas sobre precision y recuperacion
El enfoque utilizado mostro su eficacia al revelar los roles tecnicos de los desarroladores de software dados sus perfiles de Github.

La precision del enfoque responde a la pregunta "¿Qué proporción de identificaciones positivas fue realmente correcta?" mientras que el recuerdo  "¿Qué proporción de positivos reales se identificó correctamente?" En el contexto de los reclutadores tecnicos defendemos que la precision mas importante que el recuerpo ya que se neceista identificar un pequeño grupo de candidatos para los puestos existentes es decir no es necesario ubicar a absolutamente todos los desarrolladores que se encunetran en github.
### Analisis Manual
Se inspecciono manualmente los perfiles de los desarrolladores para analizar sus predicciones y poder comprender mejor los resultados de clasificacion propuestos. Especificamente en tres escenarios distintos: Clasificaciones correctas (verdadero positivo) clasificado incorrectamente en un rol dado (falso positivo) y no clasificado en un rol determinado a persar de  serlo (falso negativo)

#### Escenario positivo verdadero
El enfoque predijo correctamente los roles de los desarroladores de este grupo. En este escenario  por ejemplo se inspecciono al dev D844 clasificado como desarrolador movil. D844 posee 22 proyectos publicos de GitHub la mayoria de ellos relacionados con el desarrollo movil; cuatro proyectos tienen swift como su principal lenguaje de programacion y otros cinco tiene la palabra Android en su descripcion. Ademas, otros cuatro proyectos se implementan en Java y contienen expermientos soobre animacion en graficos en Android. En su sitio web personal se describe a si mismo como Ingeniero de Android e IOS-App Maker.

#### Escenario falso positivo
Este grupo contiene devs predichos erroneamente como expertos en cualquiera de los roles analizados. Inspeccionamos el perfil de D1341, no es un devops pero se predijo como tal. En su perfil de linkein se indentifica como data engineer y tambien menciona que trabaja en este puesto desde 2016. recibio la mayoria de respaldos de python, data science y machine learning. Por el contrario, tiene pocos respaldos en tecnologias especificas de devops.

#### Escenario falso negativo
En este escenario ols devs no estan clasificados como expertos de un rol. Por ej  D68, quien es desarrolador frontend, pero no fue indentificado como tal. En su biografia se describe a si mismo como un ingeniero frontens. En github este desarrolador realizo 1018 contribuciones durante el año pasado donde el 51% de ellos fueron comprometidos .Sin embargo este dev es propietario de solo 12 proyectos, cicon de ellos directamente relacionado con tecnilogias frontend. Los restantes se implementarios en otros lenguajes. En otras palabras, los lenguajes de programación y la breve biografía que usa D68 son las únicas características directamente relacionadas con Frontend, pero su presencia no fue suficiente para etiquetarlo correctamente.
## Amenazas a la validez
Los siguientes problemas son posibles amenazas para nuestros resultados:
- **Funciones de Destino:** Se analizaron seis roles tecnicos. Aunque representan un numero restringido de roles, se seleccionaron los mas populares, segun una encuesta reciente a gran escala realizada por Stack Overflow. Ademas cubren el 64% de los trabajos enumerados  recientemente en los trabajos de stack overflow, como se meciona en la introduccion.
- **Verdad Fundamental:** El conjunto de datos a analizar esta restringido a devs que tengan perfiles tanto en StackOverflow como en github . La verdad Fundamentan se basa en las actividades publicas de los desarroladores en Github. Representan un subconjunto de todas las actividades de varios desarrolladores. Esta limitacion puede aumentar los falsos negativos en escenarios particulares. Por ejemplo, un desarrolador es movil, pero los datos disponibles publicamente lo caracterizan como desarrolador backend. Una posible direccion para abordar este problema podria ser el uso de las actividades de los desarrolladores a partir de fuentes de datos adicionales. Se siguio un proceso atuomatizado para etiquetar a los 2284 devs en la verdad fundamental.
- **Clasificacion de etiquetas multiples:** Se pueden aplicar otras tecnicas de clasificacion en problemas de etiquetas multiples por ej laber powerset. Sin embargo se usaron dos tecnicas para la calisficacion de multiples etiquetas. Ademas de dos algoritmos de clasificacion conocidos como: Random Forest y Naive Bayes. A pesar de eso el trabajo futuro deberia considerar otros algoritmos de clasificacion como XGBoost.
- **Umbrales:** Se reconoce que los resultados dependen de diferentes umbrales que se utilizan por ej, para descartar funciones correlacionadas (Pearson >= 0,7) para limitar la cantidad de funciones utilizadas en las descripciones de los proyectos ([0,04, 0,15]). , nombres de proyectos ([0.01, 0.25]), temas de proyectos ([0.01, 0.25]) y biografía breve ([0.01, 0.20]), en general se usaron umbrales conservadores. Se experimento tambien con otros valores umbral en todo los casos y seleccionamos los que mejores resultados presentaron.

## Trabajo relacionado
Se aborda la experiencia de los devs de software en dos puntos principales. El primero se conoce como la experiencia en el campo, que aborda la experiencia en proyectos especificos, ignorando los antecedentes tecnicos de los desarrolladores.  La segunda se conoce como experiencia tecnica, esta se centra en revelar las habilidades tecnicas de los desarroladores.
### Experiencia en el campo
Se baso en los desarrolladores que compromenten la actividadr para estimar los truck-factors (metrica de autoria de codigo fuente). Ademas se probo su enfoque contra 119 sistemas de codigo abierto para identificar sus princiaples habilidades. Se utilizaron modelos Markov ocultos multidimensionales para predecir el comportamiento de contribucion de los desarrolladores. Para cada desarrollador de un proyecto se recopilan datos y los clasifican en clases principales y secundarias. 
Previamente se creo un modelo basado en las reglas para obtener la experiencia de los desarroladores en funcion de la frecuencia de sus commits. El modelo vincula una lista de categorias extraida de las estructura de los directorios de cada proyecto a cada desarrollador en funcion de la frecuencia de los cambio que realizan en cada directorio. Da silva introdujo una tecnia para aprovechar la experiencia de los artefactos de sistema a nivel de motodo de codigo fuente. Tenga en cuenta que los trabajos de esta subsección tienen como objetivo recomendar a los desarrolladores que mantengan proyectos específicos.
### Experiencia Tecnica
La mayor parte del trabajo relacionado aborda el problema de la experiencia tecnia hacia tecnologias de terceros. En un trabajo reciente se propuso dos metodos para evaluar el nivel de experiencia de 575 devs en tres bibliotecas de JS. Se uso estadisticas recopiladas por la actividad en GitHub (frecuencia de commits, code churn,etc). Para clasificarlos en tres niveles novato - intermedio - experto. 

Teyton propueso un motor de busqueda basado en cambios sintacticos, para desarroladores con experiencia en Java, Linux , Apache etc.
Wan desarrollo un modelo probabilistico para evaluar habilidades de codificacion de los desarrolladores en tecnologias de software. 
Greene Fischer propuso una herramienta que extrae y presenta los datos de habilidades de devs de Github, incluidas habilidades en lenguajes de programacion bibliotecas y frameworks.
Otros autores propones hacer coincidir las tecnologias que utilizan los desarrolladores en tareas especificas. Por ejemplo Hauff y Gousios extrajeron la actividad del usuario de github y anuncios de trabajo para recomendar que los desarrolladores coincidan con los trabajos abiertos. Aprovechan un modelos de espacio vectorial, utilizando datos de perfiles extraidos de github y anuncios de trabajo.
enkataramani y col. [64] propuso un modelo que, al usar la información de actividad de los desarrolladores en GitHub, recomienda preguntas de Stack Overflow para que las respondan estos desarrolladores.
> Por el contrario, nuestro trabajo se centra en detectar la experiencia de los desarrolladores en un nivel de granularidad más alto, es decir, roles técnicos.
## Conclusion
La creciente complejidad y relevancia de los sistemas de software modernos esta fomentando la especializacion de los desarrolladores de software en tecnologias particulares. Como resultado al contratar desarrolladores las empresas generalmnete buscan trabjadores que puedna trabajar en areas especificas. 
En el articulo se describe un enfoque centrado en el machine learningpara predecir seis roles tecnicos populares (backend-frontend-mobile-fullstack-datascience-devops).
Usando caractersiticas extraidas de los perfiles publicos de usuarios de Github se obtiveron buenos resultados para identificar los seis roles en términos de precisión (0.88) y AUC (0.89). Por el contrario, observamos resultados más bajos para DevOps y Mobile con respecto a la recuperación, por ejemplo, 0.06 y 0.34.

> Este estudio puede ofrecer una buena asistencia a los reclutadores tecnicos ya que en su contecto la identificacion de los candidatos correctos es mas relevante. 

Planeamos extender nuestra investigación en las siguientes líneas: 
- (a) mejorar el proceso de clasificación agregando nuevas características (por ejemplo, marcos) y probando otros clasificadores (por ejemplo, XGBoost [17]); 
- (b) validar nuestros resultados (y el uso práctico de nuestro enfoque) a través de una encuesta a gran escala con desarrolladores reales, e 
- (c) implementar un complemento de navegador para informar las funciones técnicas de los perfiles existentes de GitHub.


