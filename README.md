# learn-to-build

AI agent configurations for helping complete beginners learn to build software by making projects they care about. The teaching approach is practical: explain why before how, keep each step small, let safe mistakes teach, and celebrate real working progress.

## Configurations

- [Claude Code](claude/learn-to-build/) — the original coaching configuration and skills.
- [Codex](codex/learn-to-build/AGENTS.md) — the equivalent always-on Codex guidance.

## Using the Codex configuration

Copy `codex/learn-to-build/AGENTS.md` to `~/.codex/AGENTS.md` to make the guidance available in every Codex project. Codex also supports project-specific `AGENTS.md` files when the coaching setup should apply only to one repository.

## Set up a new project

Open your new project in your preferred agent and paste the matching prompt below. The agent will install and configure the coaching setup for you.

### Claude Code

```text
Configure the learn-to-build coaching system for me from:

https://github.com/matthewholliday/learn-to-build

Do the complete setup yourself. Do not ask me to run commands.

Install the Claude skills globally, create the learner-state directory, preserve any existing learner profile, and add the always-on guidance to ~/.claude/CLAUDE.md without overwriting unrelated instructions. Follow the repository’s install guidance, then verify the setup and tell me what you installed.
```

### Codex

```text
Configure the learn-to-build coaching system for me from:

https://github.com/matthewholliday/learn-to-build

Do the complete setup yourself. Do not ask me to run commands.

Install the Codex always-on guidance from codex/learn-to-build/AGENTS.md into ~/.codex/AGENTS.md without overwriting unrelated instructions. Set up the learner-state directory under ~/.codex/learn, preserving an existing profile if present.

Also make the learn-to-build workflow available as Codex skills under ~/.codex/skills/learn-to-build: adapt the repository’s Claude skills as needed, replacing Claude-specific paths with ~/.codex equivalents while preserving their teaching behavior. Verify the resulting AGENTS.md, skills, and learner-state setup, then tell me what you installed.
```

## License

[MIT](LICENSE)
