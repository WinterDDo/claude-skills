---
name: territory-expansion-scoring
description: "Score and rank new markets across six dimensions for expansion decisions. Triggers: 'should we enter [city/country]', 'evaluate this market', 'compare these markets', 'site selection', 'where to expand', '评估市场', '选址', '要不要进入', '市场比较', '开拓新市场'. Covers all Americas. NOT for: financial modeling (use franchise-unit-economics) or legal requirements (use cross-border-compliance-matrix)."
---

# Territory Expansion Scoring

## Overview

A structured scoring framework for evaluating any market in the Americas — from major cities to secondary and tertiary markets. Designed for MIXUE's high-volume, low-price model where foot traffic density and operational cost efficiency matter more than premium positioning.

Core principle: MIXUE wins on volume, not margin. Site selection logic must reflect this. A location that works for Starbucks may not work for MIXUE, and vice versa.

## Scoring Framework (100-Point Scale)

Score each dimension from 0 to 10, then multiply by the weight.

| Dimension | Weight | What to Evaluate |
|---|---|---|
| Population and consumer demand | 20% | Target demographic density, age 15 to 35 concentration, disposable income relative to product price point |
| Foot traffic and commercial activity | 20% | Daily pedestrian flow, proximity to schools, universities, transit hubs, markets, shopping areas |
| Operational cost structure | 20% | Rent per sq meter, local labor cost, cold chain logistics cost and reliability |
| Competitive environment | 15% | Presence of bubble tea, ice cream, and fast beverage competitors; market saturation level |
| Regulatory and operational feasibility | 15% | Ease of entity setup, food business licensing timeline, import feasibility for branded ingredients |
| Brand awareness and entry readiness | 10% | Chinese community presence, social media organic mentions, prior brand recognition |

**Total score interpretation:**
- 80 to 100: Strong entry candidate — prioritize
- 60 to 79: Viable with conditions — identify and address gaps before committing
- 40 to 59: Marginal — only proceed if strategic reasons exist beyond the score
- Below 40: Not recommended at this time

## Americas Market Coverage

### North America

**United States**
- Strongest opportunities: Cities with large Asian diaspora populations (Los Angeles, New York, Houston, San Francisco, Seattle, Chicago) and dense university corridors
- Key cost risk: Labor cost is the highest in the Americas; minimum wage varies significantly by state and city
- Competitive density: Bubble tea market is mature in coastal cities; interior and Southern markets are less saturated

**Canada**
- Strong Chinese and Asian diaspora in Vancouver, Toronto, Calgary
- High labor costs and strict food import regulations
- French-language requirements in Quebec add operational complexity

**Mexico**
- Priority cities: Mexico City, Guadalajara, Monterrey, Tijuana, Puebla
- Key advantage: Young population (median age ~29), high affinity for sweet beverages, growing middle class
- Key risk: Security conditions vary significantly by city; street-level retail safety is a real factor in site selection
- Cold chain infrastructure is improving but inconsistent outside major cities

### Central America and Caribbean

**General characteristics:**
- Smaller markets but high per-capita sweet beverage consumption
- Tourism-driven cities (Cancún, Panama City, San José) offer high foot traffic and dollar-denominated purchasing power
- Franchise infrastructure is underdeveloped — master franchise model is more practical than direct unit franchising
- Regulatory environments are generally less complex than South America

**Priority markets:** Panama City, San José (Costa Rica), Guatemala City, Santo Domingo

### South America

**Brazil**
- Largest market in Latin America; diverse by region — São Paulo and Rio de Janeiro are entry points, but Northeast Brazil (Fortaleza, Recife, Salvador) represents underserved high-growth opportunity
- Very high indirect tax burden on food service — factor into unit economics from the start
- Cold chain logistics are reliable in the Southeast; less so in the North and interior
- Strong social media culture; product virality is achievable

