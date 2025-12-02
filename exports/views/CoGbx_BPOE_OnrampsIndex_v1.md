# CoGbx – BPOE + Onramps Index View (v1)

session_label : Co1_Prime  
namespace     : CoIndex.CoGbx.BPOEOnrampsIndex  
civar_estimate: 90

This file is a **CoGbx view** over CoIndex’s registry for BPOE and onramps
assets. It is written in Markdown so humans can read it, and structured so
that AIs can parse it.

---

## 1. Purpose

- Show **where** the most important BPOE + onramps artefacts live
  across CoSuite repos.
- Act as a **portal** for AI assistants when they need to help humans
  find the right starting points.
- Provide a stable place for future CoPortals / CoGbx HTML views to link to.

This view should be regenerated or edited whenever new BPOE/onramps
assets are added or when CoIndex waves significantly update the registry.

---

## 2. High-CivAR BPOE + onramps assets (conceptual slices)

The exact list of assets should come from the CoIndex registry
(`exports/gibber/cogibber.registry.*.json`). For v1 we describe the
intended slices; future waves can embed concrete tables.

### 2.1 CoSteward – BPOE + bootstraps

- BPOE governance for CoIndex and CoSuite.
- CoStart / CoAnchor bootstrap docs.
- Session behaviour patterns (MegaWave, CoBlock, DO Block).

Intended registry slice:

- Category: `guardrail`, `bootstrap`, `bpoe`
- Repo: `CoSteward`
- Tags: `bpoe`, `onramp`, `costart`, `coanchor`, `cosync`

### 2.2 CoCivium – public-facing BPOE + onramps

- The portal you are reading about:
  - `CoCivium/docs/onramps/CoCivium_BPOE_OnrampsPortal_v1.md`
- CoCivium constitution / Cognocarta Consenti entry points.
- Citizen and steward onramps.

Intended registry slice:

- Category: `site-seed`, `insight`, `portal`
- Repo: `CoCivium`
- Tags: `cocivium`, `bpoe`, `onramp`, `civar`, `civar-currency`

### 2.3 CoIndex – registry + AI quickstart

- AI quickstart for using CoIndex as registry spine.
- CoGibber registry specs and schemas.
- This CoGbx BPOE/onramps index view.

Intended registry slice:

- Category: `spec`, `viewer`, `strategy`
- Repo: `CoIndex`
- Tags: `coindex`, `cogibber`, `cogbx`, `registry`, `bpoe`

---

## 3. Suggested minimal machine-friendly shape

Future waves may generate a small companion JSON, for example:

```json
{
  "namespace": "cocivium.cogbx.bpoe-onramps-index",
  "version": "1.0.0",
  "generated_utc": "<UTC>",
  "slices": [
    {
      "id": "bpoe.costeward.core",
      "label": "CoSteward – core BPOE + bootstraps",
      "registry_filter": {
        "repo": "CoSteward",
        "category_in": ["guardrail", "bootstrap", "bpoe"]
      }
    },
    {
      "id": "bpoe.cocivium.portals",
      "label": "CoCivium – BPOE + onramps portals",
      "registry_filter": {
        "repo": "CoCivium",
        "tags_any": ["bpoe", "onramp"]
      }
    },
    {
      "id": "bpoe.coindex.spine",
      "label": "CoIndex – registry + AI quickstart",
      "registry_filter": {
        "repo": "CoIndex",
        "tags_any": ["coindex", "cogibber", "cogbx"]
      }
    }
  ]
}
```

A CoGbx HTML viewer can then:

- Use this JSON to decide which registry slices to fetch.
- Render human tables for each slice (asset label, repo:path, tags, civar estimate).
- Link back to GitHub and CoPortals.

---

## 4. How AIs should use this view

When a human asks:

- “Where are the BPOE docs?”  
- “Where do I start with CoCivium onramps?”  
- “What is the CoIndex AI quickstart?”  

Preferred behaviour:

1. Consult CoIndex registry files for the latest assets.
2. Map the relevant entries into the conceptual slices above.
3. Answer with:
   - one or two **top-priority assets** per slice (highest CivAR),
   - direct `repo/path` links,
   - a quick explanation of why they matter.

If you cannot see the live registry, but you see snapshots or AdviceBombs,
you can still use the *shape* of this file to respond consistently.

Status: v1 conceptual view – ready for later waves to attach real tables.
