# Skill Library Audit — all 79 skills

Full parallel-agent audit of every skill in this repo. Each skill was checked on three axes:
**A. Description precision** (clear WHEN / WHEN-NOT + real trigger keywords), **B. Trigger collision**
(does it fight another skill for the same request → MERGE / DISAMBIGUATE / OK), **C. Stale/broken**
(dead file refs, missing payload, wrong paths, hallucinated URLs).

Method: 79 skills audited by 24 parallel sub-agents (10 pilot design-cluster + 14 thematic batches),
each reading the full skill body plus a shared trigger catalog. Global overlap synthesized centrally.

---

## 0. Verdict at a glance

| Severity | Count | What |
|---|---|---|
| 🔴 Broken (non-functional as shipped) | ~15 | Missing bundled payload, dead file refs, path bugs |
| 🟠 Duplicate / merge-or-disambiguate | ~12 pairs | Two skills fight for the same request |
| 🟡 Description fix (weak/bad triggers, name≠dir) | ~35 | Won't self-select reliably; cross-refs won't resolve |
| ✅ Clean (keep as-is / positive benchmark) | ~16 | Well-scoped, accurate cross-refs |

The three highest-leverage problems, in order:
1. **Missing payload** — ~10 skills ship only `SKILL.md`; their `scripts/`/`references/`/`templates/`/`core/`
   directories never made it into the repo. They install but cannot run.
2. **name ≠ directory** — ~30 skills have a frontmatter `name` different from their folder. Cross-refs
   between skills cite the *directory* name, but invocation/routing uses the *frontmatter* name → dangling refs.
3. **Overcrowded clusters** — design (7), debugging (2), parallel-agents (2), code-review (3), skill-authoring (2),
   research (5) all fire on the same requests with no tie-breakers.

---

## 1. 🔴 Broken — fix before relying on these

### 1a. Missing bundled payload (only SKILL.md + LICENSE shipped) — VERIFIED on disk
The skill body references scripts/dirs that do not exist in the repo. Installed via this repo's
SessionStart hook, they are non-functional. (Contrast: `docx/pdf/pptx/xlsx` correctly ship their `scripts/`.)

| Skill | Missing payload the body requires | Severity |
|---|---|---|
| `claude-api` | entire `{python,typescript}/` + `shared/` reference tree — every "read this file" is dead | SEVERE |
| `skill-creator` | `scripts/`, `agents/`, `references/`, `assets/`, `eval-viewer/` — whole workflow | SEVERE |
| `mcp-builder` | `reference/` (4 guide files) | High |
| `web-artifacts-builder` | `scripts/init-artifact.sh`, `scripts/bundle-artifact.sh` | High |
| `webapp-testing` | `scripts/with_server.py`, `examples/` | High |
| `slack-gif-creator` | `core/` package (all Python imports fail) | High |
| `algorithmic-art` | `templates/viewer.html`, `templates/generator_template.js` — mandated "STEP 0" | High |
| `canvas-design` | `./canvas-fonts/` directory | Med |
| `deerflow-github-deep-research` | `scripts/github_api.py`, `assets/report_template.md` | High |
| `deerflow-find-skills` | `scripts/install-skill.sh` | Med |
| `deerflow-data-analysis` | `/mnt/skills/public/data-analysis/scripts/analyze.py` (hardcoded env path) | Med |
| `deerflow-ppt-generation` | `/mnt/skills/public/ppt-generation/scripts/generate.py` (hardcoded env path) | Med |
| `deerflow-image-generation` | `/mnt/skills/public/...` path + mismatched bash example filename | Med |

> Note: the `/mnt/skills/public/...` deerflow skills and the two Anthropic skills (`web-artifacts-builder`,
> `webapp-testing`) *may* resolve on claude.ai web where those payloads are injected at a fixed mount —
> but they will not work when installed from this repo. Either bundle the payload or rewrite bodies to be
> self-contained; at minimum document the external-mount assumption.

### 1b. Path / casing bugs
- **`pdf`** — body says `REFERENCE.md` / `FORMS.md` (uppercase); actual files are `reference.md` / `forms.md`.
  Breaks on case-sensitive Linux. (VERIFIED.)
