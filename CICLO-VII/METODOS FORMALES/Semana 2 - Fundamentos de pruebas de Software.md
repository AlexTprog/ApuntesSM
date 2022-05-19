## Software vs Otras industrias
- El desarrollo del software se diferencia del desarrollo de otros productos, principalmente por ser intangible.
- Por ej: la cantidad de lineas de codigo no es un indicador claro del avance del software.
- Algunas clausulas ISO son dificles de interpretar para el software


## Software Testeability

Como saber cuan testeable es un software?

1. **Controlabilidad** el proceso de prueba se puede optimizar solo si podemos controlarlo
2. **Observabilidad** lo que se "ve" es lo que se puede probar
3. **Disponibilidad** Implica tiempo prudente para realizar pruebas
4. **Simplicidad** Cuamdo el software es complejo es dificil de probar
5. **Estabilidad** Se necesita un periodo para congelar versiones y realizar pruebas
6. **Informacion** la eficacion de las pruebas depende en gran medida  de la cantidad de infomracion disponible

a mayor capacidad de pruebas significa mejores pruebas y menor cantidad de errores

A una menor capacidad de prueba significa que las pruebas no son de gran calidad y existe la posiblidad que haya errores en el sistema

![[Pasted image 20220517183932.png]]

## 7 principios

1. Pruebas demuestran la presencial de defectos
2. Pruebas exhaustivas no existen o son imposibles
3. Pruebas tempranas ahorran tiempo y dinero
4. Agrupacion de defectos
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