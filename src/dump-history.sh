#!/usr/bin/env bash
DUMP=history-dump.tsv
CHROME_HISTORY="$HOME/Library/Application Support/Google/Chrome/Default/History"
SAFARI_HISTORY=$HOME/Library/Safari/History.plist

if [ -f  "$DUMP" ]
	then rm $DUMP
fi

chmod +x *sh *py
if [ -f  "$CHROME_HISTORY" ]
	then
	echo "dumping chrome history"
	./chrome.sh >> $DUMP
fi

if [ -f  $HOME/Library/Application\ Support/Firefox/Profiles/*/places.sqlite ]
	then
	echo "dumping firefox history"
	./firefox.sh >> $DUMP
fi

if [ -f  $SAFARI_HISTORY ]
	then
	echo "dumping safari history"
	./safari.py >> $DUMP
fi

echo "dump domain names"
./dump-domains.py -i $DUMP -o all-domains.tsv
grep -f news-keywords.txt all-domains.tsv | sort > domains.tsv


	
	
