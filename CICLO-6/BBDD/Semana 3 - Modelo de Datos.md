# Modelo de Datos
## Esquema Conceptual
Decripcion de la estructura de los datos de interes.
Un **esquema conceptual** se representa mediante un modelo conceptual de datos.

Cualidades que debe poseer un modelo conceptual:
- Expresividad
- Simplicidad
- Minimalidad
- Formalidad

Ademas hay que añadir aserciones que complementen el esquema.

## Modelo Entidad Relacion
Es el modelo conceptual mas utilizado para el diseño conceptual de base de datos. Fue introducido por **Peter Chen** en 1976.

![[Pasted image 20211029103042.png]]

## Entidad
Tipo de objeto sobre el que se recoge informacion: Cosa, persona, concepto abstracto su suceso (coches, casas, empleados, clientes, empresas, oficios, diseños de productos, conciertos, excursiones, etc)
Las entidades se representan graficamente mediante rectangulos y su nombre aparece en el interior.
Un nombre de entidad solo puede aparecer una vez en el esquema.
![[Pasted image 20211029103641.png]]

## Relacion (Interrelacion)
**Correspondencia o asociacion** entre dos o mas entidades.
Las relaciones se representan graficamente mediante rombos y su nombre aparece en el interior.
**La cardinalidad** con la que una entidad participa en una relacion especifica el numero minimo y el numero maximo de correspondencias en las que puede tomar parte cada ocurrencia de dicha entidad.
![[Pasted image 20211029103945.png]]

## Atributo
Caracteristicas de Interes sobre una entidad o sobre una relacion. 
La cardinalidad de un atributo indica el numero minimo y el numero maximo de valores que puede tomar para cada ocurrencia de la entidad o relacion a la que pertenece. El valo por omision es (1,1).

![[Pasted image 20211029104639.png]]

## Jerarquia de Generalizacion
La entidad E es una generalizacion de las entidades E1, E2, ... En, si las ocurrencias de estas son tambien ocurrencias de E. Todas las propiedades de la entidad generica son heredadas por las subentidades.
Cada jerarquia es total o parcial y exclusiva o superpuesta. Un subconjunto es en caso particular de generalizacion con una sola entidad como subentidad. Un subconjunto siempre es una jerarquia parcial y exclusiva.

![[Pasted image 20211029110838.png]]

## Atributo Compuesto
Grupo de atributos que tienen afinidad en cuanto a su significado o en cuento a su uso. Un atributo compuesto se representa graficamente mediante un ovalo.
![[Pasted image 20211029110955.png]]

## Identificador
Un identificador de una entidad es un atributo o conjunto de atributos que determina de modo unico cada ocurrencia de esta entidad. Todo identificador debe cumplor:
- No pueden existir dos ocurrencias de la entidad con el mismo valor del identificador.
- Si se omite cualquier atributo del identificador, la condicion (1) deja de complirse 

Toda la entidad tiene al menos un identificador y puede tener varios identificador alternativos.

![[Pasted image 20211029111533.png]]

## **Metodologia de Diseño Conceptual**
Para cada area funcional de la empresa se contruye un esquema conceptual siguiendo estos pasos:
1. Identificar las entidades
2. Identificar las relaciones
3. Identificar los atributos y asociarlos a entidades y relaciones
4. Determinar los dominios de los atributos
5. Determinar los identificadores
6. Determinar las jerarquias de generalizacion
7. Dibujar diagrama entidad relacion
8. Revisar el esquema conceptula local con el usuario