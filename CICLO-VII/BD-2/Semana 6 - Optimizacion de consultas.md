# Optimizacion de consutlas
Implica revisar y resolver los problemas de rendimiento de una consulta:
- Revisar un plan de ejecucion
- Identificar consutlas mal elaboradas
- Revisar un plan de ejecucion
- Mantener y optimizar indices

**Ejemplo:**
En una institución internacional con muchos miembros a nivel mundial se realizan búsquedas utilizando las primeras letras de sus apellidos.  Los datos de la columna Apellidos de la tabla Miembros utilizan mayúsculas y minúsculas combinándolas y para encontrar a los miembros se utilizaba la función UPPER en la consulta por Apellidos.

```sql
SELECT Apellidos
FROM Miembros
WHERE UPPER(Apellidos) LIKE 'MAN%'
```

Solucion
```sql
ALTER TABLE Miembros
ADD ApellidoMayus AS UPPER(Apellidos)
GO
CREATE NONCLUSTERED INDEX
IXMiembrosApellidoMayus
ON Miembros(ApellidoMayus)
GO
```

### Causas de lentitud en consutlas
- Problemas de red
- Memoria inadecuada en el equipo servidor o falta de memoria disponible para el servidor
- Falta arreglo de discos (RAID)
- **Falta de estadisticas utiles**
Estas estimaciones de cardinalidad habilitan al optimizador de consultas para crear un plan de consulta de alta calidad

Para actualizar la información sobre la distribución de las claves en una tabla especifica se utiliza UPDATE STATISTICS
```sql
UPDATE STATISTICS SalesOrderDetail; 
GO UPDATE STATISTICS SalesOrderDetail 
AK_SalesOrderDetail_rowguid; 
GO
```
- Falta de indices utiles
- Falta de particiones utiles

### Plan de ejecucion
Es el conjunto de pasos que tiene que reazliar un DBMS para ejecutar una consutla es una definicion de:
- La secuencia en la que se tiene acceso a las tablas de origen
- La forma como utilizara los indices de las tablas

### Optimizacion
El proceso de seleccion de un plan de ejecucion entre varios planes posibles se conoce como optimizacion
El optimizador de consultas es uno de los componente mas importantes de un sistemas de bases de datos SQL

### Identificador de consutlas mal elaboradas
Podemos usar dos herramientas para identificarlas:
- SQL Server Management Studio
- El analizador de SQL Server
El asistente para la optimizacion del motor de base datos
Las vistias de administracion dinamicas.

Ejemplo:

```sql
USE Ciclismo 
GO SELECT DISTINCT * 
FROM Empleados 
WHERE SUBSTRING(Apellido,1,1) = ‘P'
```
Pasos:
- Ingresar al SQL Server Profiler
- Identificar un trace
- Seleccionar:  
	- ExistingConnection  
	- TSQL:SQL:BatchCompleted 
- Escribir un query 
- Revisar la traza

# Preguntas de clase

## ¿Que considero al comprar un DBMS?
En que SO funciona
Usa SQL o T-SQL
Metricas de velocidad
Documentaciom - informacion en foros - Soporte


Oracle
SQLServer
## ¿Como haria una consulta sql mas rapida?
Convertir la consulta en un store procedure, reducir el numero de subconsultas
# Problema de clase
1. En un institucion internacionl con muchos miembros a nivel mundial se realizan busquedas utilizando las primeras letras de sus apellidos,
2. Los datos de la colimna Apellidos de la tabla miembros utilizan mayusculas y minusculas combinandolas y para encontrar a los miembros se utilizaba las funcion upper en la consulta de busqueda

Ej :SELECT UPPER(Jorge) => JORGE
SELECT Apellidos
FROM miembros
WHERE UPPER(APELLIDOS) LIKE 'MAN%'

* Premisa, no se puede modificar el juego de caracteres del servidor, es sensitivo
* Porque la consulta es notablemente lenta?
Porque realiza una busqueda secuencial transformando apellidos en mayuscula

Solucion => Crear una columna con UPPER(APELLIDO)
Se hace un indice de la columna

ALTER TABLE Miebros ADD ApeliidoMayus AS UPPPER(APELLIDOS) WHERE APellidosMayus LIKE 'MAN%'

WHERE Apellido FROM wm



**Motivos de consultas Lentas**
- Problemas de red
- Memoria inadecuada en el servudir
- Falta de arreglos de discos raid
- Flata de ..
