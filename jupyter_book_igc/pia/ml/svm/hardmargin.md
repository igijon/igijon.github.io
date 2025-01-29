# Hard Margin Classification

Si tenemos un conjunto de datos que puede separarse claramente con una línea recta (son linealmente separables).

El algoritmo SVM me genera una función hipótesis maximizando el margen.

![alt text](image-3.png)

Añadir más ejemplos de entrenamiento fuera de las líneas no alteran el modelo. Está determinado por los ejemplos más cercanos al límite de decisión, conocidos como **support vectors** (ejemplos más cercanos al límite de decisión).

![alt text](image-4.png)

Si añado un ejemplo de la clase positiva, que se encuentra más cercano a la función hipótesis que el support vectors, se busca otro modelo que se adecúe más con la función hipótesis y los márgenes establecidos.

![alt text](image-5.png)

Este método obliga de manera estricta a que todos los ejemplos de entrenamiento de cada una de las clases se encuentren detrás de la línea de puntos (**support vectors**).

Este método tiene dos problemas fundamentales:
- Los conjuntos de datos tienen que ser linealmente separables.
- Es muy sensible a datos anómalos. Si en nuestro conjunto de datos de entrenamiento hay un ejemplo anómalo, el límite de decisión se calcula erróneamente.

![alt text](image-6.png)

