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
