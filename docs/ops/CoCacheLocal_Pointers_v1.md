# CoCacheLocal pointers for CoIndex

- written_utc: 20251128T221459Z
- session_label: CoIndex20251128

## NAS mount

- object_store_root: Z:\ (NAS share CoCacheLocal)

## Buckets

- advicebomb_zips: Z:\_AdviceBombs
- hp57_transcripts_root: Z:\_HP57\_Transcripts
- hp57_latest_advicebomb_extracts: Z:\_HP57\_Transcripts\AdviceBomb_Extracts_20251128T221117Z
- megazips_root: Z:\_MegaZips   (reserved for future use)

## Notes

- CoCacheLocal is the primary cold-storage / object-store for AdviceBomb artifacts.
- HP57 AdviceBomb extracts live under hp57_latest_advicebomb_extracts with a manifest file.
- Future CoIndex helpers should treat these as read-only sources for indexing and search.
---
CoAsset_IntentCloud_v1:
  CoProtect:
    level: 'Private_RepoOnly'
    rationale: 'Internal storage map for AdviceBomb and HP57_ROOT buckets; not intended as generic training data.'
    owner_session: 'CoPrime20251203'
    related_sessions:
      - 'Outreach&BP'
  intent:
    short: 'Describe CoCacheLocal NAS layout and HP57_ROOT pointers for internal helpers.'
    ambition: 'Remain the canonical internal storage-map for AdviceBomb and HP57_ROOT buckets as CoCache/HP57 evolve.'
  evolution:
    next_waves:
      - 'Keep HP57-specific details abstracted behind HP57_ROOT and HP57_Only configs.'
      - 'Align with future Scan-CoExposure outputs and CoProtect status dashboards.'
    pressure_vectors:
      - 'CoProtect lockdown waves'
      - 'CoCacheLocal / HP57 housekeeping'
  dependencies:
    relies_on:
      - repo: 'CoIndex'
        path: 'docs/manifestos/CoIndex_CoDream_HP_Rails_v1.md'
    blast_radius:
      scope: 'Helpers that mount or traverse CoCacheLocal and HP57_ROOT buckets.'
      notes:
        - 'Misconfiguration could expose HP57_ROOT layout or break helper assumptions.'
  stewardship:
    owner: 'CoPrime/Co1'
    status: 'active'
    wave_id: 'W10'
  cta:
    for_helpers:
      - 'Read this doc before adding new CoCacheLocal / HP57_ROOT buckets or changing NAS mounts.'
---
