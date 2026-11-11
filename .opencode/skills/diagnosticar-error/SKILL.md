---
name: diagnosticar-error
description: Compara un error de Git que pegas (literal) y la salida de git status con la tabla de errores frecuentes de la guía de Git del curso y propone el siguiente paso seguro.
---

# diagnosticar-error

## Objetivo
Ayudarte a entender un error de Git y dar **un solo siguiente paso seguro**, con su «Comprobar:». Se basa en el apartado «Errores frecuentes» de la guía de Git del curso (`docs/guiaProyecto/00-fundamentos/01-git-y-github.md` en el repositorio del curso; léelo si tienes acceso y, si no, usa la tabla de abajo). La guía manda: si difiere de esta tabla, vale la guía.

## Cuándo se usa
Un comando de Git falla o te deja en un estado raro y llevas menos de 10 minutos. Pasados 10 minutos sin resolverlo, usa `/preparar-consulta`.

## Qué necesita de ti
1. El **mensaje de error literal** (copiado y pegado, no resumido).
2. La salida de `git status` (si no la has pegado, pídela antes de diagnosticar).
3. Antes de pegar: quita correos, nombres de terceros y claves.

## Tabla (resumen; detalle en la guía)
| Lo que ves | Qué significa | Siguiente paso seguro | Comprobar: |
|---|---|---|---|
| `! [rejected] ... (non-fast-forward)` o `(fetch first)` | GitHub tiene commits que no tienes | `git pull`, resolver conflictos si salen, `git push` | `git status` dice que la rama está al día con `origin` |
| `You are in 'detached HEAD' state` | HEAD apunta a un commit suelto, no a una rama | Solo mirabas: `git switch <tu-rama>`. Si ya hiciste commits: `git switch -c <nombre-de-rama>` | `git status` muestra `On branch ...` |
| Trabajo en la rama equivocada (p. ej. `main`) | Cambios en la rama que no toca | Sin commit aún: `git switch -c docs/<tema>` (se llevan los cambios). Con commit en `main` y sin push, o con push: **no lo arregles solo**; anótalo en `docs/registro-tutoria.md` y usa `/preparar-consulta` | `git branch --show-current` muestra la rama nueva |
| `CONFLICT (content): Merge conflict in ...` | Dos versiones del mismo trozo | `git status`, abre el fichero, decide qué versión queda, borra las marcas `<<<<<<<`, `=======`, `>>>>>>>`, `git add <fichero>`, `git commit`. Si dudas, para y pide ayuda antes de tocar | `git status` sin ficheros «both modified»; `grep -n '<<<<<<<' <fichero>` no devuelve nada |
| `git pull` avisa «Need to specify how to reconcile divergent branches» o pide merge o rebase (la guía de Git del curso lo trata en el Paso 9 y en el Error 1; el texto del aviso viene del conocimiento de Git 2.27 o posterior, no de la guía: no verificado) | Tu rama y la de GitHub tienen commits distintos | Rebase está prohibido en el curso: usa `git pull --no-rebase` (merge), como indica la guía; si hay conflicto o dudas, para y usa `/preparar-consulta` con el mensaje literal | `git status` sin operación en curso |
| `nothing to commit, working tree clean` | No has cambiado nada o no guardaste el fichero | Guarda el fichero y repite `git status` | `git status` lista el fichero modificado |
| Commit con correo personal | Falta configurar el correo `noreply` | `git config user.email "<noreply>"` (el de tu GitHub) | `git config user.email` |
| Subiste una clave o un dato personal | Fuga | **No lo borres tú**. Avisa al tutor ya (guía 04) | — |

## Cómo responde
1. Identifica el caso con el texto literal (cita la línea que coincide).
2. Explica en 2 frases qué significa.
3. Da **un** paso seguro y su «**Comprobar:**» (comando de solo lectura y resultado esperado).
4. Si no coincide con ninguna fila: dilo («no lo reconozco en la guía»), no improvises comandos y sugiere `/preparar-consulta`.

## Qué NO hace
- No ejecuta comandos que cambien nada; solo propone y, como mucho, lee (`git status`, `git log`, `git branch`).
- **Nunca propone** `--force`, `git reset --hard`, `git clean -f`, `rm -rf`, reescribir historia ni `rebase`.
- No adivina: lo desconocido va a `/preparar-consulta`.
- No califica ni decide por ti. No te pide ni acepta claves ni datos personales.

## Permisos
Hereda los del agente activo (pensada para `guia-de-pasos`: sin edición; Git solo lectura). No necesita ninguno más.

## Cómo probarla
Pega un error de ejemplo (p. ej. el `rejected ... non-fast-forward` de la guía) con un `git status` y comprueba que: cita la fila correcta, da un solo paso con «Comprobar:» y no menciona ningún comando prohibido.

## Cómo se declara su uso
Una fila en `docs/declaracion-uso-ia.md` (puedes preparar la fila con `/declarar-uso-ia`): herramienta, «pedí diagnóstico de un error de Git», qué hiciste tú y dónde.
