# ♦ DO Evolve_CoMetaTrain_SelfVoice_W1
$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

function UTS {
    (Get-Date).ToUniversalTime().ToString('yyyyMMddTHHmmssZ')
}

$t = UTS
Write-Host $t 'Evolving cometatrain assets with self-voice...' -ForegroundColor Cyan

$repoRoot = git rev-parse --show-toplevel 2>$null
if (-not $repoRoot) {
    throw 'Not inside a git repo.'
}
$repoRoot = $repoRoot.Trim()
Set-Location $repoRoot

$updated = 0

function New-AssetPersona {
    param(
        [string]$Title,
        [string]$Kind,
        [string]$IntentSummary,
        [string]$AssetId
    )

    if (-not $Title)         { $Title = 'an unnamed asset' }
    if (-not $Kind)          { $Kind = 'asset' }
    if (-not $IntentSummary) { $IntentSummary = 'do something useful inside CoSuite.' }
    if (-not $AssetId)       { $AssetId = 'unknown-id' }

    "I am {0} ({1}, id {2}). I exist to {3}" -f $Title, $Kind, $AssetId, $IntentSummary
}

$newline = [Environment]::NewLine

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

        $pattern = '(?s)```cometatrain\s*(.*?)\s*```'
        $m = [regex]::Match($text, $pattern)
        if (-not $m.Success) {
            $t = UTS
            Write-Host $t 'WARN Could not locate fenced cometatrain block in' $rel -ForegroundColor Yellow
            return
        }

        $jsonText = $m.Groups[1].Value

        try {
            $obj = $jsonText | ConvertFrom-Json
        }
        catch {
            $t = UTS
            Write-Host $t 'WARN Could not parse cometatrain JSON in' $rel -ForegroundColor Yellow
            return
        }

        if ($obj.PSObject.Properties.Name -contains 'asset_persona' -and $obj.asset_persona) {
            return
        }

        $persona = New-AssetPersona -Title $obj.title -Kind $obj.kind -IntentSummary $obj.intent_summary -AssetId $obj.asset_id
        $obj | Add-Member -NotePropertyName 'asset_persona' -NotePropertyValue $persona -Force

        $newJson  = $obj | ConvertTo-Json -Depth 20
        $newBlock = '```cometatrain' + $newline + $newJson + $newline + '```'

        $text = $text.Substring(0, $m.Index) + $newBlock + $text.Substring($m.Index + $m.Length)
        Set-Content -LiteralPath $path -Value $text -Encoding utf8

        $t = UTS
        Write-Host $t 'Updated self-voice in' $rel -ForegroundColor Green
        $updated++
    }

# 2) Sidecar JSON files
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
            $t = UTS
            Write-Host $t 'WARN Could not parse cometatrain sidecar in' $rel -ForegroundColor Yellow
            return
        }

        if ($obj.PSObject.Properties.Name -contains 'asset_persona' -and $obj.asset_persona) {
            return
        }

        $persona = New-AssetPersona -Title $obj.title -Kind $obj.kind -IntentSummary $obj.intent_summary -AssetId $obj.asset_id
        $obj | Add-Member -NotePropertyName 'asset_persona' -NotePropertyValue $persona -Force

        $newJson = $obj | ConvertTo-Json -Depth 20
        $newJson | Set-Content -LiteralPath $path -Encoding utf8

        $t = UTS
        Write-Host $t 'Updated self-voice in sidecar' $rel -ForegroundColor Green
        $updated++
    }

$t = UTS
Write-Host $t 'Self-voice evolution complete. Updated' $updated 'assets.' -ForegroundColor Cyan
