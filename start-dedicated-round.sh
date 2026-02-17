#!/bin/bash
set -euo pipefail

if [[ -z "${BAP_DEDICATED_CMD:-}" ]]; then
  echo "[DedicatedRound] BAP_DEDICATED_CMD is empty."
  echo "[DedicatedRound] Set 'dedicatedCommand' in dedicatedhost.json."
  exit 1
fi

echo "[DedicatedRound] Starting dedicated round process..."
echo "[DedicatedRound] matchId=${BAP_MATCH_ID:-}"
echo "[DedicatedRound] lobbyId=${BAP_LOBBY_ID:-}"
echo "[DedicatedRound] mapId=${BAP_MAP_ID:-}"
echo "[DedicatedRound] modeId=${BAP_MODE_ID:-}"
echo "[DedicatedRound] expectedPlayers=${BAP_EXPECTED_PLAYERS:-}"
echo "[DedicatedRound] relay=${BAP_PUBLIC_HOST:-}:${BAP_RELAY_GAME_PORT:-}"
echo "[DedicatedRound] command=${BAP_DEDICATED_CMD}"

exec /bin/bash -lc "${BAP_DEDICATED_CMD}"
