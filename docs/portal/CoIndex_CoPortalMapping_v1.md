# CoIndex – CoPortal Mapping v1
Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251124T024037Z

## 1. Purpose

Define how CoIndex objects (<C,I,X,S,K> tuples and CoPointees)
are exposed via AI-facing CoPortal surfaces.

CoPortal is not human-facing; it is an AI substrate:
- stable URLs for semantic objects,
- machine-first rendering,
- audit-ready,
- designed for auto-evolution and safe drift.

## 2. Core Surfaces

### 2.1 CoPointee Page
- Stable CoPointee ID
- Canonality badge
- Reputation bundle view
- List of <C,I,X,S,K> tuples
- Drift history
- Lineage map (predecessor → successor)
- Source-of-truth link
- Night job receipts referencing this pointee

### 2.2 Tuple Page (<C,I,X,S,K>)
- All pointees bound to this tuple
- Intent vectors
- Context/State boundaries
- Constraint bundle (K)
- Drift heatmap
- Evolution proposals pending
- Co1/Edge approvals attached

### 2.3 Governance View
- Canonality levels with thresholds
- Drift rules per canonality
- Pending proposals
- Contributor activity
- Reputation summaries

## 3. Required Features
- Stable URLs or graph addresses
- JSON+MD dual representation
- RSS-style emit feed for AIs
- Transparent lineage and drift

## 4. Integration
- CoSteward (seed-stage override)
- Co1 (long-term steward)
- GIBindex overlays
