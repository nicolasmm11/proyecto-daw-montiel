---
name: resumen-semanal
description: Prepara la entrada semanal para docs/registro-tutoria.md y 3-5 líneas para el briefing de clase, usando el historial de Git como evidencia. Las horas y valoraciones las pones tú.
---

# resumen-semanal

## Objetivo
Dejar lista (1) una entrada para `docs/registro-tutoria.md` con las columnas de la plantilla: `Fecha | Horas gestión/doc. | Horas producto | Acuerdos | Avances | Bloqueos | Siguiente paso`, y (2) **3-5 líneas** para el briefing de la clase del jueves.

## Cuándo se usa
Una vez por semana, antes de la clase (la clase es de 1 hora: briefing y dudas).

## Cómo trabaja
1. Pregunta la semana (fechas). Puedes darle como **evidencia** el historial de Git de tu repositorio, en solo lectura: `git log --since="<fecha>" --oneline` (si el agente puede ejecutarlo; si no, pégalo tú). Evita pegar `git log` completo: muestra nombre y correo.
2. Propone «Avances» a partir de los commits y ficheros, **marcados como evidencia** («commit abc123: ...»). Tú confirmas, corriges o descartas.
3. **Pregunta** las horas (gestión/documentación y producto, redondeadas a 0,5 h), los acuerdos de la última clase, los bloqueos y el siguiente paso. **No inventa** horas ni valoraciones; sin respuesta, deja la casilla vacía.
4. Entrega la fila en tabla Markdown y las 3-5 líneas de briefing (qué hice, qué me bloquea, qué haré).
5. Si hay un bloqueo, recuerda que debe constar y que `/preparar-consulta` ayuda a escribir al tutor.

## Qué NO hace
- **No escribe** en `docs/registro-tutoria.md`: tú pegas la fila.
- No inventa horas, avances que no estén en la evidencia, ni valoraciones («voy bien»); no califica.
- No incluye datos personales (nombres, correos, usuarios de terceros): usa «compañero/a», «empresa X» si hace falta.
- No ejecuta nada distinto de lectura de Git.

## Permisos
Hereda los del agente activo (pensada para `guia-de-pasos`). Necesita, como mucho, `git log*` en solo lectura.

## Cómo probarla
En un repositorio de práctica (no real), pide el resumen de la última semana. Comprueba que pregunta las horas, que no las rellena sola y que cada avance cita un commit.

## Cómo se declara su uso
Fila en `docs/declaracion-uso-ia.md` (con `/declarar-uso-ia`); el registro sigue siendo tuyo y el tutor lo comenta en el PR.
