El aseguramiento de la calidad del software nos permite garantizar la calidad de un producto software. Para ello sera necesario que durante el desarrollo del ciclo de vida del software realicemos pruebas que nos permitan verificar el correcto funcionamiento de nuestro producto. Las herramientas para la realizacion de pruebas de software son fundamentales para el aseguramiento de la calidad del software, asu vez las herramientas de codigo abierto estan al alcance de todo aquel que desee usarlas. Para garantizar la efectividad de estas herramientas de codigo abierto, tendremos en cuenta la norma ISO/IEC 15504 SPICE. Las normas ISO/IEC 15504 SPICE son un estandar internacional que se encarga de determinar la capacidad de mejora del proceso de software. Este articulo describe la efectividad de herramientas de codigo abierto segun la norma ISO/IEC 15504 SPICE.


Linus Torval



Minix usa un microkernel a diferencia de Linux, por esto implementar un archivo multiproceso se vuelve mas complicado que cuando se usa un kernel monolotico, en caso de ser monolitico esto se vuelve una caracteristica automatica. 

Uno de los errores de minix es ser demasiado portatil, por ello minix no puede extenderse facilmente para implementar la paginacion por ejemplo. 

Linux puede implementar un sistema de archivos multiproceso ya que usa un kernel monolitico a diferencia de Minix que usa un kernel microkernel.

La API de Linux es portatil, debido a que se opto por tomar de base a Unix, el kernel de Linux es una parte minúscula de un sistema completo.

Si se escribe un programa para linux hoy no deberia tener muchas sopresas cuando los vuelva a compilar en años posteriores, debido a que si construccion no depende del hardware.