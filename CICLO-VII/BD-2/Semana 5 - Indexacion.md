# Indexacion

## Indices
- El indice de una base de datos es una estructura de datos que mejora la velocidad de las operaciones, permitiendo un rapido acceso a los registros de una tabla.
- Al aumentar la velocidad de acces, se suelen usar sobre aquellos campos sobre los cuales se hagan
- Los indices guardan:
	- Elementos que se desea indexar 
	- La posicion de la tabla
- Para buscar un elemento que este indexado, solo hay que buscar en el indice dicho elemento para una vez encontrado, devolver el registro que se encuentre en la posicion marcada por el indice.

## Arbol B+
Los arboles B+ se han convertido en la tecnica mas utilizada para la organizacion de archivos con indices. La principal caractersitica de estos arboles es que todas las claves se necuntran en hojas y por lo tanto cualquier camino desde la razi hasta alguna de las claves tiene la misma longitud

![[Pasted image 20220813194230.png]]


### Indices - Tipos
**Indice Clustered**
- Es un indice en el cual el orden fisico de las filas corresponde al orden de las filas en el indice
- Solo se puede tener un indice clustered por tabla
- Las operaciones de UPDATE y DELETE son mas rapidas con el uso de estos indices

**Indice Non-Clustered**
- En este indice, se especifica el orden logico de una tabla para poder acceder a los datos de forma eficiente
- El orden fisico de una tabla no corresponde al orden de estos indice

Ejemplo de indice para una tabla de clientes
```sql
CREATE UNIQUE INDEX DNIClien
ON Clientes(DNICliente)
WITH DISALLOW NULL;
```

```sql
CREATE CLUSTERED INDEX IdClien
ON Clientes(IdCLiente)
WITH DISALLOW NULL;
```

## Operaciones de Indexacion Online
Realizar un indexado online permite modificaiones concurrentes en las tablas o datos con indices cluster y de cualquier indice asociado durante la ejecucion de DDL de indexacion.

Por ejemplo, mientras se está reconstruyendo un índice cluster, se puede seguir haciendo actualizaciones a los datos y consultas sobre estos datos

