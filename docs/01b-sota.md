# 01b · Estado del arte de CardLab_TCG

La hoja de H1 pide los apartados 1, 2 y 5. Los apartados 3 y 4 se han preparado como avance de H2.

## 1. Problema y preguntas de búsqueda (CE 1c)

Un jugador que guarda sus cartas en cajas tiene dificultades para saber si puede montar un mazo, porque debe localizar y contar las copias de cada edición cada vez que cambia la lista.

El estudio parte de la colección física descrita en el [documento de inicio](00-documentoInicio.md). Se toma Pokémon TCG como caso de comparación. La elección del juego para la primera versión queda pendiente de validación.

| ID | Pregunta | Dónde se buscó | Fecha de consulta |
|---|---|---|---|
| P1 | ¿Qué herramientas permiten distinguir ediciones y registrar las copias que se poseen? | Páginas de Collectr y Pokéllector, ficha de Dragon Shield en Google Play y repositorio de TCGdex en GitHub. | 2026-11-13 y 2026-11-19 |
| P2 | ¿Qué ocurre cuando un mazo pide más copias de las que tiene el jugador? | Constructor de Limitless y preguntas frecuentes de Dragon Shield sobre la relación entre mazos e inventario. | 2026-11-13 y 2026-11-19 |
| P3 | ¿Qué parte del trabajo se puede resolver de forma gratuita o en papel y por qué servicios se cobra? | LibreOffice, planes de Collectr, suscripciones de Dragon Shield y método manual propuesto a partir del documento de inicio. | 2026-11-13 y 2026-11-19 |
| P4 | ¿Qué aportaría CardLab a quien alterna entre varios mazos? | Comparación de las soluciones del apartado 2 con el mismo caso de recuento. | 2026-11-19 |
| P5 | ¿Qué tecnologías permitirían mantener un inventario por cuenta y reproducir la aplicación en el aula? | Documentación y repositorios oficiales de las opciones comparadas en el apartado 4. | 2026-11-19 |

## 2. Soluciones existentes (CE 1a, 1c, 2a)

El caso de referencia es un mazo que pide cuatro copias de una edición de la que el jugador posee dos. Para resolver la tarea completa hay que identificar la edición, recuperar las existencias de ese jugador y calcular la diferencia.

