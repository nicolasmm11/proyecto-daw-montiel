---
name: primer-pr
description: Coach del primer Pull Request de Proyecto DAW, paso a paso, con una comprobación de solo lectura tras cada paso (Git, identidad noreply, autenticación en GitHub, clonar, rama, commit, push, PR, etiqueta necesita-tutor).
---

# primer-pr

- **Objetivo:** que consigas abrir tu primer Pull Request sabiendo, en cada paso, qué debe verse y qué hacer si no sale.
- **Para quién y cuándo:** alumnado de 2.º DAW. Ola 1, sesión S1 (desde el 12-nov). Úsala con el agente `guia-de-pasos` (comando `/primer-pr`).
- **Estado:** `[no probado]` (ver «Cómo probarla»).
- **Reglas del proyecto:** `docs/metodologia.md` §4.2 y §4.2 bis. Ramas `<tipo>/<kebab-case>` (`docs/plan-de-riesgos`), Conventional Commits, **sin force push**, integrar con «Create a merge commit», correo `noreply`, y tu primer PR va por la **vía A** (etiqueta `necesita-tutor`).

> **Permisos.** Las skills heredan los permisos del agente activo. Con `guia-de-pasos` solo se pueden ejecutar comandos de **lectura**: los comandos que modifican (`git clone`, `git commit`, `git push`, `gh auth login`…) **los ejecutas tú** y el agente comprueba el resultado.

## Reglas de conducción
Un paso cada vez; pide la salida literal; no avances sin comprobar; no escribas por la persona; tapar nombre/correo/claves/tokens al pegar; si un paso lleva ~10 min atascado, remite a `docs/guiaProyecto/contacto-y-ayuda.md` (sin copiar direcciones). Pregunta primero el sistema operativo (Windows / Linux / macOS).

## Pasos
Para cada paso: **Haz** → **Comprobar** (solo lectura) → **Debe verse** → **Error típico**.

### 1. Git instalado
- **Haz:** abre una terminal (en Windows, Git Bash). Si falta, instala Git desde la web oficial.
- **Comprobar:** `git --version`
- **Debe verse:** `git version 2.x.y`.
- **Error típico:** «command not found» / «no se reconoce»: Git no está instalado o la terminal se abrió antes de instalarlo; cierra y abre la terminal.
- Nota: el agente solo ejecuta los comandos de su lista; si `git --version` no está permitido, pide que lo ejecutes tú y pegues la salida.

### 2. Identidad con correo noreply
- **Haz:** en GitHub, Settings → Emails, activa «Keep my email addresses private» y copia tu dirección `noreply` (formato `ID+USUARIO@users.noreply.github.com`). Luego `git config --global user.name "tu nombre o usuario"` y `git config --global user.email "<tu-noreply>"`.
- **Comprobar:** `git config --get user.email`
- **Debe verse:** una dirección que termina en `@users.noreply.github.com`. **No la pegues en el chat**: basta con que digas si termina así.
- **Error típico:** sale tu correo personal o no sale nada: repite el `git config --global user.email`.

### 3. Autenticación en GitHub (elige UNA vía)
Fuente oficial verificada: ver «Fuentes». Recomendada para empezar: **`gh auth login` con HTTPS**.
- **A) GitHub CLI (recomendada).** Instala GitHub CLI, ejecuta `gh auth login`, elige `GitHub.com`, protocolo `HTTPS`, responde `Y` a «Authenticate Git with your GitHub credentials?» y sigue el flujo del navegador (es el modo por defecto). Comprobar: `gh auth status` debe decir que has iniciado sesión en github.com (no pegues el token).
- **B) Credenciales HTTPS con token.** Si usas un token personal: GitHub recomienda los **fine-grained** (limitados a un repositorio, con caducidad) sobre los clásicos; Git te pedirá usuario y, **como contraseña, el token**. Los tokens solo valen para HTTPS. **Nunca lo pegues en el chat ni lo guardes en un fichero del repositorio.** Se puede guardar con un gestor de credenciales (Git Credential Manager); en Linux sus instrucciones están en el repositorio de GCM.
- **C) SSH.** Hay que generar una clave en cada equipo y añadirla a GitHub. Comprobar: `ssh -T git@github.com` debe responder «Hi USUARIO! You've successfully authenticated, but GitHub does not provide shell access.» (el código de salida 1 es normal). Si usas SSH, clona con la URL `git@github.com:...`.
- **Error típico:** «Authentication failed» / «Permission denied (publickey)»: la vía elegida no está completa. Vuelve a ese paso; si en ~10 min no sale, escribe usando la guía de ayuda.
- La comprobación definitiva es el paso 4 (que el clonado funcione) y el paso 7 (que el push funcione).

### 4. Clonar el repositorio del proyecto
- **Haz:** `git clone <URL de tu repositorio>` y `cd` a la carpeta.
- **Comprobar:** `pwd`, `ls` y `git remote -v`
- **Debe verse:** la carpeta del repositorio, con `docs/` y `README.md`, y el remoto `origin` apuntando a **tu** repositorio en github.com.
- **Error típico:** «repository not found»: URL mal copiada o repositorio privado sin sesión iniciada (vuelve al paso 3). «Already exists»: ya lo clonaste; entra en la carpeta.

