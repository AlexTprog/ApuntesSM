# Gestion de la Configuracion del Software (SCM)
Es un proceso que permiten gestionar un software durante todo su ciclo de vida. **Establecer una linea base** e informar del estado de elementos, controlar los cambios, el almacenamiento y releases . Ademas de asegurar la completitud y consistencia del software.

> Se aplica durante todo el proceso para identificar, organizar y controlar las modificaciones que sufre el software

Administra el contenido


![[Pasted image 20211011145908.png]]

Se aplica durante todo el ciclo de vida del software

> **Matenimiento:** mantener el software actualizado, realizar cambios luego de produccion
> **Artefacto:** Entregables, Historias de usuario, casos de uso.

## Evolucion del Software
El software es muy costoso por lo que suele tener una larga vida, para evitar que quede obsoleto este debe seguir modificandose agregando nuevas funcionalidades. 

> El software esta obligado a mantenerse actualizado para justificar su alto costo.

**Problemas que ocurren al darle mantenimiento al software**
- ¿Que version tiene el cliente? ¿A cual corresponde el error?
- La version actual del codigo se sobreecribe por una anterior.
- Una actualizacion critica se descarta de la version final.
- Se hacen cambios a una version incorrecta del codigo
- Reaparecen errores ya corregidos
- No se logra determinar que versiones de archivos van en una entrega.


## Tareas del proceso de la SCM
- ¿Como identificar las muchas versiones de un programa y su documentacion eficientemente?
- ¿Como controlar la organizacion de cambios antes y despues de la distribucion?
- ¿Quien es el responsable de aprobar y asignar prioridades a los cambios?
- ¿Como garantizar que los cambios se han hecho eficientemente?

- Identificar las versiones de un programa y su documentacion
- Controlar la organizacion de cambios antes y despues de la distribucion
- Designar responsable de aprobar y asignar prioridades a los cambios
- Garantinzar que los cambios se han hecho eficientemente

## Resultados esperado de la SCM segun la NTP(Norma Tecnica Peruana)
Se espera que al desarrolgar una estrategia de gestion de configuracion:
Tenga definida mi linea base, pueda identificar quien realizo los cambios, que tenga los items identificados.


- Desarrolla una estrategia de gestio de configuracion
- Identifican definen y establecen la **linea base** de los productos/items generados por el proceso o proyecto
- Controlan las modificaciones y versiones de productos/items
- Pone a disposicion las modificaciones y versiones
- Regitrar e informar el estado de los productos/items y las modificaciones
- Consistencia de productos/items
- Control del almacenamiento, manejo y entrega de productos/items

`NTP ISO/IEC 12207:2006`

## Mantenimiento del Software
El mantienimiento hace que el software se mantenga actualizado hace que "evolucione".
Consiste en cambiar un sistema, despues de que este se entrego.
### Tipos de mantenimiento de software
- Reparacion de fallas
- Adaptacion ambiental - Hardware o Sistema Operativo
- Adicion de funcionalidad

## SWEBOK
la biblia de la ing de software
## Proceso de la SCM
**Planeamiento de la Gestion de la SCM (SCMP)**
**Identificacion de la SCM**
**Control de la SCM**
**Estado de la Contabilidad de la SCM**
**Auditoria de la SCM**
**Gestion y Entrega de las Releases del Software**

### Estado de la SCM
![[Pasted image 20211013101619.png]]

### Roles 
#### Comite de Control de Cambios (CCB)
**Funciones:**
Coordinar respecto a la gestion cambios
Dar seguimiento a la gestion de cambios
Evaluar los registros
- Evaluar registro de eventos
- Gestionar solicitudes de cambio
- Mantener un seguimiento de registros de eventos y solicitudes de cambios.
- Apoyar con el registro de eventos
- Coordinar con la gestion de proyecto
#### Bibliotecario
El encargado de las librerias dentro del proyecto
- Definir y dar mantenimiento a las bibliotecas (librerias) usadas en la SCM
- Asegurar aspectos practicos de la SCM
#### Gestor de la gestion de la configuracion
Implementa, mantiene y mejora la SCM
- Implementar mantener y mejorar la SCM
- Reponsable de la herramiento durante la SCM

## Herramientas SCM
`Sistemas de control de versiones`
- Github
- Gitlab
- SourveOffsite
- Subversion SVN
- Tortoises SVN
- Mercurial
- Rational ClearCase
- Team Foundation Server

### Ramas
Iran con los apellidos del integrantes
### Estructura del repositorio
![[Pasted image 20211013103505.png]]