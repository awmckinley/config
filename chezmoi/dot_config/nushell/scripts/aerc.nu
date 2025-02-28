#!/usr/bin/env nu
#
# Write aerc config.

use mail.nu *

def aerc-alias [profile] {
	$"alias aerc-($profile)='aerc --accounts-conf ($nu.home-path)/.config/aerc/accounts.($profile).conf'"
}

def aerc-item [account] {
	match (provider $account) {
		"gmail" => (gmail-item $account),
		"spectrum" => (spectrum-item $account),
		"yahoo" => (yahoo-item $account),
		"zohomail" => (zohomail-item $account),
		_ => "",
	}
}

def gmail-item [account] {
	$"
[(address $account)]
archive            = \"[Gmail].All Mail\"
check-mail-cmd     = mbsync -V group.(local $account).(domain $account)
check-mail-timeout = 90s
copy-to            = \"[Gmail].Sent Mail\"
folders-sort       = INBOX,Starred,Important,Chats,Sent,Drafts,Archive,Spam,Trash
folder-map         = ~/.config/aerc/gmail.map
from               = \"(name $account)\" <(address $account)>
outgoing           = /usr/bin/sendmail
postpone           = \"[Gmail].Drafts\"
source             = maildir://($nu.home-path)/Crypt/home/mail/(domain $account)/(local $account)/"
}

def spectrum-item [account] {
	$"
[(address $account)]
archive            = \"Archive\"
check-mail-cmd     = mbsync -V group.(local $account).(domain $account)
check-mail-timeout = 90s
copy-to            = \"Sent\"
folders-sort       = INBOX
folder-map         = ~/.config/aerc/spectrum.map
from               = \"(name $account)\" <(address $account)>
outgoing           = /usr/bin/sendmail
postpone           = \"Drafts\"
source             = maildir://($nu.home-path)/Crypt/home/mail/(domain $account)/(local $account)/"
}

def yahoo-item [account] {
	$"
[(address $account)]
check-mail-cmd     = mbsync -V group.(local $account).(domain $account)
check-mail-timeout = 90s
folders-sort       = INBOX,Sent,Drafts,Archive,Spam,Trash
folder-map         = ~/.config/aerc/yahoo.map
from               = \"(name $account)\" <(address $account)>
outgoing           = /usr/bin/sendmail
postpone           = \"Draft\"
source             = maildir://($nu.home-path)/Crypt/home/mail/(domain $account)/(local $account)/"
}

def zohomail-item [account] {
	$"
[(address $account)]
check-mail-cmd     = mbsync -V group.(local $account).(domain $account)
check-mail-timeout = 90s
folders-sort       = INBOX,Sent,Drafts,Archive,Spam,Trash
folder-map         = ~/.config/aerc/zohomail.map
from               = \"(name $account)\" <(address $account)>
outgoing           = /usr/bin/sendmail
source             = maildir://($nu.home-path)/Crypt/home/mail/(domain $account)/(local $account)/"
}

export def aerc-aliases [profiles] {
	$profiles | each { |profile| aerc-alias $profile } | str join "\n"
}

export def aerc-config [accounts] {
	let account0 = $accounts | first
	$"
[notmuch]
check-mail-cmd     = NOTMUCH_PROFILE=(profile $account0) notmuch new
check-mail-timeout = 90s
from               = \"(name $account0)\" <(address $account0)>
source             = notmuch://($nu.home-path)/Crypt/home/mail/notmuch/(profile $account0)/

($accounts | each { |account| aerc-item $account } | str join "\n")

[offline]
from   = \"(name $account0)\" <(address $account0)>
source = maildir://($nu.home-path)/Crypt/home/mail/localhost/(profile $account0)/"
}
