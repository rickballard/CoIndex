# CoIndex StandardsTag Spec v1
Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251125T215502Z

## Purpose

Define how external standards (TOON, ISO, NIST, etc.) attach to CoIndex
and CoPortals using a simple StandardsTag shape.

CoIndex treats standards as first-class concepts and intents rather than
an external universe.

## 1. Standards as CoIndex nodes

Each standard or profile is modelled as its own CoPointee, for example:

- std:TOON-Core
- std:TOON-OpenSource-Gov
- std:ISO-27001
- std:NIST-AI-RMF

Each such CoPointee has:

- C: Concept
  - "TOON core profile"
  - "ISO 27001 information security management"
- I: Intent
  - govern, certify, audit, guide
- X: Context
  - domains (governance, safety, identity, infra, etc.)
  - who it applies to (repos, CoPortals, organisations)
- S: State
  - usage level, adoption level, drift vs source text
- K: Constraints
  - mandatory clauses, ethical guardrails, non-negotiables

## 2. StandardsTag shape

A StandardsTag instance attaches standards alignment metadata to:

- CoPortals
- GitHub repos or products
- Scripts and specs (via ScriptTag, PTAG, RepTag)

Suggested fields:

- std_id
  - e.g. "std:TOON-Core", "std:ISO-27001"
- profile
  - which profile or subset is in scope
  - e.g. "TOON-GovStack-v1", "ISO-27001-main"
- scope
  - which repos, lanes, products or CoPortals this tag covers
- evidence
  - pointers to docs, overlays, audits, or CI checks
- status
  - one of:
    - "self-asserted"
    - "community-verified"
    - "third-party-audited"
- last_checked
  - timestamp or short human-readable marker

## 3. Mapping into <C, I, X, S, K>

For a given StandardsTag instance:

- C (Concept)
  - the standard and profile being referenced
  - e.g. the CoPointee for std:TOON-Core
- I (Intent)
  - "align", "comply", "be-certifiable-against"
- X (Context)
  - which product, repo, CoPortal, or organisation is in scope
- S (State)
  - current status and last_checked
- K (Constraints)
  - which parts of the standard are treated as hard constraints vs soft goals

## 4. Usage examples

1) CoPortal for a civic-tech stack

- std_id      : std:TOON-Core
- profile     : TOON-Core-v1
- scope       : ["CoCivium.org/portal/edge-control"]
- evidence    : ["docs/standards/TOON-Core-Overlay_v1.md"]
- status      : "community-verified"
- last_checked: "2025-11-24"

2) GitHub repo for infra

- std_id      : std:ISO-27001
- profile     : ISO-27001-main
- scope       : ["repo:CoCache", "repo:CoCore"]
- evidence    : ["docs/iso/27001-gap-analysis_v1.md"]
- status      : "self-asserted"
- last_checked: "2025-11-24"

## 5. Relationship to ScriptTag / PTAG / RepTag

- ScriptTag / PTAG:
  - may carry an optional "standards_alignment" field listing std_id + profile.
- RepTag / MeritRank:
  - may include "standards contribution" as one dimension of reputation:
    - maintainers who keep a repo or CoPortal aligned with a standard
    - reviewers who improve evidence and audits

## 6. Integration notes

- StandardsTag bodies live in CoIndex-aligned overlays, not hard-coded into tools.
- CoPortals and CoCivium.org:
  - expose a "standards" section derived from StandardsTag + CoIndex.
- Standards bodies (e.g. TOON) can:
  - read machine-readable overlays
  - treat CoPortals and GitHub communities as live evidence of alignment.

In future, Co1 and the Standards session can refine the fields and vocabularies,
but this spec is enough to start modelling real standards as CoIndex-native nodes.
