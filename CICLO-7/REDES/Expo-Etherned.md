# Gateway y Bridges
Son utilizados para conectar muchas redes ethernet y permiten la comunicación a través.
## Gateway (Puerta de enlace)
Es un dispositivo  (a menudo una computadora o un router) que permite interconectar redes con diferentes protocolos y arquitecturas diferentes. Tiene como proposito traducir la informacion del protocolo utilizado en una red al protocolo de una red de destino.

La direccion Ip de un gateway a menudo utiliza algunos rangos predefinidos, 127.x.x.x, 10.x.x.x, 172.x.x.x , 192.x.x.x , que engloban o reservan a las redes locales. Necesariamente un equipo que haga de gateway debe tener 2 tarjeta de red. 

Normalmente actua como un punto de entrada o salida  para una red desde que todo el trafico que fluye atraves de las redes deberia pasar a traves del gateway. Solo el trafico interno entre dispositivo de una red no pasa a traves del gateway.

Los Gateway pueden adoptar varias formas con el propósito de cumplir ciertas tareas. Por ejemplo:

-   Firewall de aplicaciones web: filtran el tráfico hacia y desde un servidor web, analizando los datos de la capa de aplicación.
-   Gateway de almacenamiento en la nube: es un servidor de red que descifra las solicitudes de almacenamiento en la nube. Además, permite almacenar la información en una sola red privada.
-   Gateway API: supervisan el flujo de tráfico dentro y fuera de un servicio.
-   Gateway loT: permiten agregar y transmitir datos a los sensores en un entorno loT (Internet de las cosas).
-   Gateway VoIP: facilitan el uso de datos con los servicios de telefonía antiguo.
-   Gateway de seguridad de email: evitan la entrada de correos electrónicos que no cumplan con la política de la empresa.

## Bridges (Puerto de red)
Es un dispositivo de interconexión que opera en la capa 2 (nivel de enlace de datos).

Este interconecta dos segmentos de red manteniendo el mismo protocolo haciendo el pasaje de datos de una red hacia otra con base en las direcciones MAC de gestion de cada paquete.

Funciona  traves de una tabla de direcciones MAC detectadas en cada segmento a que esta conectado. Cuando detecta que un nodo de uno de los segmentos esta intentando transmitir datos a un nodo del otro, el bridge copia la trama para la otra subred. Por utilizar este mecanismo de aprendizaje automático, los bridges no necesitan configuración manual.

  
Los puentes se clasifican, de acuerdo a su **configuración**, en:

-   **Transparentes**. No requieren ninguna configuración para su funcionamiento.
-   **No transparentes**.  Necesitan que la trama lleve información sobre el nodo (que ha de ser reexpedida.)

Los puentes se clasifican, de acuerdo al **ámbito** de actuación, en:

-   **Locales**. Une dos o más segmentos de una misma red.
-   **Remotos**. Está dividido en dos partes, cada uno de ellas tiene conectado un segmento de red y las dos partes se unen a través de la línea de una red WAN.

Los puntos de acceso inalámbricos suelen tener un modo bridge para que puedan realizar esta función.

https://sites.google.com/site/redeslocalesyglobales/2-aspectos-fisicos/5-dispositivos-de-interconexion-de-redes/3-puentes

# Capa de enlace de datos (Capa 2)
La capa de enlace de datos es la responsable de del intercambio de datos entre un host cualquiera, y la red a la que está conectado. Permitiendo una correcta comunicación entre las capas superiores (Red, Transporte y Aplicación) y el medio físico de transporte de datos. Su principal objetivo es la de proveer una comunicación segura entre dos nodos pertenecientes a una misma red o subred, para ello se encarga de la notificación de errores, de la topología de la red y el control del flujo en la transmisión de las tramas.

Proporciona sus servicios a la Capa de Red, suministrando un tránsito de datos confiable a través de un enlace físico. Al hacerlo, la capa de enlace de datos se ocupa del direccionamiento físico (comparado con el lógico), la topología de red, el acceso a la red, la notificación de errores, formación y entrega ordenada de tramas y control de flujo. Por lo tanto, su principal misión es convertir el medio de transmisión en un medio libre de errores de cualquier tipo. En la fig. 1 se muestra como es el flujo de los datos a partir de la capa de enlace de acuerdo al modelo OSI, de manera virtual lo datos fluyen de la capa de red a la capa de enlace de datos y de ahí al la capa de enlace en el siguiente nodo, la cual los prepara para enviarlos a la capa de red. La trayectoria real incluye el paso de estos datos por la capa física del modelo.

En el estándar TCP/IP se diferencia la capa de enlace de datos en dos subcapas:

*  Subcapa de enlace al medio

*  Subcapa de enlace lógico

