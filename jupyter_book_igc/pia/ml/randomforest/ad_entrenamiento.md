# Árboles de decisión: Entrenamiento del algoritmo

1. Analiza el conjunto de datos y selecciona la primera característica disponible para evaluarcla como un **potencial punto de división** (split variable).
2. Examina el rango de valores asociado con esta característica y selecciona un **valor de división inicial** (split value).
3. **Copia los dos subconjuntos** de valores en los nodos 1 y 2 respectivamente (un subconjunto con los valores de un lado de la división y el otro subconjunto con los valores del otro lado de la división).
4. **Evalúa el resultado de la división** aplicando la métrica **Gini Impurity**
5. Se escoge el siguiente valor de la división (split value) y se repite el proceso.
6. **Seleccionamos la siguiente característica** y se repiten los pasos 2 a 5. Este proceso continua hasta que todas las características del conjunto de datos y todos los valores de división hayan sido evaluados.
7. El árbol selecciona el **par** (característica, valor de división) que mejor valor de beneficio general produzca y divide el conjunto de datos en dos nodos hijos (minimiza el Gini Impurity).
8. Se realiza el mismo proceso para cada uno de los nuevos nodos hijos hasta que el árbol **se satura** (los nodos hijos pertenecen a una sola clase o se encuentra un criterio de detención). Si los nodos hijos pertenecen todos a una única clase, es decir, el Gini Impurity es cero en sus nodos hijos.
9. Si es necesario, **el analizata puede podar ramas del árbol** que no aporten mucho valor pero proporcionan complejidd computacional.

