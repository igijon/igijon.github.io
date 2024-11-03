# Métodos de almacenamiento en el lado del cliente
## Cookies
En JavaScript, las **cookies** son pequeños archivos de texto que los sitios web almacenan en el navegador del usuario para mantener información específica. Estas cookies pueden contener datos como el *ID de sesión, preferencias de usuario, historial de navegación* o cualquier información que sea útil para mejorar la experiencia de navegación.

Las cookies son ampliamente utilizadas para tareas como:

- **Mantener sesiones:** Para recordar si un usuario ha iniciado sesión en una página web, de modo que no necesite autenticarse en cada página. Son útiles para almacenar información persistente que debe enviarse con cada solicitud HTTP al servidor, como es el caso de las sesiones.
- **Personalización de contenido:** Para recordar preferencias del usuario, como el idioma o la disposición de ciertos elementos en la página.
- **Seguimiento de usuarios:** Para analizar el comportamiento de navegación con fines de marketing, publicidad o estadísticas.

### Cómo funcionan las cookies en JS
JavaScript puede leer, escribir y eliminar cookies mediante la propiedad `document.cookie`. A continuación se muestra cómo interactuar con las cookies: 

**1. Crear una cookie (Escribir una cookie)**
```js
document.cookie = "nombre=valor; expires=Fecha; path=Ruta";
```
`nombre` es el nombre de la cookie.
`valor` es el valor que se le asigna a la cookie.
`expires` es la fecha de expiración de la cookie. Si no se especifica, la cookie se eliminará al cerrar el navegador.
`path` la ruta en la que la cookie es válida. Por defecto, es el directorio actual.

```js
document.cookie = "usuario=Juan; expires=Fri, 31 Dec 2024 23:59:59 GMT; path=/";
```

**2. Leer una cookie**
Puedes acceder a todas las cookies disponibles mediante `document.cookie`:

```js
let todasLasCookies = document.cookie;
```
Esto devuelve una cadena con todas ls cookies disponibles, separadas por `;`

```js
"usuario=Juan; idioma=es"
```

Para obtener el valor de una cookie específica, necesitarías procesar esta cadena para buscar la cookie por su nombre.

**3. Eliminar una cookie**
Para eliminar una cookie, se establece su fecha de expiración en una fecha pasada:

```js
document.cookie = "usuario=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/";
```
### Características importantes de las cookies
- **Duración**: puedes establecer la vida útil de una cookie con `expires. Si no se especifica, como dijimos, la cookie se elimina cuando el usuario cierra el navegador (cookie de sesión).
- **Tamaño**: Las cookies son pequeñas, con un límite de alrededor de 4KB por cookie.
- **Seguridad**: Las cookies no pueden almacenar código, sólo texto, pero pueden ser vulnerables a ataques como **Cross-Site Scripting (XSS)** (un tipo de ataque que permite a un actor de amenazas ejecutar código malicioso en el navegador de otro usuario) si no se manejan adecuadamente.

### Ejemplo completo

```js
// Crear una cookie que expira en 7 días
function setCookie(nombre, valor, dias) {
    let fecha = new Date();
    fecha.setTime(fecha.getTime() + (dias * 24 * 60 * 60 * 1000));
    let expires = "expires=" + fecha.toUTCString();
    document.cookie = nombre + "=" + valor + "; " + expires + "; path=/";
}

// Leer una cookie
function getCookie(nombre) {
    let nombreEQ = nombre + "=";
    let cookiesArray = document.cookie.split(';');
    for (let i = 0; i < cookiesArray.length; i++) {
        let cookie = cookiesArray[i].trim();
        if (cookie.indexOf(nombreEQ) == 0) {
            return cookie.substring(nombreEQ.length, cookie.length);
        }
    }
    return "";
}

// Eliminar una cookie
function deleteCookie(nombre) {
    document.cookie = nombre + "=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
}

// Ejemplo de uso:
setCookie("usuario", "Juan", 7);  // Crear cookie 'usuario'
console.log(getCookie("usuario")); // Leer cookie 'usuario'
deleteCookie("usuario");           // Eliminar cookie 'usuario'
```

## LocalStorage
LocalStorage permite almacenar datos en el navegador de forma persistente. Los datos persisten incluso después de cerrar el navegador. Permiten almacenar entre 5MB y 10MB de información.

```js
// Guardar
localStorage.setItem("lastname", "Smith");
// Obtener
var lastname = localStorage.getItem("lastname");
// Borrar
localStorage.removeItem("lastname");
```

**1. Guardamos un valor** con la clave `lastname`en LocalStorage.
**2. Recuperamos el valor** almacenado usando la clave `lastname`.
**3. Eliminamos el valor** asociado a la clave `lastname`.

## SessionStorage
Es similar a LocalStorage, la única diferencia es que la información almacenada en LocalStorage no posee tiempo de expiración, mientras que la información almacenada en SessionStorage es eliminada al finalizar la sesión de la página.

## IndexedDB
- **Hasta 50MB** de almacenamiento.
- **API síncrona** para operaciones de lectura y escritura.
- **Transaccional** para asegurar la integridad de los datos.
- **Más compleja** que LocalStorage.

```js
let request = indexedDB.open("myDatabase", 1);

request.onupgradeneeded = function(event) {
  let db = event.target.result;
  let objectStore = db.createObjectStore("customers", { keyPath: "id" });
  objectStore.createIndex("name", "name", { unique: false });
  objectStore.createIndex("email", "email", { unique: true });
};

request.onsuccess = function(event) {
  let db = event.target.result;
  let transaction = db.transaction(["customers"], "readwrite");
  let objectStore = transaction.objectStore("customers");
  let request = objectStore.add({ id: 1, name: "John Doe", email: "john.doe@example.com" });

  request.onsuccess = function(event) {
    console.log("Customer added to the database");
  };

  request.onerror = function(event) {
    console.log("Error adding customer: ", event.target.error);
  };
};
```
En el ejemplo:
**1. Abrimos una consexión a IndexedDB** y si es la primera vez, se crea o actualiza la BDD.
**2. Definimos un `objectStore`** para almacenar datos de clientes con un índice para `name`y `email`
**3. Añadimos un cliente** a la BDD dentro de una transacción y manejamos los eventos éxito y error.

