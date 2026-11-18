# Manifiesto de `.opencode/`

Agentes, skills y comandos de este proyecto, cada uno con **su** versión ([SemVer](https://semver.org/lang/es/) `X.Y.Z`).
La versión de cada pieza está en la propia pieza (línea «Versión: X.Y.Z»); esta tabla debe coincidir. Qué cambia en cada versión: [CHANGELOG.md](CHANGELOG.md).

**Versión del conjunto:** 0.1.0 · **OpenCode:** 2.x (probado con 2.2.6)

| Tipo | Nombre | Versión | Estado | Para qué |
|---|---|---|---|---|
| agente | guia | 0.2.1 | probado en 2.2.6 (1 prueba) | Te guía paso a paso en las tareas de H1 (solo lectura) |
| agente | documentador | 0.2.1 | no probado | Da forma de documentación a lo que tú aportas; escribe en `docs/`, `README.md` y `asistenciaIA/` solo si lo confirmas |
| skill | crear-repositorio | 0.2.1 | probado en 2.2.6 (1 prueba, de la versión 0.1.0) | Paso 0: repositorio público, README y los tres documentos |
| skill | documento-inicio | 0.1.0 | no probado | Aclarar la idea y rellenar `00-documentoInicio.md` |
| skill | soluciones-existentes | 0.1.0 | no probado | Paso 1: problema y soluciones existentes (`01b-sota.md`) |
| skill | sector-y-empresas | 0.1.0 | no probado | Paso 2: sector, empresas y organigrama (`01-analisis.md`) |
| skill | necesidades-y-tipo | 0.1.0 | no probado | Pasos 3 y 4: necesidades, oportunidad y tipo de proyecto |
| skill | comprobar-hecho-cuando | 0.1.0 | no probado | Comprueba la estructura de un paso (✅ / ❌ / ❓) |
| skill | auditar-fuentes | 0.1.0 | no probado | Comprueba enlace, fecha y estado de cada dato externo |
| skill | validar-estructura-semanal | 0.2.0 | probado en 2.2.6 (2 pruebas, de la versión 0.1.0) | Valida la estructura de toda la semana contra su especificación (`references/semana-NN.json`) |
| comando | paso | 0.1.0 | no probado | `/paso <n>`: la guía te acompaña en un paso |
| comando | comprobar | 0.1.0 | no probado | `/comprobar <n>`: comprueba un paso |
| comando | documentar | 0.1.0 | no probado | `/documentar <apartado>`: redacta con el documentador |
| comando | validar | 0.1.0 | probado en 2.2.6 (2 pruebas) | `/validar <semana>`: valida la estructura de la semana |
| comando | bitacora | 0.1.0 | no probado | `/bitacora`: anota en `asistenciaIA/bitacora.md` lo hecho con los agentes |

**Estado:** `no probado` = escrito, sin prueba registrada · `probado en 2.x` = hay prueba registrada (ver CHANGELOG). Todas se **cargan** en OpenCode 2.2.6 (`opencode debug agents` y `GET /api/skill`).
