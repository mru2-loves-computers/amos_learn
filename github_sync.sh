#!/bin/bash

# Usage: ./github_sync.sh "Your commit message"

COMMIT_MSG=${1:-"Update changes"}

# Pull latest changes
echo "🔄 Pulling latest changes..."
git pull origin main --rebase

# Add all changes
git add .

# Commit
git commit -m "$COMMIT_MSG" || echo "⚠️ Nothing to commit"

# Push
git push origin main

echo "✅ Sync complete!"
