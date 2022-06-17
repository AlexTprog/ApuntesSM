## Problema
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

## Problemas de Red
Suele estar relacionado a las actividades de los discors, del cpu, uso de la memoria