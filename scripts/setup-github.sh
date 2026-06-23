#!/usr/bin/env bash
# Publica el CV en GitHub (repo + Pages)
set -euo pipefail

REPO="Servi-Net22/cv"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

GH="${GH_BIN:-gh}"
if ! command -v "$GH" >/dev/null 2>&1; then
  if [[ -x /tmp/gh_2.67.0_linux_amd64/bin/gh ]]; then
    GH=/tmp/gh_2.67.0_linux_amd64/bin/gh
  else
    echo "Instalá GitHub CLI: https://cli.github.com/"
    exit 1
  fi
fi

if ! "$GH" auth status >/dev/null 2>&1; then
  echo "Iniciá sesión en GitHub (una sola vez):"
  "$GH" auth login --hostname github.com --git-protocol ssh --web
fi

if ! "$GH" repo view "$REPO" >/dev/null 2>&1; then
  echo "Creando repositorio $REPO..."
  "$GH" repo create cv --public --source=. --remote=origin --description "Curriculum Vitae — Cristian E. Sambucetti"
else
  git remote add origin "git@github.com:${REPO}.git" 2>/dev/null || git remote set-url origin "git@github.com:${REPO}.git"
fi

git push -u origin main

echo ""
echo "Habilitá GitHub Pages:"
echo "  $GH api repos/$REPO/pages -X POST -f source[branch]=main -f source[path]=/"
echo ""
echo "O en la web: Settings → Pages → Source: GitHub Actions"
echo ""
echo "Sitio: https://servi-net22.github.io/cv/"