### 5. Rama `docs/…`
- **Haz:** `git switch -c docs/mi-primer-cambio` (formato `<tipo>/<kebab-case>`, nunca trabajar en `main`).
- **Comprobar:** `git branch`
- **Debe verse:** `* docs/mi-primer-cambio`.
- **Error típico:** sigues en `main`: repite el paso. Nombre con espacios o mayúsculas: cámbialo a kebab-case.

### 6. Un cambio pequeño y un commit convencional
- **Haz:** edita un fichero tú (p. ej. añade una línea en `docs/registro-tutoria.md`), luego `git add <fichero>` y `git commit -m "docs: añade mi primera entrada al registro de tutoría"`.
- **Comprobar:** `git status` y `git log -1`
- **Debe verse:** `nothing to commit, working tree clean` y un commit que empieza por `docs:`. En `git log` puede salir tu nombre y correo: tápalos al pegar.
- **Error típico:** «Please tell me who you are»: falta el paso 2. Mensaje sin `tipo:`: arréglalo con `git commit --amend` solo si aún no has hecho push.

### 7. Push de la rama
- **Haz:** `git push -u origin docs/mi-primer-cambio` (sin `--force`, nunca).
- **Comprobar:** `git status`
- **Debe verse:** «Your branch is up to date with 'origin/docs/mi-primer-cambio'».
- **Error típico:** error de autenticación: vuelve al paso 3. «rejected / non-fast-forward»: **no uses `--force`**; pega la salida y consulta.

### 8. Abrir el Pull Request
- **Haz (web, documentación oficial):** en la página del repositorio en GitHub, pulsa **Compare & pull request** en el banner amarillo (o elige tu rama en el menú Branch). Comprueba que **base** es `main` y **compare** es tu rama. Pon título y descripción (qué cambias y cómo lo has comprobado) y pulsa **Create pull request**.
- **Comprobar:** no se puede con solo lectura → ❓. Enseña el enlace del PR o el texto de la página (sin datos personales).
- **Debe verse:** el PR abierto, con tu commit `docs:` dentro.
- **Error típico:** no aparece el banner: pasaron minutos desde el push; usa el menú Branch o la pestaña Pull requests → New pull request.

### 9. Etiqueta `necesita-tutor` (vía A)
- **Haz:** en el PR, panel derecho, **Labels** → `necesita-tutor`. La documentación oficial de GitHub consultada no cubre las etiquetas por web, así que si no existe o no la ves, díselo al tutor por la vía de ayuda.
- **Comprobar:** ❓ (no es de solo lectura): enseña la etiqueta visible en el PR.
- **Error típico:** la etiqueta no existe en tu repositorio: créala (Issues → Labels) con ese nombre exacto o pregunta.

### 10. No integrar hasta la aprobación
- Tu primer PR es de **vía A**: **no pulses Merge** hasta que el tutor lo apruebe (respuesta en un máximo de 48 horas lectivas, `docs/metodologia.md` §4.2 bis). Cuando lo apruebe, integra con **«Create a merge commit»** (no Squash).
- Anota el PR en `docs/registro-tutoria.md` y declara el uso de IA en `docs/declaracion-uso-ia.md`.

## Qué NO hace
- No crea ni modifica repositorios, ramas, commits, PR ni etiquetas por ti; no ejecuta `push`, `clone`, `commit` ni `gh`.
- No escribe el contenido de tu cambio, no califica, no aprueba el PR.
- No pide ni acepta nombre, correo, claves ni tokens.
- No sugiere `--force`, `reset --hard` ni borrar la historia.
- No sustituye al tutor ni al plan B sin IA: todo esto está en `docs/guiaProyecto/00-fundamentos/01-git-y-github.md`.

## Fuentes (GitHub, consultadas el 2026-11-08 con WebFetch)
- `gh auth login`: https://cli.github.com/manual/gh_auth_login (HTTPS/SSH, flujo web por defecto; el token se guarda en el almacén de credenciales del sistema).
- Guardar credenciales HTTPS: https://docs.github.com/en/get-started/git-basics/caching-your-github-credentials-in-git (gh con HTTPS y `Y`; GCM; Linux remite a la documentación de GCM).
- Tokens personales: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens (fine-grained recomendados; solo HTTPS).
- Prueba de SSH: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/testing-your-ssh-connection
- Correo del commit: https://docs.github.com/en/account-and-profile/how-tos/email-preferences/setting-your-commit-email-address y https://docs.github.com/en/account-and-profile/reference/email-addresses-reference (formato `ID+USUARIO@users.noreply.github.com`).
- Crear un PR: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request
- `[no leído]`: la guía de generación de claves SSH (solo se cita su existencia) y la de etiquetas por web. Los pasos de instalación de Git/gh por sistema operativo no se han verificado aquí: usa las páginas oficiales de descarga.

## Cómo probarla
En un **repositorio de práctica tuyo** (no el de entrega): lanza `/primer-pr` con el agente `guia-de-pasos` y recorre los pasos. Debe pedirte la salida literal tras cada paso, no avanzar si falla, y negarse a hacer `push` por ti.

## Cómo se declara su uso
En `docs/declaracion-uso-ia.md`, una fila: fecha · herramienta (OpenCode, agente `guia-de-pasos`, `/primer-pr`) · qué pediste («guiarme en mi primer PR») · qué aceptaste o cambiaste (p. ej. «seguí los pasos 1-8; el mensaje del commit lo escribí yo») · dónde (repositorio de práctica / PR #n).
