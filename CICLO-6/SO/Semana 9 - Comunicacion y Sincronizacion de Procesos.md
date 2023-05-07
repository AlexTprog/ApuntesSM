## Comunicacion y Sincronizacion
- un proceso independiente es aquel proceso que se ejecuta sin necesidad de otro
- un proceso cooperante es aquel proceso que necesita de otros procesos

Existen dos tipos de interacciones:
> Motivadas: porque comparten algo un recurso fisico o logico, por ejemplo dos procesos independientes compiten por el acceso a disco.

> Motivada: Los procesos se comunican y sincronizan para alcanzar un objetivo comun.

Obligan al sistema a incluir mecanismos que permitan la ejecucion y sincronizacion entre procesos. (IPC Intern Process Communication)

### Condiciones de Competencia

Es mas comun entre procesos concurrentes, la programacion concurrente es poderosa pero puede provocar problemas que no existen en la programacion secuencial.


![[Pasted image 20220106082822.png]]


### Problema de la seccion critica

no importa cuanto tarde todos los procesos deben ejecutarse.

#### Primer Intento(Inhabilitacion de Interrupciones)
La solucion mas sencilla
