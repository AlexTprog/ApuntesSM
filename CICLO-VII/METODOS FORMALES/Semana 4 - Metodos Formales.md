# Los metodos formales

## Que son los metodos formales?


## Cual es su funcion?
- Permiten especificar, desarrolar y verificar un sistema informatico mediante la aplicacion de una notacion matematica rigurosa
- Proporciona los medios de especificar un sistema de forma qu se aseguren de forma sistematica la consistencia y la completitud y la correcion
- Usa notaciones matematicas similares a las del algebra de conjuntos y la logica

## Propositos
- Proporciona un metodo estandar de trabajo a lo largo de l proyecto
- Constituye una base de coherencia entre muchas actividades relacionadas y al contar con mecanistmos de descripcion precisas y no ambiguos, proporcionar el conocimiento necesario para realizarlas con exito.

## Metodos formales en la ingeniera de software
Serie de tecnicas logicas y matematicas con las que es posible especificar, diseñar, implementar y verificar los sistemas de informacion.

Se utiliza la notacion formal para modelar los requisitos principalmente porque estas notaciones se pueden verificar facilmente y porque de cireta forma son mas comprensibles para el usuario final.

### Proposito
Sistematizar e introducir rigor en todas las fases de desarrollo de software, con lo que es posible evitar que se pasen por alto cuestiones criticas.

Proporcionar estandar de trabajo
Constituir coherencia entre las muchas actividades relaiconadas y al contar con mecanismos de descripcion precisos y no ambiguos, proporcionar el conocimiento necesario para realizarlas con exito.

### Uso de los metodos formales

1. **Las políticas de los requisitos.** En un sistema seguro se convierten en las principales propiedades de seguridad que éste debe conservar, es decir, el modelo de políticas de seguridad formal, como confidencialidad o integridad de datos.
2. **La especificación.** Es una descripción matemática basada en el comportamiento del sistema, que utiliza tablas de estado o lógica matemática. No describe normalmente al software de bajo nivel, pero sí su respuesta a eventos y entradas, de tal forma que es posible establecer sus propiedades críticas.
3. **Las pruebas de correspondencia entre la especificación y los requisitos**. Es necesario demostrar que el sistema, tal como se describe en la especificación, establece y conserva las propiedades de las políticas de los requisitos. Si están en notación formal se puede diseñar pruebas rigurosas manuales o automáticas.
4. **Las pruebas de correspondencia entre el código fuente y la especificación.** Aunque muchas técnicas formales se crearon inicialmente para probar la correctitud del código, pocas veces se logra debido al tiempo y costo implicados, pero pueden aplicarse a los componentes críticos del sistema. 
5. **Pruebas de correspondencia entre el código máquina y el código fuente.** Este tipo de pruebas raramente se aplica debido al costo y a la alta confiabilidad de los compiladores modernos.

### Principales Métodos Formales utilizados en el desarrollo de software
Métodos formales basados en Lógica de Primer Orden:
Z, B, VDM, Object-Z, Z++ y VDM++.

Métodos formales basados en Formalismos Algebraicos:
HOSA (Hidden Order Sorted Algebras), TROLL, OBLOG, Maude y AS-IS
(Algebraic Specifications with Implicit States).

Métodos formales basados en Redes de Petri:
CO-OPN (Concurrent Object-Oriented Petri Nets) 

Métodos formales basados en Lógica Temporal: 
TRIO, OO-LTL y ATOM.

Métodos Semiformales:
Syntropy, Statemate, UML y OCL (Object Constraint Language)

![[Pasted image 20220531192731.png]]

### Testing
Comprobar o medir algunas características de calidad de un objeto en ejecución mediante la realización de experimentos de forma controlada
![[Pasted image 20220531192853.png]]