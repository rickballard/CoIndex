# CoIndex seed helpers – CoIndex20251128

> Draft helper manifest generated 20251128T082030Z. Seeded from docs/intent/CoIndex_SeedAssets_v1.md.
> For each asset in CoIndex_SeedAssets_v1.md, add or update a helper entry here.

## Helper schema (summary)

- helper_id: HEL-<short-slug>
- repo: CoSteward | CoCivium | CoPlan | CoIndex | InSeed | other
- path: relative repo path to canonical asset
- session_label: first session that registered this helper (here: CoIndex20251128)
- summary: 1–3 line human summary of what lives there and when to use it
- gib_terms: provisional Gibber / concept tags, comma separated
- cluster: e.g. "BPOE", "CoBus", "CoStatus", "ExecShock", etc.
- links:
  - github: canonical repo URL
  - public: any public CoPortal / site link if it exists

## Seed helper entries

<!-- Duplicate this block per asset in CoIndex_SeedAssets_v1.md -->

### HEL-<slug-here>

- repo: <RepoName>
- path: <docs/.../File_v1.md>
- session_label: CoIndex20251128
- summary: <why a session should come here>
- gib_terms: <tag1, tag2, tag3>
- cluster: <cluster-name>
- links:
  - github: <https://github.com/rickballard/...>
  - public: <optional public URL>

### HEL-CoSteward-CoSteward-Ops-Manual-v1

- repo: CoSteward
- path: docs/ops/CoSteward_Ops_Manual_v1.md
- session_label: CoIndex20251128
- summary: Ops manual for the CoSteward role and core operating patterns. Start here to understand how CoSteward is supposed to behave and what healthy looks like.
- gib_terms: CoSteward,OpsManual,BPOE,Governance,CoHealth
- cluster: BPOE
- links:
  - github: <https://github.com/rickballard/CoSteward/blob/main/docs/ops/CoSteward_Ops_Manual_v1.md>
  - public: <none yet>

### HEL-CoSteward-CoStatus-Pulses-v1

- repo: CoSteward
- path: docs/intent/CoStatus_Pulses_v1.md
- session_label: CoIndex20251128
- summary: Rolling log of CoStatus pulses – lag_feel, stall_risk, rotate_hint per session or wave. Use this to sense where attention is needed next.
- gib_terms: CoStatus,Pulses,LagFeel,StallRisk,RotateHint
- cluster: CoStatus
- links:
  - github: <https://github.com/rickballard/CoSteward/blob/main/docs/intent/CoStatus_Pulses_v1.md>
  - public: <none yet>

### HEL-CoSteward-CoSessionRegistry-v1

- repo: CoSteward
- path: docs/intent/CoSessionRegistry_v1.md
- session_label: CoIndex20251128
- summary: Registry of named sessions (CoPrime*, CoIndex*, etc.) and their scopes. Use this to see which session touched what and where to resume.
- gib_terms: SessionRegistry,CoSessions,CoPrime,CoIndex
- cluster: Governance
- links:
  - github: <https://github.com/rickballard/CoSteward/blob/main/docs/intent/CoSessionRegistry_v1.md>
  - public: <none yet>

### HEL-CoPlan-CoProducts-v1

- repo: CoPlan
- path: docs/registry/CoProducts_v1.md
- session_label: CoIndex20251128
- summary: Product-level registry (PRO-*) for CoSuite products. Use this to map any helper or asset back to a product ID.
- gib_terms: CoPlan,CoProducts,ProductRegistry,PRO-IDs
- cluster: CoPlan
- links:
  - github: <https://github.com/rickballard/CoPlan/blob/main/docs/registry/CoProducts_v1.md>
  - public: <none yet>

### HEL-CoPlan-CoInitiatives-v1

