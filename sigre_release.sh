#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PYTHON_BIN="/usr/local/bin/python3"

usage() {
  cat <<'EOF'
Uso:
  ./sigre_release.sh "mensaje de commit"
  ./sigre_release.sh help

Descripcion:
- Compila el sitio MkDocs
- Hace git add -A
- Crea commit con el mensaje indicado (si hay cambios)
- Publica en origin/main

Ejemplo:
  ./sigre_release.sh "Actualiza guias operativas SIGRE"
EOF
}

validate_environment() {
  cd "$ROOT_DIR"

  if ! command -v "$PYTHON_BIN" >/dev/null 2>&1; then
    echo "Error: No se encontro Python en $PYTHON_BIN"
    exit 1
  fi

  if [[ ! -f "mkdocs.yml" ]]; then
    echo "Error: No se encontro mkdocs.yml en la carpeta actual."
    exit 1
  fi

  local current_branch
  current_branch="$(git rev-parse --abbrev-ref HEAD)"
  if [[ "$current_branch" != "main" ]]; then
    echo "Error: La rama actual es $current_branch. Debes estar en main."
    exit 1
  fi
}

release_site() {
  local commit_message="$1"

  if [[ -z "$commit_message" ]]; then
    echo "Error: Debes indicar un mensaje de commit."
    usage
    exit 1
  fi

  validate_environment

  echo "Compilando sitio..."
  "$PYTHON_BIN" -m mkdocs build

  git add -A

  if git diff --cached --quiet; then
    echo "No hay cambios para confirmar."
  else
    echo "Creando commit..."
    git commit -m "$commit_message"
  fi

  echo "Publicando en origin/main..."
  git push origin main

  echo "Release completado correctamente."
}

main() {
  local command="${1:-help}"

  case "$command" in
    help|-h|--help)
      usage
      ;;
    *)
      release_site "$command"
      ;;
  esac
}

main "$@"
