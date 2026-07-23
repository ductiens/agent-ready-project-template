#!/usr/bin/env bash
set -euo pipefail

if [[ -f package-lock.json ]]; then npm ci
elif [[ -f pyproject.toml ]]; then
  if command -v uv >/dev/null; then uv sync
  else python -m pip install -e '.[dev]'
  fi
elif [[ -f requirements.txt ]]; then python -m pip install -r requirements.txt
elif [[ -f Cargo.toml ]]; then cargo fetch
elif [[ -f go.mod ]]; then go mod download
elif [[ -f pom.xml ]]; then mvn dependency:go-offline
elif [[ -f gradlew ]]; then bash ./gradlew dependencies
else
  echo 'No supported project manifest found. Configure scripts/setup.sh for this project.'
fi
