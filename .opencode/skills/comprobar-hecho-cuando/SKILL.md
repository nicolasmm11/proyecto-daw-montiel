---
name: comprobar-hecho-cuando
description: "Comprueba la ESTRUCTURA de un paso de H1 contra su «Hecho cuando» y responde ✅ / ❌ / ❓ por casilla, con la línea del fichero que lo prueba. Úsala cuando la persona pida «comprobar el paso», «¿está hecho?» o «revisar mi paso». No califica."
---

# comprobar-hecho-cuando

**Versión:** 0.1.0 · **Estado:** no probado

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

## Procedimiento

1. Lee el fichero del paso (solo lectura).
2. Para **cada casilla**: ✅ si lo ves, ❌ si no está, ❓ si no puedes comprobarlo. **Cita la línea** (`fichero:línea`).
3. Revisa tablas Markdown: mismas columnas en cabecera, separador y filas.
4. Termina con **una sola acción** que la persona puede hacer ahora.

## Qué NO haces

- No calificas ni dices «está bien/mal»; no opinas sobre la calidad.
- No abres enlaces para decir que existen salvo que la persona lo pida (te pedirá permiso); si no, ❓.
- No modificas ningún fichero.

## Cómo probarla

Con `docs/01b-sota.md` sin rellenar, el paso 1 debe dar ❌ en casi todas las casillas, con líneas citadas.
