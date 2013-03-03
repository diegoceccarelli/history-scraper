#!/usr/bin/env bash
sqlite3 "$HOME/Library/Application Support/Google/Chrome/Default/History" "select url,last_visit_time,title from urls" | awk -F'|' '{ print $2"\t"$1"\t"$3 }'
