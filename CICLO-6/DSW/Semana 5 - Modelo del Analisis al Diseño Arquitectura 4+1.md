# Vistas Arquitectonicas

![[Pasted image 20211111140837.png]]


## Vista de Casos de Uso
vista de caso de uso o escenerasio. trata de mostrar los requermimientos o requisitos del sistema. Desde el punto de vista del usuario final y el analista. No va cualquier caso de uso. Solo van los casos de uso importante o relevantes para la arquitectura de software.


## Vista Logica
Se hace a nivel de clases. Describe las clases y su organizacion en paquetes y subsistemas u la organizacion de estos en capas. usa los diagramas de:
- Diagrama de Clases
- Diagrama de Estados
- Diagrama de interaccion
- Diagrama de Actividades.

## Vista de Procesos
Es una vista opcional. Describe tareas sus interacciones y la asignacion de objetos del diseño a las tareas.

Muestra elementos relacionados con el desempeño, escalabilidad, concurrencia.


## Vista de Implementacion
Modelos componentes y archivos que utilizan para ensamblar y hacer disponible el sistema fisico.

## Vista de Despliegue
Modela los nodos de la topologia de hardware sobre la que se ejecutan los sistemas.
Para modelar aspectos estaticos: Diagrama de despliegue
Para modelar aspectos dinamicos

## Framekwork 4 +1
![[Pasted image 20211111142324.png]]

# Vista de Casos de Uso
Solo van los casos de uso que tenan impacto sobre la arquitectura. 
Debemos identicar los casos de uso importantes para la arquitectura.

![[Pasted image 20211111142421.png]]

Describir el negocio -> Actores -> Modelo de Dominio -> Casos de Uso

## Descripcion de Negocio
Primero debemos identificar los procesos mas importatnes. 
 Ejemplo:
![[Pasted image 20211111142606.png]]

Se eligen los que tienen mayor impacto

![[Pasted image 20211111142708.png]]

Luego de Identificar los describimos

![[Pasted image 20211111142850.png]]

## Modelo de Dominio
Usa la notacion de clases, clases conceptuales

![[Pasted image 20211111143109.png]]

## Actores
![[Pasted image 20211111143315.png]]
![[Pasted image 20211111143450.png]]

## VIsta 