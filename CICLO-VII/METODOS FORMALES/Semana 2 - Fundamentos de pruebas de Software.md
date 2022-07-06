# Desarrollo de Software vs Otras industrias
## Caracteristicas del desarrollo sw?
- El desarrollo del software trae como resultado un producto intangible por lo que realizar una medicion de su progreso resulta complica.
- Las normas ISO 9000 tiene clausulas refentes al uso de materias primas no aplicables al ds sw

> Por ej: la cantidad de lineas de codigo no es un indicador claro del avance del software.



## Software Testeability

### Como saber cuan testeable es un software?

1. **Controlabilidad** el proceso de prueba se puede optimizar solo si podemos controlarlo
2. **Observabilidad** lo que se "ve" es lo que se puede probar
3. **Disponibilidad** Implica tiempo prudente para realizar pruebas
4. **Simplicidad** Cuamdo el software es complejo es dificil de probar
5. **Estabilidad** Se necesita un periodo para congelar versiones y realizar pruebas
6. **Informacion** la eficacion de las pruebas depende en gran medida  de la cantidad de infomracion disponible

> A mayor capacidad de pruebas significa mejores pruebas y menor cantidad de errores
> A una menor capacidad de prueba significa que las pruebas no son de gran calidad y existe la posiblidad que haya errores en el sistema



![[Pasted image 20220517183932.png]]

### En que contexto se realizan pruebas de software?
![[Pasted image 20220705181546.png]]
## Existen  7 principios para las pruebas de sw
**1. Pruebas demuestran la presencia de defectos, no ausencia**

> Nunca se puede afirmar que un software carecer de defectos, las pruebas que realicemos deben ser capaces de encontrar defectos pero aunque realicemos muchas pruebas no podemos asegurar que no existen errores.

**2. Pruebas exhaustivas no existen o son imposibles**

> Por lo general no podremos pobrar todas las combinaciones de entradas y precondiciones, solo en  casos simples. Debemos hacer uso del analisis de riesgos ,tecnicas de pruebas y estabalecer prioridades para en la realizacion de pruebas.
> EJ: Realizar para el caso de un formulario con 10 campos y 6 opciones en cada campo, el numero de pruebas serial 10^6 

**3. Pruebas tempranas ahorran tiempo y dinero**

> El realizar pruebas de software en etapas tempranas del desarrollo permite la reduccion de costos (monetarios y tiempo), encontrar un error en la etapa de despliegue cuesta 30 veces mas que si se encuentra durante el diseño

**4. Agrupacion de defectos**

>

5. Tener cuidado con la paradojas del pesticida

6. Dependen del contexto

7. Falacia de ausencia de errores


## Tecnicas de Pruebas

**Pruebas Estaticas**
**Pruebas Dinamicas**
**Pruebas Basadas en la expericencia**

![[Pasted image 20220517191843.png]]


### Niveles de prueba

![[Pasted image 20220517192613.png]]


### Ciclo de vida de las pruebas de software
![[Pasted image 20220517193041.png]]
![[Pasted image 20220517193051.png]]

### Entregable Testing
![[Pasted image 20220517193017.png]]

### Tipo de defectos

**Heisenbug**
"El error esta en incertudumbre a veces esta y a veces no esta xddd"
Errores que desaparecen o alteran su comportamiento al tratar de depurarlos. Esto ocurre cuando se intenta encontrar un error dentro un programa.

**Borhug**
Se usa para errores que no importa lo que se haga mantienen un comportamiento constante.

**Mandelbug**
Fallos con causas no complejas que su comportamiento parece ser completamente caotico. La denominacion se debe al conocido conjunto fractal descubierto por Benoit Mandelbrot

**Schroedinbugs**
Son errores que no aparecen hasta que alguien lee el codigo y descubre que en determinadas circunstancias, el programa podria fallar. A partir de ese momento, el maldigo "schriwaoda" comienza aparecer una y otra vez.

**Stole**
comun en produccion, usuario que pone cosas raras y luego en desarrollo es dificil de reproducir.

**Aristotle**


**Fantasma en el codigo**
Bugs escondidos en el codigo, encontrados mediante la busqueda en los casos de prueba