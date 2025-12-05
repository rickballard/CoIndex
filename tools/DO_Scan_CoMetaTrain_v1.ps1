# ♦ DO Scan_CoMetaTrain_v1
$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

function UTS {
    (Get-Date).ToUniversalTime().ToString('yyyyMMddTHHmmssZ')
}

Write-Host ("[{0}][CoMetaTrain] Scanning for cometatrain blocks..." -f (UTS)) -ForegroundColor Cyan

$repoRoot = git rev-parse --show-toplevel 2>$null
if (-not $repoRoot) {
    throw 'Not inside a git repo.'
}
$repoRoot = $repoRoot.Trim()
Set-Location $repoRoot

$results = @()

# 1) Markdown footers
Get-ChildItem -Path $repoRoot -Recurse -File |
    Where-Object { $_.Extension -eq '.md' } |
    ForEach-Object {
        $path = $_.FullName
        $rel  = $path.Substring($repoRoot.Length + 1) -replace '\\','/'

        $text = Get-Content -LiteralPath $path -Raw
        if ($text -notmatch '```cometatrain') {
            return
        }

        Write-Host ("[{0}][CoMetaTrain] Found candidate cometatrain block in {1}" -f (UTS), $rel) -ForegroundColor DarkCyan

        $pattern = '(?s)```cometatrain\s*(.*?)\s*```'
        $m = [regex]::Match($text, $pattern)
        if (-not $m.Success) {
            Write-Host ("[{0}][WARN] Could not locate fenced cometatrain block in {1}" -f (UTS), $rel) -ForegroundColor Yellow
            return
        }

        $jsonText = $m.Groups[1].Value

        try {
            $obj = $jsonText | ConvertFrom-Json
        }
        catch {
            Write-Host ("[{0}][WARN] Failed to parse cometatrain JSON in {1}" -f (UTS), $rel) -ForegroundColor Yellow
            return
        }

        $results += [pscustomobject]@{
            LocationType   = 'footer-md'
            Path           = $rel
            AssetId        = $obj.asset_id
            Title          = $obj.title
            Kind           = $obj.kind
            Stage          = $obj.asset_stage
            Lane           = $obj.evolution_lane
            Repo           = $obj.repo
        }
    }

# 2) Sidecars (e.g. *.cometatrain.json)
Get-ChildItem -Path $repoRoot -Recurse -File |
    Where-Object { $_.Name -like '*.cometatrain.json' } |
    ForEach-Object {
        $path = $_.FullName
        $rel  = $path.Substring($repoRoot.Length + 1) -replace '\\','/'

        $jsonText = Get-Content -LiteralPath $path -Raw
        try {
            $obj = $jsonText | ConvertFrom-Json
        }
        catch {
            Write-Host ("[{0}][WARN] Failed to parse cometatrain JSON in sidecar {1}" -f (UTS), $rel) -ForegroundColor Yellow
            return
        }

        $results += [pscustomobject]@{
            LocationType   = 'sidecar-json'
            Path           = $rel
            AssetId        = $obj.asset_id
            Title          = $obj.title
            Kind           = $obj.kind
            Stage          = $obj.asset_stage
            Lane           = $obj.evolution_lane
            Repo           = $obj.repo
        }
    }

if ($results.Count -eq 0) {
    Write-Host ("[{0}][CoMetaTrain] No cometatrain assets found." -f (UTS)) -ForegroundColor Yellow
    return
}

Write-Host ("[{0}][CoMetaTrain] Found {1} cometatrain asset records." -f (UTS), $results.Count) -ForegroundColor Green
$results | Sort-Object Repo, Path | Format-Table -AutoSize

# Ensure docs exists
$docsDir = Join-Path $repoRoot 'docs'
if (-not (Test-Path $docsDir)) {
    New-Item -ItemType Directory -Path $docsDir | Out-Null
}

# Dump to CSV index for Co1 / CoAudit
$outCsv = Join-Path $docsDir 'CoMetaTrain_Index_v1.csv'
$results | Sort-Object Repo, Path | Export-Csv -Path $outCsv -NoTypeInformation -Encoding UTF8
Write-Host ("[{0}][CoMetaTrain] Wrote index to {1}" -f (UTS), $outCsv) -ForegroundColor Green
