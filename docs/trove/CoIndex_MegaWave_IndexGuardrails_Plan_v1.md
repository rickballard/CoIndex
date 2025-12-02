# CoIndex MegaWave – Index Guardrails & Stress Harness Plan v1

SessionLabel: CoIndex20251128  
WrittenUTC:  20251201T151854Z  

Role: Declare intent and strategy for CoIndex / CoGbx / CoGibber guardrails and stress harnesses
before Co1 and future AIs run large full-index or MegaZip waves.

## 1. Context

CoIndex is the canonical registry spine for CoGibber (language) and CoGbx (views) for CoCivium.

Existing rails (summarised):

- CoBus receipts for:
  - CoIndex CoGibberState
  - CoGbx site strategy
  - CoGbx viewer assets
  - CoIndex full-index request to co1-orchestrator
- CoBus helpers:
  - scripts/New-CoBusReceipt_FromWave.ps1
  - scripts/Read-CoBusLanes_CoIndex.ps1
- CoGibber / CoGbx artefacts:
  - exports/gibber/cogibber.registry.v1.json  (registry stub)
  - exports/assets/CoGbx_RegistryViewer_v1.html
  - docs/trove/CoIndex_CoGbx_SiteStrategy_v1.md

This plan treats those as rails, not as finished product.

## 2. MegaWave intents (6 guardrail tracks)

This session declares the following as in-scope intents for CoIndex + siblings:

1. Harden CoIndex invariants on-repo
   - Add JSON schema for cogibber.registry.v1.
   - Add CI validator workflow.
   - Add CoIndex health invariants doc.

2. CoAudit spec + bridge for CoIndex
   - In CoAudit, define a spec for checking CoIndex registry integrity.
   - Provide a bridge script to pull CoIndex and run checks.
   - Emit CoBus receipts back to CoIndex with audit results.

3. CoBus "watchdog lane" for CoIndex health
   - Reserve a scope / pattern in CoBus receipts for:
     - CoIndex full-index progress.
     - CoIndex registry health.
   - Ensure both CoIndex and CoAudit can emit to that lane.

4. CoIndex "panic buttons" and health helpers
   - Local PS7 helpers to:
     - Run registry schema validation.
     - Run basic referential checks (repo:path existence for CoIndex itself).
     - Generate human-readable health reports.

5. CoSteward BPOE coverage for registry governance
   - In CoSteward, extend BPOE docs with:
     - Roles and duties for CoIndex, CoAudit, Co1.
     - Rules for changing registry files (PR only, labels, etc).

6. Future hash / Merkle style integrity (scaffolded now)
   - Seed first docs and fields for optional:
     - sha256 hashes on high value assets.
     - CoAudit jobs to recompute and compare.
   - Full Merkle trees left for future waves.

## 3. Stress-test philosophy

We explicitly want to support large / long-running waves such as:

- Multi repo full-index sweeps.
- Large MegaZip builds that package many repos and views.
- Heavy analysis waves from Co1 and CoAudit.

Design rules:

- All heavy work is described and tracked via CoBus receipts.
- All critical artefacts live in git under clear directories:
  - schemas/
  - exports/gibber/
  - exports/views/
  - exports/pointees/
  - docs/trove/
  - docs/ops/
- Any AI can resume work by:
  - Re-reading registry files.
  - Re-reading receipts.
  - Re-reading plan docs like this one.

## 4. Wave ordering (suggested)

This session will seed rails in roughly this order:

1. CoIndex:
   - Plan doc (this file) and CoSync note.
   - JSON schema + CI validator.
   - Health invariants doc.
   - Local health helper script.
   - MegaZip script for stress harness.

2. CoAudit:
   - Spec stub doc for CoIndex integrity.
   - Script stub for pulling CoIndex and running checks.

3. CoSteward:
   - BPOE stub doc for registry governance.

Later waves (Co1, CoAudit, other sessions) can expand each component without changing this intent.

## 5. CoBus expectation

Co1 and CoAudit are expected to:

- Treat this plan as advisory, not absolute.
- Respond via:
  - Updated docs on repo.
  - CoBus receipts with:
    - intent: "plan" / "audit" / "index-wave"
    - scope referencing CoIndex registry and health.
- Keep humans able to see health at a glance via:
  - docs/ops/* views.
  - CoBus status views.

On conflicts, CoSteward BPOE docs and human steward overrides are canonical once written.

