#!/bin/sh
# script to test echo and arithmetic

echo -n "enter csv file: "
read file
echo -n "delimiter: "
read delim
echo -n "enter a column position: "
read pos

head -1 ${file} | cut -d"${delim}" -f ${pos}
