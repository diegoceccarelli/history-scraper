#!/usr/bin/env bash
sqlite3 $HOME/Library/Application\ Support/Firefox/Profiles/*/places.sqlite "select url,last_visit_date,title from moz_places" | awk -F'|' '{ print $2"\t"$1"\t"$3 }'
