#!/usr/bin/env bash
# Installs the learn-to-build coaching skills into ~/.claude
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing skills…"
mkdir -p ~/.claude/skills
cp -R "$SRC"/skills/* ~/.claude/skills/

echo "Setting up state directory…"
mkdir -p ~/.claude/learn
if [ -f ~/.claude/learn/profile.md ]; then
  echo "  ~/.claude/learn/profile.md already exists — left alone."
else
  cp "$SRC"/learn/profile.example.md ~/.claude/learn/profile.md
  echo "  Wrote ~/.claude/learn/profile.md from the example. Edit it, or let the first"
  echo "  session rewrite it by interview."
fi

echo "Installing always-on rules…"
if [ -f ~/.claude/CLAUDE.md ]; then
  if grep -q "Coaching a learner who is building their first software" ~/.claude/CLAUDE.md; then
    echo "  Already present in ~/.claude/CLAUDE.md — skipped."
  else
    printf '\n\n' >> ~/.claude/CLAUDE.md
    cat "$SRC"/CLAUDE.md >> ~/.claude/CLAUDE.md
    echo "  Appended to your existing ~/.claude/CLAUDE.md."
  fi
else
  cp "$SRC"/CLAUDE.md ~/.claude/CLAUDE.md
  echo "  Wrote ~/.claude/CLAUDE.md."
fi

echo
echo "Done. Restart Claude Code, then open an empty folder and describe what you want to build."
