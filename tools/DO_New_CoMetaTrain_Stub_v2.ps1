# ♦ DO New_CoMetaTrain_Stub_v2
param(
    [Parameter(Mandatory)]
    [string]$Path,
    [string]$Kind = 'doc',
    [string]$Title = ''
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$repoRoot = git rev-parse --show-toplevel 2>$null
if (-not $repoRoot) {
    throw 'Not inside a git repo.'
}
$repoRoot = $repoRoot.Trim()
Set-Location $repoRoot

# Normalise path relative to repo root
$fullPath = Resolve-Path -LiteralPath $Path -ErrorAction Stop
$relPath  = $fullPath.Path.Substring($repoRoot.Length + 1) -replace '\\','/'

$remoteUrl = git remote get-url origin
$parts     = $remoteUrl.Split('/')
$repoName  = ($parts[-2] + '/' + $parts[-1].Replace('.git',''))

if (-not $Title) {
    $Title = Split-Path $relPath -Leaf
}

# Avoid $repoName: scoping weirdness
$assetId = "${repoName}:$relPath"

$cometa = [ordered]@{
    schema_id      = 'cometatrain-asset-v1'
    schema_version = '1.0.0'
    asset_id       = $assetId
    repo           = $repoName
    path           = $relPath
    kind           = $Kind
    title          = $Title
    intent_summary = 'TODO: describe why this asset exists in 1-2 sentences.'
    asset_stage    = 'seed'
    evolution_lane = 'note'
    evolution_path = @(
        @{
            stage       = 'W1-clarify-intent'
            description = 'Replace stub fields in this CoMetaTrain with real values.'
        }
    )
}

$json = $cometa | ConvertTo-Json -Depth 10

if ($Path.ToLower().EndsWith('.md')) {
    $content = Get-Content -LiteralPath $Path -Raw

    $footerBlock = '```cometatrain'
    $footerNew   = "`n---`n```cometatrain`n$json`n```n"

    if ($content.Contains($footerBlock)) {
        # Replace existing cometatrain block
        $pattern = '(?s)---\s*```cometatrain.*?```'
        $content = [regex]::Replace($content, $pattern, $footerNew, 1)
        Write-Host "Updated existing CoMetaTrain footer in $Path" -ForegroundColor Green
    }
    else {
        # Append new footer
        $content += $footerNew
        Write-Host "Appended CoMetaTrain footer to $Path" -ForegroundColor Green
    }

    $content | Set-Content -LiteralPath $Path -Encoding utf8
}
else {
    $sidecar = "$($fullPath.Path).cometatrain.json"
    $json | Set-Content -LiteralPath $sidecar -Encoding utf8
    Write-Host "Wrote CoMetaTrain sidecar $sidecar" -ForegroundColor Green
}
