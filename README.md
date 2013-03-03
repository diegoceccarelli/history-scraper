History Scraper
===============

History Scraper retrieves the history from chrome, safari and firefox (on MACOSX).

	./dump_history.sh

produces three files: 
	
* `history-dump.tsv` contains the whole history, in the format `time(microsec) <tab> url <tab> title`
* `all-domains.tsv` contains the list of domain appearing more than 5 times in the history
* `domains.tsv` contains the list of domains to filter for sharing (obtained grepping `news-keywords.txt` on `all-domains.tsv`)

`news-keywords.txt` is set to filter only the subset of history related to news browsing, you can change the keywords to match
domains related to other topics. 

Once you have checked your domains.tsv file (you can add or remove domains to the list), run:

	./filter-history.sh
	
to produce a subset of your history to share. 

 

 


