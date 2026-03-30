#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# ── Install the agent-diff-view script ───────────────────────────────────────
INSTALL_DIR="${HOME}/.local/bin"
mkdir -p "$INSTALL_DIR"
cp "$SCRIPT_DIR/agent-diff-view" "$INSTALL_DIR/agent-diff-view"
chmod +x "$INSTALL_DIR/agent-diff-view"
echo "✓  Installed: $INSTALL_DIR/agent-diff-view"

# Warn if not on PATH
if ! command -v agent-diff-view &>/dev/null; then
  echo ""
  echo "   ~/.local/bin is not on your PATH. Add this to your shell profile:"
  echo "   export PATH=\"\$HOME/.local/bin:\$PATH\""
  echo ""
fi

echo ""
echo "Now run 'agent-diff-view install' to set up your AI coding harness."
