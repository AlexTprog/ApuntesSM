# Gestion de la Ingenieria de Software

La gestion de la Ingenieria de software se relaciona directamente con los requisitos del software, la gestion de la configuracion del software, el Proceso de Ingeniera del Software y la Calidad del software

La gestion de la ingeniera del software es la aplicacion de actividades de gestion planificacion, coordinacion, mediciones, monitoreo e informes. Permite asegurar un desarrollo y mantenimiento del software disciplinado y cuantificado

En cierto sentido deberia ser posible gestionar la ingeniera del software de la misma manera que cualquier otro proceso complejo, sin embargoexisten aspectos especificos de los productos software y los procesos del ciclo de vida del software que complican esta gestion efectiva.

- Los clientes con frecuencia no aprecian la complejidad de la ingenieria de software en especifico el impaco que produce sus cambios de requisitos
- Es casi inevitable que los procesos de la ingeniera de software generen la necesidad de nuevos o modificados requisitos del cliente.
- El software es construido mediante un proceso iterativo en vez de una secuencia de tareas cerradas
- La ingenieria de software incorpora aspectos de creatividad y disciplina, es complicado mantener un balance entre ambos.
- El grado de novedad y complejidad del software son extremadamente altos.

Las actividades de la Ingenieria de Software tiene 3 niveles: 
**Gestion organizacional y de Infraestructura**-> Gestion de politicas organizativas y estandares, Gestion del personal
**Gestion de proyectos** -> Construccion de Artefactos, Gestion de la calidad del proyecto, Gestion del coste del proyecto, Gestion de las comunicaciones del proyecto.
**Programa de planificacion y control de mediciones** -> Actividades que se emprenden para asegurar que los procesos se realizan de manera consistente. Asignacion de valores y etiquetas a los apsectos de la Ing de software (productos,procesos y recursos).


## **Temas**
![[Pasted image 20211103083447.png]]

- Iniciacion y Alcance: La decision de inciar un proyecto de ingenieria de software
- Planificacion del proyecto software: Prepararse para una ingenieria de software exitos desde una perspectiva de gestion
- Promulagacion del proyecto software: Trata actividades de la gestion de ingeniera de software ampliamente aceptadas
- Repaso y evaluacion: Que buscan asegurarse de que el software es satisfactorio
- Cierre: Afronta actividades de post-realiacion de un proyecto de ingeniera de software
- Medicion de la ingeniera de software: que trata del desarrollo e implementacion eficaz de los programas de medicion en las organizaciones de ingenieria del software


### Iniciacion y Alcance
Se centra en determinar los requisitos del osftware por medio de varios metodos de induccion y la valoracion de la viabilidad del proyecto desde distintos puntos de vista. Luego de establecer la viabilidad, la siguiente tarea sera la especificacion de la validacion de requisitos y del cambio de procedimientos.
#### Determinacion y Negociacion de Requisitos
Los metodos para la obtencion de los requisitos, analisis, especificacion y validacion deben seleccionarse y aplicarse, tomando en cuenta la perspectiva del cliente.
Esta actividad nos permite fijar fronteras visibles para el conjunto de tareas que se empreden.

| Requisitos     | Metodos               |
| -------------- | --------------------- |
| Obtencion      | Observacion           |
| Analisis       | modelado casos de uso |
| especificacion | Refinamiento          |
| Validacion     | prototipado           |

#### Analisis de Viabilidad
Se debe asegurar que estan disponibles la capacidad y recursos adecuados en forma de personas, pericia, medios, infraestructura y apoyo para cerciorar de que el proyecto pueda completarse con exito de un modo oportuno y rentable. A menudo esto requiere un calculo del esfuerzo y del coste basado en los metodos adecuados.

> se puede utilizar una matriz de requisitos y capacidades, tambien tecnicas de analogia 

