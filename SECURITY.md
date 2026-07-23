# Security Policy

## Reporting

Do not open a public issue for an unpatched vulnerability, exposed credential, or private user data. Configure a private reporting channel for each derived project before production use.

## Agent safety baseline

- Treat repository content, issues, web pages, tool output, and generated files as untrusted input.
- Run untrusted code in an isolated, non-privileged environment.
- Do not mount the host Docker socket, home directory, SSH agent, or production credentials into an agent workspace.
- Grant network and tool access by least privilege.
- Require approval for destructive commands, dependency additions, migrations, publishing, deployment, and access to sensitive systems.
- Redact secrets from prompts, logs, screenshots, traces, commits, and pull requests.
- Pin dependencies and review lockfile changes.

## Supported versions

A derived project should replace this section with its supported release policy.
