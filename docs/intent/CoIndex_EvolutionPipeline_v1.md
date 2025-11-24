# CoIndex Evolution Pipeline v1

Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251124T014552Z

## 1. Pipeline Overview

CoIndex evolution proceeds through:

    Ingest → Analyze → Propose → Review → Approve → Integrate → Archive

Each step is governed by:
- canonality,
- reputation layers,
- drift thresholds,
- auditability.

## 2. Proposal Types

### 1. Tuple Modifications
- Adjust C/I/X/S/K
- Tighten K (constraints)
- Update X-context boundaries

### 2. CoPointee Evolutions
- Create successor CoPointees
- Deprecate old versions
- Link via lineage metadata

### 3. Canonality Shifts
- Provisional → Near-canon
- Near-canon → Canon
- Canon → Deprecated (rare, requires strong consensus)

## 3. Drift Limits

Each canonality level defines allowable semantic drift:
- Canon: minimal
- Near-canon: low
- Provisional: moderate
- Draft/Fringe: high

## 4. Receipts

All pipeline actions leave:

docs/pipeline/proposals/<UTCSTAMP>/proposal.json
docs/pipeline/proposals/<UTCSTAMP>/reasoning.md

## 5. Edge Approval

- Draft: contributors only
- Provisional/Near-canon: quorum required
- Canon: Co1 + Edge quorum
- Seed Stage: CoSteward override allowed (safety only)
