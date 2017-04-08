#/bin/bash
rm /tmp/document.html 
pwd 
echo search all html files and merge them into single /tmp/document.html
ls -1 *.html | sort   | while read -r i ; do    cat "$i" | grep -v BODY | grep -v body | grep -v head | grep -v HEAD | grep -v HTML   >> /tmp/document.html ; done  
# html2xhtml /tmp/document.html /tmp/document.xhtml 
# make 
less /tmp/document.html 