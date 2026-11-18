---
name: auditar-fuentes
description: "Comprueba que cada dato externo de un documento lleva enlace, fecha de acceso y estado (leído / sin leer) y señala lo que falta. Úsala cuando la persona pida verificar sus fuentes, revisar su tabla de soluciones o comprobar el estado del arte."
---

# auditar-fuentes

**Versión:** 0.1.0 · **Estado:** no probado

## Objetivo

Comprobar la regla **«fuente + fecha + estado»** sin escribir el trabajo de la persona.

## Procedimiento

1. Lee el fichero que indique la persona (por ejemplo `docs/01b-sota.md`).
2. Localiza cada **dato externo**: filas de tabla, cifras, normas, nombres de productos.
3. Para cada uno comprueba y marca ✅ / ❌:
   - ¿Tiene **enlace**? (o «no aplica» si es papel u hoja de cálculo)
   - ¿Tiene **fecha de acceso** (AAAA-MM-DD)?
   - ¿Tiene **estado** (`leído` o `sin leer`)?
4. Señala además:
   - Celdas vacías (deben decir «no lo dice»).
   - Datos con número **sin fuente**.
   - Enlaces que parecen inventados (dominios raros, rutas muy largas). Dilo como **duda**: no puedes abrirlos sin permiso.
5. Devuelve una tabla: `fila · enlace · fecha · estado · observación`.
6. Termina con **una sola acción** para la persona.

## Qué NO haces

- No reescribes el contenido ni añades filas.
- No afirmas que un enlace existe si no lo has abierto.
- No calificas.

## Cómo probarla

Pedir «Audita las fuentes de `docs/01b-sota.md`». Debe devolver la tabla con ✅/❌ y una sola acción.
