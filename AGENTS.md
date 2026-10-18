## Communication

- Be concise.

## Working Style

- Prefer correct, maintainable solutions over expedient fixes.
- Ask before expanding scope, explaining why.
- Prefer existing project patterns.
- Add options, variables, or helpers only for real variation.
- Abstract repeated code only after the third real occurrence.
- Add docs and code comments only when they explain necessary context, rationale, or constraints that clearer code or config cannot convey; never merely narrate the implementation.
- Check the latest compatible dependency versions before pinning.

## Git and Files

- Isolate sessions in branches and worktrees under `<project>/.worktrees`.
- Amend small changes when the existing commit message remains accurate.
- Never skip commit signing; ask me to unlock the key if needed.
- Write docs, comments, commit messages, and PR descriptions to stand alone; omit chat history and superseded approaches.
- Never post GitHub comments or reviews unless explicitly requested.
- Keep PR validation summaries brief.

## Commands

- Suggest local commands in `fish` syntax unless specified otherwise.
- Use portable shell syntax in documentation.
- Put CLI global flags after the subcommand or action.
- Run git from the intended directory; avoid `git -C`.
- Prefer native output and filtering flags over pipelines.
- Keep command output in the tool; save it to files only when the task requires it.

## Writing

- Use one sentence per line in Markdown.
- Use `.yaml` rather than `.yml` for YAML files.
- Alphabetize lists unless order carries meaning.
