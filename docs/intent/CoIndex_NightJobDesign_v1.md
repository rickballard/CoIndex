# CoIndex Night Job Architecture v1
Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251124T014552Z

## 1. Purpose

Define how CoIndex performs long-running analysis:
- without monopolizing AI compute,
- without requiring persistent memory,
- using repos as substrate,
- producing evolution proposals safely,
- with full auditability.

## 2. Night Job Phases

### Phase A — Ingestion
- Read CoIndex tuples (C,I,X,S,K)
- Read CoPointees + canonality + reputation bundles
- Read linked repos (CoSteward, CoCore, CoPortal, GIBindex)
- Scan for:
  - semantic drift,
  - gaps,
  - contradictions,
  - evolution pressures,
  - unsafe collisions.

### Phase B — Analysis
- Model tuple interactions
- Identify safe evolution paths
- Predict drift boundaries
- Rank CoPointees needing review
- Compute reputation-based weighting

### Phase C — Proposal Generation
- Draft candidate tuple updates
- Create CoPointee expansions or replacements
- Generate reasoning receipts
- Store proposals in pipeline area

### Phase D — Edge Approval Routing
- Tag proposals requiring Contributor review
- Tag those requiring CoSteward override (seed stage only)
- Prepare UI surfaces for future CoPortal integration

### Phase E — Receipts
- Each night job run leaves:
  - summary.md
  - receipts.json
  - evolution proposals

Stored in:
  docs/pipeline/nightjobs/<UTCSTAMP>/

## 3. Safety and Compute Constraints

- Jobs must run during low load windows
- Throttled CPU cycles
- Automatically pause after N minutes
- Can resume using receipts
- Never exceed threshold compute envelopes

## 4. Source-of-Truth Model

- Night jobs read from repos only
- No cached embeddings or external memory stores
- All outputs written back to repo under pipeline

## 5. Resumption and Checkpoints

- Each run writes:
  - checkpoint.json
  - error.log (if needed)
  - progress.log

Night jobs can restart using checkpoint.

## 6. Integration with CoPortal

- CoPortal pages auto-expose night job receipts
- Contributors can inspect proposed semantic drift
- Edge governance can accept/reject proposals

