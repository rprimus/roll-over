elinks -dump -dump-width 160 'http://www.commoditycharts.com/quote.asp?mode=d&sym=gc' | grep -i gc | grep -v http | awk '{print , }' | sort -rnk2
