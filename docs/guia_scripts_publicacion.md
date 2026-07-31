# Guia de scripts de publicacion SIGRE

Esta guia resume cuando usar cada script operativo del vault.

## Ubicacion de trabajo

Ruta oficial:

- /Users/aroy1962/Documents/ObsidianVaults/Sistemas_AROY/99_MkDocs_site/01 Guía SIGRE

## Scripts disponibles

- ./sigre_docs.sh
- ./sigre_publish.sh
- ./sigre_release.sh

## Cuando usar cada script

- `./sigre_docs.sh build`: compila el sitio en `site/`.
- `./sigre_docs.sh serve`: levanta vista previa local en `127.0.0.1:8000`.
- `./sigre_docs.sh deploy`: compila, agrega cambios, crea commit automatico y hace push a `origin/main`.
- `./sigre_publish.sh`: compila y publica sin crear commit (requiere arbol limpio).
- `./sigre_release.sh "mensaje"`: compila, agrega cambios, crea commit con mensaje personalizado y publica.

## Flujo recomendado

1. Ejecutar `./sigre_docs.sh build`.
2. Ejecutar `./sigre_docs.sh serve` y revisar el contenido.
3. Publicar con una opcion:
   - Rapida sin commit: `./sigre_publish.sh`
   - Completa con commit automatico: `./sigre_docs.sh deploy`
   - Completa con commit personalizado: `./sigre_release.sh "actualiza modulo X"`

## Verificaciones previas

Antes de publicar:

- Confirmar rama `main`.
- Confirmar existencia de `mkdocs.yml`.
- Revisar estado Git con `git status --short`.
- Confirmar que `mkdocs build` no tenga errores.

## Ayuda de scripts

- `./sigre_docs.sh help`
- `./sigre_release.sh help`
