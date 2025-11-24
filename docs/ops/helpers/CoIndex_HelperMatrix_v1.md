# CoIndex Helper Matrix v1
Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251124T034436Z

## Purpose

List the helper types that other CoSuite repos will expect when talking to CoIndex:
- from CoAgent (runtime),
- from CoAudit (checks),
- from CoCivium.org (exports and overlays),
- from CoSteward and CoCore (governance and theory surfaces).

## Helper families

1. Discovery helpers
   - Scan repos and assets.
   - Suggest new CoPointees and candidate C,I,X,S,K tuples.
   - Likely scripts:
     - CoIndex_ScanRepo.ps1
     - CoIndex_SuggestPointees.ps1

2. Tuple helpers
   - Take known assets and attach or update tuples.
   - Validate tuple shapes against the C I X S K object model.
   - Likely scripts:
     - CoIndex_ApplyTupleMap.ps1
     - CoIndex_ValidateTuples.ps1

3. Integrity helpers
   - Check links between CoPointees and source assets.
   - Check canonality and reputation references.
   - Likely scripts:
     - CoIndex_CheckIntegrity.ps1
     - CoIndex_ListBrokenLinks.ps1

4. Export helpers
   - Emit JSON exports that match CoIndex_ExportSchema_v1.json.
   - Write to exports/pointees, exports/tuples, exports/drift, exports/reputation.
   - Likely scripts:
     - CoIndex_BuildExports.ps1
     - CoIndex_ExportSnapshot.ps1

5. Night job runners
   - Wrap the NightJobDesign and EvolutionPipeline docs in runnable flows.
   - Produce receipts under docs/pipeline.
   - Likely scripts:
     - CoIndex_RunNightJob.ps1
     - CoIndex_ResumeNightJob.ps1

6. Migration helpers
   - Support CoCache to CoIndex migration.
   - Read old CoCache index and output CoIndex shaped data.
   - Likely scripts:
     - CoIndex_FromCoCache_DryRun.ps1
     - CoIndex_FromCoCache_Migrate.ps1

## BPOE notes for helpers

- All helpers treat CoIndex repo as source of truth for schema and governance.
- CoAgent and CoAudit should call these helpers instead of reimplementing logic.
- CoCivium.org only reads exports; it never mutates CoIndex directly.
- Heavy jobs prefer zipped snapshots from RepoZipper when available.
