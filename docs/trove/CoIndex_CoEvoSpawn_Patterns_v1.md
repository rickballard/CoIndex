# CoEvoSpawn Patterns v1

SessionHint: CoIndex20251128
WrittenUTC:  20251202T003718Z

This note describes **patterns** for using CoIndex as a CoEvoSpawn engine.

## 1. Basic CoEvoSpawn pattern

Pattern: **Registry + Rails + Intent + Receipts**

Given:

- A registry spine (CoIndex):
  - xports/gibber/cogibber.registry.v1.json
- Guardrail rails:
  - schema, CI, health helpers, CoAudit specs/helpers
- Intent overlay:
  - xports/gibber/cogibber.asset-intent.v1.json
- Event trail:
  - CoBus receipts in:
    - docs/intent/cobus/receipts/**

Then any AI (or human+AI pair) can:

1. Discover assets
   - via registry pointees.
2. Assess health
   - via local + CoAudit helpers and recent CoBus receipts.
3. Propose evolution
   - via:
     - new or updated asset-intent entries,
     - advisory notes,
     - pull requests.
4. Record moves
   - by emitting new CoBus receipts with:
     - intent such as "plan" | "index-wave" | "audit" | "evo-proposal".

This is a **CoEvoSpawnSeed** for cross-repo discovery.

## 2. CoEvoSpawn for a single asset

Micro-pattern:

1. Asset is present in registry as a pointee.
2. Asset has a matching entry in cogibber.asset-intent.v1.json with:
   - spirations:
     - what it wants to become more useful for.
   - vo_hooks:
     - keywords, candidate refactors, adjacent assets to connect to.
   - steward_trail:
     - notable humans / AIs and governance source (e.g. CoSteward BPOE).
3. Any AI that edits or consumes the asset:
   - Reads + respects that intent as a hint.
   - If it proposes a meaningful change:
     - updates the intent entry,
     - emits a CoBus receipt (or advisory doc) summarizing what changed.

This pattern shifts some evolutionary pressure to the **asset layer** rather
than relying only on top-down orchestrators.

## 3. CoEvoSpawn waves (multi-asset)

A **CoEvoSpawn wave** is:

- A cluster of related changes driven by one or more CoEvoSpawnSeeds, usually
  across several assets and/or repos.

For example, a wave might:

- Populate asset-intent entries for all BPOE docs.
- Add CoAudit helpers to check that these entries map correctly.
- Emit CoBus receipts that summarize:
  - how many assets gained intent,
  - what new aspirations were introduced,
  - where humans should review.

Future Co1-style orchestrators can:

- read these receipts,
- schedule deeper follow-up waves,
- connect them to GIBindex and Gibber vocab.

## 4. How AIs should treat CoEvoSpawn

Guidance for AIs:

- Treat CoEvoSpawn as:
  - a **hint system for evolution**, not a hard instruction set.
- Prefer:
  - small, reviewable moves,
  - with receipts and overlays that humans can audit.
- When in doubt:
  - summarize your proposed wave in a CoBus-style object,
  - let humans and other AIs react before large, cascading changes.

## 5. Future evolution

Future waves may:

- Add a JSON schema for CoEvoSpawn overlays (e.g. cogibber.coevospawn.v1.json).
- Define an AssetHalo schema merging:
  - trust signals,
  - change history summaries,
  - attack-surface hints.
- Connect CoEvoSpawn terms into GIBindex / Gibber so that:
  - humans and AIs share a common language,
  - CoEvoSpawn becomes a first-class evolutionary primitive across the suite.
