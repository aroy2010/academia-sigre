#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOCS_DIR="$ROOT_DIR"
PYTHON_BIN="/usr/local/bin/python3"
MKDOCS_CMD=("$PYTHON_BIN" -m mkdocs)

usage() {
  cat <<'EOF'
Uso:
  ./sigre_docs.sh build   Compila el sitio MkDocs en ./site
  ./sigre_docs.sh serve   Levanta el servidor local de vista previa
  ./sigre_docs.sh deploy  Compila, hace commit y push a origin/main
  ./sigre_docs.sh clean   Elimina la carpeta ./site
  ./sigre_docs.sh help    Muestra esta ayuda

Notas:
- El script debe ejecutarse desde la raíz del sitio MkDocs.
- Asume que MkDocs Material ya está instalado en /usr/local/bin/python3.
- El comando deploy usa la rama main del remoto origin.
EOF
}

build_site() {
  cd "$DOCS_DIR"
  "${MKDOCS_CMD[@]}" build
}

serve_site() {
  cd "$DOCS_DIR"
  "${MKDOCS_CMD[@]}" serve --dev-addr 127.0.0.1:8000
}

clean_site() {
  cd "$DOCS_DIR"
  rm -rf site
  echo "Carpeta site eliminada."
}

deploy_site() {
  cd "$DOCS_DIR"
  build_site

  if [[ -n "$(git status --short)" ]]; then
    git add -A
    if git diff --cached --quiet; then
      echo "No hay cambios para confirmar."
    else
      git commit -m "Update SIGRE documentation"
    fi
  else
    echo "No hay cambios para confirmar."
  fi

  git push origin main
}

main() {
  local command="${1:-help}"
  case "$command" in
    build)
      build_site
      ;;
    serve)
      serve_site
      ;;
    deploy)
      deploy_site
      ;;
    clean)
      clean_site
      ;;
    help|-h|--help)
      usage
      ;;
    *)
      echo "Comando no reconocido: $command" >&2
      usage
      exit 1
      ;;
  esac
}

main "$@"
