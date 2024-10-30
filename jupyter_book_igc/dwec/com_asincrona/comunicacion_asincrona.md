# Comunicación asíncrona

https://github.com/igijon/javascript_vite_http_crud


```{warning}
Es importante tener en cuenta que entrando en el repositorio, los apuntes son los distintos commits ya que son incrementales, comienza con un commit inicial con el proyecto vacío, y a este vamos añadiendo información con los commits sucesivos.
```

## Token Bearer
Un token bearer es una credencial de seguridad esencial para acceder a APIs de manera segura. Este token funciona como un «pase» que habilita a los desarrolladores para efectuar solicitudes a una API, permitiéndoles leer, modificar, o eliminar datos según los permisos concedidos.

```js
fetch('https://reqbin.com/echo/get/json', {
  headers: {Authorization: 'Bearer {token}'}
})
   .then(resp => resp.json())
   .then(json => console.log(JSON.stringify(json)))
```

