# Guia de uso del workflow de GitHub Pages

Esta guia explica como ejecutar el workflow de Pages desde GitHub Actions.

## Workflow configurado

- Archivo: .github/workflows/pages.yml
- Nombre en Actions: Deploy MkDocs to GitHub Pages

## Ejecucion automatica

Se ejecuta automaticamente cuando haces push a la rama main.

## Ejecucion manual (Run workflow)

1. Ir a GitHub > Actions > Deploy MkDocs to GitHub Pages.
2. Clic en Run workflow.
3. Completar campos:
   - target_ref: rama o tag a compilar.
   - run_mode:
     - build-only: solo compila (recomendado para pruebas).
     - deploy: publica Pages, solo si target_ref es main.
4. Ejecutar workflow.

## Reglas de seguridad

- Un deploy manual solo ocurre si:
  - run_mode = deploy
  - target_ref = main
- Si eliges otra rama con deploy, no publica (solo evita despliegues accidentales).

## Casos recomendados

- Probar una rama sin publicar:
  - target_ref = feature/docs
  - run_mode = build-only

- Publicar manualmente desde main:
  - target_ref = main
  - run_mode = deploy

## Verificacion posterior

1. Revisar que los jobs build y deploy esten en verde.
2. Confirmar URL publicada en el job deploy.
3. Revisar Settings > Pages con Source en GitHub Actions.
