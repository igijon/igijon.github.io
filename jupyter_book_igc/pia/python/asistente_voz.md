# Creación de un pequeño asistente de voz

```{warning}
Proyecto github: https://github.com/igijon/python_rec_voz_yfinance_pywhatkit

```

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

- `PyAudio`: se utiliza en conjunto con `SpeechRecognition` para manejar audio desde el micrófono.

```bash
pip install pyaudio
```

```{warning}
En algunos sistemas operativos, como MacOS, podemos tener el problema `Failed building wheel for PyAudio` que podemos solucionar mediante la instalación de `portaudio`:

```bash
brew install portaudio
```

Después instalamos `pyaudio` con el comando anterior y debería ir OK.

```{warning}
Desde la versión 3.12 de Python, debemos instalar `distutils` aparte (antes se incluía en el paquete estándar), lo podemos instalar con:

```bash
pip install setuptools
```

## Ejemplo con `yfinance` 

### `yfinance`

Es una herramienta útil para descargar y analizar datos financieros de Yahoo Finance. Es ampliamente utilizada en proyectos relacionados con finanzas, análisis bursátil, trading algorítmico y análisis cuantitativo. La biblioteca facilita el acceso a datos históricos del mercado financiero, como precios de acciones, datos sobre dividendos... y otros indicadores relacionados.

En primer lugar debemos instalar la biblioteca:
```bash
pip install yfinance
```

Podemos importarla en nuestra aplicación del siguiente modo:
```py
import yfinance as yf
```