**Argentina**
- High consumer price sensitivity due to chronic inflation and currency instability
- Pricing strategy must account for potential 50%+ annual inflation
- Strong middle class with high brand awareness and sophisticated taste
- Currency controls make repatriation of royalties difficult — assess before entry

**Colombia**
- Fastest-growing large economy in South America; young population; strong urban consumer culture
- Bogotá, Medellín, Cali, and Barranquilla are primary targets
- Security conditions have improved significantly; Medellín in particular has strong commercial dynamism
- No major cold chain constraints in main cities

**Chile**
- Most stable regulatory and economic environment in South America
- Higher income levels; consumers are less price-sensitive than regional average
- Smaller total population (~19 million) limits absolute scale
- Santiago dominates; secondary cities are significantly smaller

**Peru**
- Lima is a highly active food and beverage market with a culture of culinary experimentation
- Growing middle class; very high mobile payment adoption facilitates transactions
- Complex import rules for food products; local sourcing preferred by regulation

**Ecuador, Bolivia, Paraguay, Uruguay**
- Smaller markets; appropriate for later-stage expansion or master franchise model
- Uruguay has the highest income per capita and most stable regulatory environment of the four

## Key Cost Benchmarks by Region

| Region | Monthly Rent (prime location, ~50 sqm) | Monthly Labor (3 to 4 staff) | Cold Chain Cost Index |
|---|---|---|---|
| US major cities | USD 4,000 to 10,000 | USD 10,000 to 18,000 | Low (mature infrastructure) |
| Mexico major cities | USD 1,500 to 4,000 | USD 800 to 2,000 | Medium |
| Brazil major cities | USD 1,200 to 3,500 | USD 1,500 to 3,000 | Medium to High |
| Colombia major cities | USD 1,000 to 2,800 | USD 600 to 1,200 | Medium |
| Chile (Santiago) | USD 2,000 to 5,000 | USD 1,200 to 2,500 | Low to Medium |
| Central America | USD 800 to 2,500 | USD 400 to 900 | High (less reliable) |

All figures are approximate ranges for planning purposes. Validate with local real estate and HR data before committing.

## Benchmark Reference: What High-Volume Low-Price Brands Look For

| Brand | Model | Key Site Selection Logic |
|---|---|---|
| **Aice** (Indonesia) | Mass-market ice cream, USD 0.50 to 1.50 | Maximum distribution density; convenience stores and street carts near schools and markets |
| **Gong Cha / Chatime** | Bubble tea, USD 3 to 6 | Shopping mall anchors, university campuses, transit hubs — customer willing to travel slightly |
| **Dairy Queen** | Ice cream + fast food, USD 4 to 8 | Suburban retail strips, highway locations, family-oriented commercial zones |
| **McDonald's (LatAm)** | High volume, low margin per item | Corner locations, high vehicular and pedestrian crossings, proximity to transit; will accept lower-quality neighborhood if traffic is high enough |

MIXUE's price point (USD 2 to 5) places it between Aice and Gong Cha. The key differentiator is that MIXUE can succeed in locations that premium brands would reject — this is a strategic advantage to exploit in market selection.

## Output Format

```
MARKET SCORING REPORT — [City / Country]
Date: [Date]

SCORES
  Population and consumer demand:     X/10 × 20% = XX
  Foot traffic and commercial activity: X/10 × 20% = XX
  Operational cost structure:          X/10 × 20% = XX
  Competitive environment:             X/10 × 15% = XX
  Regulatory and operational feasibility: X/10 × 15% = XX
  Brand awareness and entry readiness: X/10 × 10% = XX

  TOTAL SCORE: XX/100
  RECOMMENDATION: [Prioritize / Viable with conditions / Marginal / Not recommended]

KEY FINDINGS
  Strengths: [2 to 3 bullet points]
  Risks: [2 to 3 bullet points]
  Critical open questions: [What you need to verify before deciding]

SUGGESTED NEXT STEP
  [One specific action]
```
