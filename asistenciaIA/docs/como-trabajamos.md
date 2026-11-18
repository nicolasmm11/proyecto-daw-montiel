# Cómo trabajamos con los agentes

## Principios

1. **La IA no hace tu trabajo ni te califica.** `guia` pregunta, comprueba y acompaña. `documentador` da forma de texto a lo que aportas y **solo escribe si lo confirmas**.
2. **Lo irreversible lo ejecuta una persona.** Los agentes no pueden hacer `git push`, `git reset` ni borrar, ni leer `.env` (`opencode.jsonc`).
3. **Nada inventado.** Todo dato externo lleva enlace, fecha de acceso y estado (`leído` / `sin leer`).
4. **Todo queda anotado** en la [bitácora](../bitacora.md).
5. **Siempre hay plan B sin IA:** los pasos están en la documentación del repositorio.

## Modelos

| Papel | Modelo | Qué dice la documentación de OpenCode (2026-11-16) |
|---|---|---|
| Predeterminado | `opencode/deepseek-v4.1-flash-free` | «Zero-retention»; no se usa para entrenar |
| Respaldos | `opencode/glm-5.3-flash-free`, `opencode/minimax-m3.1-flash-free`, `opencode/hy4-flash-free` | Igual |

- OpenCode V2 **no cambia solo de modelo** si uno falla: se cambia con `/models` o con `F2`.
- Los modelos gratuitos **cambian** y su cuota no se publica: la lista actual está en `opencode models`.
- Aun siendo «zero-retention»: **nunca** claves, contraseñas ni datos personales en el chat.

## Cómo se valida una semana

La **estructura** de la semana se comprueba con `/validar` (agente `guia`) o con `scripts/validar_estructura.py`. Ambos aplican la misma especificación, `semana-NN.json`, y comprueban **forma**, no calidad. Ver [el diagrama](../diagramas/validacion-semanal.md).

## Qué pasa al cambiar una pieza

Se sube su versión, se anota en `.opencode/CHANGELOG.md` y `MANIFIESTO.md`, y se crea una foto nueva en `esquemas/` al cerrar la semana.
