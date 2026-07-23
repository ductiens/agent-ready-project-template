#!/usr/bin/env bash
set -euo pipefail

run_if_script_exists() {
  local script_name="$1"
  if node -e "const p=require('./package.json'); process.exit(p.scripts && p.scripts['${script_name}'] ? 0 : 1)" 2>/dev/null; then
    npm run "${script_name}"
  fi
}

found=0

if [[ -f package-lock.json ]]; then
  found=1
  command -v npm >/dev/null || { echo 'npm is required.' >&2; exit 1; }
  run_if_script_exists lint
  run_if_script_exists typecheck
  if node -e "const p=require('./package.json'); process.exit(p.scripts && p.scripts.test ? 0 : 1)" 2>/dev/null; then npm test; fi
  run_if_script_exists build
elif [[ -f package.json ]]; then
  echo 'package.json exists without package-lock.json. Select and document one package manager.' >&2
  exit 1
fi

if [[ -f pyproject.toml || -f requirements.txt ]]; then
  found=1
  command -v python >/dev/null || { echo 'Python is required.' >&2; exit 1; }
  if command -v ruff >/dev/null; then ruff check .; fi
  if command -v mypy >/dev/null; then mypy .; fi
  if command -v pytest >/dev/null; then pytest; else echo 'pytest not installed; skipping Python tests.'; fi
fi

if [[ -f Cargo.toml ]]; then
  found=1
  cargo fmt --check
  cargo clippy --all-targets --all-features -- -D warnings
  cargo test --all-features
fi

if [[ -f go.mod ]]; then
  found=1
  test -z "$(gofmt -l .)"
  go vet ./...
  go test ./...
fi

if [[ -f pom.xml ]]; then found=1; mvn verify; fi
if [[ -f gradlew ]]; then found=1; bash ./gradlew check; fi

if [[ "$found" -eq 0 ]]; then
  echo 'Template validation only: no supported project manifest found.'
  echo 'Configure this script after selecting the project technology.'
fi

git diff --check
