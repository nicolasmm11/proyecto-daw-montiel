---
name: comprobar-paso
description: Comprueba con comandos de solo lectura si un paso de una checklist está hecho y responde ✅ / ❌ / ❓ con la evidencia y la siguiente acción segura.
---

# comprobar-paso

- **Objetivo:** responder a «¿cómo sé que este paso salió bien?» con evidencia, no con opinión.
- **Para quién y cuándo:** alumnado de 2.º DAW. Ola 1, sesión S1 (desde el 12-nov). Pensada para usarse con el agente `guia-de-pasos` (o con el comando `/comprobar-paso`).
- **Estado:** `[no probado]` (ver «Cómo probarla»).

> **Permisos.** Las skills **no tienen permisos propios: heredan los del agente activo**. Esta skill se pensó para `guia-de-pasos`, que solo permite `git status*`, `git log*`, `git branch*`, `git diff*`, `git remote -v`, `git config --get*`, `ls*` y `pwd`, y niega editar. Con otro agente, los permisos serán otros.

## Entrada
Un paso de una checklist con su **«hecho cuando»** y su **«Comprobar:»**. Si falta alguno, pídeselo a la persona; si no lo tiene, propón uno de solo lectura y confírmalo con ella.

## Procedimiento
1. Repite el paso y su «hecho cuando» en una línea.
2. Elige el comando de solo lectura de «Comprobar:». Si no está en la lista permitida, **no lo ejecutes**: pide a la persona que lo ejecute y pegue la salida literal.
3. Ejecuta el comando y **muestra la salida** (tapando nombre, correo o claves si salen; ver Privacidad).
4. Compara la salida con el «hecho cuando» y responde con **un solo veredicto**:
   - ✅ **Hecho:** la evidencia cumple. Cita la línea de la salida que lo demuestra y di cuál es el siguiente paso.
   - ❌ **No hecho:** la evidencia contradice el paso. Di qué falta o qué sobra y la **siguiente acción segura** (nunca `--force`, `reset --hard`, `clean` ni borrar).
   - ❓ **No comprobable con solo lectura:** (p. ej. «PR abierto en GitHub», «etiqueta puesta», «token creado»). Di **qué debe enseñar la persona** (captura sin datos personales, texto de la página, enlace) y no marques ✅.
5. Termina con una línea: qué has comprobado y qué **no** has podido comprobar.

## Qué NO hace
- No ejecuta nada que modifique (commit, push, add, checkout, rm…) ni edita ficheros.
- No hace el paso por la persona ni califica el trabajo.
- No da ✅ por «parece bien»: sin evidencia es ❓.
- No pega ni guarda nombre, correo, claves ni tokens.

## Privacidad
`git log` y `git config` pueden mostrar nombre y correo. Pide que no se peguen en el chat ni en la declaración de IA; en los commits debe verse el correo `noreply`.

## Cómo probarla
1. En una copia de práctica (nunca en un repositorio importante), abre `opencode`, elige el agente `guia-de-pasos` y escribe `/comprobar-paso Paso: estar en una rama docs/prueba. Hecho cuando: git branch muestra * docs/prueba. Comprobar: git branch`.
2. Debe responder ✅ o ❌ citando la salida. Con un paso como «PR abierto» debe responder ❓.
3. Comprueba que, si le pides un `git push`, se niega.

## Cómo se declara su uso
En `docs/declaracion-uso-ia.md`, una fila: fecha · herramienta (OpenCode, agente `guia-de-pasos`, `/comprobar-paso`) · qué pediste (p. ej. «comprobar el paso 3 de la tarea X») · qué aceptaste o cambiaste (p. ej. «seguí su siguiente acción») · dónde (ninguno, solo comprobación).
