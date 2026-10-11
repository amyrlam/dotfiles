#!/usr/bin/env bash
# Symlink AGENTS.md into each agent's global instructions location.
# Refuses to replace a real file; re-running is safe.
set -euo pipefail

repo="$(cd "$(dirname "$0")" && pwd)"
src="$repo/AGENTS.md"

link() {
  local dest="$1"
  mkdir -p "$(dirname "$dest")"
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "skip: $dest exists and is not a symlink (merge it into AGENTS.md, then remove it)" >&2
    return
  fi
  ln -sfn "$src" "$dest"
  echo "linked: $dest -> $src"
}

link "$HOME/.claude/CLAUDE.md"   # Claude Code
link "$HOME/.codex/AGENTS.md"    # Codex CLI
