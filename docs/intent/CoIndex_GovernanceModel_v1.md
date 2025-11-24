# CoIndex Governance Model v1

Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251124T012850Z

## 1. Goal

Define how CoPointees, canonality and reputation interact so that CoIndex can evolve
safely under democratic edge control.

## 2. CoPointee lifecycle

1. Draft created
   - Minimal metadata
   - Low reputation by default
   - Canonality: Draft or Fringe

2. Review by Contributors
   - Edge contributors review content and mapping to <C,I,X,S,K>
   - Reputation markers may increase or decrease
   - Canonality may move from Draft to Provisional

3. Promotion to higher canonality
   - Requires quorum of reliable Contributors
   - For Canon or Near-canon levels, CoSteward or Co1 level review may be required
   - All promotions and demotions leave audit trails

4. Evolution or deprecation
   - Tuples may be updated when meaning changes
   - Old tuples are never erased; they are versioned and linked
   - Deprecated CoPointees can be replaced but not silently removed

## 3. Canonality levels

- Canon
  - Highest authority in current epoch
  - Very slow to change
- Near-canon
  - Strong support; close to Canon
- Provisional
  - Working standard; still open to change
- Draft
  - Early work; not yet trusted
- Fringe
  - Edge ideas; explicitly non mainstream

Canonality controls:
- whether a CoPointee can be used as a default in tools
- how fast it can drift semantically
- what quorum is required for change

## 4. Reputation bundles

Each CoPointee can carry a bundle of reputation signals, including:

- MeritRank scores
- CoHalo (contributor and collective halos)
- RepTag labels
- ScriptTag (for executable assets)
- Digital Halo aggregates

Reputation bundles:
- are computed from contributor behaviour and Edge feedback
- influence how AIs prioritise and trust CoPointees
- must never be fully controlled by a single actor

## 5. Governance roles

- Edge Contributors
  - Create, review and rate CoPointees
  - Participate in canonality changes
- CoSteward
  - Seed stage override when safety is at risk
  - Cannot permanently lock meaning against Edge
- Co1
  - Long term steward of CoIndex design and integration
  - Oversees changes to object model and governance rules

## 6. Safety and anti capture

- No single vendor or platform can own CoIndex semantics
- All changes leave receipts and can be audited
- Canon and Near-canon require strong consensus
- Reputation and canonality can be cross checked with external signals
