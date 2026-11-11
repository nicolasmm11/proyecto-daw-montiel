---
name: declarar-uso-ia
description: Redacta la fila para docs/declaracion-uso-ia.md (Fecha, Herramienta, Qué pedí, Qué acepté o cambié, Dónde) a partir de lo que confirmes. No escribe en el fichero.
---

# declarar-uso-ia

## Objetivo
Redactar **una fila** de la tabla de `docs/declaracion-uso-ia.md`, con las columnas de la plantilla: `Fecha | Herramienta | Qué pedí | Qué acepté o cambié | Dónde (fichero o PR)`.

## Cuándo se usa
Después de usar una IA en el proyecto (esta u otra), para dejar constancia. Declarar es obligatorio; usar IA está permitido.

## Cómo trabaja
1. Pregunta, **de una en una**, lo que falte: fecha, herramienta (y modelo si lo sabes), qué pediste, qué aceptaste tal cual, qué cambiaste o descartaste, y en qué fichero o PR quedó.
2. Redacta la fila solo con lo que tú hayas confirmado. Lo que no sepas se queda como «¿?» y te lo vuelve a preguntar; **no inventa** ni rellena por ti.
3. Entrega la fila en formato de tabla Markdown para que **tú** la pegues en el fichero.
4. Recuerda: la IA no califica y la autoría se comprueba en la defensa oral. «Qué acepté o cambié» es tu decisión, no la de la IA.

## Qué NO hace
- **No escribe ni edita** `docs/declaracion-uso-ia.md` (ni ningún fichero).
- No inventa fechas, herramientas ni resultados.
- No admite claves, tokens ni datos personales en la fila ni en la conversación; si aparecen, pide quitarlos o generalizarlos.
- No valora si el uso fue «bueno» ni pone nota.

## Permisos
Hereda los del agente activo (pensada para `guia-de-pasos`, sin edición). No necesita lectura de ficheros más allá de, opcionalmente, ver las columnas de `docs/declaracion-uso-ia.md`.

## Cómo probarla
Dile «declara que usé /diagnosticar-error el 2026-11-12 para un error de push». Debe preguntar qué aceptaste/cambiaste y dónde antes de dar la fila, y entregarla sin tocar ficheros.

## Cómo se declara su uso
Esta skill solo redacta; su propio uso también cuenta como uso de IA: añade una fila igual que para cualquier otra herramienta.
