# Esquema de agentes vigente

**Vigente desde 2026-11-16 (semana 1)** · Foto de este momento: [esquemas/semana-01.md](esquemas/semana-01.md) · Versiones y cambios: [.opencode/MANIFIESTO.md](../.opencode/MANIFIESTO.md) y [.opencode/CHANGELOG.md](../.opencode/CHANGELOG.md)

```mermaid
flowchart TD
    P["Persona"] -->|"/paso /comprobar /validar"| G["Agente guia<br/>(solo lectura)"]
    P -->|"/documentar /bitacora"| D["Agente documentador<br/>(escribe con confirmación)"]
    G -->|"carga"| S["Skills por paso"]
    D -->|"usa"| S
    S --> S0["crear-repositorio"]
    S --> S1["documento-inicio"]
    S --> S2["soluciones-existentes"]
    S --> S3["sector-y-empresas"]
    S --> S4["necesidades-y-tipo"]
    S --> S5["comprobar-hecho-cuando"]
    S --> S6["validar-estructura-semanal"]
    S --> S7["auditar-fuentes"]
    S6 -->|"lee"| E["references/semana-01.json"]
    D -->|"con permiso"| F["docs/, README.md,<br/>asistenciaIA/"]
    G -.->|"nunca escribe"| F
    M["Modelo: deepseek-v4.1-flash-free<br/>(+ 3 respaldos)"] --- G
    M --- D
```

**Cómo leerlo:** la persona habla con uno de los dos agentes. `guia` solo lee y acompaña; `documentador` es el único que puede escribir, y solo en tres sitios y con confirmación. Las skills son los procedimientos que cargan; `validar-estructura-semanal` lee la especificación de la semana. La línea de puntos indica lo que `guia` **no** puede hacer.

## Piezas y versiones

| Tipo | Nombre | Versión |
|---|---|---|
| agente | guia | 0.2.1 |
| agente | documentador | 0.2.1 |
| skill | crear-repositorio | 0.2.1 |
| skill | documento-inicio, soluciones-existentes, sector-y-empresas, necesidades-y-tipo, comprobar-hecho-cuando, auditar-fuentes | 0.1.0 |
| skill | validar-estructura-semanal | 0.2.0 |
| comando | paso, comprobar, documentar, validar, bitacora | 0.1.0 |

## Permisos de cada agente

| Acción | `guia` | `documentador` |
|---|---|---|
| Leer ficheros | sí (`.env` no) | sí (`.env` no) |
| Editar `docs/`, `README.md`, `asistenciaIA/` | **no** | **con confirmación** |
| Editar cualquier otro sitio | no | no |
| `git status`, `git diff`, `git log`, `ls` | sí | sí |
| `git push`, `git reset`, `rm` | no | no |
| Abrir una web | pregunta | pregunta |
