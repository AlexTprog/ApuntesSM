# Integridad  Referencial

## Que es un modelo relacional?
Es un modelo teorico que constituye los cimientos de los manejadores de base de datos relacionales.
Es una forma de ver los datos que consta de :
- Una representacion de los datos mediante tablas llamadas "relaciones" **Estructura**
- Un conjunto de restricciones que permiten la consistencia de los datos **Integridad**
- Un conjunto de operadores que permiten manipular dichos datos **Lenguaje de manipulacion**

## Restricciones de Integridad
### Que es integridad referencial?
Es una sistema de reglas que utiliza la mayoria de bases de datos relacionales para asegurarse que los registros de tabllas realacionadas son validos y que no se borren o cambien datois relacionados de forma accidental produciendo errores de integridad.

### Clave primaria
- La clave primaria (PK) es un identificador único para una relación.
- La clave primaria puede ser compuesta (más de un atributo)
- Es posible que en una relación haya más de un identificador único o “clave candidata”: 
	- En estos casos una debe ser escogida como clave primaria y las otras se denominarán claves alternantes únicas.
- **Unicidad**: En cualquier momento dado, no existen dos tuplas en cualquier relación R con el mismo valor de K.
- **Minimalidad o Irreductibilidad:** Si K es compuesta, no será posible eliminar ningún componente de K, sin destruir la propiedad de unicidad.