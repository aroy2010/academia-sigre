#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ -x "$ROOT_DIR/.venv-docs/bin/python" ]]; then
  PYTHON_BIN="$ROOT_DIR/.venv-docs/bin/python"
else
  PYTHON_BIN="/usr/local/bin/python3"
fi

cd "$ROOT_DIR"

echo "Validando entorno..."
if ! command -v "$PYTHON_BIN" >/dev/null 2>&1; then
  echo "Error: No se encontro Python en $PYTHON_BIN"
  echo "Sugerencia: Ejecuta ./sigre_setup_docs_env.sh"
  exit 1
fi

if [[ ! -f "mkdocs.yml" ]]; then
  echo "Error: No se encontro mkdocs.yml en la carpeta actual."
  exit 1
fi

if ! "$PYTHON_BIN" -m mkdocs --version >/dev/null 2>&1; then
  echo "Error: MkDocs no esta disponible en el entorno actual."
  echo "Sugerencia: Ejecuta ./sigre_setup_docs_env.sh"
  exit 1
fi

if [[ -n "$(git status --porcelain)" ]]; then
  echo "Error: Hay cambios sin confirmar."
  echo "Sugerencia: Ejecuta primero el flujo de trabajo completo con ./sigre_docs.sh deploy"
  git status --short
  exit 1
fi

CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"
if [[ "$CURRENT_BRANCH" != "main" ]]; then
  echo "Error: La rama actual es $CURRENT_BRANCH. Debes estar en main."
  exit 1
fi

echo "Compilando sitio..."
"$PYTHON_BIN" -m mkdocs build

echo "Publicando en origin/main..."
git push origin main

echo "Publicacion completada correctamente."
