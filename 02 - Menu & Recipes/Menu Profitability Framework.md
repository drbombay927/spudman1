---
type: sop
location: both
status: active
created: 2026-07-10
tags: [menu, profitability, finance]
---

# 💰 Menu Profitability Framework
*Every spud earns its keep — or it rides off the menu.*

> Parent: [[Spud Man HQ]] · Extends: [[Menu Profitability Analysis]] · Data source: [[Key Metrics Dashboard]]

> [!warning] Where we stand (Apr 2026 KPI update)
> Food cost **34.8%** against a <32% target; prime cost **63.3%** against <58%. This framework exists to close that gap *before* Casper's mall rent makes it more expensive. Interim target: **<32%** food cost by Casper opening; **30%** by year-end.

> [!info] Purpose
> One system for costing, pricing, and ranking every menu item across both locations. Fill in real numbers from invoices — the structure is done, the data is yours. Review quarterly (calendar reminders: Oct, Jan, Apr, Jul).

## 1. Plate Cost Cards
Every menu item gets one card. Costs come from **actual invoices** (Sysco / US Foods — see [[Vendor Master List]]), updated whenever a vendor price moves >5%.

### Template
```markdown
## Plate Cost — [Item Name]
Updated: YYYY-MM-DD · Source invoices: [vendor, date]

| Component | Portion | Unit cost | Plate cost |
|-----------|---------|-----------|------------|
| Russet potato (size __ ct) | 1 ea | $ | $ |
| [Protein] | __ oz | $/oz | $ |
| [Cheese/sauce] | __ oz | $/oz | $ |
| [Toppings…] | | | |
| Packaging (boat/lid/fork/napkin) | 1 set | | $ |
| **TOTAL PLATE COST** | | | **$** |

Menu price: $__ · Food cost %: __% · Gross margin $: $__
```

> [!tip] Don't forget packaging
> In a mall food court nearly 100% of orders are in disposables. Packaging is a real ingredient — cost it like one.

### Example (fill with real numbers)
| Item | Plate cost | Price | Food cost % | Margin $ |
|------|-----------|-------|-------------|----------|
| Fully Stuffed Spud | $__ | $__ | __% | $__ |
| Brisket Rancher | $__ | $__ | __% | $__ |
| Buffalo Ranch Chicken | $__ | $__ | __% | $__ |

## 2. Targets
| Metric | Target | Red flag |
|--------|--------|----------|
| Item food cost % | ≤ 30% (proteins may run to 33% if margin $ is strong) | > 35% |
| Blended store food cost % | **<32% now** (per [[Key Metrics Dashboard]]), 28–30% by year-end | > 34% any month |
| Margin dollars per item | The real king — a 33% item earning $7 margin beats a 25% item earning $4 | — |

**Rule: you bank margin dollars, not percentages.** Rank items by margin $ first, % second.

## 3. The Corral Matrix (menu engineering)
Each quarter, plot every item on two axes: **popularity** (units sold vs. menu average) and **margin $** (vs. menu average).

| | High margin $ | Low margin $ |
|---|---|---|
| **High sales** | 🐎 **Stallions** — heroes. Never discount, feature everywhere, protect portion spec fiercely | 🐂 **Workhorses** — volume favorites. Raise price $0.50, trim plate cost, or re-portion |
| **Low sales** | 🃏 **Wild Cards** — profitable but unknown. Rename, reposition on menu board, have crew suggest them | 🌵 **Strays** — cut them, or reinvent completely. Every Stray steals prep time and inventory slots |

**Quarterly ritual (30 min):** export sales by item from POS → update plate costs → place every item in the Corral → take ONE action per non-Stallion item → log decisions at the bottom of this note.

## 4. Pricing Rules
1. **Price from cost, sanity-check from market.** Target price = plate cost ÷ 0.30, then round to a .49/.99 and compare to local competitors.
2. **Casper ≠ Riverton pricing.** Mall rent (base + likely percentage rent + CAM) is higher — Casper menu prices should run **$0.50–$1.00 above Riverton** on loaded items. Mall food court customers expect it; don't leave it on the table.
3. **Raise prices small and often** (quarterly $0.25–0.50 where needed), never big and rare.
4. **Never discount Stallions.** Promotions use Wild Cards (introduces them) or add-ons (drink/side attach).
5. **Combo math:** a combo must add margin dollars vs. the item alone, not just ticket size.

## 5. Zero-Waste Tie-In
Waste is food cost you already paid. This section plugs into the existing [[Zero Waste Potato System]] — it's the money side of that SOP.
- **Daily waste log** (crew-entered, 30 seconds): item, quantity, reason (over-prep / expired / mistake / drop)
- **Weekly review:** waste $ ÷ sales = waste %. Target **< 2% of food cost**.
- Over-baked potatoes have a second life: next-day breakfast-style items, soup base, or staff meal — decide the ladder, write it into prep SOPs
- Par sheets are the waste weapon: over-prep is the #1 waste source; tune pars weekly for the first 8 weeks at Casper

## 6. Location Scorecard (monthly, per store)
| Metric | Riverton | Casper | Target |
|--------|----------|--------|--------|
| Gross sales | | | |
| Food cost % | | | <32% → 28–30% |
| Waste % of food cost | | | < 2% |
| Labor % | | | <25% (per KMD) |
| Avg ticket | | | |
| Top Stallion | | | |
| Worst Stray | | | |

Same menu, two markets — expect the Corral to look *different* in Casper (mall = more impulse, more kids, more weekend). Let each store's data drive its own featured items.

---

## Decision Log
| Date | Item | Action | Result (next quarter) |
|------|------|--------|----------------------|
| | | | |

---

*Related: [[Casper Launch Master Plan]] · [[5-Day Staff Training Program v2]] · [[Menu Profitability Analysis]] · [[Key Metrics Dashboard]] · [[Zero Waste Potato System]] · [[Spud Man HQ]]*

*Last updated: 2026-07-10*
