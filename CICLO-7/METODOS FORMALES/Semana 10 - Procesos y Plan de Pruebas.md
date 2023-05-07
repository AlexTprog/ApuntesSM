# Procesos y plan de pruebas

## Que es un plan de pruebas?
Tradicional
Es un documento que sirve para dar seguimiento a las pruebas.

Agil
En el mundo agil se utiliza una guia general aplicable a muchos proyectos con sus respectivos ajustes.

## Que suele contener el pan de pruebas?
- Casos de prueba (como anexo)
- Cronograma
- Herramientas
- Requisitos
- Alcance
- Referencia a las pruebas de rendimiento
- Referencia a las pruebas de aceptacion
- Supuestos *
- Riesgos
- Referencia a los casos de prueba

## Ejemplos de planes de pruebas
### Enfoque minimalista
- Hoja de calculo para seguimiento de pruebas
	- Estructura jerarquica hasta llegar a los casos de pureba individuales, indentificacion ,descripcion , estado, comentarios , fecha , quien realizo la prueba etc.
	- Entradas 
	- Salidas esperadas

### Enfoque Personal
- Asignacion temporal o rotacion entre equipo de desarrollo y prueba.ç
- Formacion de equipos especializados
	- Internos (mejor conocimiento funcional)
	- Externos (mas especializado, menos conocimiento funcional)
- Principio basico: asignar recursos suficientes tanto a la preparacion de pruebas como a su ejecucion
- Relacion de tamaños de equipos de desarrollo respecto a pruebas
- Ventana temporal para pruebas
	- Siempre considerar varios ciclo
	- minimo 2

## Casos de prueba
Un cp debe tener como objetivo mejorar el rendimiento del sistema y reducir los costos en tres categorias:
- Productividad: menos tiempo para escribir y mantener los casos
- Capacidad de prueba: menos tiempo para escribir y mantener los casos
- Programar la fiabilidad: estimaciones mas fiables
### Componentes de un caso de prueba
1. Proposito: de la prueba, descripcion del requisito que se esta probando
2. Metodo: Foma en como se prueba
3. Version: configuracion de la prueba, version de la aplicacion en prueba el hardware, el software, el sistema operativo, los archivos de datos entre otros
4. Resultado: acciones y resultados esperados o entradas y salidas
5. Documentacion: de la prueba y anexos
### Factores
1. Correcto: Ser apropiado para los probadores y el entorno. Si teoricamente es razonable, pero exige algo que ninguno de los probadores tiene,
2. Exacto: Demostrar que su descripcion se puede probar
3. Economico: Tener solo los pasos o campos necesarios
4. Confiable y repetibles:  ser controlado , que se obtengan los mismos resultados cada vez que se ejecute, sin importar que se pruebe
5. Rasteable: saber que requisitos del caso de uso se pruebam
6. Medible: Este es un ejercicio muy util para quienes escriben pruebas para verificar constantemente donde estan si pierden alguno de los elementos o si no se cumple un estandar.
### checklist para validar calidad de cp
![[Pasted image 20220712213149.png|800]]