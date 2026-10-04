#!/usr/bin/env bash
# Refresh TryHackMe stats badge using KeizerSec/Tryhackme-Badge generator
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

export THM_USERNAME="Zeroczech"
export THEME="${THEME:-matrix}"
export OUTPUT_PATH="$REPO_ROOT/assets/thm_badge.svg"

echo "[*] Fetching latest stats for TryHackMe user: $THM_USERNAME (theme: $THEME)..."
node "$SCRIPT_DIR/thm-badge/generate.js"

echo "[✓] Badge successfully generated at: $OUTPUT_PATH"
