$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

function UTS {
    (Get-Date).ToUniversalTime().ToString("yyyyMMddTHHmmssZ")
}

$SessionLabel = "CoIndex20251128"
$LaneId       = "academia-shock"

$root    = Join-Path $HOME "Documents\GitHub"
$idxRepo = Join-Path $root "CoIndex"

$workDir    = Join-Path $idxRepo "exports\work"
$exportsDir = Join-Path $idxRepo "exports\pointees"
$null = New-Item -ItemType Directory -Force -Path $exportsDir | Out-Null

$annotPath = Join-Path $workDir "CoIndex_academia-shock_Annotated_v1.json"
$exportPath = Join-Path $exportsDir "CoIndex_AcademiaShock_Pilot_v1.json"

if (!(Test-Path $annotPath)) {
    throw "Annotated file not found at $annotPath. Run CoIndex_A_Annotate.ps1 first."
}

$data = Get-Content -LiteralPath $annotPath -Raw | ConvertFrom-Json

$pointees = @()
foreach ($asset in $data.assets) {
    $pointees += @{
        id          = $asset.id
        lane_id     = $LaneId
        repo        = $asset.repo
        path        = $asset.path
        role        = $asset.role
        visibility  = $asset.visibility
        cis_k       = $asset.cis_k
        source_wave = $SessionLabel
    }
}

$export = @{
    schema_version = "CoIndex_ExportSchema_v2-pilot"
    lane_id        = $LaneId
    generated_utc  = UTS
    source_session = $SessionLabel
    pointees       = $pointees
}

$export | ConvertTo-Json -Depth 10 | Set-Content -LiteralPath $exportPath -Encoding UTF8
Write-Host "E: Wrote pilot export to $exportPath"
