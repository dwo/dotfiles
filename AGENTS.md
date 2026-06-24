## Communication

- Answer concisely unless directed otherwise.
- Verify claims before presenting them as facts; otherwise, state what has and has not been checked.
- Treat questions as questions; do not edit files or run mutating commands unless the user asks for an action or confirms one.

## Working Style

- Bias toward correct, maintainable solutions over the shortest path to the current goal.
- Keep changes scoped to the request.
- Ask before making extra changes, and explain why they are required.
- Prefer existing project patterns over new abstractions.
- Add options, variables, or helpers only when something actually varies in practice.
- Abstract repeated code only after the third real occurrence.
- Add comments only when the code itself cannot reasonably be made clearer.
- When adding dependencies, check what the latest compatible versions are before pinning.

## Git and Files

- Use branches and git worktrees to isolate agent sessions.
- Do not amend commits unless the change is small and the existing message remains accurate.
- In durable artifacts such as comments, docs, commit messages, and PR descriptions, write for a future reader with no access to the current chat.
- Include durable context such as behavior, constraints, tradeoffs, issue links, and rationale.
- Exclude transient context such as what the user just said, what the agent tried first, rejected approaches, and references to the current session.
- When editing a PR description, fetch the latest existing body first.

## Commands

- Use `fish` syntax for interactive shell commands unless another shell is specified.
- Use the syntax required by the execution context for scripts, CI, and tool calls.
- When running CLI commands, put global flags after the subcommand or action.
  For example, use `kubectl get pods --context foo` instead of `kubectl --context foo get pods`.
- Avoid `git -C`; run git commands from the intended working directory instead.

## Writing

- Use one sentence per line in Markdown files.
- Use `.yaml` rather than `.yml` for YAML files.
- Sort lists alphabetically when order has no semantic meaning; keep meaningful priority or dependency order where it matters.
