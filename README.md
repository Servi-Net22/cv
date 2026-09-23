# Curriculum Vitae — Cristian E. Sambucetti

Repositorio del CV personal con versión web, Markdown y PDF.

## Contenido

| Archivo | Descripción |
|---------|-------------|
| `index.html` | CV web (GitHub Pages) |
| `styles.css` | Estilos del CV web |
| `cv.md` | Fuente en Markdown, fácil de editar |
| `cartas.html` | Índice de cartas de presentación |
| `carta-empleo.html` / `.md` | Carta para postulaciones laborales |
| `carta-clientes.html` / `.md` | Carta comercial Servi-Net |
| `docs/CV-Sambucetti-Cristian-2026.pdf` | PDF del CV (jun 2026) |
| `docs/Carta-Sambucetti-*.pdf` | PDFs de las cartas |
| `scripts/generate-pdf.sh` | Regenerar todos los PDF desde HTML |

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
