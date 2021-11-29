# Plan de la Gestion de la Configuracion del Software Identificacion de la GCS
1. Introduccion (Proposito, aplicabilidad, gobierno , alcance y definiciones)
2. Gestion del SCM
	1. Organizacion
	2. Roles o responsabilidad
	3. Politicas, Directrices y procedimientos
	4. Herramientas, entorno e infraestructura
	5. Calendario
3. Actividades de la SCM
	1. Identificacion
	2. Control
	3. Estado
	4. Auditoria
	5. Gestion

## Clasificacion de los Items de la Configuracion
- Items en Evolucion -> Documentos en constante revision
- Items Fuente -> Codigo Fuente, Archivos de Objeto utilizados
- Items Soporte -> Sistemas operativos, Software de base, Se necesita para que el sistema funcione.

## Actividades de la SCM
**Clasificacion de los Items de la Configuracion**
![[Pasted image 20211108143952.png]]

**Nomenclatura de los Items de la Configuracion (CI)**

> ACRONIMO DEL PROYECTO + “-” + ACRONIMO DEL ELEMENTO

**Documentos**
- No asociado a un proyecto unico: 
Politicas, guias,descripciones de procesos  "AcronimoArtefacto" EJ: SPMP (Software Project Managenment Policy)

- Asociados a un proyecto pero no aun componente
"AcronimoProyecto+AcronimoArtefacto" EJ: ACME-SCMP

- Asociados a un componente de un proyecto 
"AcronimoProyecto+AcronimoComponente+AcronimoArtefacto" EJ: ACME-B2B-SRD

**Version**
Se mantiene separado del identifcador principal "Version.Revision" 
EJ: 1.1		; 	Version 1,Revision 1

- Cambio de version, cuando la arquitectura o estructura principal  cambia. Ej: 1.1-> 2.0
- Cambio de revision, cuando se realizan cambios. Ej: 1.0 ,1.1 , 1.2

**Archivos ejecutables**

- Ejecutables del software en desarrollo, "Nombre+numeroversion" EJ:"MAIN DB v1.1a"
 


## Librerias Controladas
**Libreria Principal**

|                  Rol                   | Tipo de Acceso                                            |
|:--------------------------------------:|:--------------------------------------------------------- |
| Gerente de configuracion (responsable) | Leer, Escribir, Ejecutar, Eliminar                        |
|          Gerente del Proyecto          | Leer, Escribir, Ejecutar, Eliminar(requiere autorizacion) |
|            Desarrolladores             | Leer, Ejecutar                                            |

> Mantiene actualizada las lineas base durante el proyecto.

Contenido: 
Linea base de ->
- Planificacion
- Especificacion de Requeriminetos
- Diseño
- Construccion
- Integracion y pruebas
- Aceptacion y entrega

**Libreria en Trabajo**

| Rol                                  | Acceso                          |
| ------------------------------------ | ------------------------------- |
| Arquitecto de Software (responsable) | Leer Escribir Ejecutar Eliminar |
| Desarrolladores                      | Leer Escribir Ejecutar          |

> Revision de items pertenecientes a la biblioteca

Contenido: 
- Codigo y documentacion (subsistemas, componentes,modulos,pruebas, procedimientos,datos y casos de prueba)

**Libreria en Soporte**

| Rol                                 | Acceso                          |
| ----------------------------------- | ------------------------------- |
| Arquitecto de Software(responsable) | Leer Escribir Ejecutar Eliminar |
| Desarroladores                      | Leer Escribir Ejecutar          |
| Ingeniero de Pruebas                | Leer Ejecutar                   |

> Revision de niveles de integracion, Actualizacion de items bajo autorizacion

Contenido:
Codigo y documentacion (aprobados)


**Repositorio de Software**

| Rol                                    | Acceso                          |
| -------------------------------------- | ------------------------------- |
| Gerente de Configuracion (responsable) | Leer Escribir Ejecutar Eliminar |
| Desarroladores                         | Leer Ejecutar                   |

> Actualizar la version de softwre y la documentacion, incorporar nuevas versiones

Contenido:
- version del software liberado y documentado, nuevas versiones de software, componentes reusables del software

