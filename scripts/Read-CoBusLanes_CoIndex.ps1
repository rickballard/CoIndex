param(
    [string]$RepoRoot
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

if (-not $RepoRoot) {
    $RepoRoot = Split-Path -Parent $PSScriptRoot
}

Set-Location $RepoRoot

$uts = (Get-Date).ToUniversalTime().ToString('yyyyMMddTHHmmssZ')

$inboxRoot    = Join-Path $RepoRoot 'docs/intent/cobus/inbox'
$receiptsRoot = Join-Path $RepoRoot 'docs/intent/cobus/receipts'

$lines = [System.Collections.Generic.List[string]]::new()
$lines.Add("# CoIndex CoBus status v1")
$lines.Add("")
$lines.Add("- generated_utc: $uts")
$lines.Add("- repo_root: $RepoRoot")
$lines.Add("")

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

$lines.Add("## Inbox waves")
$lines.Add("")

if (Test-Path -LiteralPath $inboxRoot) {
    $inboxFiles = Get-ChildItem -Path $inboxRoot -File -Recurse -ErrorAction SilentlyContinue
    if (-not $inboxFiles -or $inboxFiles.Count -eq 0) {
        $lines.Add("_no inbox messages found_")
    } else {
        foreach ($f in $inboxFiles | Sort-Object FullName) {
            $msg = Load-JsonFile -Path $f.FullName
            if (-not $msg) {
                $lines.Add("* $($f.FullName)  - invalid JSON")
                continue
            }

            $from   = $msg.from_session_label
            $to     = $msg.to_role
            $wave   = $msg.wave_id
            $intent = $msg.intent
            $scope  = $msg.scope
            $prio   = $msg.priority
            $sens   = $msg.sensitivity

            $lines.Add( ("* [inbox] wave_id=`{0}` from=`{1}` to_role=`{2}` intent=`{3}` scope=`{4}` priority=`{5}` sensitivity=`{6}`" -f `
                $wave, $from, $to, $intent, $scope, $prio, $sens) )
        }
    }
} else {
    $lines.Add("_inbox root not found: $inboxRoot_")
}

$lines.Add("")
$lines.Add("## Receipts")
$lines.Add("")

if (Test-Path -LiteralPath $receiptsRoot) {
    $receiptFiles = Get-ChildItem -Path $receiptsRoot -File -Recurse -ErrorAction SilentlyContinue
    if (-not $receiptFiles -or $receiptFiles.Count -eq 0) {
        $lines.Add("_no receipts found_")
    } else {
        foreach ($f in $receiptFiles | Sort-Object FullName) {
            $msg = Load-JsonFile -Path $f.FullName
            if (-not $msg) {
                $lines.Add("* $($f.FullName)  - invalid JSON")
                continue
            }

            $from   = $msg.from_session_label
            $to     = $msg.to_role
            $wave   = $msg.wave_id
            $intent = $msg.intent
            $scope  = $msg.scope
            $status = $msg.status
            $sens   = $msg.sensitivity

            $lines.Add( ("* [receipt] wave_id=`{0}` status=`{1}` from=`{2}` to_role=`{3}` intent=`{4}` scope=`{5}` sensitivity=`{6}`" -f `
                $wave, $status, $from, $to, $intent, $scope, $sens) )
        }
    }
} else {
    $lines.Add("_receipts root not found: $receiptsRoot_")
}

$lines.Add("")
$lines.Add("> Note: this status view is informational only. CoBus_BPOE_v1 remains canonical for rules and priorities.")
$lines.Add("")

$outDir  = Join-Path $RepoRoot 'docs/ops'
$null = New-Item -ItemType Directory -Force -Path $outDir | Out-Null
$outPath = Join-Path $outDir 'COBUS_STATUS_CoIndex_v1.md'

$lines | Set-Content -LiteralPath $outPath -Encoding UTF8

Write-Host ''
Write-Host '== CoIndex CoBus status written ==' -ForegroundColor Cyan
Write-Host (" Repo : {0}" -f $RepoRoot)
Write-Host (" File : {0}" -f $outPath)
Write-Host ''
