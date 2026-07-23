---
name: test-and-fix
description: Run the repository validation workflow, diagnose the first root-cause failure, make the smallest relevant fix, and repeat with bounded retries.
---

# Test and fix

1. Record the current diff and determine the smallest relevant test.
2. Run the focused test first, then `bash scripts/validate.sh`.
3. Diagnose the first root-cause failure instead of chasing downstream errors.
4. Make the smallest relevant change and add a regression test when practical.
5. Repeat no more than three full repair cycles without new evidence.
6. Stop and ask when the failure is unrelated, changes product behavior, needs a production dependency, or requires unavailable infrastructure.
7. Report commands, results, skipped checks, changed files, and residual risk.

Never weaken a valid check merely to obtain a passing result.
