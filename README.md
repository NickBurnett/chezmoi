# Dotfiles

This repository is a [chezmoi](https://www.chezmoi.io/) source directory for personal Linux dotfiles. It stores shell, editor, terminal, desktop, and CLI configuration in chezmoi's source format so the files can be applied into the home directory consistently.

## Repository Layout

chezmoi encodes target paths in filenames:

- `dot_zshrc` -> `~/.zshrc`
- `dot_config/nvim/init.lua` -> `~/.config/nvim/init.lua`
- `dot_dotfiles/executable_aliases.sh` -> `~/.dotfiles/aliases.sh`
- `private_config.toml` or `private_config.yml` -> target files marked private by chezmoi
- `executable_*` -> target files marked executable by chezmoi

Top-level areas:

- `dot_zshrc` and `dot_zsh_profile`: zsh startup configuration.
- `dot_dotfiles/`: shell snippets sourced from `~/.zshrc`, including aliases and optional Oh My Zsh setup.
- `dot_gitconfig`: Git identity and GitHub CLI credential helper configuration.
- `dot_codex/`: private Codex configuration.
- `dot_config/gh/`: private GitHub CLI configuration.
- `dot_config/alacritty/`: Alacritty terminal settings.
- `dot_config/hypr/`: Hyprland compositor configuration.
- `dot_config/hyprpanel/`: Hyprpanel bar/module/theme settings.
- `dot_config/tmux/`: tmux configuration and plugin setup.
- `dot_config/nvim/`: Neovim configuration using lazy.nvim.
- `dot_config/private_dolphinrc`: private KDE Dolphin file manager settings.

## Shell

The zsh setup keeps the main `~/.zshrc` small:

- Sets history size and completion behavior.
- Prepends `~/.local/bin` to `PATH`.
- Sources files from `~/.dotfiles/`, currently `omz.sh` and `aliases.sh`, when present.

Aliases include short commands for Neovim, pacman, chezmoi, Git, tmux, and common Git operations.

The Oh My Zsh snippet is defensive: it exits if `~/.oh-my-zsh` does not exist. When installed, it enables the `robbyrussell` theme and the `git` plugin.

## Neovim

Neovim is configured in Lua and bootstraps `lazy.nvim` automatically if it is missing. Plugin specs live under `dot_config/nvim/lua/plugins/` and theme specs under `dot_config/nvim/lua/themes/`.

Notable components:

- Theme: Catppuccin Macchiato with transparent background.
- Completion: `nvim-cmp`, LuaSnip, buffer/path/LSP sources, and `lspkind`.
- LSP: `lua_ls` for Lua and `clangd` for C.
- Navigation: Telescope with fzf-native and ui-select extensions.
- File tree: `nvim-tree`.
- UI: `lualine`, diagnostic symbols, folding options, relative line numbers.

The leader key is space. Common mappings cover LSP actions, diagnostics, buffer movement, Telescope search, and toggling `nvim-tree`.

## Terminal And Desktop

Alacritty uses an 18 pt font and maps `Alt+Space` to an escape sequence.

Hyprland is configured with:

- Alacritty as the terminal.
- Dolphin as the file manager.
- `hyprlauncher` as the launcher.
- Hyprpanel and `hyprpolkitagent` autostart.
- Dwindle layout, gaps, rounded windows, blur, and animations.
- NVIDIA-related environment variables.
- Super-key workspace, window, launcher, terminal, and media key bindings.

Hyprpanel stores bar and menu styling in JSON files. The current module config is empty and the main config customizes top-bar behavior, opacity, labels, power menu behavior, and menu styling.

## tmux

tmux uses `C-a` as the prefix, enables mouse support, starts window and pane indexes at `1`, and keeps new panes/windows in the current path. It uses TPM with:

- `tmux-sensible`
- Catppuccin tmux theme
- battery and CPU status plugins

## Common Commands

Run these from the chezmoi source directory:

```sh
chezmoi status
chezmoi diff
chezmoi apply
chezmoi edit ~/.zshrc
```

Useful maintenance flow:

```sh
chezmoi diff
chezmoi apply
git status
git add .
git commit
```

## Notes For Contributors

- Keep this repository in chezmoi source format rather than target home-directory paths.
- Preserve private markers for files containing personal or machine-specific configuration.
- Prefer small, focused config files under the relevant application directory.
- Check `chezmoi diff` before applying changes to the home directory.
- Avoid committing generated plugin directories such as `~/.local/share/nvim/lazy` or `~/.tmux/plugins`; only the configuration and lock files belong here.
