## Tabla
Datos que se almacenan en las tablas
Son realaciones que se caracterizan por posee esquema, cuerpo y estado

![[Pasted image 20211209190917.png]]

## Registros(Tuplas)
Filas de la tabla y representan los datos referentes a una misma persona contexto o suceso.

![[Pasted image 20211209191006.png]]

## Campos
Columnas de una tabla o relacion y representa datos que se almacenan en ella, posee un nombre y un tipo de dato el cual se debe respetar

![[Pasted image 20211209191053.png]]

## Dominio
Tipo de dato que corresponde a una tabla.

![[Pasted image 20211209191124.png]]

## Clave Foranea
Es la llave primaria de una tabla que se agrega a otra como un nuevo campo, con el objetivo de mantener una interrelacion.

![[Pasted image 20211209191243.png]]

## Modelo Logico

Antes construir el modelo logico se debe tener elegido el SGDB con el que se va a trabajar.
- La bd se vera como un conjunto de relaciones
- Se fundamenta en una base matematica (Algebra Relacional) lo que permite manipular los datos de manera eficiente

### Pasar de Modelo Conceptual a Logico
1. Elegir el SGDB
2. Modelo Conceptual: ![[Pasted image 20211209191535.png]]

#### Cardinalidad de 1:1
> Para relaciones de 1:1 existen 3 opciones para su transformacion

3. Modelo Logico: ![[Pasted image 20211209191600.png]] ![[Pasted image 20211209191657.png]] ![[Pasted image 20211209191706.png]]

#### Cardinalidad de 1:N
Escenario 1:
![[Pasted image 20211209192229.png]]
![[Pasted image 20211209192242.png]]

Escenario 2:
![[Pasted image 20211209192258.png]]
![[Pasted image 20211209192303.png]]

#### Cardinalidad de N:M
![[Pasted image 20211209192441.png]]
![[Pasted image 20211209192445.png]]

