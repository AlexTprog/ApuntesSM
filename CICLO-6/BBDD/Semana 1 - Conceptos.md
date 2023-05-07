# Teoria
![[Pasted image 20211014195013.png]]

## Datos
son informacion concreta sobre hechos, elementos, etc que permite estudiarlos, analizarlos o conocerlos
**Tipos de Datos (Dominio)** 
- Alfanumerico (cadena)
- Numerico (enteros y reales)
- Logico - Booleanos
- Fecha
## Informacion
Es un conjunto organizado de datos procesados, que constituyen un mensaje
## Bases de Datos (database)
Conjunto de informacion que se relaciona entre si, que esta almacenada y organizada de forma sistematica para facilitar su preservacion, busqueda y uso.

Esta diseñada con un proposito especifico y debe ser organizada con una logica coherente. Los datos pueden ser compartidos por distintos y aplicaciones, pero deben conservar su integridad y seguridad al margen de las interacciones de ambos.

Ej: 
- Bibliotecas Publicas
- Historial Medico
- Nominas de Pago
- Sistemas de Contabilidad
- Archivos Personales
- Sistemas financiero

## Sistema de Gestion de Base da Datos (DBMS)
![[Pasted image 20211016114832.png]]
Conjunto de porgramas dedicados a servir de interfaz entre la base de datos y el usuario y las aplicaciones que la utilizan. Tiene integrado un lenguaje de programacion que se dividie en LDD (lenguaje de definicion de datos)y LMD (lenguaje de manipulacion de datos)

### Ventajas
- Independencia logica y fisica de los datos
- Redundancia minima
- Acceso concurrente por parte de multiples usuarios
- Integridad de datos
- Consultas complejas optimizadas
- Seguridad de acceso y auditoria
- Respaldo y Recuperacion
- Acceso a traves de lenguajes de programacion estandar

### Desventajas
- Complejidad
- Costos de Infraestructura (procesamiento y almacenamiento)
- Vulnerable a fallos 
- Personal Especializado

### Arquitectura
![[Pasted image 20211016120859.png]]
***
# Laboratorio: Mysql
## Mysql
Programa que permite crear y mantener una bd, asegura su integridad, confidencialidad, seguirdad, esta disponible en windows y linux.

Para extraer informacion de una base de datos es necesario recurrir a un lenguaje de bd este se basa semanticamente en ingles y tiene un mantenimiento sencillo. Su sintaxis es en gran medida autoexplicativa.

## SQL
Es un lenguaje de programacion diseñado para almacenar, manipular y recuperar datos almacenados en una base datos relacionadas. 
### Caracteristicas
**Integridad:** Incluye comandos para especificar las restricciones de integridad que deben cumplir los datos almacenados en la base de datos.

**Definicion de vistas:** Comandos para definir las vistas

**Controla de transacciones:** Comandos para especificar el camienzo y el final de una transaccion.

**Autorizacion:** Comandos para especificar los derechos de acceso a las relacion y a la vistas.

**Lenguaje de programacion:** contiene dos partes
- **LDD** Lenguaje de Definicion de Datos -> Proporciona comandos para la creacion borrado y modificacion de esquemas relacionales.
- **LMD** Lenguaje de Manipaulacion de Datos ->Basado en el algebra relacional y el calculo relacionla permite realizar consultas y adicionalmente insertar, borrar y actualizar tuplas.
- **DCL** Lenguaje de Control de Datos -> Comandos GRANT y REVOKE

### Tipos de Datos Numericos Enteros
**TyniInt** Numero entero con o sin signo, Con Signo desde -128 a 127, Sin sino, de 0 a 255

**Bit o Bool** Numero entero que puede ser 0 o 1

**Small Int** Numero entero con o sin signo, Con signo desde -32768 a 32767, Sin signo, de 0 a 65535

**Medium Int** Numero entero con o sin signo. Con signo desde -8.388.608 a 8.388.607 Sin signo desde 0 a 16777215
 
**Integer Int** Numero entero con o sin signo. Con signo desde -2147483648 a 2147483647. Sin signo desde 0 a 429.4967.295

**Big Int** Numero entero o sin signo. Con signo desde -9.223.372.036.854.775.808 a 0.22.372.036.854.775.807

### Tipos de Datos Numericos Decimal
**Float** Numero pequeño en coma flotante de precision simple. 

**XRealm, Double** Numero en coma flotante de precision doble.

**Decimal, Dec, Numeric** Numero en coma flotante desempaquetado. El numero se almacena como una cadena

### Tipo de Datos Fecha
**Date**

**Date Time**

**Time**

**Year**

**TimeStamp**

### Tipos de Dato String

**Char**

**VarChar**

**Text y tipo BLOB**

**TyniText y TinyBlob**

**Blob y Text**

**MediumBlob y MediumText**

**LongBlob y LongText**

**Enum**

**Set**

### Consideraciones
SQL trabaja con sentencias que tambien se conocen como consultas o preguntas. Se escriben en mayuscula los comandos y en miniscula las bd y  las tablas. No es keysensitive

### Comandos SQL
Siempre al final de cada comando se debe colocar un ";".

| Comando                        | Descripcion                        |
|:------------------------------ |:---------------------------------- |
| `mysql -u <nombre usuario> -p` | Conectarse a bd                    |
| `show databases`               | Muestra bd                         |
| `use <nombre de bd>`           | Conecta a bd                       |
| `show tables`                  | muestra tablas de bd               |
| `describe <nombre de tabla>`   | muestra la estructura de una tabla |

### Comando "SELECT"
`SELECT <columna 1,columna 2, ...> FROM <tabla> WHERE <condicion> ORDER BY <secuenci>` 

Es posible ampliar la sentencia para una condicion opcional o para una funcion de clasificacion o de agrupacion.

| Comando    | Descripcion                       |
| ---------- | --------------------------------- |
| `WHERE`    | Condicion de seleccion            |
| `GROUP BY` | Nombre de las columnas            |
| `HAVING`   | Condiciones de seleccion de grupo |
| `ORDER BY` | Nombre de las columnas            |

#### ORDER BY
Controla el orden en el que se presentan las tuplas de una relacion.
A1, ... , An son atributos de la relacion resultante de la consulta

>Ai < direccion > controla si la ordenacion es ASC (ascendente) o DES (descendente) por el campo.


#### WHERE
Permite filtrar las filas de la relacion resultante.
> Se utilizan los conectores logicos AND, OR y NOT
> Operadores -> = ,<> (!=), <,<=,>=,>

| Comando | Descripcion                               |
| ------- | ----------------------------------------- |
| BETWEEN | Entre                                     |
| IN      | comprueba si el valor esta en el conjunto | 
| LIKE    | Igual que                                 |
| IS NULL | Es nulo                                   |
| NOT     | Niega                                     |

> Like -> Permite definir patrones a traves de los siguiente caracteres : 
> "%" cualquier subcadena de caracteres
> "_" cualquier caracter


#### Funciones de Columna o Agregacion
son funciones que toman una coleccion de valores de entrada y devuelve un solo valor. Las funciones disponibles son : AVG, MIN, MAX, SUM, COUNT.

Por defecto se aplican a todas las tuplas resultantes de la consulta.

Como conectarse:
![[Pasted image 20211016082242.png]]
>mysql -u **USER** -p -h webadmision.unmsm.edu.pe

mysql --host webadmision.unmsm.edu.pe --port 3306 --user torre_alexander --password