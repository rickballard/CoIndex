param(
    [Parameter(Mandatory)][string]$FromSessionLabel,
    [Parameter(Mandatory)][string]$ToRole,
    [Parameter(Mandatory)][string]$WaveId,
    [Parameter(Mandatory)][string]$Intent,
    [Parameter(Mandatory)][string]$Scope,
    [string]$Sensitivity = 'public',
    [string]$Priority    = 'normal',
    [string]$Hp57Tier,
    [string]$Status      = 'success',
    [string]$Notes,
    [string]$RepoRoot
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

if (-not $RepoRoot) {
    $RepoRoot = Split-Path -Parent $PSScriptRoot
}

Set-Location $RepoRoot

$tsUtc = (Get-Date).ToUniversalTime().ToString('yyyyMMddTHHmmssZ')
$day   = (Get-Date).ToUniversalTime().ToString('yyyyMMdd')

$relDir  = Join-Path 'docs/intent/cobus/receipts' $day
$dirPath = Join-Path $RepoRoot $relDir

if (!(Test-Path -LiteralPath $dirPath)) {
    $null = New-Item -ItemType Directory -Force -Path $dirPath
}

$fileName = "CoBus_{0}.json" -f $WaveId
$path     = Join-Path $dirPath $fileName

$payload = [ordered]@{
    from_session_label = $FromSessionLabel
    to_role            = $ToRole
    wave_id            = $WaveId
    intent             = $Intent
    scope              = $Scope
    sensitivity        = $Sensitivity
    ts_utc             = $tsUtc
    status             = $Status
}

if ($Priority) { $payload.priority  = $Priority }
if ($Hp57Tier) { $payload.hp57_tier = $Hp57Tier }
if ($Notes)    { $payload.notes     = $Notes }

$payload | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath $path -Encoding UTF8

Write-Host ''
Write-Host '== CoBus receipt written ==' -ForegroundColor Cyan
Write-Host (" Repo : {0}" -f $RepoRoot)
Write-Host (" File : {0}" -f $path)
Write-Host ''
