#!/usr/bin/env bash
# Installs SystemScout as a Claude Code skill for the current user.
set -e
DEST="$HOME/.claude/skills/systemscout"
mkdir -p "$DEST" "$HOME/systemscout-reports"
cp "$(dirname "$0")/skill/systemscout/SKILL.md" "$DEST/SKILL.md"
cp "$(dirname "$0")/skill/systemscout/playbook.md" "$DEST/playbook.md"
echo "Installed to $DEST. Open Claude Code and say: scout https://example.com"