#### Proceso para la revision de los requisitos
Los cambios son inevitables, es vital que desde el inicio se llegue a un acuerdo con el cliente acerca de los medios por los que se repasaran y revisaran el alcance y requisitos. Esto implica que el alcance y los requerimientos no seran estaticos, sino que pueden volverse a revisar en puntos predeterminados segun se vaya desenvolviendo el proyecto. Si se aceptan los cambios debera usarse entonces algun tipo de analisis de trazabilidad y riesgos para determinar el impacto de esos cambios.

### Planificacion de un Proyecto Software
Este proceso esta regulado por el alcance y requisitos. En esta etapa se evaluan los procesos del ciclo de vida del software y se selecciona el modelo mas apropiado.

Se planea el propio proyecto en la forma de una descomposicion jerarquica de tareas,se especifician y caracterizan entregables asociados de cada tarea en terminos de calidad y de otros atributos en la linea de los requisitos declarados.

#### Planificacion del proceso
Se selecciona un modelo adecuado de ciclo de vida del software (prototipado ,evolutivo o en espiral) y la adaptacion y despliege del ciclo de vide del software.

Se seleccionan metodos y herramientas pertinentes. A nivel del proyecto se utilizan metodos y herramientas adecuados para descomponer el proyecto en tareas, con entradas asociadas resultados y condiciones de finalizacion de obra. Esto influye en las deciciosnes sobre el horario y estructura de la organizacion de alto nivel del proyecto

#### Determinar los entregables
Se especificar y caracteriza el producto de cada tareas (diseño arquitectonico, informe de inspeccion etc). Se evalun los compoenentes a reutilizar de desarrollos anteriores o de utilizar componentes del softrware del mercado. Se planifica la utilizacion de terceras personas y se sleccionan los proveedores.

#### Esfuerzo calendario y estimacion de costes
Partiendo de la descomposicion de tareas, entradas y resultados, se determina el rango de esfuerzo esperado que se requiere para cada tarea utilizando un modelo de estimacion calibrado basado en datos historicos sobre el esfuerzo empleado, cuando esten disponibles y sean pertinenetes, u otros metodos como el juicio de un especialista. Se elabora el cuadro de tareas con los horarios de inicio, duraciones, horario de finalizacion (diagrama pert). Los requisitos de recursos (personas,herramientas) se traducen en estimacion de costos.

#### Reparto de Recursos
Los equipos medios y personas se asocian a las tareas programadas, incluyendo la asignacion de responsabilidades de cara a su completa realizacion. Esta actividad esta regulada y limitada por la disponibilidad de los recursos y por su uso optimo. Podemos usar un diagrama de gannt

#### Gestion de Riesgos
Se identifica y analizan los riesgos aquillo que puede salir mal, como y por que y sus posibles consecuencias. Se realiza un valoracion critica de riesgos , cuales son los mas significativos y sobre cuales podemos hacer algo. La mitigacion de riesgos y planitificacion de contingencias  se basa en formular una estrategia para controlar los riesgos y gestionar perfiles de riesgo. Los metodos de valoracion de riesgos. Tambien se deben determinar las politicas de abandono de proyectos en conversaciones con otros clientes.

#### Gestion de la calidad
Las caracterisiticas de calidad deben de ser determinadas durante la especificacion de requisitos del software.
El limite de la adhesion a la calidad se coloca de acuerdo a las expectativas del cliente. Los procedimientos que hace referencia a lo largo del proceso a la SQA en curso a lo largo del proceso y a la verificacion y validacion del producto tambien se especifican en esta fase por ejemplo las revisiones tecnicas e inspecciones

#### Gestion de planes
Se planifica como se gestionara el proyecto los informes, la supervision y el control del proyecto. Los informes, la supervision y el control del proyecto deben encajar en el proyecto de ingenieria del software y la realidad de proyecto. Todo esto debe reflejarse en los artefactos que se usaran para gestionarlos

### Promulagacion del Proyecto Software
Se ejecutan los planes y se promulgan los procesos incluidos en los planes. Esta etapa se centra en la adhesion a los planes.

