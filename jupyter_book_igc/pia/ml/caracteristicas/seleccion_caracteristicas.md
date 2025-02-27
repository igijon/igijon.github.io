# Selección de características

- En función de su noción de relevancia, una técnica de selección de característica formula matemáticamente un criterio para evaluar el conjunto de características generadas.
- ¿Cómo se define la relevancia de una característica?
  - Una característica *s* se considera relevante si la eliminación de *s* deteriora el rendimiento de un clasificador (un algoritmo de clasificación, por ejemplo, regresión logística).
  - La importancia de las características se mide con la correlación que presentan entre ellas.
  - **Una característica es relevante si es parte de un árbol de decisiones durante el proceso de clasificación**.

## Importancia de la selección
- **Reduce la dimensionalidad** del conjunto de datos y auuda a **mejorar el rendimiento** de los algoritmos.
- **Mejora la calidad de los datos** eliminando datos redundantes, irrelevantes o ruidosos.
- **Mejora la precisión del modelo** resultante.
- **Ayuda en la comprensión de los datos**, permitiendo, entre otras cosas, visualizarlos en gráficas de dos y tres dimensiones.

## Métodos de selección
- **Valores perdidos**: encontrar características con una fracción de valores perdidos por encima de un umbral especificado.
- **Valores únicos**: encontrar cualquier característica que tenga un sólo valor único.
- **Características colineales (altamente relacionadas)**: este método encuentra pares de características colineales basadas en el coeficiente de correlación de Pearson. Para cada par por encima del umbral especificado, identifica una de las variables que se eliminarán. Requiere un umbral de correlación.
- **Características con cero importancia**: este método se basa en un modelo de aprendizaje automático para identificar las características que se eliminarán.

## Métodos de selección: Random Forests

- Se puede medir la importancia de una característica en función de como ha reducido la impureza de los nodos de un árbol de decisión.
- Random Forest es un buen método para obtener intuiciones de si una característica del conjunto de datos realmente es necesaria.
  