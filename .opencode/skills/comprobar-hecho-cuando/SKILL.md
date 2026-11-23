---
name: comprobar-hecho-cuando
description: "Comprueba la ESTRUCTURA de un paso de H1 contra su «Hecho cuando» y responde ✅ / ❌ / ❓ por casilla, con la línea del fichero que lo prueba. Úsala cuando la persona pida «comprobar el paso», «¿está hecho?» o «revisar mi paso». No califica."
---

# comprobar-hecho-cuando

**Versión:** 0.2.1 · **Estado:** probado en 2.2.6 (2 simulaciones el 2026-11-19, la 2.ª con esta versión)

## Objetivo

Decir, casilla a casilla, **qué se cumple y qué falta** de un paso. Comprueba **estructura** (¿hay tabla?, ¿hay enlace y fecha?), **no calidad** (si la idea es buena) ni nota.

## Casillas por paso

| Paso | Fichero | Casillas |
|---|---|---|
| 0 | `README.md`, `docs/` | README con nombre y una frase · tres ficheros en `docs/` · enlace del repositorio en `00` · sin claves ni datos personales · (el carácter público lo comprueba la persona en incógnito) |
| Idea | `docs/00-documentoInicio.md` | apartados 2, 3, 4 y 5 rellenados o «pendiente» con porqué · 3-6 funcionalidades · imprescindibles marcadas · sin datos personales |
| 1 | `docs/01b-sota.md` §1-2 | problema en una frase · 3-5 preguntas con dónde y fecha · 5-8 soluciones · 6 columnas en cabecera, separador y filas · cada fila con enlace (o «no aplica»), fecha y estado · ≥ 1 gratuita o abierta |
| 2 | `docs/01-analisis.md` §1 | ≥ 5 empresas · enlace, fecha y estado · agrupación con nombre · empresa tipo · Mermaid válido · frase por departamento |
| 3 | `docs/01-analisis.md` §2 | lista ordenada con fuente · criterio dicho · ≥ 1 dato con número, año, enlace y fecha · oportunidad valorada |
| 4 | `docs/01-analisis.md` §3 | tipo elegido · ≥ 3 opciones comparadas · por qué se descartan ≥ 2 |
| 5 | `docs/01-analisis.md` §4 | 2-4 objetivos `OBJ-xx` con su medida · tabla con RF, RNF y REST numerados · cada requisito con «Cómo se verifica» (o «pendiente») · cada RF y RNF en la matriz bajo un objetivo |
| 6 | `docs/01-analisis.md` §5 y §6 | obligaciones fiscales, laborales y de prevención, cada una con norma, enlace y estado · ≥ 1 ayuda con convocatoria enlazada · quién puede pedirla, qué cubre, importe, plazo y abierta/cerrada · lo que no pude comprobar |
| 7 | `docs/01-analisis.md` §7 y §8 | 7 fases con fecha · 3 hitos · 1-3 tareas por fase con responsable · glosario de 5 términos |
| 8 | `docs/01b-sota.md` §5 | 3-5 líneas · qué no cubre ≥ 1 solución de su tabla · qué aporta el proyecto · reconoce dónde otras son mejores |

## Procedimiento

1. Lee el fichero del paso (solo lectura).
2. Para **cada casilla**: ✅ si lo ves, ❌ si no está, ❓ si no puedes comprobarlo. **Cita la línea** (`fichero:línea`).
3. Revisa tablas Markdown: mismas columnas en cabecera, separador y filas.
4. Termina con **una sola acción** que la persona puede hacer ahora.
5. **Si lo que falta en el fichero ya lo escribió la persona en la conversación**, reimprime sus filas o su texto **con sus palabras exactas** (no con marcadores) para que solo tenga que pegarlos, y dilo: «son tus palabras».

## Qué NO haces

- No calificas ni dices «está bien/mal»; no opinas sobre la calidad.
- No abres enlaces para decir que existen salvo que la persona lo pida (te pedirá permiso); si no, ❓.
- No modificas ningún fichero.

## Cómo probarla

Con `docs/01b-sota.md` sin rellenar, el paso 1 debe dar ❌ en casi todas las casillas, con líneas citadas. Con `docs/01-analisis.md` sin rellenar, el paso 5 debe dar ❌ y citar la tabla del apartado 4.
