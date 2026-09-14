#!/usr/bin/env bash
set -euo pipefail

cv_repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cv_source="$cv_repo_root/assets/latex/abhirup_mukherjee_cv.tex"
cv_output="$cv_repo_root/assets/pdf/abhirup_mukherjee_cv.pdf"
cv_tectonic="${TECTONIC:-tectonic}"
cv_build_dir="$(mktemp -d "${TMPDIR:-/tmp}/abhirup-cv.XXXXXX")"
trap 'rm -rf "$cv_build_dir"' EXIT

cd "$(dirname "$cv_source")"
if command -v "$cv_tectonic" >/dev/null 2>&1; then
  "$cv_tectonic" --outdir "$cv_build_dir" "$cv_source"
elif [[ -n "${TECTONIC:-}" ]]; then
  printf 'Configured Tectonic executable not found: %s\n' "$TECTONIC" >&2
  exit 1
elif command -v pdflatex >/dev/null 2>&1; then
  for cv_pass in 1 2; do
    pdflatex -interaction=nonstopmode -halt-on-error -no-shell-escape \
      -output-directory="$cv_build_dir" "$cv_source"
  done
else
  printf 'CV build requires Tectonic or pdflatex on PATH. Set TECTONIC to use a specific executable.\n' >&2
  exit 1
fi

test -s "$cv_build_dir/abhirup_mukherjee_cv.pdf"
mkdir -p "$(dirname "$cv_output")"
cp "$cv_build_dir/abhirup_mukherjee_cv.pdf" "$cv_output"
printf 'Built %s\n' "$cv_output"
