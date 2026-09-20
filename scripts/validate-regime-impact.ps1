#!/usr/bin/env pwsh
# validate-regime-impact.ps1 — Pre-commit check for personae PRs
# Verifies that staged YAML files in personae/ contain regime_impact in frontmatter.
# PRD-MOC-PERSONAE-UX-COGNITIVE-2026-09-20 (draft)
# ADR-022-personae-repository (accepted)

param()

$ErrorActionPreference = "Stop"
$RepoRoot = git -C $PWD rev-parse --show-toplevel 2>$null
if (-not $RepoRoot) {
    Write-Output "[REGIME-IMPACT] ERROR: not a git repository"
    exit 1
}

$StagedFiles = git -C $RepoRoot diff --cached --name-only --diff-filter=ACM 2>$null
if (-not $StagedFiles) {
    exit 0
}

$TargetDir = Join-Path $RepoRoot "personae"
$Missing = @()

foreach ($file in $StagedFiles) {
    if ($file -notlike "personae/*.yaml" -and $file -notlike "personae/*.yml") {
        continue
    }

    $FullPath = Join-Path $RepoRoot $file
    if (-not (Test-Path $FullPath)) {
        continue
    }

    $Content = Get-Content $FullPath -Raw
    if ($Content -notmatch "regime_impact") {
        $Missing += $file
    }
}

if ($Missing.Count -gt 0) {
    Write-Output ""
    Write-Output "[REGIME-IMPACT BLOCK] Missing regime_impact in frontmatter:"
    foreach ($f in $Missing) {
        Write-Output "  $f"
    }
    Write-Output ""
    Write-Output "Add regime_impact: [prescriptive, operative] to the YAML frontmatter."
    Write-Output "Or use git commit --no-verify (NOT RECOMMENDED)"
    exit 1
}

exit 0