#### Implementacion de Planes
Se emprenden actividades del proyecto segun el horario. Se utilizan los recursos planificados y se producen entregables (doc de diseño arqu,  casos de prueba)

#### Gestion de Contratos con proveedores
Prepara y ejecuta acuerdos con los proveedores, supervisar la actuacion del proveedor y aceptar sus productos incorporandolos cuando sean adecuados.

#### Implementacion de procesos para medir
Se promulga el proceso de medicion junto con el proyecto de software, asegurandose  de que se recojan datos utiles y relevantes.

#### Proceso de supervision
Se evalua continuamente y a intervalos predeterminados la adhesion a los diferentes planes. Se analizan los resultados y las condiciones de acabado de cada tarea. Se evaluan los entregables en terminos de las caracteristicas que ellos requieres. Se investigan el consumo de fuerzas, la adhesion a horarios y los costes.

Se modelan y analizan los datos de medicion. Se emprende el analisis de variacion basado en la desviacion actual de los resultados y valores esperados. Esto puede darse en forma de desbordamiento de costes, equivocaciones en el horario y similares. Se lleva a cabo la identificacion de la desviacion y analisis de ka calidad y otros datos de medicion .

#### Proceso de Control
Los resultados de las actividades de supervision del proceso proporcionan la base sobre la que se toman las decisiones para actuar. Se puede hacer cambios al proyecto cuando se juzgue oportuno y cuando se modele y gestiones el impacto y los riesgos asociados a estos. Esto puede tomar la forma de una accion correctiva, puede que involucre la incorporacion de contingencias para evitar sucesos semejantes. 

En algunos casos puede llevar al abandono del proyecto. En todos los caso se adhiere al control de cmabios y a los procedimientos de gestion de configuracion del software se documentan y comunican decisiones a todos los implicados importantes, se repasan los planes y si es necesario se revisan .

#### Informes
En periodos especificos y concertados se informa la adhesion a los planes dentro de la organizacion (por ejemplo al comite de direccion de cartera del proyecto) y a los contratistas externos (clientes, usuarios). Informes de esta naturaleza debe orientarse hacia una adhesion global en opsiscion a los informes detallados que se requieren frecuentemente dentro del equipo de proyecto

### Revision y Evaluacion
Puntos criticos del proyecto, se evalua el progreso global hacia el logro de los objetivos prejiados  y la satisfaccion de los requisitos del cliente.
#### Determinar la satisfaccion de los requisitos
Uno de los objetivos principales consiste ne lograr la satisfaccion del cliente este objetivo debe ser evaluado de manera formal y perdiodica. Se deben indentificar variaciones de las expectativas y se llevan a cabo acciones adecuadas.

#### Revisar y evaluar la ejecucion
Las revisiones periodicas de lo realizado dirigidas al personal del proyecto proporcionan detalles sobre la probabilidad de ser fiel a los planes asi como sobre las posibles areas de dificultad. Se evaluan los distitnos metodos , herramientas y tecnias empleadas para ver su eficacion  y adecucacion.
### Cierre
El proyecto llega a su fin cuando todos los planes y procesos implicados se han promulgado y completado en esta fase.

#### Determinar el cierre
Se confirman la finalizacion de las tareas y los criterios para lograr un acabado satisfactorio. Todo los productos planificados han sido entregados con caractersiticas aceptales.
 
 Se marca y confirma la satisfaccion de los requisitos. Estos procesos por lo general involucran a todos los clientes y acaban con la documentacion y la aceptacion del cliente y con los informes de cualquier otro problema pendiente conocido

#### Actividades de cierre
Tras haberse confirmado el ciere, se archivan los materiales del proyecto de acuerdo a los metodos, localizacion y duracion pactados con los clientes. Se emprende el analisis post-proyecto. Se inicia un proyecto post mortem con el fin de analizar los temas, problemas y oportunidades encontrados durante el proceso particularmente por medio de revisiones y evaluaciones. Todo esto para incrementar los conocimientos de la organizacion y los intentos de mejora.

