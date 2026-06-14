# Team Guide — Using These Claude Code Skills

A public bundle of 76 skills for Claude Code: ready-made playbooks for documents, decks, research, frontend/design, debugging, planning, and more. Once installed, Claude automatically uses the right one for your task. **No coding required.**

This repo is public — nothing to sign up for, no invitation needed.

## 1. Install on your computer (one command)

You need Claude Code (the desktop app or CLI), signed in with a Claude plan that includes it. Then run:

```bash
curl -fsSL https://raw.githubusercontent.com/WinterDDo/win-skills/main/install.sh | bash
```

Restart Claude Code (or open a new chat). The skills now work in **every** project on your computer. Done.

> **Don't use a terminal?** Open Claude Code and paste this, then approve it and restart:
> *"Please run `curl -fsSL https://raw.githubusercontent.com/WinterDDo/win-skills/main/install.sh | bash` to install my skills, then tell me how many were installed."*

## 2. Use the skills in your own cloud projects (Claude Code on the web)

Skills installed on your computer do **not** carry into cloud/web sessions — a cloud session only sees what's committed in that project's repo. To make all these skills auto-load in one of your own cloud projects, add a SessionStart hook to that project (two small files, committed once).

**Easiest:** open that project in Claude Code and paste:

```
Set this repo up so my Claude Code skills auto-install in every cloud session.
Create and commit two files:
1) .claude/hooks/install-skills.sh (make it executable) that — only when
   CLAUDE_CODE_REMOTE = "true" — shallow-clones https://github.com/WinterDDo/win-skills
   and copies every folder containing a SKILL.md into ~/.claude/skills/ (overwrite
   older copies); it must never fail the session.
2) .claude/settings.json (merge if it exists) with a SessionStart hook running
   $CLAUDE_PROJECT_DIR/.claude/hooks/install-skills.sh
Then tell me it's done.
```

**Or add the two files by hand** — `.claude/hooks/install-skills.sh` (`chmod +x`):

```bash
#!/usr/bin/env bash
set -euo pipefail
[ "${CLAUDE_CODE_REMOTE:-}" != "true" ] && exit 0
SKILLS_DIR="$HOME/.claude/skills"; TMP="$(mktemp -d)"
git clone --depth=1 https://github.com/WinterDDo/win-skills "$TMP" 2>/dev/null || { echo "skills: clone failed" >&2; exit 0; }
mkdir -p "$SKILLS_DIR"; count=0
for d in "$TMP"/*/; do
  if [ -f "${d}SKILL.md" ]; then n=$(basename "$d"); rm -rf "${SKILLS_DIR:?}/$n"; cp -r "$d" "$SKILLS_DIR/"; count=$((count+1)); fi
done
rm -rf "$TMP"; echo "skills: installed $count" >&2
```

`.claude/settings.json` (merge if it already exists):

```json
{
  "hooks": {
    "SessionStart": [
      { "hooks": [ { "type": "command", "command": "$CLAUDE_PROJECT_DIR/.claude/hooks/install-skills.sh" } ] }
    ]
  }
}
```

Commit both. Every future cloud session on that project auto-installs all the skills. (win-skills is public, so the clone needs no credentials.)

## 3. Make Claude actually use a skill

1. **Just ask naturally** — Claude usually picks the right skill on its own.
2. **Name it** if it doesn't: type `/` and choose (e.g. `/taste-skill`, `/systematic-debugging`), or say "use the debugging skill."
3. **(Optional) Make it eager:** type `/memory`, choose **User memory**, and add: *"Before starting a task, check whether one of my installed skills applies and use it if so. My direct instructions take priority."*

## 4. Update / uninstall

- **Update:** re-run the install command from step 1 (it overwrites with the latest).
- **Uninstall:** `rm -rf ~/.claude/skills/<name>` for one, or `rm -rf ~/.claude/skills/*` for all.

---

Questions? Open an issue on the repo. Enjoy.
