# Contributing

## Create a project from this template

Enable **Template repository** in GitHub settings, then use **Use this template**. Do not fork merely to start an unrelated project.

## Development workflow

1. Create a focused branch.
2. Update `docs/PROJECT.md` and `docs/ARCHITECTURE.md` for the derived project.
3. Configure the scripts in `scripts/`.
4. Add source code, tests, a dependency manifest, and exactly one lockfile where applicable.
5. Run `./scripts/validate.sh`.
6. Open a pull request using the provided template.

## Pull requests

A pull request must describe:

- the problem and intended behavior;
- the implementation approach;
- validation performed;
- screenshots or browser evidence for visual changes;
- risks, migrations, and rollback considerations.

Keep changes scoped. Separate unrelated refactors from feature and bug-fix work.

## Commit hygiene

Do not commit secrets, local environment files, build output, dependency directories, test recordings containing private data, or editor-specific state unless intentionally shared.
