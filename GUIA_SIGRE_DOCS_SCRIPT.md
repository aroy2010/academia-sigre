# Guia de uso del script sigre_docs.sh

Ruta del script:

- ./sigre_docs.sh

## Para que sirve

Este script ejecuta el flujo completo de mantenimiento del sitio MkDocs. Incluye compilacion local, vista previa, limpieza y despliegue con commit automatico.

## Comandos disponibles

- ./sigre_docs.sh build
- ./sigre_docs.sh serve
- ./sigre_docs.sh deploy
- ./sigre_docs.sh clean
- ./sigre_docs.sh help

## Como ejecutarlo

1. Abrir Terminal.
2. Entrar a la carpeta del sitio:
   cd '/Users/aroy1962/Documents/ObsidianVaults/Sistemas_AROY/99_MkDocs_site/01 Guía SIGRE'
3. Ejecutar el comando deseado.

## Casos recomendados

- Antes de publicar cambios: usar build
- Para revisar visualmente el manual: usar serve
- Para publicar cambios con commit automatico: usar deploy
- Para regenerar el sitio desde cero: usar clean

## Flujo sugerido

1. ./sigre_docs.sh build
2. ./sigre_docs.sh serve
3. Validar contenido en el navegador
4. ./sigre_docs.sh deploy