### Medidas de la Ingeniera de Software
La importancia de la medicion y su papel en las buenas practicas de gestion esta ampliamente reconocido y es tal que su importancia solo puede aumentar en los proximos años. Medir con eficacia se ha convertido en una de las piedras angulares de la madurez de una organizacion

#### Establecer y sostener el compromiso de medir
- Aceptar los requisitos de medicion. Cada medicion debe estar guiada por los objetivos organizacionales e impulasada por un conjunto de requisitos de medicion establecidos por la organizacion
	- Definir el alcance de la medicion establecer la unidad organizacional, area funcional o un solo proyecto
	- Comprometer a la direccion y el personal de medicion.
- Destinar recursos para la medicion. La asigancion de recursos y el comrpomiso del personal son funamentales para el exito de la medicion. Se debe proporcionar herramientas y apoayo para dirigir el proceso de un modo perdurable
#### Planificar el proceso de medicion
- Caracterizar la unidad Organizacional.
- Identificar las necesidades de la informacion
- Seleccionar las mediciones
- Definir la recoleccion de datos, el analisis y los procedimientos para informar.
- Definir los criterios para evaluar los productos de informacion.
- Revisar, aprobar y proporcionar recursos para las tareas de medicion
	- El plan de medicion debe ser revisado
	- Hay que hacer que los recursos esten disponibles                          
#### Realizar el proceso de medicion
- Integrar los procedimientos de medicion los procesos pertinentes. 
- Recoletar datos
- Analizar datos y desarrollaro productos de informacion
- Comunicar los resutlados
#### Evaluar las medidas
- Evaluar los productos de informacion
- Evaluar el proceso de medicion
- Identificar las mejoras potenciales.


# Proceso de la Ingenieria de Software
## Introduccion
Podesmo dividir el proceso de la ingeniera de software en dos niveles. 
El primero engloba las actividades tecnicas y de gestion dentro de los procesos del ciclo de vida del software realizadas durante la adquisicion, desarrollo, mantenimiento y retirada del software. 
El segundo es un meta-nivel que se refiere a la definicion, implementacion, valoracion, medicion, gestion, cambios y mejoras de los procesos mismo del ciclo de vida del software. 

Los procesos de ingenieria de software itnene importancia no solo para las grandes organizaciones. Mas aun, las actividades relacionadas con los procesos pueden ser, y han sido realizadas con exito por pequeñas organizaciones, equipos e individuos.

El objetivo de gestionar los procesos del ciclo de vida del software es implementar nuevos o mejores procesos en las practicas actuales sean estos individuales, proyectos u organizacionales.

## Temas
![[Pasted image 20211105215118.png]]

### Proceso de Implementacion y Cambios
Se centra en los cambios organizacionales. Describe la infraestructura, actividades, modelos y consideraciones practicas de un proceso de implementacion de cambios..

#### Infraestructura del Proceso
Establece procesos de ciclo de vida del software, es necesario que la adecuada infraestructura este en su lugar, es decir que los recursos esten al alcance de la mano , que se hayan asignado responsabilidaddes.
Puede ser necesario establecer comites para que supervisen el proceso de ingeniera de software.
Los dos principales tipos de infraestructura son el grupo de proceso de ingenieria de software y la creadora de experiencia

- Grupo de proceso de la ingeniera de software .- Se pretende que el SEPG sea el foco central del proceso de mejoras de la ingenieria del software y tiene cierto numero de responsabilidades en terminos de inicializacion y mantenimiento.

- Creadora de Experiencia .- Separa organizacion del proyecto de la organizacion de las mejoras. La primer se centra en el mantenimineto del software, mientras que la EF se ocupa del proceso de mejoras de la ingenieria del sfotware.

