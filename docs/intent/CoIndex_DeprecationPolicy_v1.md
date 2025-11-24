# CoIndex Deprecation Policy v1
Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251124T024800Z

## 1. Principles

- Never silently delete meaning.
- Always provide lineage and migration trails.
- Preserve old indexes as historical references.
- Let Edge decide when old paths can be retired.

## 2. CoCache Index Deprecation

- CoCache index becomes:
  - read-only reference,
  - documented as 'superseded by CoIndex'.

- Tools using CoCache index:
  - must be updated to query CoIndex,
  - may keep a fallback to CoCache for a transition window.

## 3. Communication

- Announce migration to:
  - CoSteward and Co1,
  - contributors,
  - any downstream tools.

- Update relevant READMEs:
  - CoCache
  - CoIndex
  - CoSteward docs as needed

## 4. Audit

- Keep a record of:
  - when CoCache index was deprecated,
  - which version of CoIndex replaced it,
  - known gaps or issues.

