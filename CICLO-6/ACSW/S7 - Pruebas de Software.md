## Pruebas de Software

> Es la ejecucion del codigo usando combinaciones de entradas, en un determinado estado, para revelar defectos.

**Caracteristicas de Sistemas de Software en la Actualidad**
- Mayor tamaño, importante nivel de seguridad , complejidad y bienestar 
- Calidad del producto, precio competitivo, reduccion de costes, etc.

Caso de ejemplo:
> ARIANE 5 Vuelo 501 (04/06/1996), primera prueba de vuelo del sistema de  lanzamiento del Ariane 5. No fue un éxito ya que 37 segundos después del lanzamiento, la lanzadera explotó debido a un mal funcionamiento del software de control.

Motivo: Fallo de software, el modulo de control no se probo lo suficiente.

### Conceptos Fundamentadles
**Verificacion**
¿Se esta construyendo el producto correctamente?
Se debe buscar la satisfaccion del cliente

![[Pasted image 20211122182931.png]]

**Testing**
Proceso orientado a demostrar que un programa no tiene errores, demuestra que realiza las funciones para las que fue construido. Probar un programa 

- Testing Exitoso: Aquel que detecta errores.
- Testing No Exitoso: Aquel que no lo detecta.

Es reponsable de indicar si el producto pasa a produccion.

**Pruebas**
Actividad en la cual un sistema o uno de sus componentes se ejecuta en circunstancias previamente especificadas

**Caso de prueba**
Conjunto de entradas, condiciones de ejecucion y resultados esperados

**Defecto**
Un proceso, una definicion de datos o un paso de procesamiento incorrecto en un programa.

#### Relacion entre error defecto y fallo
![[Pasted image 20211122183752.png]]

#### **Metodos**
**Inspecciones del Software (Estatico)**
- Manualmente
- Automatica (FindBugs)
**Pruebas de software (Dinamico)**

### Proceso de Pruebas de Software

![[Pasted image 20211122184008.png]]

#### ISO/IEC/IEE 29119 Software Testing
![[Pasted image 20211122184205.png]]

#### ISO/IEC/IEEE 29119-2 Test Process Model
![[Pasted image 20211122184224.png]]

#### Proceso de pruebas y Ciclo de vida
En las diferentes Metodologías de desarrollo, existen muchas variantes del ciclo de vida de los proyectos de sistemas y por lo tanto, es válida una flexibilidad razonable en la determinación del ciclo de vida particular de cada proyecto.
![[Pasted image 20211122190756.png]]
![[Pasted image 20211122190805.png]]

### Pruebas de Software
#### Tipos  de prueba 

![[Pasted image 20211122190820.png]]

##### Pruebas de Caja Negra (Interfaz)
- No conoce los detalles internos del programa
- Objetivo: Probar que tan bien el programa está conforme a los requerimientos (cubre todos los requerimientos)
- Sólo conoce la especificación 
- Se usa típicamente en pruebas de integración y del Sistema
- Puede ser realizada por los usuarios


##### Pruebas de Caja Blanca (Implementacion)
- Conoce la estructura interna del programa
- Objetivo: Probar que todos los caminos del código están correcto (cubre todo el código)
- Requiere análisis del código fuente para diseñar los casos de Prueba
- Se usa en pruebas unitarias
- Realizadas por programadores

#### Automatizacion
- Manuales 
- Automaticas

Que se prueba?
![[Pasted image 20211122191145.png]]

**Pruebas Unitarias**
![[Pasted image 20211122191249.png]]

**Pruebas de Integracion**
![[Pasted image 20211122191312.png]]

**Pruebas Funcionales**
![[Pasted image 20211122192044.png]]
- Identificar inconsistencias 
- Asegurar requisitos funcionales
- Reducir costos de no conformidades
- Evitar reprocesos
- Mejorar la productividad
- Aumentar la satisfacción del cliente.


**Pruebas de rendimiento (estres)**
se define como una técnica de investigación para determinar o validar la velocidad, escalabilidad y/o características de estabilidad de un sistema bajo prueba

![[Pasted image 20211122192809.png]]

**Pruebas de Aceptacion**
Pruebas alfa: los clientes prueban el programa en el lugar de desarrollo con la
presencia del equipo desarrollador, mientras éste registra errores.

Pruebas beta: los clientes prueban el programa en su lugar de trabajo y sin la
presencia del equipo de desarrollo. El cliente registra errores durante la prueba y va informando al equipo de desarrollo.

![[Pasted image 20211122192848.png]]

### Pruebas Unitarias Manuales

![[Pasted image 20211122193203.png]]
![[Pasted image 20211122193208.png]]
![[Pasted image 20211122193213.png]]

### Pruebas Unitarias Automatizadas
![[Pasted image 20211122193238.png]]
![[Pasted image 20211122193242.png]]
![[Pasted image 20211122193246.png]]
![[Pasted image 20211122193251.png]]

[ppt](https://drive.google.com/file/u/1/d/1pXBUASpHqFLbM-A7KVvI8dfjVEJHF5gM/view?usp=drive_web)

### Desarrollo guiados por pruebas
![[Pasted image 20211122193919.png]]
**Test-Driven Development (TDD)**
- Algunas puntualizaciones sobre el Paso 4 (Programar el código):
	- El tamaño del paso debe ser pequeño. Es decir,programar poco código entre prueba y prueba. 
	- Sólo se debe escribir el código necesario para pasar la nueva prueba. Ningún otro código adicional.
	- El código nuevo puede no ser muy elegante o eficiente (mal diseño). Eso se resuelve en la refactorización.
- Refactorizar es MUY IMPORTANTE

