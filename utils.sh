#!/usr/bin/env sh

check_args() {
	if ([ "$1" != "dev" ] && [ "$1" != "release" ]) || [ "$#" != "1" ]; then
		echo "Usage: $0 [dev|release]"
		echo "   If not specified, dev is chosen"
		exit 1
	fi
}

get_version() {
	if [ "$1" = "release" ]; then
		version=$(git describe --tags --abbrev=0 | tr -d 'v')
		version=${version##*/}
	else
		version=$(date +%s)
	fi
}

get_arch() {
	arch="$(dpkg --print-architecture)"
}