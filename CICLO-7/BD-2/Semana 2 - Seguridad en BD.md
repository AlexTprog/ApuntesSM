# Seguridad en una DB
## Seguridad y Auditoria
- Los datos confidenciales en manos ajenas pueden ser muy riesgosos
- La base de datos de una empresa es uno de sus activos mas importantes
- La auditoria de base de datos busca monitorear y garantizar que la informacion esta segura, ademas de brindar ayuda a la organizacion para detectar posibles puntos debiles y asi tomar precauciones para resguardar aun mas los datos.

## Que es un activo de informacion?
Todo aquello que tiene valor para la organizacion y por lo tanto requiere proteccion.

**Documentos en papel:** Contratos, guias
**Software:** Aplicativos y software de sistemas.

### Como proteger los activos?
##### Mediante la gestion de privilegios y usuarios con SQL.
- Nivel de cuenta, privilegios de usuario, CREATE SCHEMA
- Nivel de relacion. Se aplica a las relaciones individuales, SELECT MODIFY REFERENCES
- Los privilegios se dan o quitan con GRANT y REVOKE
- Se puede crear y eliminar roles de usuario con CREATE.


##### Encriptacion
Proceso de volver ilegible la informacion considerada importante. La informacion encriptada puede leerse aplicandole una clave.

Se trata de una medida de seguridad que es usada para almacenar o transferir informacion delicada.

**Proceso de encriptacion**
1. Texto a codificar: ENCRYPTION
2. Caracteres del Texto:  E N C R Y P T I O N
3. Codigo ASCII:                69 78 67 82 89 80 69 78 67 82 89 80 8
4. Texto codificado:          “e?©Ÿ?¨


## Usuario
Es un nombre definido en la base datos que puede conectarse a ella y acceder a determinada informacion segun los permisos que tenga asignados por el administrador
El objetivo de la creacion de usuarios es establecer una cuenta segura y util, que tenga los privilegios adecuados y los valores por defecto adecuados-

## Rol
- Conjunto de permisos. Los roles permiten agrupar derechos y gestionar mas facilmente los diferentes usuarios.
- Siempre es preferible asignar los derechos a los roles y posteriormente asignar los roles a los usuarios que tenga asignados por el administrador.
- Facilita la adicion y la modificacion de permisos de usuario

**Nivel de servidor**
Para controlar el acceso a los recursos del servidor
**Nivel de DB**
Acciones administrativas de la DB



## Privilegios
Son atributos que permiten a un usuario realizar determinadas operaciones dentro de una BD o acceder a objetos de otros usuarios.
- Privilegios sobre los objetos
- Privilegios sobre el sistema

