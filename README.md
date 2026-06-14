# Claude Skills — WinterDDo

79 skills for Claude Code.

This repo is **private** — accept your collaborator invite and make sure Git is authenticated (`gh auth login`, a credential helper, or an SSH key), then:

```bash
git clone https://github.com/WinterDDo/claude-skills.git /tmp/claude-skills \
  && mkdir -p ~/.claude/skills \
  && for d in /tmp/claude-skills/*/; do [ -f "$d/SKILL.md" ] && cp -r "$d" ~/.claude/skills/; done \
  && rm -rf /tmp/claude-skills
```

Restart Claude Code (or open a new session) and the skills auto-load. If this repo is ever made public, you can one-line it instead: `curl -fsSL https://raw.githubusercontent.com/WinterDDo/claude-skills/main/install.sh | bash`

> **New teammate? Start here → [Team Guide — no coding required](TEAM-GUIDE.md).** A couple of clicks, then paste a message to Claude Code and let it set everything up — on the web or on your own computer.

## Provenance

Skills in this repo come from several places. Each retains its own license headers where present.

- `paul-graham-*` skills: distilled from Paul Graham's essays. Source: github.com/WinterDDo/paul-graham-skills (MIT).
- `swiftui-patterns`: from ECC (github.com/affaan-m/ecc), MIT.
- `gstack-*`: from Garry Tan's gstack toolkit.
- Anthropic standard skills (`brainstorming`, `writing-plans`, `docx`, `pdf`, `pptx`, `xlsx`, etc.): from Anthropic's published examples.
- `taste-skill` and its 12 sibling design skills (`taste-skill-v1`, `gpt-tasteskill`, `brandkit`, `brutalist-skill`, `minimalist-skill`, `soft-skill`, `redesign-skill`, `stitch-skill`, `output-skill`, `image-to-code-skill`, `imagegen-frontend-web`, `imagegen-frontend-mobile`): from Taste Skill (github.com/Leonxlnx/taste-skill), MIT.
- Personal / MIXUE business skills and `distill`: original to this repo, MIT.

If you redistribute, preserve each skill's original attribution.
