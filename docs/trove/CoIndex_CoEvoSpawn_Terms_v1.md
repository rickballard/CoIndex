# CoEvoSpawn Terms v1

SessionHint: CoIndex20251128
WrittenUTC:  20251202T003718Z

## 1. CoEvoSpawn (core term)

**CoEvoSpawn** = any deliberately shaped seed asset or pattern whose purpose
is to *trigger and sustain multi-step evolution* across humans + AIs.

Characteristics:

- Anchored:
  - Tied to concrete assets (files, views, scripts, bundles) that live in
    versioned repos and/or registries such as CoIndex.
- Self-describing:
  - Carries enough metadata that an AI can:
    - understand what it is for,
    - see where it came from,
    - propose next steps without human micromanagement.
- Rail-aware:
  - Wires into guardrails (BPOE, CoAudit, CoBus receipts) rather than
    bypassing them.
- Orchestrator-agnostic:
  - Works whether or not a global "Co1" orchestrator is awake. Any AI session
    that can see the seed can help evolve it.

CoEvoSpawn is intentionally a **GIBindex/Gibber term candidate**. This doc is
the human-facing explanation; Gibber views can come later.

## 2. Related terms (proposed)

- **CoEvoSpawnSeed**
  - A specific instance of a CoEvoSpawn pattern applied to one or more
    assets. Example:
    - "CoIndex registry + AIQuickstart + asset-intent overlay v1" is a
      CoEvoSpawnSeed for cross-repo discovery rails.

- **CoEvoRail**
  - The minimal set of guardrails required for a CoEvoSpawnSeed to be
    considered safe to let AIs iterate on:
    - registry entries,
    - health checks,
    - audit helpers,
    - CoBus receipt format,
    - BPOE expectations.

- **IntentTrain**
  - The overlay layer that carries per-asset evolutionary intent:
    - aspirations,
    - hooks,
    - steward trail,
    - timestamps.
  - In this repo, intent trains live (for now) in:
    - xports/gibber/cogibber.asset-intent.v1.json
    - and are described in:
    - docs/trove/CoIndex_AssetIntentTrains_v1.md.

- **AssetHalo (candidate)**
  - Lightweight tag set attached to each asset (or asset id) summarizing:
    - trust level,
    - steward track record,
    - known attack surface.
  - Not implemented here yet; future CoAudit / CoSteward waves may define it.

## 3. Where CoEvoSpawn shows up in CoIndex today (v1)

For now, the main CoEvoSpawnSeed in this repo is:

- CoIndex registry spine + schema
- AI quickstart note
- Asset-intent overlay scaffold
- CoBus receipts for index and audit waves

Together, these let any AI:

- find assets,
- judge basic health,
- see where future evolutionary intent will be stored.

Future waves will make this more explicit using the patterns doc below.
