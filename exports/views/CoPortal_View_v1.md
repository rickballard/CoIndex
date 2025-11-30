# CoIndex CoPortal v1 - Gibber registry view

- written_utc: 20251130T024150Z
- registry_schema: CoPortalRegistry_v1
- registry_session_label: CoIndex20251128
- registry_gibber_stub: gib://coportal/registry?v=1

## Registry meta

* ai.registry_role: coportal-pointee-registry
* ai.usage_modes: co1-orchestrator, assistant, indexer
* ai.gibber_ready: true
* futures.evolution_lane: registry-seed
* futures.allows_new_kinds: true
* futures.allows_new_lenses: true
* evo.lineage: seed → registry
* evo.next_waves: vocabulary-harvest, coportal-view, cross-repo-index
* gibber.namespace: coportal.registry
* gibber.style: gibber-v1-seed

---

## Pointees

### CoDream vs HP / HP57 rails (codream.hp.rails)

* lens: codream  |  category: manifesto  |  sensitivity: public
* repo: C:\Users\Chris\Documents\GitHub\CoIndex
* path: docs/manifestos/CoIndex_CoDream_HP_Rails_v1.md
* gib: gib://coportal/pointee/codream.hp.rails
* tags: codream, hp, hp57, indexing, rails, vision
* ai_profile: role=vision-rails, priority=high, surfaces=coportal, assistant
* future_hooks: metrics, viz, search

Defines public CoDream vs commercial HP / HP57 rails and how CoIndex should treat each.

---

### HP57 AdviceBomb content index v1 (hp57.advicebomb.index.v1)

* lens: hp57-advicebombs  |  category: hp57-index  |  sensitivity: hp57-private
* repo: Z:\_HP57
* path: _Indexes/HP57_AdviceBomb_Index_v1.jsonl
* gib: gib://coportal/pointee/hp57.advicebomb.index.v1
* tags: advicebombs, hp57, index, jsonl
* ai_profile: role=hp57-private-index, priority=guarded, surfaces=coportal, assistant
* future_hooks: metrics, viz, search, hp57-guard

JSONL index over HP57 AdviceBomb transcript files; lives only under HP57 storage, not in repos.

---

### AcademiaShock pilot pointees (pilot.academia-shock)

* lens: non-truth-index  |  category: pilot  |  sensitivity: public
* repo: C:\Users\Chris\Documents\GitHub\CoIndex
* path: exports/pointees/CoIndex_AcademiaShock_Pilot_v1.json
* gib: gib://coportal/pointee/pilot.academia-shock
* tags: academia, non-truth-index, pilot, pointees, shock
* ai_profile: role=pilot-non-truth-index, priority=high, surfaces=coportal, assistant
* future_hooks: metrics, viz, search

Seed pointees for the AcademiaShock non-truth index pilot.

---

### CoCacheLocal buckets map (cocachelocal.pointers)

* lens: storage-map  |  category: ops  |  sensitivity: public
* repo: C:\Users\Chris\Documents\GitHub\CoIndex
* path: docs/ops/CoCacheLocal_Pointers_v1.md
* gib: gib://coportal/pointee/cocachelocal.pointers
* tags: advicebombs, cocachelocal, hp57, megazips, nas
* ai_profile: role=storage-map, priority=medium, surfaces=coportal, assistant
* future_hooks: metrics, viz, search

Describes NAS layout such as Z:\_AdviceBombs and Z:\_HP57 buckets for HP57 aware helpers.

---

