---
name: review-changes
description: Review a proposed software change for correctness, scope, security, missing tests, and unsupported claims before approval or pull request creation.
---

# Review changes

1. Read the task, acceptance criteria, plan, final diff, and validation output.
2. Check behavior, edge cases, data handling, security, compatibility, and failure paths.
3. Verify that changed files are in scope and that tests exercise the intended behavior.
4. Flag claims not supported by executed checks.
5. Prioritize findings by user impact: correctness, security, data loss, regressions, missing tests, then maintainability.
6. Do not focus on cosmetic preferences already handled by automated formatting.

Return concrete findings with file paths, evidence, and a recommended action.
