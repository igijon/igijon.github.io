# Support Vector Machines (SVM)

Algoritmo de ML que ofrece un gran potencial.

Nos permite realizar tareas de clasificación y regresión. 

Funciona bien para conjuntos de datos pequeños y complejos (que no es habitual en técnicas de ML).

## Características principales
- Está basado en aprendizaje supervisado (reciben un conjunto de datos etiquetado).
- Como decíamos realiza regresión (predecir valores continuos) y clasificación (predicen valores discretos) ( lineal y no lineal)
- Funciona muy bien para conjunto de datos complejos de pequeño tamaño o mediano.
- Puede aplicarse de diferentes formas en función del conjunto de datos:
  - Conjuntos de **datos linealmente separables**:
    - **Hard Margin Classification**
    - **Soft Margin Classification**
  - Conjuntos de **datos linealmente no separables**:
    - **Kernels**

## Funcionamiento del algoritmo

Un **conjunto de datos separable** es aquel que puede separarse claramente con una línea recta (son linealmente separables).

Si volvemos al ejemplo de los **correos electrónicos clasificados como span o no**, un conjunto separable sería:

![alt text](image.png)

Este conjunto de datos es **linealmente separable**.

Los modelos representados funcionan bien para el conjunto de datos de entrenamiento, el límite de decisión se encuentra tan cerca de algunos ejemplos que es probable que cometan errores para ejemplos nuevos.

![alt text](image-1.png)

**SVM** viene a solucionar el problema anterior, porque es un algoritmo que no sólo separa las dos clases, sino que intenta mantener el límite de decisión lo más alejado de los ejemplos de entrenamiento (**large margin classification**).

![alt text](image-2.png)

Como vemos en la gráfica, va a intentar maximizar el margen.

