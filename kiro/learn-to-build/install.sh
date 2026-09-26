#!/usr/bin/env bash
# Installs the learn-to-build coaching setup for Kiro.
#
# Coaching artifacts (steering, skills, hook) install into a target WORKSPACE's .kiro/.
# Cross-project learner state (profile, progress, ious, projects) installs GLOBALLY into
# ~/.kiro/learn/ so it carries across every project.
#
# Usage: ./install.sh [workspace-dir]   (defaults to the current directory)
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE="$(cd "${1:-$PWD}" && pwd)"
KIRO_HOME="$HOME/.kiro"

echo "Installing into workspace: $WORKSPACE"

echo "Installing always-on steering…"
mkdir -p "$WORKSPACE/.kiro/steering"
if [ -f "$WORKSPACE/.kiro/steering/learn-to-build.md" ]; then
  echo "  $WORKSPACE/.kiro/steering/learn-to-build.md already exists — left alone."
else
  cp "$SRC/steering/learn-to-build.md" "$WORKSPACE/.kiro/steering/learn-to-build.md"
  echo "  Wrote $WORKSPACE/.kiro/steering/learn-to-build.md."
fi

echo "Installing teaching-mode hook…"
mkdir -p "$WORKSPACE/.kiro/hooks"
for SOURCE_HOOK in "$SRC"/hooks/*; do
  HOOK_NAME="$(basename "$SOURCE_HOOK")"
  TARGET_HOOK="$WORKSPACE/.kiro/hooks/$HOOK_NAME"
  if [ -e "$TARGET_HOOK" ]; then
    echo "  $TARGET_HOOK already exists — left alone."
  else
    cp "$SOURCE_HOOK" "$TARGET_HOOK"
    echo "  Installed $HOOK_NAME."
  fi
done

echo "Installing coaching skills…"
mkdir -p "$WORKSPACE/.kiro/skills"
for SOURCE_SKILL in "$SRC"/skills/*; do
  SKILL_NAME="$(basename "$SOURCE_SKILL")"
  TARGET_SKILL="$WORKSPACE/.kiro/skills/$SKILL_NAME"
  if [ -e "$TARGET_SKILL" ]; then
    echo "  $TARGET_SKILL already exists — left alone."
  else
    cp -R "$SOURCE_SKILL" "$TARGET_SKILL"
    echo "  Installed $SKILL_NAME."
  fi
done

echo "Setting up global learner state…"
mkdir -p "$KIRO_HOME/learn"
if [ -f "$KIRO_HOME/learn/profile.md" ]; then
  echo "  $KIRO_HOME/learn/profile.md already exists — left alone."
else
  cp "$SRC/learn/profile.example.md" "$KIRO_HOME/learn/profile.md"
  echo "  Wrote $KIRO_HOME/learn/profile.md from the example."
fi

echo
echo "Done. Open this workspace in Kiro and tell it what you want to make."
