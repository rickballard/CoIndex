# ProtoCoIndexHelper v1 (spec skeleton)

Role: Early "index concierge" helper for CoIndex.

- CoIndex is a non-truth index of sources, claims, and provenance.
- ProtoCoIndexHelper defines a small, human-first schema for recording:
  - where an asset lives (repo + path),
  - what GIB terms it touches,
  - which SourceClusters it belongs to,
  - how it should be linked to related assets.

Example record shape (conceptual):

```yaml
id: PCIH_2025_0001
kind: session_note | manifesto | advice | portal_spec | source_theory | source_practice
source:
  repo: CoSteward
  path: docs/intent/advice/notes/20251127/CoSync_Seismic_ProtoCoIndex_Handoff_*.md
  session_label: CoPrime20251118
  date: 2025-11-27
summary: >
  One-paragraph human summary of what this asset does.
gib_terms:
  - CoIndex
  - CoSource
  - CoPortal
  - CoGIBindex
clusters:
  - CoSource_Seismic_v1
  - CoPortal_GIBindexUsage_v1
opinions:
  stance: none
  notes: >
    Optional notes; CoIndex remains non-truth. We list positions, not verdicts.
links:
  related_assets:
    - repo: CoIndex
      path: docs/manifestos/CoIndex_NonTruthIndex_v1.md
    - repo: CoIndex
      path: docs/insights/CoSourceTheory_v1.md
  external:
    - url: https://example.org/
```

Next steps:
- Decide final schema file path inside CoIndex.
- Add 1–3 concrete example records for real assets.