- repo: CoPlan
- path: docs/registry/CoInitiatives_v1.md
- session_label: CoIndex20251128
- summary: Initiative-level registry (INI-*) for waves, experiments, and cross-product pushes.
- gib_terms: CoPlan,CoInitiatives,InitiativeRegistry,INI-IDs
- cluster: CoPlan
- links:
  - github: <https://github.com/rickballard/CoPlan/blob/main/docs/registry/CoInitiatives_v1.md>
  - public: <none yet>

### HEL-CoIndex-CoIndex-SeedAssets-v1

- repo: CoIndex
- path: docs/intent/CoIndex_SeedAssets_v1.md
- session_label: CoIndex20251128
- summary: Seed list of assets CoIndex should know about and turn into helpers. Treat this as the to-index backlog for new-eyes CoIndex sessions.
- gib_terms: CoIndex,SeedAssets,Backlog,HelperPipeline
- cluster: CoIndex
- links:
  - github: <https://github.com/rickballard/CoIndex/blob/main/docs/intent/CoIndex_SeedAssets_v1.md>
  - public: <none yet>

### HEL-CoCivium-CoBus-Events-Spec-v1

- repo: CoCivium
- path: docs/intent/bus/CoBus_Events_Spec_v1.md
- session_label: CoIndex20251128
- summary: Specification for CoBus events – how sessions and products log high-level moves.
- gib_terms: CoBus,EventsSpec,EventSchema,CoCiviumBus
- cluster: CoBus
- links:
  - github: <https://github.com/rickballard/CoCivium/blob/main/docs/intent/bus/CoBus_Events_Spec_v1.md>
  - public: <none yet>

### HEL-CoCivium-CoCiviaHeartbeat-Spec-v1

- repo: CoCivium
- path: docs/intent/bus/CoCiviaHeartbeat_Spec_v1.md
- session_label: CoIndex20251128
- summary: Spec for CoCivia heartbeat events – how the every-woman AI persona reports health and activity.
- gib_terms: CoCivia,Heartbeat,CoBus,CoCivium
- cluster: CoCivia
- links:
  - github: <https://github.com/rickballard/CoCivium/blob/main/docs/intent/bus/CoCiviaHeartbeat_Spec_v1.md>
  - public: <none yet>

### HEL-InSeed-InSeed-AssetSweep-Whitepaper-Dino-v1

- repo: InSeed
- path: docs/intent/InSeed_AssetSweep_Whitepaper_Dino_v1.md
- session_label: CoIndex20251128
- summary: Asset sweep for the InSeed Dino / seismic shift / exec shock whitepaper and related materials.
- gib_terms: InSeed,Whitepaper,ExecShock,Dino,SeismicShift
- cluster: ExecShock
- links:
  - github: <https://github.com/rickballard/InSeed/blob/main/docs/intent/InSeed_AssetSweep_Whitepaper_Dino_v1.md>
  - public: <none yet>

### HEL-InSeed-CoPrimer-Page-v1

- repo: InSeed
- path: docs/site/CoPrimer_Page_v1.md
- session_label: CoIndex20251128
- summary: Draft CoPrimer page for the InSeed site – core why-now / seismic story for execs.
- gib_terms: InSeed,CoPrimer,SiteContent,ExecFacing
- cluster: ExecShock
- links:
  - github: <https://github.com/rickballard/InSeed/blob/main/docs/site/CoPrimer_Page_v1.md>
  - public: <none yet>

### HEL-CoIndex-AcademiaShock-PilotExport-v1

- repo: CoIndex
- path: exports/pointees/CoIndex_AcademiaShock_Pilot_v1.json
- session_label: CoIndex20251128
- summary: Academia-shock CoPointees pilot export (HARVEST H/A/E output) for CoPortal and AI-facing index views.
- gib_terms: CoIndex,AcademiaShock,CoPointees,Export,HARVEST,Lane
- cluster: academia-shock
- links:
  - github: <https://github.com/rickballard/CoIndex/blob/main/exports/pointees/CoIndex_AcademiaShock_Pilot_v1.json>
  - public: <none yet>

