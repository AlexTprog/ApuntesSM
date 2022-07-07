# Regresion Lineal
## Cual es su origen?
Francis Galon le di origen en el Siglo XIX, el se percato que la altura del hijo de cualquier hombre tiende a ser similar a su padre

Haciendo incapie en que la altura del hijo estaba mas ceca de la estatura promedio general de todas las personas.

Revisar caso de la altura de Shaquiille O'Neal y su hijo
Spoiler: El padre es una anomalia por lo que el hijo no es mas alto que el, esta mas cerca del promedio

## Que es la regresion lineal?
Podemos aplicar esta concepto cuando contamos con grandes cantidad de datos. Se entiende mejor con el sgte ejemplo

Teniendo dos puntos se intenta calcular la regresion, es decir que la linea este lo mas cerca posible a todos los puntos. Por lo general se usa el metodo de los minimos cuadrados.
![[Pasted image 20220706172304.png]]

## Cual es el objetivo de calcular la regresion lineal?
Buscamos minimizar la distancia entre todos los puntos y su distancia a nuestra linea.
![[Pasted image 20220706172552.png]]
![[Pasted image 20220706172615.png| 600x300]]
![[Pasted image 20220706172836.png]]
## Como calculamos la regresion linea con python?
Se realiza usando la libreria Scitkit-Learn, nos permitira crear un modelo de regresion lineal. 

## Como generar un modelo de regresion lineal simple con python?

Paso 1: Cargar datos
Desde un archivo csv

```python
import pandas as pd

datos = pd.read_csv('nombreCSV.csv')
```

Paso 2: Revisar datos

```python
datos.info()
datos.tail()
datos.head()
datos.describe()
```

Podemos generar un grafico para visualizar la informacion de mejor manera y elegir las variables adecuadas para cada eje.

```python
sns.pairplot(datos)
```


![[Pasted image 20220706174404.png]]

Paso 3: Elegir los ejes para el modelo

```python
X = datos[['TV']]
Y = datos[['Sales']]
```

Paso 4: Usamos Scikitlearn con el metodo de minimos cuadrados
```python
from sklear.linar_model import LinearRegression

modelo = LinearRegression()
modelo.fit(X,Y)
```


