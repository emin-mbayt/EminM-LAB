#!/usr/bin/bash
set -euo pipefail
 
LOG_DIR=${LOG_DIR:-"$HOME/lab7-outputs"}
mkdir -p "$LOG_DIR"
 
log() { echo "[$(date +%F_%T)] $*" | tee -a "$LOG_DIR/lab7.log"; }
die() { echo "ERROR: $*" >&2; exit 1; }
require() { command -v "$1" >/dev/null 2>&1 || die "Missing dependency: $1"; }
