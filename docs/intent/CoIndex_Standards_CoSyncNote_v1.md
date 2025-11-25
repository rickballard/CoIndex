# CoIndex – CoSync Note for Standards and CoIndex v1
Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251125T215502Z

## Context

CoIndex is being shaped as the meta layer for concepts, tags, and identity in CoCivium.
Standards (TOON and others) need to plug into this rather than sit as a separate universe.
CoPortals and GitHub communities will be the main implementation surface.

This note is addressed to:

- CoIndex session(s)
- Standards session(s) (including TOON exploration)
- CoArena / CoAgent / CoAudit sessions that touch standards and profiles

## Requests and alignment points

1. Treat standards as first class CoIndex nodes

- Each standard and profile gets a stable id, for example:
  - std:TOON-Core
  - std:TOON-OpenSource-Gov
  - std:ISO-27001
- Each carries concept, intent (govern, certify, audit), and pillars
  (governance, safety, identity, infra, etc.).

2. Define a StandardsTag family in CoIndex

- Tag for attaching standard alignment claims to CoPortals and repos.
- Fields to include:
  - std_id
  - profile (which subset or profile of the standard is targeted)
  - scope (which repos, lanes, or products)
  - evidence (docs, overlays, audits)
  - status (self-asserted, community-verified, third-party-audited)
  - last_checked

3. Use CoPortals as the AI-facing standards front

- CoPortal overlays should expose a standards section that is a friendly slice of CoIndex:
  - which standards the portal aligns with
  - which repos are in scope
  - links to evidence
- TOON and other bodies can see GitHub communities and CoPortals as implementation evidence
  for their standards.

4. Connect Standards work to ScriptTag / PTAG / RepTag

- ScriptTag and PTAG definitions should include an optional
  "standards alignment" field so specs and scripts can name the standards they harmonize with.
- RepTag and MeritRank should eventually support "standards contribution" as one dimension
  of reputation (for example maintainers who keep a repo aligned with TOON or other profiles).

5. Roadmap (high level)

- Phase 0:
  - write a short StandardsTag spec (this doc set)
  - and a standards section for the CoIndex charter.
- Phase 1:
  - choose one or two TOON-style profiles
  - model them as std: nodes and StandardsTag instances
    on one CoPortal and a small set of repos.
- Phase 2:
  - decide how external standards bodies will read these overlays
    (machine readable views) so they can treat CoPortals and GitHub communities
    as first class participants in their standards ecosystem.

## Goal

Standards session and CoIndex session should converge on a shared model where:

- Standards define the "ought to be".
- CoIndex defines how that "ought" is represented, tagged, and measured.
- GitHub communities and CoPortals provide the living evidence.

Future sessions (CoIndex, Standards, Co1) should align current Standards planning
and TOON exploration with this model and flag any clashes or missing primitives.
