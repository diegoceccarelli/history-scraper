History Scraper
===============

History Scraper retrieves the history from chrome (linux, mac), safari (mac) and firefox (linux, mac).

	make dump

produces three files: 
	
* `history-dump.tsv` contains the whole history, in the format `time(microsec) <tab> url <tab> title`;
* `all-domains.tsv` contains the list of domain appearing more than 5 times in the history;
* `domains.tsv` contains the list of domains to filter for sharing (obtained grepping the keyword in `news-keywords.txt` on `all-domains.tsv`).

`news-keywords.txt` is set only to filter the subset of your history related to news browsing, you can change the keywords to match
domains related to other topics. 

Once you have checked your domains.tsv file (you can add or remove domains to the list), run:

	make filter
	
to produce a subset of your history to share. 

 

 