## Subcapa de Enlace Lógico LLC
Establece rutas para que los datos en ethernet se transmitan entre dispositivos
transporta los datos de protocolo de la red, un paquete IP, y agrega más información de control para ayudar a entregar ese paquete IP en el destino, agregando dos componentes de direccionamiento: el Punto de Acceso al Servicio Destino (DSAP) y el Punto de Acceso al Servicio Fuente (SSAP). Luego este paquete IP reempaquetado viaja hacia la subcapa MAC para que la tecnología específica requerida le adicione datos y lo encapsule.

La subcapa LLC de la Capa de Enlace de Datos administra la comunicación entre los dispositivos a través de un solo enlace a una red. LLC se define en la especificación IEEE 802.2 y soporta tanto servicios orientados a conexión como servicios no orientados a conexión, utilizados por los protocolos de las capas superiores. IEEE 802.2 define una serie de campos en las tramas de la capa de enlace de datos que permiten que múltiples protocolos de las capas superiores compartan un solo enlace de datos físico.

## Subcapa de Enlace Fisico MAC
La MAC constituye la subcapa inferior de la capa de enlace de datos. La MAC se implementa mediante hardware, por lo general, en la NIC de la PC. Los detalles se especifican en los estándares IEEE 802.3. En la figura 2, se enumeran los estándares IEEE de Ethernet comunes.

Esta subcapa se refiere a los protocolos que sigue el host para acceder a los medios físicos, fijando así cuál de los computadores transmitirá datos binarios en un grupo en el que todos los computadores están intentando transmitir al mismo tiempo.

Utiliza direcciones de hardware asignadas a tarjetas de interfaz de red nic para identificar un dispositivo muestra el origen y destino de las transmisiones de datos

## Acceso Múltiple con Escucha de Portadora y Detección de Colisiones CSMA/CD

Este protocolo es una mejora del CSMA, su nombre indica Carrier Sense Multiple Access/collision avoidance, lo cual quiere decir que es un protocolo orientado a evitar las colisiones de paquetes en la línea. CSMA/CA opera de la siguiente manera:

1.       La estación que desea transmitir “escucha” a la portadora para conocer su estado

2.       Si la portadora esta inactiva, entonces inicia la transmisión, si el canal esta ocupado entonces debe esperar un tiempo aleatorio.

3.       Cuando se detecta que el canal está despejado la estación que va a transmitir envía una señal a los demás equipos indicando que se va a transmitir un paquete, por lo tanto que los demás no transmitan.

4.       Luego envía el paquete y espera por una recepción del receptor, que indica si el paquete fue recibido, para luego liberar el canal.

Debido a sus características este protocolo es usado mayormente en redes inalámbricas que cumplen con el estándar 802.11 de la IEEE, debido a que evita en gran medida las colisiones.

https://sites.google.com/site/comdatosgrupo4/contenidos/cap2_capa-enlace-datos


## Repetidores
Esto puede hace referencia a dos tipos de dispositivos
- Un dispositivo [analógico](https://es.wikipedia.org/wiki/Se%C3%B1al_anal%C3%B3gica "Señal analógica") que [amplifica](https://es.wikipedia.org/wiki/Amplificador "Amplificador") una señal de entrada, independientemente de su naturaleza (analógica o digital).
- Un dispositivo [digital](https://es.wikipedia.org/wiki/Se%C3%B1al_digital "Señal digital") que amplifica, conforma, retemporiza o lleva a cabo una combinación de cualquiera de estas funciones sobre una señal digital de entrada para su retransmisión.

En el caso de las [señales digitales](https://es.wikipedia.org/wiki/Se%C3%B1al_digital "Señal digital") el repetidor se suele llamar [regenerador](https://es.wikipedia.org/wiki/Regenerador "Regenerador") porque la señal de salida es una “señal regenerada” a partir de la de entrada.

La naturaleza del repetidor surge de la imposibilidad de transmitir una señal desde un emisor hasta un receptor/res que se encuentren a distancias muy lejanas o de la necesidad de salvar obstáculos geograficos como montañas o cordilleras.

Un repetidor suele formar parte de un [sistema de transmisión]. En el modelo de referencia [OSI]  el repetidor opera en el [nivel físico].

Asimismo, se utilizan repetidores en los enlaces de telecomunicación punto a punto mediante radioenlaces que funcionan en el rango de las [microondas], como los utilizados para distribuir las señales de televisión entre los centros de producción y los distintos emisores o los utilizados en redes de telecomunicación para la transmisión de telefonía.


## Preguntas
¿De que depende que la conexión Ethernet  sea  correcta?

Depende que los segmentos del medio sean construidos de acuerdo
a las reglas para el tipo de medio, en las Redes LAN complejas construidas con
múltiples tipos de medio deben ser diseñadas de acuerdo a las pautas de
configuración para multisegmentos provistas en el estándar Ethernet es decir se
incluyen límites en el número total de segmentos y repetidores que pueden ser
utilizados en su construcción

¿En que esta basado el tiempo de señal?

El tiempo de la señal está basado en la
cantidad de tiempo que le toma a una señal ir de un extremo de la red al otro y
regresar (Round Trip Time).

