# CoEvoSpawn Notes v1

SessionHint: CoIndex20251128
WrittenUTC:  20251202T023102Z

This note explains what the **CoEvoSpawn** wave did in CoIndex and how
future humans + AIs (including Co1-style orchestrators) should treat it.

## 1. What changed in this wave (overview)

This wave introduced three main pieces:

1. **Concept docs (CoEvoSpawn as a term + pattern):**
   - \docs/trove/CoIndex_CoEvoSpawn_Terms_v1.md\
   - \docs/trove/CoIndex_CoEvoSpawn_Patterns_v1.md\

2. **Asset-intent overlay scaffold:**
   - \xports/gibber/cogibber.asset-intent.v1.json\

   Shape (high level):

   - \
amespace\: \cocivium.cogibber.asset-intent\
   - \ersion\  : \1\
   - \ntries\  : array of objects keyed by pointee \id\.

   In this wave, entries are intentionally minimal:
   - exactly **one** seeded entry, for the CoIndex registry spine:
     - \xports/gibber/cogibber.registry.v1.json\

3. **CoAudit helper + receipt for overlay health:**
   - Helper script in **CoAudit** repo:
     - \scripts/Invoke-CoAudit_CoIndexAssetIntentAudit.ps1\
   - CoBus receipt emitted into CoIndex:
     - \docs/intent/cobus/receipts/20251202/CoBus_CoAudit_CoIndexAssetIntentAudit_v1_20251202T020714Z.json\

The wave status for the audit receipt is **"ok"**:
- overlay JSON parses cleanly,
- entries array exists,
- no duplicate intent ids,
- no orphans (every intent id maps to a pointee).

## 2. How to read the asset-intent overlay

The overlay is a **per-pointee intent layer**:

- Each entry uses:
  - \id\ = pointee id (from \cogibber.registry.v1.json\)
  - \spirations\ = free text: what this asset wants to become more useful for
  - \vo_hooks\ = structured hints (keywords, candidate views, priorities)
  - \steward_trail\ = tags showing who seeded / evolved intent
  - \last_updated_utc\ = timestamp

In this wave, we seeded:

- id: \ickballard.coindex.exports.gibber.cogibber.registry.v1.json\
  - asset: \xports/gibber/cogibber.registry.v1.json\
  - aspiration: remain the minimal registry spine; become more expressive via
    overlays and views without losing simplicity.
  - evo_hooks: suggested views + priorities for future evolution.
  - steward_trail includes:
    - \seeded-by:CoIndex_CoEvoSpawn_v1\

Future waves should:

- Add entries for more pointees (especially cross-repo ones).
- Refine \spirations\ and \vo_hooks\ as patterns mature.
- Never bypass guardrails (BPOE / CoAudit / CoBus).

## 3. How AIs should behave around CoEvoSpawn in CoIndex

If you are an AI session (Co1 or otherwise) looking at CoIndex:

1. **Use the registry as source of truth.**
   - Start at:
     - \xports/gibber/cogibber.registry.v1.json\

2. **Treat asset-intent as a *hint* layer, not a command.**
   - Read \xports/gibber/cogibber.asset-intent.v1.json\.
   - Use \spirations\ and \vo_hooks\ as guidance when proposing changes.
   - Prefer small, reviewable moves that humans can audit.

3. **Emit receipts when you act.**
   - If you materially evolve assets:
     - write a CoBus-style receipt into:
       - \docs/intent/cobus/receipts/YYYYMMDD/CoBus_*.json\
     - set \intent\ fields such as:
       - \"plan"\, \"index-wave"\, \"audit"\, \"evo-proposal"\.

4. **Keep CoAudit helpers in the loop.**
   - Prefer running:
     - \scripts/Invoke-CoAudit_CoIndexAssetIntentAudit.ps1\
   - before/after major index or overlay changes.
   - Treat warnings (duplicates, orphans) as triggers to slow down and repair.

## 4. How humans should use this wave

For human stewards / maintainers:

- Think of CoEvoSpawn here as a **"minimal viable evolution rail"** for CoIndex:
  - There is just enough machinery that:
    - AIs can safely propose next moves,
    - humans can see what changed via receipts,
    - CoAudit can measure basic health.

Concrete next steps you might take:

1. **Expand intent entries:**
   - Pick a handful of high-leverage pointees from the registry.
   - Add entries to the asset-intent overlay using the pattern described in:
     - \docs/trove/CoIndex_AssetIntentTrains_v1.md\ (when present).

2. **Connect to GIBindex / Gibber:**
   - Add GIBindex entries for:
     - \CoEvoSpawn\, \AssetIntentTrain\, \AssetHalo\ (when defined).
   - Ensure human-readable descriptions map cleanly to Gibber keys.

3. **Document any new patterns as CoTrove entries.**
   - New evolution patterns discovered here should be written up as:
     - \docs/trove/CoIndex_*.md\
   - so future AIs can treat them as CoEvoSpawn seeds.

## 5. Where this fits in the larger CoEvoSpawn story

This CoIndex wave is the first visible **CoEvoSpawnSeed** for:

- cross-repo discovery rails,
- asset-level evolutionary intent,
- CoAudit-backed health checks,
- CoBus receipts as an event spine.

Future Co1-style orchestrators can:

- scan the registry,
- read overlay + CoBus receipts,
- schedule deeper evolution waves,
- and connect CoIndex into broader CoSuite CoEvoSpawn plans.
