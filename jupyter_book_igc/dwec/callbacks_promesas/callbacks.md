## Callbacks

El propio lenguaje JavaScript cuenta con multitud de funciones que aceptan funciones callback, como `forEach`, `map`, `filter`, `addEventListenet`

```js
//callbacks.js
const heroes = {
    capi: {
        nombre: 'Capitán América',
        poder: 'Aguantar inyecciones sin morir'
    },
    iron: {
        nombre: 'Ironman',
        poder: 'Absurda cantidad de dinero'
    },
    spider: {
        nombre: 'Spiderman',
        poder: 'La mejor reacción alérgica a las picaduras de araña'
    }
}
export const buscarHerore = (id, callback ) => {
    const heroe = heroes[id];
    callback(heroe);
}
```

```js
//main.js
const heroeId = 'capi';
buscarHerore (heroeId, ( heroe ) => {
    console.log( heroe )
})
```

## Estándar de argumentos en callbacks
```js
//callbacks.js
export const buscarHerore = (id, callback ) => {
    const heroe = heroes[id];
    if ( heroe ) {
        callback(null, heroe);
    } else {
        //Un error
        callback(`No existe un héroe con el id ${ id }`);
    }
    // callback(heroe);
}
```

```js
//main.js
buscarHerore (heroeId, ( err, heroe ) => {
    if( err ) {
        console.error( err );
    } else {
        console.info( heroe );
    }
})
```
## Callback Hell o Pyramid of Doom
El uso excesivo de callbacks puede llevar a una situación conocida como "Callback hell" o "Pyramid of doom", donde el código se vuelve difícil de leer y mantener debido a la anidación profunda de funciones.

```js
getData(function(a) {
  getMoreData(a, function(b) {
    getEvenMoreData(b, function(c) {
      getEvenEvenMoreData(c, function(d) {
        getFinalData(d, function(finalData) {
          console.log(finalData);
        });
      });
    });
  });
});
```
```js
//main.js
//Callback hell
const heroeId1 = 'capi';
const heroeId2 = 'spiderman';
buscarHerore (heroeId1, ( err, heroe ) => {
    if( err ) { return console.error( err );}
    buscarHerore(heroeId2, (err, heroe2) => {
        if (err) { return console.error(err); }
        console.log(`Enviando a ${ heroe.nombre } y ${ heroe2.nombre } a la misión`);
    });
})
```


