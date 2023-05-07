## Ataques ARP

Como sucede en la mayoria de protocolos de comunicacion, el protocolo arp puede ser usado por un atacante para extraer informacion sensible de un usuario. El tipo de ataque mas conocido es ARP Spoofing o Poison


## ARP Spoofing o Poisonning
- Consiste en "envenenar una tabla ARP". Esta tecnica es utilizada para lograr entrar en unra red para robar los paquetes de datos que pasan por una red local.
- Es posible enviar mensajes falsificados ARP a una red LAN. Para vincular una direccion MAC con la IP de un servidor.

### Tipos
#### Ataques Man in the Middle (MiTM)
En este tipo de ataque el atacante envia respuestas ARP falsificadas para una direccion IP, por lo general hacia la puerta de enlace para una subred particular. Esto hace que las maquina de la victima llene su cache ARP con la direccion MAC de la maquina del atacante en lugar de la direccion MAC del router . 

Herramientas como Ettercap permiten al atacante actuar como un proxy, viendo o modificando información antes de enviar el tráfico a su destino previsto. Para la víctima, todo puede parecer normal.

- Combinar ARP Spoofing con el envenamiento de DNS peude aumentar drasticamente la efectividad de este tipo de ataques. En este escenario, la víctima podría ingresar un sitio legítimo como google.com y recibir la dirección IP de la máquina del atacante, en lugar de la dirección correcta.

#### Secuestro de sesion
Es similar a los ataques de "hombe en medio", pero en este caso el atacante no reenvia el trafico directamente  desde la maquina de la victima a su destino previsto. En cambio el atacante captura un numero de secuencia TCP genuino o una cookie web de la victima y lo usara para asumir la identidad de la victima. Esto podria usarse para acceder a la cuenta de redes sociales de un usuario si esta conectado.

#### Ataque de denegacion de servicios (DoS) - Inuncaion ARP
Si bien un ataque DoS tiene como objetivo negar a una o mas victimas el acceso a los recursos de una red. En el caso de ARP, un atacante podria enviar mensajes de respuesta ARP que asignan falsamente cientos o incluso miles de direcciones IP para sobrecargar un equipo. Tambien se puede apuntar a un conmutador para afectar el rendimiento de toda una red.

### Como se realiza un ataque ARP Poisoning?
Primero para poder realizar un ataque de este tipo se deben cumplir las siguientes condiciones.

- El atacante debe estar dentro de la misam red que la victima.
- Se debe escaneartoda la red local en busca de direcciones IP de la victima para posteriormente lanzar el ataque.
- Para poder crear un paquete ARP falso y enviarlo a la victima se debe hacer uso de dos herramientas Arpspoof y también BetterCap.
- Una vez que se envíe a la víctima los paquetes ARP falsos, creerá que nosotros somos el router. Pero para que la comunicación sea bidireccional también es necesario hacer creer al router que nosotros somos la víctima, por tanto, tendremos que lanzar dos ataques ARP Poisoning, uno a la víctima y otro al router.

en ese momento podremos aplicar cualquiera de las tecnias vistas anteriormente??



## Validaciones 
Para evitar ataques ARP Spoofing podemos o al menos dificultar la tarea de dañar nuestra red tenemos las siguientes opciones.

### Monitorizar la red
Podemos hacer uso de herarmientas y descubirr posibles vulnerabilidades en el sistema. tenemos opciones gratiuitidas y de codigo abierto como ARPWATCH que permite tener control sobre la actividad del trafico de Ethernet. Esto nos permite controlar en todo momento que dispositivos hay conectados a la red , que programas estan usando la conexion, quien podrias estar detras de un wifi etc.

### Subudivir red en partes
Hacer esto evita que en caso de un intento de ataque este solo afecte a solo una parte y no a toda la red global. si enbargo la implementacion suele ser compleja

### Protocolo Secure Neighbor Discovery

evita que un atacante que tiene acceso al segmento de transmisión pueda abusar de NDP o ARP para engañar a los hosts para que envíen El tráfico del atacante destinado a otra persona 'ARP envenenamiento'.

Su principal objetivo es resolver las direcciones IPv6 en direcciones MAC válidas, que son las direcciones de hardware propias de cada dispositivo. En IPv4, el encargado de esta función era el Address Resolution Protocol (ARP). Funciona también como protocolo de apoyo para la configuración dinámica de direcciones.


