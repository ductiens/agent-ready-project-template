# AGENTS.md

## Purpose

This repository is a technology-neutral template for projects developed with AI coding agents. Derived projects must replace placeholders and add technology-specific commands before relying on autonomous execution.

## Before changing code

1. Read `README.md`, `docs/PROJECT.md`, and `docs/ARCHITECTURE.md`.
2. Read the nearest nested `AGENTS.md` for the files you will modify.
3. Inspect the repository's manifests, lockfiles, scripts, tests, and CI configuration.
4. Restate the task, constraints, acceptance criteria, affected areas, and validation plan.
5. Ask a blocking clarification question when a material product or safety decision is missing.

## Planning

Create a short plan before editing when the task affects multiple files, public behavior, data, security, infrastructure, or external integrations. Keep the plan updated when discoveries change the approach.

## Implementation rules

- Make the smallest change that satisfies the request.
- Follow existing architecture and conventions before introducing new patterns.
- Do not modify unrelated files.
- Do not weaken tests, linting, type checking, security controls, or CI to make validation pass.
- Add a regression test for bug fixes when practical.
- Never invent credentials, URLs, business rules, or acceptance criteria.
- Do not introduce a production dependency without approval.
- Do not expose secrets in source, logs, screenshots, commits, or pull requests.

## Required clarification

Stop and ask the user before:

- changing public API behavior;
- changing database schema, retention, migration, or deletion semantics;
- changing authentication, authorization, billing, privacy, or security behavior;
- introducing a production dependency, paid service, or new external account;
- performing an irreversible or destructive action;
- choosing between alternatives that create materially different user behavior;
- proceeding without enough information to verify success.

You may decide reversible implementation details that follow existing repository conventions and do not change public behavior.

## Commands

Use the repository entry-point scripts when present:

- Setup: `./scripts/setup.sh`
- Development: `./scripts/dev.sh`
- Tests: `./scripts/test.sh`
- Full validation: `./scripts/validate.sh`

For Node.js projects, npm is supported. Prefer `npm ci` in CI and containers when `package-lock.json` exists. Do not mix npm, pnpm, Yarn, or Bun lockfiles.

## Validation

Before declaring completion:

1. Run the smallest relevant test while iterating.
2. Run `./scripts/validate.sh`.
3. Review `git diff --check` and the final diff.
4. Report commands run, results, skipped checks, and residual risks.

If validation cannot run, explain the exact blocker. Never claim that unexecuted checks passed.

## Git and external actions

- Do not work directly on the default branch for implementation tasks.
- Do not force-push, rewrite shared history, merge, deploy, publish, or create releases without explicit approval.
- Show the final diff and validation evidence before requesting approval to push or create a pull request.
- Keep commits scoped and free of generated secrets or local-only artifacts.

## Documentation

Update documentation when changing architecture, setup, public behavior, operational procedures, or important decisions. Record durable architecture choices in `docs/adr/`.
