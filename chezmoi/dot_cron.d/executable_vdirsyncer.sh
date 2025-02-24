#!/usr/bin/env -S zsh --login
#
# Sync vdirs w/ Git and cloud.

set -o errexit  # exit if any command fails
set -o nounset  # prevent using an undefined variable
set -o pipefail # pipelines fail early
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

ical="${HOME}/.calendars"
vcard="${HOME}/.contacts"

if test-lan; then
	git-custom-sync "$ical" origin 'feat: local changes'
	git-custom-sync "$vcard" origin 'feat: local changes'
	vdirsyncer sync && printf-success 'vdirs synced'
	git-custom-sync "$ical" origin 'feat: remote changes'
	git-custom-sync "$vcard" origin 'feat: remote changes'
fi
