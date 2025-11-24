# CoIndex_BuildExports.ps1
# Mission   : CoIndex_BackboneDesign2025_Mission
# Session   : MurphyPlus_CoIndex20251123
#
# Purpose:
#   Seed stage helper to:
#   - ensure exports/ tree exists
#   - emit example CoPointee export matching CoIndex_ExportSchema_v1.json
#   - leave a small receipt for CoAgent or CI to read
#
# Usage (from CoIndex repo root):
#   pwsh -NoProfile -File .\tools\CoIndex_BuildExports.ps1

param(
  [string] $Root = (Split-Path $PSScriptRoot -Parent)
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

function UTS { (Get-Date).ToUniversalTime().ToString('yyyyMMddTHHmmssZ') }

$stamp = UTS
Write-Host "CoIndex_BuildExports starting at $stamp"
Write-Host "Root: $Root"

# Ensure directories
$dirs = @(
  'exports',
  'exports/pointees',
  'exports/tuples',
  'exports/drift',
  'exports/reputation'
)

foreach ($d in $dirs) {
  $fp = Join-Path $Root $d
  if (-not (Test-Path $fp)) {
    New-Item -ItemType Directory -Path $fp -Force | Out-Null
  }
}

# Example pointee payload
$example = @{
  schema_id = 'CoIndex_ExportSchema_v1'
  mission   = 'CoIndex_BackboneDesign2025_Mission'
  session   = 'MurphyPlus_CoIndex20251123'
  stamp     = $stamp
  pointee   = @{
    id          = 'CoIndex:Example:SemanticBackbone:v1'
    source_uri  = 'github://rickballard/CoIndex/README.md'
    canonality  = 'Provisional'
    reputation  = @{
      merit_rank = 0.7
      co_halo    = 0.6
      rep_tags   = @('seed-stage','design-backbone')
      script_tag = $null
    }
    tuples = @(
      @{
        concept = @{
          id      = 'Concept:CoIndex'
          labels  = @('CoIndex','semantic backbone for CoCivium')
          domains = @('governance','indexing','civic-tech')
        }
        intent = @{
          verbs             = @('organise','govern','constrain')
          direction         = 'towards-safe-evolution'
          priority          = 10
          expected_outcomes = @(
            'safer AI evolution',
            'edge-controlled semantics',
            'transparent drift'
          )
        }
        context = @{
          domains       = @('CoCivium','CoSuite')
          time_window   = 'seed-stage and beyond'
          jurisdictions = @('global')
          assumptions   = @(
            'repos are source of truth',
            'edge control is enforced'
          )
        }
        state = @{
          metrics           = @{ example_metric = 'not-yet-measured' }
          system_state      = 'design-complete-seed-stage'
          stakeholder_state = 'early-adopters'
          confidence        = 0.6
        }
        constraints = @{
          ethics       = @('do-no-harm','respect-human-rights')
          civic        = @('no-corruption','no-coercion','no-crowns')
          legal        = @('comply-with-local-law-where-ethical')
          safety       = @('prevent-capture','prevent-single-vendor-control')
          drift_limits = 'tight for Canon, moderate for Provisional'
        }
      }
    )
  }
}

$json    = $example | ConvertTo-Json -Depth 10
$outPath = Join-Path $Root 'exports/pointees/CoIndex_ExamplePointee_v1.json'
Set-Content -LiteralPath $outPath -Value $json -Encoding UTF8

# Receipt
$receiptDir = Join-Path $Root 'docs/pipeline/exports'
if (-not (Test-Path $receiptDir)) {
  New-Item -ItemType Directory -Path $receiptDir -Force | Out-Null
}

$receiptPath = Join-Path $receiptDir ("ExportReceipt_{0}.md" -f $stamp)

$receipt = @"
# CoIndex Export Receipt
Stamp  : $stamp
Helper : CoIndex_BuildExports.ps1
Output : exports/pointees/CoIndex_ExamplePointee_v1.json

This is a seed stage export run. Future versions will:
- walk real CoPointees
- emit multiple export files
- attach to CoPortal and CoBeacon surfaces
"@
Set-Content -LiteralPath $receiptPath -Value $receipt -Encoding UTF8

Write-Host "Export written to $outPath"
Write-Host "Receipt written to $receiptPath"
Write-Host "CoIndex_BuildExports complete."
