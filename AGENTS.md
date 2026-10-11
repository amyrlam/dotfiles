# Personal agent instructions

These apply to every project. A repo's own `AGENTS.md` / `CLAUDE.md` adds project rules on top; when the two conflict, the project file wins for that project.

## Git and remotes

- Ask before every `git push`, even for small, verified fixes. Make the change, verify it locally, show the diff or a summary, then ask.
- Ask before committing to a branch that's already pushed or has an open PR, unless I've told you to commit in this session.
- Ask before any other outward action on a PR or repo (opening or closing a PR, triggering bots or workflows, force-pushing). The one standing exception is replying to review threads (see below).

## PR review comments

When working through review comments (from bots like CodeRabbit or from people):

- Reply on every open thread so the outcome is clear:
  - `Fixed in <sha>: <what changed>`
  - `Leaving as is: <reason>`
- Then resolve the thread. Don't silently skip one.
- Post replies after the fix is pushed so the sha exists on the remote. You may post these replies without asking; pushing the fix still needs asking.
