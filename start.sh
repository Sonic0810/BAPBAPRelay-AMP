#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

if [[ ! -f "./BAPBAPDedicatedServer" ]]; then
  echo "[BAPBAPDedicatedServer] Binary not found: ./BAPBAPDedicatedServer"
  exit 1
fi

chmod +x ./BAPBAPDedicatedServer || true
exec ./BAPBAPDedicatedServer "$@"
