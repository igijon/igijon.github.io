# Configurar un entorno virtual
Crear un entorno virtual es una buena práctica para aislar las dependencias de tu proyecto Python.
- Abrimos VS Code y seleccionamos la carpeta donde vamos a crear nuestro proyecto.
- Abrimos un terminal en VS Code **Terminal -> New Terminal**
- Ejecutamos los siguientes comandos para crear y activar un entorno virtual:

  ```bash
  python -m venv rec_voz_venv
  ```
Creamos un entorno virtual con el nombre `rec_voz_venv`

![alt text](image-4.png)

```bash
.\rec_voz_venv\Scripts\activate
```

En Windows, activamos el entorno virtual con este comando

```bash 
source rec_voz_venv/bin/activate
```

En Linux/MacOS activamos el entorno virtual con este comando

- Si todo ha ido bien, deberá aparecer el nombre del entorno entre paréntesis en el terminal `(rec_voz_venv)`

![alt text](image-3.png)