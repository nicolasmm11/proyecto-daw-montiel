# Registro de cambios de `.opencode/`

Una entrada por cambio, la más reciente arriba. Tipos: **Añadido**, **Cambiado**, **Corregido**, **Retirado**.
Cada pieza tiene su propia versión SemVer (`X.Y.Z`):

| Sube | Cuándo |
|---|---|
| **MAYOR** | Cambia de forma que lo que ya hacías deja de valer (nombre, permisos, formato) |
| **MENOR** | Añade una función sin romper lo anterior |
| **PARCHE** | Corrige un fallo o mejora la redacción |

Mientras la versión empiece por `0.`, la pieza está en prueba y puede cambiar más de lo habitual.

## Sin publicar

(vacío)

## 2026-11-16 · .gitignore en la base

- **Cambiado** skill `validar-estructura-semanal` 0.1.0 → **0.2.0** (MENOR): la especificación `semana-01.json` (0.2.0) comprueba que existe `.gitignore` y que excluye `.env`.
- **Cambiado** skill `crear-repositorio` 0.2.0 → **0.2.1** (PARCHE): el ZIP trae también `.gitignore` (excluye `.env` y claves); se explica que, como `.opencode`, es un fichero oculto.

## 2026-11-16 · una sola bitácora

- **Corregido** `guia` 0.2.0 → **0.2.1** y `documentador` 0.2.0 → **0.2.1** (PARCHE): el uso de IA se anota en `asistenciaIA/bitacora.md`, no en `docs/declaracion-uso-ia.md` (que no llega en el ZIP de la semana 1).

## 2026-11-16 · base semanal en ZIP

- **Cambiado** skill `crear-repositorio` 0.1.0 → **0.2.0** (MENOR): el paso 3 ya no copia plantillas del repositorio del curso; se **descarga el ZIP de la semana** y se sube su contenido (`docs/`, `.opencode/`, `asistenciaIA/`, `AGENTS.md`, `opencode.jsonc`). Añade el aviso de las carpetas ocultas.

## 2026-11-16 · validación semanal y asistenciaIA

- **Añadido** skill `validar-estructura-semanal` 0.1.0, con la especificación `references/semana-01.json` (0.1.0).
- **Añadido** comandos `validar` 0.1.0 y `bitacora` 0.1.0.
- **Probado** (2026-11-16, OpenCode 2.2.6, `deepseek-v4.1-flash-free`): `/validar semana-01` da «mínimo y completo cumplen» en el proyecto de referencia AriaScope y «no cumplen» (13 y 3 controles) con los documentos vacíos, **igual que `scripts/validar_estructura.py`**.
- **Cambiado** `guia` 0.1.0 → **0.2.0** (MENOR): incorpora la validación semanal y remite al `documentador` para la bitácora.
- **Cambiado** `documentador` 0.1.0 → **0.2.0** (MENOR): puede escribir también en `asistenciaIA/`, con confirmación, y propone la fila de la bitácora.

## 2026-11-16 · primera versión

- **Añadido** agentes `guia` 0.1.0 y `documentador` 0.1.0.
- **Añadido** skills `crear-repositorio` 0.1.0, `documento-inicio` 0.1.0, `soluciones-existentes` 0.1.0, `sector-y-empresas` 0.1.0, `necesidades-y-tipo` 0.1.0, `comprobar-hecho-cuando` 0.1.0 y `auditar-fuentes` 0.1.0.
- **Probado** (2026-11-16, OpenCode 2.2.6, `deepseek-v4.1-flash-free`): `guia` carga la skill `crear-repositorio`, da **un solo paso**, avisa de la privacidad y cierra con las tres cosas que pide su formato. El resto de piezas se cargan, pero no se han ejecutado todavía.
- **Añadido** comandos `paso` 0.1.0, `comprobar` 0.1.0 y `documentar` 0.1.0.
