# learn-to-build for VS Code Copilot

This configuration teaches GitHub Copilot Chat in VS Code to coach a complete beginner by
building the thing they actually want. It combines an always-on instruction file with Agent
Skills that Copilot loads for starting a project, continuing, reviewing, debugging, checking
status, and wrapping up.

## Install

Paste the **VS Code Copilot** prompt from the repository's [main README](../../README.md) into
Copilot Chat in VS Code. Copilot can complete the installation: it puts the always-on
instructions in `~/.copilot/instructions/` and the skills in `~/.copilot/skills/`, which VS Code
detects for every project.

If you prefer a script, run `./install.sh` from this directory. It preserves an existing learner
profile and unrelated instruction files.

## First session

Open a new empty folder in VS Code and tell Copilot what you want to make. The always-on
instructions make Copilot enter teaching mode without the learner needing to know a command:
it uses `learn-start`, works out the smallest version that still has the fun, and gets something
working in a browser during that first session.

The learner should never have to run terminal commands or remember skill names. The skills
activate from ordinary requests such as "I want to make a game," "let's carry on," or "it's
broken." They are also available as slash commands if the learner happens to want them.

## What gets installed

- `~/.copilot/instructions/learn-to-build.instructions.md` — instruction file applied to all
  Copilot Chat requests, including the explicit trigger to start teaching.
- `~/.copilot/skills/learn-*` — on-demand Agent Skills and their teaching references.
- `~/.copilot/learn/` — learner preferences, demonstrated progress, deferred concepts, and the
  list of projects. The learner profile wins if it conflicts with the defaults.

VS Code supports personal instruction files in `~/.copilot/instructions/` and personal Agent
Skills in `~/.copilot/skills/`. Check that **Chat: Use Agent Skills** is enabled in VS Code if
your installation has disabled it.
