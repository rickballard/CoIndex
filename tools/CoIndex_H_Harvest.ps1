$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

function UTS {
    (Get-Date).ToUniversalTime().ToString("yyyyMMddTHHmmssZ")
}

$SessionLabel = "CoIndex20251128"
$LaneId       = "academia-shock"

$root    = Join-Path $HOME "Documents\GitHub"
$idxRepo = Join-Path $root "CoIndex"

$workDir = Join-Path $idxRepo "exports\work"
$null = New-Item -ItemType Directory -Force -Path $workDir | Out-Null

$harvestPath = Join-Path $workDir "CoIndex_academia-shock_Harvest_v1.json"

$assets = @(
    @{
        id   = "academia-shock:whitepaper-dino"
        repo = "InSeed"
        path = "docs/intent/InSeed_AssetSweep_Whitepaper_Dino_v1.md"
        role = "whitepaper-sweep"
    },
    @{
        id   = "academia-shock:coprimer-page"
        repo = "InSeed"
        path = "docs/site/CoPrimer_Page_v1.md"
        role = "exec-facing-page"
    },
    @{
        id   = "academia-shock:costeward-ops-manual"
        repo = "CoSteward"
        path = "docs/ops/CoSteward_Ops_Manual_v1.md"
        role = "ops-context"
    },
    @{
        id   = "academia-shock:costatus-pulses"
        repo = "CoSteward"
        path = "docs/intent/CoStatus_Pulses_v1.md"
        role = "status-context"
    },
    @{
        id   = "academia-shock:cosession-registry"
        repo = "CoSteward"
        path = "docs/intent/CoSessionRegistry_v1.md"
        role = "session-registry-context"
    }
)

$payload = @{
    lane_id       = $LaneId
    session_label = $SessionLabel
    generated_utc = UTS
    assets        = $assets
}

$payload | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $harvestPath -Encoding UTF8
Write-Host "H: Wrote harvest payload to $harvestPath"