- **`brainstorming`** — references `skills/brainstorming/visual-companion.md`; the `skills/` prefix is wrong
  (file is at `brainstorming/visual-companion.md`).

### 1c. Dead cross-references
- **`swiftui-patterns`** → `swift-actor-persistence`, `swift-protocol-di-testing` (neither exists).
- **`systematic-debugging`**, **`writing-skills`** → `superpowers:`-prefixed refs won't resolve in this repo.
- **`gstack-plan-design-review`** → `/design-review`, `design-review-lite` (not in this library).

### 1d. Hallucinated URLs — FIXED this pass
- **`taste-skill`** — 5 malformed MDN links (`/Web/CSS/Reference/Properties/...`) that 404. ✅ fixed.

---

## 2. Retired — should not ship
- **`using-superpowers`** — self-labeled `[RETIRED] Do NOT invoke`, yet ships a live 115-line "always invoke
  every skill" body, and the replacement `session-start.py` discipline hook it defers to **does not exist**
  in this repo (the repo's `session-start.sh` only installs skills). Recommend delete, or reduce to a tombstone stub.
- **`taste-skill-v1`** — legacy full-copy of the v2 taste-skill. ✅ description marked do-not-auto-invoke this pass.

---

## 3. 🟠 Duplicate / near-duplicate — merge or disambiguate

None are recommended as hard MERGEs (each pair has a genuine reason to exist); all need **mutual NOT-for
cross-refs** so the router can pick. Ordered by collision strength.

| Pair | Overlap | Recommended split |
|---|---|---|
| `frontend-design` ⇔ `deerflow-frontend-design` | **same `name`, identical description** (install-breaking) | ✅ FIXED: renamed deerflow variant + differentiated desc |
| `systematic-debugging` ⇔ `gstack-investigate` | same "no fix without root cause" 4-phase method | superpowers vs gstack ecosystem; cross-ref |
| `imagegen-frontend-web` ⇔ `image-to-code-skill` | ~70% shared "variation engine" body | images-only vs images+code |
| `skill-creator` ⇔ `writing-skills` | both "create/edit a skill" | eval-benchmark method vs TDD/pressure-test method |
| `subagent-driven-development` ⇔ `dispatching-parallel-agents` | both "run 3+ independent components in parallel" | plan-execution machinery vs general fan-out (also fix mislabel below) |
| `gstack-design-consultation` ⇔ `stitch-skill` | **both write `DESIGN.md`** — overwrite each other | general design system vs Google Stitch output |
| `gstack-review` ⇔ `gstack-codex` ⇔ `requesting-code-review` | all fire on "code review" | diff-gate vs Codex second-opinion vs subagent review |
| `gstack-office-hours` ⇔ `brainstorming` | ideation-before-code slot | YC forcing-questions vs generic scoping |
| `pptx` ⇔ `deerflow-ppt-generation` | both produce `.pptx` | python-pptx authoring vs image-per-slide decks |
| `xlsx` ⇔ `deerflow-data-analysis` | both on Excel/CSV input | spreadsheet deliverable vs read-only SQL analysis |
| `discover-not-persuade` ⇔ `plain-output-not-polished` | both own "no rhetorical padding" | epistemic mode vs prose surface |
| design cluster (7): `taste-skill`, `frontend-design`, `deerflow-frontend-design`, `soft-skill`, `gpt-taste`, `redesign-skill` (+ style packs `minimalist-ui`/`industrial-brutalist-ui`/`stitch`) | all fire on "build a nice landing page" | set `taste-skill` as default; others = narrow-scoped variants w/ WHEN clauses |

---

## 4. 🟡 Description fixes

### 4a. name ≠ directory (pervasive — ~30 skills)
Cross-refs cite the **directory** name; invocation uses the **frontmatter** name. Pick one convention repo-wide.
- **All `deerflow-*`** drop the prefix: `deep-research`, `github-deep-research`, `consulting-analysis`,
  `data-analysis`, `find-skills`, `image-generation`, `ppt-generation`, `web-design-guidelines`, `surprise-me`.
- **All `gstack-*`** use the bare command: `careful`, `freeze`, `guard`, `unfreeze`, `investigate`, `review`,
  `codex`, `document-release`, `retro`, `ship`, `office-hours`, `plan-ceo-review`, `plan-design-review`,
  `plan-eng-review`, `design-consultation`.
- **Design packs**: `brutalist-skill`→`industrial-brutalist-ui`, `minimalist-skill`→`minimalist-ui`,
  `soft-skill`→`high-end-visual-design`, `gpt-tasteskill`→`gpt-taste`, `stitch-skill`→`stitch-design-taste`,
  `redesign-skill`→`redesign-existing-projects`, `taste-skill`→`design-taste-frontend`,
  `image-to-code-skill`→`image-to-code`, `output-skill`→`full-output-enforcement`.

### 4b. Bad / over-broad descriptions (won't route reliably)
- **`deerflow-deep-research`** — "use instead of WebSearch for ANY question" — engineered to over-trigger, no boundary.
- **`writing-skills`** — bare one-liner, ironic for a skill about writing rich descriptions.
- **Always-on over-scoped**: `mark-what-you-dont-know`, `plain-output-not-polished` ("always-on for any assertion/output"
  dilutes them as signals — narrow to high-stakes cases the bodies already name).

### 4c. Weak (capability boast, no trigger verbs, no NOT-for)
`gpt-taste`, `high-end-visual-design` (soft), `minimalist-ui`, `stitch-design-taste`, `brandkit`, `brand-guidelines`,
`deerflow-image-generation`, `deerflow-find-skills`, `deerflow-ppt-generation`, `deerflow-surprise-me`, `skill-creator`,
`swiftui-patterns`, `full-output-enforcement` (output-skill), `webapp-testing`, `change-method-not-goal`, `distill`.

### 4d. Content hygiene
- **`socratic-knowledge-deconstruction`** — hard-codes user name "Win" (incl. in description); generalize.
- **`using-git-worktrees`** — leftover `/Users/jesse/...` author paths + retired-superpowers global path.
- **`dispatching-parallel-agents`** — body is 100% test-failure examples despite a general-purpose description.
- **`subagent-driven-development`** — diagram mislabels `executing-plans` as "parallel session" (it's single-session sequential).
- **gstack family** — Rails-specific load-bearing assumptions (`bin/test-lane`, ActiveRecord) leak into generic
  skills; dated `Co-Authored-By: Claude Opus 4.6` trailer; "Boil the Lake" vs URL slug "boil-the-ocean" mismatch.
- **`canvas-design`** — a fabricated fake-user-quote "FINAL STEP" (prompt-injection-shaped artifact).
- **`deerflow-web-design-guidelines`** — fetches a live external GitHub URL on every run, no bundled fallback.

---

## 5. ✅ Clean — keep as-is (and use as templates)

Positive benchmarks for description quality (crisp scope, real triggers, accurate NOT-for cross-refs):
**`theme-factory`** (best-in-repo), `contract-risk-extraction`, `cross-border-compliance-matrix`,
`negotiation-prep-framework`, `claude-api` (description only — body is broken), `docx`, `xlsx`, `doc-coauthoring`,
`finishing-a-development-branch`, `requesting-code-review`, `receiving-code-review`, `verification-before-completion`,
`test-driven-development`, `brainstorming`, `writing-plans`, `executing-plans`, `mcp-builder` (description only).

Also structurally sound (minor notes only): the gstack safety trio (`careful`/`freeze`/`guard`/`unfreeze` — three-layer
protection is intentional, not redundant), the three `gstack-plan-*` reviews (deliberate family), `pptx`.

---

## 6. Suggested fix order

1. **Restore or self-contain the missing payloads** (§1a) — biggest functional win; these skills are dead as shipped.
2. **Fix the concrete bugs** (§1b/1c): pdf casing, brainstorming path prefix, dead swift-*/superpowers:/design-review refs.
3. **Delete `using-superpowers`** (§2).
4. **Decide name-vs-dir convention** repo-wide (§4a) — one sweep, unblocks all cross-refs.
5. **Add mutual NOT-for cross-refs** to the duplicate pairs (§3), starting with the DESIGN.md overwrite collision.
6. **Rewrite the weak/bad descriptions** (§4b/4c) using `theme-factory` as the template.

_This audit is a map, not a mutation — only the four ✅-marked items in §1d/§2/§3 were changed this pass._
