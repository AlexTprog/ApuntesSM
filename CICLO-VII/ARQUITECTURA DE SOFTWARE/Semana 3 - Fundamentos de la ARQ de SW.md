# Que es arquitectura de software
Los elementos obtenido en la fase de analisis son utilizados en la fase de diseño
Para desarrollar la arquitectura debemos contar con multiples artefactos

- Grady booch
Arquitectura subdominio del diseño.



# Estilos de  arquitectura de software
## Arquitectura de aplicaciones
Se define mediante:
Elementos + Forma + Razon = arquitectura
| Elementos     |                                  |
| ------------- | -------------------------------- |
| Procesamiento | Transforman datos                |
| Datos         | Contienen informacion a procesar |
| Conexion      | Llamadas a procedimiento         |
 **Forma** -> Propiedades y relaciones
 **Razon** -> Motivacion para eleccion
 
## Estilos de arquitectura
Elementos y aspectos formales a partir de diversas arquitecturas especificas.

Definen:
1. Conjunto de componentes, realiza funcion requerida por el sistema
2. Conjunto de conectores, 
3. Modelos Semanticos

### Utilidad
Proporciona un lenguaje comun
Encapsula variedad de configuraciones concretas
Definen los patrones posibles de las aplicaciones
Permiten evaluar arquitecturas alternativas con ventajas y desvnetas

### Estilos
| Estilos de arquitectura |                                                              |
| :----------------------- | :------------------------------------------------------------ |
| Comunicacion            | SOA; Bus de mensajes                                         |
| Despliegue              | Cliente/servidor  ;N-Tier-3-Tier                              |
| Dominio                 | Diseño impulsado por dominio                                 |
| Estructura              | Arq. Basada encomponentes;Arq Orientada objetos;Arq en capas |


#### Cliente servidor
Dos aplicaciones donde el cliente hace peticiones al servidor muchos casos el servidor es una base de datos con logica de aplicaion representada como procedimientos almacenados
![[Pasted image 20220528123646.png]]
Principales beneficios:
- Mayor seguridad
- Acceso a datos centralizado
- Facilidad de mantenimiento

#### Arq Oritenda a objetos
Division de responsabilidades para una aplicacion o sistema en objetos individuales reutilizables y autosuficientes, cada uno conteniendo los datos y el comportamiento relevantes para el objeto
![[Pasted image 20220528124058.png]]
Beneficios:
- Abstraccion
- Composicion
- Herencial
- Encapsulamiento
- Polimorfismo
- Desacoplamiento

#### Soa
Arquitectura orientada a servicios, exponene y consumen funcionalidad como un servicio mediante contratos y mensajes.

![[Pasted image 20220528124205.png]]

Los principales beneficios:
* Alineacion de dominio
* Abstraccion
* Descubrimiento
* Interoperabilidad
* Racionalidad