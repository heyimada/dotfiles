# dotfiles

My config files, laid out so each top-level folder is a package that mirrors `$HOME`.

| Package | What it configures |
| --- | --- |
| `fastfetch` | [fastfetch](https://github.com/fastfetch-cli/fastfetch) modules and the custom ANSI logo |

## Install

```sh
git clone https://github.com/heyimada/dotfiles ~/dotfiles
~/dotfiles/install.sh
```

`install.sh` symlinks every file into `$HOME`. Existing files are moved to `*.bak` first. If you use GNU Stow, `cd ~/dotfiles && stow fastfetch` does the same thing.
