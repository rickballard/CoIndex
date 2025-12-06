# CoMetaTrain_Lineage_Scan_Stub.ps1
# Purpose:
#   Skeleton helper to inspect git lineage for CoMetaTrain-related files
#   before merging branches, so parallel work does not silently clobber
#   prior contributions.

param(
    [string]$RepoRoot = (Join-Path $HOME "Documents\GitHub\CoIndex"),
    [string[]]$Paths = @(
        "docs/intent/CoProcess/CoMetaTrain_*.md"
    )
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if (-not (Test-Path $RepoRoot)) {
    Write-Error "RepoRoot not found: $RepoRoot"
}

Set-Location $RepoRoot

$uts = (Get-Date).ToUniversalTime().ToString("yyyyMMddTHHmmssZ")
$reportDir  = Join-Path $RepoRoot "docs/intent/CoProcess"
$reportPath = Join-Path $reportDir  ("CoMetaTrain_Lineage_Report_$uts.md")

New-Item -ItemType Directory -Path $reportDir -Force | Out-Null

$lines = @()
$lines += "# CoMetaTrain Lineage Report"
$lines += ""
$lines += "Generated: $uts"
$lines += ""
$lines += "Repo: $RepoRoot"
$lines += ""

foreach ($p in $Paths) {
    $files = Get-ChildItem -Path $p -ErrorAction SilentlyContinue
    if (-not $files) {
        $lines += "## Path pattern: $p"
        $lines += ""
        $lines += "_No matching files found in this branch._"
        $lines += ""
        continue
    }

    foreach ($file in $files) {
        $rel = $file.FullName.Replace($RepoRoot,"").TrimStart("\","/")
        $lines += "## File: $rel"
        $lines += ""
        $lines += "```text"
        $hist = git log --follow --oneline -- "$($file.FullName)"
        $lines += $hist
        $lines += "```"
        $lines += ""
    }
}

$lines | Set-Content -Encoding UTF8 $reportPath

Write-Host "CoMetaTrain lineage report written:" -ForegroundColor Green
Write-Host "  $reportPath" -ForegroundColor Green
