# Introduccion


## Prueba de entrada

1.
Es una rama de la ingenieria centrada en asegurar la correcta construccion de un producto software, desde la obtencion de los requerimientos hasta el despliegue o entrega del software final siguiendo estandares de calidad en cada una de las fases del ciclo de vida del software.


2.
conozco a bikeshop.db
Conozco los siguientes dbms
MYSQL, MARIADB, POSTGRESQL, SQLITE, SQLSERVER, MONGODB

3.
Una base de datos nos permite administrar grandes cantidades de informacion. Es un conjunto de datos ordenados

4.
La administracion de una base de datos consiste en el manejo de las difentes bases de datos, usuarios y privilegios que contengan cada uno

5.
Un DBMS es un software que nos permite administrar mutiples bases de datos

6.
Una dbms no sql es un sistema no sql o no estructurado el cual no permite relacionar datos entre si como lo hace un sistema sql

7.
Se debe analizar el proposito de la base de datos, realizar los diagramas entidad relacion correspondiente, implementar las tablas y definir quienes tendran acceso a esta

## Fases en el diseño e implementacion BD Grande
1. Recopilacion y Analisis de Requisitos
2. Diseño conceptual
3. Eleccion del DBMS
4. Mapeo de modelo de datos (Diseño logico)
5. Diseño fisico
6. Implementacion y puesta a punto del sistema

### Flujo
![[Pasted image 20220810191901.png]]

### Ciclo de Vida de una BD
![[Pasted image 20220810192028.png]]

1. Estudio previo
2. Modelado conceptual y logico
3. Evaluacion y seleccion de equipo fisico y logico
4. Diseño fisico
5. Carga
6. Prueba de programas

## Caracteristicas de una BD
* Un buen diseño
* Una eficacion plena
* Disponibilidad del 100%
* Una adaptacion a los requerimientos

## Que es SQL?
Sirve para el acceso  a bases de datos relacionales que permite especificar diversos tipos de operaciones en estas. Maneja el algebra relacional permitiendo efectuar consultas con el fin de recuperar informacion de interes.

**Structured 
Query
Language**

### Comandos basicos DDL
Lenguaje de definicion de datos, sirve para describir datos y sus relaciones en una base de datos . 
- CREATE
- ALTER
- DROP
- TRUNCATE
- COMMENT
- RENAME

### Comandos basicos DCL
Un Lenguaje de Control de Datos es un lenguaje proporcionado por el sistema de gestión de base de datos que incluye una serie de comandos SQL que permiten al administrador controlar el acceso a los datos contenidos en la base de datos.
- GRANT
- REVOKE

### Comandos basicos DML
Lenguaje de Manipulación de Datos es un lenguaje proporcionado por los sistemas gestores de bases de datos que permite a los usuarios de la misma llevar a cabo las tareas de consulta o modificación de los datos contenidos en las Bases de Datos del Sistema Gestor de Bases de Datos.
- SELECT
	- FROM
	- INTO
	- WHERE
	- GROUP BY
	- HAVING
	- ORDER BY
	- JOIN
	- Subqueries
- INSERT
- UPDATE
- DELETE

### Comandos basicos TCL
El Lenguaje de control de transacción permite manejar transacciones en una base de datos relacional.
- COMMIT
- SAVEPOINT
- ROLLBACK
- SET TRANSACTION

