# Guia de uso del script sigre_publish.sh

Ruta del script:

- ./sigre_publish.sh

## Para que sirve

Este script publica de forma segura en GitHub cuando ya no hay cambios pendientes. Es ideal para una publicacion rapida, sin commit automatico.

## Validaciones que realiza

- Verifica que exista Python en /usr/local/bin/python3
- Verifica que exista mkdocs.yml
- Verifica que el repositorio no tenga cambios sin confirmar
- Verifica que la rama activa sea main
- Compila el sitio con mkdocs build
- Ejecuta git push origin main

## Como ejecutarlo

1. Abrir Terminal.
2. Entrar a la carpeta del sitio:
   cd '/Users/aroy1962/Documents/ObsidianVaults/Sistemas_AROY/99_MkDocs_site/01 Guía SIGRE'
3. Dar permisos de ejecucion una sola vez:
   chmod +x sigre_publish.sh
4. Ejecutar:
   ./sigre_publish.sh

## Cuando usarlo

- Cuando ya hiciste commit manualmente
- Cuando solo deseas compilar y publicar
- Cuando no quieres que el script cree commits automaticos

## Si aparece error por cambios sin confirmar

Opciones:

1. Confirmar cambios manualmente con git add, git commit y luego ejecutar el script.
2. Usar el flujo automatico:
   ./sigre_docs.sh deploy
