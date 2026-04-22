---
name: contract-risk-extraction
description: "Analyze contracts for risks, obligations, and compliance gaps in plain language. Triggers: 'review this contract', 'check this lease', 'FDD review', '看看这份合同', '合同风险', '审查协议', user shares a contract/lease/agreement file. Covers US, Mexico, Brazil jurisdictions. NOT for: entity setup (use cross-border-compliance-matrix) or negotiation tactics (use negotiation-prep-framework)."
---

# Contract Risk Extraction

## Overview

A structured approach to reviewing contracts for someone without a legal background. Every clause is evaluated for risk level, fairness to both parties, and compliance with local law — explained in plain language, not legal jargon.

## Core Principles

- Protect both parties, not just MIXUE. Unfair terms create bad relationships and legal exposure.
- Flag compliance issues with current local law, not just general best practices.
- Always recommend qualified local legal counsel before signing anything significant.
- Explain every risk as if the reader has never seen a contract before.

## Risk Identification Framework

### High-Risk Clause Types

| Clause Type | What It Means (Plain Language) | Why It Matters |
|---|---|---|
| Automatic termination | Contract ends without warning if you miss a condition | You could lose the agreement without a chance to fix the problem |
| Unlimited liability | No cap on how much you can owe if something goes wrong | One incident could create an open-ended financial obligation |
| Unilateral modification | The other party can change the contract terms on their own | You agreed to one thing but may end up with another |
| Exclusive dealing | You cannot work with other suppliers or partners | Limits your flexibility if the relationship turns bad |
| Broad indemnification | You agree to cover the other party's losses in wide circumstances | You may end up paying for things that were not your fault |
| Vague definitions | Key terms like "material breach" or "reasonable efforts" are not defined | Both parties can interpret them differently; disputes are almost guaranteed |
| Auto-renewal with short notice | Contract renews automatically unless you cancel within a tight window | Easy to miss the deadline and get locked in for another term |

### Obligation Extraction Template

For each key clause, extract:
- **Who** is responsible
- **What** they must do
- **By when** (deadline or trigger event)
- **Consequence** if not done

## Market-Specific Compliance Flags

### United States
- FDD (Franchise Disclosure Document) must be provided at least 14 calendar days before signing or payment — non-negotiable under FTC Rule
- Some states (CA, IL, MD, NY, WA, and others) require additional FDD registration before offering franchises — check state-specific requirements
- Employment clauses must reflect state labor laws, which vary significantly (e.g., California is far stricter than Texas)
- Non-compete clauses are unenforceable in California and several other states

### Mexico
- Franchise contracts must include all elements required under the Industrial Property Law (Ley de Propiedad Industrial) and the Commercial Franchise Law
- Trademark must be registered with IMPI (Instituto Mexicano de la Propiedad Industrial) before franchising — operating without this is a serious risk
- Contract must be in Spanish or include a certified Spanish translation to be enforceable
- Foreign investment restrictions: certain sectors require majority Mexican ownership

### Brazil
- Franchise contracts governed by Lei 13.966/2019 — requires a COF (Circular de Oferta de Franquia, equivalent to FDD) at least 10 days before signing
- COF must be updated annually and whenever material changes occur
- Trademark must be registered with INPI (Instituto Nacional da Propriedade Industrial)
- Commercial lease law (Lei 8.245/91) gives tenants significant protections — landlords cannot terminate without cause during the contract period
- Labor law (CLT) is extensive; franchise agreements must not create employment relationship between franchisor and franchisee's employees

### Special Regulatory Flags (All Markets)
- **Foreign exchange controls**: Brazil restricts remittance of royalties; pre-approval from Banco Central may be needed
- **Data localization**: Brazil's LGPD (data privacy law) affects how customer data can be stored and transferred
- **Food safety permits**: Each market has distinct licensing requirements before operating food service businesses
- **Import restrictions**: Branded packaging or proprietary ingredients may face customs delays or import bans

## Output Format

For each contract reviewed, produce:

```
RISK SUMMARY
Overall risk level: High / Medium / Low

HIGH RISK CLAUSES
Clause: [Section number and title]
What it says: [Plain language summary]
Why it's risky: [Explanation for a non-lawyer]
Recommended action: [What to ask for in negotiation]

MEDIUM RISK CLAUSES
[Same format]

KEY OBLIGATIONS EXTRACTED
Party | Obligation | Deadline | Consequence if missed

COMPLIANCE FLAGS
[Market-specific issues identified]

RECOMMENDED NEXT STEPS
[What to do before signing, including when to involve a lawyer]
```

## Common Mistakes

| Mistake | Reality |
|---|---|
| Assuming the contract is standard and safe | Every contract is negotiable; "standard" does not mean fair |
| Skipping the definitions section | Vague definitions are where most disputes start |
| Not checking local law validity | A clause that is legal in the US may be void in Brazil |
| Signing before the required waiting period | Violates FTC and Brazilian franchise law; can void the agreement |
| Not involving local counsel | Claude identifies risks; a licensed local lawyer advises on them |
