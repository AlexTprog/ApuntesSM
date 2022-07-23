## Validaciones 
tabla arp


## Ataques ARP

Como sucede en la mayoria de protocolos de comunicacion, el protocolo arp puede ser usado por un atacante.

**ARP Spoofing o Poisoning** (suplantacion de arp)
Consisten en el uso del protocolo para hacerse pasar por quien alguien mas. Para suplantar a otra persona o equipo.

Con ello se consigue robar datos importantes de cualquier usuario particular. El atacante interecepta toda la informacion que se envia como contraseñas o datos, si la red esta desprotegida puede llegar a suplantar la identidad  y obtener informacion confidencial. Se puede prevenir mediante el uso de tablas arp estaticas pero no suele ser viable.


Para realizar es tipo de ataques se  utilizan herramientas como arpsoof o drifnet



**Como se detecta**
Podemos hacer uso de la tablas ARP y comprobar que todas las direcciones MAC sean distintas. Si exisitiera alguna repetida implicaria que estamos siendo victimas de ARP Spoofing

Por lo general  la direccion mac duplicada hace referencia al (gateway) pues se intenta redirigir el trafico que se envia hacia internet

**Ataques Dos**
En este caso el atacante envia una gran cantidad de solicitudes para que los sitemas , servidores oredes no puedan responder con normalidad.

Una vez un atacante ha logrado explotar el protocolo ARP, puede llevar a cabo **ataques DDoS** o de denegación de servicios distribuidos. Puede llegar a bombardear un servidor con una gran cantidad de solicitudes y que no pueda resolverlas adecuadamente.

