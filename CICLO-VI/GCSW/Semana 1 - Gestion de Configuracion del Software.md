# Fundamentos de la Gestion de la Configuracion del Software (SCM)
Se refiere mas al tema de gestion que de codificar, consiste en aplicar procedimientos tecnicos y administrativos a lo largo del ciclo de vida del software.
![[Pasted image 20211011145908.png]]
Se aplica durante todo el ciclo de vida del software

> **Matenimiento:** mantener el software actualizado, realizar cambios luego de produccion
> **Artefacto:** Entregables, Historias de usuario, casos de uso.

## Evolucion del Software
Nunca se detiene cuando se entrega el sistema, continua a lo largo de la vida de este.
Es necesario modificarlo para mantenerlo "vivo". La innovacion deber ser constante e incluir por ej, nuevos requeirmientos, cambios empresariales, expectativas de usaurio, etc.
Los sistemas de SW utiles tienen larga vida, puesto que el costo del software es elevado, una compañia tiene que usar un sistemas un largo plazo para recuperar su inversion.

**Problemas**
- Archivor perdidos: no se donde lo puse
- Referencias perdidas: las librerias no estan
- Sobreescribir codigo de otro: sobrescriben su trabajo mutuamente
- No hay boton deshacer: no hay un sistema de control de versiones, los nuevos cambios son peores, pero no se puede volver atras.

**Soluciones**
`disciplina de control,dentro del proyecto`
> **SCM:** se aplica durante todo el proceso de ing software, permite identificar, organizar y controlar modificaciones que sufre el software. 
> Sirve para administrar y controlar el contenido de un producto de software y cambios durante la evolucion del software durante todo el proceso de desarrollo


## Tareas del proceso de la SCM
- Identificar las versiones de un programa y su documentacion
- Controlar la organizacion de cambios antes y despues de la distribucion
- Designar responsable de aprobar y asignar prioridades a los cambios
- Garantinzar que los cambios se han hecho eficientemente

## Resultados esperado de la SCM segun la NTP(Norma Tecnica Peruana)
- Desarrolla una estrategia de gestio de configuracion
- Identifican definen y establecen la **linea base** de los productos/items generados por el proceso o proyecto
- Controlan las modificaciones y versiones de productos/items
- Pone a disposicion las modificaciones y versiones
- Regitrar e informar el estado de los productos/items y las modificaciones
- Consistencia de productos/items
- Control del almacenamiento, manejo y entrega de productos/items

`NTP ISO/IEC 12207:2006`

## Mantenimiento del Software
Consiste en cambiar un sistema, despues de que este se entrego.
### Tipos de mantenimiento de software
- Reparacion de fallas
- Adaptacion ambiental
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
- Evaluar registro de eventos
- Gestionar solicitudes de cambio
- Mantener un seguimiento de registros de eventos y solicitudes de cambios.
- Apoyar con el registro de eventos
- Coordinar con la gestion de proyecto
#### Bibliotecario
- Definir y dar mantenimiento a las bibliotecas (librerias) usadas en la SCM
- Asegurar aspectos practicos de la SCM
#### Gestor de la gestion de la configuracion
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