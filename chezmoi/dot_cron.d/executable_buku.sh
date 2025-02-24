#!/usr/bin/env -S zsh --login
#
# Sync Buku w/ Git.

set -o errexit  # exit if any command fails
set -o nounset  # prevent using an undefined variable
set -o pipefail # pipelines fail early
IFS=$'\n\t'

function sum() {
	sha256sum bookmarks.db | cut -d' ' -f1
}

minute="$(date +%M)"
if test $((minute % 5)) -gt 0; then
	echo 'every 5 minutes'
	exit 0
fi

if test-lan; then
	dir="${HOME}/Crypt/home/bookmarks"
	pushd "$dir"
	before="$(sum)"
	git-custom-sync "$dir" origin 'feat: export bookmarks'
	after="$(sum)"
	if test "$before" != "$after"; then
		just import | grep -v 'ERROR'
	fi
	just export
	git-custom-sync "$dir" origin 'feat: export bookmarks'
	popd
fi
