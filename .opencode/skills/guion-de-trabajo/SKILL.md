---
name: guion-de-trabajo
description: "Guía el paso 7: el guion de trabajo con las 7 fases del curso y sus fechas, los tres hitos, tareas con responsable, y un glosario de 5 términos, en docs/01-analisis.md (apartados 7 y 8). Úsala cuando diga «guion de trabajo», «fases», «hitos», «plan», «glosario» o «paso 7»."
---

# guion-de-trabajo

**Versión:** 0.1.1 · **Estado:** probado en 2.2.6 (2 simulaciones el 2026-11-19, la 2.ª con esta versión)

## Objetivo

Que la persona rellene los apartados **7 y 8** de `docs/01-analisis.md` (criterio 1i): el **guion de trabajo** (qué hará, en qué orden y con qué fechas) y un **glosario** de 5 términos. Guía: `docs/guiaProyecto/como-se-hace/h1-d-objetivos-y-guion-de-trabajo.md`.

## Procedimiento

### Guion (apartado 7)

1. **Copiar las 7 fases** con sus fechas **de la tabla «Fases y fechas del curso» de más abajo** (no necesitas ningún otro fichero). **No inventar fechas** ni cambiarlas. Si la persona tiene `docs/fases-del-proyecto.md` del repositorio del curso, puede cotejarlas; si no coinciden, **valen las de ese fichero** y avisa de que esta tabla está desfasada.
2. **Marcar los tres hitos** (H1, H2 y H3) en la fila de su fase.
3. **De 1 a 3 tareas principales por fase**. Salen de lo que ya escribió (sus requisitos, el apartado 4) y de los documentos de cada fase. Nada de 40 tareas: el detalle llega en H2.
4. **Un responsable por tarea.** Casi siempre es ella misma; si interviene alguien más, lo apunta (el tutor revisa o aprueba; la persona usuaria valida).
5. **Tabla de 5 columnas:** `Fase | Fechas | Tareas principales | Responsable | Hito`. Una fila por fase, 7 filas. **En «Hito» escribe «—» donde no haya hito**: la validación no admite celdas vacías.
6. **Opcional:** enlazar un tablero de GitHub Projects.

### Glosario (apartado 8)

7. **5 términos** del dominio de su proyecto (no de informática en general). Tabla `Término | Definición | Sinónimos que NO uso`.
8. **Una cosa, un nombre:** si un término tiene otros nombres que no va a usar, los anota. Si no hay, escribe «ninguno» (la celda no puede quedar vacía).
9. **Definiciones con sus palabras**; la persona las redacta.

## Reglas

- La persona escribe el guion y el glosario; tú preguntas y compruebas contra `fases-del-proyecto.md`.
- Si algo no sabe (quién validará, qué herramienta), «pendiente» con el porqué.
- Sin datos personales: roles («tutor», «cliente»), no nombres.

## Fases y fechas del curso

Copiadas el 2026-11-19 de `docs/fases-del-proyecto.md` del repositorio del curso. Son **provisionales** hasta que se apruebe el calendario del centro.

| Fase | Fechas | Hito |
|---|---|---|
| 1 Análisis | 6-nov a 26-nov-2026 | **H1** 26-nov-2026 |
| 2 Diseño | 26-nov a 10-dic-2026 | — |
| 3 Planificación | 10-dic-2026 a 21-ene-2027 | **H2** 21-ene-2027 |
| 4 Implementación | 21-ene a 31-mar-2027 | — |
| 5 Pruebas | 1-abr a 23-abr-2027 | — |
| 6 Despliegue | 26-abr a 7-may-2027 | **H3** 7-may-2027 |
| 7 Seguimiento, control y cierre | 11-feb a 18-jun-2027 | — (corre en paralelo a las fases 4, 5 y 6) |

Las fases acaban el mismo día en que empieza la siguiente (26-nov, 10-dic y 21-ene).

## Hecho cuando

- [ ] El guion tiene las 7 fases, cada una con sus fechas.
- [ ] Están marcados los tres hitos (H1, H2, H3).
- [ ] Cada fase tiene de 1 a 3 tareas y cada una, un responsable.
- [ ] Ninguna celda vacía (en «Hito», «—»).
- [ ] El glosario tiene 5 términos con definición y sinónimos que no usa (o «ninguno»).

## Qué NO haces

- No inventas fechas ni tareas.
- No escribes el guion ni las definiciones por la persona.
- No calificas.

## Cómo probarla

Pedir «Paso 7». Debe usar la tabla «Fases y fechas del curso» de esta skill, sin buscar ficheros que no existen y sin inventar fechas distintas.
