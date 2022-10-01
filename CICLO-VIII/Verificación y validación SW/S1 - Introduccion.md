# Tecnicas de Pruebas
![[Pasted image 20220924155436.png]]

## Tecnicas Estaticas
**Analisis estatico**
Consiste en el analisis de un objeto de prueba:
Codigo fuente, requisitos etc

**Permite Comporbar**
- Reglas estandares de programacion
- Diseño de un programa
- Uso de datos
- Complejidad en la estructura del programa
- Encontrar erores logicos
- Descubrir construcciones complicadas, vulnerabilidades de seguridad, interfaces incosistentes, etc.

**Herramientas para ejecutarlo**

-  Compiladores
	- Detecta errores de sintaxis
	- Crea datos de referencia en el programa
	- Comprueba la consistencia entre los tipos de variables
	- Encuentra variables no declaradas y codigo inaccesible
- Analizaodor
	- Convenciones y estandares
	- Metricas de complejidad
	- Acoplamiento de objetos

## Flujos de Control
**Resultados** 
- Mayor vision y comprension del codgio del programa
- Las anomalias pueden ser detectadas facilmente
	- Slaida de un bucles por salto
	- Ramas muertas
	- Retornos multiples

**Proposito**
- Codigo (Ramas muertas, codigo muerto, etc)

**Metodo**
- la estructuro del codigo se representa como un diagrama de control de flujo
- Grafo dirigido
	- Los nodos representan sentencias o secuencias de sentencias
	- Las aristas representan la transferencia del flujo de control, como decisiones y bucles.
	- Construccion mediante herramientas

**Ejemplos**
![[Pasted image 20220924161209.png]]
UR = valores indefinidos
DU = Definicion de valor y luego es indefinido antes de la lectura
DD = Definicion de un valor y se define nuevamente antes de la lectura

## Complejidad Ciclomatica

- Metrica que mide la complejidad estatica de un programa basada en su grafo de flujo de contorl
- Mide los caminos lienalmente independientes como inidice de la testeabilidad y mantenibilida
- El numero ciclomatico se define de la siguiente formal
	- Numero de aritstas e
	- Numero de nodo n
	- Numero de pares del programa independientes; p
- Valores hasta 10 son aceptables. Para valores superiores el codigo debe ser mejorado (reworked - buena practica segun McCabe)

## Herramientas
- Codacy
- Kiuwan
- Sonar