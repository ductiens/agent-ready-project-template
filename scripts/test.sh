#!/usr/bin/env bash
set -euo pipefail

if [[ -f package-lock.json ]]; then npm test
elif [[ -f pyproject.toml || -f requirements.txt ]]; then pytest
elif [[ -f Cargo.toml ]]; then cargo test --all-features
elif [[ -f go.mod ]]; then go test ./...
elif [[ -f pom.xml ]]; then mvn test
elif [[ -f gradlew ]]; then bash ./gradlew test
else
  echo 'No supported project manifest found. Configure scripts/test.sh for this project.'
fi
