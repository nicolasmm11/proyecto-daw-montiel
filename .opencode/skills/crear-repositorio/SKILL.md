---
name: crear-repositorio
description: "Guía paso a paso para crear el repositorio público del proyecto en GitHub con un README.md inicial y añadir los ficheros base de la semana (ZIP). Úsala cuando la persona diga «crear el repositorio», «paso 0», «subir mi proyecto a GitHub» o «README inicial»."
---

# crear-repositorio

**Versión:** 0.2.1 · **Estado:** probado en 2.2.6 (1 prueba)

## Objetivo

Que la persona tenga un repositorio **nuevo, público y con README**, con los ficheros base de la semana (`docs/00-documentoInicio.md`, `docs/01-analisis.md`, `docs/01b-sota.md`, `.opencode/`, `asistenciaIA/`, `.gitignore`), **sin instalar nada** (todo desde la web de GitHub).

## Antes de empezar (díselo primero)

El repositorio es **público**. No se sube nunca: claves, contraseñas, datos personales (suyos o de otras personas) ni información de empresas reales. El **nombre** puede ser real o un alias. Si se equivoca y sube algo así, **no lo borra ella**: avisa al tutor sin copiar el dato.

## Pasos (uno cada vez; tras cada uno, pide qué ve)

1. **Crear:** en github.com, botón **+** (arriba a la derecha) → **New repository**. Nombre en minúsculas, sin tildes ni espacios (guiones). Una frase en **Description**. Marcar **Public** y **Add a README file** → **Create repository**.
   *Debe ver:* la página del repositorio con `README.md` en la lista.
2. **README inicial:** abrir `README.md` → icono del lápiz → escribir título, una frase de qué es, estado («en construcción»), autoría (nombre o alias) y enlaces a los tres documentos → **Commit changes…** → mensaje corto («Añade README») → botón verde.
   *Debe ver:* el README con su título. Los enlaces a `docs/` todavía no abren (es normal).
3. **Los ficheros base de la semana (ZIP):** descargar el ZIP que da el tutor, **descomprimirlo** en el ordenador y, en su repositorio, **Add file → Upload files**: arrastrar **todo el contenido de la carpeta `subir`** (incluidas las carpetas `docs`, `.opencode` y `asistenciaIA`, y los ficheros `AGENTS.md`, `opencode.jsonc` y `.gitignore`) → **Commit changes**. Si el sistema **oculta** `.opencode` y `.gitignore` (nombres que empiezan por punto), mostrar los ficheros ocultos: en Mac, `Cmd+Mayús+.`; en Linux, `Ctrl+H`; en Windows, «Ver → Mostrar → Elementos ocultos».
   *Debe ver:* **seis elementos** en su repositorio: las carpetas `docs`, `.opencode` y `asistenciaIA`, y los ficheros `AGENTS.md`, `opencode.jsonc` y `.gitignore`.
4. **Comprobar:** abrir el enlace del repositorio en una **ventana privada o de incógnito**: debe cargar sin iniciar sesión. Escribir ese enlace en `docs/00-documentoInicio.md`, apartado 1.

## Hecho cuando

- [ ] El repositorio se abre en una ventana de incógnito y es **público**.
- [ ] Tiene `README.md` con nombre del proyecto, una frase y autoría.
- [ ] Tiene los tres ficheros en `docs/` (`00-documentoInicio.md`, `01-analisis.md`, `01b-sota.md`) las carpetas `.opencode` y `asistenciaIA` y el fichero `.gitignore` (excluye `.env` y claves).
- [ ] El enlace está escrito en `docs/00-documentoInicio.md`.
- [ ] No hay claves ni datos personales.

## Si algo no sale

| Qué ve | Qué hacer |
|---|---|
| Repositorio privado | **Settings** → final de la página → **Danger Zone** → **Change repository visibility** → **Public** (los menús cambian de nombre: si no lo encuentra, que escriba al tutor) |
| Fichero fuera de `docs/` | Abrirlo → lápiz → escribir `docs/` delante del nombre → commit |
| No encuentra el ZIP o no se descomprime | Que escriba al tutor; mientras tanto puede seguir con el paso del README |
| No ve la carpeta `.opencode` al subir | Es una carpeta oculta (empieza por punto): mostrar los ficheros ocultos (ver paso 3) |

## Qué NO haces

- No creas el repositorio ni los ficheros por la persona (no tienes permiso y no es tu papel).
- No das por bueno un paso sin que te diga qué ve.

## Cómo probarla

Pedir «Guíame en el paso 0». Debe preguntar en qué punto estoy, dar **un** paso y pedir qué veo.
