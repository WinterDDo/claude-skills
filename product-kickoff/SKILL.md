---
name: product-kickoff
description: >-
  Cold-start orchestrator for ANY new product or tool Win begins building from
  zero — web app, internal tool, CRM, dashboard, automation, side project,
  client deliverable. Use the moment a new build starts, before brainstorming
  or planning, regardless of domain. Triggers on: "起一个新的...", "做一个...",
  "build a new tool/app/system", "我想做个", starting a fresh repo or project.
  Front-loads the domain-invariant defaults (stack, quality pipeline) and pulls
  the matching domain context module if one applies (MIXUE franchise ops is the
  richest, but the skill is domain-general and grows new modules as new domains
  recur). NOT for ongoing work on an existing codebase (cold-start only), and
  NOT for market-entry evaluation (use territory-expansion-scoring).
---

# Product Kickoff

## Why this exists

Win starts new builds often, across many domains (MIXUE franchise tools, QUILL,
side projects, client work). Every cold start otherwise repeats the same setup:
stack choice, what quality bar applies, what the domain actually is, language,
look. This skill front-loads the parts that are the same every time and pulls a
domain module for the parts that vary, so the conversation jumps to the actual
product.

Orchestrator, not builder. It sets context and hands off to `brainstorming` /
`writing-plans` / the dev pipeline from the right starting point. It does not
replace them.

## Step 0 — confirm it's a cold start

If the work is on an existing codebase, this skill does not apply. Cold start
only. One sentence to confirm scope if ambiguous, then proceed.

## Layer 1 — domain-invariant defaults (apply every time)

These hold regardless of what's being built. State them back in one compact
block so Win can override any single one; don't silently assume, don't
re-derive from scratch.

**Stack.** Default Next.js + Supabase. Win has delegated all
technical/scalability choices — pick the most scalable option and state it,
don't ask. Deviate only if the product type clearly demands it (then say why).

**Quality pipeline.** If it's a product for real users (Win's team, clients,
production), the dev quality gates apply: plan → eng-review → build → verify →
code-review. Attach from the start, not as later polish. Pure throwaway
prototypes can skip — confirm which it is.

## Layer 2 — domain context module (pull the one that applies)

Most builds sit in a domain that carries recurring context. Identify the domain
first, then load its module from `references/`. If no module matches, proceed
without one and note it — if that domain recurs, the weekly retro will
crystallize a new module.

Available modules:

- **MIXUE Americas franchise ops** → read `references/mixue-franchise-ops.md`.
  The richest module: three-party model, unit economics, cross-border
  compliance, bilingual default, design source, contract hooks.

(Other modules get added by the retro as new domains recur ≥3×.)

## Layer 3 — language and design (domain-dependent, do not assume universal)

Honest scope: bilingual EN/中 and the awesome-design-md design source are
*strong defaults for MIXUE/business deliverables*, not proven universal across
Win's personal side projects. So treat them as: default ON for business/MIXUE/
team-facing work; for personal or single-audience builds, confirm before
assuming. The MIXUE module sets these explicitly; outside it, ask once.

## Handoff

State the defaults + chosen module + Win's overrides in one block, then route:
`brainstorming` if intent is still open → `writing-plans` → dev pipeline. This
skill's job ends once the build starts from the right context.

## Deliberately NOT

- Not a code generator or template dump — loads context, then steps aside.
- Not for market evaluation (territory-expansion-scoring owns that).
- Not for existing codebases — cold start only.
- Not a substitute for one precise question when a default is genuinely
  uncertain for this specific product.

---

*Generalized 2026-05-16 by weekly-skill-retro. The strongest recurring shape
was cold-start product builds; MIXUE was the most frequent instance, not the
shape itself. Domain specifics live in swappable reference modules so the skill
stays general as Win's build domains diversify. Disposable first draft — Win
keeps or discards.*
