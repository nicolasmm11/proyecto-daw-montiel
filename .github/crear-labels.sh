#!/usr/bin/env bash
# Crea (o actualiza) las labels que usa la metodología del curso en TU repositorio.
# Requisitos: GitHub CLI (gh) instalado y autenticado (gh auth status).
# Uso (desde la carpeta de tu repositorio):  bash .github/crear-labels.sh
# Es seguro repetirlo: --force actualiza color y descripción si la label ya existe.
set -euo pipefail

if ! command -v gh >/dev/null 2>&1; then
  echo "No encuentro 'gh' (GitHub CLI). Instálalo y ejecuta 'gh auth login' (ver la guía 01, paso 0b)." >&2
  exit 1
fi
if ! gh auth status >/dev/null 2>&1; then
  echo "No has iniciado sesión en GitHub. Ejecuta 'gh auth login' y vuelve a intentarlo." >&2
  exit 1
fi

REPO="$(gh repo view --json nameWithOwner --jq .nameWithOwner 2>/dev/null || true)"
if [ -z "$REPO" ]; then
  echo "No estoy dentro de un repositorio de GitHub. Entra en la carpeta de tu proyecto." >&2
  exit 1
fi
echo "Voy a crear/actualizar 17 labels en: $REPO"
read -r -p "¿Es TU repositorio? (s/N) " resp
[ "$resp" = "s" ] || { echo "Cancelado."; exit 1; }

crear() { gh label create "$1" --color "$2" --description "$3" --force >/dev/null && echo "  ok  $1"; }

# Revisión del tutor (docs/metodologia.md §4.2 bis)
crear "necesita-tutor"           "D93F0B" "Requiere revisión del tutor antes de integrar"
crear "gravedad:bloqueante"      "B60205" "Corrección del tutor que bloquea el hito"
crear "gravedad:mejora"          "0E8A16" "Corrección del tutor: mejora no bloqueante"
# Tipo de Issue
crear "tipo:incidencia"          "D73A4A" "Algo falla o no cumple lo previsto"
crear "tipo:cambio"              "FBCA04" "Cambio de alcance, diseño o plan"
crear "tipo:correccion-tutor"    "5319E7" "Corrección pedida por el tutor"
# Fase del proyecto
crear "fase:analisis"            "C5DEF5" "Fase 1 · Análisis"
crear "fase:diseno"              "C5DEF5" "Fase 2 · Diseño"
crear "fase:planificacion"       "C5DEF5" "Fase 3 · Planificación"
crear "fase:implementacion"      "C5DEF5" "Fase 4 · Implementación"
crear "fase:pruebas"             "C5DEF5" "Fase 5 · Pruebas"
crear "fase:despliegue"          "C5DEF5" "Fase 6 · Despliegue"
crear "fase:mantenimiento"       "C5DEF5" "Seguimiento y mantenimiento"
# Estimación (desde H2)
crear "est:1h" "BFD4F2" "Estimación: 1 hora"
crear "est:2h" "BFD4F2" "Estimación: 2 horas"
crear "est:4h" "BFD4F2" "Estimación: 4 horas"
crear "est:8h" "BFD4F2" "Estimación: 8 horas (si es más, divide la tarea)"

echo "Hecho. Comprueba con:  gh label list"
