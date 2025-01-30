# Kernels - Gaussian Kernel

Soluciona el problema de otras técnicas como la regresión polinómica.

Dada una característica x, calcula nuevas características en función de la proximidad a unos puntos de referencia que se establecen.

Lo primero que establecemos son unos puntos de referencia.

Para calcular las nuevas características:

- f1 (primera característica): se calcula como una medida de similitud entre x (conjunto de entrenamiento) y el primer punto de referencia. La medida de similitud será la función exponencial de una distancia euclídea entre el dato del conjunto de entrenamiento y el punto de referencia.
- f2 (segunda característica): se calcula igual pero con el segundo punto de referencia.
- f3 (tercera característica): se calcula igual pero con el tercer punto de referencia.

![alt text](image-13.png)