#### Ciclo de gestion del proceso de software
Consiste en cuatro actividades  secuenciales en un ciclo iterativo.
- Establecimiento de la infraestructura de un proceso consiste en establecer un acuerdo con el proceso de implementacion y cambios y levantar una infraestrutucra (recursos y responsabildiades).
- Planificacion es comprender los objetivos de las empresas actuales y las necesidades del proceso del individuo, proyeto u organizacion, para identificar sus fuerzas y flaquezas y elaborar un plan para el proceso de implementacion y cambios.
- Implementacion consiste en llevar a cabo el plan, desplegar nuevos procesos y/o cambiar procesos ya existentes
- Evaluacion se encarga de descubrir lo bien que se ha llevado a cabo la implementacion y cambios y si se materializaron o no los beneficios esperados. Los resultados se utilizaran mas adelante como entradas para ciclos subsiguientes.

#### Modelos para el proceso de implementacion de cambios
- Paradigama de Mejoras de la Calidad
- Modelo IDEAL

La evaluacion del proceso de implementacion y de los resultados de los cambios puede ser cualitativo o cuantitativo.
El proceso de implementacion y cambios constituye una instancia del cambio organizacional. Los esfuerzos de mas exito en los cambios organizacionales tratan del cambio como un proyecto en toda regla, con planes adecuados monitoreo y revisiones.

### Definicion de procesos
Un proceso puede ser un procedimiento, una politica  o un estandar. Los procesos de un ciclo de vida del software se definen por muhcas razones, que incluyen incrementar la calidad del producto, facilitar el entendimiento y la comunicacion humana, apoyar las mejoras de los procesos, apoyar la gestion de los procesos suministrar una guia automatizada para los procesos y suministrar un apoyo para ejecuciones automatizadas. Los tipos de definiciones de procesos requeridos dependeran al menos parcialmente de las razones para la definicion

#### Modelos de ciclo de vida del software
Sirven como definiciones de alto nivel de las fases que tienen lugar durante el desarrollo. no estan enfocadas a ofrecer definiciones detalladas sino mas bien a soresaltar las actividades clave y sus interdependencias. Alguno ejemplos de modelos de ciclo de vida del software son:
Modelo cascada, modelo de prototipado, desarrollo evolutivo, entrega incremental/iterativa, modelo espiral, modelo de software reutilizable y la sintesis de software automatizado
#### Proceso del ciclo de vida del software
Los procesos del ciclo de vida del software tienden a ser mas detalladas que los modelos de ciclo de vida del software. Sin embargo, los procesos del ciclo de vida del software no pretenden ordenar sus procesos en el tiempo. Los procesos del ciclo de vida del software peuden ordenarse para tener cabida en cualquiera de los modelos de ciclo de vida del software.

Algunos procesos del ciclo de vida del software ponen enfasis en entregas rapidas y en una fuerte participacion del susuario, como por ejemplo metodos agiles.

#### Notaciones para las definiciones de Procesos
Se pueden describir los procesos en diferentes niveles de abstraccion. Varios elemnetos de un proceso pueden definirse, por ejemplo, actividades , productos (artefactos) y recursos. Los marcos detallados que estructuran los tipos de informacion requeridos.
El ingeniero de software deberia ser consciente de las siguientes aproximaciones al asunto: diagramas de flujo de datos en los terminos de la finalidad del proceso y de salidas, como una lista de procesos descompuestos en actividades constituyentes y tareas definidas.
#### Adaptacion del proces
Los procesos predefinidos incluso los estandarizados debe adaptarse a las necesidades locales, por ejemplo, el contexto organizacional, el tamaño del proyecto, los requisitos reguladores, las practicas industriales y las culturas corporativas. Alguno estandares tales como IEEE/EIA12207 contienen mecanismos y recomendaciones para lograr la adaptacion
#### Automitizacion
Las herramientas automatizadas o apoyan la ejecucion de las definiciones del proceso o aportan una guia a los humanos que desarrollan los procesos definidos. En los casos en los que se realiza el analisis de un proceso, algunas herramientas permiten distintos tipos de simulaciones.
Existen herramientas que apoyan cada una de las notaciones de la definicion del proceso citados anteriormente. Estas herramientas pueden ejecutar las definiciones de procesos para otorgar una ayuda automatizada a los procesos actuales o en algunos casos para automatizarlos plenamente.

