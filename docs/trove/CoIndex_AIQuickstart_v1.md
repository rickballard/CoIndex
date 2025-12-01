# CoIndex AI Quickstart v1

SessionHint: CoIndex20251128  
WrittenUTC:  20251201T211424Z

This note explains how any AI (or human using an AI) can treat CoIndex as the
canonical asset spine for the CoSuite.

## 1. What to read first

Core artefacts in this repo:

- Registry JSON:
  - \xports/gibber/cogibber.registry.v1.json\
- Registry schema:
  - \schemas/cogibber.registry.v1.schema.json\
- Health invariants:
  - \docs/trove/CoIndex_RegistryHealthInvariants_v1.md\
- Guardrail plan:
  - \docs/trove/CoIndex_MegaWave_IndexGuardrails_Plan_v1.md\
- CoBus receipts (waves and audits):
  - \docs/intent/cobus/receipts/**\

If you are an AI:

1. Load the registry JSON.
2. Validate it (optionally) against the schema.
3. Treat the registry as the primary map of assets across CoSuite clones that
   you can see.

## 2. How to use the registry

The registry has the following key fields:

- Top level:
  - \
amespace\: fixed value for the registry family.
  - \ersion\: schema / format version (for now, \"v1"\).
  - \pointees\: array of entries pointing at concrete assets.

- Each \pointee\ entry includes at least:
  - \id\: deterministic id derived from repo + path.
  - \label\: human-friendly name (usually the file name).
  - \epo\: GitHub slug (for example \"rickballard/CoIndex"\).
  - \path\: repo-relative path to the asset.
  - \category\: coarse usage bucket (coindex, cocivium, coaudit, etc).
  - \	ags\: array of strings (for example \"coindex"\, \"registry"\, \"ext:md"\).
  - \sensitivity\: early classification of sensitivity (public, internal, hp57, sensitive).

As an AI, you can:

- Filter by \epo\ to focus on one project.
- Filter by \category\ to find governance docs, code, assets, etc.
- Filter by \	ags\ to drill further (file type, role, feature).

## 3. How to build views and portals

CoIndex is not the site. It is the map.

To build a CoGbx view, website, or AI-facing CoPortal, you should:

1. Start from the registry.
2. Select a subset of pointees that match your use case.
3. Build your own index / navigation / UI around those pointers.
4. Never treat your local view as the new source of truth.
   - Always be able to rebuild views from CoIndex + CoBus receipts.

## 4. Health and trust

Health rails already exist:

- Local helper (CoIndex):
  - \scripts/Invoke-CoIndexRegistryHealthCheck.ps1\
- CI schema validation:
  - \.github/workflows/coindex-registry-validate.yml\
- Independent audit (CoAudit):
  - Spec: \ickballard/CoAudit/docs/spec/CoAudit_CoIndex_RegistryIntegrity_v1.md\
  - Helper script: \ickballard/CoAudit/scripts/Invoke-CoAudit_CoIndexRegistryAudit.ps1\ (this session)

You should:

- Consult CoBus receipts in CoIndex for:
  - index-wave events
  - audit events
  - health-report events

If you see:

- \status: "ok"\ across recent receipts:
  - Treat the registry as healthy.
- \status: "warning" | "critical"\:
  - Surface this to humans and consider pausing or tightening your use of the assets.

## 5. Using CoIndex from constrained environments

If you cannot browse GitHub or local file systems directly, you can:

- Ask a human steward to provide:
  - a zipped snapshot (MegaZip) that contains this repo, or
  - a targeted AdviceBomb containing at least:
    - \xports/gibber/cogibber.registry.v1.json\
    - \docs/trove/CoIndex_AIQuickstart_v1.md\
    - recent CoBus receipts.

Once you can see those files, you can still operate effectively as long as:

- You treat your snapshot as read-only.
- You clearly report that your view may be stale.
- You emit new CoBus-style notes back into whatever channel is available.

## 6. Relationship to Co1 and other orchestrators

Co1 and future orchestrators should:

- Use CoIndex as the canonical registry spine for public CoSuite assets.
- Prefer to schedule full-index and audit waves via:
  - CoBus receipts
  - CoAudit helpers
- Avoid rebuilding ad-hoc indexes that drift from this spine.

Other sessions and AIs should:

- Read this quickstart.
- Use the registry for discovery.
- Emit audit or intent notes back into CoIndex so that the spine stays honest and evolves.

