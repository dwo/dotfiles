## Communication

- Be concise.

## Working Style

- Prefer correct, maintainable solutions over expedient fixes.
- Ask before expanding scope, explaining why.
- Prefer existing project patterns.
- Add options, variables, or helpers only for real variation.
- Abstract repeated code only after the third real occurrence.
- Leave it to CI: prefer to watch tests run in CI after push unless running locally will help inform implementation.
  Pull request (PR) descriptions must not narrate what tests passed locally when CI will pass/fail checks anyway.

## Git and Files

- Isolate sessions in branches and worktrees under `<project>/.worktrees`.
- Amend small changes when the previous commit message remains accurate.
- Review and rebase PRs / squash commits once a PR goes above 5 commits.
- Never skip commit signing; ask me to unlock the key if needed.
- Never post GitHub comments or reviews unless explicitly requested.
- Use `.yaml` rather than `.yml` for YAML files.

## Commands

- Suggest local commands for the user to run in `fish` syntax unless specified otherwise.
- Use portable shell syntax in documentation.
- Put CLI global flags after the subcommand or action.
- Run git from the intended directory; avoid `git -C`.
- Prefer native output and filtering flags over pipelines.
- Prefer one command at a time to re-use approvals
- Request read-only prefixes for permanent approval.
- Keep command output in the tool; save it to files only when the task requires it.

## Writing

- Add docs and code comments only when they explain necessary context, rationale, or constraints that clearer code or config cannot convey.
- Docs and comments must never merely repeat or narrate the implementation.
- Write docs, comments, commit messages, and PR descriptions to stand alone; omit chat history.
- Code comment wrapping should follow the code's formatting line-length.
- Use one sentence per line in Markdown except for GitHub PR descriptions which join lines with newlines instead of spaces.
- Keep PR descriptions and commit messages blame-free.
- Alphabetize lists unless order carries meaning.
- Introduce uncommon acronyms fully unrolled with the acronym in parentheses on their first appearance.
