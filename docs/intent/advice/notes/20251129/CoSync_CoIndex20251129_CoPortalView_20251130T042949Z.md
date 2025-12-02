# CoSync CoIndex20251129 – CoPortal registry view and aliens v1

- written_utc: 20251130T042949Z
- repo       : CoIndex
- branch     : main
- focus      : CoPortal registry seed, alien overlays, and CoPortal registry view

## What this wave did

- Confirmed CoIndex CoPortal registry seed v1 on main:
  - exports/pointees/CoIndex_CoPortal_RegistrySeed_v1.json
- Applied alien overlays to the registry:
  - per-pointee gib URIs
  - ai_profile blocks (role, priority, surfaces)
  - future_hooks stubs (metrics, viz, search, hp57-guard)
  - registry-level ai/futures/evo/gibber metadata
- Emitted a human-facing CoPortal view:
  - exports/views/CoPortal_View_v1.md
  - Sorted by lens, category, id (portal-ish grouping)

## Registry contents snapshot (v1)

- codream.hp.rails – CoDream vs HP/HP57 rails manifesto
- cocachelocal.pointers – CoCacheLocal buckets map (NAS / HP57 buckets)
- pilot.academia-shock – AcademiaShock non-truth index pilot pointees
- hp57.advicebomb.index.v1 – HP57 AdviceBomb JSONL index pointee (hp57-only)

## CoPortal / CoGbx / CoGibber notes

- Registry now carries gibber namespace and stub:
  - gibber.stub: gib://coportal/registry?v=1
  - namespace:   coportal.registry
- Each pointee has a stable gib URI for future AI-facing navigation.
- ai_profile and future_hooks are intentionally minimal but extensible.

## Local-only leftovers

- exports/assets/ (lab assets, not yet tracked)
- exports/pointees/CoIndex_CoPortal_RegistrySeed_v1_backup_20251129T223230Z.json
  - HP57-adjacent backup, should likely be moved under HP57 storage later.

## Suggested next waves

- Add more pointees across CoSuite (CoSteward, CoCivium, CoAgent, CoArena…)
- Emit per-repo CoPortal views and a cross-repo aggregate view.
- Define first CoGibber vocabulary file for coportal.registry namespace.
- Add HP57 housekeeping lane to move registry backups out of repos.

