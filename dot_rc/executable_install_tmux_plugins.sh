#!/usr/bin/env bash

if [[ -z "$(command -v git)" ]]; then
        exit 0
fi

git clone git@github.com:tmux-plugins/tpm ~/.tmux/plugins/tpm

