#!/bin/bash

REPO_DIR="/users/EdwinWCU/my-git-repo"
LOG_FILE="$REPO_DIR/state.log"

cd "$REPO_DIR" || exit 1

echo "===== $(date) =====" >> "$LOG_FILE"
ls -l >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

git add state.log
git commit -m "Auto-update: $(date '+%Y-%m-%d %H:%M:%S')"
git push