#!/bin/bash

# Script name: md5lines.sh
#
# Author: P-C Markovski
# Date (Git repo init): 2017-08-17
# Purpose: Calculate MD5 hashes for lines in a file as well as the number of words in each line.



if [[ $# -eq 0 ]]; then
	printf "Pass a file name to calculate MD5 hashes and number of words per line..\n"
else
	while read aline; do
		echo -n "$aline" | md5sum | cut -d ' ' -f1
		echo -n "$aline" | awk {'print NF'}
	done < $1
fi


