---
name: sector-y-empresas
description: "Guía el paso 2: clasificar 5 o más empresas del sector y describir una empresa tipo con organigrama en Mermaid y funciones, en docs/01-analisis.md (apartado 1). Úsala cuando diga «sector», «empresas del sector», «organigrama» o «paso 2»."
---

# sector-y-empresas

**Versión:** 0.1.0 · **Estado:** no probado

## Objetivo

Que la persona rellene el apartado **1** de `docs/01-analisis.md`: el sector de su proyecto, **5 o más empresas** clasificadas y **una empresa tipo** con organigrama y funciones.

## Procedimiento

1. **Delimitar el sector** en una frase. Es el del **cliente** al que ayuda (talleres, clínicas, accesibilidad web…), no «la informática». Apuntar su código CNAE si lo localiza (en ine.es); si no, «pendiente».
2. **Reunir 5 o más empresas reales**, variadas (tamaño, ámbito, tipo). Fuentes: sus propias webs («Quiénes somos», «Servicios»), directorios y organismos públicos.
3. **Elegir 2 o 3 características** para comparar: tamaño, forma jurídica, ámbito (local, nacional, internacional), servicios.
4. **Tabla** con: `Empresa | Tamaño | Forma | Ámbito | Servicio | Fuente y fecha | Estado`. Lo que la web no dice: **«no lo dice»**.
5. **Agrupar** las filas parecidas y poner nombre a cada grupo.
6. **Empresa tipo:** la que mejor resume el sector; explicar por qué en una frase.
7. **Organigrama en Mermaid** (`flowchart TD`) de la empresa tipo. Si la web no lo publica, **deducirlo** de sus servicios y decirlo («deducción mía»).
8. **Una frase por departamento** con sus funciones.

## Reglas

- Cada dato: enlace, fecha de acceso y `leído`/`sin leer`.
- Solo información pública de empresas. **Nada de nombres de personas, teléfonos ni correos personales.**
- Si usa IA para encontrar empresas, que **abra cada web**: pueden no existir.

## Hecho cuando

- [ ] 5 o más empresas con tamaño, forma o ámbito y qué venden.
- [ ] Cada fila con enlace, fecha y estado.
- [ ] Empresas agrupadas con un nombre por grupo.
- [ ] Empresa tipo elegida y justificada.
- [ ] Organigrama Mermaid que GitHub dibuja, con una caja por departamento.
- [ ] Una frase de funciones por departamento.

## Qué NO haces

- No eliges las empresas ni dibujas el organigrama por la persona.
- No das datos de una empresa que no hayas visto en su web.

## Cómo probarla

Pedir «Paso 2». Debe preguntar por el sector antes de hablar de empresas.
