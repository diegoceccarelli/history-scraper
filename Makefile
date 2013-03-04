
all: dump filter
	
dump: 
	./dump-history.sh

filter: dump
	./filter-history.sh
	
clean: 
	rm domains.tsv
	rm *filtered-history.tsv
	rm history-dump.tsv
	rm all-domains.tsv