### Valoracion del Proceso
Valoracion del proceso se lleva a cabo utilizando tanto un modelo de valoracion como un metodo de valoracion. En algunas instancia, el termino "aprecicaion" se utiliza en vez de valoracion y el termino "evaluacion de la capabilidad" se utiliza cuando la apreciacion tiene como proposito la adjudicacion de un contrato.

#### Modelo de valoracion del proceso
Un modelo de valoracion recoge lo que se reconoce como buenas practicas. Estas practicas pueden referirse solo a las actividades tecnicas de ingenieria del software o puede que se refieran tambien por ejemplo a actividades de gestion de ingenieria de sistemas y tambien de gestion de recursos humanos.

La ISO/IEC 15504 define un modelo ejemplar de valoracion y de requisitos de 
conformidad con otros modelos de valoracion. Los modelos de valoracion especificos disponibles y en uso son SW-CMM , CMMI y Bootstrap.

Existen dos arquitecturas generales para un modelo de valoracion que ofrecen diversas conjeturas sobre el orden en el que los procesos han de ser valorados: continua y escalonadamente. Son muy diferentes entre si y la organizacion deberia evaluarlos sopesandolos para determinar cuales son los mas pertinentes para sus necesidades y objetivos.

#### Metodos de valoracion del proceso
Para poder realizar una valoracion,se necesita segir un metodo especifico de valoracion para producir un resultado cuantitativo que caracteriza la capacidad del proceso.
El metodo de valoracion CBA-IPI por ejemplo se centra en la mejora de proceso, y el metodo SCE se centra en evaluar la capacidad de los proveedores. Las actividades realizadas durante una valoracion la distribucion de esfuerzos en estas actividades asi como la atmosfera durante una valoracion son muy diferentes dependiendo de que sean para una mejora o para la adjudicacion de un contrato.

### Medicion de los Productos y Procesos
La aplicacion de mediciones a la ingenieria de software puede resultar compleja y particularmente en terminos de metodos de modelado y analisis, existen varios aspectos de las mediciones en la ingeniera del software que resultan fundamentales y que estan a la base de los muchos procesos de medicion y analisis mas avanzados. Mas aun los esfuerzos para mejorar el logro de procesos y productos solo pueden valorarse si se ha establecido un conjunto de medidas de base.
#### Medicion del proceso
Este termino significa que se recoge analiza e interpreta informacion cuantitativa sobre le proceso. Se utiliza la medicion para identificar las fuerzas y las debilidades de los procesos y para evaluar los procesos despues de que hayan sido implementados y/o cambiados.
La medicion de proceso tambien puede servir para otros propositos. Por ejemplo, la medicion del proceso es util para gestionar un proyecto de ingenieria del software. Aqui, el enfoque esta en la medicion del proceso con el proposito de la implementacion y cambio del proceso.
No todo proceso va a tener un impacto positivo en todas sus salidas. Por ejemplo, la introduccion de inspecciones del software puede reducir esfuerzos y costes de las pruebas, pero puede incrementar el tiempo de espera si cada inspeccion introduce largas esperas a causa de haber calendarizado.
![[Pasted image 20211106193501.png]]
#### Medicion de productos software
La medicion del producto softwate incluye principalmente la medicion del tamaño, la estructura y la calidad del proyecto
- Medicion del tamaño
El tamaño de un producto software es evaluado a menudo mediante medidas de longitud (lineas de codigo,paginas de documentos ) o funcionalidad (puntos de funcion de una especificacion). El estandar IEEE proporiciona los principios de medicion funcional del software. Los estandares internacionales para la medicion funciona del software incluyen el ISO/IEC.
- Medicion de la Estructura
Un rango diverso de medidas de la estructura de un producto software puede ser aplicado a un nivel bajo y alto de diseño y codigo del artefacto para asi reflejar el control del flujo, flujo de la informacion, anidacion, estructuras de control y estructura e interaccion modular.
- Medicion de la Calidad
Algunas de las dimensiones de la calidad son probables que requieran medidas cualitativas mas que cuantitativas. Los modelos ISO de la calidad del Software y las medidas relacionadas son descritos en la ISO 9126

