---
description: Valida la estructura de la semana (ficheros, apartados, tablas, fechas y estados) contra su especificación
agent: guia
---

<!-- Versión: 0.2.0 -->

Carga la skill `validar-estructura-semanal` y valida la **estructura** de esta semana: $ARGUMENTS

Las semanas disponibles son `semana-01` y `semana-02`. Si no digo la semana, usa la más reciente. Lee la especificación y los ficheros (solo lectura), responde ✅ / ❌ / ❓ por control con `fichero:línea`, resume si cumple el **mínimo** y el **completo**, y termina con una sola acción. No califiques ni modifiques nada.

Estado del repositorio (solo lectura):

!`git status --short`
