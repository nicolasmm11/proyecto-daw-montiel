# OpenCode en tu proyecto

Este proyecto se trabaja con [OpenCode](https://opencode.ai) desde el primer día. Aquí está todo lo que se ha configurado, **con versión y registro de cambios**, para que se vea cómo se trabaja.

## Qué hay

| Pieza | Para qué |
|---|---|
| Agente `guia` | Te guía paso a paso. **Solo lectura**: no escribe tu trabajo |
| Agente `documentador` | Da forma de documentación a lo que tú aportas. Escribe solo en `docs/` y **solo si confirmas** |
| Skills | Un procedimiento por paso (repositorio, idea, soluciones, sector, necesidades y tipo), más comprobar y auditar fuentes |
| Comandos | `/paso`, `/comprobar`, `/documentar`, `/validar`, `/bitacora` |

La lista completa con versiones está en [MANIFIESTO.md](MANIFIESTO.md) y los cambios, en [CHANGELOG.md](CHANGELOG.md).

## Cómo se usa

1. Abre una terminal **en la carpeta del proyecto** y escribe `opencode`. Empieza el agente `guia`.
2. `/paso 1` te acompaña en el paso 1. `/comprobar 1` revisa si está hecho. `/validar semana-01` comprueba la **estructura** de toda la semana. `/bitacora` anota en [asistenciaIA](../asistenciaIA/README.md) lo que han hecho los agentes.
3. Para cambiar de agente: `Mayús+Tab`.

## Principios

- **La IA no hace tu trabajo ni te califica.** Pregunta, comprueba y da forma; las decisiones son tuyas.
- **Permisos mínimos** (`opencode.jsonc`): el agente no puede hacer `git push`, `reset` ni borrar, ni leer `.env`.
- **Nada inventado:** todo dato externo lleva enlace, fecha y estado.
- **Versionado:** cada pieza tiene su versión y se anota en el registro de cambios.

## Modelos

Se usan **modelos gratuitos de OpenCode**, sin tarjeta.

| Papel | Modelo | Qué dice la documentación de OpenCode (2026-11-16) |
|---|---|---|
| **Predeterminado** | `opencode/deepseek-v4.1-flash-free` | «Zero-retention»; no se usa para entrenar |
| Respaldo 1 | `opencode/glm-5.3-flash-free` | Igual |
| Respaldo 2 | `opencode/minimax-m3.1-flash-free` | Igual |
| Respaldo 3 | `opencode/hy4-flash-free` | Igual |

- **Si uno se agota o no responde**, cambia con `/models` (o `F2` para rotar entre los usados). OpenCode V2 no hace el cambio automático por su cuenta.
- Los modelos gratuitos **cambian y tienen una cuota que no se publica**: comprueba la lista con `opencode models`. Hay que poder trabajar **sin IA** con la documentación del repositorio.
- **Nunca** pegues claves, contraseñas ni datos personales en el chat, aunque el modelo sea «zero-retention».
