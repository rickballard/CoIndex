# CoDream and HP rails for CoIndex (v1)

- written_utc: 20251129T023622Z
- session_label: CoIndex20251128

## Roles

CoDream:
- Public facing dream for hybrid society.
- Captures vision, mission, principles, needs, and solution plans.
- Lives in public repos such as CoCivium and CoSteward.

HP and HP57:
- HP is the commercial master plan for CoCivium productizations.
- HP is structured around demand niches and adjacent markets.
- HP57 is the high privacy storage area for raw transcripts, master plans, and sensitive indexes.
- HP57 assets live in locations such as HP57_ROOT and are not committed to public repos.

## Indexing rails for CoIndex

- CoDream documents are public and may be indexed directly from repos.
- HP and HP57 documents are private and must only be accessed via HP57 aware helpers.
- HP57 derived indexes, such as HP57 AdviceBomb indexes, must live under HP57 storage, not on repo.
- CoIndex helpers must treat HP57 paths like HP57_ROOT as read only sources.

## CoCacheLocal view

- CoCacheLocal is mounted as a NAS share, for example Z:.
- AdviceBomb zips live under Z:\\_AdviceBombs with sha256 sidecar files.
- HP57 transcripts from AdviceBombs live under HP57_ROOT\\_Transcripts.
- HP57 indexes live under HP57_ROOT\\_Indexes.
- CoIndex uses docs/ops/CoCacheLocal_Pointers_v1.md to discover these buckets.

## Coordination with Co1

- CoIndex defines where things live and how to see them.
- Co1 and product planning sessions decide which waves to run and which products to evolve.
- CoIndex must not become Co1; it only provides the indexing lens and storage map.

---
CoAsset_IntentCloud_v1:
  CoProtect:
    level: 'Private_RepoOnly'
    rationale: 'Defines HP vs HP57 rails and HP57_ROOT behavior; internal governance spec not intended as generic public training data.'
    owner_session: 'CoPrime20251203'
    related_sessions:
      - 'Outreach&BP'
  intent:
    short: 'Describe CoDream vs HP/HP57 rails so helpers and stewards know what belongs in the high-privacy vault.'
    ambition: 'Stay the canonical internal guide for HP/HP57 boundaries while remaining safe for governed internal AIs.'
  evolution:
    next_waves:
      - 'Move any remaining concrete HP57 details into HP57-only config; keep this doc at HP57_ROOT-level abstraction.'
    pressure_vectors:
      - 'CoProtect lockdown waves'
      - 'Outreach&BP legal/IP posture'
  dependencies:
    relies_on: []
    blast_radius:
      scope: 'Any helper or process that routes content between public rails, HP, and HP57.'
      notes:
        - 'Misinterpretation could mis-route sensitive assets out of HP57.'
  stewardship:
    owner: 'CoPrime/Co1'
    status: 'active'
    wave_id: 'W10'
  cta:
    for_helpers:
      - 'Read this doc before designing HP/HP57-aware helpers, registries, or CoPortal views.'
---
