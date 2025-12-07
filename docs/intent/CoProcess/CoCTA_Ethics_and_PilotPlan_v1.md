# CoCTA Ethics and Pilot Plan (v1)

Seeded: 20251207T171233Z
AnchorsUsed: [CoHeart, CoMetaTrain, CoAntiReinvention, GIBindex, CoBPOE_Core]

## 1. Purpose

CoCTAs (call to action mechanics) should help sessions and contributors
notice important work, not harass them or coerce them.

This document sets ethics and a phased pilot strategy so CoCTAs do not become
an exponentially growing swarm of nags.

## 2. Risks

Without discipline, CoCTAs can cause:

- alert fatigue and desensitization,
- feelings of being pushed or controlled,
- dark-pattern like behaviors and sludge,
- avoidance of tools and guardrails.

These are CoBPOE violations and must be treated as such.

## 3. Design Principles

- Layered, not locusts:
  - Layer 0: silent logs and dashboards.
  - Layer 1: rare, gentle hints in context.
  - Layer 2: explicit CTAs for clearly important actions.

- Severity-aware:
  - OK / SOFT / HARD / FATAL bands must govern when CTAs appear.
  - Only HARD / FATAL issues may warrant stronger prompts.

- Opt-shaped per role and session class:
  - Co1, CoStewards and power users may choose more verbosity.
  - Other roles may prefer minimal prompting.

- Rate limited:
  - Hard caps per CTA family (per session, per time window).
  - No exponential escalation patterns.

- Overrideable:
  - CoStewards and Co1 must be able to turn down or disable a CTA family.

## 4. Roles

- Co1 (orchestrator):
  - defines CoCTA families and defaults,
  - approves promotion from pilot to general availability.

- Co2 (emergent / experimental):
  - designs small CoCTA experiments in narrow scopes,
  - measures friction and value, reports back.

- Co3 (archivist):
  - records CoCTA lineage, including harmful patterns and retired designs.

- Co4 (validator / governance):
  - checks CoCTAs for coercion, dark-pattern characteristics and
    edge-control violations.

## 5. Tiered Attachment to CoHeart

- Tier A – live guardrails:
  - attach only light CTAs here (for example:
    "Before merging, run the CoMetaTrain lineage stub" in CoIndex).
  - focus on pre-merge and hygiene checks.

- Tier B – archaeology:
  - CTAs are optional and should mostly invite humans to
    run deeper scans when they suspect lost wisdom.

- Tier C – CoSuite sweeps:
  - CTAs should generally not be direct nags.
  - Outputs are better surfaced as reports, dashboards, CoPulse streams.

## 6. Pilot Strategy (initial)

Initial pilots should:

- run in one or two repos (for example CoIndex and CoSteward),
- focus on low-risk hygiene prompts such as:
  - missing CoMetaTrain fields,
  - missing or stale CoLife / CoPotential footers,
  - CoTerms being used in ways that conflict with GIBindex status.

- log:
  - how often CTAs fire,
  - how often they are acted on,
  - how often they are overridden or ignored.

Pilot results must be reviewed by Co1 and Co4 before any scaling.

## 7. Out of Scope for v1

This v1 explicitly does NOT:

- enable repo wide CoCTA enforcement,
- define UI level designs for all sites,
- hook CoCTAs into every helper or CI job.

It is a constraint and ethics document, not a global activation switch.

Future versions may add:

- clearer mappings to BPOE rules,
- examples of safe CoCTA patterns,
- integration details with CoHeart / CoPulse and CoGibber.

