param(
    [switch] $VerboseReport
)

$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

$repoRoot   = Split-Path -Parent $PSCommandPath
while($repoRoot -and -not (Test-Path (Join-Path $repoRoot ".git"))){
    $parent = Split-Path -Parent $repoRoot
    if($parent -eq $repoRoot){ break }
    $repoRoot = $parent
}
if(-not $repoRoot){
    throw "Could not locate repo root (.git). Run from inside CoIndex repo."
}

$regPath   = Join-Path $repoRoot "exports/gibber/cogibber.registry.v1.json"
$schemaPath= Join-Path $repoRoot "schemas/cogibber.registry.v1.schema.json"

$results = [ordered]@{
    repo_root          = $repoRoot
    registry_present   = $false
    schema_present     = $false
    schema_ok          = $false
    pointee_count      = 0
    pointees_missing   = @()
}

if(Test-Path -LiteralPath $regPath){
    $results.registry_present = $true
    $registry = Get-Content -LiteralPath $regPath -Raw | ConvertFrom-Json
}
else{
    Write-Host "Registry not found at $regPath" -ForegroundColor Yellow
    $results.registry_present = $false
    return [pscustomobject]$results
}

if(Test-Path -LiteralPath $schemaPath){
    $results.schema_present = $true
} else {
    Write-Host "Schema not found at $schemaPath" -ForegroundColor Yellow
}

try{
    # Very light structural check in PS only.
    # Full jsonschema check is handled in CI; here we just sanity check some fields.
    if(-not $registry.namespace -or -not $registry.version -or -not $registry.pointees){
        throw "Registry missing namespace/version/pointees fields."
    }
    $results.schema_ok = $true
} catch {
    Write-Host "Registry structural check failed: $($_.Exception.Message)" -ForegroundColor Red
    $results.schema_ok = $false
}

$pointees = @()
if($registry.pointees -is [System.Collections.IEnumerable]){
    $pointees = $registry.pointees
}
$results.pointee_count = $pointees.Count

foreach($p in $pointees){
    $repo = $p.repo
    $path = $p.path

    if(-not $repo -or -not $path){
        continue
    }

    if($repo -eq "rickballard/CoIndex"){
        $filePath = Join-Path $repoRoot $path
        if(-not (Test-Path -LiteralPath $filePath)){
            $results.pointees_missing += @{
                id   = $p.id
                path = $path
            }
        }
    }
}

if($VerboseReport){
    $missing = $results.pointees_missing
    Write-Host ""
    Write-Host "== CoIndex Registry Health Summary ==" -ForegroundColor Cyan
    Write-Host "Registry present : $($results.registry_present)"
    Write-Host "Schema present   : $($results.schema_present)"
    Write-Host "Schema OK (light): $($results.schema_ok)"
    Write-Host "Pointee count    : $($results.pointee_count)"
    if($missing.Count -gt 0){
        Write-Host ""
        Write-Host "Missing pointees for CoIndex paths:" -ForegroundColor Yellow
        foreach($m in $missing){
            Write-Host " - $($m.id): $($m.path)"
        }
    } else {
        Write-Host ""
        Write-Host "No missing CoIndex pointee paths detected." -ForegroundColor Green
    }
}

[pscustomobject]$results
