#!/usr/bin/env bash
# Installs the learn-to-build coaching setup for GitHub Copilot in VS Code.
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SRC/../.." && pwd)"
COPILOT_HOME="$HOME/.copilot"

echo "Installing Copilot teaching instructions…"
mkdir -p "$COPILOT_HOME/instructions"
if [ -f "$COPILOT_HOME/instructions/learn-to-build.instructions.md" ]; then
  echo "  Existing learn-to-build instructions found — left alone."
else
  cp "$SRC/instructions/learn-to-build.instructions.md" \
    "$COPILOT_HOME/instructions/learn-to-build.instructions.md"
  echo "  Wrote $COPILOT_HOME/instructions/learn-to-build.instructions.md."
fi

echo "Installing coaching skills…"
mkdir -p "$COPILOT_HOME/skills"
for SOURCE_SKILL in "$REPO_ROOT"/claude/learn-to-build/skills/*; do
  SKILL_NAME="$(basename "$SOURCE_SKILL")"
  TARGET_SKILL="$COPILOT_HOME/skills/$SKILL_NAME"

  if [ -e "$TARGET_SKILL" ]; then
    echo "  $TARGET_SKILL already exists — left alone."
    continue
  fi

  cp -R "$SOURCE_SKILL" "$TARGET_SKILL"
  find "$TARGET_SKILL" -name '*.md' -type f -exec \
    sed -i.bak \
      -e 's|~/.claude|~/.copilot|g' \
      -e 's|CLAUDE\.md|.github/copilot-instructions.md|g' \
      {} +
  find "$TARGET_SKILL" -name '*.bak' -type f -delete
  echo "  Installed $SKILL_NAME."
done

echo "Setting up learner state…"
mkdir -p "$COPILOT_HOME/learn"
if [ -f "$COPILOT_HOME/learn/profile.md" ]; then
  echo "  $COPILOT_HOME/learn/profile.md already exists — left alone."
else
  cp "$REPO_ROOT/claude/learn-to-build/learn/profile.example.md" \
    "$COPILOT_HOME/learn/profile.md"
  echo "  Wrote $COPILOT_HOME/learn/profile.md from the example."
fi

echo
echo "Done. In VS Code, open an empty folder and tell Copilot what you want to make."
