# **Comandos SQL**

## **FROM**
Selecciona y muesta los datos de una tabla 
## **SELECT**
Permite seleccionar y mostrar los datos de la columna(s) de una tabla(s)

>`SELECT columna FROM tabla`
>`SELECT * FROM tabla` -> Todas las columnas

## **DISTINC**
Permite seleccionar y mostrar los datos diferente de la columna(s) de una tabla(s)

> Solo muestra valores diferentes
`SELECT columna FROM tabla`

## **AS**
Renombra columna al momento de mostrar datos
> `SELECT columna AS nuevo_nombre FROM tabla`

## **COUNT**
Devuelve el numero de filas que coincide con un criterio en especifico
> `SELECT COUNT(columna) FROM tabla`
> `SELECT COUNT(name) AS n_paises FROM country`

## **MIN**
Devuelve el valor mas pequeño de la columna seleccionada.
> `SELECT MIN(columna) FROM tabla`

## **MAX**
Devuelve el valor mas grande de la columna seleccionada.
> `SELECT MIN(columna) FROM tabla`

## **SUM**
Devuelve la suma total de una columna numerica
>`SELECT SUM(columna) FROM tabla`

## **AVG**
Devuelve el valor promedio de una columna numerica
> `SELECT AVG(columna) FROM tabla`

## **GROUP BY**
Es usado para agrupar el conjunto de resultados de funciones agregadas como (count, max, min, avg, sum)
>`SELECTO COUNT(id_comprador), country FROM compradores GROUP BY country`

## **HAVING**
Se usa en lugar de WHERE en funciones agregadas
>`SELECT COUNT(id_comprador),country 
FROM compradores 
GROUP BY country 
HAVING COUNT(id_comprador) > 5`

La consulta mostrara a aquellos paises en donde hay mas de 5 compradores. Numero de compradores por cada pais que son mayores a 5

## **ORDER BY**
Permite mostrar elementos ordenados de forma ascendente(ASC) o descendente (DESC)
> `SELECT name,population FROM country ORDER BY population DESC`

## **WHERE**
Permite filtrar resultados mediante condiciones logicas
>`SELECT columna FROM tabla WHERE columna='valor'`

Operadores disponibles

| Operador | Descripcion             |
| -------- | ----------------------- |
| =        | Igual                   |
| <> o !=  | Diferente               |
| >        | Mayor                   |
| <        | Menor                   |
| BETWEEN  | Entre cierto rango      |
| LIKE     | Buscar segun un patron  |
| IN       | Varios valores posibles |
| AND      | Operador y              |
| OR       | Operador o              |
| NOT      | Niega operador          |

## **BETWEEN**
Se utiliza para seleccionar valores en un rango, funciona con numero y letras
> `SELECT * FROM products WHERE precio BETWEEN 10 AND 20`
> `SELECT * FROM products WHERE precio NOT BETWEEN 10 AND 20`

## **IN**
Permite especificar varios valores , se puede usar como un or multiple
>`SELECT * FROM compradores WHERE country IN('alemania','francia','UK')`

