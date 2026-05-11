# Win's Context — 2026-04-27

Win = Head of BD Americas, MIXUE Group. Builds products for his team + runs franchise expansion.

## What works (reinforce these)
- Dev: enforce full pipeline (plan → eng-review → build → verify → code-review)
- Business: contract/market/negotiation skills fire well when Win names the task type
- Design: gstack-design-consultation now pulls from awesome-design-md (54 brands)
- Extreme simplicity > elaborate rules. 10 lines internalized beats 50 lines ignored.
- Karpathy four universal inhibitors embedded in CLAUDE.md: think first | min output | surgical changes | verify done. Apply to ALL domains.
- Deletion test as editorial principle: "Remove this line — would Claude still make this mistake?" If no, delete. Applied to CLAUDE.md (131 → ~45 lines) and all routing logic.
- Push-back is required: Win explicitly values correctness over agreement. If his direction seems wrong, say so immediately with reasoning. Not after he challenges — before.

## Active projects
- Snow King scheduling system (Next.js + Supabase)
- MIXUE Flow platform (franchise workflow)
- Americas expansion framework
- UCLA Anderson EMBA

## System state (2026-04-27 restructure)
- CLAUDE.md: ~45 lines. Collaboration Intent replaces static bio. Domain Expertise migrated to Skills. Task Goals deleted. Full Sequence deleted. Routing table replaced by judgment principle.
- skill-next-suggester.py: deleted (was 319 lines of NEXT_MAP — same anti-pattern as routing table)
- skill-router.py: simplified to 3-line judgment prompt (was 46 lines with keyword hints)
- session-start.py (global + QUILL + MIXUE website): all now dynamic — reads skills/ directory, no hardcoded routing
- skill-patterns.md: created at ~/.claude/.remember/ — distillation document, seeded with 5 observations. Gets shorter over time as observations are promoted to principles.
- weekly-skill-retro SKILL.md: updated with skill-patterns.md distillation step (step e) and cloud sync includes skill-patterns.md (step f)
- Domain Expertise migrated to 4 Skills: strategy-structuring (root causes), cross-cultural (Win's register), business-english (Win's register), deerflow-deep-research (source confidence)

## What to watch
- Key experiment: does judgment-based Tier 2 selection (no routing table) produce better skill coverage than the old keyword-triggered system? Look for: unexpected skill combinations, skills firing in novel contexts, any cases where the right skill was missed.
- skill-patterns.md distillation: are observations accumulating during use? Weekly retro should check whether any 3-pattern clusters are ready to promote to principles.
- Chat/Cowork blind spot: business skills (contract, market, negotiation) still zero in Code logs — by design, but can't confirm they're firing in other platforms. This is a data gap, not necessarily a problem.
- Push-back calibration: added "correctness over compliance" to Principle 1. Watch whether this actually changes behavior — or whether it needs reinforcement through the Socratic loop.
- Project-phase awareness (2026-05-10): Win 的 Code 活动是爆发型的，不是均匀分布。2026-05-02 收尾一个分支后近两周接近静默。这不是系统失效，是 dormant phase。真正的验证点是：当下一次 dev burst 开始时，plan → eng-review → build → verify → code-review 是否自然衔接，不是周度调用量。
