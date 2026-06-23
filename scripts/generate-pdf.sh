#!/usr/bin/env bash
# Genera el PDF actualizado desde index.html
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
HTML="$ROOT/index.html"
OUT="$ROOT/docs/CV-Sambucetti-Cristian-2026.pdf"

CHROME="${CHROME_BIN:-google-chrome}"
if ! command -v "$CHROME" >/dev/null 2>&1; then
  CHROME=chromium
fi

if ! command -v "$CHROME" >/dev/null 2>&1; then
  echo "Se necesita Google Chrome o Chromium para generar el PDF."
  exit 1
fi

mkdir -p "$ROOT/docs"

"$CHROME" \
  --headless=new \
  --disable-gpu \
  --no-pdf-header-footer \
  --print-to-pdf="$OUT" \
  "file://$HTML"

echo "PDF generado: $OUT"
ls -lh "$OUT"
