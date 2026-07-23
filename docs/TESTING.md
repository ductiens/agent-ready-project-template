# Testing Strategy

## Required checks

Define the checks that must pass before a change is complete.

| Check | Command | Required | Notes |
|---|---|---:|---|
| Formatting | TODO | Yes/No | |
| Linting | TODO | Yes/No | |
| Type checking | TODO | Yes/No | |
| Unit tests | TODO | Yes/No | |
| Integration tests | TODO | Yes/No | |
| Build | TODO | Yes/No | |
| Browser/end-to-end | TODO | Yes/No | |

## Test principles

- Test observable behavior rather than implementation details.
- Add a regression test for a reproduced bug when practical.
- Do not delete or weaken a valid test merely to make a change pass.
- Keep tests deterministic and independent from production systems.
- Record any skipped check and its reason in the pull request.

## Browser verification

For user-interface changes, document the start command, test URL, required flows, viewports, assertions, and expected screenshots.
