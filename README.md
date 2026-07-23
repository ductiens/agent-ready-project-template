# Agent-Ready Project Template

A technology-neutral GitHub template for projects developed with AI coding agents such as Codex, Claude Code, Cursor, GitHub Copilot, Cline, and compatible tools.

This repository standardizes:

- agent instructions with `AGENTS.md`;
- reusable workflows with Agent Skills in `.agents/skills/`;
- project, architecture, testing, and decision documentation;
- deterministic setup and validation entry points;
- structured GitHub issues and pull requests;
- security, approval, and clarification boundaries.

It intentionally contains no application framework, package manager, or `src/` directory. Add those when creating a real project from this template.

## Use this template

1. In GitHub repository settings, enable **Template repository**.
2. Select **Use this template** to create a new repository.
3. Replace placeholders in `docs/PROJECT.md`, `docs/ARCHITECTURE.md`, and `AGENTS.md`.
4. Add your application source and technology-specific configuration.
5. Customize `scripts/setup.sh`, `scripts/dev.sh`, `scripts/test.sh`, and `scripts/validate.sh` when auto-detection is not enough.
6. Run `./scripts/validate.sh` before the first pull request.

## Package managers

The base template does not force a package manager. For a Node.js project, npm is fully supported and recommended when you want the default Node.js toolchain:

```bash
npm install
npm run dev
npm test
npm run validate
```

Commit exactly one lockfile and make the selected package manager explicit in `AGENTS.md`.

## Repository structure

```text
.
├── AGENTS.md
├── .agents/skills/
├── .github/
├── docs/
├── scripts/
├── CONTRIBUTING.md
├── SECURITY.md
└── README.md
```

## Core workflow

```text
Understand request
→ inspect repository
→ ask when a material requirement is missing
→ create a plan
→ implement the smallest relevant change
→ run deterministic validation
→ review the diff
→ request approval for external or high-risk actions
→ create a pull request
```

## What belongs in a derived project

A project created from this template should add its own:

- source directories such as `src/`, `app/`, `apps/`, or `packages/`;
- dependency manifest such as `package.json`, `pyproject.toml`, `pom.xml`, `Cargo.toml`, or `go.mod`;
- lockfile;
- application tests;
- Docker and deployment configuration where needed;
- project-specific `AGENTS.md` instructions close to specialized modules.

## License

No license is selected by this template. Choose an appropriate license before publishing a derived project.
