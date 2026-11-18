---
name: validar-estructura-semanal
description: "Valida la ESTRUCTURA del trabajo de una semana entera (ficheros, apartados rellenados, tablas con sus columnas, enlaces, fechas y estados) contra la especificación de esa semana y dice si se cumple el mínimo. Úsala cuando la persona diga «validar la semana», «¿tengo todo lo de esta semana?» o «revisar la estructura». No califica."
---

# validar-estructura-semanal

**Versión:** 0.2.0 · **Estado:** probado en 2.2.6 (2 pruebas, de la versión 0.1.0)

## Objetivo

Decir, con una lista de ✅ / ❌ / ❓, si el repositorio tiene **la estructura** que pide la semana. Comprueba **forma**, no calidad: no dices si una idea es buena ni pones nota.

## La especificación

Cada semana tiene un fichero en `references/`, junto a esta skill:

| Semana | Fichero |
|---|---|
| 1 | `references/semana-01.json` |

**Lee el JSON de la semana** (ruta base: la carpeta de esta skill) y aplica **exactamente** sus controles. Esos mismos controles los ejecuta el script `scripts/validar_estructura.py` del profesor, así que tus resultados deben coincidir con los suyos.

## Cómo se aplica cada control

| Campo del JSON | Qué compruebas |
|---|---|
| `ruta` | El fichero existe |
| `min_lineas_no_vacias` | Tiene al menos esas líneas con contenido |
| `contiene` | El texto aparece en el fichero |
| `apartados[].titulo` | Existe un encabezado `##` que **empieza por** ese texto (p. ej. `## 2.`) |
| `rellenado` | Entre ese encabezado y el siguiente `##` hay contenido que **no** sea solo líneas vacías, comentarios `<!-- -->`, citas `>` ni notas guía en cursiva (`*...*`) |
| `sin_marcadores` | No queda ningún `[RELLENAR` en el apartado |
| `mermaid` | Hay un bloque ```` ```mermaid ```` |
| `enlaces_min` | Al menos esa cantidad de enlaces `http(s)://` |
| `tabla` | La **primera tabla** del apartado: `columnas` en cabecera **y** en separador; entre `filas_min` y `filas_max` filas rellenadas (se ignoran las filas con `[RELLENAR`); todas con el mismo número de celdas; **ninguna celda vacía** («no lo dice» es válido) |
| `columna_enlace_fecha` | En esa columna (empezando en 0) cada fila tiene una fecha `AAAA-MM-DD` **y** un enlace `http(s)://` o «no aplica» |
| `columna_estado` | En esa columna cada fila tiene uno de `estados_validos` (con o sin comillas invertidas) |

## Niveles

- **`minimo`:** lo exigible ese día. Si falla algo, la semana **no cumple**.
- **`completo`:** además; en ciclos con «pasos empezados» basta con que existan.

## Procedimiento

1. Pregunta **qué semana** (si no lo dice, usa la más reciente que haya en `references/`).
2. Lee el JSON y los ficheros que cita (solo lectura).
3. Para **cada control**: ✅ si lo ves, ❌ si no está, ❓ si no puedes comprobarlo. Cita **`fichero:línea`** en los ❌.
4. Resume en dos líneas: «Mínimo: cumple / no cumple (n controles)» y «Completo: …».
5. Termina con **una sola acción**: el ❌ más importante, el primero por orden de pasos.
6. Sugiere dejar constancia en `asistenciaIA/bitacora.md` (agente `documentador`, `/bitacora`).

## Qué NO haces

- No evalúas calidad ni pones nota; no dices «está bien/mal».
- No abres los enlaces para comprobar que existen salvo que la persona lo pida (te pedirá permiso); si no, fíate solo de que haya enlace.
- No modificas ningún fichero.
- No inventes controles que no estén en el JSON.

## Cómo probarla

En un repositorio con los tres documentos **vacíos**, la semana 1 debe dar ❌ en el mínimo y citar la línea. Con AriaScope debe dar «Mínimo: cumple».
