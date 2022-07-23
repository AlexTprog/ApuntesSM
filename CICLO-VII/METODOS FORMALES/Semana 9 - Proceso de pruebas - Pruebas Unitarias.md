# Proceso de pruebas- Pruebas Unitarias
## Que son las pruebas agiles?
+ Se busca una entrega frecuente para los clientes.
+ Busca construir un producto de calidad mediante bucles de feedback cortos.
+ Con relacion al testing se realizara de manera permante

> "La calidad es responsabilidad de TODO el equipo"

**Complemento: Manifiesto agil**


## Como afecta la agilidad al testing?
* El testing se realiza durante todo el proceso de desarrollo

>![[Pasted image 20220705184733.png]]
>

* Se busca prevenir bugs

> Tener una bateria de pruebas antes del desarollo, unitarias de aceptacion funcionales,etc

* Se busca El entedimiento funcional, entender la logica de negocio
* Construir el mejor sistema sobre "romper el sistema", tratar de mejorar lo entiendo como no buscar errores cuyo suceso sea "imposible"
* No solo el tester es responsable de la calidad del software

## Como es un tester agile?
Un tester agile, destaca por los siguiente puntos:
- Ayuda en la definicion del producto haciendo las preguntas adecuadas, identifica criterios de aceptacion, mas amplios con escenarios , ejemplos y sets de prueba
- Sienta las bases para el entendimiento del sistema y sus pruebas funcionales.
- Ayuda en la automatizacion. El agile tester ayuda automatizar las pruebas funcionales, colaborando con los desarrolladores en su implementacion.

## Diferencias entre verificacion y validacion?
>**Validacion** => Estamos construyendo el producto correcto? 
>**Verificacion** => Estamos construyendo el producto correctamente?

## Que tipos de prueba existen?
- Unitarias
- Integracion
- Funcionalies
- Carga/estres
- Aceptacion

## Que son las pruebas unitarias?
- Consiste en probar unidades minimas en el compartamiento de la aplicacion
- Pueden ser funciones, metodos, esto varia segun el paradigma que se use para programar y el lenguaje de programacion

## Cuales son los beneficios de las pruebas unitarias?
* Garantizan la calida del software
* Se ahorra tiempo en las **pruebas de regresion** 
* Podemos crear alertas cada vez que rompamos algun componente del codigo
* Nos da tranquilidad de no romper codigo ya existente por lo que podemos ser mas creativos.

## Como se escribe un prueba unitaria?
- Se crean pruebas unitarias con la mentalidad de resolver proeblemas que surgen durante el desarolllo.
**Buenas practicas**
- Asignar nombres apropiados. cada prueba debe dar como resultados correctos, exito o fracaso.
- Deben ser independientes entre si en lo posible.
- Usar macros(frameworks) para realizar pruebas 
- SI TE ES DIFICIL GENERAR UNA PRUENA UNITARIA, TU DISEÑO NECESITA MEJORAR

## Cuales son los problemas comunes al escribir PU?
- Debemos evitar aserciones, nuestro programa no debe asumir que un condicion se cumplira siempre dentro del flujo.
- No dependen de elementos externos, pej si depende de un bd para funcionar
- Es ideal codigicar pruebas en cada etapa del flujo, 