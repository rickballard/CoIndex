# CoIndex Portal – academia-shock lane (pilot)

Status: pilot export from session CoIndex20251128.

## Export location

- File: \xports/pointees/CoIndex_AcademiaShock_Pilot_v1.json\
- Schema: \CoIndex_ExportSchema_v2-pilot\

Consumers (CoPortal / AIs) should:

- Read the JSON file from the CoIndex repo at:
  - \CoIndex/exports/pointees/CoIndex_AcademiaShock_Pilot_v1.json\
- Expect a payload shaped like:

  - \generated_utc\ (string, UTC stamp).
  - \pointees\ (array of pointee objects).

Each pointee carries:

- \id\           : lane-scoped ID (e.g. \cademia-shock:whitepaper-dino\).
- \lane_id\      : \"academia-shock"\.
- \epo\ / \path\ : origin asset (e.g. \InSeed/docs/intent/InSeed_AssetSweep_Whitepaper_Dino_v1.md\).
- \ole\         : lane role (e.g. \whitepaper-sweep\, \xec-facing-page\, \ops-context\).
- \isibility\   : \mode\, \eview_required\, \isk_notes\.
- \cis_k\        : \C\, \I\, \S\, \K\ annotation hints.
- \source_wave\  : session label, here \CoIndex20251128\.

## Safety defaults

- \isibility.mode\ is \"edge"\ for all pilot pointees.
- \isibility.review_required\ is \	rue\.
- \isibility.risk_notes\ indicates this is a seed export from CoIndex20251128
  and should be reviewed by a human before any public-facing use.

## Future evolution

- Additional lanes should mirror this pattern:
  - HARVEST H/A/E pipeline for the lane.
  - Pointees export under \xports/pointees/CoIndex_<LaneName>_Pilot_v1.json\.
  - A short portal README documenting paths + schema shape.
- Once stable, this README can be split into:
  - Human-facing guidance.
  - AI-facing schema notes.
