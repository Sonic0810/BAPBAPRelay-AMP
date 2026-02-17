#!/bin/bash
set -euo pipefail

if [[ -n "${BAP_DEDICATED_STOP_CMD:-}" ]]; then
  echo "[DedicatedRound] Running dedicated stop command..."
  /bin/bash -lc "${BAP_DEDICATED_STOP_CMD}"
  exit 0
fi

echo "[DedicatedRound] No dedicatedStopCommand configured. Relying on process kill from coordinator."
exit 0
