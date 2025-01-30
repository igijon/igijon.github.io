# Kernels - Gaussian Kernel

Soluciona el problema de otras técnicas como la regresión polinómica.

Dada una característica x, calcula nuevas características en función de la proximidad a unos puntos de referencia que se establecen.

Lo primero que establecemos son unos puntos de referencia (landmarks).

Para calcular las nuevas características:

- f1 (primera característica): se calcula como una medida de similitud entre x (conjunto de entrenamiento) y el primer punto de referencia. La medida de similitud será la función exponencial de una distancia euclídea entre el dato del conjunto de entrenamiento y el punto de referencia.
- f2 (segunda característica): se calcula igual pero con el segundo punto de referencia.
- f3 (tercera característica): se calcula igual pero con el tercer punto de referencia.

![alt text](image-13.png)

Una vez que vemos en qué consisten los landmarks vamos a ver qué papel juegan en la construcción del modelo en la predicción de nuevos ejemplos.

Consideremos que la clase negativa y = 0 están representados en verde y los positivos y = 1 están representados en rojo.
Tenemos que definir los puntos de referencia o landmarks (l1, l2, l3). A partir de estos landmarks generaremos una serie de características nuevas.

![alt text](image-14.png)

Este conjunto de datos no es linealmente separable.

![alt text](image-15.png)

Establecemos por ejemplo, 3 landmarks y calculamos las nuevas características como:

f1 = sim(x, l1) siendo estas medidas de similitud y así generaremos las distintas características.

**Si x está cerca de l1, por ejemplo, la medida de similitud estará próxima a 1**

**Si x está alejado de l1 por ejemplo, la medida de similitud estará próxima a 0**

```{note}
La función hipótesis para este tipo de algoritmos será:
1 si theta0 + theta1f1+... >= 0
0 en caso contrario
```

Va a intentar clasificar todos los valores que están cerca de un landmark con una categoría determinada y todos los valores que están cercanos a otro landmark con otra categoría.

![alt text](image-16.png)

SVM va ajustando los parámetros theta mediante la función de error y la de optimización.

## Cómo se seleccionan los puntos de referencia o landmarks

Una estrategia es crear un landmark por cada ejemplo del conjunto de datos. l1, l2..., lm siendo m la longitud del conjunto de datos de entrenamiento.

l1 = (x1, x2, y)

...


Nosotros tenemos un conjunto de datos: (x11, x21, y1)...(x1m, x2m, ym)
Elegiremos los landmark l1 = (x11, x21, y1)... lm=(x1m, x2m, ym)
Después definiremos las características:
f1 = sim(x, l1)
f2 = sim(x, l2)

...

fm = sim(x, lm)

Y una vez computadas todas las características obtendríamos la función hipótesis:

![alt text](image-17.png)


```{note}
Repositorio caso práctico:
https://github.com/igijon/ML_svm

```
