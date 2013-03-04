#!/usr/bin/env python

from urlparse import urlparse
from optparse import OptionParser

parser = OptionParser()

parser.add_option("-i", "--input", dest="input",
                  help="history dump", metavar="FILE")

parser.add_option("-o", "--output", dest="output",
				 help="domains", metavar="FILE")
				
(options, args) = parser.parse_args()
				
f = open(options.input)
o = open(options.output, "w")

urls = {} 

for line in f:
	try:
		u = urlparse(line.split("\t")[1])
	except:
		print "error parsing ",line
		continue
	domain = u.netloc.replace("www.","");
	if (domain in urls):
		urls[domain] = urls[domain]+1
	else:
		urls[domain] = 1

for k in urls:
	if (urls[k] > 5):
		o.write(k+"\n")

o.close()
	
	


	
