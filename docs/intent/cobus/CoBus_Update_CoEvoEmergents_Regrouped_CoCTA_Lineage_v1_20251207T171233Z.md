# CoBus Update – CoEvoEmergents Regrouped Plan (v1)

Seeded: 20251207T171233Z
Session: CoEvoEmergents

AnchorsUsed: [CoIndex, CoSteward, GIBindex, CoMetaTrain, CoHeart, CoAntiReinvention]

## 1. Concern

Recent waves raised a risk that CoCTAs (call to action mechanics) could become
an exponentially escalating swarm of nags, leading to:

- alert fatigue,
- coercive feeling UX,
- and erosion of trust in CoCivium guardrails.

This update records the regrouped plan to avoid that failure pattern.

## 2. Decisions

- CoCTAs will NOT be deployed as aggressive, repo-wide "locust" nags.
- CoCTAs will be treated as:
  - layered (logs -> soft hints -> explicit CTAs),
  - severity-aware (OK / SOFT / HARD / FATAL),
  - opt-shaped per role and session class,
  - piloted in narrow scopes before any wider adoption.

- The existing CoMetaTrain lineage helper:
  - tools/CoMetaTrain_Lineage_Scan_Stub.ps1
  is retained as a Tier A CoHeart hook and should be considered safe to use
as a pre-merge ritual in CoIndex.

## 3. New Docs and Plans (this wave)

This wave seeds the following docs:

- CoIndex:
  - docs/intent/CoProcess/CoCTA_Ethics_and_PilotPlan_v1.md
    - Defines CoCTA ethics, risks, and a phased pilot strategy.

- CoSteward:
  - docs/intent/ops/CoSteward_Manual_Upgrade_Plan_v1.md
  - docs/intent/ops/CoSuite_User_Guide_Upgrade_Plan_v1.md

These upgrade-plan docs describe how future waves should extend the existing
CoSteward Operations Manual and CoSuite User Guide to cover:

- CoHeart / CoPulse / CoGate integration,
- Tier A/B/C lineage protocols,
- CoMetaTrain schema fields and evolving footers (CoLife, CoPotential),
- CoCTA as a gentle, piloted mechanism (not locusts),
- CoGibber as an internal language and background intelligence layer.

No direct edits to the current manuals are made in this wave. All changes are
recorded as plans to avoid guessing at existing content.

## 4. CoCTA Rollout Policy (high level)

- Co1:
  - owns CoCTA family definitions and default policies,
  - approves any move from pilot to wider availability.

- Co2 (emergent / experimental):
  - designs and runs small CoCTA pilots in constrained scopes,
  - logs friction and value for Co1 and Co4.

- Co3 (archivist / historian):
  - tracks which CoCTA patterns worked, harmed, or were disabled.

- Co4 (validator / governance):
  - checks CoCTAs against:
    - autonomy and non-coercion principles,
    - anti dark-pattern guidance,
    - edge-owned guardrails.

Only after Co1 and Co4 are satisfied with a pilot pattern should it be
considered for broader use, and even then as opt-in or role-tuned, not
mandatory.

## 5. Tiered Modes for CoHeart and CoCTA

- Tier A – live guardrails:
  - cheap checks around merges (e.g. CoMetaTrain lineage),
  - no deep archaeology, no heavy nagging.

- Tier B – archaeology mode:
  - explicit, opt-in scans of git history for specific CoTerms or frameworks,
  - meant for targeted "lost wisdom" recovery, not constant polling.

- Tier C – CoSuite sweeps:
  - rare, Co1-orchestrated MegaWaves to reconcile frameworks across repos.

CoCTAs should attach primarily to Tier A and Tier B events with careful rate
limits. Tier C outputs are better surfaced via reports and CoPulse, not as
direct nags.

## 6. Session Scope Checklist (to avoid drops)

This update affirms that the following topics are now anchored on repo for
future waves to evolve:

- CoHeart and CoPulse as coherence and sonic layers,
- CoGate mythos as civilizational Prime Directive lens,
- CoMetaTrain lineage checking (stub in tools),
- CoAntiReinvention protocol and CoTerm project status index,
- CoCTA ethics and pilot-only rollout model,
- Tier A/B/C lineage and scanning patterns,
- CoGibber as future high density internal language,
- evolving footers (CoLife, CoPotential) for key manuals,
- clearer roles for Co1/Co2/Co3/Co4 regarding CTAs and lineage.

This doc should be treated as the authoritative regrouped plan for this
session's scope until superseded by a later CoBus update.
