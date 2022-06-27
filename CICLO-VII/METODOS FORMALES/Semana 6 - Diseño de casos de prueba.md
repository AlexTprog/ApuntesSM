# Diseño de Casos de Prueba

Se diseñan las pruebas a la par que se  diseña el software.

![[Pasted image 20220614193652.png]]

## Caso de Prueba
**¿Que es un caso de prueba?**
Es un conjunto de entradas, condiciones de ejecucion y resultados esperados. Se realiza con un objetivo particular o condicion de prueba

 Ej: 
> Verificar el cumplimiento de un requisito especifico

**¿Para que sirve?**
Para determinar si una aplicacion o caracteristica es parcial o completamente satisfactoria.

**¿Porque es importante?**
Permite desarrollaro un software con menos errores.

**Beneficios**
Un buen diseño de caso de prueba mejora
1. Productividad -> Menos tiempo para escribir y mantener casos
2. Capacidad de prueba -> Menos tiempo para ejecutarlos
3. Programar con faciidad -> Estimaciones mas fiables y efectivas


## Diseño de caso de prueba
**Pasos**
1. Definir escenario
2. Identificar condiciones de entrada
3. Definir valores de entrada
4. Generar casos de prueba

Ej: Caso codigo zapatillas

> Dividir dominios tomar valores limite, tipo de zapatilla, niños niñas hombres mujeres

**Escenarios**
Referente a caminos a probar de un caso de uso: fluoj basico, subflujos y flujos alternativos.

**Condiciones de Entrada**
Se consideran condiciones de entrada con el estado que nose aplica para determinado escenario
Tipos: 
- Mienbro de un conjunto
- Logico
- Valor 
- Rango

![[Pasted image 20220614203557.png]]


**Valores de Entrada**
Se identifican examinando cada condicion de entrada

![[Pasted image 20220614204112.png]]


## Factores de calidad de un CP

1. Correcto: Ser apropiado para los probares y el entorno
2. Exacto: Descripcion se puede probar
3. Economico: Solo pasos necesario
4. Confiable y repetible: Ser experimento controlado con el que se obtiene el mismo resultado
5. Rastreable: Saber que requisitos del caso de uso se prueban
6. Medible: Revisar si es medible o si no cumplecon estandares



## Formatos para CP

> Un caso de prueba paso a paso tiende a ser más verbal, y el de matrices más numérico. A menudo, la ruta más productiva es utilizarlos todos. Los dos primeros se utilizan para las pruebas unitarias, de integración y del sistema; y el automatizado, para pruebas de regresión (Voas, 1993).

1. Paso a paso
Es utilizado en la mayoria de reglas de procesamiento
Casos de pruebas unicos y diferentes  Interfaces GUI
Escenarios de movimiento en interfaces diferentes
Entradas y salidas complicadas para representar en matrices
2. Matrices
Formularios con informacion variada, campos, valores  y archivos de diferentes entradas
Mismas entradas, diferetnes plataformas, navegadores y configuracion
Pantalla basada en caracteres
Entras y salidas con mejor presentacion matricial
3. Scripts automatizados
Su uso depende de la organizacion y del proyecto
Existen cuestiones tecnicas entre las herramietas que pueden usarse.
El beneficio se obtiene en la fase de mantenimiento, en ese momento los scripts se pueden ejecutar repetidamente, y el ahorro de recursos es considerable

## Mitos y realidades
![[Pasted image 20220626201844.png]]

## Plantillas
**Caso de prueba**
![[Pasted image 20220626201337.png]]

**Matrices**
![[Pasted image 20220626201402.png]]

**Checklist para la calidad de una caso de prueba**
![[Pasted image 20220626201444.png]]