#!/usr/bin/env bash

DUMP=history-dump.tsv
SAFARI_HISTORY=$HOME/Library/Safari/History.plist

if [ -f  "$DUMP" ]
	then rm $DUMP
fi

chmod +x *sh *py

echo "dumping chrome history"
./chrome.sh >> $DUMP
echo "dumping firefox history"
./firefox.sh >> $DUMP

if [ -f  $SAFARI_HISTORY ]
	then
	echo "dumping safari history"
	./safari.py >> $DUMP
fi

echo "dump domain names"
./dump-domains.py -i $DUMP -o all-domains.tsv
grep -f news-keywords.txt all-domains.tsv | sort > domains.tsv


	
	
