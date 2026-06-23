# Curriculum Vitae — Cristian E. Sambucetti

Repositorio del CV personal con versión web, Markdown y PDF.

## Contenido

| Archivo | Descripción |
|---------|-------------|
| `index.html` | CV web (GitHub Pages) |
| `styles.css` | Estilos del CV web |
| `cv.md` | Fuente en Markdown, fácil de editar |
| `docs/CV-Sambucetti-Cristian-2026.pdf` | PDF actualizado (jun 2026) |
| `scripts/generate-pdf.sh` | Regenerar PDF desde el HTML |

## Ver en línea

**https://servi-net22.github.io/cv/**

## Regenerar PDF

```bash
./scripts/generate-pdf.sh
```

## Editar el CV

1. Modificar `cv.md` como fuente principal
2. Reflejar los cambios en `index.html`
3. Ejecutar `./scripts/generate-pdf.sh` para actualizar el PDF

## GitHub Pages

El sitio se publica automáticamente desde la rama `main` (configuración en `.github/workflows/pages.yml`).

## Licencia

Uso personal. © Cristian E. Sambucetti
