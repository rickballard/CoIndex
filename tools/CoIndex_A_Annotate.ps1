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
$harvestPath  = Join-Path $workDir "CoIndex_academia-shock_Harvest_v1.json"
$annotPath    = Join-Path $workDir "CoIndex_academia-shock_Annotated_v1.json"

if (!(Test-Path $harvestPath)) {
    throw "Harvest file not found at $harvestPath. Run CoIndex_H_Harvest.ps1 first."
}

$data = Get-Content -LiteralPath $harvestPath -Raw | ConvertFrom-Json

# Add/overwrite root-level annotation metadata safely
if ($data.PSObject.Properties.Name -contains "annot_session_label") {
    $data.annot_session_label = $SessionLabel
} else {
    $data | Add-Member -NotePropertyName "annot_session_label" -NotePropertyValue $SessionLabel
}

$annotUtc = UTS
if ($data.PSObject.Properties.Name -contains "annot_utc") {
    $data.annot_utc = $annotUtc
} else {
    $data | Add-Member -NotePropertyName "annot_utc" -NotePropertyValue $annotUtc
}

# Ensure each asset has cis_k and visibility blocks
foreach ($asset in $data.assets) {
    # CIS/K hints
    if (-not $asset.PSObject.Properties.Match("cis_k").Count) {
        $asset | Add-Member -NotePropertyName "cis_k" -NotePropertyValue @{
            C = "TODO critique for academia-shock lane."
            I = "TODO key insight this asset represents."
            S = "TODO story or scenario this asset supports."
            K = "TODO knowledge references or anchors."
        }
    }

    # Visibility defaults
    if (-not $asset.PSObject.Properties.Match("visibility").Count) {
        $asset | Add-Member -NotePropertyName "visibility" -NotePropertyValue @{
            mode            = "edge"
            review_required = $true
            risk_notes      = "Seed export from CoIndex20251128; review before public use."
        }
    }
}

$data | ConvertTo-Json -Depth 8 | Set-Content -LiteralPath $annotPath -Encoding UTF8
Write-Host "A: Wrote annotated payload to $annotPath"