| Solución | Para quién | Qué hace | Modelo de precio | Enlace y fecha de acceso | Estado |
|---|---|---|---|---|---|
| Collectr | Coleccionistas de varios juegos. | Cataloga y escanea cartas y sigue el valor de la colección. Queda por comprobar si indica las copias que faltan para un mazo. | Plan gratuito y suscripción PRO. | [Producto](https://getcollectr.com/) · 2026-11-13. [Planes](https://getcollectr.com/pro) · 2026-11-19. | leído |
| Poké TCG Scanner de Dragon Shield | Coleccionistas y jugadores de Pokémon. | Escanea cartas, organiza la colección y permite crear mazos. La documentación general describe los mazos y el inventario como secciones independientes. | Compras integradas. El fabricante documenta suscripciones para Card Manager. | [Ficha de la aplicación](https://play.google.com/store/apps/details?hl=en&id=pt.tscg.pokemanager) · 2026-11-13. [Preguntas frecuentes](https://www.dragonshield.com/en-eu/pages/faqs) · 2026-11-19. | leído |
| Limitless | Jugadores que preparan mazos. | Permite buscar cartas y construir una lista. El cruce con las existencias físicas de una cuenta queda por comprobar. | Constructor de acceso público. Condiciones económicas completas pendientes de verificación. | [Herramientas](https://limitlesstcg.com/tools) y [constructor](https://my.limitlesstcg.com/) · 2026-11-13. | leído |
| Pokéllector | Coleccionistas que ordenan las cartas por colección. | Permite consultar el índice y llevar un seguimiento de la colección. Su web también propone buscar cartas para añadirlas a un mazo. | Catálogo de acceso público. El precio de otras funciones queda por comprobar. | [Catálogo](https://www.pokellector.com/) · 2026-11-13. | leído |
| LibreOffice Calc | Quien prefiera preparar su propia hoja. | Con una tabla de existencias y otra de mazos se pueden comparar cantidades por edición. El usuario debe diseñar la fórmula y mantener las dos tablas. | Gratuito y de código abierto. | [LibreOffice](https://www.libreoffice.org/) · 2026-11-19. | leído |
| TCGdex | Desarrolladores que necesitan identificar cartas de Pokémon. | Su base de datos multilingüe y su interfaz de consulta resuelven parte del catálogo. Para CardLab seguiría siendo necesario gestionar las cuentas, las cantidades y los mazos. | El repositorio publica la base de datos bajo licencia MIT. La reutilización de imágenes requiere revisar sus derechos. | [Repositorio](https://github.com/tcgdex/cards-database) y [documentación](https://tcgdex.dev/) · 2026-11-19. | leído |
| Fichas de papel y cajas etiquetadas | Quien ordene las cartas físicamente. | En cada ficha se anota la edición, la caja y el número de copias. Para montar un mazo hay que cotejar cada entrada y rehacer el recuento si la lista cambia. | Coste del papel y las etiquetas. | Sin enlace externo. Método propuesto a partir del [documento de inicio](00-documentoInicio.md) · 2026-11-13. | leído |

## 3. Modelos de negocio (CE 1d, 1e)

Collectr y Dragon Shield publican servicios de pago. En Calc, TCGdex, Pokéllector y Limitless, la documentación consultada permite describir las condiciones de uso o acceso, aunque deja abierta la cuestión de cómo se financia cada proyecto. Las ventajas y los riesgos de la tabla son valoraciones para el caso de CardLab.

| Patrón | Soluciones en las que se observa | Ventaja para el usuario | Riesgo o coste |
|---|---|---|---|
| Acceso inicial gratuito y funciones de pago | Collectr ofrece un plan gratuito y PRO. Dragon Shield documenta compras y suscripciones en su gestor. | Se puede empezar a registrar la colección y valorar después si compensa pagar por funciones adicionales. | Antes de cargar cientos de cartas interesa comprobar qué límites tiene el plan y en qué condiciones se pueden exportar los datos. |
| Herramienta o datos que se pueden reutilizar | Calc como herramienta de código abierto y la base de datos de TCGdex bajo licencia MIT. | Una hoja se puede adaptar al inventario personal. Un desarrollador puede partir de un catálogo existente. | El usuario mantiene las fórmulas y el desarrollador debe conservar identificadores compatibles cuando cambie el catálogo. |
| Consulta web abierta | Pokéllector permite explorar colecciones y Limitless ofrece su constructor en la web. | Resultan útiles para localizar una carta o preparar una lista antes de decidir qué registrar. | Las fuentes consultadas permiten describir el acceso. Para estimar ingresos o costes de explotación harían falta otros datos. |

**Dos casos.** En **Collectr**, el cliente potencial es quien quiere seguir la evolución de su colección. El plan gratuito facilita la entrada y la suscripción PRO ofrece prestaciones como la exportación y un historial de precios más amplio. En **Dragon Shield**, el mismo usuario puede comprar accesorios físicos y utilizar el gestor digital. La ficha de la aplicación y las preguntas frecuentes acreditan que hay compras y suscripciones. El reparto de ingresos entre estas actividades queda sin verificar. [Collectr PRO](https://getcollectr.com/pro) y [Dragon Shield](https://www.dragonshield.com/en-eu/pages/faqs) · 2026-11-19 · 

**Modelo propuesto para CardLab.** La primera versión será un prototipo académico de uso gratuito. Su utilidad se medirá en una tarea concreta. Con un mismo mazo y una misma colección, se anotarán el tiempo empleado y los errores de recuento al preparar la lista de cartas que faltan, primero con las fichas de papel y después con CardLab. Un futuro enlace a un mercado externo ayudaría a localizar esas cartas. Una posible comisión de afiliación dependería de un acuerdo que queda fuera del alcance actual.

## 4. Herramientas y tecnologías (CE 2a, 2b)

El documento de inicio propone Java para el servidor, HTML y CSS para la interfaz y MySQL para los datos. Las opciones marcadas con **Sí** forman una propuesta para la primera versión. Las licencias y las capacidades proceden de las fuentes oficiales enlazadas en cada fila, consultadas por la IA el **2026-11-19** y pendientes de lectura por el alumno (`sin leer`). La curva de aprendizaje y el encaje son valoraciones para este proyecto. El coste indicado corresponde al uso local en el aula. El alojamiento público se presupuestaría por separado.

| Decisión | Opción y fuente | Madurez y evidencia | Licencia | Coste local | Curva de aprendizaje | Encaje con DAW | Elegida |
|---|---|---|---|---|---|---|---|
| Servidor Java | [Spring Boot](https://github.com/spring-projects/spring-boot) | Proyecto mantenido, con documentación de configuración, pruebas y empaquetado. | Apache 2.0 | Sin coste de licencia | Media. Exige aprender sus convenciones de configuración. | Alto en 0613. Permite organizar por separado cuentas, inventario y mazos. | **Sí** |
| Servidor Java | [Javalin](https://github.com/javalin/javalin) | Marco ligero con documentación de rutas HTTP y versiones publicadas. | Apache 2.0 | Sin coste de licencia | Baja para una ruta inicial. Integrar persistencia y seguridad exige más decisiones. | Alto en 0613 para practicar el tratamiento de peticiones. | No |
| Base de datos | [MySQL Community](https://www.mysql.com/products/community/) | Motor relacional documentado, con transacciones y herramientas de administración. | GPL | Edición comunitaria gratuita | Baja a media. Coincide con el motor previsto en el documento inicial. | Alto en 0613 y 0614. Permite relacionar usuario, edición y cantidad. | **Sí** |
| Base de datos | [PostgreSQL](https://www.postgresql.org/about/) | Motor relacional consolidado, con restricciones y transacciones. | [PostgreSQL License](https://www.postgresql.org/about/licence/) | Gratuito | Media. Requiere adaptar la instalación y la administración a otro motor. | Alto en los mismos módulos. También permite imponer una fila por usuario y edición. | No |
| Interfaz web | [Thymeleaf](https://github.com/thymeleaf/thymeleaf) con HTML y CSS | Motor de plantillas Java con integración en Spring. | Apache 2.0 | Sin coste de licencia | Baja a media para formularios y tablas. | Alto en 0613 y 0615. Una vista puede reunir las cantidades necesarias, disponibles y pendientes. | **Sí** |
| Interfaz web | [Vue](https://github.com/vuejs/core) con una API Java | Proyecto mantenido para interfaces basadas en componentes. | MIT | Sin coste de licencia | Media. Añade estado en el navegador y comunicación con la API. | Alto en interfaces. Aporta más valor si el editor de mazos necesita interacción continua. | No |
| Acceso a las cuentas | [Formulario de Spring Security](https://docs.spring.io/spring-security/reference/servlet/authentication/passwords/form.html) y sesión | Mecanismo documentado para aplicaciones web de Spring. | [Apache 2.0](https://github.com/spring-projects/spring-security) | Sin proveedor externo | Media. Hay que gestionar cuentas, contraseñas protegidas y cierre de sesión. | Alto en 0613. Facilita probar la separación de inventarios con dos cuentas ficticias. | **Sí** |
| Acceso a las cuentas | [Acceso delegado con OpenID Connect](https://docs.spring.io/spring-security/reference/servlet/oauth2/login/core.html) | Integración documentada en el mismo marco de seguridad. | Apache 2.0 para Spring Security. El proveedor fija sus condiciones. | Depende del proveedor elegido | Media-alta. Hay que configurar el proveedor, las redirecciones y la vinculación con la cuenta local. | Útil para una aplicación pública. Añade una dependencia a la demostración. | No |
| Despliegue | [JAR ejecutable](https://docs.spring.io/spring-boot/tutorial/first-application/index.html) y MySQL instalado | Procedimiento documentado de empaquetado y arranque en la máquina virtual de Java. | Spring Boot bajo Apache 2.0. MySQL Community bajo GPL. | Sin coste de licencia con un entorno Java abierto | Baja. Requiere documentar Java, MySQL y la configuración. | Alto en 0614. Permite demostrar el arranque y la restauración en el aula. | **Sí** |
| Despliegue | [Docker Compose](https://github.com/docker/compose) con servicios para la web y la base de datos | Herramienta mantenida para definir y ejecutar aplicaciones con varios contenedores. | Apache 2.0 para Compose. Cada imagen tiene sus condiciones. | Sin coste de licencia de Compose en un entorno Linux propio | Media. Añade imágenes, redes y volúmenes persistentes. | Alto en 0614, especialmente si hay que repetir la instalación en varios equipos. | No |

**Justificación de la elección.** Con Spring Boot, Thymeleaf y MySQL, el servidor puede consultar el inventario de la cuenta activa y devolver el mazo con el recuento ya calculado. La base de datos puede impedir que una misma edición se duplique en el inventario y conservar por separado las cantidades de cada mazo. Para la demostración bastan dos cuentas ficticias, una sesión por usuario y el arranque local del JAR. TCGdex queda como candidato para alimentar el catálogo, sujeto a revisar la cobertura y los permisos de los recursos. Las decisiones se podrán contrastar en H2 con una prueba de instalación y un mazo de ejemplo.

## 5. Hueco y diferenciación (CE 1e)

- Las preguntas frecuentes de Dragon Shield indican que sus listas de mazos y su inventario se gestionan por separado. Queda pendiente comprobarlo en la versión concreta de Pokémon. [Dragon Shield](https://www.dragonshield.com/en-eu/pages/faqs) · 2026-11-19 · 
- CardLab propone que una línea del mazo muestre juntas las cuatro copias necesarias, las dos registradas y las dos que faltan.
- Si el jugador consigue otra copia y actualiza su inventario, al volver a abrir el mazo debería faltarle solo una. Guardar un segundo mazo conservaría las existencias registradas.
- Para quien priorice escanear o valorar su colección, Collectr ya ofrece ambas funciones. La aportación que CardLab debe demostrar es cuánto facilita preparar un mazo con las cartas que el jugador ya tiene. [Collectr](https://getcollectr.com/) · 2026-11-13 ·
