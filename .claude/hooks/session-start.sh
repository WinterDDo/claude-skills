#!/bin/bash
# SessionStart hook for the WinterDDo/claude-skills repo.
# Installs every skill in the repo (directories containing SKILL.md) into
# ~/.claude/skills/ so they auto-load in this session.
#
# Runs synchronously: skills must be on disk before Claude Code scans
# ~/.claude/skills/ at session start, otherwise they won't appear in
# the session's available-skills list.

set -euo pipefail

# Only run in Claude Code on the web. On a local machine the user has
# already installed skills (or wants to manage them themselves), and the
# ~/.claude/skills/ directory persists across sessions.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

REPO_DIR="${CLAUDE_PROJECT_DIR:-$(cd "$(dirname "$0")/../.." && pwd)}"
SKILLS_DIR="$HOME/.claude/skills"

mkdir -p "$SKILLS_DIR"

count=0
for skill_dir in "$REPO_DIR"/*/; do
  if [ -f "${skill_dir}SKILL.md" ]; then
    name=$(basename "$skill_dir")
    # Refresh in place: remove any stale copy, then copy fresh from the
    # repo. This keeps the install idempotent and ensures upstream
    # deletions inside a skill don't linger.
    rm -rf "${SKILLS_DIR:?}/$name"
    cp -r "$skill_dir" "$SKILLS_DIR/"
    count=$((count + 1))
  fi
done

echo "claude-skills hook: installed $count skills into $SKILLS_DIR" >&2
