# 01b · Estado del arte de CardLab_TCG (H1)

## 1. Problema y preguntas de búsqueda (CE 1c)

**Problema.** Cuando un jugador prepara un mazo, tiene que volver a abrir las cajas y contar las copias de cada carta si carece de un inventario que pueda comparar con su lista.

El problema surge de la experiencia descrita en el documento de inicio. La comparación toma como referencia las cartas físicas de Pokémon para poder contrastar herramientas que trabajan con un mismo juego. Su elección para la primera versión de CardLab queda pendiente de validación. [Documento de inicio](00-documentoInicio.md).

| ID | Pregunta | Dónde se buscó | Fecha |
|---|---|---|---|
| P1 | ¿Cómo se identifican y registran las cartas que posee el usuario? | Catálogos y descripciones de producto de Collectr, Pokéllector y Dragon Shield. | 2026-11-13 |
| P2 | ¿Permite el constructor saber cuántas copias faltan para montar un mazo? | Constructor de Limitless, ficha de Dragon Shield en Google Play y preguntas frecuentes del fabricante. | 2026-11-13 |
| P3 | ¿Qué parte de la tarea puede resolverse gratis o en papel? | Planes de Collectr, documentación de LibreOffice y procedimiento manual derivado del documento de inicio. | 2026-11-13 |
| P4 | ¿Qué ventaja tendría vincular el mazo al inventario personal? | Comparación de las seis alternativas del apartado 2 para una misma tarea de recuento. | 2026-11-13 |

**Alcance de la búsqueda.** Se consultaron páginas de los editores y una ficha de aplicación. La comparación es documental. Sigue pendiente probar la versión de Pokémon de Dragon Shield y contrastar su funcionamiento con las preguntas frecuentes generales del fabricante.

## 2. Soluciones existentes (CE 1a, 1c, 2a)

La prueba de referencia sería preparar un mazo que pide cuatro copias de una carta de la que solo se poseen dos. Interesa distinguir si cada herramienta permite registrar la colección, escribir la lista del mazo y obtener las dos copias que faltan. La última columna recoge la lectura personal del alumno.

| Solución | Para quién | Qué hace | Modelo de precio | Enlace y fecha de acceso | Estado |
|---|---|---|---|---|---|
| Collectr | Coleccionistas de varios juegos. | Cataloga y escanea cartas y permite seguir el valor de la colección. Queda por comprobar si calcula las copias que faltan para un mazo. | Plan gratuito y suscripción PRO. | [Producto](https://getcollectr.com/) y [planes](https://getcollectr.com/pro) · 2026-11-13 | sin leer |
| Poké TCG Scanner de Dragon Shield | Coleccionistas y jugadores de Pokémon. | Permite escanear cartas, organizarlas y crear listas de mazos. Las preguntas frecuentes describen el inventario y los mazos como secciones independientes. | Aplicación con compras integradas. | [Google Play](https://play.google.com/store/apps/details?hl=en&id=pt.tscg.pokemanager) y [preguntas frecuentes](https://www.dragonshield.com/en-eu/pages/faqs) · 2026-11-13 | sin leer |
| Limitless | Jugadores que preparan listas de mazos. | Ofrece un buscador de cartas y un constructor. El cruce de la lista con un inventario físico queda por verificar. | Constructor accesible en la web. Condiciones completas de la cuenta pendientes de comprobación. | [Herramientas](https://limitlesstcg.com/tools) y [constructor](https://my.limitlesstcg.com/) · 2026-11-13 | sin leer |
| Pokéllector | Coleccionistas y jugadores de Pokémon. | Ordena las cartas por colección y permite buscar una carta para el mazo. Ofrece seguimiento de la colección. El recuento automático para una lista queda por verificar. | Catálogo de consulta pública. Precio de otras funciones pendiente de comprobación. | [Catálogo](https://www.pokellector.com/) · 2026-11-13 | sin leer |
| LibreOffice Calc | Quien prefiera configurar su propia hoja de cálculo. | Se propone una tabla de existencias y otra para el mazo. Una fórmula podría comparar por edición la cantidad necesaria y la disponible. El usuario prepararía la hoja y mantendría ambas tablas. | Gratuito y de código abierto. | [LibreOffice](https://www.libreoffice.org/) · 2026-11-13 | sin leer |
| Inventario en papel con cajas etiquetadas | Quien guarde las cartas por colecciones y prefiera un registro físico. | Método propuesto a partir del problema inicial. Se anota la edición, el número de copias y la caja. Al preparar un mazo, se coteja cada línea a mano. | Papel y etiquetas. | [Documento de inicio, apartado 4](00-documentoInicio.md) · 2026-11-13 | sin leer |

## 5. Hueco y diferenciación (CE 1e)

- Dragon Shield explica que las cartas anotadas en un mazo se gestionan aparte del inventario. Queda pendiente comprobar cómo se presenta esa separación en su aplicación Pokémon. [Preguntas frecuentes](https://www.dragonshield.com/en-eu/pages/faqs) · 2026-11-13 · sin leer.
- CardLab propone mostrar en cada línea del mazo las copias necesarias, las registradas y las que faltan. En el caso de cuatro copias necesarias y dos registradas, el usuario vería que le faltan dos.
- Si el usuario registra otra copia, al volver a abrir el mazo debería faltarle solo una. Guardar mazos alternativos conservaría las cantidades del inventario personal.
- Para quien priorice el escaneo o la valoración económica, Collectr ya ofrece ambas funciones. El valor de CardLab dependerá de que la comparación con el inventario ahorre tiempo o errores al preparar el mazo. [Collectr](https://getcollectr.com/) · 2026-11-13 · sin leer.
