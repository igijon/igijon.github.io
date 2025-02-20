# Random Forests
- Se corresponde con un **Ensemble de árboles de decisión**
- Se entrena utilizando la técnica de *Ensemble Learning* conocida como **Bagging**
- En lugar de buscar el mejor par (característica, valor) de entre todas las características del conjunto de datos, lo hace respecto a un **subconjunto aleatorio de características**
- Los hiperparámetros más relevantes se corresponden con:
  - **n_estimators**; Número de árboles de decisión en el *ensemble*
  - **max_depth**: profundidad máxima de los árboles de decisión que componen el *ensemble*.

Estos hiperparámetros nos permiten evitar overfitting (al controlar, por ejemplo, la profundidad) pero también hay que tener cuidado con no caer en underfitting.

- Permiten **medir la importancia relativa de cada característica** del conjunto de datos en la realización de la predicción. 

```{note}
Random Forests es importante para hacer selección de características como veremos más adelante
```
Random Forest sirve para problemas de regresión y clasificación. Para regresión utilizaremos Mean Squared Error (MSE) como función de coste en lugar de Gini Impurity. Con las predicciónes que se cogen en regresión de cada instancia del algoritmo, se hará una **media**.


```{note}
https://github.com/igijon/ML_arboldecision_randomforest
```

