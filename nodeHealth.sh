#!/bin/bash
set -euo pipefail

######################

# Author : Abhishek
# Date : 19/08/2026
# This script output the node health
#
# version: V1 
######################



echo "HostName: $(hostname)"
echo "User: $(whoami)"
echo "Uptime: $(uptime -p)"
echo "CPU cores: $(nproc)"
echo "Memory: "

free -h

echo "Disk:"

df -h

echo "Load: $(cat /proc/loadavg)"


