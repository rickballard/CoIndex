# CoIndex – CoGbx / CoGibber site strategy v1

SessionLabel: CoIndex20251128
WrittenUTC:  20251130T214913Z
Role: Describe how CoIndex should drive CoGbx / CoGibber related sites.

## 1. Stack recap

Canonical stack (per CoBus / CoGibber docs):

- CoBus  = wire / transport / routing
- CoGibber = language / envelope / vocab
- CoGbx = boxes / registries / views

Short phrase for diagrams:

> CoBus (wire) -> CoGibber (language) -> CoGbx (views)

CoBus is the superset; CoSync is a legacy name for one family of CoBus messages.

CoIndex is responsible for:

- CoGibber registry seeds (exports/pointees/*RegistrySeed_v1.json).
- Machine registry view (exports/gibber/cogibber.registry.v1.json).
- Human CoGbx views over the registry (exports/views/*.md).

## 2. Site roles

Site types in this strategy:

- CoCivium.org pages
  - Human facing.
  - Explain CoCivium and expose selected CoGbx views.
  - Treat CoIndex as source of truth for registries.

- Optional future domains
  - CoGbx.org (or CoGbx.net)
    - Brand: views and dashboards.
    - Aggregated CoGbx panels driven from CoIndex + other registries.
  - CoGibber.org
    - Brand: language and specs.
    - Human explainer for CoGibber, CoBus, envelopes, vocab.

All of these are views over the same CoGibber registry stack. None of them own the registry.

## 3. How sites should consume CoIndex

Minimal contract for site builders:

- Inputs from CoIndex:
  - Machine view:
    - exports/gibber/cogibber.registry.v1.json
  - Registry seeds:
    - exports/pointees/CoIndex_*RegistrySeed_v1.json
  - Human starter view:
    - exports/views/CoPortal_View_v1.md (name legacy, content CoGbx phrasing)
    - future CoGbx specific views under exports/views as needed.

- Intended flow:
  1. Read the machine registry view (cogibber.registry.v1).
  2. Resolve pointees to registry seed files.
  3. Render one or more CoGbx panels:
     - tables, cards, or trees of pointees.
     - links back to underlying repos and docs.
  4. Publish as static pages on the chosen domain.

CoIndex does not dictate the framework (static generator, Next, etc). It only guarantees the registry format and view hints.

## 4. CoBus expectations for sites

Sites that participate in CoBus should:

- Read lanes before build:
  - Check their CoBus inbox lane for:
    - scope: "CoGbx site build" or similar.
    - guardrail or hp57 priority waves.
- Emit receipts after build:
  - docs/intent/cobus/receipts/YYYYMMDD/CoBus_<wave_id>.json
  - Record:
    - from_session_label (builder session)
    - to_role (co1-orchestrator or site role)
    - wave_id
    - intent (eg "site-build")
    - scope (eg "CoCivium CoGbx site v1 build")
    - sensitivity, status, and notes.

CoIndex’s job is to keep its own registry and views coherent and to emit receipts for its mutating waves. Actual site build waves may live in CoCivium or dedicated site repos.

## 5. Domain and URL recommendations (v1)

Recommended v1 approach:

1. Start inside CoCivium.org:
   - Example URLs:
     - /cogbx/index     (main registry view)
     - /cogbx/coindex   (CoIndex specific slice)
     - /cogbx/specs     (links to CoGibber docs in CoSteward)

2. Keep CoGbx.org / CoGibber.org as future-friendly:
   - If and when adoption grows, these domains can point to:
     - The same builds, re-skinned.
     - Or more advanced AI-first dashboards.

3. Do not couple domains to registry schema:
   - Schema and vocab are defined on-repo (CoIndex + CoSteward).
   - Domains are swappable skins over the same CoGibber / CoGbx rails.

## 6. Next waves (for Co1 / future sessions)

Possible follow-on work, outside the scope of this v1 note:

- CoIndex:
  - Add a dedicated CoGbx view file (eg exports/views/CoGbx_IndexView_v1.md) when Co1 approves.
  - Expand CoGibber registry with site related pointees (eg cogbx.site.seed).

- CoCivium:
  - Create simple static pages that:
    - Fetch the CoIndex registry artifacts.
    - Render one or two basic CoGbx tables.

- CoSteward:
  - Extend CoBus_BPOE_v1 with a named site-builder role.
  - Add examples of site build receipts and wave envelopes.

This strategy file is CoIndex’s current view. On conflicts, CoSteward BPOE docs and Co1 decisions remain canonical.
