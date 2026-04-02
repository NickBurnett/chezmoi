#!/usr/bin/env sh

# Preflight
omz_dirpath="$HOME/.oh-my-zsh"
[[ ! -d "$omz_dirpath" ]] && exit 0

# Basic Config
ZSH_THEME="robbyrussel"
plugins=(
	git
)

source "$omz_dirpath/oh-my-zsh.sh"
