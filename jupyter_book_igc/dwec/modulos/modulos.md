# Patrón módulo
En JavaScript, un **módulo** es un fragmento de código que se encapsula de manera que sus funciones, variables y objetos, estén contenidos dentro de un entorno propio. Los módulos permiten dividir el código en partes más pequeñas, reutilizables y manejables, mejorando la organización del mismo.

## Características de un módulo en JS
- **Encapsulación**: permite que el código dentro del módulo esté aislado del código externo, evitando conflictos de nombres y manteniendo el entorno limpio.
- **Reutilización**: Los módulos pueden exportar funciones, objetos o variables que se pueden importar y reutilizar en otros archivos o módulos.
- **Mantenimiento**: Al tener el código dividido en módulos pequeños, es más fácil de mantener, depurar y actualizar sin afectar al resto del sistema.
- **Organización**: Mejora la estructura de los proyectos al separar el código en funcionalidades independientes.

## Sintaxis básica de módulos en JS (ES6)
- **Exportar**: para que una función, objeto o variable sea accesible fuera de un módulo, se usa la palabra clave `export`.
```js
//archivo math.js
export const sumar = function(a, b) {
  return a + b;
}

export const PI = 3.1416;
```

- **Importar**: para usar las funciones o variables exportadas de otro módulo, se utiliza `import`.
```js
// archivo main.js
import { sumar, PI } from './math.js';

console.log(sumar(2, 3));  // 5
console.log(PI);           // 3.1416

```
## Problemas que evitan los módulos
- **Contaminación del espacio global (Global Scope Pollution)**: antes de los módulos, JS utilizaba el espacio global para almacenar todas las funciones y variables, lo que aumentaba el riesgo de conflictos de nombres cuando múltiples partes del código definían variables o funciones con el mismo nombre. Los módulos encapsulan código y reducen el uso del espacio global, evitando estas colisiones.
- **Código no estructurado y difícil de mantener**: cuando el código está completamente en un solo archivo o mal estructurado es difícil de mantener. Los módulos promueven la separación de responsabilidades, mejorando la organización y la legibilidad.
- **Dependencias no controladas**: sin módulos, es más dificil gestionar dependencias explícitas entre diferentes partes del código. Los módulos permiten importar explícitamente solo las partes necesarias, lo que clarifica las dependencias y mejora la modularidad del código.
- **Repetición de código**: al dividir el código en partes reutilizables, los módulos evitan la duplicación innecesaria de funciones o funcionalidades, promoviendo el principio DRY (Don't Repeat Yourself).

## Módulos ES6

```{note}
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules
```

Con la introducción de ES6, JS nativo introdujo módulos a través de las palabras clave `import` y `export`. Los módulos ES6 no agregan nada al ámbito global, siempre están en modo estricto y requieren un servidor para cargar los archivos a través de HTTP.

### Definición y exportación de módulos en ES6
```js
// students.js

const records = [
    { id: 14, name: "Kyle", grade: 86 }, 
    { id: 73, name: "Suzy", grade: 87 }, 
    { id: 112, name: "Frank", grade: 75 }, 
    { id: 6, name: "Sarah", grade: 91 }
 ];
export function getName(studentID) {
    let student = records.find(student => student.id == studentID);
    return student.name;
 }

 export function getGrade(studentID) {
     let student = records.find(student => student.id == studentID);
     return student.grade;
 }
```

### Importación de módulos en ES6
```js
// main.js
import { getName, getGrade } from "./students.js";

console.log(getName(73), getGrade(73)) //Suzy
```

### Exportar múltiples funciones
```js
// students.js
export function getName(studentID) { /*...*/ }
export function getGrade(studentID) { /*...*/ }
```

### Importar múltiples funciones
```js
// main.js
import { getName, getGrade } from "/path/to/students.js";
```

### Exportación e importación por defecto
```js
// students.js
export default function getName(studentID) { /*...*/ }

// main.js
import getName from "/path/to/students.js";
```

### Importación de todo el módulo
```js
// main.js
import * as Student from "/path/to/students.js";
Student.getName(73); // Suzy
```

## Uso de `<script>` con módulos
Se pueden cargar módulos en un fichero HTML usando el atributo `type="module"` en las etiquetas `<script>`

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <script type="module" src="students.js"></script>
    <script type="module" src="app.js"></script>
</body>
</html>
```
