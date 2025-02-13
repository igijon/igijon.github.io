# Amazon Web Services
Esta plataforma fue lanzada oficialmente en 2006 a raíz de una propuesta de Chris Pinkham y Benjamin Back, que vieron una oportunidad de negocio en la utilización de recursos sobredimensionados en **Amazon.com**.

Cuenta con una colección de servicios para desarrolladores y organizaciones muy amplio, que permite que toda la lógica y gestión de negocio esté integrada en un mismo flujo de trabajo.

Se accede a través de HTTP, utilizando protocolos REST y SOAP. Fue una de las primeras ofertas de pago por uso en infraestructura que se dio en un momento de resurgimiento de propuestas en internet tras una burbuja de las .com y ese formato facilitó la entrada de muchas startups y proyectos que no hubiesen sido viables con los formatos tradicionales disponibles de host.

Uno de los servicios más valorados para proyectos emergentes y que necesitan escalabilidad, es la arquitectura sin servidor, utilizando las denominadas funciones **Lambda**, lanzadas en 2014.

En el ámbito de la inteligencia artificial, cuenta con un servicio administrado para la creación, entrenamiento y despliegue de modelos de aprendizaje automático denominado **SageMaker**

![alt text](image-16.png)

Ofrece servicios más concretos y enfocados en aplicaciones concretas de visión artificial, bots conversacionales y analítica avanzada. 

## SageMaker
Se encuentra dentro de las opciones que ofrece la plataforma AWS en el ámbito de la inteligencia artificial.
Es el entorno integrado para la creación, entrenamiento y despliegue de modelos de machine learning en AWS.
Contiene varios servicios que se gestionan a través de un panel de control, un IDE personalizado llamado **SageMaker Studio** y una interfaz de visualización y presentación llamada **Canva**. 
La mayoría del trabajo de un **MLops** se va a desarrollar dentro de **SageMaker Studio**, que ofrece la experiencia de programación en formato **notebook** con una serie de herramientas de apoyo extra y una funcionalidad muy interesante llamada **Autopilot**.

![alt text](image-17.png)

El panel de control desde el que se pueden lanzar y gestionar los proyectos, muestra todos los parámetros del mismo, como los usuarios que están colaborando o las políticas de acceso.

![alt text](image-18.png)

Para cada fase del proceso, hay una sección con los servicios más utilizados, donde se puede ir dando de alta y lanzando el dataset, arquitectura del modelo, modelo predictivo y despliegue.

![alt text](image-19.png)

Como hemos comentado previamente, SageMaker cuenta con una utilidad para automatizar la parte más técnica del proceso de creación y entrenamiento de un modelo de aprendizaje automático. **Autopilot** analiza el dataset y la morfología de los datos objetivo y automatiza la selección del tipo de modelo y parámetros asociados al entrenamiento. Pero este servicio tiene un coste mayor que el proyecto normal.

## Rekognition

Es el servicio de reconocimiento de imagen de AWS ya pre-entrenado y desplegado, que ya se puede probar a través de una interfaz demostrativa, y que se puede integrar en cualquier proyecto mediante llamadas a su API.

Un primer modo, de reconocimiento de "etiquetas" en una imagen, da como resultado los objetos que se podrían encontrar en dicha imagen.

![alt text](image-20.png)

El modo de moderación de imágenes, detecta el grado de probabilidad de que la imagen contenga contenido sensible que deba desenfocarse o que deba activar algún tipo de acción.

![alt text](image-21.png)

En el modo de reconocimiento facial, se reconocen con bastante precisión factores como rasgos masculinos o femeninos, si está sonriendo o demostrando alguna emoción concreta detectable, el rango de edad, etc.
![alt text](image-22.png)

Otro modo interesante, es la función de comparación facial, para identificar el rostro de determinadas personas dentro de otras imágenes.
![alt text](image-23.png)

Finalmente, también se puede reconocer la presencia de texto en una imagen, identificando letras y números o caracteres especiales, devolviendo la cadena de caracteres reconocida como salida de la función.
![alt text](image-24.png)

## Comprehend

Es el módulo de procesamiento de lenguaje natural.
```{note}
**Procesamiento del lenguaje natural (NLP)**, es el conjunto de técnicas computacionales en el ámbito del aprendizaje automático, que tienen como objetivo identificar la intención del interlocutor, contenida en una expresión escrita, o hablada y transformarla a texto escrito y clasificarla o asociarla a opciones o valores de variables de salida.
Ejemplo: un algoritmo puede detectar, a partir de una valoración que hace un usuario de una película, si el comentario refleja una actitud positiva o negativa, es decir, si le ha gustado o no.
```
![alt text](image-25.png)

AWS Comprehend, trabaja bien con los **tokens** o palabras clave presentes en diferentes tipos de texto, pero es necesario configurar el tipo de problema para que el modelo pueda trabajar.

Comprehend, divide el texto en unidades con sentido y las analiza. 
Por ejemplo, frente a un mensaje como el siguiente, la herramienta puede identificar expresiones clave que puedan contribuir a la ejecución de tareas posteriores.

![alt text](image-26.png)

![alt text](image-27.png)

También, puede encontrar unidades de información como fechas, cantidades, etc.

![alt text](image-28.png)

Una función muy utilizada en este tipo de modelos es el análisis de sentimiento, que nos puede dar un valor aproximado del grado de positividad o negatividad que hay en un texto. En este ejemplo, vemos como asigna un 99% de negatividad a un comentario negativo en una web de tienda online.
![alt text](image-29.png)


## Otras herramientas

- **Reconocimiento de voz y conversión de texto a voz**:
  - **Amazon Transcribe**: transcripción de audio a texto en varios idiomas, útil para subtitulado y transcripciones automáticas.
  - **Amazon Polly**: Genera voces realistas a partir de texto, ideal para aplicaciones de accesibilidad y asistentes de voz.
- **Traducción automática**:
  - **Amazon Translate**: traducción automática en tiempo real, útil para aplicaicones globales y servicios multilingües.
- **Automatización y bots conversacionales**:
  - **Amazon Lex**: la tecnología IA que impulsa Alexa, permite construir chatbots de reconocimiento de voz y texto.
- **Analítica de video y streaming**:
  - **Amazon Kniesis Video Stream**: análisis de vídeo en tiempo real, útil en aplicaciones de vigilancia y análisis de tráfico y transmisiones en vivo.
- **Servicios de salud**:
  - **Amazon HealthLake**: almacena, estructura y analiza datos de salud utilizando IA para mejorar la eficiencia en aplicaciones médicas.