#!/bin/bash
# Claude Skills Installer — WinterDDo
# Usage: curl -fsSL https://raw.githubusercontent.com/WinterDDo/claude-skills/main/install.sh | bash

set -e

REPO="https://github.com/WinterDDo/claude-skills"
SKILLS_DIR="$HOME/.claude/skills"
TMP_DIR="/tmp/claude-skills-install-$$"

echo "📦 Installing Claude Skills from $REPO ..."

# Clone repo to temp
git clone --depth=1 "$REPO" "$TMP_DIR" 2>/dev/null

# Create skills directory
mkdir -p "$SKILLS_DIR"

# Copy all skills (skip non-directory files like install.sh, README.md)
count=0
for skill_dir in "$TMP_DIR"/*/; do
  skill_name=$(basename "$skill_dir")
  if [ -f "$skill_dir/SKILL.md" ]; then
    cp -r "$skill_dir" "$SKILLS_DIR/"
    count=$((count + 1))
  fi
done

# Cleanup
rm -rf "$TMP_DIR"

echo "✅ Done. $count skills installed to ~/.claude/skills/"
echo "   Skills are ready for this session."
