#!/usr/bin/env python
import urllib
import codecs

import os
import datetime
import plistlib

#convert mac time in unix time (microsec)
def to_unix_date(macTime):
	macEpoch = datetime.datetime(2001, 1, 1)
 	s = int(macTime)	 
	return 	(macEpoch + datetime.timedelta(seconds=s)).strftime("%s")+"000"

os.system("plutil -convert xml1  $HOME/Library/Safari/History.plist -o /tmp/safari-dump.xml")

data = plistlib.readPlist("/tmp/safari-dump.xml")

for rec in data['WebHistoryDates']:
	t  = to_unix_date(float(rec["lastVisitedDate"]))
	if ("title" in rec):
		try:
			print t+"\t"+rec[""]+"\t"+rec["title"]
		except:
			print t+"\t"+rec[""]+"\t"+"\tNONE"
	else: 
		print t+"\t"+rec[""]+"\t"+"\tNONE"
		
os.system("rm /tmp/safari-dump.xml")
		