#### Calidad de Resultados de la Medicion
Los resultados de la medicion de la calidad (precision, reproducibilidad, reptibilidad,convertibilidad, medicion aleatoria de errores) son primordiales para la medida de los programas para proveer resultados efectivos y estables. Las caracteristicas clave de los resultados efectivos y estables. Las caracteristicas claves de los resultados de la medicion y la calidad realcionada con los instrumetos de medicion definidos.
#### Modelos de Informacion del Software
Nosostros podemos hacer posibles la construccion de modelos usando la informacion y el conocimiento. Estos modelos existen para anlizar clasificar y predecir. Tales modelos necesitan ser evaluados para asegurar que los niveles de precicion son suficientes y que sus limitaciones son conocidas y entendidas. El refinamiento de los modelos que tiene lugar durante y despues de que los proyectos sean completados es otra actividad importante
#### Tecnicas de Medicion de Procesos
Las tecnicas de medicion deben ser usadas para anlizar los procesos de ingenieria de software y para la identificacion de las fortalezas y debilidades. Esto puede ser desempeñado para iniciar la implementacion y cambio del procesos o para evaluar las consecuencias de la implementacion y el cambio en el proceso.

Las tecnicas de medicion de procesos han sido clasificacdas dentro de dos tipos generales: analiticas y puntos de referencia. Los dos tipos de tecnicas puedes ser usados conjuntamente ya que estan basados en distiton tipo de informacion
# Herramientas y Metodos de la Ingeniera de Software


## Introduccion
Las Herramientas con los que cuenta la ingeniera de software son principalmente software de ordenador para ayudar a los procesos de ciclo de vida del software. Estos permiten automatizar acciones repetidas bien definidas, reduciendo la carga de trabajo. 

Los metodos de la ingenieria de software imponen la estructura a la actividad de la ingenieria de softwre con el objetivo de hacer la actividad sistematica. Por lo general proporcionan la notacion y el vocabulario, procedimientos para realizar tareas identificables, y directrices para comprobar tanto el proceso como el producto.

## Herramientas de la Ingenieria de Software

### Herramientas de Exigencias de Software
- H de modelado: Usados para la obtencion, analisis, especificacion y validez de las exigencias.
- H capacidad de rastreo: Se usan cada vez mas por que la complejidad del software aumentan. Son relevante en otros procesos de ciclo de vida del software.

