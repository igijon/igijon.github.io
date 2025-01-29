# Soft Margin Classification

Menos rígido que el Hard Margin Classification.

Se caracteriza por construir límites de decisión más flexibles que en el caso anterior.

- Para evitar los problemas citados antes aparece este modelo.
- El objetivo de este modelo es mantener un balance adecuado entre mantener el límite de decisión lo más alejado posible de los ejemplos de entrenamiento y disminuir la sensibilidad a los ejemplos anómalos.
- En las implementaciones de SVM normalmente esto se controla mediante un hiperparámetro que suele estar representado mediante la letra C.

```{note}
Cuando hablamos de hiperparámetros, hablamos de parámetros que modifican el funcionamiento del modelo pero **no** son los parámetros theta del modelo que ajustan la función hipótesis.
```
Utilizando este método el algoritmo genera límites de decisión menos estrictos que generalizan mejor para nuevos ejemplos.

Le damos menos importancia a los ejemplos anómalos porque no se actualiza el vector de soporte.

![alt text](image-7.png)

También puedo utilizar **Soft Margin Classification** para conjuntos de datos no separables. De forma que ajustando el hiperparámetro C, determine la influencia que tienen determinados ejemplos que son anómalos o no queramos que tengan la misma influencia.

Si disminuimos el parámetro C le damos menos importancia a valores anómalos. Hay que tener cuidado con el valor de este hiperparámetro teniendo en cuenta el conjunto de datos que tengamos.

![alt text](image-8.png)