# CoIndex – CoGibber Registry Expansion Plan (v1)

session_label : CoIndex20251128 / Co1-orchestrator
utc_stamp     : 2025-12-01T00:00:00Z

## 0. Purpose

Turn the CoIndex / CoGbx / CoGibber full-index advisory into a concrete,
resumable plan for Co1. Explain:

- Which repos are in scope for CoGibber registry v1.
- How assets will be discovered and classified.
- How registry files will be structured and upgraded.
- How waves will be sequenced and audited.
- How CivAR metrics will be attached to waves and assets.

Goal: make CoIndex a durable, audit-backed source of truth for asset
discovery and orchestration across CoCivium.

## 1. Scope for v1

### 1.1 Primary repos

Initial v1 scope (ordered by importance):

1. CoSteward   – guardrails, BPOE, bootstrap, CoAnchor, CoStart.
2. CoIndex     – registry implementation, views, CoBus helpers.
3. CoAudit     – trust / integrity / shadow views for CoIndex.
4. CoCivium    – core civic / constitution / public-facing docs.
5. CoAgent     – orchestration container, CLI, agent patterns.
6. InSeed      – site seeds and narrative assets.
7. RickPublic  – outreach / Substack / narrative seeds.
8. CoCache     – metrics and manifests (later waves).

### 1.2 Asset types to index (v1)

Focus on high-leverage text assets:

- Guardrails and BPOE docs (CoBus_BPOE, CoStart / CoAnchor specs).
- HP / HP57 docs and similar.
- Bootstrap / onramp files (CoAnchor Quickstart v2, etc.).
- Site seeds for CoCivium.org and related sites.
- Registry / index specs and views (CoGbx views, strategy docs).
- CoBus / CoGibber / CoGbx trove and design docs.

Diagrams, code, and deep metrics can join in later waves.

## 2. Registry structure

### 2.1 Core file

Canonical machine-view file in CoIndex:

- exports/gibber/cogibber.registry.v1.json

Key fields:

- namespace             – e.g. cocivium.cogibber.registry
- version               – "1.0.0" for v1, then "1.1.0", etc.
- generated_utc         – ISO 8601 string.
- source_repo           – e.g. rickballard/CoIndex
- description           – short text.
- pointees[]            – per asset entries with:

  - id                  – stable ID (costeward.coanchor.quickstart.v2)
  - label               – human friendly name
  - repo                – short name or slug (CoSteward, CoIndex, etc.)
  - path                – repo relative path
  - category            – spec, guardrail, hp, diagram, site-seed, viewer, strategy, metric, bootstrap
  - tags[]              – finer labels (cobus, cogbx, guardrail, hp57, bootstrap, etc.)
  - sensitivity         – public, internal, hp57, sensitive, etc.
  - civar_asset_estimate – optional numeric CivAR estimate
  - notes               – optional free text

### 2.2 Fragmentation strategy

Start with a single canonical file:

- exports/gibber/cogibber.registry.v1.json

If v1 stays under a few thousand pointees, this is acceptable. If it grows
too large, introduce per repo fragments, for example:

- exports/gibber/cogibber.registry.costeward.v1.json
- exports/gibber/cogibber.registry.coagent.v1.json

and add a small generator script that merges fragments back into the
canonical file. Any change in strategy should be documented in this trove
doc before code changes.

### 2.3 Schema and validation

Back the registry with a JSON schema in CoIndex:

- schemas/cogibber.registry.v1.schema.json

CI should:

- Validate that registry JSON is well formed.
- Enforce required fields and types.
- Reject unknown top level keys in v1 to catch typos.

Registry files should normally be machine generated; hand edits are for
emergency fixes only.

## 3. Asset discovery and classification

### 3.1 Discovery

For each repo in scope:

- Walk relevant trees (docs/, docs/trove/, docs/intent/, docs/onramps/,
  exports/views/, exports/assets/, etc.).
- Use a mix of path patterns, naming conventions, and simple content checks
  (for example headings or markers) to find candidate assets.
- Prefer explicit inclusion patterns over "index everything".

### 3.2 Categories and tags (v1)

Categories (starting set):

- guardrail
- spec
- hp
- bootstrap
- viewer
- strategy
- metric
- site-seed

Tags:

- repo names (costeward, coindex, coaudit, etc.)
- channels (cobus, cogbx, hp57, onramp, bootstrap)
- optional priority flags (high-civar, medium-civar, etc.)

Sensitivity is conservative:

- Default internal when unsure.
- Mark public only when clearly safe.

## 4. Wave design – incremental full index

Each indexing wave has its own CoBus receipt and bounded scope, for example:

- CoIndex_FullIndex_CoStewardDocs_v1_<UTS>
- CoIndex_FullIndex_CoAgentAssets_v1_<UTS>
- CoIndex_FullIndex_InSeedSite_v1_<UTS>

Each wave should:

1. Operate on one repo or sub tree.
2. Discover candidate files and map them to pointees.
3. Update registry JSON deterministically and idempotently.
4. Emit a CoBus receipt containing:

   - scope
   - counts (added, updated, skipped, errored)
   - status (success, partial, failed, skipped)
   - civar_wave_estimate
   - notes

Re running a wave should converge to the same registry state, not double
count.

## 5. CivAR integration

### 5.1 In CoBus receipts

Add optional numeric field:

- civar_wave_estimate

This is the estimated CivAR value for a wave, aligned with Co1 wave headers.

### 5.2 In registry assets

Add optional numeric field:

- civar_asset_estimate

This is the estimated CivAR value for an individual asset if paid forward to
hybrid society.

AIs can use:

- civar_wave_estimate to prioritise waves under time or resource limits.
- civar_asset_estimate to avoid forgetting high value guardrails and
  bootstraps.

## 6. Views and site integration

### 6.1 CoGbx views in CoIndex

CoIndex already exposes a simple viewer:

- exports/assets/CoGbx_RegistryViewer_v1.html

Add at least one richer human view:

- exports/views/CoGbx_IndexView_v1.md

This view should:

- Explain what registry v1 covers.
- Show example slices (all public guardrails, all bootstrap assets, etc.).
- Link to live viewers and CoCivium.org pages that consume the registry.

### 6.2 CoCivium.org and related sites

Principle:

- Sites consume CoIndex exports; they do not become the registry.

CoCivium.org and related sites should:

- Read from CoIndex exports (or a mirrored location).
- Render human friendly tables, diagrams, and UI.
- Never act as the canonical index for what assets exist.

## 7. Trust, CoAudit, and integrity

CoIndex registry must be backed by independent checks:

- Structural integrity:
  - JSON schema validation via CI.
- Referential integrity:
  - repo:path must resolve to real files.
- Optional cryptographic integrity:
  - store sha256 and size_bytes for high value assets.

CoAudit should maintain a shadow view:

- Spec example: CoAudit/docs/spec/CoAudit_CoIndex_Guardrail_v1.md
- Jobs that:
  - Validate schema.
  - Check pointees resolve.
  - Verify hashes where present.
  - Emit CoBus receipts with audit results.

## 8. Long running behaviour

The full index project must:

- Survive any single interactive session.
- Be inspectable via registry files, CoBus receipts, and CoAudit reports.
- Reach a "good enough v1 steady state" and then move into maintenance.

Completion will be signalled by a CoBus receipt, for example:

- CoBus_CoIndex_FullIndex_v1_Complete_<UTS>.json

with coverage, known gaps, and known risks.

---

Status: v1 plan. Future updates should bump the version tag in the title and
add a short changelog at the bottom.
