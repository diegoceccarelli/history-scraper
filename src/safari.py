#!/usr/bin/env python
import json,urllib
import codecs
from unidecode import unidecode
import os
import datetime

#convert mac time in unix time (microsec)
def to_unix_date(macTime):
	macEpoch = datetime.datetime(2001, 1, 1)
 	s = int(macTime)	 
	return 	(macEpoch + datetime.timedelta(seconds=s)).strftime("%s")+"000"

os.system("plutil -convert json  $HOME/Library/Safari/History.plist -o /tmp/safari-dump.json")

f = codecs.open("/tmp/safari-dump.json", "r", "utf-8")


json_data = json.load(f)
for rec in json_data['WebHistoryDates']:
	t  = to_unix_date(float(rec["lastVisitedDate"]))
	if ("title" in rec):
		print t+"\t"+rec[""]+"\t"+unidecode(rec["title"])
	else: 
		print t+"\t"+rec[""]+"\t"+"\tNONE"
		
os.system("rm /tmp/safari-dump.json")
		


