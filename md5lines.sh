#!/bin/bash

if [[ $# -eq 0 ]]; then
	printf "Pass a file name to calculate MD5 hashes and number of words per line..\n"
else
	while read aline; do
		echo -n "$aline" | md5sum | cut -d ' ' -f1
		echo -n "$aline" | awk {'print NF'}
	done < $1
fi


