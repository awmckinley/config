#!/usr/bin/env -S zsh --login
#
# Sync Mail w/ Git.

set -o errexit  # Exit if any command fails
set -o nounset  # Prevent using an undefined variable
set -o pipefail # Pipelines fail early
IFS=$'\n\t'

minute="$(date +%M)"
if test $((minute % 5)) -gt 0; then
	echo 'every 5 minutes'
	exit 0
fi

if test "$HOST" != krypton; then
	echo 'only run on krypton'
	exit 0
fi

if test-lan; then
	dir="${HOME}/Crypt/home/mail"
	pushd "$dir"
	git-custom-sync "$dir" origin 'feat: mbsync'
	popd
fi
