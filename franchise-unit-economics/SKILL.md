---
name: franchise-unit-economics
description: "Build financial projections and ROI models for franchise units with three-layer tax modeling. Triggers: 'unit economics', 'financial model', 'ROI', 'breakeven', 'how much to invest', 'store profitability', '单店模型', '财务预测', '投资回报', '盈亏平衡', '开店成本'. NOT for: market evaluation (use territory-expansion-scoring) or legal compliance (use cross-border-compliance-matrix)."
---

# Franchise Unit Economics

## Overview

A professional financial modeling framework for evaluating MIXUE franchise unit viability. Covers CAPEX, EBITDA, DCF, NPV, IRR, payback period, break-even analysis, and three-tier tax structure across the Americas. Every metric is explained in plain language alongside its technical definition.

## Key Financial Metrics (Plain Language + Technical)

| Metric | Plain Language | Technical Definition |
|---|---|---|
| **CAPEX** | The upfront money spent to set up the store before it opens | Capital Expenditure: one-time investments in fixed assets (equipment, fit-out, signage, opening inventory) |
| **OPEX** | The recurring costs to keep the store running every month | Operating Expenditure: rent, labor, ingredients, utilities, royalties, marketing |
| **Gross Margin** | For every dollar of revenue, how much is left after paying for ingredients and direct production costs | (Revenue minus COGS) divided by Revenue |
| **EBITDA** | How much cash the store actually generates from operations, before accounting, tax, and financing effects | Earnings Before Interest, Taxes, Depreciation, and Amortization — the cleanest measure of store-level operating performance |
| **Break-Even Point** | The minimum monthly sales needed so the store doesn't lose money | Fixed Costs divided by Gross Margin percentage |
| **Payback Period** | How many months or years until the franchisee gets their initial investment back | Total CAPEX divided by average monthly net cash flow |
| **NPV (Net Present Value)** | Whether the total future profits, discounted to today's value, exceed the upfront investment | Sum of all future cash flows discounted at the required rate of return, minus initial investment. Positive NPV = viable investment. |
| **IRR (Internal Rate of Return)** | The annualized return rate of the investment — compare this to what the franchisee could earn elsewhere | The discount rate at which NPV equals zero. A good franchise IRR for this category is typically 20% to 35%. |
| **DCF (Discounted Cash Flow)** | Future money is worth less than today's money — DCF accounts for this when projecting long-term value | A valuation method projecting future free cash flows and discounting them to present value using a chosen rate |
| **WACC** | The blended cost of capital (debt + equity) used as the discount rate in DCF | Weighted Average Cost of Capital — typically 10% to 18% for emerging market franchise investments |

## Standard Input Variables

| Variable | US | Mexico | Brazil |
|---|---|---|---|
| Initial franchise fee | USD 15,000 to 30,000 | MXN 200,000 to 400,000 | BRL 50,000 to 120,000 |
| Royalty rate | 5% to 8% of revenue | 4% to 7% of revenue | 4% to 7% of revenue |
| Store fit-out CAPEX | USD 80,000 to 150,000 | MXN 600,000 to 1,200,000 | BRL 150,000 to 350,000 |
| Average monthly rent | USD 3,000 to 8,000 | MXN 25,000 to 70,000 | BRL 8,000 to 25,000 |
| Monthly labor cost | USD 8,000 to 15,000 | MXN 30,000 to 60,000 | BRL 15,000 to 35,000 |
| Average ticket size | USD 6 to 9 | MXN 60 to 100 | BRL 18 to 30 |
| Daily transaction target | 200 to 400 | 250 to 500 | 200 to 450 |

Note: All figures are reference ranges for planning purposes. Actual costs vary significantly by city and location. Always validate with local market data.

## Three-Tier Tax Structure

### Tier 1: MIXUE as Franchisor (Company Level)

| Market | Key Taxes | Notes |
|---|---|---|
| **US** | Federal corporate income tax 21%; state income tax 0% to 12% depending on state | Royalty income from foreign subsidiaries subject to GILTI (Global Intangible Low-Taxed Income) rules |
| **Mexico** | ISR (corporate income tax) 30% on net income; royalty payments to foreign entities subject to 25% withholding tax unless reduced by tax treaty | Mexico-China tax treaty reduces withholding to 10% on royalties |
| **Brazil** | IRPJ 15% + CSLL 9% on net income = effective 24% corporate rate; remittance of royalties abroad subject to 15% IRRF withholding (may be reduced by treaty) | Brazil-China does not have a comprehensive tax treaty as of 2024 — full withholding rates apply |
| **Transfer pricing** | Royalty rates between related parties must reflect arm's length pricing | All three markets scrutinize intercompany payments closely; document your pricing methodology |

