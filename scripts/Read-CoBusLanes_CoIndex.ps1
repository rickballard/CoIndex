param(
    [string]$RepoRoot
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

if (-not $RepoRoot) {
    if ($PSScriptRoot) {
        $RepoRoot = Split-Path -Parent $PSScriptRoot
    } else {
        $RepoRoot = (Get-Location).Path
    }
}

Set-Location $RepoRoot

$uts = (Get-Date).ToUniversalTime().ToString('yyyyMMddTHHmmssZ')

$inboxRoot    = Join-Path $RepoRoot 'docs/intent/cobus/inbox'
$receiptsRoot = Join-Path $RepoRoot 'docs/intent/cobus/receipts'

$lines = [System.Collections.Generic.List[string]]::new()
$lines.Add('# CoIndex CoBus status v1')
$lines.Add('')
$lines.Add('- generated_utc: {0}' -f $uts)
$lines.Add('- repo_root: {0}' -f $RepoRoot)
$lines.Add('')
$lines.Add('## Inbox waves')
$lines.Add('')

function Load-JsonFile {
    param(
        [Parameter(Mandatory)][string]$Path
    )
    try {
        Get-Content -LiteralPath $Path -Raw | ConvertFrom-Json
    } catch {
        return $null
    }
}

# Inbox
if (Test-Path -LiteralPath $inboxRoot) {
    $inboxFiles = Get-ChildItem -Path $inboxRoot -File -Recurse -ErrorAction SilentlyContinue
    if (-not $inboxFiles -or $inboxFiles.Count -eq 0) {
        $lines.Add('* no inbox messages found')
    } else {
        foreach ($f in ($inboxFiles | Sort-Object FullName)) {
            $msg = Load-JsonFile -Path $f.FullName
            if (-not $msg) {
                continue
            }

            $from   = $msg.from_session_label
            $to     = $msg.to_role
            $wave   = $msg.wave_id
            $intent = $msg.intent
            $scope  = $msg.scope
            $prio   = $msg.priority
            $sens   = $msg.sensitivity

            $text = ('* [inbox] wave_id=`{0}` from=`{1}` to_role=`{2}` intent=`{3}` scope=`{4}` priority=`{5}` sensitivity=`{6}`' -f `
                $wave, $from, $to, $intent, $scope, $prio, $sens)
            $lines.Add($text)
        }
    }
} else {
    $msg = 'inbox root not found: {0}' -f $inboxRoot
    $lines.Add($msg)
}

$lines.Add('')
$lines.Add('## Receipts')
$lines.Add('')

# Receipts
if (Test-Path -LiteralPath $receiptsRoot) {
    $receiptFiles = Get-ChildItem -Path $receiptsRoot -File -Recurse -ErrorAction SilentlyContinue
    if (-not $receiptFiles -or $receiptFiles.Count -eq 0) {
        $lines.Add('* no receipts found')
    } else {
        foreach ($f in ($receiptFiles | Sort-Object FullName)) {
            $msg = Load-JsonFile -Path $f.FullName
            if (-not $msg) {
                continue
            }

            $from   = $msg.from_session_label
            $to     = $msg.to_role
            $wave   = $msg.wave_id
            $intent = $msg.intent
            $scope  = $msg.scope
            $status = $msg.status
            $sens   = $msg.sensitivity

            $text = ('* [receipt] wave_id=`{0}` status=`{1}` from=`{2}` to_role=`{3}` intent=`{4}` scope=`{5}` sensitivity=`{6}`' -f `
                $wave, $status, $from, $to, $intent, $scope, $sens)
            $lines.Add($text)
        }
    }
} else {
    $msg = 'receipts root not found: {0}' -f $receiptsRoot
    $lines.Add($msg)
}

$lines.Add('')
$lines.Add('> Note: this status view is informational only. CoBus_BPOE_v1 remains canonical for rules and priorities.')
$lines.Add('')

$outDir  = Join-Path $RepoRoot 'docs/ops'
if (-not (Test-Path -LiteralPath $outDir)) {
    New-Item -ItemType Directory -Force -Path $outDir | Out-Null
}
$outPath = Join-Path $outDir 'COBUS_STATUS_CoIndex_v1.md'

$lines | Set-Content -LiteralPath $outPath -Encoding UTF8

Write-Host ''
Write-Host '== CoIndex CoBus status written ==' -ForegroundColor Cyan
Write-Host (" Repo : {0}" -f $RepoRoot)
Write-Host (" File : {0}" -f $outPath)
Write-Host ''
