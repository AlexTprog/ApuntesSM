# Introduccion a mineria de datos

- Herramienta de bussines  inteligence, comprender tecnicas y procesos de analisis de datos que permite extraer informacion de bases  de datos y almacenes de datos mediante la busqueda automatizada de patrones y relaciones.

- Permite indentificar patrones de conducta en determinados procesos para su optimizcion y reduccion de costes

## Que usos tiene?
**Negocios**
- Para la fidelizacion del cliente para que presenten mayor probabilidad de responder positivamente a una determinada oferta o promocion.qqqqqqqqqqqqqqqq

**Habitos de compra**
- Permite detectar habitos de compra de los clientes en centros de compra en determinados dias, se evalua que producto es mas vendido para focalizar la venta en ese punto

**Los fraudes**
- Deteccion de las transacciones que provengan del blanqueo de dinero o fraude.

**Los recursos humanos**
- Permite indentificar caracteristicas de los empleados que presentan mayor exito en su gestion.
- Diseñar planes de capacitacion para los integrantes de una organizacion.

**Juegos**
- Consiste en el analisis y extraccion de estrategias utilizadas para los juegos

## Que modelos tiene?

### De verificacion
Se pide que se verifique cierta hipotesis, cuando se le responde puede refinar su pregunta, y asi sucesivamente

### De descrubrimiento
Se descubre nueva informacion , la intervencion del usuario no es necesaria. Se busca patrones de datos o elemento fuera de lo normal

### Predictivo
Predicciones sobr el comportamiento futuro a partir de patrones existentes. El usuario elige la variable

## Cuales son sus fases?
### Seleccion y preprocesamiento de datos
Se decide sobre que datos trabajar, tanto desde el punto de vista fisico como logico. Se depuran los datos
### Busqueda de patrones
Se analizan los datos para extraer significado e informacion. Da como resultado un informe
### Interpretacion y evaluacion
Se interpretan los resultados de la fase anterios

## Que tecnicas podemos usar?
### De consulta e informe
- Forma tradicional
- se obtiene informacion a partir de bd relacionales
- Uso de herramientas que facilitan las consultas SQL 
- Presentan los resultados en forma de tablas, diagramas o graficos
- Uso de tecnicas estadisticas para el analsis
### De inteligencia artificial
- Utiliza estructuras de datos 
- Algoritmos basados en arboles de decisiones, redes neuronales, tecnicas de clustering y logica difusa.
- Usadas para modelos predictivos y descrubrimiento
### De analisis multidimensional
- Basados en base de datos multidimensionales
- Se utilizan para cruzar los datos de multiples formas y distintos niveles de agregacion
- Tenicas de detecion de desviacion y de programacion geneticas entre otras

## Cual es el proceso?

![[Pasted image 20220918102402.png]]
1. Recopilacion de datos
2. Establecer objetivos claros
3. Determinar tipos de dato
- Datos para el control: 
	- Periodicos
	- Ayudan a conocer variacion
	- Verificar estabilidad
	- Ej: Número de pacientes diarios en consultorios externos por especialidad.
- Datos para el analisis
	- Conocer la situacion actual de nuestro procesos
	- Ej: la tasa de prescripciones que no están disponibles en la farmacia del hospital.
- Dato para la inspeccion
	- Recopilan al recibir o entregar material
	- Verifican si el producto cumple con especificaciones
	- Ej : Fecha de expiración de un lote de medicamentos, antes de su ingreso a almacén.
4. Seleccionar formar de recolectar datos
- Se debe registrar adecuadamente el origen de datos (el día, la hora, quiénes fueron los responsables, qué lote se uso, entre otros).
- Los datos deben registrarse de manera que facilite su utilización (hojas de registro).

## Que es un data wharehouse?
### Almacen de datos
Coleccion de datos que recoge informacion de multiples sitemas fuentes y opreaciones dispersos y cuya actividad se centra en la toma de decisiones es decir, en el analisis de la informacion, en vez de su captura. una vez reunidos los datos de los sistemas fuentes se guardan durante mucho tiempo, lo que permite el acceso a datos historicos; asi los almacenes de datos proporcionan al usuario una interfaz consolidada unica ara los datos, lo que hace facil escribir las consultas para la toma de decisiones

![[Pasted image 20220918103419.png]]
### Caracteristicas
#### Organizado en torno a temas
La información se clasifica en base a los aspectos que son de interés para la empresa.

#### Integrado
Es el aspecto más importante. La integración de datos consiste en convenciones de nombres, codificaciones consistentes, medida uniforme de variables, etc.

#### Dependiente del tiempo
Esta dependencia aparece de tres formas: La información representa los datos sobre un horizonte largo de tiempo. Cada estructura clave contiene (implícita o explícitamente) un elemento de tiempo (día, semana, mes, etc.).La información, una vez registrada correctamente, no puede ser actualizada.

#### No volátil
El Almacén de Datos sólo permite cargar nuevos datos y acceder a los ya almacenados, pero no permite ni borrar ni modificar los datos.

![[Pasted image 20220918103740.png]]

## Que es un lago de datos?

> Un Lago de Datos o Data Lake, es un repositorio o almacenamiento empresarial de datos en su forma nativa como fueron creados (estructurados, semi-estructurados, quasi-estructurados y no estructurados).

La transformación digital sin duda sigue avanzando rápidamente, de tal forma que nuestro entorno es más del 50% digital, es decir, dependemos de medios digitales para realizar la mayor parte de nuestras actividades como es, comunicarnos, estudiar, laborar, transacciones financieras, viajar, compras, etc.

Debido a la digitalización, se generan muchísimos datos que deben ser almacenados en diferentes repositorios para que posteriormente sean consultados y analizados, sin embargo, hay diferentes tipos de datos en diferentes formas, como son:

**Dato estructurado**
Se organiza de forma relacional en un archivo, por ejemplo: en una base de datos relacional, los datos se organizan por filas y columnas dentro de una tabla.

**Dato semi-estructurado**
No tienen una forma relacionada formal entre sí, pero tiene un patrón y una estructura que permite su análisis, por ejemplo: hojas de cálculo y archivos XML.

**Dato quasi-estructurado**
Consta de datos textuales sin relación entre ellos y su formato puede estar dado por un software y por el tiempo en que se creó, por ejemplo: clics en una página web, páginas visitadas, tiempo que permaneció en la página cuando ingresó y cuando salió un usuario.

**Dato no estructurado.**
No tienen una estructura definida y se almacenan en diferentes tipos de archivos. por ejemplo: documentos de texto, PDFs, archivos multimedia.

## Tarea: 
![[Pasted image 20220913212207.png]]