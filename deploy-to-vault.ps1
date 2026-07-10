# ============================================================
#  Spud Man Vault Deployment — July 2026 Casper Launch Wave
#  Run from the repo folder:  .\deploy-to-vault.ps1
#  Places 5 docs into the Second Brain vault and inserts the
#  "July 2026 Casper Launch Updates" section into Spud Man HQ.
# ============================================================
param(
    [string]$VaultPath = "C:\Users\Jim Brady\OneDrive\Desktop\Spud Man 2\O Vaults\Second Brain"
)

$ErrorActionPreference = "Stop"
$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

if (-not (Test-Path -LiteralPath $VaultPath)) {
    Write-Host "ERROR: Vault not found at: $VaultPath" -ForegroundColor Red
    Write-Host "Pass the right path like this:" -ForegroundColor Yellow
    Write-Host '  .\deploy-to-vault.ps1 -VaultPath "C:\path\to\your\vault"' -ForegroundColor Yellow
    exit 1
}

Write-Host ""
Write-Host "Deploying Spud Man docs to: $VaultPath" -ForegroundColor Cyan
Write-Host ""

# --- 1. Place the five documents -----------------------------
$files = @(
    @{ Src = "00 - MOCs\Strategic Review - July 2026.md";            DestDir = "00 - MOCs" },
    @{ Src = "00 - MOCs\Vault Update Summary.md";                    DestDir = "00 - MOCs" },
    @{ Src = "02 - Menu & Recipes\Menu Profitability Framework.md";  DestDir = "02 - Menu & Recipes" },
    @{ Src = "05 - People\5-Day Staff Training Program v2.md";       DestDir = "05 - People" },
    @{ Src = "08 - Spud Man 2 - Casper\Casper Launch Master Plan.md"; DestDir = "08 - Spud Man 2 - Casper" }
)

foreach ($f in $files) {
    $srcPath  = Join-Path $repoRoot $f.Src
    $destDir  = Join-Path $VaultPath $f.DestDir

    if (-not (Test-Path -LiteralPath $srcPath)) {
        Write-Host "MISSING SOURCE (skipped): $($f.Src)" -ForegroundColor Red
        continue
    }
    if (-not (Test-Path -LiteralPath $destDir)) {
        New-Item -ItemType Directory -Path $destDir | Out-Null
        Write-Host "Created folder: $($f.DestDir)" -ForegroundColor Green
    }

    $leaf     = Split-Path $f.Src -Leaf
    $destFile = Join-Path $destDir $leaf
    if (Test-Path -LiteralPath $destFile) {
        Copy-Item -LiteralPath $destFile -Destination "$destFile.backup-$(Get-Date -Format 'yyyy-MM-dd-HHmmss')"
        Write-Host "Existing file backed up: $leaf" -ForegroundColor Yellow
    }
    Copy-Item -LiteralPath $srcPath -Destination $destFile -Force
    Write-Host "Placed: $($f.DestDir)\$leaf" -ForegroundColor Green
}

# --- 2. Insert the launch section into Spud Man HQ -----------
$hqPath = Join-Path $VaultPath "00 - MOCs\Spud Man HQ.md"
$marker = "July 2026 Casper Launch Updates"

$block = @'
## 🚀 July 2026 Casper Launch Updates
*The second location rides in August. These four docs run the show:*

- [[Casper Launch Master Plan]] — THE launch countdown: workstreams, weekly timeline, go/no-go gates. Review every Sunday.
- [[Strategic Review - July 2026]] — Where the vault stands, what's strong, what's missing, what gets built next.
- [[5-Day Staff Training Program v2]] — Trainer-portable certification program for the Casper opening crew (and Riverton refreshers).
- [[Menu Profitability Framework]] — Plate costs, the Corral Matrix, and mall-adjusted pricing. Ties into [[Key Metrics Dashboard]].
'@

if (Test-Path -LiteralPath $hqPath) {
    $content = Get-Content -LiteralPath $hqPath -Raw -Encoding UTF8
    if ($content.Contains($marker)) {
        Write-Host "Spud Man HQ already has the launch section - left alone." -ForegroundColor Yellow
    }
    else {
        Copy-Item -LiteralPath $hqPath -Destination "$hqPath.backup-$(Get-Date -Format 'yyyy-MM-dd-HHmmss')"

        # Insert just above the "Vault Navigation" heading if present, else append at the end
        $navIdx = $content.IndexOf("Vault Navigation")
        if ($navIdx -ge 0) {
            $insertAt = $content.LastIndexOf("##", $navIdx)
            if ($insertAt -lt 0) { $insertAt = $navIdx }
            $content = $content.Insert($insertAt, $block + "`r`n`r`n")
        }
        else {
            $content = $content.TrimEnd() + "`r`n`r`n" + $block + "`r`n"
        }

        Set-Content -LiteralPath $hqPath -Value $content -Encoding UTF8
        Write-Host "Updated: 00 - MOCs\Spud Man HQ.md (backup saved beside it)" -ForegroundColor Green
    }
}
else {
    Write-Host "NOTE: Spud Man HQ.md not found at '$hqPath'." -ForegroundColor Yellow
    Write-Host "Paste the section by hand - it's staged inside Vault Update Summary.md." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Done. Open Obsidian and check [[Vault Update Summary]] for next steps. Happy trails!" -ForegroundColor Cyan
