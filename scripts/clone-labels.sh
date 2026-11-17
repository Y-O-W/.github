#!/usr/bin/env bash
# Copy the label set of Y-O-W/Y-O-W to the given repos.
# Usage: scripts/clone-labels.sh repo-a repo-b ...
# Existing labels are overwritten; extra labels are not deleted.
set -euo pipefail
[ "$#" -gt 0 ] || { echo "usage: $0 <repo>..." >&2; exit 1; }
for repo in "$@"; do
  echo "→ Y-O-W/$repo"
  gh label clone Y-O-W/Y-O-W --repo "Y-O-W/$repo" --force
done
