# CoPre module v0.3 (local placeholder)

- Created_UTS: 20251211T014242Z
- Created_Date: 2025-12-10

## Identity

- Id: copre
- Name: CoPre pre-boot rails for CoSteward
- Kind: preboot-rails
- Owner: rick (CoSteward-only)
- Lane: CoPre / CoCrux / CoAgent / CoSteward

## Repos and paths

- CoPre local repo:
  - Path: 'C:\Users\Chris\Documents\GitHub\CoPre'
  - ExistsOnDisk: True
- CoSteward repo:
  - Path: 'C:\Users\Chris\Documents\GitHub\CoSteward'

### CoPre snapshot AdviceBomb (from INBOX_LOG)

- Last_AdviceBomb_UTS: 20251210T235926Z
- Last_AdviceBomb_Path: advice\inbox\AdviceBomb_CoPre_Snapshot_20251210T235926Z.zip
- Last_AdviceBomb_SHA256: F4DE70758AEEF3E47F7B84D0766579CCE585FEC8517B74D18643C6C4E4C4A3F7

### Expected CoPre structure (derived from AdviceBomb scripts)

- CoPre docs and tools:
  - docs/prompts/coagent/CoAgent_Rick_InternalShellPack_v1.md
  - docs/cocrux/CoCrux_Top50_v1_Placeholder.json
  - docs/cocrux/CoCrux_Top50_v1_Placeholder.md
  - tools/Show-CoPreCoCruxBatch.ps1
  - .state/CoPre_CoCruxState.json (local, gitignored)

## Status

- Version: v0.3 local placeholder
- Remote: none (CoPre is local-only; CoPre_Snapshot AdviceBomb is the handoff to Co1)
- CoCruxIntegration: Top 50 rules rotated locally via Show-CoPreCoCruxBatch.ps1

## Notes for Co1 / CoIndex

- Treat this module as the canonical index entry for CoPre as of AdviceBomb UTS 20251210T235926Z.
- CoPre behavior details should be inferred from:
  - The CoPre snapshot AdviceBomb at 'advice\inbox\AdviceBomb_CoPre_Snapshot_20251210T235926Z.zip' in CoSteward.
  - CoBus notes matching 'CoBus_CoPre_*' under docs/intent/advice/notes.
- When CoPre evolves materially, a new AdviceBomb should be dropped and this module stub can be updated or versioned.
