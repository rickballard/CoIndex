# CoIndex Reputation Layers v1

Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251124T012850Z

## 1. Purpose

Describe how reputation signals are layered so that CoIndex can estimate trust
for each CoPointee without depending on a single metric.

## 2. Layers

1. Contributor layer
   - Per contributor MeritRank
   - CoHalo scores for individuals and teams
   - History of accepted or reverted changes

2. Asset layer
   - RepTag labels (trusted, experimental, deprecated, contested)
   - ScriptTag status for scripts and code
   - Digital Halo accumulation for each CoPointee

3. Context layer
   - Domain specific trust (legal, civic, technical)
   - Jurisdictional adjustments
   - Time sensitivity (freshness vs stability)

## 3. Use in CoIndex

- AIs can query CoIndex for CoPointees that:
  - meet minimum canonality levels
  - meet minimum reputation thresholds
  - fit a given domain or context

- Edge governance can:
  - inspect reputation breakdown for any CoPointee
  - adjust policies about which layers to trust most
