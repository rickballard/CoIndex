# CoIndex HARVEST Pipeline v1
Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251128T012817Z

HARVEST is the mnemonic for the CoIndex harvesting pipeline.

## Stages

- **H – Harvest**
  - Scan repos for candidate assets.
  - Capture paths, basic metadata, and rough importance tier.

- **A – Annotate**
  - Extract headings, comments, tags.
  - Attach first-pass concept and intent hints to build C and I.

- **R – Resolve**
  - Link CoPointees to each other and to theories (CoTheories, CoCore).
  - Avoid duplicate ids and ambiguous mappings.

- **V – Vet Visibility**
  - Apply isibility.mode and CoCloak rules.
  - Decide between public, dge, semi, and 
onindexed.
  - Write risk notes where needed.

- **E – Emit**
  - Write exports to xports/pointees, xports/tuples, etc.
  - Use CoIndex_ExportSchema_v2.json when including Layer 2 fields.

- **S – Sync**
  - Offer exports to CoCivium / CoPortal.
  - Optionally write CoSync notes when large waves land.

- **T – Track**
  - Night jobs track drift, collisions, gaps.
  - Proposed evolution paths are written as receipts for Edge review.

## UX expectations

- Long-running HARVEST waves should show progress at the stage level
  (for example in PS7 output or dashboards), such as:

  - H Harvest   [#####-----]
  - A Annotate  [###-------]
  - etc.

- Users should be able to see:
  - which stage is active,
  - which repos or lanes are in scope,
  - and whether the current wave is a pilot or a broad sweep.

## Future helpers

Future CoIndex helpers may be named:

- 	ools/CoIndex_H_Harvest.ps1
- 	ools/CoIndex_A_Annotate.ps1
- 	ools/CoIndex_R_Resolve.ps1
- 	ools/CoIndex_V_VetVisibility.ps1
- 	ools/CoIndex_E_Emit.ps1
- 	ools/CoIndex_S_Sync.ps1
- 	ools/CoIndex_T_Track.ps1

This doc is the design anchor; implementation will follow in later waves.
