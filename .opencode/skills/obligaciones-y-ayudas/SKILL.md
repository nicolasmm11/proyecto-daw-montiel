---
name: obligaciones-y-ayudas
description: "Guía el paso 6: obligaciones fiscales, laborales y de prevención de riesgos que afectan al proyecto, cada una con su norma abierta y leída, y al menos una ayuda real con requisitos, plazo y fuente, en docs/01-analisis.md (apartados 5 y 6). Úsala cuando diga «obligaciones», «normas», «PRL», «ayudas», «subvenciones» o «paso 6»."
---

# obligaciones-y-ayudas

**Versión:** 0.1.1 · **Estado:** probado en 2.2.6 (simulación del 2026-11-19, de la versión 0.1.0)

## Objetivo

Que la persona rellene los apartados **5 y 6** de `docs/01-analisis.md` (criterios 1g y 1h): las **obligaciones** que afectan a la empresa que usará su proyecto, cada una con su norma, y **una ayuda real** con su convocatoria. Guía: `docs/guiaProyecto/como-se-hace/h1-c-obligaciones-y-ayudas.md`.

## Procedimiento

### Obligaciones (apartado 5)

1. **Describir a quién ayuda su proyecto:** autónomo, sociedad o asociación; con personal o sin él; sector y lugar. Si no lo tiene claro, que vuelva al paso 2.
2. **Cuatro preguntas**, una cada vez, y que anote qué obligación toca:
   - ¿Factura? → IVA, impuesto sobre la renta o sociedades, facturación.
   - ¿Tiene personas contratadas? → Seguridad Social, contrato, convenio colectivo, registro de jornada.
   - ¿Su plantilla trabaja con pantallas? → prevención de riesgos laborales (PRL).
   - ¿Su aplicación guarda datos de personas? → protección de datos (solo nombrarla).
3. **Buscar la norma** de cada una en una fuente **oficial** (BOE, Agencia Tributaria, Seguridad Social, INSST, AEPD). Indicar dónde mirar; **no dar tú el número de ley ni el artículo**.
4. **Abrir la norma y leer solo el artículo o apartado que aplica.** Apuntar nombre, número y **enlace**.
5. **Mínimo:** una norma por familia (fiscal, laboral, prevención). Tabla de 4 columnas: `Obligación | Por qué le toca | Norma (con enlace) | Estado`. En «Estado»: `leído` o `sin leer`; si la leyó, añadir la fecha de acceso (AAAA-MM-DD).
6. **Si su software emite facturas**, preguntar si ha mirado la norma de facturación y su calendario vigente. Las fechas han cambiado varias veces: que consulte la nota oficial y anote cuándo.

### Ayuda (apartado 6)

7. **Buscar una convocatoria real** en la Base de Datos Nacional de Subvenciones (BDNS) y en los portales de Asturias que cita la guía. Que filtre por su tipo de entidad y por «tecnología» o «digitalización».
8. **Ficha de la ayuda** con cinco cosas: quién puede pedirla, qué gasto cubre (y cuál excluye), cuánto, plazo y cómo se solicita. Más: enlace a la convocatoria (código BDNS o boletín) y si está **abierta**, **cerrada** o **no comprobada**.
9. **Una ayuda cerrada con su ficha completa vale**, si lo dice. Kit Digital no sirve: sus convocatorias están cerradas.
10. **«Lo que no pude comprobar»:** una lista corta y honesta, en el apartado 5 o en el 6.

## Reglas

- **No inventes** normas, artículos, plazos, importes ni ayudas. Una IA puede inventarlos: la persona abre cada fuente y comprueba que existe y dice eso.
- Una web de gestoría o un blog sirven para entender, no como fuente: se cita la norma o la convocatoria.
- Si algo no se puede comprobar: `sin leer` o «no comprobada».
- **Pregunta por cada fuente si la abrió y la leyó** (la norma, el extracto, las bases). `leído` solo si lo dice ella; si leyó solo una parte, anótala («leído solo el art. 1»).
- Proyecto ficticio de ejemplo (taller de bicicletas); nunca datos de empresas reales ni de personas.
- La IA usada se anota en `asistenciaIA/bitacora.md`.

## Hecho cuando

- [ ] Hay obligaciones de las tres familias (fiscal, laboral, prevención), cada una con norma y **enlace**.
- [ ] Cada obligación tiene estado `leído` o `sin leer`.
- [ ] Hay al menos una ayuda con la convocatoria enlazada.
- [ ] La ficha dice quién puede pedirla, qué cubre, el importe, el plazo y si está abierta o cerrada.
- [ ] Hay una lista de lo que no pudo comprobar.

## Qué NO haces

- No eliges las normas ni la ayuda por la persona.
- No das cifras, plazos ni artículos de memoria.
- No dices si la ayuda «es buena» ni calificas.

## Cómo probarla

Pedir «Paso 6». Debe preguntar a quién ayuda el proyecto antes de nombrar ninguna norma, y mandar a una fuente oficial en lugar de dar él el artículo.
