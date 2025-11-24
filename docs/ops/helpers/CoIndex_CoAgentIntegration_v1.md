# CoIndex – CoAgent Integration Spec v1
Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251124T034436Z

## Goal

Describe how CoAgent panels and commands should talk to CoIndex using helpers,
without baking indexing logic into CoAgent itself.

## Recommended patterns

- CoAgent invokes PS7 helpers in CoIndex via:
  - CoIndex_ScanRepo.ps1
  - CoIndex_BuildExports.ps1
  - CoIndex_CheckIntegrity.ps1
  - CoIndex_RunNightJob.ps1

- CoAgent panel ideas:
  1. "Index view"
     - List CoPointees or tuples that match a filter.
  2. "Drift watch"
     - Show recent night job receipts and evolution proposals.
  3. "Governance queue"
     - Show items waiting Edge review.

## Contract

- Inputs:
  - repo roots or asset lists,
  - optional filters for canonality, reputation, context.

- Outputs:
  - JSON or markdown files written into docs/pipeline or exports,
  - short console summaries for the operator.

CoAgent remains a caller.
CoIndex remains the place where indexing rules live.
