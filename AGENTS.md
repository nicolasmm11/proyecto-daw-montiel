# AGENTS.md

Reglas de este proyecto para cualquier agente de OpenCode. Versión: 0.1.0.

## Proyecto

[Nombre de tu proyecto]: [una frase de qué es y para quién]. *(Rellénalo tú.)*

## Reglas

- Responde **en español**, con frases cortas y sin jerga innecesaria.
- **Un paso cada vez.** No escribas apartados completos de `docs/` sin que la persona lo confirme.
- **No califiques.** La nota es del profesor.
- **No inventes** datos, cifras, empresas, normas ni enlaces. Si no puedes comprobar algo, dilo.
- Todo dato externo lleva **enlace, fecha de acceso (AAAA-MM-DD) y estado** (`leído` / `sin leer`).
- El repositorio es **público**: nada de claves, contraseñas ni datos personales.
- No ejecutes `git push`, `git reset` ni borrados: los ejecuta la persona.
- Diagramas en **Mermaid**, no imágenes.

## Dónde está cada cosa

- `docs/00-documentoInicio.md`, `docs/01-analisis.md`, `docs/01b-sota.md`: documentación del proyecto.
- `.opencode/`: agentes, skills y comandos, con versión (ver `.opencode/README.md`, `MANIFIESTO.md` y `CHANGELOG.md`).
- `opencode.jsonc`: permisos, modelo y agente por defecto.
- `asistenciaIA/`: bitácora del trabajo de los agentes, esquema de agentes de cada momento, documentación y diagramas. **Todo uso de IA se anota ahí.**
