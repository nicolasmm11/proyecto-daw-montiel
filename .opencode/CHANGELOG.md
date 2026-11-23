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

## 2026-11-20 · auditorIA y bitácora simplificada

Conjunto 0.2.2 → **0.3.0**. Un agente nuevo, `auditoria` (auditorIA), es el responsable de la bitácora: mira qué ficheros han cambiado, **selecciona** lo importante (máximo 5 filas por semana) y lo anota en `asistenciaIA/bitacora.md`, el único fichero donde puede escribir. No hay revisión humana. **Sin probar** con un modelo; los permisos y el registro de comandos sí se comprobaron con `opencode debug agents` (2.2.6).

- **Añadido** agente `auditoria` 0.1.0 y comando `auditar` 0.1.0.
- **Cambiado** `documentador` 0.2.3 → **0.3.0** (MENOR): ya no escribe en `asistenciaIA/`; remite a `/auditar`.
- **Cambiado** `guia` 0.3.2 → **0.4.0** (MENOR): remite a `auditoria` para la bitácora.
- **Cambiado** comando `bitacora` 0.1.1 → **0.2.0** (MENOR): es un alias de `/auditar`.

## 2026-11-19 · bitácora más sencilla

Conjunto 0.2.1 → **0.2.2**. La bitácora pasa de 6 a 4 columnas (fecha, agente y modelo, qué pediste, qué aceptaste) y se anota **una fila por tarea**, solo lo que acaba en el proyecto. Se quita la columna «Revisión humana» y «Dónde quedó». **Sin probar** con un modelo.

- **Cambiado** `documentador` 0.2.2 → **0.2.3** (PARCHE), `guia` 0.3.1 → **0.3.2** (PARCHE) y comando `bitacora` 0.1.0 → **0.1.1** (PARCHE): proponen una fila por tarea con cuatro datos.

## 2026-11-19 · arreglos tras simular el trabajo del alumnado

Conjunto 0.2.0 → **0.2.1**. Una simulación de los pasos 5 a 8 con `guia` y `documentador` (OpenCode 2.2.6, modelo `opencode/deepseek-v4.1-flash-free`) encontró cuatro problemas. Una segunda simulación, con una copia limpia y las versiones nuevas, comprobó tres arreglos: `guion-de-trabajo` usa su tabla de fechas y no busca ficheros ausentes; `documentador` hizo 2 llamadas (antes unas 10) y preguntó por cada fuente sin marcar `leído`; y `guia` reimprimió las palabras de la persona. **Sin comprobar:** la regla nueva de `obligaciones-y-ayudas` dentro de `guia`.

- **Cambiado** skill `guion-de-trabajo` 0.1.0 → **0.1.1** (PARCHE): lleva dentro la tabla de fases y fechas del curso. Antes mandaba a `docs/fases-del-proyecto.md`, que no está en el repositorio del alumno, y el agente se quedaba sin fechas.
- **Cambiado** `documentador` 0.2.1 → **0.2.2** (PARCHE): no abre `scripts/` ni busca fuera de `docs/`, no prueba la terminal y no marca `leído` sin preguntar fuente por fuente.
- **Cambiado** `guia` 0.3.0 → **0.3.1** (PARCHE) y skill `comprobar-hecho-cuando` 0.2.0 → **0.2.1** (PARCHE): al comprobar, reimprimen las palabras que la persona ya escribió en la conversación en vez de marcadores.
- **Cambiado** skill `obligaciones-y-ayudas` 0.1.0 → **0.1.1** (PARCHE): pregunta por cada fuente si se abrió y se leyó, y anota las lecturas parciales.
- **Cambiado** `guia` y `documentador`: aclaran que las guías `docs/guiaProyecto/...` viven en el repositorio del curso y no deben buscarse en el del alumno.

## 2026-11-19 · semana 2: pasos 5 a 8

Conjunto 0.1.0 → **0.2.0**. Nada de esto se ha probado todavía con un modelo en OpenCode; la especificación de la semana 2 sí se ha probado con `scripts/validar_estructura.py` sobre un repositorio de ejemplo ficticio (lleno y vacío).

- **Añadido** skills `objetivos-y-requisitos` 0.1.0 (paso 5), `obligaciones-y-ayudas` 0.1.0 (paso 6), `guion-de-trabajo` 0.1.0 (paso 7) y `aporte-del-proyecto` 0.1.0 (paso 8).
- **Añadido** la especificación `references/semana-02.json` (0.1.0): pasos 5-8, `docs/registro-tutoria.md` y `docs/publicacion-y-privacidad.md`.
- **Cambiado** skill `validar-estructura-semanal` 0.2.0 → **0.3.0** (MENOR): añade la semana 2 a su tabla y notas sobre lo que el JSON no comprueba.
- **Cambiado** skill `comprobar-hecho-cuando` 0.1.0 → **0.2.0** (MENOR): añade las casillas de los pasos 5 a 8.
- **Cambiado** skill `necesidades-y-tipo` 0.1.0 → **0.1.1** (PARCHE): el hueco de `01b-sota.md` pasa a la skill `aporte-del-proyecto`.
- **Cambiado** `guia` 0.2.1 → **0.3.0** (MENOR): conoce los pasos 5 a 8 y la semana 2.
- **Cambiado** comandos `paso`, `comprobar` y `validar` 0.1.0 → **0.2.0** (MENOR): admiten los pasos 5 a 8 y `semana-02`.

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
