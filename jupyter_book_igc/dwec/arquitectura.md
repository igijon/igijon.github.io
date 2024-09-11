---
jupytext:
  cell_metadata_filter: -all
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.11.5
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

# Arquitectura y tecnologías del lado del cliente

Internet está instaurado en nuestro día a día y las aplicaciones web se han convertido en nuestro lugar de trabajo, ocio... Para dar cabida a todos los propósitos actuales, cada aplicación web debe estar diseñada para ofrecer un alto rendimiento y personalización.

El padre de la **WWW**, World Wide Web, fue Tim Berners-Lee. Este científico británico estableció la primera comunicación entre un cliente y un servidor usando el protocolo HTTP en 1990 y en 1994 fundó el Consorcio de la WWW (**W3C**), con sede en **MIT**, el Instituto Tecnológico de Masachusets. Este consorcio se encarga de supervisar y estandarizar las tecnologías sobre las que se fundamenta la **Web** y que permiten el funcionamiento de Internet. 

## Áreas en entornos clientes/servidor
- **Lado del servidor**: Incluye el hardware y el software del servidor web así como los diferentes elementos de programación y tecnología utilizados, como pueden ser: PHP, Python, Node.js...
    Éste área también es llamada **Backend**.

- **Lado del cliente**: hace referencia a los navegadores web, es decir, son las tecnologías que se ejecutan en el navegador del usuario y le permiten interactuar. Las tecnologías utilizadas son: HTML, CSS, JavaScript...
    Éste área también es llamada **Frontend**

- **La red**: describe los diferentes elementos de conectividad utilizados para mostrar el sitio web al usuario.

## Arquitectura de las Aplicaciones Web

Como decíamos antes, cada aplicación web debe ser diseñada para ofrecer un alto rendimiento y personalización y es la arquitectura que elijamos la que se encargará de resolver este problema.

La **arquitectura de aplicaciones web** es un esquema de cómo interactúan entre sí los distintos componentes de tu aplicación web.

Puede ser tan simple como definir una relación entre cliente y servidor como esta:

![arquitectura simple](image.png)

También puede ser tan compleja como definir interrelaciones entre un enjambre de servidores backend en contenedores, equilibradores de carga, pasarelas API y frontends SPA orientados al usuario (ya hablaremos de todo esto más adelante).

La forma de diseñar tu aplicación web desempeña un papel **clave** tanto en su usabilidad como en la optimización de costes.

Otro ejemplo de arquitectura web es este: 
![arquitectura web más compleja](image-1.png)

## Funcionamiento de un sitio web sencillo

Antes de hablar de los distintos tipos de arquitectura que nos podemos encontrar, vamos a ver cómo funciona un sitio web sencillo:

1. El usuario introduce la **URL** (Uniform Resource Locators) de tu aplicación en la barra de direcciones del navegador o hace click en un enlace.
2. El navegador busca la URL en los servidores **DNS** (sistema de nombres de dominio) e identifica la dirección IP de tu aplicación.
3. El navegador envía una petición **HTTP** a la aplicación.
4. Tu aplicacó´n responde con el contenido correcto (normalmente una página web).
5. El navegador muestra la página web en pantalla.

## Tipos de Arquitectura de Aplicaciones Web

Vamos a ver los tipos más populares en la actualidad.

### Arquitecturas SPA

Arquitecturas de una sóla página. Toda aplicación se basa en una sola página. 
La aplicación es lo suficientemente dinámica como para obtener y renderizar pantallas que satisfagan los requisitos de los usuarios mientras navegan por la propia aplicación.

Son estupendas para proporcionar una experiencia rápida y sin fisuras a los usuarios finales.

**Ventajas**:
- Altamente interactivas
- Fáciles de escalar
- Óptimas para el rendimiento 

**Inconvenientes**: 
- A veces son difíciles de optimizar por el SEO.

### Arquitectura de PWA

Arquitectura de aplicaciones web progresivas.
Se basa en la arquitectura SPA proporcionando capacidades offline para la aplicación.
Tecnologías como Capacitor e Ionic se utilizan para crear una experiencia uniforme en todas las plataformas.

A través de service workers se pueden instalar las aplicaciones en los dispositivos de los usuarios.

**Ventajas:**
- Las aplicaciones se ejecutan con fluidez y ofrecen compatibilidad entre plataformas.
- Escalables
- Acceso sin conexión

**Inconvenientes:**
- Soporte limitado para la gestión de enlaces y SEO
- Enviar actualizaciones a las PWA sin conexión es complejo.
- La compatibilidad con navegadores web y SSOO es limitada.

### Arquitectura de SSR

Arquitectura de renderizado del lado del servidor.
Las páginas web del frontend se renderizan en un servidor backend después de ser solicitadas por el usuario. Esto ayuda a la carga en el dispositivo del cliente, ya que recibe una página web estática de HTML, CSS y JS.

Populares entre blogs y sitios web de comercio electrónico porque hacen la gestión de enlaces y SEO bastante sencilla.

**Ventajas**: 
- Buenas para SEO
- La carga de la primera página es casi instantánea en la mayoría de los casos.
- Combinada con un servicio de caché mejora aún más el rendimiento.

**Inconvenientes**:
- No se recomienta para páginas complejas o pesadas, ya que el servidor puede tardar en generar la página completa y provoca retrasos.
- Se recomienda para aplicaciones que no se centran mucho en la interfaz de usuario y buscan escalabilidad o seguridad.

### Arquitectura de Aplicaciones Isomórficas

Son una mezcla de aplicaciones renderizadas en el lado del servidor y SPA. Las aplicaciones se renderizan primero en el servidor y una vez las recibe el cliente, la app se hidrata y adjunta el DOM virtual para un procesamiento más rápido y eficiente por parte del cliente. Esto convierte la aplicación en una SPA.

Isomorphic reúne lo mejor de ambos mundos. El procesmiento y la interfaz de usuario del cliente son superrápidos, gracias a la SPA. También se obtiene un renderizado inicial rápido y un soporte completo de SEO y enlaces, gracias al renderizado del lado del servidor.

**Ventajas**:
- Renderización inicial superrápida y soporte completo para el SEO.
- Buen rendimiento en el cliente, ya que se convierten en una SPA después de la carga.

**Inconvenientes**:
- La puesta en marcha requiere un conocimiento técnico profundo.
- Hay que elegir frameworks, en su mayoría, basados en JS.
