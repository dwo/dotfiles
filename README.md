Sometimes I work on different computers, but I want things to be configured the same way.

## Install

Run `./install` from the repository root.

On work machines, run `MISE_ENV=work ./install` once to also install work-only tools.

## Machine-specific additions

Optional files in `~/.config/dotfiles/` extend a single machine without being committed here:

- `pacman.txt`: extra Arch packages, one per line, installed alongside the repository's `pacman.txt`.
- `aur.txt`: Arch User Repository packages, one per line, installed with yay, which is built first if missing.

Shell configuration specific to one machine goes in `~/.sh_local`, which the fish config sources if present.
