# Orientacion practica para aplicar scripts SIGRE

## Ruta oficial del vault

- /Users/aroy1962/Documents/ObsidianVaults/Sistemas_AROY/99_MkDocs_site/01 Guía SIGRE

## Que script usar segun el caso

- Quiero compilar o previsualizar sin publicar: ./sigre_docs.sh build o ./sigre_docs.sh serve
- Quiero compilar y publicar con commit automatico: ./sigre_docs.sh deploy
- Ya tengo commit hecho y solo quiero publicar: ./sigre_publish.sh
- Quiero publicar y definir mi propio mensaje de commit: ./sigre_release.sh "mensaje"

## Flujo recomendado diario

1. cd '/Users/aroy1962/Documents/ObsidianVaults/Sistemas_AROY/99_MkDocs_site/01 Guía SIGRE'
2. ./sigre_docs.sh build
3. ./sigre_docs.sh serve
4. Revisar contenido en navegador
5. Publicar usando una de estas rutas:
   - Rapida sin commit: ./sigre_publish.sh
   - Completa con commit automatico: ./sigre_docs.sh deploy
   - Completa con commit personalizado: ./sigre_release.sh "actualiza modulo X"

## Checklist antes de publicar

- Estar en rama main
- Tener mkdocs.yml presente
- Validar estado git con: git status --short
- Confirmar que el build no arroje errores

## Comandos de ayuda

- ./sigre_docs.sh help
- ./sigre_release.sh help
