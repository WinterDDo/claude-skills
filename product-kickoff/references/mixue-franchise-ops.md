# Domain Module — MIXUE Americas Franchise Ops

Load this when the new build serves MIXUE Americas franchise operations
(franchisee/HQ tools, CRM, email flows, one-pagers, onboarding,
authorization-letter generators, scheduling, HQ dashboards).

## Three-party model

Every MIXUE franchise tool serves one or more of:
- **Franchisee (加盟商)** — the operator. Cares about unit economics,
  onboarding speed, clear obligations, low-friction UX.
- **HQ (总部)** — control, standardization, reporting, brand consistency.
- **Government / regulator** — registration, franchise disclosure, labor and
  food-safety compliance.

Identify which of the three the tool serves before designing. The audience
determines register, language balance, and data sensitivity.

## Recurring constraints

- **Single-unit economics** matter whenever the tool touches money, ROI,
  or franchisee decisions → consider `franchise-unit-economics`.
- **Cross-border compliance**, primary jurisdictions US / Mexico / Brazil →
  consider `cross-border-compliance-matrix` for entity/registration questions.
- **Contracts/legal artifacts** are common (FDDs, leases, franchisee
  authorization letters, disclosure docs). When one enters scope, route to
  `contract-risk-extraction` (review/analyze) — do not hand-roll legal analysis
  inside the build.

## Defaults for this domain

- **Bilingual EN + 中** by default — Win's team and HQ both consume outputs.
  Drop a language only on explicit single-audience confirmation.
- **Design source**: pull from the awesome-design-md reference library.
  Franchisee-facing → clean, friendly, consumer register. HQ-internal →
  denser, utilitarian.
- **Adjacent skills** worth pairing: `mixue-bilingual-business-docs` (doc
  deliverables), `audience-message-adapter` (same content for
  franchisee/HQ/gov/legal).

## What stays out of scope

Market-entry evaluation is not a kickoff concern — that is
`territory-expansion-scoring`, run separately before a build is even decided.
