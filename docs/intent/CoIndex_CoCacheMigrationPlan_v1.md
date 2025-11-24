# CoIndex – CoCache Migration Plan v1
Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251124T024800Z

## 1. Goal

Migrate the existing CoCache indexing system into CoIndex without:
- losing information,
- breaking existing tools,
- or centralising control.

## 2. Assumptions

- CoCache has an existing index (files, tables or graphs) describing:
  - stored assets,
  - paths,
  - tags/labels,
  - basic relationships.

- CoIndex is now the target index:
  - C–I–X–S–K object model,
  - CoPointees,
  - canonality,
  - reputation layers.

## 3. Stages

### Stage 1 — Discovery

- Identify CoCache index source-of-truth:
  - repo: CoCache
  - path(s): TODO(Co1/CoPrime to fill)
- Document current schema:
  - fields and relationships,
  - indexing coverage,
  - limitations.

### Stage 2 — Mapping Design

- Define mapping from CoCache records to CoIndex structures:
  - asset → CoPointee
  - tags/labels → Concept (C) + Context (X)
  - usage types → Intent (I)
  - any dynamic signals → State (S)
  - any guardrails → Constraints (K) where possible

- Record mapping rules in:
  - docs/migration/CoCache_MappingRules_v1.md (planned)

### Stage 3 — Prototype Migration

- Implement test migration scripts (in CoCache and/or CoIndex tooling repos).
- Generate a small CoIndex subset from CoCache data.
- Validate:
  - no broken links,
  - CoPointee IDs stable,
  - mapping is reversible.

### Stage 4 — Full Migration

- Run full migration into CoIndex.
- Store outputs under:
  - docs/migration/runs/<UTCSTAMP>/
- Generate:
  - summary.md
  - stats.json
  - errors.log if any

### Stage 5 — Validation

- Compare CoCache vs CoIndex coverage.
- Spot-check CoPointees.
- Validate CoPortal / GIB overlays for migrated entries.
- Confirm Co1 and CoSteward signoff.

### Stage 6 — Deprecation

- Mark CoCache index as deprecated, not deleted.
- Update CoCache docs to point to CoIndex as the canonical index.
- Maintain a read-only compatibility layer for a defined period.

## 4. Responsibilities

- Co1:
  - Approves mapping design and migration readiness.
  - Oversees validation.
- CoSteward:
  - Seed-stage safety oversight.
- Edge Contributors:
  - Spot-check mappings.
  - Report issues and drift.

## 5. Receipts

- All migrations leave receipts under:
  - docs/migration/runs/<UTCSTAMP>/

