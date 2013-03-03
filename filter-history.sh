#!/usr/bin/env bash
DUMP=history-dump.tsv

echo "filtering history"
egrep -f domains.tsv $DUMP | sort -k1 -n > $USER-filtered-history.tsv
echo "news browsing stored in $USER-filtered-history.tsv"


	
	
