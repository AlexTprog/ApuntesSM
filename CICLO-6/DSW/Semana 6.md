## Diagrama de Paquetes
Permite organizar un modelo de manera jerarquica.

> Usos:  
> Organizar Elementos
> Controlar el acceso a sus contenidos

**Notacion**
![[Pasted image 20211118140701.png]]

**Representacion de Paquetes**
![[Pasted image 20211118140901.png]]

### Contenido

Los paquetes pueden contener elementos, clases interfaces compoenentes nodos colaboraciones casos de uso en incluso otros paquetes

![[Pasted image 20211118141236.png]]

No se recomienda usar mas de tres niveles, se puede mostrar el contenido de un paquete de forma textual o grafica.

![[Pasted image 20211118141649.png]]


### Relaciones
- Generalizacion: (herencia) un paquete especializado se usa como un paquete general.
![[Pasted image 20211118141913.png]]

- Dependencias: ("import") un paquete depende de los elementos de otro paquete

![[Pasted image 20211118141922.png]]

### Fusion
Un merge entre dos paquetes especifica el contenido del paquete de origen

![[Pasted image 20211118142724.png]]

### Tipos
![[Pasted image 20211118142836.png]]

### Ejemplos
![[Pasted image 20211118143649.png]]

## Diagrama de Clases

### Clase diseño
![[Pasted image 20211118144737.png]]

![[Pasted image 20211118144947.png]]

### Herencia
- Disjunta: Persona puede ser profesor o estudiante no ambos
- Traslapada: Persona puede ser ambos
![[Pasted image 20211118144821.png]]


### Asociaciones
![[Pasted image 20211118150311.png]]


## Diagrama de Estado
Describe todos los estados posibles de un objeto. Represneta el ciclo de vida de un objeto: eventos que le ocurren, sus transiciones y los estados que median entre estos eventos.

Especifica la secuencia de estados por las que pasa un objeto a lo largo de su vida en respuesta a eventos, junto con sus respuestas a esos eventos. 

![[Pasted image 20211118152739.png]]


![[Pasted image 20211118153051.png]]


## Diagrama de Secuencia
Muestran la forma en que un grupo de objetos se comunican entre si a lo largo del tiempo.

![[Pasted image 20211118171509.png]]

### Elementos
![[Pasted image 20211118171601.png]]

### Mensaje
- Sincronico: implica que el transmisor espera hasta que el mensaje es recibido y recibe una confirmacion
- Asincronico: No necesita esperar por una confirmacion o recepcion satisfactoria

### Ejemplo
Diagrama de secuencia: Los tres cerditos

![[Pasted image 20211118171739.png]]

### Flujo
- Normal
- Alternativo