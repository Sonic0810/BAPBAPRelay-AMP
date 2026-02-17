#!/bin/bash
set -euo pipefail

chmod +x ./BAPBAPDedicatedHost ./start-dedicated-round.sh ./stop-dedicated-round.sh || true
exec ./BAPBAPDedicatedHost "$@"