### Herramientas de Diseño de software
Permiten para crear y comprobar diseños de software. Hay una variedad de tales instrumentos, por ende una variedad de notaciones de diseño de software y metodos. No existe una division consistente

 ### Herramientas de Construccion de software
 Producen y traducen la representacion de un programa que es suficientemente detallado y explicito para permitir la ejecucion de maquina.
 - Redactores del programa: Crean y modifican programas y los documentos asociados con ellos. Puede ser el texto de uso general o redactores de documento.
 - Compiladores y generadores de codigo: Hay una tendecia actual para integrar compiladores con redactores de programas para proporcionar ambien de programa integrados. 
 - Interpretes: Proporcionan la ejecucion de software para la emulacion
 - Depuradores: Apoyan al proceso de construccion de software .
 
 ### Herramientas de Pruebas de Software
 - Generadores de pruebas: Desarrollan casos de prueba
 - Marcos de ejecucion de pruebas: Ejecutan casos de prueba
 - Herramientas de evaluacion de pruebas: Evaluan los resultados de la ejecucion de pruebas
 - Herramientas de direccion de prueba: Estos instrumentos proporcionan el apoyo a todos los aspectos.
 - Herramientas de analisis de funcionamiento: Analizan y miden el funcionamiento del software 
 ### Herramientas de Mantenimiento de Software
 
 - Herramientas de comprension: Ayudan en la comprension humana de programas. Por ej: herramientas de visualizacion como rebanadores
 - Herramientas de reingenieria: Examina y altera el software para reconstruirlo de una nueva forma e incluye la puesta en practica subsiguiente.
  
 ## Herramientas de la direccion de configuracion de software
 - Defecto : Son usados en la conexion con las cuestiones que rastrean problema asociadas con un producto de software particular
 - Direccion: Estos instrumentos estan implicados en la direccion de multiples versiones de un producto
 - Liberacion: Usados para tareas de liberacion y construccion de software. La categoria incluye instrumentos de instalacion
 
 ### Herramientas de Direccion en la Ing Software
 - H planifican y rastrean proyectos: Estos instrumentos son usados en la medida de esfuerzo de proyecto de software y cuentan la valoracion, asi como la planificacion de proyecto.
 - H manejo arriesgado: Son usados para la identificacion la estimacion y supervision de riesgos
 - H Medida: asisten en la realizacion de las actividades relacionadas con el programa de medida de software
 
 ### Herrmientas de Proceso de Ingenieria de Software
 - H modelado de procesos: Modeloar e investigar los procesos de la ingenieria de software
 - H direccion de procesos: Proporcionan apoyo a la direccion de ingenieria de software
 - Entornos CASE integrados: Automatiza heramientas de lng o ambientes que cubren multiples fases del software el ciclo de vida .
 - Entornos de Ingenieria de SW: Centrada en procesos. incorporan la informacion sobre los procesos de ciclo de vida de software y dirigen y supervisan al usuario segun el proceso definido.
 
 ### Herramientas de Calidad de Software
 - H de revision de auditoria: apoyan en revisiones y revisiones de cuentas
 - H de analisis estaticos: son usados para canalizar artefactos de software, se requieren para comprobar artefeactos o verificar que tengan las propiedades deseadas
 
 ### Cuestiones de Intrumento Compuestas
 - Herramientas de integracion de tecnicas: permite hacer a los instrumentos individuaes cooperar.
 - Meta-herramientas: Genera otros instrumentos por ej recopilador de recopiladores.
 - H de evaluacion: A causa de la evolucion continua de los instrumentos de la ingenieria de software, la evaluacion de instrumentos son un tema esencial.
 
## Metodos de la Ingenieria de software

### Metodos Heuristicos
- M estructurados: construido desde un punto de vista funcional, incia con una vista de alto nivel y tiende a la refinacion
- M orientados a datos: parte de las estructuras de datos que un programa manipula mas que la funcion que esto realiza.
- M orientado a objetos: El sistema se ve como una coleccion de objetos mas que de funciones. 

### Metodos Formales
 - Especifciacion del lenguaje y notaciones: Concierne a la notacion de especificacion o la lenga usada. Las lenguas de especificacion pueden ser clasificadas como orientado.
 - Refinamiento: Trata como el metodo refina la especificacion en una forma que es mas cercana a la forma deseada final de un programa ejecutable.
 - Propiedades de Verficacion/Confirmacion: 
### Metodos de Prototipado
- Estilos de Prototipado: Identifica varios accesos, especificaciones desechable, evolutiva y ejecutable.
- Objetivo del prototipado: exigencias del diseño arquitectonico o la interfaz de usuario.
- Tecnicas de evaluacion del prototipado: Cubre las razones por las cuales los resultados en un ejercicio de prototipado son usados.
