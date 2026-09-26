<#
.SYNOPSIS
  Installs the learn-to-build coaching setup for Kiro on Windows.

.DESCRIPTION
  Coaching artifacts (steering, skills, hook) install into a target WORKSPACE's .kiro\.
  Cross-project learner state (profile, progress, ious, projects) installs GLOBALLY into
  ~\.kiro\learn\ so it carries across every project.

.PARAMETER Workspace
  The workspace directory to install into. Defaults to the current directory.

.EXAMPLE
  .\install.ps1
  .\install.ps1 C:\path\to\workspace
#>
[CmdletBinding()]
param(
    [Parameter(Position = 0)]
    [string]$Workspace = (Get-Location).Path
)

$ErrorActionPreference = 'Stop'

$Src       = Split-Path -Parent $MyInvocation.MyCommand.Path
$Workspace = (Resolve-Path -LiteralPath $Workspace).Path
$KiroHome  = Join-Path $env:USERPROFILE '.kiro'

Write-Host "Installing into workspace: $Workspace"

Write-Host "Installing always-on steering..."
$SteeringDir = Join-Path $Workspace '.kiro\steering'
New-Item -ItemType Directory -Force -Path $SteeringDir | Out-Null
$SteeringTarget = Join-Path $SteeringDir 'learn-to-build.md'
if (Test-Path -LiteralPath $SteeringTarget) {
    Write-Host "  $SteeringTarget already exists - left alone."
} else {
    Copy-Item -LiteralPath (Join-Path $Src 'steering\learn-to-build.md') -Destination $SteeringTarget
    Write-Host "  Wrote $SteeringTarget."
}

Write-Host "Installing teaching-mode hook..."
$HooksDir = Join-Path $Workspace '.kiro\hooks'
New-Item -ItemType Directory -Force -Path $HooksDir | Out-Null
Get-ChildItem -LiteralPath (Join-Path $Src 'hooks') -File | ForEach-Object {
    $HookTarget = Join-Path $HooksDir $_.Name
    if (Test-Path -LiteralPath $HookTarget) {
        Write-Host "  $HookTarget already exists - left alone."
    } else {
        Copy-Item -LiteralPath $_.FullName -Destination $HookTarget
        Write-Host "  Installed $($_.Name)."
    }
}

Write-Host "Installing coaching skills..."
$SkillsDir = Join-Path $Workspace '.kiro\skills'
New-Item -ItemType Directory -Force -Path $SkillsDir | Out-Null
Get-ChildItem -LiteralPath (Join-Path $Src 'skills') -Directory | ForEach-Object {
    $SkillTarget = Join-Path $SkillsDir $_.Name
    if (Test-Path -LiteralPath $SkillTarget) {
        Write-Host "  $SkillTarget already exists - left alone."
    } else {
        Copy-Item -LiteralPath $_.FullName -Destination $SkillTarget -Recurse
        Write-Host "  Installed $($_.Name)."
    }
}

Write-Host "Setting up global learner state..."
$LearnDir = Join-Path $KiroHome 'learn'
New-Item -ItemType Directory -Force -Path $LearnDir | Out-Null
$ProfileTarget = Join-Path $LearnDir 'profile.md'
if (Test-Path -LiteralPath $ProfileTarget) {
    Write-Host "  $ProfileTarget already exists - left alone."
} else {
    Copy-Item -LiteralPath (Join-Path $Src 'learn\profile.example.md') -Destination $ProfileTarget
    Write-Host "  Wrote $ProfileTarget from the example."
}

Write-Host ""
Write-Host "Done. Open this workspace in Kiro and tell it what you want to make."
