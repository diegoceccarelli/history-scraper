#!/usr/bin/env bash

if [ -f  $HOME/Library/Application\ Support/Google/Chrome/Default/History ]
	then
	sqlite3 "$HOME/Library/Application Support/Google/Chrome/Default/History" "select url,last_visit_time,title from urls" | awk -F'|' '{ print $2"\t"$1"\t"$3 }'
fi


if [ -f  $HOME/.config/google-chrome/Default/History ]
	then
	sqlite3 "$HOME/.config/google-chrome/Default/History" "select url,last_visit_time,title from urls" | awk -F'|' '{ print $2"\t"$1"\t"$3 }'
fi

if [ -f  $HOME/.config/chromium/Default/History ]
	then
	sqlite3 "$HOME/.config/chromium/Default/History" "select url,last_visit_time,title from urls" | awk -F'|' '{ print $2"\t"$1"\t"$3 }'
fi