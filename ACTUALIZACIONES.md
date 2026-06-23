# Plan de actualización del CV

Contenido actual basado en **CV Sambucetti Cristian V.1.7.pdf** (oct 2025).

## Fuentes pendientes

### LinkedIn
- URL del perfil (agregar cuando esté disponible)
- Experiencia laboral actualizada (fechas, descripciones)
- Formación y certificaciones listadas en el perfil
- Aptitudes y endorsements relevantes

### Microsoft Learn
- Perfil: https://learn.microsoft.com/es-es/users/
- Certificaciones obtenidas (badges)
- Rutas de aprendizaje completadas
- Skills medidos en assessments

## Archivos a actualizar

| Archivo | Qué cambiar |
|---------|-------------|
| `cv.md` | Fuente principal — editar aquí primero |
| `index.html` | Reflejar cambios del Markdown |
| `data/certifications.json` | Certificaciones Microsoft (estructura preparada) |
| `docs/` | Nuevo PDF cuando se regenere |

## Estructura sugerida para certificaciones

```json
{
  "microsoft": [
    {
      "title": "Nombre del badge",
      "issuer": "Microsoft",
      "date": "2025-06",
      "url": "https://learn.microsoft.com/...",
      "credentialId": "opcional"
    }
  ]
}
```

## Comandos útiles

```bash
# Publicar en GitHub
./scripts/setup-github.sh

# Vista local del sitio
python3 -m http.server 8080 --directory /home/servinet/CV
# Abrir http://localhost:8080
```
