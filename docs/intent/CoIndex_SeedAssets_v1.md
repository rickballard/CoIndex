# CoIndex Seed Assets v1

Role: High-priority assets CoIndex should index first so other sessions can navigate by label, not guesswork.

## 1. CoCivium

- docs/intent/advice/heartbeat/CoCivia/Heartbeat_20251128T072411Z.md
- docs/intent/advice/notes/20251128/CoSync_CoCiviaHeartbeat_20251128T072417Z.md
- docs/intent/bus/CoCiviaHeartbeat_Spec_v1.md
- docs/intent/bus/CoBus_Events_Spec_v1.md

## 2. CoSteward

- docs/intent/CoSessionRegistry_v1.md
- docs/intent/CoCron_v1.md
- docs/bpoe/CoStatus_SessionHealthSpec_v1.md

## 3. CoIndex

- docs/helpers/ProtoCoIndexHelper_v1.md
- docs/intent/CoIndex_SeedAssets_v1.md  (this file)

## 4. InSeed

- docs/intent/InSeed_AssetSweep_Whitepaper_Dino_v1.md
- docs/intent/InSeed_Site_ContentMap_v1.md
- docs/site/CoPrimer_Page_v1.md

Next steps (for dedicated CoIndex session):
- For each path above, create a ProtoCoIndexHelper record (or equivalent) with:
  - repo, path, session_label, summary, gib_terms, clusters, links.
- Ensure future CoSync notes reference these records where relevant.## 5. RickPublic (outreach / CoEndorse / YT placeholder)

Repo: RickPublic

- docs/intent/advice/notes/20251128/CoSync_20251128T073532Z.md
- docs/endorse/ENDORSE_INDEX.yml
- docs/endorse/ENDORSE_MENU.md
- docs/endorse/templates/ENDORSE_Consent_Email_v1.md     # filename to confirm
- docs/endorse/templates/ENDORSE_Intro_Email_v1.md       # filename to confirm
- .github/workflows/endorse-guard.yml
- yt/tools/RenderPlaceholder.ps1
- .github/workflows/yt-placeholder.yml

Notes:
- CoEndorse is the generic, scrubbed outreach pattern set (no personal contacts).
- endorse-guard.yml enforces contact hygiene via CI.
- YT placeholder path provides a minimal “alive” badge for channels.

Next steps (for CoIndex20251128 or later):
- For each path above, create ProtoCoIndexHelper records:
  - repo, path, label, summary, gib_terms, clusters, links.
- Back-link from CoSteward CoSessionRegistry / CoStatus pulses when RickPublic rails change.
