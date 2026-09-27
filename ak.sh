#!/bin/bash
set -euo pipefail

while read -r server; do
	if ping -c 1 -W 1 "$server" > /dev/null 2>&1;then
		echo "$server UP"
	
	else 
		echo "$server DOWN"
	
	fi
done < servers.txt
