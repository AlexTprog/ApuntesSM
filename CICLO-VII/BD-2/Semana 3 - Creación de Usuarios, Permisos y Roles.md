# Creacion de Usuarios Permisos y Roles

## Login
Que es?
Es la capacidad para poder utilizar una instancia del servidor SQL, esta asociado con un usuario de Windows o con un usuario de SQL

```sql
CREATE LOGIN '<login name>' WITH PASSWORD = '<password seguro>';
````

```sql
CREATE LOGIN '<login name>' WITH PASSWORD = '<password seguro>' MUST_CHANGE, CHECK_EXPIRATION = ON;
````

```sql
CREATE LOGIN [MyUser]
WITH PASSWORD = 'MyPassword'
DEFAULT_DATABASE = MyDatabase,
CHECK_POLICY = OFF,
CHECK_EXPIRATION = OFF;
````

## Roles
[[Semana 2 - Seguridad en BD#Rol]]

**Roles Predifinidos**
![[Pasted image 20220810203754.png]]
### Ejemplo de creacion de login
```sql
CREATE LOGIN Miguel WITH password 'contraseña'
GO
USE Ciclismo
GO
CREATE USER Miguel FOR LOGIN MIGUEL;
```

### Ejemplo de ROLES

```sql
ALTER ROLE db_reader ADD MEMBER Miguel;
```

### Ejemplo de DROP
```sql
DROP USER Miguel
GO
DROP LOGIN MIGUEL;
```


### GRANT
Asigna privilegios en la tabla Persona a Juan

```sql
GRANT ALL ON Persona TO Juan WITH GRANT OPTION;
```

Privilegio de SELECT sobre la tabla persona a Juan
```sql
GRANT SELECT ON Persona TO Juan;
```

###  REVOKE
Quita privilegios de consultar datos de la tabla.
```sql
REVOKE SELECT ON Persona FROM Juan;
```






SQL

Truncate -> No se guarda en el log
Drop -> Elimina tablas/bd
Delete -> Elimina filas
![[Pasted image 20220526175308.png]]