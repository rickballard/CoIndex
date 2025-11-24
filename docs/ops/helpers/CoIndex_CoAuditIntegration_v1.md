# CoIndex – CoAudit Integration Spec v1
Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251124T034436Z

## Goal

Let CoAudit re-use CoIndex instead of building its own index.

## Checks CoAudit can perform using CoIndex

- Drift checks:
  - Read night job receipts and flag high risk changes.
- Coverage checks:
  - Find domains where concepts have intents but weak constraints K.
- Reputation checks:
  - Identify CoPointees with low reputation but high usage.
- Canonality checks:
  - Spot Provisional items being used as if Canon.

## Pattern

- CoAudit calls CoIndex helpers:
  - CoIndex_CheckIntegrity.ps1
  - CoIndex_RunNightJob.ps1 (in safe modes)
  - future "CoIndex_ReportForAudit.ps1"

- Results:
  - written to CoAudit friendly report files,
  - with links back to CoIndex CoPointees and tuples.
