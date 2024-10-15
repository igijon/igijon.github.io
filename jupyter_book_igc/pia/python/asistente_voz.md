# Creación de un pequeño asistente de voz

```{warning}
En primer lugar debes tener creada una carpeta donde implementarás el proyecto y un entorno virtual para aislar todas las dependencias.
Lo puedes ver aquí: [Entorno Virtual](entorno_virtual.md)
```
Las bibliotecas que vamos a necesitar para el proyecto son:
- `pyttx3`: biblioteca de síntesis de voz que funciona sin conexión. Es multiplataforma y permite la generación de voces en varios idiomas.

```bash
pip install pyttsx3
```

- `SpechRecognition`: muy popular y fácil de usar para el reconocimiento de voz. Puede trabajar con múltiples motores de reconocimiento de voz, incluyendo Google Speech Recognition, Sphinx, Bing...
  
```bash
pip install SpeechRecognition
```



