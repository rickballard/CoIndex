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
- HP57 assets live in locations such as Z:\\_HP57 and are not committed to public repos.

## Indexing rails for CoIndex

- CoDream documents are public and may be indexed directly from repos.
- HP and HP57 documents are private and must only be accessed via HP57 aware helpers.
- HP57 derived indexes, such as HP57 AdviceBomb indexes, must live under HP57 storage, not on repo.
- CoIndex helpers must treat HP57 paths like Z:\\_HP57 as read only sources.

## CoCacheLocal view

- CoCacheLocal is mounted as a NAS share, for example Z:.
- AdviceBomb zips live under Z:\\_AdviceBombs with sha256 sidecar files.
- HP57 transcripts from AdviceBombs live under Z:\\_HP57\\_Transcripts.
- HP57 indexes live under Z:\\_HP57\\_Indexes.
- CoIndex uses docs/ops/CoCacheLocal_Pointers_v1.md to discover these buckets.

## Coordination with Co1

- CoIndex defines where things live and how to see them.
- Co1 and product planning sessions decide which waves to run and which products to evolve.
- CoIndex must not become Co1; it only provides the indexing lens and storage map.
