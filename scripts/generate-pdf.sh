#!/usr/bin/env bash
# Genera PDFs del CV y cartas de presentación desde HTML
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
mkdir -p "$ROOT/docs"

CHROME="${CHROME_BIN:-google-chrome}"
if ! command -v "$CHROME" >/dev/null 2>&1; then
  CHROME=chromium
fi

if ! command -v "$CHROME" >/dev/null 2>&1; then
  echo "Se necesita Google Chrome o Chromium para generar el PDF."
  exit 1
fi

print_pdf() {
  local html="$1"
  local out="$2"
  "$CHROME" \
    --headless=new \
    --disable-gpu \
    --no-pdf-header-footer \
    --print-to-pdf="$out" \
    "file://$html"
  echo "PDF generado: $out"
  ls -lh "$out"
}

print_pdf "$ROOT/index.html" "$ROOT/docs/CV-Sambucetti-Cristian-2026.pdf"
print_pdf "$ROOT/carta-empleo.html" "$ROOT/docs/Carta-Sambucetti-Empleo-2026.pdf"
print_pdf "$ROOT/carta-clientes.html" "$ROOT/docs/Carta-Sambucetti-Clientes-2026.pdf"
