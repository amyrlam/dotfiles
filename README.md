# dotfiles

`AGENTS.md` is my personal, cross-project instruction file for coding agents. Run `./install.sh` to symlink it to:

- `~/.claude/CLAUDE.md` (Claude Code)
- `~/.codex/AGENTS.md` (Codex CLI)

Cursor has no global instructions file. It reads `AGENTS.md` from a project's root, and its global rules live in Settings → Rules → User Rules, so paste in `AGENTS.md` there by hand.
