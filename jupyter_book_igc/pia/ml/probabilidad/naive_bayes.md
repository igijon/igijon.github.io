# Naive Bayes

## Introducción

- Deriva del Teorema de Bayes
- El Teorema de Bayes describe la probabilidad condicional de un evento, basado en el conocimiento previo de las condiciones que podrían estar relacionadas con el mismo.
- En problemas de clasificación, nos permite determinar la probabilidad condicional de que un determinado ejemplo pertenezca a una clase particular dadas su características.
- Siguiendo el teorema de Bayes, se debería calcular las relaciones de probabilidad entre todas las características del conjunto de datos, lo que provoca un elevado coste computacional.
- El teorema de Naive Bayes simplifica este proceso suponiendo independencia condicional entre las características.
- Este algoritmo se basa en aprendizaje supervisado.

## Tipos 
- **Multinomial Naive Bayes**: clasificador multinomial **adecuado para clasificación con características discretas** (por ejemplo, recuentos de palabras para la clasificación de texto).
- **Bernoulli Naive Bayes**: al igual que MultinomialNB, este clasificador es adecuado para datos discretos. La diferencia es que mientras MultinomialNB funciona con recuentos de ocurrencia BernoulliNB está diseñado para funciones binarias/booleanas. Funciona bien para **detección de Spam**.
- **Gaussian Naive Bayes**: es apropiado para datos continuos que se distribuyen conforme a una distribución normal o Gaussiana.

```{note}
https://github.com/igijon/ML_Naive_Bayes
```

