# Overfitting y Underfitting

Uno de los problemas que surgen con más frecuencia es el **overfitting** o sobrentrenamiento. Una de las formas más comunes para detectarlo, es mediante la **división del conjunto de datos inicial** en subconjuntos:
- Entrenamiento
- Validación
- Comprobación de que generaliza bien para  nuevos ejemplos

```{note}
**Overfitting**: Si el conjunto de datos tiene muchas características, es posible que la función hipótesis generada por el algoritmo se adapte muy bien al conjunto de entrenamiento (mini), pero falle al generalizar con nuevos ejemplos
```
![alt text](image-3.png)

## Soluciones al overfitting
- Aumentar el conjunto de datos
- Reducir el número de características: cuantas mas características tenemos, más flexible es nuestro modelo y más probabilidades hay de overfitting.
  - Selección manual de las características que se puedan mantener: no es una forma muy recomendada. 
  - Utilizar un algoritmo para la selección de características: como por ejemplo Random Forest que veremos más adelante).
  - Utilizar un algoritmo para la extracción de características: son algoritmos de reducción de dimensionalidad. Transforman mi conjunto de datos en otro con menos características... cambia todo... transforma también los datos devolviendo un conjunto de datos que mantiene la distribución de datos del conjunto origianl. Ejemplo: PCA o SVD que veremos más delante.
- Regularización: añadimos una penalización a determinados parámetros (que producen overfitting) del modelo de manera que se reduce la flexibilidad del modelo.
  
## Regularización

Agrega una penalización a los parámetros *theta0*, *theta1*, *theta2*..., para reducir la libertad del modelo. Es menos probable, de este modo, que el modelo se ajuste al ruido de los datos de entrenamiento y mejore las capacidades de generalización del mismo.

Mantiene todas las características, pero reduce la magnitud de los parámetros **theta**.

La regularización funciona bien cuando tenemos muchas características ligeramente útiles.

![alt text](image-4.png)

Mediante el parámetro lambda controlamos la flexibilidad de la función. Si lambda es 0 es como no aplicar regularización.
Si lambda tiende a infinito, tendríamos una función de error siempre cerca de infinito y no tendremos un modelo que se ajuste nunca.
Tendremos que buscar un valor de lambda aceptable que penalice un poquito el modelo pero tampoco demasiado.

## Evaluación de la función hipótesis

- Un número elevado de características puede provocar overfitting
- Se requiere una forma de evaluar la función hipótesis generada para comprobar si generaliza correctamente.

Para saber si se está produciendo overfitting, dividimos nuestro conjunto de datos:
- Subconjunto de entrenamiento: **train set** (60-70%) de datos de experiencias pasadas. Con este subconjunto generaré mi función hipótesis.
- Subconjunto de pruebaS: **test set** (30-40%) de datos de experiencias pasadas. Con este subconjunto, eliminaré la etiqueta Y y me quedaré con las características de entrada. Evaluaré sobre la función hipótesis (con estos no ha sido entrenado). Una vez calculadas las predicciones, comparo las predicciones con la etiqueta Y que aparté. *Si hay overfitting, tendremos error bastante grande para los valores que no ha visto nunca y cercano a cero para los datos de entrenamiento.*

## Selección del modelo
Para elegir el modelo tendré que hacer distintas pruebas, para ver qué tal se comporta.

Podemos comenzar analizando una regresión lineal básica (1 característica). 


```{note}
Calculo un error con este grado de polinomio, si el error con el testset(40%) es grande y el trainset(60%) es pequeño, tenemos overfitting. Si el error tanto en testset y trainset es grande, no es el modelo adecuado.
````

Podemos añadir otra característica polinómica y hago exactamente lo mismo, calcular con trainset y testset.

Cuando evaluamos muchos modelos con el mismo conjunto de datos, puedo caer en la posibilidad de que de manera manual, esté haciendo overfitting con el testset. No sé si generalizará bien para otros conjuntos de datos distintos cuando yo lo ponga en producción y llegue un ejemplo completamente nuevo. 

Para evitar esto, vamos a hacer una subdivisión más:
- Trainset (60%-70% de la información): entrenar los modelos.
- Validationset (20%-15% de la información): evaluaremos si se está produciendo overfitting sobre el training set.
- Testset (20%-15% de la información): evaluaremos una vez seleccionado el modelo que mejor se comporta, si también es capaz de generalizar bien para los ejemplos que no están ni en el trainset ni en el validationset.

En resumen:
- Dividimos el conjunto de datos en **entrenamiento, validación y pruebas**
- Se calcula la función hipótesis con el subconjunto de entrenamiento
- Se calcula el número de características óptimo mediante la evaluación de las hipótesis anteriores con el subconjunto de validación (elección del modelo)
- Se evalúa la función de hipótesis mediante el subconjunto de pruebas calculando su error, para ver si generaliza bien.

```{note}
Particionado de los datos:
https://github.com/igijon/ML_Proyecto_Bases
```
