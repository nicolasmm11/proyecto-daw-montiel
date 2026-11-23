---
name: objetivos-y-requisitos
description: "Guía el paso 5: de 2 a 4 objetivos medibles (OBJ-01…) y requisitos numerados (RF, RNF y REST) con «Cómo se verifica», más la matriz que une cada objetivo con sus requisitos, en docs/01-analisis.md (apartado 4). Úsala cuando diga «objetivos», «requisitos», «RF», «RNF», «matriz de trazabilidad» o «paso 5»."
---

# objetivos-y-requisitos

**Versión:** 0.1.0 · **Estado:** no probado

## Objetivo

Que la persona rellene el apartado **4** de `docs/01-analisis.md` (criterio 1f): sus **objetivos**, sus **requisitos verificables** y la **matriz** que los une. Un requisito es verificable si se puede comprobar con una medida o una prueba. Guía: `docs/guiaProyecto/00-fundamentos/06-requisitos-verificables.md` y `docs/guiaProyecto/como-se-hace/h1-d-objetivos-y-guion-de-trabajo.md`.

## Procedimiento

### Objetivos

1. **Partir de la necesidad** que eligió en el paso 3. Preguntar: «¿cómo sabrás que tu proyecto ha servido?».
2. **De 2 a 4 objetivos**, cada uno con la forma **verbo + qué + para quién + cómo se medirá**. Numerados `OBJ-01`, `OBJ-02`…
3. **Prueba de medida:** cada objetivo se mide con un número, un sí/no o una prueba. «Mejorar la gestión» no se puede medir: pedir que lo reescriba ella.
4. **Dónde se escriben:** en la primera columna de la **matriz de trazabilidad** (`OBJ-01 <objetivo>`), con la medida en la misma frase.

### Requisitos

5. **Tres tipos:** RF (qué hace), RNF (cómo lo hace: rendimiento, seguridad, usabilidad, disponibilidad, accesibilidad) y REST (límites: plazo, tecnología, normativa; aquí «restricción», no «API REST»).
6. **Mínimo para el paso:** 2 RF, 1 RNF y 1 REST en la tabla del apartado 4 (4 filas). Con más es mejor, sin pasarse.
7. **Cada requisito:** ID (`RF-01`, `RNF-01`, `REST-01`…), una frase con **una sola condición** y su **«Cómo se verifica»** (una medida o una prueba). Si aún no sabe cómo, escribe «pendiente»: la celda **no** puede quedar vacía.
8. **Palabras de alarma:** rápido, fácil, intuitivo, moderno, seguro, eficiente… Preguntar «¿cómo lo comprobarías mañana?» y pedir que reescriba.
9. **Los números salen de su proyecto**, no de los ejemplos de la guía. Si un valor no tiene fuente ni razón, que lo diga («valor provisional»).
10. **Matriz:** cada RF y cada RNF aparece bajo un objetivo. En H1 basta con las columnas **objetivo y requisito**; las demás pueden quedar vacías o con «pendiente».

## Reglas

- La persona escribe los objetivos y los requisitos. Tú preguntas, señalas lo que no se puede medir y compruebas.
- Ejemplos **ficticios** (p. ej. un taller de bicicletas); nunca los pongas como si fueran de su proyecto.
- Si usa IA para sacar ideas, lo anota en `asistenciaIA/bitacora.md`.
- Ignorar las etiquetas «Semana 1» y «Semana 2» del capítulo 06: aquí el paso 5 se hace en la semana 2.

## Hecho cuando

- [ ] De 2 a 4 objetivos con ID `OBJ-xx`, cada uno con su medida.
- [ ] Tabla de requisitos con al menos 4 filas (RF, RNF y REST), sin marcadores `[RELLENAR]`.
- [ ] Cada requisito con «Cómo se verifica» (o «pendiente»), ninguna celda vacía.
- [ ] Cada RF y cada RNF aparece en la matriz bajo un objetivo.
- [ ] Ningún requisito con palabras vagas sin medida.

## Qué NO haces

- No escribes los objetivos ni los requisitos por la persona.
- No decides si un valor (2 s, 3 min…) es el adecuado; preguntas de dónde sale.
- No calificas.

## Cómo probarla

Pedir «Paso 5» con el apartado 4 sin rellenar. Debe empezar por la necesidad del paso 3 y preguntar cómo sabrá que el proyecto ha servido, antes de hablar de RF o RNF.
