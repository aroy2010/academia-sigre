#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VENV_DIR="$ROOT_DIR/.venv-docs"
BASE_PYTHON="/usr/local/bin/python3"

if [[ ! -x "$BASE_PYTHON" ]]; then
  BASE_PYTHON="$(command -v python3 || true)"
fi

if [[ -z "$BASE_PYTHON" ]]; then
  echo "Error: No se encontro python3 en el sistema."
  exit 1
fi

cd "$ROOT_DIR"

if [[ ! -f "requirements-docs.txt" ]]; then
  echo "Error: No se encontro requirements-docs.txt"
  exit 1
fi

echo "Creando entorno virtual en $VENV_DIR..."
"$BASE_PYTHON" -m venv "$VENV_DIR"

echo "Instalando dependencias pinneadas..."
"$VENV_DIR/bin/python" -m pip install --upgrade pip
"$VENV_DIR/bin/python" -m pip install -r requirements-docs.txt

echo "Versiones instaladas:"
"$VENV_DIR/bin/python" -m mkdocs --version
"$VENV_DIR/bin/python" -m pip show mkdocs-material pymdown-extensions | cat

echo "Entorno listo."
echo "Siguiente paso: usa ./sigre_docs.sh build o ./sigre_docs.sh serve"
