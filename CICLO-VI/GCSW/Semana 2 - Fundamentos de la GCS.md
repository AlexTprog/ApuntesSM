# Fundamentos de la GCS

## Evolucion del software
El software necesita evolucionar para mantenerse util a lo largo del tiempo para asi justificar su alto costo . 

El mantenimiento del software es un proceso ciclico, una esprial: requerimientos, diseño, implementacion y pruebas continuas durante toda la vida del sistema.

Con el tiempo darle mantenimiento al software se vuelve complicado ya que con cada cambio se modifica su estructura.

## Proceso de  Evolucion del Software
El proceso de evolucion del software depende del tipo de software, el equipo y su experiencia. Puede ser un proceso formal o informal

![[Pasted image 20211127130438.png]]

## GCS
Su proposito es establecer  y mantener la integridad de los items de un proyecto y hacerlo disponible para las partes interesadas.

## Terminologia
- Item de la configuracion (SCI o item): Es todo aquello que este en el proyecto, codigo fuente, documentacion, librerias etc.
- Control de la configuracion: Proceso mediante el cual controlamos los items y cambios  que se realizan en un software.
- Version: Es cuando se realiza un cambio a un item, se usan numeros para poder identificar versiones.
- Codeline (linea de codigo): Conjunto de versiones de un "Componente de software".
- Baseline(Linea base): Coleccion de versiones de componentes.
- Mainline(linea principal): Lineas base que representan diferentes versiones de un sistema.
- Release(Entrega): Es una entrega funcional del software para un cliente.
- Workspace(Area de trabajo): Un espacio en donde se puede modifcar el software sin afectar los cambios de otros desarroladores.
- Branching(Ramificacion): Crear una nueva linea de codigo a partir de una version existente. Ambas se pueden trabajar de manera independiente
- Merging(Combinacion): Creacion de una nueva version apartir de la combinacion de dos versiones separadas.
- Construccion del sistema: Creacion de un ejecutable de software.

![[Pasted image 20211127131615.png]]

## Control de versiones
La aplicacion del branching y el merging verificando que los cambios que realicen los desarroladores no interfieran entre si.

Se trabaja en base a una version codeline
![[Pasted image 20211127132112.png]]

![[Pasted image 20211127132143.png]]

![[Pasted image 20211127132148.png]]

## Construccion del sistema
Unir varios componentes y librerias del sistema para compilar un ejecutable que sea funcional.

## Gestion de Release
Entregar el software al cliente y hacer un seguimiento de las versiones que se entregaron.