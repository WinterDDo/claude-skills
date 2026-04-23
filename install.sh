#!/bin/bash
# Claude Skills + Memory Installer — WinterDDo
# Usage: curl -fsSL https://raw.githubusercontent.com/WinterDDo/claude-skills/main/install.sh | bash

set -e

REPO="https://github.com/WinterDDo/claude-skills"
SKILLS_DIR="$HOME/.claude/skills"
MEMORY_DIR="$HOME/.claude/.remember"
TMP_DIR="/tmp/claude-skills-install-$$"

echo "📦 Installing Claude Skills + Memory from $REPO ..."

git clone --depth=1 "$REPO" "$TMP_DIR" 2>/dev/null

# Install skills
mkdir -p "$SKILLS_DIR"
count=0
for skill_dir in "$TMP_DIR"/*/; do
  if [ -f "$skill_dir/SKILL.md" ]; then
    cp -r "$skill_dir" "$SKILLS_DIR/"
    count=$((count + 1))
  fi
done

# Load memory — Win's accumulated context and collaboration history
if [ -d "$TMP_DIR/.remember" ]; then
  mkdir -p "$MEMORY_DIR"
  cp "$TMP_DIR/.remember/now.md" "$MEMORY_DIR/" 2>/dev/null && echo "  ✓ Loaded now.md (Win's context + active projects)"
  cp "$TMP_DIR/.remember/recent.md" "$MEMORY_DIR/" 2>/dev/null && echo "  ✓ Loaded recent.md (what has worked, what to reinforce)"
fi

rm -rf "$TMP_DIR"

echo ""
echo "✅ $count skills installed. Memory loaded. Win's context is active."
echo "   You know who Win is, what he's working on, and how to work with him."
