#!/usr/bin/env bash
set -euo pipefail

if [[ -f package-lock.json ]]; then npm run dev
elif [[ -f pyproject.toml || -f requirements.txt ]]; then
  echo 'Configure scripts/dev.sh with the project application start command.'
elif [[ -f Cargo.toml ]]; then cargo run
elif [[ -f go.mod ]]; then go run .
elif [[ -f pom.xml ]]; then mvn spring-boot:run
elif [[ -f gradlew ]]; then bash ./gradlew run
else
  echo 'No supported project manifest found. Configure scripts/dev.sh for this project.'
fi
