# 🥔 Spud Man Vault Staging — Casper Launch Wave (July 2026)

This repo stages new Obsidian vault documents for the **Second Brain** vault, mirrored in the vault's exact folder structure.

## What's here

| File | Vault destination |
|------|-------------------|
| `00 - MOCs/Strategic Review - July 2026.md` | `00 - MOCs/` |
| `00 - MOCs/Vault Update Summary.md` | `00 - MOCs/` |
| `02 - Menu & Recipes/Menu Profitability Framework.md` | `02 - Menu & Recipes/` |
| `05 - People/5-Day Staff Training Program v2.md` | `05 - People/` |
| `08 - Spud Man 2 - Casper/Casper Launch Master Plan.md` | `08 - Spud Man 2 - Casper/` (new folder) |

## Deploy to the vault (Windows, one command)

1. Download this repo (green **Code** button → *Download ZIP*, then extract) or `git pull` if you have it cloned.
2. Open PowerShell in the repo folder and run:

```powershell
.\deploy-to-vault.ps1
```

The script:
- creates any missing folders (including `08 - Spud Man 2 - Casper`),
- copies the five documents into place (backing up anything it would overwrite),
- inserts the **🚀 July 2026 Casper Launch Updates** section into `00 - MOCs/Spud Man HQ.md` (with a timestamped backup, and it skips if the section is already there).

Different vault location? Pass it explicitly:

```powershell
.\deploy-to-vault.ps1 -VaultPath "D:\path\to\Second Brain"
```

If PowerShell blocks the script, run once: `powershell -ExecutionPolicy Bypass -File .\deploy-to-vault.ps1`
