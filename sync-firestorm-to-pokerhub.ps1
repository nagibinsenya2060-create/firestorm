param(
  [string]$SourcePath = "D:\Dovlands\cursor\proect\Firestorm",
  [string]$RepoUrl = "https://gitea.com/academicoff/pokerhub.git",
  [string]$RepoPath = "D:\Dovlands\cursor\proect\_pokerhub_sync_repo",
  [string]$TargetSubPath = "Nikita-Nagibin/Firestorm",
  [string]$Branch = "main",
  [string]$CommitMessage = "",
  [switch]$NoPush
)

$ErrorActionPreference = "Stop"

function Write-Step([string]$msg) {
  Write-Host "==> $msg" -ForegroundColor Cyan
}

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
  throw "Git ne najden v PATH."
}

if (-not (Test-Path -LiteralPath $SourcePath)) {
  throw "Ne najden SourcePath: $SourcePath"
}

Write-Step "Podgotovka lokalnogo repo: $RepoPath"
if (-not (Test-Path -LiteralPath $RepoPath)) {
  git clone $RepoUrl $RepoPath | Out-Host
}

if (-not (Test-Path -LiteralPath (Join-Path $RepoPath ".git"))) {
  throw "Papka $RepoPath ne yavlyaetsya git-repozitoriem."
}

Write-Step "Sinhronizaciya vetki $Branch"
git -C $RepoPath fetch origin | Out-Host

$localBranch = (git -C $RepoPath branch --list $Branch).Trim()
if ([string]::IsNullOrWhiteSpace($localBranch)) {
  git -C $RepoPath checkout -B $Branch "origin/$Branch" | Out-Host
} else {
  git -C $RepoPath checkout $Branch | Out-Host
  git -C $RepoPath pull --rebase origin $Branch | Out-Host
}

$targetPath = Join-Path $RepoPath $TargetSubPath
if (-not (Test-Path -LiteralPath $targetPath)) {
  New-Item -ItemType Directory -Path $targetPath -Force | Out-Null
}

Write-Step "Zerkalenie $SourcePath -> $targetPath"
robocopy $SourcePath $targetPath /MIR /XD .git /NFL /NDL /NJH /NJS /NC /NS | Out-Null
$rc = $LASTEXITCODE
if ($rc -ge 8) {
  throw "Robocopy vernul kod oshibki: $rc"
}

Write-Step "Poisk izmenenij"
git -C $RepoPath add -A
$status = git -C $RepoPath status --porcelain

if ([string]::IsNullOrWhiteSpace(($status -join ""))) {
  Write-Host "Net izmenenij dlya commita." -ForegroundColor Yellow
  exit 0
}

if ([string]::IsNullOrWhiteSpace($CommitMessage)) {
  $stamp = Get-Date -Format "yyyy-MM-dd HH:mm"
  $CommitMessage = "Sync Firestorm docs ($stamp)"
}

Write-Step "Commit: $CommitMessage"
git -C $RepoPath commit -m $CommitMessage | Out-Host

if ($NoPush) {
  Write-Host "Commit sdelan lokalno. Push propushchen (--NoPush)." -ForegroundColor Yellow
  exit 0
}

Write-Step "Push v origin/$Branch"
git -C $RepoPath push origin $Branch | Out-Host

Write-Host "Gotovo. Sinhronizaciya vypolnena." -ForegroundColor Green
