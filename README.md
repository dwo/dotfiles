Sometimes I work on different computers, but I want things to be configured the same way.

## Install

Run `./install` from the repository root.

On work machines, run `MISE_ENV=work ./install` once to also install work-only tools.

## Machine-specific additions

Optional files in `~/.config/dotfiles/` extend a single machine without being committed here:

- `aur.txt`: Arch User Repository packages, one per line, installed with yay, which is built first if missing.
- `config.fish`: fish shell configuration, sourced at the end of the repository's fish config so it can override it.
- `pacman.txt`: extra Arch packages, one per line, installed alongside the repository's `pacman.txt`.