### Tier 2: Franchisee as Store Operator

| Market | Key Taxes | Notes |
|---|---|---|
| **US** | Federal + state income tax on net profit; self-employment tax if sole proprietor; payroll taxes on employees | LLC taxed as pass-through by default (owner pays personal income tax on profits) |
| **Mexico** | ISR 30% on net income; must file monthly DIOT (third-party transaction report); IVA on services received is creditable | Small franchisees may qualify for simplified tax regime (RIF) if revenue under MXN 2 million |
| **Brazil** | Most small franchisees use Simples Nacional (simplified regime) if revenue under BRL 4.8 million/year — single monthly payment covers multiple taxes; above that, Lucro Presumido or Lucro Real applies | Simples Nacional significantly reduces tax burden; help franchisees qualify if eligible |

### Tier 3: Consumer (Indirect Taxes)

| Market | Tax | Rate | Notes |
|---|---|---|---|
| **US** | Sales tax | 0% to 10.25% depending on state and city | Some states exempt food and beverages; check local rules |
| **Mexico** | IVA (VAT) | 16% | Food and non-alcoholic beverages sold at retail are exempt; prepared beverages sold at a counter are taxable — MIXUE products likely fall into the taxable category |
| **Brazil** | ICMS (state VAT) + PIS/COFINS (federal) | ICMS 7% to 18% depending on state; PIS 0.65%, COFINS 3% for Simples or 7.6% for standard regime | Brazil's indirect tax system is the most complex in the Americas — always get local accountant confirmation |

## Financial Model Template

```
UNIT ECONOMICS SUMMARY — [Store Name / Location]

CAPEX (one-time)
  Fit-out and equipment:        ___
  Initial franchise fee:        ___
  Opening inventory:            ___
  Deposits and pre-opening:     ___
  TOTAL CAPEX:                  ___

MONTHLY P&L (at stabilized operations, Month 6+)
  Revenue (daily transactions x ticket x 30):    ___
  COGS (ingredients, packaging ~28-35%):          ___
  GROSS PROFIT:                                   ___
  Gross Margin %:                                 ___

  Rent:                         ___
  Labor:                        ___
  Royalty (% of revenue):       ___
  Utilities:                    ___
  Other OPEX:                   ___
  TOTAL OPEX:                   ___

  EBITDA:                       ___
  EBITDA Margin %:              ___

INVESTMENT METRICS
  Monthly net cash flow:        ___
  Break-even monthly revenue:   ___
  Payback period (months):      ___
  5-year NPV (at X% discount):  ___
  IRR:                          ___
```

## Benchmark Comparison

| Metric | MIXUE Target | Dairy Queen (reference) | Baskin-Robbins (reference) | McDonald's (reference) |
|---|---|---|---|---|
| CAPEX range | Low (volume model) | USD 200k to 1.8M | USD 100k to 400k | USD 1M to 2.3M |
| Royalty rate | 4% to 7% | 4% to 5% | 5.9% | 4% to 5% |
| Payback period | 18 to 36 months | 3 to 5 years | 3 to 5 years | 5 to 7 years |
| EBITDA margin target | 18% to 28% | 15% to 22% | 12% to 20% | 15% to 25% |

MIXUE's competitive advantage is low CAPEX and fast payback — emphasize this in franchisee presentations.

## Common Financial Modeling Mistakes

| Mistake | Reality |
|---|---|
| Using Month 1 revenue as the base | Stores typically need 3 to 6 months to reach stable sales; model a ramp-up period |
| Forgetting the pre-opening loss period | Factor in 2 to 3 months of fixed costs before revenue begins |
| Ignoring currency risk for imported ingredients | A 15% devaluation in BRL or MXN meaningfully increases COGS in local currency |
| Confusing EBITDA with cash flow | EBITDA excludes debt repayment and working capital needs — it is not money in the bank |
| Presenting only best-case scenarios | Always model base case, downside (70% of target revenue), and upside; franchisees need to see the realistic range |
| Ignoring tax at the store level | Net profit after tax is what the franchisee actually takes home — always show post-tax returns |

## Important Disclaimer

All financial projections are estimates for planning and discussion purposes only. Tax rates, regulations, and market conditions change. Validate all figures with a local accountant and financial advisor before presenting to franchisees or making investment decisions.
