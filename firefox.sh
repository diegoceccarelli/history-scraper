#!/usr/bin/env bash

#mac
if [ -f $HOME/Library/Application\ Support/Firefox/Profiles/*/places.sqlite ]
	then
	sqlite3 $HOME/Library/Application\ Support/Firefox/Profiles/*/places.sqlite "select url,last_visit_date,title from moz_places" | awk -F'|' '{ print $2"\t"$1"\t"$3 }'
fi

#linux
if [ -f $HOME/.mozilla/firefox/*/places.sqlite ]
	then
	sqlite3 $HOME/.mozilla/firefox/*/places.sqlite "select url,last_visit_date,title from moz_places" | awk -F'|' '{ print $2"\t"$1"\t"$3 }'
fi
