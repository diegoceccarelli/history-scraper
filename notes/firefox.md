
cd ~/Library/Application Support/Firefox/Profiles/*/
sqlite3 places.sqlite .dump > dump
cat dump |grep "moz_places" | grep -o VALUES.* | awk -F',' '{print $10"\t"$2"\t"$3"}'
// dump time, url, title
