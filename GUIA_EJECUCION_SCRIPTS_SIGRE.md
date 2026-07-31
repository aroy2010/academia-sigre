# Guia rapida de ejecucion de scripts SIGRE

## Scripts disponibles

- ./sigre_docs.sh
- ./sigre_publish.sh

## Diferencia principal

- sigre_docs.sh: flujo completo, incluye opcion de commit y push automatico
- sigre_publish.sh: publicacion segura, sin commit automatico

## Ruta de trabajo

- /Users/aroy1962/Documents/ObsidianVaults/Sistemas_AROY/99_MkDocs_site/01 Guía SIGRE

## Secuencia recomendada para cambios normales

1. ./sigre_docs.sh build
2. ./sigre_docs.sh serve
3. Revisar visualmente el sitio
4. ./sigre_docs.sh deploy

## Secuencia recomendada para publicacion rapida

1. Confirmar que ya existe commit local
2. ./sigre_publish.sh

## Ver ayuda de comandos

- ./sigre_docs.sh help

## Sugerencia

Si no estas seguro de tu estado de git, ejecuta:

- git status --short
