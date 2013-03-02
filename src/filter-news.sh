#!/usr/bin/env bash
DUMP=history-dump.tsv

echo "filtering news"
egrep -f domains.tsv $DUMP | sort -k1 -n > $USER-filtered-news.tsv
echo "news browsing stored in $USER-filtered-news.tsv"


	
	
