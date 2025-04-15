#!/usr/bin/env bash

os_name="$(uname -s)"

pkgman() {
	if [[ "$os_name" = "Darwin" ]]; then
		if [[ -z "$(command -v brew)" ]]; then
			echo "\"brew\" not found..."
			return 1
		fi
		brew "$@"
	elif [[ "os_name" = "Linux" ]]; then
		if [[ -z "$(command -v apt-get)" ]]; then
			echo "\"apt-get\" not found..."
			return 1
		fi
		apt-get "$@"
	else
		echo "Unsupported Operating System..." > /dev/stderr
		return 1
	fi
}

install() {
	pkgman install "$@"	
}

# Update the package registries
pkgman update

# Install "fd"
install fd ripgrep

