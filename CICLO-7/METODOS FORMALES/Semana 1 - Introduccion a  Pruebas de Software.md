# Introduccion a Pruebas de Software
## VIDEO: Calidad de SW

> **RESUMEN**
Durante el video el ponente explica temas relacionados a calidad, agilidad y la aplicación de estos dos conceptos dentro del campo del desarrollo de software.
Se menciona hace una diferenciación de la calidad clásica y la calidad ágil, en la primera predomina la creencia errónea de que la documentación es igual a calidad y que está soluciona los problemas, comentando casos en los cuales se pagaba extra a los programadores por comentar su código. Mientras que la calidad ágil implica buenas prácticas como el código limpio y procesos de QA.
>
Finalmente cierra comentando que la calidad ideal sería aquella que centre aspectos de código limpio como los de la calidad ágil en conjunto con aspectos organizativos, como hacer uso de equipos multifuncionales, buscar calidad dentro de cada etapa del desarrollo para así conseguir ser más competitivos. Sin embargo hay casos que se evita el uso de la calidad con fines poco éticos, como forzar la fidelidad del cliente por ser los únicos capaces de entender el código e incrementar los costos de mantenimiento por el mismo motivo.


## Porque son importantes las pruebas de SW?
Permiten asegurar la calidad del software, ahorran tiempo en el desarrollo, facilitan la implementacion de nuevas funcionalidades.

> Existe un mercado de herramientas destinadas a las prubas de software que genera anualmente $2,6 Billones. Las empresas de software suele destinar del 30% al 90% de sus recursos en larealizacion de prueas de software.


## Cuales es la diferencia entre QA, QC y Software Testing?
![[Captura desde 2022-06-26 18-01-43.png]]

**Quality Asurance**
- Desarrollan e implementan procesos para asegurar que el ciclo de vida del software continue correctamente
- Previene defectos
- Busca la mejora continua de procesos

**Quality Control** 
- Realiza actividades para cumplir requisitos del producto
- Verifica y controla caracteristicas del producto
- Inspecciona y prueba el producto

**Software Testing**
- Descubre defectos y errores en el software
- Se enfocan solo en actividades orientadas al producto.
- Solo se identifican defectos, no se corrigen

>**QA > QC > ST**

## Cual es el costo de realiazar pruebas de software?
Al realizar una prueba de software, decidimos invertir tiempo, dinero y esfuerzo en la realizacion de controles de calidad. Realizando un analisis de este costo sobremos cual es el retorno de inversion (ROI).

Dentro de los **costes por la calidad** tenemos la siguiente clasificaion:
- **Costos de conformidad**
	- **Costo de Prevencion**
		Tests, automatizacion de pruebas (unitarias y de integracion), interacion continua
		Garantiza que todas las practicas de calidad se cumplan
		Capacitacion del equipo
		Revisiones de codigo
	- **Costo de Evaluacion**
		Planes de QA, UAT, Manuales de testing
		Planifica y ejecuta todas las actividades de prueba 
		Elaboracion y ejecucion de casos de prueba
- **Costos de NO conformidad**
	- **Costo Interno**
		Tiempo de inactividad de la operacion
		Ocasionados por la correccion de errores
		Costos de pruebas unitarias por subsanacion
	- **Costo Externo**
		Perdidas finacieras, perdida de negocio
		Ocasionado cuando el cliente encuentra el defecto
		Son mayores al costos interno

![[Pasted image 20220626183235.png]]



## Que es la deuda tecnica?
Es una metafora creada por Ward Cunningham. Implica que hacer las cosas rapido y mal incrementa una **deuda tecnica**, la cual tiene un pago interes que se ve reflejado en lel esfuerzo extra necesario hacer en el futuro por una eleccion rapida  mala de diseño.

Se puede decicir pagar el interes o pagar el capital al hacer una refactorizacion del diseño hacia un diseño mejor.

Esta deuda tenica siempre se paga, o el proveedor que desarrolla el software o el clinete que usa o compra el software.

> Ejemplo: Todas las veces que me he lanzado al realizar codigo sin planificarlo previamente y me he topado con formas mas sencillas de implementar la solucion a mitad del desarrollo junto con errores no previstos :,(

## Como implmentar las pruebas de SW dentro del ciclo de vida del SW?

![[Pasted image 20220626184138.png]]




 