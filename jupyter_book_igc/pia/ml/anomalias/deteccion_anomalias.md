# Detección de anomalías

En líneas generales, estos dentifican el grueso de los ejemplos y estos los cataloga como normales y los ejemplos que difieren mucho del grueso los catalogaría como anómalos.

## Detección de intrusiones

La detección de intrusiones se cataloga principalmente en dos categorías:
- **Basado en reglas y heurísticas**: genera un número reducido de falsos positivos. Detecta ataques conocidos. No funciona correctamente para la detección de nuevos ataques.
- **Basado en anomalías**: perfila el comportamiento normal del sistema. Es capaz de detectar ataques nuevos. Puede generar un número mayor de falsos positivos.

## Basados en reglas y heurísticas

- Los **sistemas de detección de intrusiones (IDS)** son aplicaciones que monitorizan una red de ordenadores o un host en busca de actividad maliciosa o el incumplimiento de una serie de reglas establecidas en una política previamente definida. Su funcionamiento, de manera muy simplificada, se basa en el uso de heurísticas, umbrales y propiedades estadísticas muy sencillas.
- **Ejemplo de fuerza bruta**: cada vez que un usuario realiza una petición de autenticación al servidor, el sistema de detección de intrusiones la registra. En el momento en el que el número de peticiones supera el límite establecido, por ejemplo, quince peticiones, el sistema reporta la actividad del usuario como una anomalía.
- Estos sistemas presentan algunas ventajas:
  - Es sencillo de implementar
  - Consume un número reducido de recursos
  - Es capaz de detectar y miticar numerosos ataques actuales
- Sin embargo, tiene algunos inconvenientes:
  - ¿Cómo se establece el número máximo de peticiones?
  - ¿Cada cuánto tiempo se regula el número máximo de peticiones?
  - ¿Qué sucede si el atacante utiliza varias cuentas de usuario para realizar la fuerza bruta?

## Basado en anomalías

- Una **anomalía** es un evento que se desvía del comportamiento normal o esperado y es sospechoso, en este caso, desde una perspectiva de seguridad.
- La **detección de anomalías** es la identificación de eventos u observaciones que levantan sospechas al diferir significativamente de la mayoría de los datos.
- La detección de anomalías fue propuesta para sistemas de detección de intrusiones (IDS) por Dorothi Denning en 1986.
- Las anomalías pueden producirse debido a dos factores principales:
  - Relacionadas con el rendimiento
  - Relacionadas con la seguridad

Vamos a ver cómo aplicamos técnicas de aprendizaje automático para la detección de anomalías:
- **Aprendizaje semi-supervisado**: pueden usar ejemplos etiquetados de un número limitado de categorías. Por ejemplo, si hay dos categorías posibles {0, 1} podemos tener ejemplos etiquetados con la clase 0 únicamente.