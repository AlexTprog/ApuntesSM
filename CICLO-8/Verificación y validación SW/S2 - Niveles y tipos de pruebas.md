# Niveles y tipos de Pruebas

## Pruebas a lo largo del modelo V
- Es el modelo de desarrollo de software mas utilizado
- Cada nivel de desarrollo tiene su correspondiente nivel de pruebas
- Las pruebas se diseñan en paralelo al desarrollo software
- Las actividades del proceso de pruebas tiene lugar a lo largo de todo el ciclo de vida software

![[Pasted image 20220924162127.png]]

## Niveles de Pruebas
![[Pasted image 20220924162419.png]]

###  De Aceptacion
- Normalmente el cliente selecciona casos de prueba para las pruebas de aceptación. o Es posible que surjan malas Interpretaciones con respecto a los requerimientos y pueden ser discutidos. “EI cliente conoce su negocio". Las pruebas se realizan utilizando el entorno del cliente. o El entorno del cliente puede producir nuevos fallas.
- Una versión preliminar y estable del software (versión BETA) se entrega a un conjunto específico (seleccionado) de clientes.
- El cliente ejecuta las pruebas en dependencias propias, los problemas son registrados e Informados o los desarrolladores para su corrección 
- El cliente utiliza el software para hacer el tratamiento de sus procesos cotidianos o ejecuta un juego de pruebas seleccionado.
- El software se prueba mejor en los distintos entornos del cliente.
### De Sistema
- Comprueba si cumple con los requisitso especificados
- Las pruebas del sistema verifica el comportamiento de todo el sistema
- El alcance de las pruebas se define en el plan maestro de pruebas
- Se busca que la calidad del software este determinado por el punto de vista del usuario
- No se realizan en entorno real, los defectos inducidos podrina dañar el entorno real
### De Integracion
- Comprueba interaccion entre elementos software tras la integracion del sistema
- La integración adicional de subsistemas también es parte del proceso de integración del sistema.
- Puede ser ejecutada por desarrolladores o testers

Caracteristicas
- Son necesarios DRIVERS de prueba los cuales aportan el entorno al proceso del sistema o subsistema o Con el objeto de tener en cuenta o producir entradas y salidas del (subsistema) sistema. o Con el objeto de registrar datos. Los DRIVERS de prueba propios de las pruebas de componente pueden ser reutilizadas en estas pruebas.

### Unitarias
- Pruebas de cada componente tras su realizacion.
- Se hare referencia a un componente como Prueba de modulo (module test en C), Prueba de Clase (en Java)
- Los desarrolladores estan involucrados en la ejecucion de estas pruebas, tambien son denominadas  developer test

Caracteristicas
1. Se prueban componentes individuales
2. Un componente puede estar constituido por un conjuto de unidades mas pequeñas
3. Cada componente es probado de forma independiente

Ejecucion
- Requiere de Drivers y STUBS
- Drivers simulan datos de entrada, registran datos de salida y aportan un arnes de pruebas, test harness
- STUB reemplaza o simula un componente que aun no se encuentra disponible


