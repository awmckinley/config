#!/usr/bin/env nu
#
# Install burntcookie.
# TODO: use Nix for this?

def main [] {
	if (which burntcookie) != [] {
		return
	}

	if (which cargo) == [] {
		return
	}

	print "Install burntcookie"
	cargo install --git https://github.com/horrorho/burnt-cookie.git
	print ""
}
