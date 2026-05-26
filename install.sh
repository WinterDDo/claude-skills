#!/bin/bash
# Claude Skills installer
# Usage: curl -fsSL https://raw.githubusercontent.com/WinterDDo/claude-skills/main/install.sh | bash

set -e

REPO="https://github.com/WinterDDo/claude-skills"
SKILLS_DIR="$HOME/.claude/skills"
TMP_DIR="/tmp/claude-skills-install-$$"

echo "Installing Claude skills from $REPO ..."

git clone --depth=1 "$REPO" "$TMP_DIR" 2>/dev/null

mkdir -p "$SKILLS_DIR"
count=0
for skill_dir in "$TMP_DIR"/*/; do
  if [ -f "$skill_dir/SKILL.md" ]; then
    cp -r "$skill_dir" "$SKILLS_DIR/"
    count=$((count + 1))
  fi
done

rm -rf "$TMP_DIR"

echo ""
echo "Done. $count skills installed in $SKILLS_DIR"
echo "Restart Claude Code or open a new session for the skills to load."
